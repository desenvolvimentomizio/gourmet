unit ufccotransfche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, uni,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes, MemDS, DBAccess,
  System.Actions, Vcl.ActnList, Vcl.ImgList, PngImageList, uPegaBase,
  System.ImageList;

type
  Tfccotransfche = class(Tfrmbase)
    registroccochave: TIntegerField;
    registroctacodigo: TIntegerField;
    registroccoemissao: TDateField;
    registroccovencimento: TDateField;
    registrotoccodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registromoecodigo: TIntegerField;
    registrocconumero: TStringField;
    registroccohistorico: TStringField;
    registroccovalor: TFloatField;
    registroccochaveorig: TIntegerField;
    registroccochavedest: TIntegerField;
    registroccoconciliado: TIntegerField;
    registroccoextenso: TStringField;
    registroetdcodigo: TIntegerField;
    registroccodatamov: TDateField;
    registroccodataregistro: TDateField;
    registroccohoraregistro: TTimeField;
    registroccofavorecido: TStringField;
    Label1: TLabel;
    ccochave: TDBEdit;
    Label10: TLabel;
    Label7: TLabel;
    ccovalor: TDBEdit;
    cta: tuniquery;
    Label5: TLabel;
    ccohistorico: TDBMemo;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    Dcta: tunidatasource;
    che: tuniquery;
    chechechave: TIntegerField;
    checcochave: TIntegerField;
    clt: tuniquery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    cco: tuniquery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
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
    Dcco: tunidatasource;
    ccoctaidentificacao: TStringField;
    ctacodigo: TDBEdit;
    dtl: tuniquery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    lte: tuniquery;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcschcodigo: TIntegerField;
    Label2: TLabel;
    ctacodigoOri: TDBEdit;
    registroctaidentificacao: TStringField;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    lteltehistorico: TStringField;
    lteltemulta: TFloatField;
    ltcmdccodigo: TIntegerField;
    ctatctcodigo: TIntegerField;
    ccd: tuniquery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure ctacodigoEnter(Sender: TObject);
    procedure ccovalorEnter(Sender: TObject);
    procedure ctacodigoExit(Sender: TObject);
  private
    function selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
    { Private declarations }
  public
    { Public declarations }
    function finaliza(vchave: string): string;

  end;

  TSelecionaCheques = function(AOwner: TComponent; Conexao: TUniConnection; vdtlchave: string; vvalor: string; vschcodigo: Integer;
    vctacodigo: string = ''): string;

var
  fccotransfche: Tfccotransfche;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-05';

  // Fim ID do Módulo fracco

implementation

{$R *.dfm}

function Tfccotransfche.selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
var
  seleciona: TSelecionaCheques;
begin

  pack := LoadPackage('modulos\msch.bpl');
  if pack <> 0 then
    try
      @seleciona := GetProcAddress(pack, PChar('selecionacheques'));

      if Assigned(seleciona) then
        Result := seleciona(Application, zcone, vchave, '0', schDepositado, self.vChaveMestre);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tfccotransfche.bconfirmaClick(Sender: TObject);
var
  vccoctadestino: Integer;
  vccochaveatu: Integer;
  vExtctacodigo: Integer;
  vExtccoemissao: TDate;
  vExtccovencimento: TDate;
  vExttoccodigo: Integer;
  vExtcedcodigo: Integer;
  vExtclbcodigo: Integer;
  vExttficodigo: Integer;
  vExtmoecodigo: Integer;
  vExtcconumero: String;
  vExtccohistorico: String;
  vExtccovalor: Double;
  vExtccochaveorig: Integer;
  vExtccochavedest: Integer;
  vExtccoconciliado: String;
  vExtccoextenso: String;
  vExtetdcodigo: Integer;
  vExtccodatamov: TDate;
  vExtccodatavregistro: TDate;
  vExtccohoravregistro: TTime;
  vExtccofavorecido: String;
  vchave: string;
  vretorno: string;

  vtctorigem: Integer;
  vtctdestino: Integer;
  vltechave: Integer;

begin
  { inherited; }

  if registro.State <> dsedit then
    registro.Edit;

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := 'Transf. de Cheques para: ' + self.ccoctaidentificacao.AsString;
  registrotoccodigo.AsInteger := tocTransferencia;
  registro.post;

  vccochaveatu := self.ccoccochave.AsInteger;

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
  consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + self.registroctacodigo.AsString;
  consulta.Open;

  ccoccohistorico.AsString := 'Transf. de Cheques recebidas de: ' + self.registroctaidentificacao.AsString;
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
  consulta.SQL.Text := 'update cco set ccochavedest=' + registroccochave.AsString + ',toccodigo=' + inttostr(tocTransferencia) + ' where ccochave=' +
    inttostr(vccochaveatu);
  consulta.ExecSQL;

  { consulta.Close;
    consulta.SQL.Text := 'select ltechave from clt where ccochave=' + inttostr(vccochaveatu);
    consulta.Open; }

  vltechave := self.lteltechave.AsInteger;

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

  self.clt.Close;
  self.clt.Params[0].AsInteger := vccochaveatu;
  self.clt.Params[1].AsInteger := vltechave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.append
  else
    clt.Edit;

  self.cltccochave.AsInteger := vccochaveatu;
  self.cltltechave.AsInteger := vltechave;
  clt.post;

  Close;

end;

procedure Tfccotransfche.ccovalorEnter(Sender: TObject);
var
  vccoctadestino: Integer;
  vccochaveatu: Integer;
  vtctorigem: Integer;
  vtctdestino: Integer;
  vretorno: string;

begin
  inherited;

  registromoecodigo.AsInteger := 1;
  registrocedcodigo.AsInteger := 0;

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := 'Transf. de Cheques para: ' + self.ccoctaidentificacao.AsString;
  registrotoccodigo.AsInteger := tocTransferencia;
  registroccovalor.AsString := '0';
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

  vchave := self.registroccochave.AsString;

  lte.Open;
  lte.append;
  ltetfdcodigo.AsInteger := tfdContaCorrente;
  lteltedata.AsFloat := date;
  ltelteprincipal.AsFloat := 0;
  lteltejuros.AsFloat := 0;
  lteltedesconto.AsFloat := 0;
  lteltetotal.AsFloat := 0;
  lteltemulta.AsFloat := 0;
  lte.post;

  dtl.Open;
  dtl.append;
  dtlltechave.AsString := lteltechave.AsString;
  dtlcedcodigo.AsInteger := cedcredito;
  dtlmdacodigo.AsInteger := mdaChequeTerceiros;
  dtl.post;

  vretorno := selecionachequesterceiro(dtldtlchave.AsString, schDepositado);

  registro.Edit;
  self.ccovalor.Field.AsString := vretorno;

  if lte.State = dsbrowse then
  begin
    lte.Edit;
  end;

  ltelteprincipal.AsFloat := self.ccovalor.Field.AsFloat;
  lteltetotal.AsFloat := ltelteprincipal.AsFloat;
  lte.post;

  if dtl.State = dsbrowse then
  begin
    dtl.Edit;
  end;

  dtldtlvalor.AsFloat := lteltetotal.AsFloat;
  dtl.post;

  Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfccotransfche.ctacodigoEnter(Sender: TObject);
begin
  // inherited;

end;

procedure Tfccotransfche.ctacodigoExit(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=1';
  cta.Filter := self.txtFiltro;
  cta.Filtered := True;
  ValidaSaida(Sender);

end;

function Tfccotransfche.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; Conexao: TUniConnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;
var
  registra: TRegistraLote;
  vMulta: String;
  vpri: string;
  vjur: string;
  vdes: string;
  vTrmCodigo: string;
begin

  vTrmCodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.registroccovalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        Result := registra(Application, zcone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdContaCorrente), False);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfccotransfche.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;

  inherited;
  cta.Open;

end;

procedure Tfccotransfche.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroccoemissao.AsFloat := date;
  registroccovencimento.AsFloat := date;
  registrotoccodigo.AsInteger := 1;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotficodigo.AsInteger := tfiOutros;
  registromoecodigo.AsInteger := tocTransferencia;
  registroccoconciliado.AsString := '1';
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  registroccodatamov.AsFloat := consulta.Fields[0].AsFloat;
  consulta.Close;
  registroccodataregistro.AsFloat := date;
  registroccohoraregistro.AsFloat := time;
  registroetdcodigo.AsInteger := 0;

  cco.Close;
  cco.Params[0].AsString := self.vchave;
  cco.Open;

  if cco.IsEmpty then
    cco.append
  else
    cco.Edit;

  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := date;
  ccotoccodigo.AsInteger := tocTransferencia;
  ccoclbcodigo.AsInteger := Acesso.Usuario;
  ccotficodigo.AsInteger := tfiOutros;
  ccomoecodigo.AsInteger := 1;
  ccoccoconciliado.AsString := '1';
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  ccoccodatamov.AsFloat := consulta.Fields[0].AsFloat;
  consulta.Close;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  ccoetdcodigo.AsInteger := 0;

end;

end.
