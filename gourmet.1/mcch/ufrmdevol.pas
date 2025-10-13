unit ufrmdevol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.Actions, Vcl.ActnList, MemDS,
  DBAccess, Uni;

type
  Tfrmdevol = class(Tfrmbase)
    cco: tuniquery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoctaidentificacao: TStringField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccoccofavorecido: TStringField;
    mdc: tuniquery;
    mdcmdccodigo: TIntegerField;
    mdcmdcidentificacao: TStringField;
    che: tuniquery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    checheconta: TStringField;
    checheagencia: TStringField;
    chebcocodigo: TStringField;
    chechenome: TStringField;
    chechedocumento: TStringField;
    chechetelefone: TStringField;
    chechevalor: TFloatField;
    Dche: tunidatasource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    chechave: TDBEdit;
    Label2: TLabel;
    cheemissao: TDBEdit;
    Label3: TLabel;
    chevencimento: TDBEdit;
    Label4: TLabel;
    chenumero: TDBEdit;
    Label5: TLabel;
    checonta: TDBEdit;
    Label6: TLabel;
    cheagencia: TDBEdit;
    Label7: TLabel;
    bcocodigo: TDBEdit;
    Label8: TLabel;
    chenome: TDBEdit;
    Label9: TLabel;
    chedocumento: TDBEdit;
    Label10: TLabel;
    chetelefone: TDBEdit;
    chevalor: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    mdccodigo: TDBEdit;
    registroltcchave: TIntegerField;
    registrochechave: TIntegerField;
    registromdccodigo: TIntegerField;
    registromdcidentificacao: TStringField;
    registrodtlchave: TIntegerField;
    registroschcodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdevol: Tfrmdevol;

  // Início ID do Módulo fracch
const
  vPlIdMd = '02.02.14.002-02';

  // Fim ID do Módulo fracch



implementation

{$R *.dfm}

procedure Tfrmdevol.bconfirmaClick(Sender: TObject);
var
  vccoctadestino: integer;
  vccochaveatu: integer;
  vExtctacodigo: integer;
  vExtccoemissao: TDate;
  vExtccovencimento: TDate;
  vExttoccodigo: integer;
  vExtcedcodigo: integer;
  vExtclbcodigo: integer;
  vExttficodigo: integer;
  vExtmoecodigo: integer;
  vExtcconumero: String;
  vExtccohistorico: String;
  vExtccovalor: Double;
  vExtccochaveorig: integer;
  vExtccochavedest: integer;
  vExtccoconciliado: String;
  vExtccoextenso: String;
  vExtetdcodigo: integer;
  vExtccodatamov: TDate;
  vExtccodatavregistro: TDate;
  vExtccohoravregistro: TTime;
  vExtccofavorecido: String;
  vchave: string;
  vretorno: string;

  vtctorigem: integer;
  vtctdestino: integer;
  vltechave: integer;

begin
  { inherited; }

  if registro.State <> dsedit then
    registro.Edit;

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := '<Diversos>';
  registrotoccodigo.AsInteger := tocTransferencia;

  registro.post;

  // identificar os tipos de contas de origem e destino
  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  vtctorigem := consulta.Fields[0].AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.ctactacodigo.AsString;
  consulta.Open;
  vtctdestino := consulta.Fields[0].AsInteger;
  //

  consulta.Close;


  // trata a inclusao incompleta de um registro do cco
  if self.psituacao.Caption = 'Incluindo' then
  begin
    if vretorno = '0000000000000000' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from cco where ccochave=' + vchave;
      consulta.ExecSQL;
    end;
  end;

  vccochaveatu := self.registroccochave.AsInteger;
  vExtctacodigo := registroctacodigo.AsInteger;
  vExtccoemissao := registroccoemissao.AsFloat;
  vExtccovencimento := registroccovencimento.AsFloat;
  vExttoccodigo := registrotoccodigo.AsInteger;
  vExtcedcodigo := registrocedcodigo.AsInteger;
  vExtclbcodigo := registroclbcodigo.AsInteger;
  vExttficodigo := registrotficodigo.AsInteger;
  vExtmoecodigo := registromoecodigo.AsInteger;
  vExtcconumero := registrocconumero.AsString;
  vExtccohistorico := registroccohistorico.AsString;
  vExtccovalor := registroccovalor.AsFloat;
  vExtccochaveorig := registroccochaveorig.AsInteger;
  vExtccochavedest := registroccochavedest.AsInteger;
  vExtccoconciliado := registroccoconciliado.AsString;
  vExtccoextenso := registroccoextenso.AsString;
  vExtetdcodigo := registroetdcodigo.AsInteger;
  vExtccodatamov := registroccodatamov.AsFloat;
  vExtccodatavregistro := registroccodataregistro.AsFloat;
  vExtccohoravregistro := registroccohoraregistro.AsFloat;
  vExtccofavorecido := registroccofavorecido.AsString;

  // ccoctacodigo.AsInteger := vccoctadestino;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := vExtccovencimento;
  ccotoccodigo.AsInteger := tocTransferencia;
  if vExtcedcodigo = 1 then
    ccocedcodigo.AsInteger := 0
  else
    ccocedcodigo.AsInteger := 1;

  ccoclbcodigo.AsInteger := vExtclbcodigo;
  ccotficodigo.AsInteger := vExttficodigo;
  ccomoecodigo.AsInteger := vExtmoecodigo;
  ccocconumero.AsString := vExtcconumero;
  consulta.Close;
  consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;

  ccoccohistorico.AsString := 'De: ' + consulta.Fields[0].AsString;
  consulta.Close;

  ccoccovalor.AsFloat := vExtccovalor;
  ccoccochaveorig.AsInteger := vccochaveatu;
  ccoccochavedest.AsInteger := vExtccochavedest;
  ccoccoconciliado.AsString := vExtccoconciliado;
  ccoccoextenso.AsString := vExtccoextenso;
  ccoetdcodigo.AsInteger := vExtetdcodigo;
  ccoccodatamov.AsFloat := vExtccodatamov;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  ccoccofavorecido.AsString := vExtccofavorecido;
  cco.post;

  consulta.Close;
  consulta.SQL.Text := 'update cco set ccochavedest=' + registroccochave.AsString + ',toccodigo=' + inttostr(tocTransferencia) + ' where ccochave=' + inttostr(vccochaveatu);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'select ltechave from clt where ccochave=' + inttostr(vccochaveatu);
  consulta.Open;

  vltechave := consulta.Fields[0].AsInteger;

  self.clt.Close;
  self.clt.Params[0].AsInteger := ccoccochave.AsInteger;
  self.clt.Params[1].AsInteger := vltechave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.append
  else
    clt.Edit;

  self.cltccochave.AsInteger := ccoccochave.AsInteger;
  self.cltltechave.AsInteger := vltechave;
  clt.post;

  Close;


end;

procedure Tfrmdevol.FormShow(Sender: TObject);
begin
  self.IdModulo:=vPlIdMd;
  inherited;

end;

end.
