program pegaatualizanovo;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufatualizando in 'ufatualizando.pas' {fatualizando};

{$R *.res}

begin

  Application.Initialize;
  Application.CreateForm(Tfatualizando, fatualizando);
  Application.MainForm.Visible:=false;
  fatualizando.VerificarAtualizacao;

  Application.MainFormOnTaskbar := True;
  Application.Run;

end.
