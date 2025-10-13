program PegaServerGourmet;
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
  uFPrinciServerGourmet in 'uFPrinciServerGourmet.pas' {FPrinciServerGourmet},
  uSMServerGourmet in 'uSMServerGourmet.pas' {SMServerGourmet: TDataModule},
  uSCServerGourmet in 'uSCServerGourmet.pas' {SCServerGourmet: TDataModule},
  uWMServerGourmet in 'uWMServerGourmet.pas' {WMServerGourmet: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFPrinciServerGourmet, FPrinciServerGourmet);
  Application.Run;
end.
