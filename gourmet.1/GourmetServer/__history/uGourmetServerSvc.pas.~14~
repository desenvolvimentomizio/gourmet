unit uGourmetServerSvc;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.SvcMgr,
  Vcl.Dialogs,
  registry,
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  Horse.HandleException,
  Horse.GBSwagger,
  Horse.Logger,
  Horse.BasicAuthentication,
  Horse.OctetStream;

type
  TGourmetServerServer = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceAfterInstall(Sender: TService);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  GourmetServerServer: TGourmetServerServer;

  App: THorse;
  // HorseLoggerConfig: THorseLoggerConfig;

implementation

{$R *.dfm}
uses
  GourmetServer.Controller.aiq.CFGGOU,
  GourmetServer.Controller.aiq.PEDIDO,
  GourmetServer.Controller.aiq.CLIENTE,
  GourmetServer.Controller.CZN,
  GourmetServer.Controller.GRP,
  GourmetServer.Controller.ImportaCardapioMizio;


procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  GourmetServerServer.Controller(CtrlCode);
end;

function TGourmetServerServer.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TGourmetServerServer.ServiceAfterInstall(Sender: TService);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);

  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\SYSTEM\CurrentControlSet\Services\' + Name, false) then
    begin
      Reg.WriteString('Description', 'Servidor Mizio - Gourmet.');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

end;

procedure TGourmetServerServer.ServiceCreate(Sender: TObject);


begin




  App := THorse.Create;
  App.Use(OctetStream);

  // tratativa de operações com JSON
  App.Use(Jhonson);

  // tratativa de consumo via RESTFULL
  App.Use(CORS);

  // tratativa de execoes da api
  App.Use(HandleException);

  // tratativa para geração de logs automaticos do servidor

  // HorseLoggerConfig := THorseLoggerConfig.Create('${time} - ${request_method} ${request_path_info} ${execution_time}');
  // HorseLoggerConfig.LogDir:=extractfilepath(application.exename)+'logs\';
  // App.Use(THorseLogger.New(HorseLoggerConfig));

  // tratativa para gerar documentação da api via swagger
  App.Use(HorseSwagger);

  // controllers de entidades

  GourmetServer.Controller.aiq.CFGGOU.Registry(App);
  GourmetServer.Controller.aiq.PEDIDO.Registry(App);
  GourmetServer.Controller.aiq.CLIENTE.Registry(App);
  GourmetServer.Controller.CZN.Registry(App);
  GourmetServer.Controller.GRP.Registry(App);
  GourmetServer.Controller.ImportaCardapioMizio.Registry(App);



  App.Get('/v1/test',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('ok');
    end);



  {
    App.Get('/v1/stream/grp/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
    LStream: TFileStream;
    begin

    LStream := TFileStream.Create(extractfilepath(application.exename)+'mercatotv\imagens\grp\'+Req.Params.Items['id'], fmOpenRead);
    Res.Send<TStream>(LStream);
    end);
  }





end;

procedure TGourmetServerServer.ServiceStart(Sender: TService; var Started: Boolean);
begin
  App.Listen(8091,
    procedure(Horse: THorse)
    begin
     //  Writeln('Servidor esta rodando - porta: ' + App.Port.ToString + ' - Versão: 22.27.105.5');

    end);
  Started := True;
end;

procedure TGourmetServerServer.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  THorse.StopListen;
  Stopped := True;
end;

end.
