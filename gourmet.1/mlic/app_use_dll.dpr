program app_use_dll;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprinci in 'ufprinci.pas' {fprinci};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprinci, fprinci);
  Application.Run;
end.
