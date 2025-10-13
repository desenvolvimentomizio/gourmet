unit ufccotransf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uFuncoes, uPegaBase, System.ImageList, dialogs;

type
  Tfccotransf = class(Tfrmbase)
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
    cfgcfgusactb: TIntegerField;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    Label3: TLabel;
    ccohistorico: TDBEdit;
    Label4: TLabel;
    ccoemissao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure ctacodigoEnter(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
  private
    function Contabiliza: Boolean;
    function registrachequesproprios(vchave, vvalor: string): string;
    { Private declarations }
  public
    { Public declarations }
    vpTipo: string;
    vpCcoChave: String;
    vLteChave: String;
    vFlaCodigoOri: string;
    vFlaCodigoDes: string;
    vPcgCodigoOri: string;
    vPcgCodigoDes: string;
    vpComplmento: string;

    function finaliza(vchave: string): string;

  end;

  TContabilizacaoTransferencia = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string;
    vFlaDestino: string; vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): Boolean;

var
  fccotransf: Tfccotransf;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-04';

  // Fim ID do Módulo fracco

implementation

{$R *.dfm}

function Tfccotransf.registrachequesproprios(vchave: string; vvalor: string): string;
type
  TRegistraChequesProprios = function(AOwner: TComponent; conexao: tuniconnection; vusrcodigo: String; vTotal: string; vdtlchave: string;
    vCtaCodigo: String = ''): string;
var
  registra: TRegistraChequesProprios;
  vlCtaCodigo: String;
begin
  pack := LoadPackage('modulos\mche.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('RegistraChequesProprios'));

      if not Assigned(registra) then
        Exit;

      if vpCcoChave <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT cco.ctacodigo FROM cco WHERE cco.ccochave = ' + vpCcoChave;
        consulta.Open;

        vlCtaCodigo := consulta.Fields[0].AsString;
      end;

      Result := registra(Application, ZCone, Acesso.Usuario.ToString, vvalor, vchave, vlCtaCodigo);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tfccotransf.bconfirmaClick(Sender: TObject);
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
  vlRetornoCheques: String;
  vlChechave: string;

begin

if registro.State=dsBrowse then
   registro.Edit;


  registroccovencimento.AsFloat :=ccoemissao.Field.AsFloat;

if cco.State=dsBrowse then
   cco.Edit;

  ccoccovencimento.AsFloat := date;
  { inherited; }
  try
    ZCone.StartTransaction;
    lte.Open;
    lte.append;
    ltetfdcodigo.AsInteger := tfdContaCorrente;
    lteltedata.AsFloat := date;
    ltelteprincipal.AsFloat := ccovalor.Field.AsFloat;
    lteltejuros.AsFloat := 0;
    lteltedesconto.AsFloat := 0;
    lteltetotal.AsFloat := ccovalor.Field.AsFloat;
    lteltemulta.AsFloat := 0;
    lte.post;

    vLteChave := lteltechave.AsString;

    dtl.Open;
    dtl.append;
    dtlltechave.AsString := lteltechave.AsString;
    dtlcedcodigo.AsInteger := ceddebito;
    if vpTipo = 'CHEQUE' then
      dtlmdacodigo.AsInteger := mdaChequeProprio
    else
      dtlmdacodigo.AsInteger := mdaDinheiro;
    dtldtlvalor.AsFloat := lteltetotal.AsFloat;
    dtl.post;

    if registro.State <> dsedit then
      registro.Edit;

    registromoecodigo.AsInteger := 1;
    registrocedcodigo.AsInteger := 0;

    registroetdcodigo.AsInteger := 0;

    consulta.Close;
    consulta.SQL.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigo.Field.AsString;
    consulta.Open;

    vtctdestino := consulta.Fields[0].AsInteger;

    vFlaCodigoDes := consulta.Fields[1].AsString;
    vPcgCodigoDes := consulta.Fields[2].AsString;

    if vtctdestino = tctContaCaixa then
    begin
      if vpTipo = 'CHEQUE' then
        registroccohistorico.AsString := 'Transferência em cheque, '+ccohistorico.Field.AsString
      else
        registroccohistorico.AsString := 'Transferência em dinheiro, '+ccohistorico.Field.AsString;
    end;

    if vtctdestino = tctContaBancaria then
    begin
      if vpTipo = 'CHEQUE' then
        registroccohistorico.AsString := 'Depósito em cheque '+ccohistorico.Field.AsString
      else
        registroccohistorico.AsString := 'Depósito em dinheiro '+ccohistorico.Field.AsString;
    end;

    registrotoccodigo.AsInteger := tocTransferencia;
    registroetdcodigo.AsInteger := 0;
    registroccofavorecido.AsString := 'Para Conta : ' + self.ccoctaidentificacao.AsString;
    registrotoccodigo.AsInteger := tocTransferencia;
    registro.post;

    clt.Close;
    clt.Params[0].AsInteger := registroccochave.AsInteger;
    clt.Params[1].AsString := vLteChave;
    clt.Open;

    if clt.IsEmpty then
      clt.append
    else
      clt.Edit;

    self.cltccochave.AsInteger := registroccochave.AsInteger;
    self.cltltechave.AsString := vLteChave;
    clt.post;

    vchave := self.dtldtlchave.AsString;

    vccochaveatu := self.ccoccochave.AsInteger;

    if vpTipo = 'CHEQUE' then
    begin
      vpCcoChave := registroccochave.AsString;
      vlRetornoCheques := registrachequesproprios(vchave, lteltetotal.AsString);
      if vlRetornoCheques = '0' then
      begin
        ZCone.Rollback;

        Close;
        Exit;
      end;

      consulta.Close;
      consulta.SQL.Text := 'select chechave from ltc where dtlchave=' + vchave;
      consulta.Open;

      vlChechave := consulta.FieldByName('chechave').AsString;

      consulta.Close;
      consulta.SQL.Text := 'select schcodigo=' + IntTostr(schDepositado) + ' from ltc where dtlchave=' + vchave;
      consulta.ExecSQL;

    end;

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
    consulta.SQL.Text := 'select ctaidentificacao,tctcodigo from cta where ctacodigo=' + self.registroctacodigo.AsString;
    consulta.Open;

    ccoccofavorecido.AsString := 'Da Conta : ' + consulta.Fields[0].AsString;
    consulta.Close;

    consulta.Close;
    consulta.SQL.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigo.Field.AsString;
    consulta.Open;
    vtctdestino := consulta.Fields[0].AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigoOri.Field.AsString;
    consulta.Open;

    vFlaCodigoOri := consulta.Fields[1].AsString;
    vPcgCodigoOri := consulta.Fields[2].AsString;

    if vtctdestino = tctContaCaixa then
    begin
      if vpTipo = 'CHEQUE' then
        ccoccohistorico.AsString := 'Tranferência em cheque '+ccohistorico.Field.AsString
      else

        ccoccohistorico.AsString := 'Tranferência em dinheiro '+ccohistorico.Field.AsString;
    end;

    if vtctdestino = tctContaBancaria then
    begin
      if vpTipo = 'CHEQUE' then
        ccoccohistorico.AsString := 'Depósito em cheque '+ccohistorico.Field.AsString
      else
        ccoccohistorico.AsString := 'Depósito em dinheiro '+ccohistorico.Field.AsString;
    end;

    vpComplmento := ccoccohistorico.AsString;

    ccoccovalor.AsFloat := vExtccovalor;
    ccoccochaveorig.AsInteger := vccochaveatu;
    ccoccochavedest.AsInteger := vExtccochavedest;
    ccoccoconciliado.AsString := vExtccoconciliado;
    ccoccoextenso.AsString := vExtccoextenso;
    ccoetdcodigo.AsInteger := vExtetdcodigo;
    ccoccodatamov.AsFloat := vExtccodatamov;
    ccoccodataregistro.AsFloat := date;
    ccoccohoraregistro.AsFloat := time;
    cco.post;

    consulta.Close;
    consulta.SQL.Text := 'update cco set ccochavedest=' + registroccochave.AsString + ',toccodigo=' + IntTostr(tocTransferencia) + ' where ccochave=' +
      IntTostr(vccochaveatu);
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'select ltechave from clt where ccochave=' + IntTostr(vccochaveatu);
    consulta.Open;

    lte.Open;
    lte.append;
    ltetfdcodigo.AsInteger := tfdContaCorrente;
    lteltedata.AsFloat := date;
    ltelteprincipal.AsFloat := ccovalor.Field.AsFloat;
    lteltejuros.AsFloat := 0;
    lteltedesconto.AsFloat := 0;
    lteltetotal.AsFloat := ccovalor.Field.AsFloat;
    lteltemulta.AsFloat := 0;
    lte.post;

    vLteChave := lteltechave.AsString;

    dtl.Open;
    dtl.append;
    dtlltechave.AsString := lteltechave.AsString;
    dtlcedcodigo.AsInteger := cedcredito;

    if vpTipo = 'CHEQUE' then
      dtlmdacodigo.AsInteger := mdaChequeProprio
    else
      dtlmdacodigo.AsInteger := mdaDinheiro;

    dtldtlvalor.AsFloat := lteltetotal.AsFloat;
    dtl.post;

    if vpTipo = 'CHEQUE' then
    begin
      ltc.Close;
      ltc.ParamByName('dtlchave').AsInteger := dtldtlchave.AsInteger;
      ltc.Open;

      ltc.append;
      ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
      ltcchechave.AsString := vlChechave;
      ltcschcodigo.AsInteger := schDepositado;
      ltc.post;
    end;

    clt.Close;
    clt.Params[0].AsInteger := ccoccochave.AsInteger;
    clt.Params[1].AsString := vLteChave;
    clt.Open;

    if clt.IsEmpty then
      clt.append
    else
      clt.Edit;

    self.cltccochave.AsInteger := ccoccochave.AsInteger;
    self.cltltechave.AsString := vLteChave;
    clt.post;

    if cfgcfgusactb.AsInteger = 1 then
    begin
      Contabiliza;
    end;
    if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
        ZCone.Commit;
  except
    if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
        ZCone.Rollback;
    Showmessage('Falha na operação');

  end;
  Close;

end;

function Tfccotransf.Contabiliza: Boolean;
var
  Contab: TContabilizacaoTransferencia;

begin

  pack := LoadPackage('modulos\mctz.bpl');
  if pack <> 0 then
    try
      @Contab := GetProcAddress(pack, PChar('ContabilizacaoTransferencia'));
      if Assigned(Contab) then
      begin

        Result := Contab(Application, ZCone, Acesso.Usuario.ToString, self.vLteChave, vFlaCodigoOri, vFlaCodigoDes, vPcgCodigoOri, vPcgCodigoDes, '1',
          self.registroccovalor.AsString, vpComplmento);

      end;

    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfccotransf.ctacodigoEnter(Sender: TObject);
begin
  // inherited;
  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre;

end;

function Tfccotransf.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
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
        Result := registra(Application, ZCone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, Acesso, IntTostr(tfdContaCorrente), False);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfccotransf.FormShow(Sender: TObject);
begin
  vpTipo := txtFiltro;
  txtFiltro := '0';

  self.IdModulo := vPlIdMd;

  inherited;
  cta.Open;
  if vpTipo = 'CHEQUE' then
  begin
    self.Caption := 'Depósito em cheque entre Contas Correntes';
    Label7.Caption := 'Valor do Depósito R$';
  end
  else
  begin
    self.Caption := 'Transferência entre Contas Correntes';
    Label7.Caption := 'Valor da Transferência R$';
  end;

end;

procedure Tfccotransf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroccoemissao.AsFloat := date;
  registroccovencimento.AsFloat := date;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotficodigo.AsInteger := tfiOutros;
  registrotoccodigo.AsInteger := tocTransferencia;
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

procedure Tfccotransf.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registroccovencimento.AsFloat := registroccoemissao.AsFloat;
end;

end.
