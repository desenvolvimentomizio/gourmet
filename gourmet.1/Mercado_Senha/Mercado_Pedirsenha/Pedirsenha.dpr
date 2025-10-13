program Pedirsenha;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  ServerModule in 'ServerModule.pas' {mm: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {frm_ps: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Tmm.Create(Application);
  Application.Run;
end.
