unit GourmetAIQ.Service.HealthMonitor;

// Monitor de saude da integracao com a API AIQFome.
//
// Cada chamada REST a AIQFome (token, busca pedidos, marca lido, etc.) registra
// uma amostra contendo latencia em ms e flag de sucesso/falha. O monitor mantem
// um buffer circular dos ultimos N samples (default 60) e expoe agregados:
//
//   - Status:        Healthy / Degraded / Down
//   - LatencyAvg:    media em ms
//   - LatencyMax:    pico em ms na janela
//   - SuccessRate:   pct de chamadas OK
//   - Samples:       ate 60 pontos para desenhar grafico
//
// Tudo thread-safe via TCriticalSection -- pode ser chamado do worker e lido
// da UI thread sem race.

interface

uses
  System.SysUtils, System.SyncObjs, System.Generics.Collections, System.Diagnostics;

type
  TAIQHealthSample = record
    Time: TDateTime;
    LatencyMs: Integer;
    Success: Boolean;
    Operation: string;   // 'Token', 'CarregaPedidos', etc.
  end;

  TAIQHealthStatus = (ahsHealthy, ahsDegraded, ahsDown);

  TAIQHealthSnapshot = record
    Status: TAIQHealthStatus;
    LatencyAvg: Integer;       // ms (so chamadas com sucesso)
    LatencyMax: Integer;       // ms
    LatencyLast: Integer;      // ms
    SuccessRate: Integer;      // 0..100
    TotalSamples: Integer;
    SuccessSamples: Integer;
    LastErrorMessage: string;  // ultima falha vista
    LastErrorTime: TDateTime;
    Samples: TArray<TAIQHealthSample>;  // ate FCapacity, mais antigo primeiro
  end;

  TAIQHealthMonitor = class
  strict private
    FLock: TCriticalSection;
    FBuffer: array of TAIQHealthSample;
    FCount: Integer;
    FHead: Integer;
    FCapacity: Integer;
    FLastError: string;
    FLastErrorTime: TDateTime;
    function GetStatus(AAvg: Integer; ASuccessRate, ATotal: Integer): TAIQHealthStatus;
  public
    constructor Create;
    destructor Destroy; override;

    /// Registra uma amostra. Chamar do worker apos cada Execute REST para AIQFome.
    procedure RecordSample(const AOperation: string; ALatencyMs: Integer;
      ASuccess: Boolean; const AErrorMessage: string = '');

    /// Conveniencia: usa TStopwatch e captura excecao automaticamente.
    /// O parametro AAction eh executado sob medicao; relancamos a excecao
    /// apos registrar a amostra.
    procedure Track(const AOperation: string; AAction: TProc);

    /// Snapshot atomico para a UI desenhar.
    function Snapshot: TAIQHealthSnapshot;

    /// Limpar (uso opcional em reinit).
    procedure Reset;

    property Capacity: Integer read FCapacity write FCapacity;
  end;

function HealthMonitor: TAIQHealthMonitor;

implementation

uses
  System.DateUtils;

const
  // Limiares de classificacao (em ms)
  LATENCY_HEALTHY_MS  = 800;     // tudo abaixo disso = saudavel
  LATENCY_DEGRADED_MS = 2500;    // entre HEALTHY e este = degradado
  // acima de DEGRADED = down

  SUCCESS_RATE_HEALTHY  = 95;
  SUCCESS_RATE_DEGRADED = 75;

var
  GMonitor: TAIQHealthMonitor;

function HealthMonitor: TAIQHealthMonitor;
begin
  if GMonitor = nil then
    GMonitor := TAIQHealthMonitor.Create;
  Result := GMonitor;
end;

{ TAIQHealthMonitor }

constructor TAIQHealthMonitor.Create;
begin
  inherited Create;
  FLock := TCriticalSection.Create;
  FCapacity := 60; // 60 amostras = ~5 min com tick de 5s
  SetLength(FBuffer, FCapacity);
  FCount := 0;
  FHead := 0;
end;

destructor TAIQHealthMonitor.Destroy;
begin
  FLock.Free;
  inherited;
end;

procedure TAIQHealthMonitor.RecordSample(const AOperation: string;
  ALatencyMs: Integer; ASuccess: Boolean; const AErrorMessage: string);
var
  vSample: TAIQHealthSample;
begin
  vSample.Time := Now;
  vSample.LatencyMs := ALatencyMs;
  vSample.Success := ASuccess;
  vSample.Operation := AOperation;

  FLock.Acquire;
  try
    // Realloc defensivo se Capacity mudou
    if Length(FBuffer) <> FCapacity then
    begin
      SetLength(FBuffer, FCapacity);
      FCount := 0;
      FHead := 0;
    end;

    FBuffer[FHead] := vSample;
    FHead := (FHead + 1) mod FCapacity;
    if FCount < FCapacity then
      Inc(FCount);

    if not ASuccess then
    begin
      FLastError := AErrorMessage;
      FLastErrorTime := vSample.Time;
    end;
  finally
    FLock.Release;
  end;
end;

procedure TAIQHealthMonitor.Track(const AOperation: string; AAction: TProc);
var
  vSW: TStopwatch;
  vErr: string;
  vOK: Boolean;
begin
  if not Assigned(AAction) then
    Exit;
  vSW := TStopwatch.StartNew;
  vOK := False;
  vErr := '';
  try
    try
      AAction();
      vOK := True;
    except
      on E: Exception do
      begin
        vErr := E.ClassName + ': ' + E.Message;
        raise;
      end;
    end;
  finally
    RecordSample(AOperation, Integer(vSW.ElapsedMilliseconds), vOK, vErr);
  end;
end;

function TAIQHealthMonitor.GetStatus(AAvg: Integer; ASuccessRate, ATotal: Integer): TAIQHealthStatus;
begin
  if ATotal = 0 then
    Exit(ahsHealthy); // sem dados = otimismo

  if (ASuccessRate < SUCCESS_RATE_DEGRADED) or (AAvg > LATENCY_DEGRADED_MS) then
    Exit(ahsDown);

  if (ASuccessRate < SUCCESS_RATE_HEALTHY) or (AAvg > LATENCY_HEALTHY_MS) then
    Exit(ahsDegraded);

  Result := ahsHealthy;
end;

function TAIQHealthMonitor.Snapshot: TAIQHealthSnapshot;
var
  i, idx: Integer;
  vSumLatency, vMax, vSuccessCount, vAvg: Integer;
  vLast: Integer;
  vSnap: TAIQHealthSnapshot;
begin
  FLock.Acquire;
  try
    vSnap.TotalSamples := FCount;
    vSnap.SuccessSamples := 0;
    vSnap.LastErrorMessage := FLastError;
    vSnap.LastErrorTime := FLastErrorTime;
    vSumLatency := 0;
    vMax := 0;
    vSuccessCount := 0;
    vLast := 0;

    SetLength(vSnap.Samples, FCount);
    // ordenar do mais antigo para o mais recente
    for i := 0 to FCount - 1 do
    begin
      // se buffer cheio, comecar de FHead (proximo a sobrescrever = mais antigo)
      // se nao cheio, comecar de 0
      if FCount = FCapacity then
        idx := (FHead + i) mod FCapacity
      else
        idx := i;
      vSnap.Samples[i] := FBuffer[idx];

      if FBuffer[idx].LatencyMs > vMax then
        vMax := FBuffer[idx].LatencyMs;
      if FBuffer[idx].Success then
      begin
        vSumLatency := vSumLatency + FBuffer[idx].LatencyMs;
        Inc(vSuccessCount);
      end;
      vLast := FBuffer[idx].LatencyMs; // sobrescreve ate ficar com o ultimo
    end;

    vSnap.SuccessSamples := vSuccessCount;
    if vSuccessCount > 0 then
      vAvg := vSumLatency div vSuccessCount
    else
      vAvg := 0;

    vSnap.LatencyAvg := vAvg;
    vSnap.LatencyMax := vMax;
    vSnap.LatencyLast := vLast;

    if FCount > 0 then
      vSnap.SuccessRate := (vSuccessCount * 100) div FCount
    else
      vSnap.SuccessRate := 100;

    vSnap.Status := GetStatus(vAvg, vSnap.SuccessRate, FCount);
  finally
    FLock.Release;
  end;
  Result := vSnap;
end;

procedure TAIQHealthMonitor.Reset;
begin
  FLock.Acquire;
  try
    FCount := 0;
    FHead := 0;
    FLastError := '';
    FLastErrorTime := 0;
  finally
    FLock.Release;
  end;
end;

initialization

finalization
  FreeAndNil(GMonitor);

end.
