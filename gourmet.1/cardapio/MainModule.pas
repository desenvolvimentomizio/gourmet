unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, inifiles, UniProvider, MySQLUniProvider,
  Data.DB, DBAccess, Uni, dialogs, MemDS;

type
  TUniMainModule = class(TUniGUIMainModule)
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoutaxaatendimento: TFloatField;
    cfgcfgmgouqtdmesas: TIntegerField;
    cfgcfgmgounomelocal: TStringField;
    cde: TUniQuery;
    cdecdecodigo: TIntegerField;
    cdecdeidentificacao: TStringField;
    cdesipcodigo: TIntegerField;
    ide: TUniQuery;
    dscde: TUniDataSource;
    ideidechave: TIntegerField;
    idecdecodigo: TIntegerField;
    idesbrcodigo: TIntegerField;
    idesipcodigo: TIntegerField;
    pro: TUniQuery;
    prosbridentificacao: TStringField;
    propronome: TStringField;
    dside: TUniDataSource;
    proidechave: TIntegerField;
    idesbridentificacao: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public

    { Public declarations }
    vpConfigIni: TIniFile;
     vpQtdeMesas :Integer;
      vpTituloOperador :string;

  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

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
  vlCaminho := ExtractFilePath(ParamSTR(0)) + 'mobile.ini';
  if FileExists(ExtractFilePath(ParamSTR(0)) + 'mobile.ini') then
  begin
    vpConfigIni := TIniFile.Create(ExtractFilePath(ParamSTR(0)) + 'mobile.ini');
    vIpServer := vpConfigIni.ReadString('dados', 'server', 'Não foi informado o IP SERVIDOR  em "server"' + #13 + 'Verifique arquivo de configuração em :' +
      ExtractFilePath(ParamSTR(0)) + 'mobile.Ini');
    vDbServer := vpConfigIni.ReadString('dados', 'database', 'Não foi informado o NOME DO BANCO DE DADOS em "database"' + #13 + 'Verifique arquivo de configuração em :' +
      ExtractFilePath(ParamSTR(0)) + 'mobile.Ini');

    try
      Conexao.Close;
      Conexao.Server := vIpServer;
      Conexao.Database := vDbServer;
      Conexao.Open;

      UniMainModule.cfg.Close;
      UniMainModule.cfg.Connection := UniMainModule.Conexao;
      UniMainModule.cfg.Open;

      vpQtdeMesas := MainModule.UniMainModule.cfgcfgmgouqtdmesas.AsInteger;
      vpTituloOperador := MainModule.UniMainModule.cfgcfgmgounomelocal.asstring;

    except
      on E: Exception do
      begin
        ShowMessage('Erro - Ao abrir Conexão verifique as configurações no arquivo mobile.Ini' + #13 + 'Verifica arquivo de configuração em : ' + ExtractFilePath(ParamSTR(0)) + #13
          + '[' + E.ClassName + ']' + #13 + ' - mens - ' + E.Message + ']');
      end;
    end;
  end
  else
  begin
    ShowMessage('Não foi possível abrir Conexão verifique as configurações no arquivo mobile.Ini' + #13 + 'em : ' + ExtractFilePath(ParamSTR(0)));
    Exit;
  end;


end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
