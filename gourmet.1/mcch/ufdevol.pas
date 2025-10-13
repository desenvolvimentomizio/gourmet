unit ufdevol;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, uFuncoes, System.ImageList;

type
  Tfdevol = class(Tfrmbase)
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
    clt: tuniquery;
    cltcltchave: TIntegerField;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    cta: tuniquery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    lte: tuniquery;
    lteltechave: TIntegerField;
    lteltedata: TDateField;
    ltetfdcodigo: TIntegerField;
    lteltetotal: TFloatField;
    dtl: tuniquery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcchechave: TIntegerField;
    cfgcfgctacaixa: TIntegerField;
    dtldtlvalor: TFloatField;
    ltcschcodigo: TIntegerField;
    ccd: tuniquery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCfgCtaCaixa: String;
  end;

var
  fdevol: Tfdevol;

  // Início ID do Módulo fracch
const
  vPlIdMd = '02.02.14.002-02';

  // Fim ID do Módulo fracch

implementation

{$R *.dfm}

procedure Tfdevol.bconfirmaClick(Sender: TObject);
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

  vltechave: integer;

begin
  { inherited; }

  vccochaveatu := self.ccoccochave.AsInteger;
  vExtctacodigo := ccoctacodigo.AsInteger;
  vExtccoemissao := ccoccoemissao.AsFloat;
  vExtccovencimento := ccoccovencimento.AsFloat;
  vExttoccodigo := ccotoccodigo.AsInteger;
  vExtcedcodigo := ccocedcodigo.AsInteger;
  vExtclbcodigo := ccoclbcodigo.AsInteger;
  vExttficodigo := ccotficodigo.AsInteger;
  vExtmoecodigo := ccomoecodigo.AsInteger;
  vExtcconumero := ccocconumero.AsString;
  vExtccohistorico := ccoccohistorico.AsString;
  vExtccovalor := ccoccovalor.AsFloat;
  vExtccochaveorig := ccoccochaveorig.AsInteger;
  vExtccochavedest := ccoccochavedest.AsInteger;
  vExtccoconciliado := ccoccoconciliado.AsString;
  vExtccoextenso := ccoccoextenso.AsString;
  vExtetdcodigo := ccoetdcodigo.AsInteger;
  vExtccodatamov := ccoccodatamov.AsFloat;
  vExtccodatavregistro := ccoccodataregistro.AsFloat;
  vExtccohoravregistro := ccoccohoraregistro.AsFloat;
  vExtccofavorecido := ccoccofavorecido.AsString;

  registroschcodigo.AsInteger := schDevolvido;
  registro.post;



  // criado registro de saida do cheque na conta em que esta depositado

  cco.Append;
  ccoctacodigo.AsInteger := vExtctacodigo;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := date;
  ccotoccodigo.AsInteger := tocTransferencia;
  ccocedcodigo.AsInteger := ceddebito;
  ccoclbcodigo.AsInteger := Acesso.Usuario;
  ccotficodigo.AsInteger := vExttficodigo;
  ccomoecodigo.AsInteger := vExtmoecodigo;
  ccocconumero.AsString := vExtcconumero;

  consulta.Close;
  consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + self.cfgcfgctacaixa.AsString;
  consulta.Open;
  ccoccofavorecido.AsString := 'Para: ' + consulta.Fields[0].AsString;
  consulta.Close;

  ccoccohistorico.AsString := 'Cheques Devolvido bc' + chebcocodigo.AsString + ', ag ' + self.checheagencia.AsString + ', cc ' + self.checheconta.AsString +
    ', nº' + self.chechenumero.AsString + ', por motivo de ' + self.registromdccodigo.AsString + ' ' + self.registromdcidentificacao.AsString;

  ccoccovalor.AsFloat := vExtccovalor;
  // ccoccochaveorig.AsInteger := vccochaveatu;
  // ccoccochavedest.AsInteger := vExtccochavedest;
  ccoccoconciliado.AsString := vExtccoconciliado;
  ccoccoextenso.AsString := vExtccoextenso;
  ccoetdcodigo.AsInteger := vExtetdcodigo;
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + inttostr(vExtctacodigo);
  consulta.Open;
  ccoccodatamov.AsFloat := consulta.Fields[0].AsFloat;

  ccoccodatamov.AsFloat := vExtccodatamov;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  cco.post;

  vccochaveatu := self.ccoccochave.AsInteger;

  lte.Open;
  // cria o novo lote
  lte.Append;
  lteltedata.AsFloat := date;
  ltetfdcodigo.AsInteger := tfdContaCorrente;
  lteltetotal.AsFloat := vExtccovalor;
  lte.post;
  vltechave := lteltechave.AsInteger;

  // verifica se ha a ligacao do lote com o registro do cco, se nao houver cria
  self.clt.Close;
  self.clt.Params[0].AsInteger := ccoccochave.AsInteger;
  self.clt.Params[1].AsInteger := vltechave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.Append
  else
    clt.Edit;

  self.cltccochave.AsInteger := ccoccochave.AsInteger;
  self.cltltechave.AsInteger := vltechave;
  clt.post;

  // registra o detalhe do lote gerado
  dtl.Close;
  dtl.Params[0].AsInteger := vltechave;
  dtl.Open;

  if dtl.IsEmpty then
    dtl.Append
  else
    dtl.Edit;

  dtlltechave.AsInteger := vltechave;
  dtlcedcodigo.AsInteger := ceddebito;
  dtlmdacodigo.AsInteger := mdaChequeTerceiros;
  dtldtlvalor.AsFloat := vExtccovalor;
  dtl.post;

  ccd.Close;
  ccd.Params[0].AsInteger := dtldtlchave.AsInteger;
  ccd.Params[1].AsString := ccoccochave.AsString;
  ccd.Open;
  if ccd.IsEmpty then
  begin
    ccd.Append;
    ccdccochave.AsString := ccoccochave.AsString;
    ccddtlchave.AsInteger := dtldtlchave.AsInteger;
    ccd.post;
  end;

  // liga o detalhe ao cheque a ser devolcido
  ltc.Close;
  ltc.Params[0].AsInteger := self.dtldtlchave.AsInteger;
  ltc.Open;

  if ltc.IsEmpty then
    ltc.Append
  else
    ltc.Edit;
  ltcdtlchave.AsInteger := self.dtldtlchave.AsInteger;
  ltcchechave.AsInteger := self.registrochechave.AsInteger;
  ltcschcodigo.AsInteger := schDevolvido;
  ltc.post;


  // criado registro de entrada na caixa padrao da empresa onde o cheque ficara disponivel para negociacao

  cco.Append;
  ccoctacodigo.AsInteger := self.cfgcfgctacaixa.AsInteger;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := date;
  ccotoccodigo.AsInteger := tocTransferencia;
  ccocedcodigo.AsInteger := cedcredito;
  ccoclbcodigo.AsInteger := Acesso.Usuario;
  ccotficodigo.AsInteger := vExttficodigo;
  ccomoecodigo.AsInteger := vExtmoecodigo;
  ccocconumero.AsString := vExtcconumero;

  consulta.Close;
  consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + inttostr(vExtctacodigo);
  consulta.Open;
  ccoccofavorecido.AsString := 'De: ' + consulta.Fields[0].AsString;
  consulta.Close;

  ccoccohistorico.AsString := 'Transferência referente cheque devolvido Bco ' + chebcocodigo.AsString + ', ag ' + self.checheagencia.AsString + ', cc ' +
    self.checheconta.AsString + ', nº' + self.chechenumero.AsString + ', por motivo de ' + self.registromdccodigo.AsString + ' ' +
    self.registromdcidentificacao.AsString;

  ccoccovalor.AsFloat := vExtccovalor;
  ccoccochaveorig.AsInteger := vccochaveatu;
  ccoccochavedest.AsInteger := vExtccochavedest;
  ccoccoconciliado.AsString := vExtccoconciliado;
  ccoccoextenso.AsString := vExtccoextenso;
  ccoetdcodigo.AsInteger := vExtetdcodigo;

  ccoccoconciliado.AsString := '0';
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.cfgcfgctacaixa.AsString;
  consulta.Open;
  ccoccodatamov.AsFloat := consulta.Fields[0].AsFloat;

  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  cco.post;

  lte.Open;
  // cria o novo lote
  lte.Append;
  lteltedata.AsFloat := date;
  ltetfdcodigo.AsInteger := tfdContaCorrente;
  lteltetotal.AsFloat := vExtccovalor;
  lte.post;
  vltechave := lteltechave.AsInteger;

  // verifica se ha a ligacao do lote com o registro do cco, se nao houver cria
  self.clt.Close;
  self.clt.Params[0].AsInteger := ccoccochave.AsInteger;
  self.clt.Params[1].AsInteger := vltechave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.Append
  else
    clt.Edit;

  self.cltccochave.AsInteger := ccoccochave.AsInteger;
  self.cltltechave.AsInteger := vltechave;
  clt.post;

  // registra o detalhe do lote gerado
  dtl.Close;
  dtl.Params[0].AsInteger := vltechave;
  dtl.Open;

  if dtl.IsEmpty then
    dtl.Append
  else
    dtl.Edit;

  dtlltechave.AsInteger := vltechave;
  dtlcedcodigo.AsInteger := ceddebito;
  dtlmdacodigo.AsInteger := mdaChequeTerceiros;
  dtldtlvalor.AsFloat := vExtccovalor;
  dtl.post;

  // liga o detalhe ao cheque a ser devolcido
  ltc.Close;
  ltc.Params[0].AsInteger := self.dtldtlchave.AsInteger;
  ltc.Open;

  if ltc.IsEmpty then
    ltc.Append
  else
    ltc.Edit;

  ltcdtlchave.AsInteger := self.dtldtlchave.AsInteger;
  ltcchechave.AsInteger := self.registrochechave.AsInteger;
  ltcschcodigo.AsInteger := schPendente;
  ltc.post;

  { consulta.Close;
    consulta.SQL.Text := 'update cco set ccochavedest=' + ccoccochave.AsString + ',toccodigo=' + inttostr(tocTransferencia) + ' where ccochave=' + inttostr(vccochaveatu);
    consulta.ExecSQL; }

  Close;

end;

procedure Tfdevol.FormShow(Sender: TObject);
begin

  self.IdModulo := vPlIdMd;

  che.Close;
  che.Params[0].AsString := self.vchave;
  che.Open;

  cco.Close;
  cco.Params[0].AsString := self.vChaveMestre;
  cco.Open;

  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select cfgctacaixa from cfg';
  consulta.Open;
  vCfgCtaCaixa := consulta.Fields[0].AsString;
  consulta.Close;
  self.registromdccodigo.AsString := '';

end;

end.
