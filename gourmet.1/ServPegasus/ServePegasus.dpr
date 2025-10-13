program Servemizio;
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
  fPrinciServmizio in 'fPrinciServmizio.pas' {PrinciServmizio},
  SM in 'SM.pas' {ServerMethodsmizio: TDataModule},
  SC in 'SC.pas' {ServerContainermizio: TDataModule},
  WM in 'WM.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TPrinciServmizio, PrinciServmizio);
  Application.Run;
end.
