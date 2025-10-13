unit ufccoestorno;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uFuncoes, Dialogs, System.ImageList;

type
  Tfccoestorno = class(Tfrmbase)
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registroccochave: TIntegerField;
    registroctacodigo: TIntegerField;
    registroccoemissao: TDateField;
    registroccovencimento: TDateField;
    registrotoccodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrocedidentificacao: TStringField;
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
    ccoemissao: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    ccovencimento: TDBEdit;
    cedcodigo: TDBEdit;
    Label4: TLabel;
    Label10: TLabel;
    ccofavorecido: TDBEdit;
    ccohistorico: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    cconumero: TDBEdit;
    ccovalor: TDBEdit;
    Label7: TLabel;
    che: tuniquery;
    chechechave: TIntegerField;
    checcochave: TIntegerField;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcschcodigo: TIntegerField;
    clt: tuniquery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    lte: tuniquery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    dtl: tuniquery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtldtlvalor: TFloatField;
    dtlmdacodigo: TIntegerField;
    dtlcedcodigo: TIntegerField;
    ccm: tuniquery;
    ccmccmchave: TIntegerField;
    ccmmeacodigo: TIntegerField;
    ccmccochave: TIntegerField;
    erf: tuniquery;
    erferfchave: TIntegerField;
    erferfdata: TDateField;
    erferfhora: TTimeField;
    erfclbcodigo: TIntegerField;
    erferfvalorlote: TFloatField;
    erferfvalorcredito: TFloatField;
    erfltechave: TIntegerField;
    erfetdcodigo: TIntegerField;
    erferftipo: TIntegerField;
    ccmerfchave: TIntegerField;
    ccd: tuniquery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    dccm: TUniDataSource;
    ccmmotivo: TDBMemo;
    Label8: TLabel;
    ccmccmmotivo: TStringField;
    Label9: TLabel;
    meacodigo: TDBEdit;
    mea: tuniquery;
    meameacodigo: TIntegerField;
    meameamotivo: TStringField;
    ccmmeamotivo: TStringField;
    mcgatu: TUniQuery;
    mcgatumcgchave: TIntegerField;
    mcgatuccgcodigo: TIntegerField;
    mcgatumcgvalor: TFloatField;
    mcgatumcgtabela: TStringField;
    mcgatumcgchaveorigem: TIntegerField;
    mcgatumcgsituacao: TIntegerField;
    mcgatuclbcodigo: TIntegerField;
    mcgatumcgregistro: TDateTimeField;
    mcgaturfichave: TIntegerField;
    mcgatumcgdata: TDateField;
    cfgcfgusactb: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    cfgcfgccgcodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure meacodigoEnter(Sender: TObject);
  private
    function contabiliza: boolean;
    { Private declarations }
  public
    { Public declarations }
    vpLteChave: String;
    vFlaCodigoOri: string;
    vFlaCodigoDes: string;
    vPcgCodigoOri: string;
    vPcgCodigoDes: string;
  end;

  TContabilizacaoEstorno = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string; vFlaDestino: string; vPcgCredito: string;
    vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;

  TContabilizar = function(AOwner: TComponent; conexao: tuniconnection; vChaves: TstringList; vTipo: string): string;

var
  fccoestorno: Tfccoestorno;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-03';

  // Fim ID do Módulo fracco

implementation

{$R *.dfm}

procedure Tfccoestorno.bcancelaClick(Sender: TObject);
begin

  if ccm.State <> dsbrowse then
    ccm.Cancel;

  inherited;

end;

procedure Tfccoestorno.bconfirmaClick(Sender: TObject);
var
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

  vdtlchave: string;
 // vLteChave: string;
  vltechaveant: string;
  vmdacodigo: string;
  vlChavesLtes: TstringList;

begin
  if ccmmotivo.Field.AsString = '' then
    ValidaSaida(ccmmotivo);

  if ccmmotivo.Field.AsString = '' then
  begin
    showmessage('Complemento do Motivo é um campo obrigatório.');
    ccmmotivo.SetFocus;
    exit;
  end;

  { inherited; }
  vlChavesLtes := TstringList.Create;
  // salva dados do registro atual

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

  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi,tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;

  vExtccodatamov := consulta.Fields[0].AsFloat;

  if mea.State <> dsbrowse then
    mea.Post;

  self.registro.Close;
  self.registro.Params[0].AsInteger := 0;
  self.registro.Params[1].AsString := self.vChaveMestre;
  self.registro.Open;

  // cria um novo registro com o ced ao contrario

  self.registro.Append;

  registroctacodigo.AsInteger := vExtctacodigo;
  registroccoemissao.AsFloat := date;
  registroccovencimento.AsFloat := vExtccovencimento;
  registrotoccodigo.AsInteger := tocEstorno;

  if vExtcedcodigo = 1 then
    registrocedcodigo.AsInteger := 0
  else
    registrocedcodigo.AsInteger := 1;

  registroclbcodigo.AsInteger := vExtclbcodigo;
  registrotficodigo.AsInteger := vExttficodigo;
  registromoecodigo.AsInteger := vExtmoecodigo;
  registrocconumero.AsString := vExtcconumero;
  registroccohistorico.AsString := vExtccohistorico;
  registroccovalor.AsFloat := vExtccovalor;
  registroccochaveorig.AsInteger := vccochaveatu;
  registroccochavedest.AsInteger := vExtccochavedest;
  registroccoconciliado.AsString := vExtccoconciliado;
  registroccoextenso.AsString := vExtccoextenso;
  registroetdcodigo.AsInteger := vExtetdcodigo;
  registroccodatamov.AsFloat := vExtccodatamov;
  registroccodataregistro.AsFloat := date;
  registroccohoraregistro.AsFloat := time;
  registroccofavorecido.AsString := vExtccofavorecido;
  registro.Post;

  // salva os dados do novo registro no velho
  consulta.Close;
  consulta.SQL.Text := 'update cco set ccochavedest=' + registroccochave.AsString + ',toccodigo=' + inttostr(tocEstorno) + ' where ccochave=' + inttostr(vccochaveatu);
  consulta.ExecSQL;


  consulta.Close;
  consulta.SQL.Text := 'delete from mcg where mcgtabela='+QuotedStr('cco')+' and rfichave=0 and mcgchaveorigem=' + inttostr(vccochaveatu);
  consulta.ExecSQL;

  // cria um novo lote

  vpLteChave := '0';

  lte.Close;
  lte.SQL.Text := 'select ltechave, tfdcodigo, ltedata, lteprincipal, ltejuros, ltedesconto, ltetotal, lteextenso from lte  limit 0 '; // where ltechave=' + vLteChave;
  lte.Open;

  if lte.IsEmpty then
  begin
    lte.Append;
  end
  else
    lte.Edit;

  ltetfdcodigo.AsInteger := tfdcontacorrente;
  lteltedata.AsFloat := vExtccodatamov;
  ltelteprincipal.AsFloat := self.registroccovalor.AsFloat;
  lteltejuros.AsFloat := 0;
  lteltedesconto.AsFloat := 0;
  lteltetotal.AsFloat := self.registroccovalor.AsFloat;
  ltelteextenso.AsString := '';
  lte.Post;

  vpLteChave := lteltechave.AsString;

  if not erf.Active then
  begin
    erf.Open;
    erf.Append
  end
  else
  begin
    erf.Edit;
  end;

  erferfvalorcredito.AsString := '0';
  erfetdcodigo.AsString := '0';
  erferfvalorlote.AsFloat := lteltetotal.AsFloat;

  erferfdata.AsFloat := date;
  erferfhora.AsFloat := time;
  erfclbcodigo.AsInteger := Acesso.Usuario;
  erfltechave.AsString := lteltechave.AsString;
  erferftipo.AsInteger := 0;
  erf.Post;

  ccmmeacodigo.AsInteger := meameacodigo.AsInteger;
  ccmccochave.AsInteger := vccochaveatu;
  ccmerfchave.AsInteger := erferfchave.AsInteger;
  ccm.Post;

  vlChavesLtes.Add(vpLteChave);

  // vLteChave := self.lteltechave.AsString;

  // cria a ligacao do registro de conta corrente com o lote

  self.clt.Close;
  self.clt.Params[0].AsInteger := registroccochave.AsInteger;
  self.clt.Params[1].AsString := vpLteChave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.Append
  else
    clt.Edit;

  self.cltccochave.AsInteger := registroccochave.AsInteger;
  self.cltltechave.AsString := vpLteChave;
  clt.Post;

  // localiza o lote original para recriar os detalhes ao inverso
  consulta.Close;
  consulta.SQL.Text := 'select ltechave from clt where ccochave=' + inttostr(vccochaveatu);
  consulta.Open;

  vltechaveant := consulta.Fields[0].AsString;

  consulta.Close;
  consulta.SQL.Text := 'select dtlchave, ltechave, dtlvalor, cedcodigo, mdacodigo from dtl where ltechave=' + vltechaveant;
  consulta.Open;






  // gera detalhes do lote e vincula os cheques se houverem e outras modalidades

  che.Close;
  che.Params[0].AsInteger := vccochaveatu;
  che.Open;

  while not consulta.Eof do
  begin

    vmdacodigo := consulta.Fields[0].AsString;

    dtl.Close;
    dtl.Params[0].AsString := vpLteChave;
    dtl.Params[1].AsString := vmdacodigo;
    dtl.Open;

    if dtl.IsEmpty then
      dtl.Append
    else
      dtl.Edit;

    dtldtlvalor.AsFloat := self.consulta.FieldByName('dtlvalor').AsFloat;
    if self.consulta.FieldByName('cedcodigo').AsInteger = 0 then
      dtlcedcodigo.AsInteger := 0
    else
      dtlcedcodigo.AsInteger := 1;

    dtlmdacodigo.AsInteger := self.consulta.FieldByName('mdacodigo').AsInteger;
    dtlltechave.AsString := vpLteChave;
    dtl.Post;

    vdtlchave := self.dtldtlchave.AsString;

    while not che.Eof do
    begin

      ltc.Close;
      ltc.SQL.Text := 'select  ltcchave, chechave, dtlchave, schcodigo from ltc where chechave=' + self.che.FieldByName('chechave').AsString + ' and dtlchave=' + vdtlchave;
      ltc.Open;

      if ltc.IsEmpty then
        ltc.Append
      else
        ltc.Edit;

      ltcchechave.AsInteger := self.che.FieldByName('chechave').AsInteger;
      ltcdtlchave.AsString := vdtlchave;
      ltcschcodigo.AsInteger := schEstornado;

      ltc.Post;

      che.Next;
    end;
    consulta.Next;
  end;

  if cfgcfgusactb.AsInteger = 1 then
  begin

    vFlaCodigoOri := '1';
    vFlaCodigoDes := '1';

    consulta.Close;
    consulta.SQL.Text := 'select phgcodigo, rmgcomplemento, pcgcodigo, rmgtipo, ';
    consulta.SQL.Add('cedcodigo, mlg.flacodigo from mlg, rmg WHERE mlg.mlgchave=rmg.mlgchave AND mlg.ltechave=' + vltechaveant);
    consulta.Open;

    consulta.First;
    while not consulta.Eof do
    begin

      // vLteChave := lteltechave.AsString;
      vFlaCodigoOri := consulta.Fields[5].AsString;
      vFlaCodigoDes := consulta.Fields[5].AsString;
      if consulta.Fields[4].AsString = '0' then
      begin
        vPcgCodigoOri := consulta.Fields[2].AsString;
        vPcgCodigoDes := '';
      end;

      if consulta.Fields[4].AsString = '1' then
      begin
        vPcgCodigoDes := consulta.Fields[2].AsString;
        vPcgCodigoOri := '';
      end;
      contabiliza;
      consulta.Next;
    end;

  end;

  modalresult := mrok;

end;

function Tfccoestorno.contabiliza: boolean;
var
  Contab: TContabilizacaoEstorno;
begin

  pack := LoadPackage('modulos\mctz.bpl');
  if pack <> 0 then
    try
      @Contab := GetProcAddress(pack, PChar('ContabilizacaoEstorno'));
      if Assigned(Contab) then
      begin

        result := Contab(Application, zcone, Acesso.Usuario.ToString, vpLteChave, vFlaCodigoOri, vFlaCodigoDes, vPcgCodigoOri, vPcgCodigoDes, '1', self.registroccovalor.AsString,
          'Estorno');

      end;

    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfccoestorno.FormShow(Sender: TObject);
begin
  { mea.Close;
    mea.Connection := self.zcone;
    mea.Open;
    mea.Append; }

  ccm.Close;
  mea.Connection := self.zcone;
  ccm.Params[0].AsString := vchave;
  ccm.Open;

  if ccm.IsEmpty then
    ccm.Append
  else
    ccm.Edit;

  self.IdModulo := vPlIdMd;
  inherited;
  self.psituacao.Caption := 'Estornando';

end;

procedure Tfccoestorno.meacodigoEnter(Sender: TObject);
begin
  inherited;
  if mea.State = dsbrowse then
  begin
    if psituacao.Caption = 'Inclundo' then
      mea.Append
    else
      mea.Edit;
  end;

end;

procedure Tfccoestorno.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.registroccovencimento.AsFloat := self.registroccoemissao.AsFloat;
end;

end.
