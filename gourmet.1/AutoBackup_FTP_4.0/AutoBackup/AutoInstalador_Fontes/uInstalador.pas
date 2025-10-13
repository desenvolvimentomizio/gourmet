unit uInstalador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Tlhelp32, ShellAPI, Registry,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmAutoInstalador = class(TForm)
    Image1: TImage;
    anima: TTrayIcon;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAutoInstalador: TfrmAutoInstalador;

implementation

{$R *.dfm}


function ProcessoExiste(ExeFileName: string): boolean;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32 { declarar Uses Tlhelp32 };
begin
  result := false;

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then
    begin
      result := true;
      exit;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function KillTask(ExeFileName: string): integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then
      result := integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),
        FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TfrmAutoInstalador.FormCreate(Sender: TObject);
var
  fs: TFileStream;
  rs: TResourceStream;
  s, resultado: string;
  Reg: TRegistry;
begin

  try
    if ProcessoExiste('AutoBackup.exe') then
    begin
      KillTask('AutoBackup.exe');
    end;
  except
  end;

  try
    ShellExecute(Handle, 'open', PChar('cmd.exe'),
      PWideChar(
      '/c netsh firewall set portopening TCP port 21 "AutoBackup.exe" ENABLE ALL '),
      nil, SW_HIDE);
    ShellExecute(Handle, 'open', PChar('cmd.exe'),
      PWideChar(
      'netsh advfirewall firewall add rule name="Zoo TCP Port 21" dir=in action=allow protocol=TCP localport=21'),
      nil, SW_HIDE);
    { ShellExecute(Handle, 'open', PChar('cmd.exe'),
      PWideChar('/c netsh firewall set opmode disable'), nil, SW_HIDE); }
    // netsh firewall set opmode disable

    begin
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if Reg.OpenKey
        ('\System\CurrentControlSet\Services\SharedAccess\Parameters', false)
        and Reg.OpenKey('FirewallPolicy\StandardProfile\GloballyOpenPorts\List',
        false) then
        Reg.WriteString('21:TCP', '21:TCP:*:Enabled:AutoBackup.exe');
      Reg.Free;
    end;
  except
    exit
  end;


  if not DirectoryExists(extractfilepath(application.ExeName)+'AutoBackup') then
  begin
    ForceDirectories(extractfilepath(application.ExeName)+'AutoBackup');
    ForceDirectories(extractfilepath(application.ExeName)+'Log');
    ForceDirectories(extractfilepath(application.ExeName)+'Config');
    ForceDirectories(extractfilepath(application.ExeName)+'Temp');
    ForceDirectories(extractfilepath(application.ExeName)+'TempArq');
  end;


  anima.BalloonTitle := 'Instalador';
  anima.BalloonHint := 'AutoBackup Instalado';
  anima.ShowBalloonHint;
  sleep(2000);
  Application.Terminate;

end;

end.
