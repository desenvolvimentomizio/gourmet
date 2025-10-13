unit ufitmcsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfitmcsm = class(Tfrmbase)
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroitmitem: TIntegerField;
    registrotoecodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registrocfocfop: TStringField;
    registrocstcodigo: TStringField;
    registropuncodigo: TIntegerField;
    registropunidentificacao: TStringField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmtotal: TFloatField;
    registroitmdesconto: TFloatField;
    registroitmfrete: TFloatField;
    registroitmseguro: TFloatField;
    registroitmoutras: TFloatField;
    registroitmtotalgeral: TFloatField;
    registroitmbicm: TFloatField;
    registroicmcodigo: TStringField;
    registroitmicm: TFloatField;
    registroitmbicms: TFloatField;
    registroitmaliqicms: TFloatField;
    registroitmicms: TFloatField;
    registroitmaliqipi: TFloatField;
    registroitmipi: TFloatField;
    registroitmapuipi: TStringField;
    registrocsicodigo: TStringField;
    registrouninome: TStringField;
    registrounicodigo: TIntegerField;
    registroitmmovifisico: TStringField;
    registroitmaliqicm: TStringField;
    registroitmdesccomple: TStringField;
    registroceicodigo: TStringField;
    registroitmbipi: TFloatField;
    registrocspcodigo: TStringField;
    registroitmpis: TFloatField;
    registroitmbpis: TFloatField;
    registroitmaliqpis: TFloatField;
    registroitmquantpis: TFloatField;
    registroitmaliqpisvalor: TFloatField;
    registrocsfcodigo: TStringField;
    registroitmbcofins: TFloatField;
    registroitmaliqcofins: TFloatField;
    registroitmquantcofins: TFloatField;
    registroitmaliqcofinsvalor: TFloatField;
    registroitmcofins: TFloatField;
    registropcccodigo: TStringField;
    registrounicodigobase: TIntegerField;
    registrocfocfopdestinacao: TStringField;
    registroitmcontendo: TFloatField;
    itmitem: TDBEdit;
    Label15: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    puncodigo: TDBEdit;
    Label1: TLabel;
    itmquantidade: TDBEdit;
    Label5: TLabel;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    proprosaldo: TFloatField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    toettocodigo: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcontrolaestoque: TIntegerField;
    cfgcfgcontrolaestoquedisp: TIntegerField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    puntuncodigo: TIntegerField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpunmultiplicador: TFloatField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    meschave: TDBEdit;
    toecstcodigo: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fitmcsm: Tfitmcsm;

implementation

{$R *.dfm}

procedure Tfitmcsm.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text:='select puncusto, unicodigo from pun where puncodigo='+puncodigo.Field.AsString;
  consulta.Open;
  self.registroitmvalor.AsCurrency:=consulta.FieldByName('puncusto').AsCurrency;
  self.registroitmtotal.AsCurrency:=consulta.FieldByName('puncusto').AsCurrency*self.itmquantidade.Field.AsFloat;
  self.registrounicodigo.AsInteger:=consulta.FieldByName('unicodigo').AsInteger;
  self.registrounicodigobase.AsInteger:=consulta.FieldByName('unicodigo').AsInteger;

  inherited;

end;

procedure Tfitmcsm.FormShow(Sender: TObject);
begin
  toe.Open;
  Uni.Open;

  inherited;

end;

procedure Tfitmcsm.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select toecodigo from mes where meschave=' + Self.vChaveMestre;
  consulta.Open;
  Self.registrotoecodigo.AsString := Self.consulta.Fields[0].AsString;

  toe.Locate('toecodigo', registrotoecodigo.AsInteger, []);
  registrocfocfop.AsString := toetoecfopsaida.AsString;
  registrocfocfopdestinacao.AsString := toetoecfopsaida.AsString;

  consulta.Close;
  consulta.SQL.Text := 'select count(itmchave) from itm where meschave=' + Self.vChaveMestre;
  consulta.Open;

  registroitmitem.AsInteger := Self.consulta.Fields[0].AsInteger + 1;

  registroitmmovifisico.AsInteger := 1;
  registroitmaliqicms.AsFloat := 0;
  registroitmicms.AsFloat := 0;
  registroitmaliqipi.AsFloat := 0;
  registroitmipi.AsFloat := 0;
  registroitmdesconto.AsFloat := 0;
  Self.registroitmbicm.AsFloat := 0;
  Self.registroitmbicms.AsFloat := 0;

  cfg.Close;
  cfg.Connection := Self.zcone;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  registrocstcodigo.AsString := toecstcodigo.AsString;
  registrocsfcodigo.AsString := '99';
  registrocspcodigo.AsString := '99';
  registrocsicodigo.AsString := '99';
  registropcccodigo.AsString := '1.01.03.01.01';

  registroicmcodigo.AsString := '01';
  registroitmbicm.AsFloat := 0;
  registroitmicm.AsFloat := 0;
  registroitmbicms.AsFloat := 0;
  registroitmaliqicms.AsFloat := 0;
  registroitmicms.AsFloat := 0;
  registroitmaliqipi.AsFloat := 0;
  registroitmipi.AsFloat := 0;
  registroitmfrete.AsFloat := 0;
  registroitmseguro.AsFloat := 0;
  registroitmoutras.AsFloat := 0;
  registroitmcontendo.AsFloat := 1;
  registromeschave.AsString:=  Self.vChaveMestre;

end;

end.
