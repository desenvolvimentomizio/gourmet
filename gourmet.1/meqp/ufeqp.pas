unit ufeqp;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList;

type
  Tfeqp = class(Tfrmbase)
    registroeqpcodigo: TIntegerField;
    registromeqcodigo: TIntegerField;
    registroeqpnumserie: TStringField;
    registroeqpidentificacao: TStringField;
    registroeqpmodelo: TStringField;
    meq: TUniQuery;
    meqmeqcodigo: TIntegerField;
    meqmeqidentificacao: TStringField;
    registromeqidentificacao: TStringField;
    Label1: TLabel;
    eqpcodigo: TDBEdit;
    Label2: TLabel;
    meqcodigo: TDBEdit;
    Label3: TLabel;
    eqpnumserie: TDBEdit;
    Label4: TLabel;
    eqpidentificacao: TDBEdit;
    Label5: TLabel;
    eqpmodelo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure meqcodigoExit(Sender: TObject);
    procedure eqpnumserieExit(Sender: TObject);
  private
    function ValidaEquipamento: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  feqp: Tfeqp;

implementation

{$R *.dfm}

// Início ID do Módulo fraeqp
const
  vPlIdMd = '01.03.80.005-01';

  // Fim ID do Módulo fraeqp

procedure Tfeqp.eqpnumserieExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if eqpnumserie.Field.AsString = '' then
    Exit;

  if not ValidaEquipamento then
  begin
    eqpnumserie.SetFocus;
    Exit;
  end;
end;

procedure Tfeqp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tfeqp.meqcodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if meqcodigo.Field.AsString = '' then
    Exit;

  if not ValidaEquipamento then
  begin
    meqcodigo.SetFocus;
    Exit;
  end;
end;

function Tfeqp.ValidaEquipamento: Boolean;
begin
  Result := False;

  consulta.Close;
  consulta.SQL.Text := 'SELECT e.eqpcodigo, m.meqidentificacao, e.eqpnumserie FROM eqp e ';
  consulta.SQL.Add('JOIN meq m ON e.meqcodigo = m.meqcodigo ');
  consulta.SQL.Add('WHERE e.meqcodigo = :meqcodigo ');
  consulta.SQL.Add('AND e.eqpnumserie = :eqpnumserie ');

  if Situacao = 'Alterando' then
  begin
    consulta.SQL.Add('AND e.eqpcodigo <> :eqpcodigo');
    consulta.Params[2].AsInteger := eqpcodigo.Field.AsInteger;
  end;

  consulta.Params[0].AsInteger := meqcodigo.Field.AsInteger;
  consulta.Params[1].AsString := eqpnumserie.Field.AsString;
  consulta.Open;

  if consulta.IsEmpty then
    Result := True
  else
    Application.MessageBox(PChar('Essa Marca de Equipamento já está cadastrado.' + #13 + #13 + 'Verifique o código ' + consulta.Fields[0].AsString + ' - ' +
      consulta.Fields[1].AsString + ' - ' + consulta.Fields[2].AsString + '.'), '', MB_ICONWARNING + MB_OK);
end;

end.
