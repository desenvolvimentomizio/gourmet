program Tvsenha;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {mm: TUniGUIMainModule},
  Main in 'Main.pas' {tvconfere: TUniForm};

{$R *.res}

begin
  // ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
