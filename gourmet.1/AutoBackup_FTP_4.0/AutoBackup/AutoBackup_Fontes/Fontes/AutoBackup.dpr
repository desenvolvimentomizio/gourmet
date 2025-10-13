program AutoBackup;

uses
  Vcl.Forms,
  PassWord in '..\PassWord.pas' {PasswordDlg},
  uAutoBackup in '..\uAutoBackup.pas' {frmAutoBackup},
  uConexaoModulo in '..\uConexaoModulo.pas' {conexaoDM: TDataModule},
  uConfigura in '..\uConfigura.pas' {frmConfig},
  uThreadExec in '..\uThreadExec.pas',
  uThreadNotifica in '..\uThreadNotifica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAutoBackup, frmAutoBackup);
  Application.CreateForm(TconexaoDM, conexaoDM);
  Application.Run;
end.
