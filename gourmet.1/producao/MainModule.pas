unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, DASQLMonitor, UniSQLMonitor, inifiles, MemDS;

type
  TUniMainModule = class(TUniGUIMainModule)
    UniSQLMonitor1: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    Consulta: TUniQuery;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoutaxaatendimento: TFloatField;
    cfgcfgmgouqtdmesas: TIntegerField;
    cfgcfgmgounomelocal: TStringField;
    imm: TUniQuery;
    immimmchave: TIntegerField;
    immhorapedido: TStringField;
    immpronome: TStringField;
    immclbidentificacao: TStringField;
    immpdgnumero: TStringField;
    immtempo: TStringField;
    immoricodigo: TIntegerField;
    immmitidentificacao: TStringField;
    immcznchave: TIntegerField;
    immmarca: TStringField;
    immimmrecebido: TIntegerField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    clbclbmarca: TStringField;
    imp: TUniQuery;
    impimpchave: TIntegerField;
    impclbcodigo: TIntegerField;
    impitmchave: TIntegerField;
    impitochave: TIntegerField;
    impimpinicio: TDateTimeField;
    impimpfinal: TDateTimeField;
    immitochave: TIntegerField;
    immpdscodigo: TIntegerField;
    immimmdestino: TStringField;
    cfgcfgmgoutempoatuentrega1: TIntegerField;
    cfgcfgmgoutempoatuentrega2: TIntegerField;
    cfgcfgmgoutempoatuproducao: TIntegerField;
    cfgcfgmgouatualizaproducao: TIntegerField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
        vpConfigIni: TIniFile;
  public
    { Public declarations }

  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, Mainm;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  vIpServer, vDbServer: String;
  vlCaminho: string;
begin
  // Carregando informações de configuração do servidor de banco de dados
  vlCaminho := ExtractFilePath(ParamSTR(0)) + 'gourmeterp.ini';
  if FileExists(ExtractFilePath(ParamSTR(0)) + 'gourmeterp.ini') then
  begin
    vpConfigIni := TIniFile.Create(ExtractFilePath(ParamSTR(0)) + 'gourmeterp.ini');
    vIpServer := vpConfigIni.ReadString('posi','servidor', 'Não foi informado o IP SERVIDOR  em "servidor"' + #13 + 'Verifique arquivo de configuração em :' +
      ExtractFilePath(ParamSTR(0)) + 'gourmeterp.ini');
    vDbServer := vpConfigIni.ReadString('posi', 'nomebanco', 'Não foi informado o NOME DO BANCO DE DADOS em "nomebanco"' + #13 + 'Verifique arquivo de configuração em :' +
      ExtractFilePath(ParamSTR(0)) + 'gourmeterp.ini');

    try
      Conexao.Close;
      Conexao.Server := vIpServer;
      Conexao.Database := vDbServer;
      Conexao.Open;

      UniMainModule.cfg.Close;
      UniMainModule.cfg.Connection := UniMainModule.Conexao;
      UniMainModule.cfg.Open;






      UniMainModule.imm.close;
      UniMainModule.imm.ParamByName('tcicodigo').AsString:=MainmForm.vpMitCodigo;
      UniMainModule.imm.Open;

      UniMainModule.clb.close;
      UniMainModule.clb.Open;


    except
      on E: Exception do
      begin
      end;
    end;
  end
  else
  begin
    Exit;
  end;


end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
