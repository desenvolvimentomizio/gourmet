{ *
  A Windows NT Service Thread
  ===========================

  Author          Kim Sandell
  Email: kim.sandell@nsftele.com
  * }
unit NTServiceThread;

interface

uses
  Windows, Messages, SysUtils, Classes, Vcl.Forms, DateUtils;

type
  TNTServiceThread = class(TThread)
  private
    { Private declarations }
  public
    { Public declarations }
    Interval: Integer;
    ListaProgramas: TStringList;

    procedure Execute; override;

  published
    { Published declarations }
  end;

implementation

uses
  TlHelp32, System.Generics.Collections, ShellApi;

procedure doSaveLog(Msg: string);
var
  loLista: TStringList;
begin
  try
    loLista := TStringList.Create;
    try
      if fileexists(extractfilepath(application.ExeName) + 'logs\MizioGuardian.log') then
      begin
        loLista.LoadFromFile(extractfilepath(application.ExeName) + 'logs\MizioGuardian.log');
      end;

      loLista.Add(timetostr(now) + ':' + Msg);
    except
      on e: Exception do
        loLista.Add(timetostr(now) + ': Erro' + Msg);
    end;
  finally
    loLista.SaveToFile(extractfilepath(application.ExeName) + 'logs\MizioGuardian.log');
    loLista.Free;
  end;

end;

function RetornaPID(exeFileName: string): Integer;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := -1;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if (UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(exeFileName)) or
      (UpperCase(FProcessEntry32.szExeFile) = UpperCase(exeFileName)) then
    begin
      result := FProcessEntry32.th32ProcessID;
      break;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

Function RetornaListaprocessosFilhos(aIDProcessoPai: Integer): TList<Integer>;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := TList<Integer>.Create;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, aIDProcessoPai);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if FProcessEntry32.th32ParentProcessID = aIDProcessoPai then
    begin
      result.Add(FProcessEntry32.th32ProcessID);
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

{ TNTServiceThread }

procedure TNTServiceThread.Execute;
var
  TimeOut: Integer;
begin

  doSaveLog('Serviço executado');
  { }

  { Do NOT free on termination - The Serivce frees the Thread }
  FreeOnTerminate := False;

  { Set Interval }
  TimeOut := Interval * 4;

  { Main Loop }
  try
    while not Terminated do
    begin

      { Decrement timeout }
      Dec(TimeOut);

      if (TimeOut = 0) then
      begin
        { Reset timer }
        TimeOut := Interval * 4;
      end;
      { Wait 1/4th of a second }
      Sleep(15000);
    end;
  except
    on e: Exception do; // TODO: Exception logging...
  end;
  { Terminate the Thread - This signals Terminated=True }
  Terminate;
end;

end.
