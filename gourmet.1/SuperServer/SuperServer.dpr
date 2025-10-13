program SuperServer;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uufSuperServer in 'uufSuperServer.pas' {fSuperServer},
  uServidorMetodos in 'uServidorMetodos.pas' {ServidorMetodos: TDataModule},
  uServidorConteiner in 'uServidorConteiner.pas' {ServidorConteiner: TDataModule},
  uWebModulos in 'uWebModulos.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfSuperServer, fSuperServer);
  Application.Run;
end.
