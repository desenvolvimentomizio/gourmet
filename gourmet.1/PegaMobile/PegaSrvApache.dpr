library PegaSrvApache;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  uniGUIISAPI,
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  ufIncluir in 'ufIncluir.pas' {fIncluir: TUnimForm},
  ufIncluirFracionado in 'ufIncluirFracionado.pas' {fIncluirFracionado: TUnimForm},
  ufItem in 'ufItem.pas' {fItem: TUnimForm},
  ufnumeromesas in 'ufnumeromesas.pas' {fnumeromesas: TUnimForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

end.
