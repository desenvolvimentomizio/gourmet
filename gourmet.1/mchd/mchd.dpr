program mchd;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprinci in 'ufprinci.pas' {fprinci},
  ufacesso in 'ufacesso.pas' {facesso};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprinci, fprinci);
  Application.CreateForm(Tfacesso, facesso);
  Application.Run;
end.
