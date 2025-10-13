unit ProducaoUP.Services.Main;

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
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  Horse.HandleException,
  Horse.GBSwagger,
  Horse.Logger,
  Horse.BasicAuthentication,
  Horse.OctetStream;

type
  TMainService = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  MainService: TMainService;
  App: THorse;
  HorseLoggerConfig: THorseLoggerConfig;

implementation




{$R *.dfm}

uses ProducaoUPServer.controller.CLB, ProducaoUPServer.controller.IMM,
  ProducaoUPServer.controller.MIT, ProducaoUPServer.controller.RMP;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  MainService.Controller(CtrlCode);
end;

function TMainService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TMainService.ServiceCreate(Sender: TObject);
begin



  App.Get('/test',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('ok');
    end);


  App.Get('/v1/stream/grp/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TFileStream;
    begin
      LStream := TFileStream.Create('c:\GourmetUP\servers\imagens\grp\'+Req.Params.Items['id'], fmOpenRead);
      Res.Send<TStream>(LStream);
    end);



end;

procedure TMainService.ServiceStart(Sender: TService; var Started: Boolean);
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

  ProducaoUPServer.controller.CLB.Registry(App);
  ProducaoUPServer.controller.MIT.Registry(App);
  ProducaoUPServer.controller.IMM.Registry(App);
  ProducaoUPServer.controller.RMP.Registry(App);


  App.Listen(9191);
  Started := True;
end;


procedure TMainService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  THorse.StopListen;
  Stopped := True;
end;

end.
