program AutoInstalador;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  uInstalador in '..\uInstalador.pas' {frmAutoInstalador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAutoInstalador, frmAutoInstalador);
  Application.Run;
end.
