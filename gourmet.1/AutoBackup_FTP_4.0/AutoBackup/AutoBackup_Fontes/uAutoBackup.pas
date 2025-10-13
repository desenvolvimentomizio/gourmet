unit uAutoBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Registry, ShellAPI, WinSvc, Inifiles, TlHelp32,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Menus, Vcl.Buttons, IdBaseComponent,
  IdAntiFreezeBase, IdAntiFreeze;

type
  TfrmAutoBackup = class(TForm)
    img_logo: TImage;
    pnlPrincipal: TPanel;
    img_logo_E: TImage;
    menuWindows: TPopupMenu;
    bWindows: TTrayIcon;
    Configurar1: TMenuItem;
    ConfigurarBackup1: TMenuItem;
    Local1: TMenuItem;
    LocalTemp1: TMenuItem;
    LocalLog1: TMenuItem;
    LocalArquivosSecundario1: TMenuItem;
    Servio1: TMenuItem;
    UltimoBackup1: TMenuItem;
    ReiniciarAplicao1: TMenuItem;
    ExecutarBackup1: TMenuItem;
    FinalizarAutoBackup1: TMenuItem;
    ExecBackup: TTimer;
    Verso1: TMenuItem;
    sumio: TTimer;
    notifica: TTimer;
    AutoExec: TTimer;
    N2: TMenuItem;
    ModoExecuo1: TMenuItem;
    kkk1: TMenuItem;
    Notificaes1: TMenuItem;
    N1: TMenuItem;
    ParaExecuodoBackup1: TMenuItem;
    procedure ExecBackupTimer(Sender: TObject);
    procedure ExecutarBackup1Click(Sender: TObject);
    procedure bWindowsBalloonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigurarBackup1Click(Sender: TObject);
    procedure FinalizarAutoBackup1Click(Sender: TObject);
    procedure LocalTemp1Click(Sender: TObject);
    procedure LocalLog1Click(Sender: TObject);
    procedure LocalArquivosSecundario1Click(Sender: TObject);
    procedure ReiniciarAplicao1Click(Sender: TObject);
    procedure UltimoBackup1Click(Sender: TObject);
    procedure Verso1Click(Sender: TObject);
    procedure sumioTimer(Sender: TObject);
    procedure notificaTimer(Sender: TObject);
    procedure ControlaTimer(Sender: TObject);
    procedure AutoExecTimer(Sender: TObject);
    procedure ParaExecuodoBackup1Click(Sender: TObject);
  private
  public
    procedure ExecutaBackup;

    { Controle de Horario e dia do Backup }
  Const
    Dia: Array [1 .. 7] Of String = ('Domingo', 'Segunda', 'Terça', 'Quarta',
      'Quinta', 'Sexta', 'Sábado');

  var
    HoraOn, BackupOn, DiaSemana, Hora, BackupIni: string;
    DiaSem: Word;
    backupler: Tinifile;

    { Fim }
  var
    vNovamente, vNada: boolean;
    Segundos: integer;
  end;

var
  frmAutoBackup: TfrmAutoBackup;

implementation

{$R *.dfm}

uses uConexaoModulo, uConfigura, uThreadExec, uThreadNotifica;

function ExecExplorer(OpenAtPath: string;
  OpenWithExplorer, OpenAsRoot: boolean): boolean;
var
  s: string;
begin
  if OpenWithExplorer then
  begin
    if OpenAsRoot then
      s := ' /e,/root,"' + OpenAtPath + '"'
    else
      s := ' /e,"' + OpenAtPath + '"';
  end
  else
    s := '"' + OpenAtPath + '"';

  Result := ShellExecute(Application.Handle, PChar('open'),
    PChar('explorer.exe'), PChar(s), nil, SW_NORMAL) > 32;
end;

function FormEstaCriado(AClass: TClass): boolean;
var
  I: integer;
begin
  Result := False;
  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I] is AClass then
    begin
      Result := True;
      Break;
    end;
  end;
end;
{ TfrmAutoBackup }

procedure TfrmAutoBackup.AutoExecTimer(Sender: TObject);
var
  I: integer;
  vThread: uBackupExec;
begin
  if ExecutarBackup1.Checked then
  begin
    AutoExec.Enabled := False;
    vThread := uBackupExec.Create;
    vThread.Resume;
    ExecutarBackup1.Caption := 'Executar Backup';
  end
  else
  begin
    AutoExec.Enabled := False;
    ExecutarBackup1.Caption := 'Executar Backup';
    exit
  end;

end;

procedure TfrmAutoBackup.bWindowsBalloonClick(Sender: TObject);
begin
  if vNovamente = True then
  begin
    ExecutaBackup;
  end;
  if vNada = True then
  begin
    exit
  end;
end;

procedure TfrmAutoBackup.ConfigurarBackup1Click(Sender: TObject);
begin
  if FormEstaCriado(TfrmConfig) then
  begin
    frmConfig.Free;
    frmConfig := TfrmConfig.Create(Application);
    frmConfig.Show;
  end
  else
  begin
    frmConfig := TfrmConfig.Create(Application);
    frmConfig.Show;
  end;
end;

procedure TfrmAutoBackup.ControlaTimer(Sender: TObject);
var
  Escrever: Tinifile;
begin
  Escrever := Tinifile.Create(extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  Escrever.WriteString('Ultimo', 'Travar', 'TentativasOn');
  Escrever.Free;
end;

procedure TfrmAutoBackup.ExecBackupTimer(Sender: TObject);
var
  Local: string;
begin
  Hora := FormatDateTime(' hh:nn', now);
  DiaSem := DayOfWeek(Date);
  DiaSemana := Dia[DiaSem];
  backupler := Tinifile.Create
    (extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  BackupOn := backupler.ReadString('Dia', DiaSemana, '');
  if BackupOn = '1' then
  begin
    HoraOn := backupler.ReadString('Hora', Hora, '');
    if HoraOn = '1' then
    begin
      if not uThreadExec.vBackupOn = True then
      begin
        begin
          if not AutoExec.Enabled = True then
          begin
            ExecutaBackup;
            exit
          end;
        end;
      end
      else
      begin
        exit
      end;
    end;
  end;
  exit
end;

function ProcessoExiste(ExeFileName: string): boolean;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32 { declarar Uses Tlhelp32 };
begin
  Result := False;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then
    begin
      Result := True;
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
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then
      Result := integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),
        FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TfrmAutoBackup.ExecutaBackup;
var
  vThread: uBackupExec;
begin
  vThread := uBackupExec.Create;
  vThread.Resume;
end;

procedure TfrmAutoBackup.ExecutarBackup1Click(Sender: TObject);
begin
  ExecutaBackup;
end;

procedure TfrmAutoBackup.FinalizarAutoBackup1Click(Sender: TObject);
begin
  if ProcessoExiste('AutoBackup.exe') then
  begin
    KillTask('AutoBackup.exe');
  end;
end;

procedure TfrmAutoBackup.FormCreate(Sender: TObject);
var
  versao: string;
  Reg: TRegistry;
  Somar: integer;
  vbackup, Travar: string;
  atrasado, Ler: Tinifile;
  vHandle: Cardinal;
  HprevHist: HWND;
begin
  HprevHist := FindWindow(Nil, PChar('AutoBackup.exe'));
  if HprevHist = 0 then
  Begin

  end
  else
  Begin
    Application.Terminate;
  end;
  vHandle := GetCurrentProcess();
  SetProcessAffinityMask(vHandle, $01);

  if not FileExists(extractfilepath(application.ExeName)+'Config\MizioBackup.ini') then
  begin

    frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
    frmAutoBackup.bWindows.BalloonHint := 'É preciso configurar o Backup';
    frmAutoBackup.bWindows.ShowBalloonHint;

    if FormEstaCriado(TfrmAutoBackup) then
    begin
      frmConfig.Free;
      frmConfig := TfrmConfig.Create(Application);
      frmConfig.ShowModal;
    end
    else
    begin
      frmConfig := TfrmConfig.Create(Application);
      frmConfig.ShowModal;
    end;
  end;

  atrasado := Tinifile.Create(extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  vbackup := atrasado.ReadString('Ultimo', 'Backup', '');
  if vbackup = '' then
  begin
    exit
  end
  else if (StrToDate(vbackup) < Date - 1) then
  begin
    frmAutoBackup.vNovamente := True;
    frmAutoBackup.bWindows.BalloonTitle := 'Backup Atrasado';
    frmAutoBackup.bWindows.BalloonHint :=
      'Seu Backup está atrasado - Clique Aqui para efetuar o Backup';
    frmAutoBackup.bWindows.ShowBalloonHint;
  end;
end;

procedure TfrmAutoBackup.LocalArquivosSecundario1Click(Sender: TObject);
var
  Ler: Tinifile;
  vLer: string;
begin
  Ler := Tinifile.Create(extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  vLer := Ler.ReadString('vCli', 'DirBackup2', '');
  ExecExplorer(vLer, True, True);
end;

procedure TfrmAutoBackup.LocalLog1Click(Sender: TObject);
var
  Ler: Tinifile;
  vLer: string;
begin
  Ler := Tinifile.Create(extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  vLer := Ler.ReadString('vCli', 'DirBackup', '');
  ExecExplorer(vLer, True, True);
end;

procedure TfrmAutoBackup.LocalTemp1Click(Sender: TObject);
begin
  ExecExplorer(extractfilepath(application.ExeName)+'AutoBackup', True, True);
end;

procedure TfrmAutoBackup.notificaTimer(Sender: TObject);
var
  vThread: uBackupNotifica;
begin
  vThread := uBackupNotifica.Create;
  vThread.Resume;
end;

procedure TfrmAutoBackup.ParaExecuodoBackup1Click(Sender: TObject);
var
  rThread: uBackupExec;
  AppName: PChar;
begin
  try
    KillTask('7z.exe');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecMoveArqO.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecMoveArqX.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecCopyArqO.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecCopyArqX.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecCopia.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecOrigem.bat');
    DeleteFile(extractfilepath(application.ExeName)+'Temp\ExecXml.bat');
  except

  end;
  ExecutarBackup1.Caption := 'Exectar Backup';
  bWindows.BalloonTitle := 'Notifica Backup';
  bWindows.BalloonHint := 'Backup Interrompido';
  bWindows.BalloonTimeout := 10000;
  bWindows.ShowBalloonHint;
  try
    AppName := PChar(Application.ExeName);
    ShellExecute(0, 'open', AppName, nil, nil, SW_HIDE);
    Application.Terminate;
  except

  end;
end;

procedure TfrmAutoBackup.ReiniciarAplicao1Click(Sender: TObject);
var
  AppName: PChar;
begin
  try
    AppName := PChar(Application.ExeName);
    ShellExecute(0, 'open', AppName, nil, nil, SW_HIDE);
    Application.Terminate;
  except

  end;

end;

procedure TfrmAutoBackup.sumioTimer(Sender: TObject);
begin
  frmAutoBackup.Visible := False;
  sumio.Enabled := False;
end;

procedure TfrmAutoBackup.UltimoBackup1Click(Sender: TObject);
var
  Ler: Tinifile;
  vLer: string;
begin

  Ler := Tinifile.Create(extractfilepath(application.ExeName)+'Config\MizioBackup.ini');
  vLer := Ler.ReadString('Ultimo', 'Backup', '');
  vNovamente := False;
  vNada := True;
  if vLer <> '' then
  begin
    bWindows.BalloonTitle := 'Ultimo Backup';
    bWindows.BalloonHint := 'Ultimo Backup: ' + vLer;
    bWindows.ShowBalloonHint;
  end
  else
  begin
    bWindows.BalloonTitle := 'Ultimo Backup';
    bWindows.BalloonHint := 'Não foi identificado um Ultimo Backup';
    bWindows.ShowBalloonHint;
  end;

end;

Function VersaoExe: String;
type
  PFFI = ^vs_FixedFileInfo;
var
  F: PFFI;
  Handle: Dword;
  Len: Longint;
  Data: PChar;
  Buffer: Pointer;
  Tamanho: Dword;
  Parquivo: PChar;
  Arquivo: String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
  begin
    Data := StrAlloc(Len + 1);
    if GetFileVersionInfo(Parquivo, Handle, Len, Data) then
    begin
      VerQueryValue(Data, '\', Buffer, Tamanho);
      F := PFFI(Buffer);
      Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs),
        LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs),
        LoWord(F^.dwFileVersionLs)]);
    end;
    StrDispose(Data);
  end;
  StrDispose(Parquivo);
end;

procedure TfrmAutoBackup.Verso1Click(Sender: TObject);
begin
  bWindows.BalloonTitle := 'Versão Backup';
  bWindows.BalloonHint := 'Versão: ' + VersaoExe;
  bWindows.ShowBalloonHint;
end;

end.
