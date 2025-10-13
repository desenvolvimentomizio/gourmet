program Producao;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  UnimFormClb in 'UnimFormClb.pas' {fUnimFormClb: TUnimForm};

{$R *.res}

begin
 // ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
