program PegaSrvMobile;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  ufIncluirFracionado in 'ufIncluirFracionado.pas' {fIncluirFracionado: TUnimForm},
  ufobs in 'ufobs.pas' {fobs: TUnimForm},
  ufIncluir in 'ufIncluir.pas' {fIncluir: TUnimForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
