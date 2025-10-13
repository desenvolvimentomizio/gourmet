unit uFprinciMizioWhats;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Inifiles,

  // Units Whats
  uService.WhatsApp,
  uModel.StatusWhats,
  uModel.StatusPhone,
  uModel.ContactWhats,
  uModel.MessageReceivedWhats,
  uCEFApplication,

  Data.DB,
  DBAccess,
  Uni,
  UniProvider,
  MySQLUniProvider,
  Vcl.ExtCtrls,
  MemDS,
  Vcl.StdCtrls,
  IdAntiFreezeBase,
  IdAntiFreeze,
  IdBaseComponent,
  IdIntercept,
  IdLogBase,
  IdLogEvent,
  IdIOHandler,
  IdIOHandlerSocket,
  IdIOHandlerStack,
  IdSSL,
  IdSSLOpenSSL,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP;

type
  TFprinciMizioWhats = class(TForm)
    MizioServiceWhats: TServiceWhtasApp;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    itopedido: TUniQuery;
    itopedidoorcchave: TIntegerField;
    itopedidoimmnumepedido: TIntegerField;
    itopedidotcicodigo: TIntegerField;
    itopedidotciporta: TStringField;
    itopedidomitidentificacao: TStringField;
    itopedidofoacodigo: TIntegerField;
    itopedidopedidoaux: TIntegerField;
    itopedidoitochave: TIntegerField;
    immpedido: TUniQuery;
    immpedidoorcchave: TIntegerField;
    immpedidofoacodigo: TIntegerField;
    immpedidostocodigo: TIntegerField;
    immpedidorelarquivo: TBlobField;
    immpedidoorcobs: TStringField;
    immpedidoorcgeralav: TFloatField;
    immpedidogricodigo: TIntegerField;
    immpedidogrpcodigo: TIntegerField;
    immpedidoimmchave: TIntegerField;
    itosaida: TUniQuery;
    itosaidaorcchave: TIntegerField;
    itosaidaimmnumepedido: TIntegerField;
    itosaidatcicodigo: TIntegerField;
    itosaidatciporta: TStringField;
    itosaidamitidentificacao: TStringField;
    itosaidafoacodigo: TIntegerField;
    itosaidapedidoaux: TIntegerField;
    itosaidaitochave: TIntegerField;
    immsaida: TUniQuery;
    immsaidaorcchave: TIntegerField;
    immsaidafoacodigo: TIntegerField;
    immsaidastocodigo: TIntegerField;
    immsaidarelarquivo: TBlobField;
    immsaidaorcobs: TStringField;
    immsaidaorcgeralav: TFloatField;
    immsaidagricodigo: TIntegerField;
    immsaidagrpcodigo: TIntegerField;
    immsaidaimmchave: TIntegerField;
    itoretorno: TUniQuery;
    itoretornoorcchave: TIntegerField;
    itoretornoimmnumepedido: TIntegerField;
    itoretornotcicodigo: TIntegerField;
    itoretornotciporta: TStringField;
    itoretornomitidentificacao: TStringField;
    itoretornofoacodigo: TIntegerField;
    itoretornopedidoaux: TIntegerField;
    itoretornoitochave: TIntegerField;
    czn: TUniQuery;
    czncznchave: TIntegerField;
    immretorno: TUniQuery;
    immretornoorcchave: TIntegerField;
    immretornofoacodigo: TIntegerField;
    immretornostocodigo: TIntegerField;
    immretornorelarquivo: TBlobField;
    immretornoorcobs: TStringField;
    immretornoorcgeralav: TFloatField;
    immretornogricodigo: TIntegerField;
    immretornogrpcodigo: TIntegerField;
    immretornoimmchave: TIntegerField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoumensapedido0: TStringField;
    cfgcfgmgoumensasaida0: TStringField;
    cfgcfgmgoumensaretorno0: TStringField;
    cfgcfgmgoumensapedido1: TStringField;
    cfgcfgmgoumensasaida1: TStringField;
    cfgcfgmgoumensaretorno1: TStringField;
    cfgcfgmgoumensapedido2: TStringField;
    cfgcfgmgoumensasaida2: TStringField;
    cfgcfgmgoumensaretorno2: TStringField;
    cfgcfgmgoumensapedido3: TStringField;
    cfgcfgmgoumensasaida3: TStringField;
    cfgcfgmgoumensaretorno3: TStringField;
    cfgcfgmgoumensapedido4: TStringField;
    cfgcfgmgoumensasaida4: TStringField;
    cfgcfgmgoumensaretorno4: TStringField;
    cfgcfgmgoumensapedido5: TStringField;
    cfgcfgmgoumensasaida5: TStringField;
    cfgcfgmgoumensaretorno5: TStringField;
    cfgcfgmgoumensapedido6: TStringField;
    cfgcfgmgoumensasaida6: TStringField;
    cfgcfgmgoumensaretorno6: TStringField;
    cfgcfgmgoumensapedido7: TStringField;
    cfgcfgmgoumensasaida7: TStringField;
    cfgcfgmgoumensaretorno7: TStringField;
    cfgcfgmgoumensapedido8: TStringField;
    cfgcfgmgoumensasaida8: TStringField;
    cfgcfgmgoumensaretorno8: TStringField;
    cfgcfgmgoumensapedido9: TStringField;
    cfgcfgmgoumensasaida9: TStringField;
    cfgcfgmgoumensaretorno9: TStringField;
    cfgcfgmgoustatuswhats: TDateTimeField;
    orc: TUniQuery;
    consulta: TUniQuery;
    pnTopo: TPanel;
    pnRelagio: TPanel;
    Button1: TButton;
    Button13: TButton;
    bTestar: TButton;
    Button17: TButton;
    Memo2: TMemo;
    Memo1: TMemo;
    IdLogEvent1: TIdLogEvent;
    IdAntiFreeze1: TIdAntiFreeze;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
  private
    function conectabanco: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FprinciMizioWhats: TFprinciMizioWhats;

procedure CreateGlobalCEFApp;


implementation

{$R *.dfm}


procedure CreateGlobalCEFApp;
begin
  GlobalCEFApp := TCefApplication.Create;
  GlobalCEFApp.WindowlessRenderingEnabled := True;
  GlobalCEFApp.EnableHighDPISupport := True;
  GlobalCEFApp.OnWebKitInitialized := GlobalCEFApp_OnWebKitInitialized;
  // Use Hardware Acceleration when available
  // GlobalCEFApp.EnableGPU                  := False;
end;

procedure TrimAppMemorySize;
var
  MainHandle: thandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;


function TFprinciMizioWhats.conectabanco: Boolean;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
Begin
  result := False;
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vusuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    vportabanco := ReadString('posi', 'portabanco', '3306');

  End;
  arquini.Free;

  Conexao.Connected := False;
  Conexao.Database := vnomebanco;
  Conexao.Username := vusuario;
  Conexao.Password := vsenha;
  Conexao.Port := StrToInt(vportabanco);
  Conexao.Server := vservidor;
  Conexao.Connected := True;

  if not Conexao.Connected then
  begin
    ShowMessage('Falha de conex�o com o Banco de Dados. Verifique as configura��es do gourmeterp.ini');
    Application.Terminate;
  end
  else
  begin
    result := True;
  end;

End;



end.
