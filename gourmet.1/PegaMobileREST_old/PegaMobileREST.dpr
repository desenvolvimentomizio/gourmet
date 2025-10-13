program PegaMobileREST;
{$APPTYPE GUI}

{$R *.dres}

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uSMethods in 'uSMethods.pas' {ServerMethods1: TDataModule},
  uSContainer in 'uSContainer.pas' {ServerContainer1: TDataModule},
  uWebModule in 'uWebModule.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
