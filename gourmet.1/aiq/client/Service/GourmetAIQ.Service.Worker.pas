unit GourmetAIQ.Service.Worker;

// Worker thread unica com fila de jobs.
//
// Antes: o TmRelogio disparava trabalho HTTP sincrono na UI thread, com
// Application.ProcessMessages e sleep(2000) espalhados. Quando a rede
// degradava, o app inteiro travava.
//
// Agora:
//   1. O timer apenas atualiza o relogio e, se o worker esta ocioso,
//      agenda um TWorkerJob.
//   2. O worker executa a parte HTTP fora da UI thread.
//   3. Quando termina, o worker chama TThread.Queue para que o callback
//      OnDone rode na UI thread (seguro para mexer em DataSets, Panels, etc).
//
// Isso elimina:
//   - reentrancia do timer (se o ciclo anterior nao terminou, o atual nem
//     comeca, em vez de empilhar);
//   - travamento da janela quando o servidor demora;
//   - necessidade de Application.ProcessMessages.
//
// Dependencias: usa TThread + TQueue<TWorkerJob> + TCriticalSection.
// Funciona em Delphi 10.4 Sydney sem System.Threading.

interface

uses
  System.SysUtils, System.Classes, System.SyncObjs, System.Generics.Collections;

type
  /// Acao a ser executada na worker thread (HTTP, parsing, etc).
  /// Importante: NAO acessar UI a partir daqui.
  TWorkerAction = reference to procedure;

  /// Callback invocado na UI thread depois que a Action terminou.
  /// Recebe a excecao caso a Action tenha lancado, ou nil em caso de sucesso.
  TWorkerDone = reference to procedure(AException: Exception);

  TWorkerJob = record
    Name: string;          // identificacao para logs/diagnostico
    Action: TWorkerAction;
    OnDone: TWorkerDone;
  end;

  TWorkerService = class(TThread)
  strict private
    FJobs: TQueue<TWorkerJob>;
    FLock: TCriticalSection;
    FSignal: TEvent;
    FBusy: Boolean;
    FCurrentName: string;
    procedure RunOnUI(AProc: TThreadProcedure);
  protected
    procedure Execute; override;
  public
    constructor Create;
    destructor Destroy; override;

    /// Enfileira um job. Thread-safe.
    procedure Enqueue(const AName: string; AAction: TWorkerAction; AOnDone: TWorkerDone = nil);

    /// Conveniencia: agenda apenas se nao houver job em execucao nem na fila.
    /// Usado pelo timer para nao acumular ciclos quando o servidor esta lento.
    function TryEnqueue(const AName: string; AAction: TWorkerAction; AOnDone: TWorkerDone = nil): Boolean;

    /// Retorna True se ha um job em execucao.
    function IsBusy: Boolean;

    /// Numero de jobs aguardando (sem contar o que esta executando).
    function PendingCount: Integer;

    /// Nome do job atualmente em execucao (vazio se ocioso).
    function CurrentJobName: string;

    /// Sinaliza fim e aguarda a thread terminar.
    procedure Stop;
  end;

function Worker: TWorkerService;

implementation

uses
  GourmetAIQ.Service.Log;

var
  GWorker: TWorkerService;

function Worker: TWorkerService;
begin
  if GWorker = nil then
  begin
    GWorker := TWorkerService.Create;
    GWorker.Start;
  end;
  Result := GWorker;
end;

{ TWorkerService }

constructor TWorkerService.Create;
begin
  inherited Create(True); // suspended
  FreeOnTerminate := False;
  FJobs := TQueue<TWorkerJob>.Create;
  FLock := TCriticalSection.Create;
  FSignal := TEvent.Create(nil, False, False, '');
  FBusy := False;
end;

destructor TWorkerService.Destroy;
begin
  FLock.Free;
  FSignal.Free;
  FJobs.Free;
  inherited;
end;

procedure TWorkerService.RunOnUI(AProc: TThreadProcedure);
begin
  if Assigned(AProc) then
    Queue(AProc);
end;

procedure TWorkerService.Execute;
var
  vJob: TWorkerJob;
  vHasJob: Boolean;
  vRaised: Exception;
begin
  while not Terminated do
  begin
    FSignal.WaitFor(1000);
    if Terminated then
      Break;

    vHasJob := False;
    FLock.Acquire;
    try
      if FJobs.Count > 0 then
      begin
        vJob := FJobs.Dequeue;
        FBusy := True;
        FCurrentName := vJob.Name;
        vHasJob := True;
      end;
    finally
      FLock.Release;
    end;

    if not vHasJob then
      Continue;

    vRaised := nil;
    try
      try
        if Assigned(vJob.Action) then
          vJob.Action();
      except
        on E: Exception do
        begin
          // Captura para repassar ao OnDone na UI thread.
          // Acquire(E) garante que sobreviva ao escopo do try.
          vRaised := AcquireExceptionObject as Exception;
          Log.Error(Format('Worker job "%s" falhou: %s: %s',
            [vJob.Name, vRaised.ClassName, vRaised.Message]));
        end;
      end;
    finally
      FLock.Acquire;
      try
        FBusy := False;
        FCurrentName := '';
      finally
        FLock.Release;
      end;
    end;

    if Assigned(vJob.OnDone) then
    begin
      // Roda na UI thread. Captura vRaised por valor.
      RunOnUI(
        procedure
        begin
          try
            vJob.OnDone(vRaised);
          finally
            vRaised.Free;
          end;
        end);
    end
    else
      vRaised.Free;
  end;
end;

procedure TWorkerService.Enqueue(const AName: string; AAction: TWorkerAction; AOnDone: TWorkerDone);
var
  vJob: TWorkerJob;
begin
  vJob.Name := AName;
  vJob.Action := AAction;
  vJob.OnDone := AOnDone;
  FLock.Acquire;
  try
    FJobs.Enqueue(vJob);
  finally
    FLock.Release;
  end;
  FSignal.SetEvent;
end;

function TWorkerService.TryEnqueue(const AName: string; AAction: TWorkerAction; AOnDone: TWorkerDone): Boolean;
var
  vJob: TWorkerJob;
begin
  Result := False;
  FLock.Acquire;
  try
    if FBusy or (FJobs.Count > 0) then
      Exit;
    vJob.Name := AName;
    vJob.Action := AAction;
    vJob.OnDone := AOnDone;
    FJobs.Enqueue(vJob);
    Result := True;
  finally
    FLock.Release;
  end;
  if Result then
    FSignal.SetEvent;
end;

function TWorkerService.IsBusy: Boolean;
begin
  FLock.Acquire;
  try
    Result := FBusy or (FJobs.Count > 0);
  finally
    FLock.Release;
  end;
end;

function TWorkerService.PendingCount: Integer;
begin
  FLock.Acquire;
  try
    Result := FJobs.Count;
  finally
    FLock.Release;
  end;
end;

function TWorkerService.CurrentJobName: string;
begin
  FLock.Acquire;
  try
    Result := FCurrentName;
  finally
    FLock.Release;
  end;
end;

procedure TWorkerService.Stop;
begin
  Terminate;
  FSignal.SetEvent;
  WaitFor;
end;

initialization

finalization
  if GWorker <> nil then
  begin
    GWorker.Stop;
    FreeAndNil(GWorker);
  end;

end.
