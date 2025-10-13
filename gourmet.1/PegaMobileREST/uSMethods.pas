unit uSMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, uni, inifiles, UniProvider,
  MySQLUniProvider, Data.DB, DBAccess, DASQLMonitor, UniSQLMonitor, MemDS,
  Data.DBXPlatform, Data.FireDACJSONReflect, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    UniSQLMonitor: TUniSQLMonitor;
    consulta: TUniQuery;
    FDStanStorageJSONLink: TFDStanStorageJSONLink;
    FDStanStorageBinLink: TFDStanStorageBinLink;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    imm: TFDQuery;
    immimmchave: TIntegerField;
    immhorapedido: TStringField;
    immpronome: TStringField;
    immclbidentificacao: TStringField;
    immpdgnumero: TStringField;
    immmarca: TLargeintField;
    immtempo: TStringField;
    immoricodigo: TIntegerField;
    immmitidentificacao: TStringField;
    immcznchave: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    function ConectaBanco: Boolean;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function RegistraRetornoEntrega(Value: string): string;
    function RegistraLiberadoEntrega(Value: string): string;
    function Pedidos: TFDJSONDataSets;

  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, forms, uFrmPrincipal;

procedure TServerMethods1.DataModuleCreate(Sender: TObject);
begin
  ConectaBanco;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.RegistraLiberadoEntrega(Value: string): string;
var
  vlOrcchave: string;
begin
  ConectaBanco;

  vlOrcchave := Value;

  if vlOrcchave <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select count(orcchave) from orc where orcchave=' + vlOrcchave;
    consulta.Open;

    if consulta.Active then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select count(orcchave) from orc where  orcliberadoentrega is null and orcchave=' + vlOrcchave;
      consulta.Open;

      if consulta.RecordCount = 1 then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update orc set orcliberadoentrega=now() where orcliberadoentrega is null and orcchave=' + vlOrcchave;
        consulta.ExecSQL;

        Result := 'Saída registrado com sucesso';
      end
      else
      begin

        consulta.Close;
        consulta.SQL.Text := 'select count(orcchave) from orc where  orcliberadoentrega<>null and orcchave=' + vlOrcchave;
        consulta.Open;

        if consulta.RecordCount = 1 then
        begin

          Result := 'Saída já registrado';

        end;
      end;
    end
    else
    begin
      Result := 'ERRO do QRCode';
    end;

  end;

end;

function TServerMethods1.RegistraRetornoEntrega(Value: string): string;
var
  vlOrcchave: string;
begin
  ConectaBanco;

  vlOrcchave := Value;

  if vlOrcchave <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select count(orcchave) from orc where orcchave=' + vlOrcchave;
    consulta.Open;

    if consulta.Active then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select orcchave from orc where  orcliberadoentrega is null and orcchave=' + vlOrcchave;
      consulta.Open;

      if consulta.FieldByName('orcchave').AsInteger <> 0 then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update orc set orcretorno=now(),pdscodigo=5 where orcretorno is null  and orcchave=' + vlOrcchave;
        consulta.ExecSQL;

        Result := 'Retorno registrado com sucesso.';
      end
      else if consulta.FieldByName('orcchave').AsInteger = 0 then
      begin
        consulta.Close;
        Result := 'Pedido não localizado.';
      end
      else
      begin
        consulta.Close;
        consulta.SQL.Text := 'select count(orcchave) from orc where  orcretorno<>null and orcchave=' + vlOrcchave;
        consulta.Open;

        if consulta.RecordCount = 1 then
        begin

          Result := 'Retorno já registrado.';

        end;
      end;

    end;

  end
  else
  begin
    Result := 'ERRO do QRCode.';
  end;

end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  ConectaBanco;
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.ConectaBanco: Boolean;
Var
  arquini: TIniFile;
  vlNomeBanco: String;
  vlPortaBanco: String;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
  vlTipoBanco: String;

Begin
  // try
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vlUsuario := ReadString('posi', 'usuario', 'root');
    vlSenha := ReadString('posi', 'senha', 'xda973');
    vlPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

  End;
  arquini.Free;

  (* Configuração para DBMonitor *)
  if vlMonitor = '1' then
    UniSQLMonitor.Active := true
  else
    UniSQLMonitor.Active := False;

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';

  Conexao.Connected := False;
  Conexao.Database := vlNomeBanco;
  Conexao.Username := vlUsuario;
  Conexao.Password := vlSenha;
  Conexao.Port := StrToInt(vlPortaBanco);
  Conexao.Server := vlServidor;

  Conexao.Connected := true;

  (* Chama execução dos Scripts e CSVs *)
  // OtimizaBancoDeDados;

  FDConnection1.Params.Values['DriverID'] := 'MYSQL';
  FDConnection1.Params.Values['Database'] := vlNomeBanco;
  FDConnection1.Params.Values['UserName'] := vlUsuario;
  FDConnection1.Params.Values['Password'] := vlSenha;
  FDConnection1.Params.Values['Server'] := vlServidor;

  FDConnection1.Connected := true;




  // except
  // end;

End;

function TServerMethods1.Pedidos: TFDJSONDataSets;
begin
  ConectaBanco;
  imm.Open;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, imm);
end;

end.
