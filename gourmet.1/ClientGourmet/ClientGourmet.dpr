program ClientGourmet;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprinciTablet in 'ufprinciTablet.pas' {fPrinciTablet};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrinciTablet, fPrinciTablet);
  Application.Run;
end.
