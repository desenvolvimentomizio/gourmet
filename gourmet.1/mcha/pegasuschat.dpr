program miziochat;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufcha in 'ufcha.pas' {fcha},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfcha, fcha);
  Application.Run;
end.
