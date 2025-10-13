unit SM;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, inifiles, Data.DB, MemDS, DBAccess, Uni,
  DASQLMonitor, UniSQLMonitor, UniProvider, MySQLUniProvider, Forms,
  Vcl.Graphics;

type
{$METHODINFO ON}
  TServerMethodsmizio = class(TDataModule)
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    UniSQLMonitor: TUniSQLMonitor;
    consulta: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    function ConectaBanco: boolean;
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, fPrinciServmizio;

procedure TServerMethodsmizio.DataModuleCreate(Sender: TObject);
begin
  if ConectaBanco then
  begin
    PrinciServmizio.plConexaoBanco.Caption := 'MYSQL ATIVO';
    PrinciServmizio.plConexaoBanco.Color := CLGREEN;
  end
  else
  begin
    PrinciServmizio.plConexaoBanco.Caption := 'Falha de MYSQL';
    PrinciServmizio.plConexaoBanco.Color := CLRED;
  end;
end;

function TServerMethodsmizio.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethodsmizio.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethodsmizio.ConectaBanco: boolean;
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
  Result := False;
  try
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
      UniSQLMonitor.Active := True
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

    Conexao.Connected := True;
    Result := True;
  except
    Result := False;
  end;

End;

end.
