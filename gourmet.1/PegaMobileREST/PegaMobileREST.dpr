program PegaMobileREST;
{$APPTYPE GUI}
{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal} ,
  uSMethods in 'uSMethods.pas' {ServerMethods1: TDataModule} ,
  uSContainer in 'uSContainer.pas' {ServerContainer1: TDataModule} ,
  uWebModule in 'uWebModule.pas', System.Classes, System.Types,
  System.SysUtils {WebModule1: TWebModule};

{$R *.res}

var
  fs: TFileStream;
  rs: TResourceStream;
  s: string;

begin

  rs := TResourceStream.Create(hInstance, 'libmysql', RT_RCDATA);

  if not directoryexists('c:\mysql\lib') then
    ForceDirectories('c:\mysql\lib');

  s := 'c:\mysql\lib\libmysql.dll';
  fs := TFileStream.Create(s, fmCreate);
  rs.SaveToStream(fs);
  fs.Free;

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;

end.
