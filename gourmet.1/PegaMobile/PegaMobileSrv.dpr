//library PegaMobileSrv;

program PegaMobileSrv;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  Winapi.Windows,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  ufIncluir in 'ufIncluir.pas' {fIncluir: TUnimForm},
  ufIncluirFracionado in 'ufIncluirFracionado.pas' {fIncluirFracionado: TUnimForm},
  ufItem in 'ufItem.pas' {fItem: TUnimForm},
  ufnumeromesas in 'ufnumeromesas.pas' {fnumeromesas: TUnimForm},
  ufTransfereMesa in 'ufTransfereMesa.pas' {fTrnasfereMesa: TUnimForm},
  ufobs in 'ufobs.pas' {fobs: TUnimForm};

{$R *.res}

begin
  // ReportMemoryLeaksOnShutdown := True;
  // cria um mutex usando um nome único

  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
