unit ufipc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni, Data.DB, MemDS, DBAccess, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfipc = class(TForm)
    consulta: TUniQuery;
    consultaremota: TUniQuery;
    registros: TProgressBar;
    Tabelas: TProgressBar;
    lTabelas: TLabel;
    lRegistros: TLabel;
    inicializar: TTimer;
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fzcone: TUniConnection;
    Function ConectaBancoRemoto: boolean;
    procedure ProcessarImportacao;
    procedure ImportarTabela(vTabela: string);
    { Private declarations }
  public
    { Public declarations }
    ConexaoWeb: TUniConnection;
  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  end;

var
  fipc: Tfipc;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vFiltro: string): string;
var
  vch: string;
begin
  try
    fipc := Tfipc.Create(AOwner);
    fipc.zcone := conexao;
    fipc.ShowModal;
    Result := vch;
  finally
    FreeAndNil(fipc);
  end;
end;

exports formu;

Function Tfipc.ConectaBancoRemoto: boolean;

begin

  ConexaoWeb := TUniConnection.Create(self);
  ConexaoWeb.LoginPrompt := false;
  ConexaoWeb.Username := 'mizios_gourmet';
  ConexaoWeb.Database := 'mizios_gourmet';
  ConexaoWeb.Server := '189.113.123.127';
  ConexaoWeb.ProviderName := 'mySQL';
  ConexaoWeb.Port := 2007;
  ConexaoWeb.Password := 'mizio973';

  try
    ConexaoWeb.Connect;
    Result := true;
  except
    Result := false;
  end;

end;

procedure Tfipc.FormShow(Sender: TObject);
begin
  inicializar.Enabled := true;
end;

procedure Tfipc.ImportarTabela(vTabela: string);
var
  i: integer;
begin

  consulta.Close;
  consulta.Connection := zcone;
  consulta.SQL.Text := 'select * from ' + vTabela;
  consulta.Open;

  consultaremota.Close;
  consultaremota.Connection := ConexaoWeb;
  consultaremota.SQL.Text := 'select * from ' + vTabela;
  consultaremota.Open;

  registros.Max := consultaremota.RecordCount;
  registros.Position := 0;
  application.ProcessMessages;

  consultaremota.First;

  while not consultaremota.Eof do
  begin
    registros.Position := registros.Position + 1;
    application.ProcessMessages;

    if consulta.Locate(consulta.Fields[0].FieldName, consultaremota.Fields[0].AsString, []) then
      consulta.Edit
    else
      consulta.Append;

    for i := 0 to consultaremota.Fields.Count - 1 do
    begin
      consulta.FieldByName(consultaremota.Fields[i].FieldName).AsString := consultaremota.FieldByName(consultaremota.Fields[i].FieldName).AsString;
    end;
    consulta.Post;

    consultaremota.Next;
  end;

end;

procedure Tfipc.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := false;
  if ConectaBancoRemoto then
  begin
    ProcessarImportacao;
    showmessage('Geração realizada com sucesso!');
  end
  else
  begin
    showmessage('Não foi possivel conctar ao banco de dados Base!');

  end;
  Close;
end;

procedure Tfipc.ProcessarImportacao;
begin

  Tabelas.Max := 6;
  Tabelas.Position := 0;

  lTabelas.Caption := ' 1 / 6 - Históricos';
  Tabelas.Position := 1;
  application.ProcessMessages;
  ImportarTabela('phg');

  lTabelas.Caption := ' 2 / 6 - Naturezas';
  Tabelas.Position := 2;
  application.ProcessMessages;
  ImportarTabela('ced');

  lTabelas.Caption := ' 3 / 6 - Tipos de Contas';
  Tabelas.Position := 3;
  application.ProcessMessages;
  ImportarTabela('sea');

  lTabelas.Caption := ' 4 / 6 - Grupos de Contas';
  Tabelas.Position := 4;
  application.ProcessMessages;
  ImportarTabela('cgg');

  lTabelas.Caption := ' 5 / 6 - Configurações de Contas';
  Tabelas.Position := 5;
  application.ProcessMessages;
  ImportarTabela('cfp');

  lTabelas.Caption := ' 6 / 6 - Plano de Contas - Base';
  Tabelas.Position := 6;
  application.ProcessMessages;
  ImportarTabela('pcg');

end;

end.
