unit ufunirmesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,Uni,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, ufuncoes,
  Data.DB,    Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, DBAccess, MemDS;

type
  Tfunirmesa = class(TForm)
    Panel8: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    litoori: tuniquery;
    litooriprocodigo: TIntegerField;
    litooripronome: TStringField;
    litooriitoquantidade: TFloatField;
    litooriitochave: TIntegerField;
    litooriunisimbolo: TStringField;
    litooriorcchave: TIntegerField;
    plmesaori: TPanel;
    Label1: TLabel;
    origem: TEdit;
    plmesades: TPanel;
    Label2: TLabel;
    destino: TEdit;
    listaorigem: TDBGrid;
    litodes: tuniquery;
    listadestino: TDBGrid;
    btenviatodos: TSpeedButton;
    btenviaitem: TSpeedButton;
    btvoltatodos: TSpeedButton;
    btvoltaitem: TSpeedButton;
    ori: TClientDataSet;
    des: TClientDataSet;
    Ddes: tunidatasource;
    Dori: tunidatasource;
    oriprocodigo: TIntegerField;
    oripronome: TStringField;
    oriitoquantidade: TFloatField;
    oriitochave: TIntegerField;
    oriunisimbolo: TStringField;
    oriorcchave: TIntegerField;
    desitochave: TIntegerField;
    desorcchave: TIntegerField;
    desprocodigo: TIntegerField;
    despronome: TStringField;
    desitoquantidade: TFloatField;
    desunisimbolo: TStringField;
    litodesitochave: TIntegerField;
    litodesorcchave: TIntegerField;
    litodesprocodigo: TIntegerField;
    litodespronome: TStringField;
    litodesitoquantidade: TFloatField;
    litodesunisimbolo: TStringField;
    consulta: tuniquery;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure destinoExit(Sender: TObject);
    procedure btenviatodosClick(Sender: TObject);
    procedure btvoltatodosClick(Sender: TObject);
    procedure btvoltaitemClick(Sender: TObject);
    procedure btenviaitemClick(Sender: TObject);
    procedure listaorigemDblClick(Sender: TObject);
    procedure listadestinoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VOrcOriChave: string;
    VOrcDesChave: string;
  end;

var
  funirmesa: Tfunirmesa;

implementation

{$R *.dfm}

uses ufprincirest;

procedure Tfunirmesa.bcancelaClick(Sender: TObject);
begin

  // fprincirest.Conexao.Rollback;

  close;

end;

procedure Tfunirmesa.bconfirmaClick(Sender: TObject);
begin


  des.First;
  while not des.Eof do
  begin
  consulta.Close;
  consulta.SQL.Text:='update ito set orcchave='+VOrcDesChave+ ' where itochave='+self.desitochave.AsString;
  consulta.ExecSQL;

  des.Next;
  end;




    litoori.close;
    litoori.Params[0].AsString := VOrcOriChave;
    litoori.Open;



  if litoori.IsEmpty then
  begin
    fprincirest.Consulta.close;
    fprincirest.Consulta.SQL.text := 'delete from orc where orcchave=' + VOrcOriChave;
    fprincirest.Consulta.ExecSQL;
  end;

    litodes.close;
    litodes.Params[0].AsString := VOrcDesChave;
    litodes.Open;


  if litodes.IsEmpty then
  begin
    fprincirest.Consulta.close;
    fprincirest.Consulta.SQL.text := 'delete from orc where orcchave=' + VOrcDesChave;
    fprincirest.Consulta.ExecSQL;
  end;



  close;

end;

procedure Tfunirmesa.btenviaitemClick(Sender: TObject);
var
  i: integer;
begin

  if ori.Active then
  begin
    if not ori.IsEmpty then
    begin
      des.Append;
      for i := 0 to ori.FieldCount - 1 do
      begin
        des.FieldByName(litodes.Fields[i].FieldName).AsString := ori.FieldByName(litodes.Fields[i].FieldName).AsString;
      end;
      des.Post;

      ori.Delete;

    end;
  end;

end;

procedure Tfunirmesa.btenviatodosClick(Sender: TObject);
var
  i: integer;
begin
  if ori.Active then
  begin
    ori.First;

    while not ori.Eof do
    begin

      des.Append;
      for i := 0 to ori.FieldCount - 1 do
      begin
        des.FieldByName(litodes.Fields[i].FieldName).AsString := ori.FieldByName(litodes.Fields[i].FieldName).AsString;
      end;
      des.Post;

      ori.Delete;

    end;

  end;
end;

procedure Tfunirmesa.btvoltaitemClick(Sender: TObject);
var
  i: integer;
begin

  if des.Active then
  begin
    if not des.IsEmpty then
    begin
      ori.Append;
      for i := 0 to des.FieldCount - 1 do
      begin
        ori.FieldByName(litodes.Fields[i].FieldName).AsString := des.FieldByName(litodes.Fields[i].FieldName).AsString;
      end;
      ori.Post;

      des.Delete;

    end;
  end;

end;

procedure Tfunirmesa.btvoltatodosClick(Sender: TObject);
var
  i: integer;
begin
  des.First;
  while not des.Eof do
  begin

    ori.Append;
    for i := 0 to des.FieldCount - 1 do
    begin
      ori.FieldByName(litodes.Fields[i].FieldName).AsString := des.FieldByName(litodes.Fields[i].FieldName).AsString;
    end;
    ori.Post;

    des.Delete;

  end;

end;

procedure Tfunirmesa.destinoExit(Sender: TObject);
var

  vMsaOrigem: string;
  vMsaDestino: string;
  í: integer;
  i: integer;

begin
  vMsaOrigem := 'M E S A ' + formatfloat('00', strtoint(origem.text));
  vMsaDestino := 'M E S A ' + formatfloat('00', strtoint(destino.text));

  VOrcOriChave := '';
  fprincirest.vpIDMesa := trim(vMsaOrigem);
  VOrcOriChave := fprincirest.BuscaAtendimentos(mocMesa);

  VOrcDesChave := '';
  fprincirest.vpIDMesa := trim(vMsaDestino);
  VOrcDesChave := fprincirest.BuscaAtendimentos(mocMesa);

  if (VOrcDesChave = '') then
  begin
    fprincirest.plmesaselecionada.Caption := vMsaDestino;
    fprincirest.Novoorcamento;
    VOrcDesChave := fprincirest.BuscaAtendimentos(mocMesa);
  end;

  if (VOrcOriChave <> '') and (VOrcDesChave <> '') then
  begin

    litoori.Connection := fprincirest.Conexao;
    litodes.Connection := fprincirest.Conexao;

    litoori.close;
    litoori.Params[0].AsString := VOrcOriChave;
    litoori.Open;

    ori.CreateDataSet;
    ori.Open;
    litoori.First;
    while not litoori.Eof do
    begin
      ori.Append;
      for i := 0 to litoori.FieldCount - 1 do
      begin
        ori.FieldByName(litoori.Fields[i].FieldName).AsString := litoori.FieldByName(litoori.Fields[i].FieldName).AsString;
      end;
      ori.Post;
      litoori.Next;
    end;

    litodes.close;
    litodes.Params[0].AsString := VOrcDesChave;
    litodes.Open;

    des.CreateDataSet;
    des.Open;
    while not litodes.Eof do
    begin
      des.Append;
      for i := 0 to litodes.FieldCount - 1 do
      begin
        des.FieldByName(litodes.Fields[i].FieldName).AsString := litodes.FieldByName(litodes.Fields[i].FieldName).AsString;
      end;
      des.Post;
      litodes.Next;
    end;

  end;

end;

procedure Tfunirmesa.FormKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tfunirmesa.listadestinoDblClick(Sender: TObject);
begin
  if not litodes.IsEmpty then
    btvoltaitem.Click;

end;

procedure Tfunirmesa.listaorigemDblClick(Sender: TObject);
begin
  if not litoori.IsEmpty then
    btenviaitem.Click;
end;

end.
