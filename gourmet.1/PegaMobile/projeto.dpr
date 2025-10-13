program projeto;

uses
  Forms,
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  UDmMainModule in 'UDmMainModule.pas' {DmMainModule: TUniGUIMainModule},
  ufIncluir in 'ufIncluir.pas' {fIncluir: TUnimForm},
  ufIncluirFracionado in 'ufIncluirFracionado.pas' {fIncluirFracionado: TUnimForm},
  ufItem in 'ufItem.pas' {fItem: TUnimForm},
  ufnumeromesas in 'ufnumeromesas.pas' {fnumeromesas: TUnimForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm};

{$R *.res}

begin
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
