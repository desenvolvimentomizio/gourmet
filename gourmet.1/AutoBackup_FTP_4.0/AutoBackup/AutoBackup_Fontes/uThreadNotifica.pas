unit uThreadNotifica;

interface

uses
  System.Classes, Inifiles, Registry, ShellAPI, WinSvc, Windows, Vcl.Forms,
  SysUtils;

type
  uBackupNotifica = class(TThread)
  private

  protected
    procedure Execute; override;
  Public
    constructor Create();
  end;

implementation

uses uAutoBackup, uConexaoModulo, uConfigura, uThreadExec;

constructor uBackupNotifica.Create;
begin
  inherited Create(True);

  FreeOnTerminate := True;

  Priority := TpLower;

  Resume;
end;

procedure uBackupNotifica.Execute;
var
  vbackup: string;
  atrasado: Tinifile;
begin
  atrasado := Tinifile.Create(extractfilepath(application.ExeName)+'Config\mizioBackup.ini');
  vbackup := atrasado.ReadString('Ultimo', 'Backup', '');
  if vbackup = '' then
  begin
    exit
  end
  else if (StrToDate(vbackup) < Date - 1) then
  begin
    if not uThreadExec.vBackupOn = True then
    begin
      frmAutoBackup.vNovamente := True;
      frmAutoBackup.bWindows.BalloonTitle := 'Backup Atrasado';
      frmAutoBackup.bWindows.BalloonHint :=
        'Seu Backup está atrasado - Clique Aqui para efetuar o Backup';
      frmAutoBackup.bWindows.BalloonTimeout := 120000;
      frmAutoBackup.bWindows.ShowBalloonHint;
    end;
  end;
end;

end.
