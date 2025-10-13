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
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dialogs;

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
    consulta.SQL.Text := 'update orc set orcliberadoentrega=now() where orcliberadoentrega is null and orcchave=' + vlOrcchave;
    consulta.ExecSQL;
  end;

  Result := 'Atualizado com sucesso';
end;

function TServerMethods1.RegistraRetornoEntrega(Value: string): string;
var
  vlOrcchave: string;
  vlPdscodigo: string;
begin
  ConectaBanco;

  vlOrcchave := Value;

  if vlOrcchave <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT DISTINCT orc.orcchave,  orc.pdscodigo ';
    consulta.SQL.Add('FROM orc, ');
    consulta.SQL.Add('     clb,' + ' ');
    consulta.SQL.Add('     clb c,' + ' ');
    consulta.SQL.Add('     ito,' + ' ');
    consulta.SQL.Add('     imm,' + ' ');
    consulta.SQL.Add('     czn' + ' ');
    consulta.SQL.Add('WHERE ' + ' ');

    consulta.SQL.Add(' orc.orcchave = ito.orcchave' + ' ');
    consulta.SQL.Add('AND ito.itochave = imm.itochave' + ' ');
    consulta.SQL.Add('AND imm.clbcodigoent = c.clbcodigo' + ' ');
    consulta.SQL.Add('AND imm.clbcodigoent <> 0' + ' ');
    consulta.SQL.Add('AND imm.cznchave = czn.cznchave' + ' ');
    consulta.SQL.Add('AND czn.cznfechamento IS NULL' + ' ');
    consulta.SQL.Add('AND orc.orcchave=' + vlOrcchave + ' ');
    consulta.Open;


    if not consulta.IsEmpty then
    begin
      vlPdscodigo := consulta.FieldByName('pdscodigo').AsString;

      if (consulta.FieldByName('pdscodigo').AsInteger = 4) or (consulta.FieldByName('pdscodigo').AsInteger = 3) or (consulta.FieldByName('pdscodigo').AsInteger = 2) then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update orc set orcretorno=now(),pdscodigo=5 where orcchave=' + vlOrcchave;
        consulta.ExecSQL;

        Result := 'Retornado com sucesso';
      end
      else
      begin
        Result := 'Codigo: ' + vlPdscodigo + '  F A L H A: Não esta para entrega!';

      end;
    end
    else
    begin
      Result := 'Orchamento: ' + vlOrcchave + '  F A L H A: Não localizado!';
    end;

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
