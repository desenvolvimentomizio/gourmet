unit GourmetAIQ.Service.Log;

// Servico de log centralizado.
//
// Substitui chamadas diretas a FormGourmetAIQ.logs.Lines.Add espalhadas pelos
// Controllers e DataModules. Beneficios:
//   1. Quebra a dependencia circular Controller -> Form -> Controller.
//   2. Thread-safe (TCriticalSection): pode ser usado pelo worker thread.
//   3. Fila bounded (UI Queue): se a UI nao consegue acompanhar, o log mais
//      antigo eh descartado, evitando que o TMemo trave o app.
//   4. Rotacao por arquivo (gourmetaiq.log no diretorio do executavel) com
//      limite de tamanho, para que um app rodando dias nao consuma disco.
//
// Uso:
//   Log.Info('mensagem');     -> nivel rotineiro
//   Log.Debug('mensagem');    -> verboso, util para diagnosticar
//   Log.Error('mensagem');    -> falhas
//
// Como a UI consome:
//   Log.OnNewLine := procedure(const ALine: string) begin ... end;
//   ou Log.PullPending(LinhasMemo)  para drenar de tempos em tempos.

interface

uses
  System.SysUtils, System.Classes, System.SyncObjs, System.Generics.Collections;

type
  TLogLevel = (llDebug, llInfo, llWarn, llError);

  TLogService = class
  private
    FLock: TCriticalSection;
    FQueue: TQueue<string>;
    FQueueLimit: Integer;
    FMinLevel: TLogLevel;
    FFilePath: string;
    FFileMaxSize: Int64;     // bytes
    FFileEnabled: Boolean;
    FOnNewLine: TProc<string>;
    procedure Write(ALevel: TLogLevel; const AMessage: string);
    procedure RotateIfNeeded;
    procedure AppendToFile(const ALine: string);
  public
    constructor Create;
    destructor Destroy; override;

    procedure Debug(const AMessage: string);
    procedure Info(const AMessage: string);
    procedure Warn(const AMessage: string);
    procedure Error(const AMessage: string);

    /// Drena ate ACount linhas pendentes para Dest (ex.: TMemo.Lines.AddStrings).
    /// Usar de tempos em tempos a partir da UI; assim a UI nao chama
    /// Memo.Lines.Add em loop quente.
    procedure PullPending(Dest: TStrings; ACount: Integer = 100);

    property MinLevel: TLogLevel read FMinLevel write FMinLevel;
    property FilePath: string read FFilePath write FFilePath;
    property FileEnabled: Boolean read FFileEnabled write FFileEnabled;
    property FileMaxSize: Int64 read FFileMaxSize write FFileMaxSize;
    /// Limite de linhas guardadas em memoria. Linhas mais antigas sao
    /// descartadas se a UI nao drenar a tempo.
    property QueueLimit: Integer read FQueueLimit write FQueueLimit;

    /// Callback opcional invocado a cada nova linha. Pode ser executado
    /// fora da thread da UI -- caso seja UI, sincronize via TThread.Queue.
    property OnNewLine: TProc<string> read FOnNewLine write FOnNewLine;
  end;

function Log: TLogService;

implementation

uses
  Winapi.Windows;

var
  GLog: TLogService;

function Log: TLogService;
begin
  if GLog = nil then
    GLog := TLogService.Create;
  Result := GLog;
end;

{ TLogService }

constructor TLogService.Create;
begin
  inherited Create;
  FLock := TCriticalSection.Create;
  FQueue := TQueue<string>.Create;
  FQueueLimit := 500;          // ate 500 linhas em memoria
  FMinLevel := llInfo;
  FFileEnabled := True;
  FFileMaxSize := 5 * 1024 * 1024;  // 5 MB
  FFilePath := ExtractFilePath(ParamStr(0)) + 'gourmetaiq.log';
end;

destructor TLogService.Destroy;
begin
  FLock.Acquire;
  try
    FQueue.Free;
  finally
    FLock.Release;
  end;
  FLock.Free;
  inherited;
end;

procedure TLogService.Write(ALevel: TLogLevel; const AMessage: string);
const
  LEVEL_NAME: array[TLogLevel] of string = ('DBG', 'INF', 'WRN', 'ERR');
var
  vLine: string;
  vCallback: TProc<string>;
begin
  if ALevel < FMinLevel then
    Exit;

  vLine := Format('%s [%s] %s',
    [FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', Now), LEVEL_NAME[ALevel], AMessage]);

  FLock.Acquire;
  try
    FQueue.Enqueue(vLine);
    while FQueue.Count > FQueueLimit do
      FQueue.Dequeue;
    vCallback := FOnNewLine;
  finally
    FLock.Release;
  end;

  if FFileEnabled then
  begin
    try
      AppendToFile(vLine);
    except
      // Log nunca pode quebrar o app. Engole erros de I/O.
    end;
  end;

  if Assigned(vCallback) then
  begin
    try
      vCallback(vLine);
    except
      // idem
    end;
  end;
end;

procedure TLogService.AppendToFile(const ALine: string);
var
  vBytes: TBytes;
  vStream: TFileStream;
begin
  RotateIfNeeded;
  vBytes := TEncoding.UTF8.GetBytes(ALine + sLineBreak);
  if FileExists(FFilePath) then
    vStream := TFileStream.Create(FFilePath, fmOpenWrite or fmShareDenyNone)
  else
    vStream := TFileStream.Create(FFilePath, fmCreate or fmShareDenyNone);
  try
    vStream.Seek(0, soEnd);
    vStream.WriteBuffer(vBytes, Length(vBytes));
  finally
    vStream.Free;
  end;
end;

procedure TLogService.RotateIfNeeded;
var
  vSize: Int64;
  vBackup: string;
begin
  if not FileExists(FFilePath) then
    Exit;
  with TFileStream.Create(FFilePath, fmOpenRead or fmShareDenyNone) do
  try
    vSize := Size;
  finally
    Free;
  end;
  if vSize < FFileMaxSize then
    Exit;
  // rotaciona: gourmetaiq.log -> gourmetaiq.log.1 (sobrescreve antigo)
  vBackup := FFilePath + '.1';
  if FileExists(vBackup) then
    System.SysUtils.DeleteFile(vBackup);
  RenameFile(FFilePath, vBackup);
end;

procedure TLogService.Debug(const AMessage: string);
begin
  Write(llDebug, AMessage);
end;

procedure TLogService.Info(const AMessage: string);
begin
  Write(llInfo, AMessage);
end;

procedure TLogService.Warn(const AMessage: string);
begin
  Write(llWarn, AMessage);
end;

procedure TLogService.Error(const AMessage: string);
begin
  Write(llError, AMessage);
end;

procedure TLogService.PullPending(Dest: TStrings; ACount: Integer);
var
  vTaken: Integer;
begin
  if Dest = nil then
    Exit;
  vTaken := 0;
  Dest.BeginUpdate;
  try
    FLock.Acquire;
    try
      while (FQueue.Count > 0) and (vTaken < ACount) do
      begin
        Dest.Add(FQueue.Dequeue);
        Inc(vTaken);
      end;
    finally
      FLock.Release;
    end;
  finally
    Dest.EndUpdate;
  end;
end;

initialization

finalization
  FreeAndNil(GLog);

end.
