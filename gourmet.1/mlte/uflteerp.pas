unit uflteerp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, ACBrBase, ACBrExtenso,
  System.Actions, Vcl.ActnList, Data.DB,  DBAccess, Uni,
  MemDS, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, System.Math, System.Types, ufuncoes,
  System.DateUtils, Datasnap.DBClient;

type
  Tflteerp = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    plvalores: TPanel;
    PlTitulo: TPanel;
    plliquido: TPanel;
    lltetotal: TLabel;
    ltetotal: TDBEdit;
    PlDesconto: TPanel;
    lltedesconto: TLabel;
    ltedesconto: TDBEdit;
    plJuros: TPanel;
    lltejuros: TLabel;
    ltejuros: TDBEdit;
    PlValor: TPanel;
    lprincipal: TLabel;
    lteprincipal: TDBEdit;
    PlMulta: TPanel;
    lltemulta: TLabel;
    ltemulta: TDBEdit;
    plDinheiro: TPanel;
    plF2: TPanel;
    edmdaDinheiro: TDBEdit;
    pltitulomodalidades: TPanel;
    plteclas: TPanel;
    plcartaocredito: TPanel;
    plF5: TPanel;
    edmdaCartaoCredito: TDBEdit;
    btcartaocredito: TBitBtn;
    plcartaodebito: TPanel;
    plF4: TPanel;
    edmdaCartaoDebito: TDBEdit;
    btcartaodebito: TBitBtn;
    plconvenio: TPanel;
    plF3: TPanel;
    edmdaConvenio: TDBEdit;
    plchequesterceiros: TPanel;
    plF6: TPanel;
    edmdaChequeTerceiros: TDBEdit;
    btchequeterceiros: TBitBtn;
    plchequesproprios: TPanel;
    plF7: TPanel;
    edmdaChequeProprio: TDBEdit;
    btchequeproprios: TBitBtn;
    pltroco: TPanel;
    edfaltatroco: TDBEdit;
    plviabanco: TPanel;
    Panel18: TPanel;
    edmdaViaBanco: TDBEdit;
    consulta: TUniQuery;
    lte: TUniQuery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltemulta: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    Dlte: TUniDataSource;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    Ddtl: TUniDataSource;
    tmp: TClientDataSet;
    tmpmdaDinheiro: TFloatField;
    tmpmdaChequeProprio: TFloatField;
    tmpmdaChequeTerceiros: TFloatField;
    tmpmdaCartaoDebito: TFloatField;
    tmpmdaCartaoCredito: TFloatField;
    tmpmdaViaBanco: TFloatField;
    tmpmdaConvenio: TFloatField;
    tmpmdaAFaturar: TFloatField;
    tmptroco: TFloatField;
    Dtmp: TUniDataSource;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfitfdcodigo: TIntegerField;
    rfiflacodigo: TIntegerField;
    rfitficodigo: TIntegerField;
    rfibcocodigo: TStringField;
    rficarcodigo: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfifrrcodigo: TIntegerField;
    rfirfimoradia: TFloatField;
    rfirfipercmesmora: TFloatField;
    rfirfirepetir: TIntegerField;
    rfirfiprevisao: TIntegerField;
    rfirfivalorparcela: TFloatField;
    rfimoecodigo: TIntegerField;
    rfititcodigo: TIntegerField;
    mfi: TUniQuery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    mlt: TUniQuery;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    mes: TUniQuery;
    mesetdcodigo: TIntegerField;
    mesmeschave: TIntegerField;
    cfg: TUniQuery;
    cfgcfgusacre: TIntegerField;
    cfgcfgctacaixa: TIntegerField;
    cfgctadtmovi: TDateField;
    cfgcfgdatapadrao: TDateField;
    cfgcfgusaadc: TIntegerField;
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccofavorecido: TStringField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    clt: TUniQuery;
    cltcltchave: TIntegerField;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    ltc: TUniQuery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcschcodigo: TIntegerField;
    che: TUniQuery;
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
    ffd: TUniQuery;
    ffdffdcodigo: TIntegerField;
    ffdmdacodigo: TIntegerField;
    ffdtfdcodigo: TIntegerField;
    rfm: TUniQuery;
    rfmrfmchave: TIntegerField;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    mda: TUniQuery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    mdatfdcodigo: TIntegerField;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittitnumero: TStringField;
    tittitvalor: TFloatField;
    tittitemissao: TDateField;
    tittitvctoinicial: TDateField;
    tittfdcodigo: TIntegerField;
    titsrfcodigo: TIntegerField;
    tittficodigo: TIntegerField;
    tittithora: TTimeField;
    tittithistorico: TStringField;
    titclbcodigo: TIntegerField;
    tittitvalorparcela: TFloatField;
    tittitparcelas: TIntegerField;
    tittitprevisao: TIntegerField;
    titmoecodigo: TIntegerField;
    tittitmoradia: TFloatField;
    tittitvalomulta: TFloatField;
    tittitpercmesmora: TFloatField;
    tittitvalodesc: TFloatField;
    tittitpercmulta: TFloatField;
    titflacodigo: TIntegerField;
    titbcocodigo: TStringField;
    titcarcodigo: TIntegerField;
    tittitdiasmulta: TIntegerField;
    tittitdiasdesc: TIntegerField;
    AcoesLote: TActionList;
    ActDinheiro: TAction;
    ActConvenio: TAction;
    ActCartaoDebito: TAction;
    ActCartaoCredito: TAction;
    ActChequeTerceiros: TAction;
    ActChequeProprios: TAction;
    ActViaBanco: TAction;
    ACBrExtenso: TACBrExtenso;
    adc: TUniQuery;
    adcadccodigo: TIntegerField;
    tfd: TUniQuery;
    tfdtfdcodigo: TIntegerField;
    tfdtfdidentificacao: TStringField;
    IdentificaBaixa: TUniQuery;
    ccov: TUniQuery;
    cltv: TUniQuery;
    rcr: TUniQuery;
    rcrrcrchave: TIntegerField;
    rcretdcodigo: TIntegerField;
    rcrcedcodigo: TIntegerField;
    rcrrcrvalor: TFloatField;
    rcrrcrdata: TDateField;
    rcrrcrhistorico: TStringField;
    rcrtcrcodigo: TIntegerField;
    procedure ActCartaoCreditoExecute(Sender: TObject);
    procedure ActCartaoDebitoExecute(Sender: TObject);
    procedure ActChequePropriosExecute(Sender: TObject);
    procedure ActChequeTerceirosExecute(Sender: TObject);
    procedure ActConvenioExecute(Sender: TObject);
    procedure ActDinheiroExecute(Sender: TObject);
    procedure ActViaBancoExecute(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ltedescontoExit(Sender: TObject);
    procedure ltejurosExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExecutaAcao(Sender: TObject);
    procedure aosair(Sender: TObject);
  private
    pack: Cardinal;
    vclbcodigo: string;
    vTipoControle: Integer;

    vretornoch: string;
    vretornocc: string;
    vretornoap: string;
    vretornoto: string;

    vtrmcodigo: string;
    vlteprincipal: string;
    vltemulta: String;
    vltejuros: string;
    vltedesconto: string;

    VpTfdCodigo: Integer;
    vpCtaCodigo: String;
    VtocCodigo: Integer;

    Fzcone: tuniconnection;
    procedure ajustaaltura;
    procedure ajustapaineis;
    function AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
    function AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao, vtitvctoinicial: TDate;
      vtfdcodigo, vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer;
      vtitmoradia, vtitvalomulta, vtitpercmesmora, vtitvalodesc, vtitpercmulta, vtitpercmesmulta: Double; vbcocodigo: String;
      vcarcodigo, vtitdiasmulta, vtitdiasdesc: Integer): Integer;

    procedure confirmaregistrolte;
    procedure definirconexao;
    procedure IdentificarBaixa;
    procedure IniciaProcesso;
    procedure Pagamento;
    procedure ProcessaTeclasAtalho(vmdacodigo: Integer);
    procedure recalculatotais;
    procedure Recebimento;
    procedure RegistraCartao(vdtlchave: String; vTotal: Double);
    function registracartoes(vchave, vvalor: string): string;
    function RegistraCCO(vdtlchave: string; vvalor, vTroco: Double; VpTfdCodigo: Integer; vCtaCodigo: string = '0'): string;
    function registracheques(vchave, vcco, vvalor: string): string;
    function registrachequesproprios(vchave, vvalor: string): string;
    function registraconvenio(vmeschave, vvalor: string): string;
    procedure registradtl;
    procedure removedtlzerado;
    function selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
    function selecionaconta: string;
    function somavalores: Currency;
    procedure tmpAfterInsert(DataSet: TDataSet);
    procedure VendaAVistas(vtotrfichtr, vtotrfiditr, vtotrfiav, vtotrfichpr: Double);
    procedure VerificaPaineis;
    procedure VerificaPaineisTrocos;
    procedure ZeraTrocos;
    procedure registracreditotroco;
    { Private declarations }
  public
    vpCcoChave: string;
    vpCtaTerminal: string;

    vchave: string;
    vpMesChave: String;
    VpPodeConvenio: Boolean;
    VpPodeCartoes: Boolean;
    vcedcodigo: Integer;

    vpTeclaFinalizador: Integer;
    vpValorFinalizador: Double;

    vpDinheiro: Double;
    vpConvenio: Double;
    vpCartaoDebito: Double;
    vpCartaoCredito: Double;
    vpChequeTerceiros: Double;
    vpChequeProprio: Double;
    vpViaBanco: Double;

    { Public declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

  TSelecionaCheques = function(AOwner: TComponent; conexao: tuniconnection; vdtlchave: string; vvalor: string; vschcodigo: Integer;
    vCtaCodigo: string = ''): string;
  TRegistraConvenio = function(AOwner: TComponent; conexao: tuniconnection; vTotal: string; vchave: string; ltechave: String; parcelas: string;
    situacao: string): string;
  TRegistraCartoes = function(AOwner: TComponent; conexao: tuniconnection; vTotal: string; vdtlchave: string): string;
  TRegistraCheques = function(AOwner: TComponent; conexao: tuniconnection; vTotal: string; vdtlchave: string; vcco: string;
    vmeschave: String = ''): string;

  TSelecionaConta = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string): string;

var
  flteerp: Tflteerp;

implementation

{$R *.dfm}

function registraloteerp(AOwner: TComponent; conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; vusrcodigo: string; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True): string;
begin

  try
    flteerp := Tflteerp.Create(AOwner);
    flteerp.zcone := conexao;
    flteerp.consulta.Connection := flteerp.zcone;
    flteerp.vclbcodigo := vusrcodigo;
    flteerp.vlteprincipal := principal;
    flteerp.vltemulta := multa;
    flteerp.vltejuros := juros;
    flteerp.vltedesconto := desconto;
    flteerp.vtrmcodigo := vtrmcodigo;
    flteerp.VpPodeCartoes := vPodeCartoes;

    flteerp.vpTeclaFinalizador := vTeclaFinalizador;
    flteerp.vpValorFinalizador := vValorFinalizador;

    flteerp.VpPodeConvenio := vPodeConvenio;
    flteerp.VpTfdCodigo := StrToInt(vmodo);
    flteerp.vchave := vchave;

    if (flteerp.VpTfdCodigo = tfdVenda) then
      flteerp.vpMesChave := vchave
    else
      flteerp.vpMesChave := '';

    if (flteerp.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
      flteerp.vpCcoChave := vchave
    else
      flteerp.vpCcoChave := '0';

    flteerp.IniciaProcesso;

    if flteerp.vpCcoChave = '0' then
      Result := flteerp.vretornoch + flteerp.vretornocc + flteerp.vretornoap
    else
      Result := Trim(flteerp.vretornoto);

  finally
    FreeAndNil(flteerp);
  end;
end;

exports registraloteerp;

procedure Tflteerp.FormShow(Sender: TObject);
var
  vltechave: string;
begin
  ajustaaltura;

  if edmdaDinheiro.Visible then
    edmdaDinheiro.SetFocus;

  if tmp.FieldByName('troco').AsCurrency <> 0 then

end;

procedure Tflteerp.registradtl;
var
  i: Integer;
  vmdatr: Integer;
  vnomecampo: string;
  vlValor: Double;
begin
  { mda.Close;
    mda.Params[0].AsInteger := VpTfdCodigo;
    mda.Open; }

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Open;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;
  vlValor := 0;
  for i := 0 to Self.tmp.FieldCount - 1 do
  begin
    vmdatr := Self.tmp.Fields[i].Tag;
    vnomecampo := Self.tmp.Fields[i].FieldName;

    (* Se localiza modalidade e valor é maior que zero registra o detalhe *)
    vlValor := Self.tmp.Fields[i].AsCurrency;
    if (mda.Locate('mdacodigo', vmdatr, [])) and (vlValor > 0) then
    begin

      if not(dtl.Locate('mdacodigo', vmdatr, [])) then
        dtl.Append
      else
        dtl.Edit;

      dtlltechave.AsInteger := Self.lteltechave.AsInteger;

      if Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0 then
        dtlcedcodigo.AsInteger := 0;

      if (Pos('mda', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) and ((Pos('troco', LowerCase(Self.tmp.Fields[i].FieldName)) = 0)) then
        dtlcedcodigo.AsInteger := 1;

      if (Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) then
        dtlcedcodigo.AsInteger := 0;

      dtlmdacodigo.AsInteger := vmdatr;

      dtldtlvalor.AsFloat := Self.tmp.Fields[i].AsFloat;
      dtl.Post;

      if (Self.vpCcoChave <> '') and (Self.vpCcoChave <> '0') then
      begin


        clt.Close;
        clt.Params[0].AsString := Self.vpCcoChave;
        clt.Params[1].AsString := Self.lteltechave.AsString;
        clt.Open;

        if clt.IsEmpty then
          clt.Append
        else
          clt.Edit;

        cltccochave.AsString := Self.vpCcoChave;
        cltltechave.AsInteger := Self.lteltechave.AsInteger;
        clt.Post;


      end;
    end;
  end;

  for i := 0 to Self.tmp.FieldCount - 1 do
  begin
    vmdatr := Self.tmp.Fields[i].Tag;
    if psituacao.Caption = 'Incluindo' then
    begin
      if Self.tmp.Fields[i].AsFloat = 0 then
        if (dtl.Locate('mdacodigo', vmdatr, [])) then
          dtl.Delete;
    end;
  end;

  if vpValorFinalizador <> 0 then
    if (edfaltatroco.Field.AsFloat > 0) then

      if bconfirma.Enabled then
        if Self.Visible then
          bconfirma.SetFocus;
end;

procedure Tflteerp.recalculatotais;
var
  i: Integer;
  npan: string;
  vDifeTotais: Double;
  vDifeTotComTroco: Double;
  vSituacao: Boolean;
begin
  if tmp.State <> dsEdit then
    tmp.Edit;

  if vTipoControle > 0 then
  begin
    lte.Edit;
    ltetotal.Field.AsCurrency := Self.lteprincipal.Field.AsFloat + ltemulta.Field.AsCurrency + ltejuros.Field.AsCurrency -
      ltedesconto.Field.AsCurrency;

    vDifeTotais := somavalores - ltetotal.Field.AsCurrency;
    vDifeTotComTroco := (somavalores) - ltetotal.Field.AsCurrency;

    if vDifeTotComTroco < 0 then
      if CompareValue(vDifeTotComTroco, vDifeTotais) = LessThanValue then
      begin
        ZeraTrocos;
        vDifeTotais := ltetotal.Field.AsCurrency - (somavalores);
        vDifeTotComTroco := ltetotal.Field.AsCurrency - (somavalores);
      end;

    tmp.FieldByName('troco').AsCurrency := (somavalores) - ltetotal.Field.AsCurrency;

    case CompareValue(tmp.FieldByName('troco').AsCurrency, 0) of
      (* Trata painéis quando FALTA definição de valores *)
      LessThanValue:
        begin
          (Self.FindComponent('pltroco') as TPanel).Caption := 'Falta informar R$';
          (Self.FindComponent('pltroco') as TPanel).Visible := True;
          (Self.FindComponent('pltroco') as TPanel).Color := clred;
          vSituacao := False;

          if vpValorFinalizador > 0 then
            if Self.Visible then
              edmdaDinheiro.SetFocus;
        end;

      (* Trata painéis quando valor está fechado *)
      EqualsValue:
        begin
          (Self.FindComponent('pltroco') as TPanel).Caption := 'Valor a gerar CRÉDITO R$';
          (Self.FindComponent('pltroco') as TPanel).Visible := False;
          (Self.FindComponent('pltroco') as TPanel).Color := clNavy;
          vSituacao := False;
        end;

      (* Trata painéis quando valor definido está maior - TROCO *)
      GreaterThanValue:
        begin
          (Self.FindComponent('pltroco') as TPanel).Caption := 'Valor a gerar CRÉDITO R$';
          (Self.FindComponent('pltroco') as TPanel).Color := clNavy;
          vSituacao := True;

          if vpValorFinalizador > 0 then
            bconfirma.Enabled := True;
        end;

    end;

    if (VpTfdCodigo = tfdContaCorrente) then
    begin
      if (tmp.FieldByName('troco').AsCurrency = 0) then
        bconfirma.Enabled := True
      else
        bconfirma.Enabled := False;
    end
    else if (VpTfdCodigo = tfdRecebimentos) then
    begin
      if (tmp.FieldByName('troco').AsCurrency >= 0) then
        bconfirma.Enabled := True
      else
        bconfirma.Enabled := False;

    end;

    Application.ProcessMessages;

    if Self.Visible then
      if bconfirma.Enabled then
        bconfirma.SetFocus;
  end
  else
  begin

    if Self.vcedcodigo = cedDebito then
    begin
      (Self.FindComponent('pltroco') as TPanel).Visible := False;
      lte.Edit;
      ltetotal.Field.AsCurrency := somavalores + ltemulta.Field.AsCurrency + ltejuros.Field.AsCurrency - ltedesconto.Field.AsCurrency;
      bconfirma.Enabled := True;

    end
    else
    begin
      if lte.State = dsBrowse then
        lte.Edit;

      ltetotal.Field.AsCurrency := lteprincipal.Field.AsCurrency + ltemulta.Field.AsCurrency + ltejuros.Field.AsCurrency -
        ltedesconto.Field.AsCurrency;
      tmp.FieldByName('troco').AsCurrency := somavalores - ltetotal.Field.AsCurrency;
      ltejuros.ReadOnly := False;
      ltedesconto.ReadOnly := False;

      if tmp.FieldByName('troco').AsCurrency = 0 then
      begin
        (Self.FindComponent('plTrocos') as TPanel).Visible := False;
        VerificaPaineisTrocos;

        bconfirma.Enabled := True;
        mda.First;
        while not mda.Eof do
        begin
          npan := 'plmdatroco' + FormatFloat('00', Self.mdamdacodigo.AsInteger);

          if Self.FindComponent(npan) <> nil then
            if Self.FindComponent(npan) is TPanel then
              (Self.FindComponent(npan) as TPanel).Visible := False;
          mda.Next;
        end;

      end;

    end;

    Self.ajustaaltura;
    Application.ProcessMessages;

    if bconfirma.Enabled then
    begin
      if Self.Visible then
        bconfirma.SetFocus;
    end;
  end;
end;

function Tflteerp.somavalores: Currency;
var
  i: Integer;
  vnomecampo: string;
  vvalores: Double;
begin
  vvalores := 0;
  for i := 0 to tmp.Fields.Count - 1 do
  begin
    vnomecampo := LowerCase(tmp.Fields[i].FieldName);
    if (Pos('mda', vnomecampo) > 0) and (Pos('mdatroco', vnomecampo) = 0) and (vnomecampo <> 'troco') then
    begin
      vvalores := vvalores + tmp.Fields[i].AsCurrency;
    end;
  end;
  Result := vvalores;
end;

procedure Tflteerp.tmpAfterInsert(DataSet: TDataSet);
begin
  tmpmdaDinheiro.AsCurrency := 0;
  tmpmdaChequeProprio.AsCurrency := 0;
  tmpmdaChequeTerceiros.AsCurrency := 0;
  tmpmdaCartaoDebito.AsCurrency := 0;
  tmpmdaCartaoCredito.AsCurrency := 0;
  tmpmdaViaBanco.AsCurrency := 0;
  tmpmdaConvenio.AsCurrency := 0;
  tmpmdaAFaturar.AsCurrency := 0;
  tmptroco.AsCurrency := 0;

end;


procedure Tflteerp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Sender is TDBEdit) then
    if ((Sender as TDBEdit).Field.DataType = ftFloat) or ((Sender as TDBEdit).Field.DataType = ftCurrency) then
      If Key = '.' Then
        Key := ',';

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

procedure Tflteerp.ltedescontoExit(Sender: TObject);
begin
  recalculatotais;
end;

procedure Tflteerp.ltejurosExit(Sender: TObject);
begin
  recalculatotais;
end;

{$REGION 'Chamada das Acões'}

procedure Tflteerp.ExecutaAcao(Sender: TObject);
var
  vmdacodigo: Integer;
  retorno: string;
  vdtlvalor: string;
  vschcodigo: Integer;
  vnomecampo: string;

begin

  retorno := '';

  vmdacodigo := (Sender as TAction).Tag;

  ProcessaTeclasAtalho(vmdacodigo);

  // ajusta valor da modalide pela tecla rapida

  registradtl;
  // identifica a modalidade

  if Self.dtl.Locate('mdacodigo', vmdacodigo, []) then
  begin

    // verifica operacao entre contas correntes
    if VtocCodigo = tocTransferencia then
      vschcodigo := schDepositado
    else
      vschcodigo := tocNormal;

    if vdtlvalor = '' then
      vdtlvalor := '0';

    // processa valores na tabela tmp que precisam de modulos especiais
    case vmdacodigo of
      mdaCartaoDebito:
        begin
          vdtlvalor := edmdaCartaoDebito.Field.AsString;
          retorno := registracartoes(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaCartaoDebito';
        end;
      mdaCartaoCredito:
        begin
          vdtlvalor := edmdaCartaoCredito.Field.AsString;
          retorno := registracartoes(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaCartaoCredito';
        end;
      mdaTrocoChequeTerceiros:
        begin
          vdtlvalor := edmdaChequeTerceiros.Field.AsString;
          retorno := selecionachequesterceiro(Self.dtldtlchave.AsString, vschcodigo);
          vnomecampo := 'mdaTrocoChequeTerceiros';
        end;

      mdaChequeProprio:
        begin
          vdtlvalor := edmdaChequeProprio.Field.AsString;
          retorno := registrachequesproprios(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaChequeProprio';
        end;
      mdaChequeTerceiros:
        begin
          if VpTfdCodigo = tfdContaCorrente then
          begin

            if (VtocCodigo = tocResgate) or (vcedcodigo = cedCredito) then
            begin
              vdtlvalor := edmdaChequeTerceiros.Field.AsString;
              retorno := registracheques(Self.dtldtlchave.AsString, '', vdtlvalor);
              vnomecampo := 'mdaChequeTerceiros';
            end
            else
            begin
              vschcodigo := schLiquidadoPagamento;
              vdtlvalor := edmdaChequeTerceiros.Field.AsString;
              retorno := selecionachequesterceiro(Self.dtldtlchave.AsString, vschcodigo);
              vnomecampo := 'mdaChequeTerceiros';
            end;

          end
          else
          begin
            if VpTfdCodigo = tfdTesouraria then
            begin
              if (vcedcodigo = cedDebito) then
              begin
                vschcodigo := schPendente;
                vdtlvalor := edmdaChequeTerceiros.Field.AsString;
                retorno := selecionachequesterceiro(Self.dtldtlchave.AsString, vschcodigo);
                vnomecampo := 'mdaChequeTerceiros';

              end;

            end
            else
            begin
              if VpTfdCodigo = tfdPagamentos then
              begin
                vschcodigo := schLiquidadoPagamento;
                vdtlvalor := edmdaChequeTerceiros.Field.AsString;
                retorno := selecionachequesterceiro(Self.dtldtlchave.AsString, vschcodigo);
                vnomecampo := 'mdaChequeTerceiros';

              end
              else
              begin
                vdtlvalor := edmdaChequeTerceiros.Field.AsString;
                retorno := registracheques(Self.dtldtlchave.AsString, '', vdtlvalor);
                vnomecampo := 'mdaChequeTerceiros';
              end;
            end;
          end;
        end;
    end;

    if retorno <> '' then
    begin
      retorno := BuscaTroca(retorno, '.', '');

      if tmp.State <> dsEdit then
        tmp.Edit;

      tmp.FieldByName(vnomecampo).AsString := retorno;
    end;

    if (tmp.State IN [dsEdit, dsInsert]) then
      tmp.Post;

    (* Trata abandono dos módulos externos = Cartões, Cheques *)
    if retorno = '0' then
      registradtl;
  end;

  recalculatotais;
end;

procedure Tflteerp.ActCartaoCreditoExecute(Sender: TObject);
begin
  if not plcartaocredito.Visible then
    Exit;

  btcartaocredito.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActCartaoDebitoExecute(Sender: TObject);
begin
  if not plcartaodebito.Visible then
    Exit;

  btcartaodebito.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActChequePropriosExecute(Sender: TObject);
begin
  if not plchequesproprios.Visible then
    Exit;

  btchequeproprios.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActChequeTerceirosExecute(Sender: TObject);
begin
  if not plchequesterceiros.Visible then
    Exit;

  btchequeterceiros.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActConvenioExecute(Sender: TObject);
begin
  if not plconvenio.Visible then
    Exit;

  edmdaConvenio.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActDinheiroExecute(Sender: TObject);
begin
  ExecutaAcao(Sender);
end;

procedure Tflteerp.ActViaBancoExecute(Sender: TObject);
begin
  if not plviabanco.Visible then
    Exit;

  edmdaViaBanco.SetFocus;
  ExecutaAcao(Sender);
end;

{$ENDREGION}

procedure Tflteerp.bcancelaClick(Sender: TObject);
begin
  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vretornoto := '';

  (* Deleta registros de cartões quando usuário abandona Lote *)
  consulta.Close;
  consulta.SQL.Text := 'DELETE FROM ltr, rdc ';
  consulta.SQL.Add('USING ltr ');
  consulta.SQL.Add('INNER JOIN rdc ON ltr.rdcchave = rdc.rdcchave ');
  consulta.SQL.Add('INNER JOIN adc ON rdc.adccodigo = adc.adccodigo ');
  consulta.SQL.Add('INNER JOIN dtl ON ltr.dtlchave = dtl.dtlchave ');
  consulta.SQL.Add('WHERE dtl.ltechave = ' + lteltechave.AsString);
  consulta.ExecSQL;

  if Self.psituacao.Caption = 'Incluindo' then
    lte.Delete;



  // flte.zcone.Rollback;

  Close;
end;

procedure Tflteerp.confirmaregistrolte;
var
  i: Integer;
  vTotAVista: Double;
  vTotAPrazo: Double;

  vmdatr: Integer;

  vTotDin: Double;
  vTotCarDeb: Double;
  vTotCarCred: Double;
  vTotConvenio: Double;
  vTotCheque: Double;
  vTotChProp: Double;
  vTotViaBanco: Double;

  vTotDinTroco: Double;
  vTotChPropTroco: Double;
  vTotChequeTroco: Double;

  vDtlChaveDin: string;
  vDtlChaveDinTr: string;
  vdtlchavech: string;
  vdtlchavechtr: string;

  vdtlchavechTerc: string;
  vdtlchavechTercTr: string;

  vdtlchavecc: string;
  vdtlchavecd: string;
  vdtlchavevb: string;
  vDtlChaveConvenio: string;

  vTotRegistraCCO: Double;

  vTotalTroco: Double;
  vlCcoChave: string;
begin

  cfg.Close;
  cfg.Open;

  { mda.Close;
    mda.Params[0].AsInteger := VpTfdCodigo;
    mda.Open; }

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Open;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;

  for i := 0 to Self.tmp.FieldCount - 1 do
  begin
    vmdatr := Self.tmp.Fields[i].Tag;

    if mda.Locate('mdacodigo', vmdatr, []) then
      if Self.tmp.Fields[i].AsFloat > 0 then
      begin
        if not(dtl.Locate('mdacodigo', vmdatr, [])) then
          dtl.Append
        else
          dtl.Edit;

        dtlltechave.AsInteger := Self.lteltechave.AsInteger;

        if Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0 then
          dtlcedcodigo.AsInteger := 0;

        if (Pos('mda', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) and ((Pos('troco', LowerCase(Self.tmp.Fields[i].FieldName)) = 0)) then
          dtlcedcodigo.AsInteger := 1;

        if (Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) then
          dtlcedcodigo.AsInteger := 0;

        dtlmdacodigo.AsInteger := vmdatr;

        dtldtlvalor.AsFloat := Self.tmp.Fields[i].AsFloat;
        dtl.Post;
      end;
  end;

  vTotDin := 0;
  vTotCarDeb := 0;
  vTotCarCred := 0;
  vTotConvenio := 0;
  vTotCheque := 0;
  vTotChProp := 0;
  vTotViaBanco := 0;

  vTotDinTroco := 0;
  vTotChPropTroco := 0;
  vTotChequeTroco := 0;

  vTotalTroco := 0;

  dtl.First;
  while not dtl.Eof do
  begin
    if mda.Locate('mdacodigo', Self.dtlmdacodigo.AsInteger, []) then
    begin

      if (mdamdacodigo.AsInteger IN [mdaDinheiro, mdaTrocoDinheiro]) then // dinheiro
        if dtlcedcodigo.AsInteger = cedCredito then // a credito será troco
        begin
          vTotDin := vTotDin + Self.dtldtlvalor.AsFloat;
          vDtlChaveDin := Self.dtldtlchave.AsString;
        end
        else
        begin
          vTotDinTroco := vTotDinTroco + Self.dtldtlvalor.AsFloat;
          vDtlChaveDinTr := Self.dtldtlchave.AsString;
        end;

      if mdamdacodigo.AsInteger = mdaCartaoCredito then // cartoes de credito
      begin
        vTotCarCred := vTotCarCred + Self.dtldtlvalor.AsFloat;
        vdtlchavecc := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaCartaoDebito then // cartoes de Debito
      begin
        vTotCarDeb := vTotCarDeb + Self.dtldtlvalor.AsFloat;
        vdtlchavecd := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaViaBanco then // Via Banco
      begin
        vTotViaBanco := vTotViaBanco + Self.dtldtlvalor.AsFloat;
        vdtlchavevb := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaConvenio then // Convenio
      begin
        vTotConvenio := vTotConvenio + Self.dtldtlvalor.AsFloat;
        vDtlChaveConvenio := Self.dtldtlchave.AsString;
      end;



      // registro de cheques

      if (mdamdacodigo.AsInteger = mdaChequeProprio) or (mdamdacodigo.AsInteger = mdaTrocoChequeProprio) then // cheques
        if dtlcedcodigo.AsInteger = cedCredito then // a credito será
        begin
          vTotCheque := vTotCheque + Self.dtldtlvalor.AsFloat;
          vdtlchavech := Self.dtldtlchave.AsString;
        end
        else
        begin
          vTotChProp := vTotChProp + Self.dtldtlvalor.AsFloat; // a débito
          vdtlchavech := Self.dtldtlchave.AsString;
        end;

      if (mdamdacodigo.AsInteger = mdaChequeTerceiros) or (mdamdacodigo.AsInteger = mdaTrocoChequeTerceiros) then // cheques
        if dtlcedcodigo.AsInteger = cedCredito then // a credito será
        begin
          vTotCheque := vTotCheque + Self.dtldtlvalor.AsFloat;
          vdtlchavechTerc := Self.dtldtlchave.AsString;
        end
        else
        begin
          vTotChequeTroco := vTotChequeTroco + Self.dtldtlvalor.AsFloat; // a débito
          vdtlchavechTercTr := Self.dtldtlchave.AsString;
        end;


      // acumula totais a vista e a prazo

      if mdamdacodigo.AsInteger <> mdaConvenio then // nao é convenio
      begin
        if dtlcedcodigo.AsInteger = cedCredito then // a credito será
          vTotAVista := vTotAVista + Self.dtldtlvalor.AsFloat;
      end
      else
      begin
        vTotAPrazo := vTotAPrazo + Self.dtldtlvalor.AsFloat; // soma para total a prazo
      end;

    end;
    dtl.Next;
  end;


  // ligaçao dos cheques ao lote

  dtl.First;
  while not dtl.Eof do
  begin
    if vTotCheque = 0 then
      if mda.Locate('mdacodigo', Self.dtlmdacodigo.AsInteger, []) then
        if (mdamdacodigo.AsInteger IN [mdaChequeProprio, mdaChequeTerceiros, mdaTrocoChequeProprio, mdaTrocoChequeTerceiros]) then // cheques
        begin
          if dtlcedcodigo.AsInteger = cedCredito then // a credito será
            vTotCheque := vTotCheque + Self.dtldtlvalor.AsFloat
          else
          begin
            vTotChPropTroco := vTotChPropTroco + Self.dtldtlvalor.AsFloat;
            vdtlchavechtr := Self.dtldtlchave.AsString;
          end;
        end;

    dtl.Next;
  end;

  case VpTfdCodigo of

    tfdVenda:
      begin
        if ((vTotChequeTroco + vTotDinTroco + vTotAVista + vTotCheque) > 0) { and (vTotCarDeb = 0) and (vTotCarCred = 0) } then
          VendaAVistas(vTotChequeTroco, vTotDinTroco, vTotAVista, vTotCheque);

        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo);
        end;

        vTotRegistraCCO := vTotDin + vTotCheque + vTotChProp;
        if vTotRegistraCCO > 0 then
        begin
          { *tratativa diferenciada para cheque ser registrado no valor total* }
          if vTotCheque > 0 then
          begin
            vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo);



            { * envia o valor 0 para ser identificado como um registro de troco para cheques* }
            vlCcoChave := RegistraCCO('', 0, vTotDinTroco, VpTfdCodigo);


          end
          else
          begin

            // vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo);
            vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo);


          end;

        end;
        if vTotCarDeb > 0 then
        begin

          if vpValorFinalizador > 0 then
          begin
            registracartoes(vdtlchavecd, FloatToStr(vTotCarDeb));

          end;

          RegistraCartao(vdtlchavecd, vTotCarDeb);
        end;

        if vTotCarCred > 0 then
        begin
          if vpValorFinalizador > 0 then
            registracartoes(vdtlchavecc, FloatToStr(vTotCarCred));

          RegistraCartao(vdtlchavecc, vTotCarCred);
        end;

      end;

    tfdCompras:
      begin

        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo);
        end;

        if vTotDin > 0 then
        begin
          // vlCcoChave := RegistraCCO('', vTotDin + vTotCheque + vTotChProp, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo);
          vlCcoChave := RegistraCCO('', vTotDin + vTotCheque + vTotChProp, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo);

        end;

      end;

    tfdRecebimentos:
      begin

        vTotRegistraCCO := vTotDin + vTotCheque + vTotChProp;

        if vTotRegistraCCO > 0 then
        begin


          { *tratativa diferenciada para cheque ser registrado no valor total* }
          if vTotCheque > 0 then
          begin
            vpCtaCodigo := '';
            vpCtaCodigo := selecionaconta;
            if vpCtaCodigo <> '' then
            begin
              vlCcoChave := RegistraCCO('', vTotCheque, 0, VpTfdCodigo, vpCtaCodigo);


               if vTotDin > 0 then
                begin
                vlCcoChave := RegistraCCO('', vTotDin, 0, VpTfdCodigo, vpCtaCodigo);
                end;

              { * envia o valor 0 para ser identificado como um registro de troco para cheques* }
              vlCcoChave := RegistraCCO('', 0, vTotDinTroco, VpTfdCodigo, vpCtaCodigo);

            end;
          end
          else
          begin
            vpCtaCodigo := selecionaconta;
            vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);


          end;
        end;

        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo);
        end;

        if vTotCarDeb > 0 then
          RegistraCartao(vdtlchavecd, vTotCarDeb);

        if vTotCarCred > 0 then
          RegistraCartao(vdtlchavecc, vTotCarCred);

      end;

    tfdPagamentos:
      begin

        vTotRegistraCCO := vTotDin;
        if vTotRegistraCCO > 0 then
        begin

          // RegistraCCO('', vTotRegistraCCO, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);

          { *tratativa diferenciada para cheque ser registrado no valor total* }
          if vTotCheque > 0 then
          begin
            vpCtaCodigo := '';
            vpCtaCodigo := selecionaconta;
            if vpCtaCodigo <> '' then
            begin

              vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);
              { * envia o valor 0 para ser identificado como um registro de troco para cheques* }
              vlCcoChave := RegistraCCO('', 0, vTotDinTroco, VpTfdCodigo, vpCtaCodigo);
            end;
          end
          else
          begin
            vpCtaCodigo := '';
            vpCtaCodigo := selecionaconta;
            if vpCtaCodigo <> '' then
            begin
              vlCcoChave := RegistraCCO('', vTotRegistraCCO, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);
            end;
          end;

        end;
        vTotRegistraCCO := vTotCheque + vTotChProp;
        if vTotRegistraCCO > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotRegistraCCO, 0, VpTfdCodigo);
        end;
        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo);
        end;

        if vTotCarDeb > 0 then
          RegistraCartao(vdtlchavecd, vTotCarDeb);

        if vTotCarCred > 0 then
          RegistraCartao(vdtlchavecc, vTotCarCred);

      end;
  end;

  if (VpTfdCodigo = tfdPagamentos) then
  begin
    // VendaAPrazo(vdtlchavecc, vTotChTroco, vPodeCarCred, vTotDinTroco);
  end
  else
  begin
    vretornoch := '00000000';
    vretornocc := '00000000';
  end;

  if (Self.vpCcoChave <> '0') and (Self.vpCcoChave <> '') then
  begin

    clt.Close;
    clt.Params[0].AsString := Self.vpCcoChave;
    clt.Params[1].AsString := Self.lteltechave.AsString;
    clt.Open;

    if clt.IsEmpty then
      clt.Append
    else
      clt.Edit;

    cltccochave.AsString := Self.vpCcoChave;
    cltltechave.AsInteger := Self.lteltechave.AsInteger;
    clt.Post;

    vretornoto := format('%12.2f', [Self.somavalores]);
  end;

  // registro do movimento financeiro do convenio
  if (vTotAPrazo > 0) and (cfgcfgusacre.AsInteger = 1) then
  begin
    vretornoap := registraconvenio(vchave, BuscaTroca(FloatToStr(vTotAPrazo), ',', '.'));
    if vretornoap = '' then
      vretornoap := '00000000'
    else
    begin
      vretornoap := BuscaTroca(vretornoap, ',', '');

      vretornoap := FormatFloat('00000000', StrToFloat(vretornoap));

    end;
  end
  else
    vretornoap := '00000000';

  if (vTotAPrazo > 0) then
  begin
    if (StrToInt(vretornoap) > 0) then
    begin
      Close;
    end
    else
    begin
      if cfgcfgusacre.AsInteger = 1 then
      begin
        if Self.psituacao.Caption = 'Incluindo' then
        begin
          dtl.Close;
          dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
          dtl.Open;

          // exclui detalhe que é convenio, pois foi cancelada a tela de definicao de parcelas
          if dtl.Locate('dtlchave', vDtlChaveConvenio, []) then
            dtl.Delete;

        end;
      end
      else
      begin
        removedtlzerado;
        registracreditotroco;
        Close;
      end;
    end;
  end
  else
  begin
    removedtlzerado;
    registracreditotroco;

    Close;
  end;

  vTotalTroco := vTotDinTroco + vTotChPropTroco + vTotChequeTroco;

end;

procedure Tflteerp.registracreditotroco;
begin
  rcr.Open;

  if edfaltatroco.Field.AsFloat > 0 then
  begin
    if VpTfdCodigo = tfdRecebimentos then
    begin
      if edfaltatroco.Field.AsFloat > Self.tmpmdaDinheiro.AsFloat then
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT che.etdcodigo, dtl.ltechave FROM ltc ';
        consulta.SQL.Add('INNER JOIN che ON ltc.chechave = che.chechave ');
        consulta.SQL.Add('INNER JOIN dtl ON ltc.dtlchave = dtl.dtlchave ');
        consulta.SQL.Add('where dtl.ltechave=' + Self.lteltechave.AsString);
        consulta.Open;

        if not consulta.IsEmpty then
        begin

          rcr.Append;
          rcretdcodigo.AsInteger := consulta.Fields[0].AsInteger;
          rcrcedcodigo.AsInteger := 1;
          rcrrcrvalor.AsCurrency := edfaltatroco.Field.AsCurrency;
          rcrrcrdata.AsFloat := date;
          rcrrcrhistorico.AsString := 'Troco Recebimentos';
          rcrtcrcodigo.AsInteger := 1;
          rcr.Post;
        end;

      end;
    end;
  end;

  { }
end;

procedure Tflteerp.bconfirmaClick(Sender: TObject);
begin
  if lte.State = dsBrowse then
    lte.Edit;

  ltelteprincipal.AsFloat := ltelteprincipal.AsFloat + (vpDinheiro + vpCartaoDebito + vpCartaoCredito + vpChequeProprio + vpChequeTerceiros +
    vpConvenio);

  lteltetotal.AsFloat := ltelteprincipal.AsFloat + lteltemulta.AsFloat + lteltejuros.AsFloat - lteltedesconto.AsFloat;

  lte.Post;

  if tmp.State = dsBrowse then
    tmp.Edit;

 { if (VpTfdCodigo = tfdRecebimentos) or (VpTfdCodigo = tfdPagamentos) then
  begin
    if tmptroco.AsFloat > 0 then
    begin
      if tmpmdaDinheiro.AsFloat > tmptroco.AsFloat then
      begin
        tmpmdaDinheiro.AsFloat := tmpmdaDinheiro.AsFloat - tmptroco.AsFloat ;
      end;
    end;
  end
  else
  begin }

    tmpmdaDinheiro.AsFloat := tmpmdaDinheiro.AsFloat { + vpDinheiro };
{  end;}

  tmpmdaCartaoDebito.AsFloat := tmpmdaCartaoDebito.AsFloat { + vpCartaoDebito };
  tmpmdaCartaoCredito.AsFloat := tmpmdaCartaoCredito.AsFloat { + vpCartaoCredito };
  tmpmdaChequeProprio.AsFloat := tmpmdaChequeProprio.AsFloat { + vpChequeProprio };
  tmpmdaChequeTerceiros.AsFloat := tmpmdaChequeTerceiros.AsFloat { + vpChequeTerceiros };
  tmpmdaConvenio.AsFloat := tmpmdaConvenio.AsFloat { + vpConvenio };

  confirmaregistrolte;
end;

procedure Tflteerp.RegistraCartao(vdtlchave: String; vTotal: Double);
var
  vlEtdCodigo: Integer;
  vlValorCartao: Double;
  vlRdcData: TDate;
  vlQtdParcelas: Integer;
  vlTitCodigo: Integer;
  vlNrAuto: string;
  vlMdaCodigo: Integer;

  i: Integer;
  vlCarCodigo: string;
  vlBcoCodigo: string;

  vlVlrParcela: Double;
  vlTotParcelas: Double;

  vCarDiasMulta: string;
  vCarPercMulta: string;
  vCarPercMorames: string;
  vCarDiasdesc: string;
  vCarPercdesc: string;
begin
  vlValorCartao := 0;
  vlVlrParcela := 0;
  vlTotParcelas := 0;

  consulta.Close;
  consulta.SQL.Text := 'SELECT cfgportadorpadrao FROM cfgmcre';
  consulta.Open;

  vlCarCodigo := consulta.Fields[0].AsString;

  consulta.Close;
  consulta.SQL.Text := 'SELECT bcocodigo, cardiasmulta, carpercmulta, carpercmorames, cardiasdesc, carpercdesc FROM car ';
  consulta.SQL.Add('WHERE carcodigo = ' + vlCarCodigo);
  consulta.Open;

  vlBcoCodigo := consulta.Fields[0].AsString;
  vCarDiasMulta := consulta.Fields[1].AsString;
  vCarPercMulta := consulta.Fields[2].AsString;
  vCarPercMorames := consulta.Fields[3].AsString;
  vCarDiasdesc := consulta.Fields[4].AsString;
  vCarPercdesc := consulta.Fields[5].AsString;

  if (Self.cfgcfgusaadc.AsInteger IN [1, 2]) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT adc.etdcodigo, rdc.rdcdata, rdc.rdcnrauto, rdc.rdcvalor, rdc.rdcparcelas, dtl.mdacodigo FROM ltr ';
    consulta.SQL.Add('INNER JOIN rdc ON ltr.rdcchave = rdc.rdcchave ');
    consulta.SQL.Add('INNER JOIN adc ON rdc.adccodigo = adc.adccodigo ');
    consulta.SQL.Add('INNER JOIN dtl ON ltr.dtlchave = dtl.dtlchave');
    consulta.SQL.Add('WHERE ltr.dtlchave = ' + vdtlchave);
    consulta.Open;

    while not consulta.Eof do
    begin
      vlEtdCodigo := Self.consulta.Fields[0].AsInteger;
      vlRdcData := Self.consulta.Fields[1].AsFloat;
      vlNrAuto := Self.consulta.Fields[2].AsString;
      vlValorCartao := Self.consulta.Fields[3].AsFloat;
      vlQtdParcelas := Self.consulta.Fields[4].AsInteger;
      vlMdaCodigo := Self.consulta.Fields[5].AsInteger;
      vlTotParcelas := 0;

      vlTitCodigo := 0;
      vlTitCodigo := AjustaTit('', vlEtdCodigo, 'Aut.: ' + vlNrAuto, vlValorCartao, date, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao,
        vlQtdParcelas, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

      if vlTitCodigo > 0 then
        for i := 1 to vlQtdParcelas do
        begin
          vlVlrParcela := TBTruncate(vlValorCartao / vlQtdParcelas, 2);
          vlTotParcelas := vlTotParcelas + vlVlrParcela;

          if i = vlQtdParcelas then
            if vlTotParcelas <> vlValorCartao then
              vlVlrParcela := vlVlrParcela + (vlValorCartao - vlTotParcelas);

          AjustaRfi(IntToStr(vlTitCodigo), IncDay(vlRdcData, IfThen(vlMdaCodigo = mdaCartaoDebito, 1, (30 * i))), i, vlVlrParcela);
        end;

      consulta.Next;
    end;
  end
  else
  begin

    consulta.Close;
    consulta.SQL.Text := ' SELECT adc.etdcodigo FROM adc ';
    consulta.Open;

    vlEtdCodigo := Self.consulta.Fields[0].AsInteger;
    vlValorCartao := vpValorFinalizador;
    vlRdcData := date + 30;
    vlValorCartao := vpValorFinalizador;
    vlNrAuto := '';
    vlQtdParcelas := 1;

    vlTitCodigo := 0;
    vlTitCodigo := AjustaTit('', vlEtdCodigo, 'Aut.: ' + vlNrAuto, vlValorCartao, date, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao,
      vlQtdParcelas, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

    if vlTitCodigo > 0 then
    begin
      consulta.First;
      i := 0;
      while not consulta.Eof do
      begin
        i := i + 1;
        AjustaRfi(IntToStr(vlTitCodigo), vlRdcData, i, vlValorCartao);
        consulta.Next;
      end;

      consulta.Close;
    end;
  end;

end;

procedure Tflteerp.bfecharClick(Sender: TObject);
begin
  if tmp.State <> dsEdit then
    tmp.Edit;

  tmpmdaDinheiro.AsCurrency := 0;
  tmpmdaChequeProprio.AsCurrency := 0;
  tmpmdaChequeTerceiros.AsCurrency := 0;
  tmpmdaCartaoDebito.AsCurrency := 0;
  tmpmdaCartaoCredito.AsCurrency := 0;
  tmpmdaViaBanco.AsCurrency := 0;
  tmpmdaConvenio.AsCurrency := 0;
  tmpmdaAFaturar.AsCurrency := 0;
  tmptroco.AsCurrency := 0;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;

  registradtl;
  Self.ajustaaltura;

  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vretornoto := '';

end;

procedure Tflteerp.Pagamento;
begin
  { }
end;

procedure Tflteerp.Recebimento;
begin
  { }
end;

function Tflteerp.AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
begin

  if (vpCcoChave = '0') or (vpCcoChave = '') then
  begin
    mes.Close;
    mes.Params[0].AsString := Self.vchave;
    mes.Open;
  end;

  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo, tit.titvalor, tit.titnumero, tit.titemissao, ';
  tit.SQL.Add('tit.titvalorparcela, tit.titparcelas, tit.titvctoinicial, tit.tfdcodigo, tit.srfcodigo,');
  tit.SQL.Add('tit.tficodigo, tit.tithora, tit.clbcodigo, tit.tithistorico, tit.flacodigo, tit.bcocodigo,');
  tit.SQL.Add('tit.carcodigo, tit.titprevisao, tit.moecodigo, tit.titmoradia, tit.titdiasmulta, tit.titvalomulta,');
  tit.SQL.Add('tit.titpercmesmora, tit.titvalodesc, tit.titdiasdesc, tit.titpercmulta ');
  tit.SQL.Add('FROM tit ');
  tit.SQL.Add('WHERE tit.titcodigo=' + vtitcodigo);
  tit.Open;

  if not tit.IsEmpty then
  begin

    rfi.Open;
    rfi.Append;
    rfititcodigo.AsString := vtitcodigo;
    rfietdcodigo.AsInteger := titetdcodigo.AsInteger;
    rfitfdcodigo.AsInteger := tittfdcodigo.AsInteger;
    rfiflacodigo.AsInteger := titflacodigo.AsInteger;
    rfitficodigo.AsInteger := tittficodigo.AsInteger;
    rfibcocodigo.AsString := titbcocodigo.AsString;
    rficarcodigo.AsInteger := titcarcodigo.AsInteger;
    rfirfiemissao.AsFloat := tittitemissao.AsFloat;
    rfirfivencimento.AsFloat := vVencimento;
    rfirfinumero.AsString := tittitnumero.AsString + '-' + IntToStr(vParcela);
    rfirfivalor.AsFloat := vvalor;
    rfirfihistorico.AsString := tittithistorico.AsString;
    rfisrfcodigo.AsInteger := titsrfcodigo.AsInteger;
    rfifrrcodigo.AsInteger := 1;
    rfirfimoradia.AsFloat := 0;
    rfirfipercmesmora.AsFloat := 0;
    rfirfirepetir.AsInteger := 0;
    rfirfiprevisao.AsInteger := 0;
    rfirfivalorparcela.AsFloat := vvalor;
    rfimoecodigo.AsInteger := 1;
    rfi.Post;

    if VpTfdCodigo = tfdVenda then
    begin
      rfm.Open;
      rfm.Append;
      rfmrfichave.AsInteger := Self.rfirfichave.AsInteger;
      rfmmeschave.AsString := vchave;
      rfm.Post;
    end;

    // registro
    mfi.Open;
    mfi.Append;
    mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
    mfitmfcodigo.AsInteger := tmfAReceber;
    mfimoecodigo.AsInteger := 1;
    mfimfivalor.AsFloat := rfirfivalor.AsFloat;
    mfimfidata.AsFloat := date;
    mfimfihistorico.AsString := '';
    mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
    mfimfiparcela.AsInteger := 0;
    mfi.Post;

    mlt.Open;
    mlt.Append;
    mltmfichave.AsInteger := Self.mfimfichave.AsInteger;
    mltltechave.AsInteger := Self.lteltechave.AsInteger;
    mlt.Post;

    Result := rfirfichave.AsInteger;
  end;

end;

function Tflteerp.AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao: TDate;
  vtitvctoinicial: TDate; vtfdcodigo: Integer; vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer;
  vtitmoradia: Double; vtitvalomulta: Double; vtitpercmesmora: Double; vtitvalodesc: Double; vtitpercmulta: Double; vtitpercmesmulta: Double;
  vbcocodigo: String; vcarcodigo: Integer; vtitdiasmulta: Integer; vtitdiasdesc: Integer): Integer;

begin

  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo, tit.titvalor, tit.titnumero, tit.titemissao, ';
  tit.SQL.Add('tit.titvalorparcela, tit.titparcelas, tit.titvctoinicial, tit.tfdcodigo, tit.srfcodigo,');
  tit.SQL.Add('tit.tficodigo, tit.tithora, tit.clbcodigo, tit.tithistorico, tit.flacodigo, tit.bcocodigo,');
  tit.SQL.Add('tit.carcodigo, tit.titprevisao, tit.moecodigo, tit.titmoradia, tit.titdiasmulta, tit.titvalomulta,');
  tit.SQL.Add('tit.titpercmesmora, tit.titvalodesc, tit.titdiasdesc, tit.titpercmulta ');
  tit.SQL.Add('FROM tit ');

  if (vtitcodigo <> '') and (vtitcodigo <> '0') then
  begin
    tit.SQL.Add('WHERE tit.titcodigo=' + vtitcodigo);
    tit.Open;
    tit.Edit;
  end
  else
  begin
    tit.SQL.Add('limit 1');
    tit.Open;
    tit.Append;
  end;

  tittithora.AsFloat := time;
  titclbcodigo.AsString := Self.vclbcodigo;
  tittitprevisao.AsInteger := 0;
  titflacodigo.AsInteger := 1;
  titmoecodigo.AsInteger := 1;
  titsrfcodigo.AsInteger := srfEmAberto;
  titetdcodigo.AsInteger := vetdcodigo;
  tittitnumero.AsString := vtitnumero;
  tittitvalor.AsFloat := vtitvalor;
  tittitemissao.AsFloat := vtitemissao;
  tittitvctoinicial.AsFloat := vtitvctoinicial;
  tittfdcodigo.AsInteger := vtfdcodigo;
  tittficodigo.AsInteger := vtficodigo;
  tittithistorico.AsString := vtithistorico;
  tittitvalorparcela.AsFloat := vtitvalorparcela;
  tittitparcelas.AsInteger := vtitparcelas;
  tittitmoradia.AsFloat := vtitmoradia;
  tittitvalomulta.AsFloat := vtitvalomulta;
  tittitpercmesmora.AsFloat := vtitpercmesmora;
  tittitvalodesc.AsFloat := vtitvalodesc;
  tittitpercmulta.AsFloat := vtitpercmulta;
  titbcocodigo.AsString := vbcocodigo;
  titcarcodigo.AsInteger := vcarcodigo;
  tittitdiasmulta.AsInteger := vtitdiasmulta;
  tittitdiasdesc.AsInteger := vtitdiasdesc;
  tit.Post;

  Result := tittitcodigo.AsInteger;
end;

procedure Tflteerp.removedtlzerado;
begin
  { if psituacao.Caption = 'Incluindo' then
    begin }

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Open;
  while not dtl.Eof do
  begin
    if Self.dtldtlvalor.AsFloat = 0 then
      dtl.Delete
    else
      dtl.Next;
  end;
  { end; }
end;

procedure Tflteerp.ajustapaineis;
var
  plinfo: TPanel;

  btsele: TSpeedButton;
  dbvalor: TDBEdit;
  vtctcodigo: Integer;

  vfiltromda: string;
  vfiltrocar: string;

  vnomecampo: string;

begin
  try

    vtctcodigo := 0;

    if (Self.vpCcoChave <> '') and (vpCcoChave <> '0') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select tctcodigo,toccodigo,cco.cedcodigo from cta, cco where cta.ctacodigo=cco.ctacodigo and ccochave=' + Self.vpCcoChave;
      consulta.Open;

      vtctcodigo := Self.consulta.Fields[0].AsInteger;
      VtocCodigo := Self.consulta.Fields[1].AsInteger;
      vcedcodigo := Self.consulta.Fields[2].AsInteger;
      consulta.Close;
    end;

    if VtocCodigo = tocTransferencia then
      plvalores.Visible := False
    else if VtocCodigo = tocResgate then
      plvalores.Visible := True
    else
      plvalores.Visible := True;

    mda.Close;
    // mda.Params[0].AsInteger := VpTfdCodigo;
    // mda.Filtered := False;

    vfiltromda := '';

    if not VpPodeConvenio then
    begin
      vfiltromda := 'mda.mdacodigo <> ' + IntToStr(mdaConvenio) + ' AND ';
    end;
    vfiltrocar := '';
    if not VpPodeCartoes then
    begin
      vfiltrocar := ' (mda.mdacodigo <> ' + IntToStr(mdaCartaoDebito) + ') and (mda.mdacodigo<>' + IntToStr(mdaCartaoCredito) + ') and ';
    end;

    if vtctcodigo <> 0 then
    begin

      if vfiltromda <> '' then
      begin
        vfiltromda := vfiltromda;
      end;

      if vfiltrocar <> '' then
      begin
        if vfiltromda <> '' then
        begin
          vfiltrocar := vfiltrocar + ' and ';
        end;
      end;

      case vtctcodigo of
        tctContaBancaria:
          vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaChequeProprio) + ' or mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ') and ';
        tctContaCaixa:
          vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ' or  mda.mdacodigo = ' + IntToStr(mdaChequeTerceiros) +
            ' or  mda.mdacodigo = ' + IntToStr(mdaTrocoDinheiro) + ' or  mda.mdacodigo = ' + IntToStr(mdaTrocoChequeProprio) + ' or  mda.mdacodigo = '
            + IntToStr(mdaTrocoChequeTerceiros) + ') and ';
      else
        vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ') and ';
      end;

    end;

    case (Self.VpTfdCodigo) of
      tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito, tfdTesouraria:
        begin
          PlValor.Visible := False;
          plJuros.Visible := False;
          PlMulta.Visible := False;
          PlDesconto.Visible := False;
          plliquido.Visible := True;
          plvalores.Height := 120;
          if (VtocCodigo = tocResgate) and (vcedcodigo = cedCredito) then
          begin
            PlValor.Visible := True;
            lteprincipal.Visible := True;

            PlMulta.Visible := True;
            lltemulta.Visible := True;

            lltejuros.Visible := True;
            plJuros.Visible := True;

            PlDesconto.Visible := True;
            plliquido.Visible := True;
            plvalores.Height := 230;
          end;
        end;
    else
      begin
        PlValor.Visible := True;
        if Self.VpTfdCodigo = tfdVenda then
        begin
          PlMulta.Visible := False;
          plJuros.Visible := False;
          plvalores.Height := 200;
        end
        else
        begin
          PlMulta.Visible := True;
          plJuros.Visible := True;
          plvalores.Height := 230;
        end;

        PlDesconto.Visible := True;
        plliquido.Visible := True;

      end;
    end;

    mda.Close;
    mda.SQL.Text := 'select ffd.mdacodigo, mdaidentificacao, ffd.tfdcodigo from mda, ffd where mda.mdacodigo=ffd.mdacodigo and ';
    mda.SQL.Add(vfiltrocar + vfiltromda + ' (ffd.tfdcodigo=' + IntToStr(VpTfdCodigo) + ')');
    mda.Open;
    mda.First;

    if (Self.VpTfdCodigo = tfdVenda) then
    begin
      plchequesproprios.Visible := False;
      plviabanco.Visible := False;
    end;

    Self.Width := 435;

    tmp.CreateDataSet;
    tmp.Open;
    tmp.Append;

    Self.dtl.First;
    while not dtl.Eof do
    begin

      if Self.FindComponent('dbmda' + FormatFloat('00', Self.dtlmdacodigo.AsInteger)) <> nil then
      begin
        dbvalor := Self.FindComponent('dbmda' + FormatFloat('00', Self.dtlmdacodigo.AsInteger)) as TDBEdit;
        dbvalor.Field.AsFloat := Self.dtldtlvalor.AsFloat;
      end;

      if Self.FindComponent('dbmdatroco' + FormatFloat('00', Self.dtlmdacodigo.AsInteger)) <> nil then
      begin
        dbvalor := Self.FindComponent('dbmdatroco' + FormatFloat('00', Self.dtlmdacodigo.AsInteger)) as TDBEdit;
        dbvalor.Field.AsFloat := Self.dtldtlvalor.AsFloat;
      end;

      dtl.Next;
    end;

    // verifica se esta ativo a condicao de usar cartoes
    cfg.Close;
    cfg.Open;

    if (Self.cfgcfgusaadc.AsInteger in [1, 2]) then
    begin
      adc.Close;
      adc.Open;

      if adc.IsEmpty then
      begin
        Self.plcartaocredito.Visible := False;
        Self.plcartaodebito.Visible := False;
      end;
    end;

    if not VpPodeCartoes then
    begin
      Self.plcartaocredito.Visible := False;
      Self.plcartaodebito.Visible := False;
    end;

    if cfgcfgusacre.AsInteger = 1 then
    begin
      if (vpCcoChave = '0') or (vpCcoChave = '') then
      begin
        mes.Close;
        mes.Params[0].AsString := Self.vchave;
        mes.Open;
      end;

      if not VpPodeConvenio then
      begin
        Self.plconvenio.Visible := False;
        ActConvenio.Enabled := False;
      end;
    end
    else
    begin
      plconvenio.Caption := 'Venda Identificada R$';
      Self.plconvenio.Visible := True;
    end;

    VerificaPaineis;

    if vtctcodigo = tctContaBancaria then
      plchequesterceiros.Visible := False;

    Self.ajustaaltura;

  finally
  end;
end;

procedure Tflteerp.aosair(Sender: TObject);
var
  vmdacodigo: Integer;
  vlNomeCampo: string;
begin
  registradtl;

  recalculatotais;

  if bconfirma.Enabled then
  begin
    if Self.Visible then
      bconfirma.SetFocus;
    (* Gabriel - 15/07/2014 - 19:57 - Adicionei condição para Respeitar opções do ATENDIMENTO *)
    if vpValorFinalizador > 0 then
      if edfaltatroco.Field.AsFloat = 0 then
        bconfirma.Click;
  end;

end;


{$REGION 'Chama Bpls'}

function Tflteerp.registracheques(vchave: string; vcco: string; vvalor: string): string;
var
  registra: TRegistraCheques;
begin
  pack := LoadPackage('modulos\mche.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('RegistraCheques'));

      if Assigned(registra) then
        Result := registra(Application, zcone, vvalor, vchave, vcco, vpMesChave);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

function Tflteerp.selecionaconta: string;
var
  seleciona: TSelecionaConta;
begin

  pack := LoadPackage('modulos\mcta.bpl');
  if pack <> 0 then
    try
      @seleciona := GetProcAddress(pack, PChar('formu'));

      if Assigned(seleciona) then
        Result := seleciona(Application, Self.zcone, vclbcodigo, 1, '', '', 'selecionar');

    finally
      // DoUnLoadPackage(pack);
    end;
end;

function Tflteerp.selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
var
  seleciona: TSelecionaCheques;
begin

  pack := LoadPackage('modulos\msch.bpl');
  if pack <> 0 then
    try
      @seleciona := GetProcAddress(pack, PChar('selecionacheques'));

      if Assigned(seleciona) then
        Result := seleciona(Application, zcone, vchave, tmp.FieldByName('troco').AsString, vschcodigo);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tflteerp.ZeraTrocos;
var
  i: Integer;
  vnomecampo: string;
  vDsState: TDataSetState;
begin
  vDsState := tmp.State;

  for i := 0 to tmp.Fields.Count - 1 do
  begin
    vnomecampo := LowerCase(tmp.Fields[i].FieldName);
    if (Pos('mdatroco', vnomecampo) > 0) then
    begin
      if tmp.State <> dsEdit then
        tmp.Edit;
      tmp.Fields[i].AsFloat := 0;
      tmp.Post;
    end;
  end;

  registradtl;

  case vDsState of
    dsEdit:
      tmp.Edit;
  end;
end;

procedure Tflteerp.VerificaPaineisTrocos;
begin
  Self.ajustaaltura;
end;


procedure Tflteerp.VerificaPaineis;
var
  i: Integer;
begin
  { * oculta os paineis que nao estao registrados na tabela ffd
    filtrado pelo TFDCODIGO - tipo de movimento financeiro  * }
  ffd.Close;
  ffd.Params[0].AsInteger := VpTfdCodigo;
  ffd.Open;
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      if (Self.Components[i] as TPanel).Tag > 0 then
        if not ffd.Locate('mdacodigo', (Self.Components[i] as TPanel).Tag, []) then
          (Self.Components[i] as TPanel).Visible := False;

  { *  verifica se é um registro de uma conta corrente e se o tipo é bancaria, se
    não for oculta emissao de cheque proprio * }
  if (Self.vpCcoChave <> '') and (Self.vpCcoChave <> '0') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select tctcodigo from cta, cco where ';
    consulta.SQL.Add('cta.ctacodigo=cco.ctacodigo and ');
    consulta.SQL.Add('cco.ccochave=' + Self.vpCcoChave);
    consulta.Open;

    if consulta.Fields[0].AsInteger <> 2 then
    begin
      plchequesproprios.Visible := False;
    end;

  end;

  if (VtocCodigo = tocResgate) and (vcedcodigo = cedDebito) then
  begin
    plchequesproprios.Visible := False;
    plDinheiro.Visible := False;

  end;

  if (VtocCodigo = tocResgate) and (vcedcodigo = cedCredito) then
  begin
    plchequesproprios.Visible := False;
  end;

end;

procedure Tflteerp.ProcessaTeclasAtalho(vmdacodigo: Integer);
begin

  // ajusta valores para tecla de atalho
  if tmp.State <> dsEdit then
    tmp.Edit;

  Self.recalculatotais;

  if (tmp.State = dsEdit) or (tmp.State = dsInsert) then
    tmp.Post;

  if tmp.State <> dsEdit then
    tmp.Edit;

  case vmdacodigo of
    mdaDinheiro:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaDinheiro.Field.AsString = '') or (edmdaDinheiro.Field.AsString = '0,00') or (edmdaDinheiro.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
          begin
            edmdaDinheiro.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
            Self.recalculatotais;

            if vpValorFinalizador > 0 then
              (* Gabriel - 16/10/2014 - Removi sinal de igual pois estava executando função confirma em duplicidade *)
              if edfaltatroco.Field.AsFloat > 0 then
                Self.bconfirma.Click;
          end;
      end;

    mdaConvenio:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaConvenio.Field.AsString = '') or (edmdaConvenio.Field.AsString = '0,00') or (edmdaConvenio.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaConvenio.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;
    mdaCartaoDebito:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaCartaoDebito.Field.AsString = '') or (edmdaCartaoDebito.Field.AsString = '0,00') or (edmdaCartaoDebito.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaCartaoDebito.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;
    mdaCartaoCredito:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaCartaoCredito.Field.AsString = '') or (edmdaCartaoCredito.Field.AsString = '0,00') or (edmdaCartaoCredito.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaCartaoCredito.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaChequeProprio:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaChequeProprio.Field.AsString = '') or (edmdaChequeProprio.Field.AsString = '0,00') or (edmdaChequeProprio.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaChequeProprio.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaChequeTerceiros:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaChequeTerceiros.Field.AsString = '') or (edmdaChequeTerceiros.Field.AsString = '0,00') or (edmdaChequeTerceiros.Field.AsString = '0')
        then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaChequeTerceiros.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaViaBanco:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaViaBanco.Field.AsString = '') or (edmdaViaBanco.Field.AsString = '0,00') or (edmdaViaBanco.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaViaBanco.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;
  end;

end;

function Tflteerp.registrachequesproprios(vchave: string; vvalor: string): string;
var
  registra: TRegistraCheques;
  vorcchave: string;
begin
  pack := LoadPackage('modulos\mche.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('RegistraCheques'));

      if Assigned(registra) then
        Result := registra(Application, zcone, vvalor, vchave, Self.vpCcoChave, vpMesChave);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

function Tflteerp.registracartoes(vchave: string; vvalor: string): string;
var
  registra: TRegistraCartoes;
  vorcchave: string;
begin
  cfg.Close;
  cfg.Open;
  if (Self.cfgcfgusaadc.AsInteger = 2) then
  begin

    pack := LoadPackage('modulos\mrdc.bpl');
    if pack <> 0 then
      try
        @registra := GetProcAddress(pack, PChar('RegistraCartoes'));

        if Assigned(registra) then
          Result := registra(Application, zcone, vvalor, vchave);

      finally
        // DoUnLoadPackage(pack);
      end;
  end;
end;

function Tflteerp.registraconvenio(vmeschave: string; vvalor: string): string;
var
  registra: TRegistraConvenio;
  vorcchave: string;
begin
  pack := LoadPackage('modulos\mdfc.bpl');
  if pack <> 0 then
    try

      if vpValorFinalizador <> 0 then
      begin
        @registra := GetProcAddress(pack, PChar('registraconvenioauto'))
      end
      else
        @registra := GetProcAddress(pack, PChar('registraconvenio'));

      if Assigned(registra) then
        Result := registra(Application, zcone, vvalor, vmeschave, lteltechave.AsString, '0', 'Incluindo');

    finally
      // DoUnLoadPackage(pack);
    end;
end;

{$ENDREGION}

function Tflteerp.RegistraCCO(vdtlchave: string; vvalor: Double; vTroco: Double; VpTfdCodigo: Integer; vCtaCodigo: string = '0'): string;
var
  vlRetorno: string;
begin

  cfg.Open;
  cco.Open;

  if vdtlchave <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT  chc.ctacodigo,  ltc.dtlchave,  che.chevalor, che.chevencimento, che.chenumero FROM ltc ';
    consulta.SQL.Add('INNER JOIN che  ON ltc.chechave = che.chechave ');
    consulta.SQL.Add('INNER JOIN chc ON chc.chechave = che.chechave ');
    consulta.SQL.Add('where ltc.dtlchave=' + vdtlchave + ' ');
    consulta.Open;

    consulta.First;

    while not consulta.Eof do
    begin
      cco.Append;
      ccoctacodigo.AsInteger := consulta.Fields[0].AsInteger;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := cedDebito;
      ccoclbcodigo.AsString := vclbcodigo;
      ccotficodigo.AsInteger := tfiCheque;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := consulta.Fields[3].AsFloat;
      ccocconumero.AsString := 'Ch.Nr.: ' + consulta.Fields[4].AsString;

      ccoccohistorico.AsString := 'Cheque Emitido';

      ccoccovalor.AsFloat := consulta.Fields[2].AsFloat;
      ccoetdcodigo.AsInteger := 0;
      ccoccofavorecido.AsString := '';
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      ccoccoconciliado.AsInteger := senSim;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      cco.Post;
      vlRetorno := Self.ccoccochave.AsString;
      vpCcoChave := Self.ccoccochave.AsString;

      clt.Close;
      clt.Params[0].AsString := Self.ccoccochave.AsString;
      clt.Params[1].AsString := Self.lteltechave.AsString;
      clt.Open;

      if clt.IsEmpty then
        clt.Append
      else
        clt.Edit;

      cltccochave.AsString := Self.vpCcoChave;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.Post;
      IdentificarBaixa;
      consulta.Next;
    end;
    if vTroco > 0 then
    begin
      cco.Append;
      ccoctacodigo.AsString := Self.vpCtaTerminal;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := cedCredito;
      ccoclbcodigo.AsString := vclbcodigo;
      ccotficodigo.AsInteger := tfiOutros;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := date;
      ccocconumero.AsString := '';
      ccoccohistorico.AsString := '';
      ccoccovalor.AsFloat := vvalor;
      ccoetdcodigo.AsInteger := 0;
      ccoccofavorecido.AsString := '';
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      ccoccoconciliado.AsInteger := senSim;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      Self.ccoccochaveorig.AsString := vpCcoChave;
      cco.Post;
      vlRetorno := Self.ccoccochave.AsString;
      vpCcoChave := Self.ccoccochave.AsString;
      clt.Close;
      clt.Params[0].AsString := Self.ccoccochave.AsString;
      clt.Params[1].AsString := Self.lteltechave.AsString;
      clt.Open;

      if clt.IsEmpty then
        clt.Append
      else
        clt.Edit;

      cltccochave.AsString := Self.vpCcoChave;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.Post;
      IdentificarBaixa;
    end;

  end
  else
  begin
    if vvalor = 0 then
    begin
      if vTroco > 0 then
      begin

        cco.Append;

        if vCtaCodigo = '0' then
        begin
          ccoctacodigo.AsString := Self.vpCtaTerminal;
        end
        else
        begin
          ccoctacodigo.AsString := vCtaCodigo;

        end;
        ccotoccodigo.AsInteger := tocNormal;
        ccocedcodigo.AsInteger := cedDebito;

        ccoclbcodigo.AsString := vclbcodigo;
        ccotficodigo.AsInteger := tfiOutros;
        ccoccoemissao.AsFloat := date;
        ccoccovencimento.AsFloat := date;
        ccocconumero.AsString := '';

        if not tfd.Active then
          tfd.Open;

        if tfd.Locate('tfdcodigo', VpTfdCodigo, []) then
        begin
          ccoccohistorico.AsString := 'Troco ' + Self.tfdtfdidentificacao.AsString;
        end;

        if VpTfdCodigo = tfdVenda then
          ccoccohistorico.AsString := 'Troco Venda Nr.: ' + mesmeschave.AsString;

        ccoccovalor.AsFloat := vTroco;
        ccoetdcodigo.AsInteger := Self.mesetdcodigo.AsInteger;
        if Self.mesetdcodigo.AsInteger = 0 then
          ccoccofavorecido.AsString := 'Consumidor'
        else
        begin
          consulta.Close;
          consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + Self.mesetdcodigo.AsString;
          consulta.Open;
          ccoccofavorecido.AsString := consulta.Fields[0].AsString;
        end;

        ccoccochaveorig.AsInteger := 0;
        ccoccochavedest.AsInteger := 0;
        ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
        ccoccodataregistro.AsFloat := date;
        ccoccohoraregistro.AsFloat := time;
        ccoccoconciliado.AsInteger := senSim;
        ccomoecodigo.AsInteger := 1;
        ACBrExtenso.Valor := ccoccovalor.AsFloat;
        ccoccoextenso.AsString := ACBrExtenso.Texto;
        cco.Post;
        vlRetorno := Self.ccoccochave.AsString;
        vpCcoChave := Self.ccoccochave.AsString;
        clt.Close;
        clt.Params[0].AsString := Self.vpCcoChave;
        clt.Params[1].AsString := Self.lteltechave.AsString;
        clt.Open;

        if clt.IsEmpty then
          clt.Append
        else
          clt.Edit;

        cltccochave.AsString := Self.vpCcoChave;
        cltltechave.AsInteger := Self.lteltechave.AsInteger;
        clt.Post;
        IdentificarBaixa;
      end;
    end
    else
    begin

      cco.Append;

      if vCtaCodigo = '0' then
      begin
        ccoctacodigo.AsString := Self.vpCtaTerminal;
      end
      else
      begin
        ccoctacodigo.AsString := vCtaCodigo;

      end;
      ccotoccodigo.AsInteger := tocNormal;
      if VpTfdCodigo = tfdPagamentos then
        ccocedcodigo.AsInteger := cedDebito
      else
        ccocedcodigo.AsInteger := cedCredito;

      ccoclbcodigo.AsString := vclbcodigo;
      ccotficodigo.AsInteger := tfiOutros;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := date;
      ccocconumero.AsString := '';

      if not tfd.Active then
        tfd.Open;

      if tfd.Locate('tfdcodigo', VpTfdCodigo, []) then
        ccoccohistorico.AsString := Self.tfdtfdidentificacao.AsString;

      if VpTfdCodigo = tfdVenda then
        ccoccohistorico.AsString := 'Venda Nr.: ' + mesmeschave.AsString;

      ccoccovalor.AsFloat := vvalor - vTroco;
      ccoetdcodigo.AsInteger := Self.mesetdcodigo.AsInteger;
      if Self.mesetdcodigo.AsInteger = 0 then
        ccoccofavorecido.AsString := 'Consumidor'
      else
      begin
        consulta.Close;
        consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + Self.mesetdcodigo.AsString;
        consulta.Open;
        ccoccofavorecido.AsString := consulta.Fields[0].AsString;
      end;

      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      ccoccoconciliado.AsInteger := senSim;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      cco.Post;
      vlRetorno := Self.ccoccochave.AsString;
      vpCcoChave := Self.ccoccochave.AsString;
      clt.Close;
      clt.Params[0].AsString := Self.vpCcoChave;
      clt.Params[1].AsString := Self.lteltechave.AsString;
      clt.Open;

      if clt.IsEmpty then
        clt.Append
      else
        clt.Edit;

      cltccochave.AsString := Self.vpCcoChave;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.Post;
    end;
  end;
  Result := vlRetorno;
end;

procedure Tflteerp.VendaAVistas(vtotrfichtr: Double; vtotrfiditr: Double; vtotrfiav: Double; vtotrfichpr: Double);
var
  vtitcodigo: Integer;
begin

  cfg.Open;

  if (vpCcoChave = '0') or (vpCcoChave = '') then
  begin
    mes.Close;
    mes.Params[0].AsString := Self.vchave;
    mes.Open;
  end;

  vtitcodigo := AjustaTit('', Self.mesetdcodigo.AsInteger, 'Venda a Vista', vtotrfiav - (vtotrfiditr + vtotrfichtr { + vtotrfichpr } ), date, date,
    tfdVenda, tfiOutros, '', vtotrfiav - (vtotrfiditr + vtotrfichtr { + vtotrfichpr } ), 1, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

  rfi.Open;
  rfi.Append;
  rfietdcodigo.AsInteger := Self.mesetdcodigo.AsInteger;
  rfitfdcodigo.AsInteger := VpTfdCodigo;
  rfiflacodigo.AsInteger := 1;
  rfitficodigo.AsInteger := 9;
  rfibcocodigo.AsString := '000';
  rficarcodigo.AsString := '1';
  rfirfiemissao.AsFloat := cfgcfgdatapadrao.AsFloat;
  rfirfivencimento.AsFloat := cfgcfgdatapadrao.AsFloat;
  rfirfinumero.AsString := Self.tittitnumero.AsString;
  rfirfivalor.AsFloat := vtotrfiav - (vtotrfiditr + vtotrfichtr { + vtotrfichpr } );
  rfirfihistorico.AsString := Self.tittithistorico.AsString;
  rfisrfcodigo.AsInteger := srfQuitado;
  rfifrrcodigo.AsInteger := 1;
  rfirfimoradia.AsFloat := 0;
  rfirfipercmesmora.AsFloat := 0;
  rfirfirepetir.AsInteger := 0;
  rfirfiprevisao.AsInteger := 0;
  rfirfivalorparcela.AsFloat := vtotrfiav - (vtotrfiditr + vtotrfichtr { + vtotrfichpr } );
  rfimoecodigo.AsInteger := 1;
  rfititcodigo.AsInteger := vtitcodigo;
  rfi.Post;

  rfm.Open;
  rfm.Append;
  rfmrfichave.AsInteger := Self.rfirfichave.AsInteger;
  rfmmeschave.AsInteger := Self.mesmeschave.AsInteger;
  rfm.Post;

  // registro
  mfi.Open;
  mfi.Append;
  mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfAReceber;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsFloat := rfirfivalor.AsFloat;
  mfimfidata.AsFloat := date;
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
  mfimfiparcela.AsInteger := 0;
  mfi.Post;

  // quitacao
  mfi.Open;
  mfi.Append;
  mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfRecebimento;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsFloat := rfirfivalor.AsFloat;
  mfimfidata.AsFloat := date;
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
  mfimfiparcela.AsInteger := 0;
  mfi.Post;

  mlt.Open;
  mlt.Append;
  mltmfichave.AsInteger := Self.mfimfichave.AsInteger;
  mltltechave.AsInteger := Self.lteltechave.AsInteger;
  mlt.Post;

end;

procedure Tflteerp.ajustaaltura;
var
  i: Integer;
  valtura: Integer;
  vnomepanel: string;
begin
  valtura := 0;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      valtura := valtura + (Self.Components[i] as TPanel).Height;

  // Self.Height := valtura + 5;

  valtura := 0;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      if (Self.Components[i] as TPanel).Visible then
        if (Self.Components[i] as TPanel).Parent = Self then
        begin
          valtura := valtura + (Self.Components[i] as TPanel).Height;
          vnomepanel := (Self.Components[i] as TPanel).Name;
        end;

  Self.Height := valtura + 75;
end;

procedure Tflteerp.definirconexao;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TUniQuery then
      (Self.Components[i] as TUniQuery).Connection := zcone;
end;

procedure Tflteerp.IniciaProcesso;
var
  vltechave: string;
begin

  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vretornoto := '';

  vltechave := '';

  definirconexao;

  if (vpCcoChave <> '') and (vpCcoChave <> '0') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select ltechave,toccodigo from clt,cco where clt.ccochave=cco.ccochave and clt.ccochave=' + vpCcoChave;
    consulta.Open;
    if (consulta.Fields[0].AsString <> '') and (consulta.Fields[0].AsString <> '0') then
    begin
      vltechave := consulta.Fields[0].AsString;
    end
    else
    begin
      vltechave := '0';
    end;
  end
  else
  begin
    if (VpTfdCodigo in [tfdRecebimentos, tfdPagamentos, tfdContaCorrente, tfdTesouraria]) then
    begin

      { if (VpTfdCodigo in [tfdRecebimentos, tfdPagamentos]) then
        begin
        vpCtaCodigo := selecionaconta;
        end; }

      vltechave := vchave;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT  mlt.ltechave FROM rfm ';
      consulta.SQL.Add('INNER JOIN mfi  ON rfm.rfichave = mfi.rfichave ');
      consulta.SQL.Add('INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
      consulta.SQL.Add('WHERE rfm.meschave=' + vchave);
      consulta.Open;
      vltechave := consulta.Fields[0].AsString;
    end;
  end;

  consulta.Close;
  consulta.SQL.Text := 'select ctacodigo from ctr where trmcodigo=' + Self.vtrmcodigo;
  consulta.Open;
  if not consulta.IsEmpty then
    vpCtaTerminal := Self.consulta.Fields[0].AsString
  else
    vpCtaTerminal := Self.cfgcfgctacaixa.AsString;

  lte.Close;
  if vltechave <> '' then
  begin
    lte.SQL.Text := 'SELECT ltechave, tfdcodigo, ltedata, lteprincipal, ltemulta, ltejuros, ltedesconto, ltetotal, lteextenso ';
    lte.SQL.Add('FROM lte WHERE ltechave = ' + vltechave);
  end;
  lte.Open;

  if (vltechave = '') or (vltechave = '0') then
  begin
    lte.Append;
    Self.psituacao.Caption := 'Incluindo';
  end
  else
  begin
    lte.Edit;
    Self.psituacao.Caption := 'Alterando';
  end;

  ltetfdcodigo.AsInteger := VpTfdCodigo;
  lteltedata.AsFloat := date;
  ltelteprincipal.AsString := BuscaTroca(Self.vlteprincipal, '.', ',');
  lteltejuros.AsString := BuscaTroca(Self.vltejuros, '.', ',');
  lteltemulta.AsString := BuscaTroca(Self.vltemulta, '.', ',');
  lteltedesconto.AsString := BuscaTroca(Self.vltedesconto, '.', ',');
  lteltetotal.AsFloat := ltelteprincipal.AsFloat - lteltedesconto.AsFloat + lteltemulta.AsFloat + lteltejuros.AsFloat;
  lte.Post;

  vltechave := Self.lteltechave.AsString;

  lte.Close;
  lte.SQL.Text := 'SELECT ltechave, tfdcodigo, ltedata, lteprincipal, ltemulta, ltejuros, ltedesconto, ltetotal, lteextenso ';
  lte.SQL.Add('FROM lte WHERE ltechave = ' + vltechave);
  lte.Open;

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Open;

  if ((lteprincipal.Field.AsFloat + ltemulta.Field.AsFloat + ltejuros.Field.AsFloat) > 0) then
  begin
    PlValor.Visible := True;
    lteprincipal.Visible := True;
    vTipoControle := 1;
  end
  else
  begin
    PlValor.Visible := False;
    lteprincipal.Visible := False;
    vTipoControle := 0;
  end;

  ajustapaineis;

  (* Verifica não é finalizador de PDV e chama o Show da tela *)
  if vpValorFinalizador = 0 then
  begin
    Self.ShowModal;
    Exit;
  end;

  // atibui valores passados diretos pelo pdv
  if vpValorFinalizador <> 0 then
  begin

    case vpTeclaFinalizador of
      114:
        begin
          edmdaCartaoCredito.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaCartaoCredito);
        end;

      115:
        begin
          edmdaCartaoDebito.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaCartaoDebito);
        end;

      116:
        begin
          edmdaChequeTerceiros.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaChequeTerceiros);
        end;

      117:
        begin
          edmdaDinheiro.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaDinheiro);
        end;

      120:
        begin
          edmdaConvenio.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaConvenio);
        end;

    end;

    (* Identifica se tem DIFERENÇA para acertar e da ShowModal *)
    if tmp.FieldByName('troco').AsCurrency <> 0 then
      if not Self.Visible then
      begin
        Self.ShowModal;
        Exit;
      end;
  end;
end;

procedure Tflteerp.IdentificarBaixa;
var
  vCcoChave: String;
  vFavorecido: String;
  vHistorico: String;

begin

  cltv.Close;
  cltv.SQL.Text := 'select ccochave from clt where ltechave=' + Self.lteltechave.AsString;
  cltv.Open;

  cltv.First;
  while not cltv.Eof do
  begin
    vCcoChave := cltv.Fields[0].AsString;

    ccov.Close;
    ccov.SQL.Text := 'select etdcodigo,ccofavorecido, ccohistorico, ccochave from cco where ccochave=' + vCcoChave;
    ccov.Open;

    IdentificaBaixa.Close;
    IdentificaBaixa.SQL.Text := 'SELECT mfi.mfivalor,  mlt.ltechave,  rfi.etdcodigo,  etd.etdidentificacao,  mfi.rfichave,  lte.tfdcodigo FROM mlt ';
    IdentificaBaixa.SQL.Add('INNER JOIN mfi ON mlt.mfichave = mfi.mfichave ');
    IdentificaBaixa.SQL.Add('INNER JOIN rfi ON mfi.rfichave = rfi.rfichave ');
    IdentificaBaixa.SQL.Add('INNER JOIN etd ON rfi.etdcodigo = etd.etdcodigo ');
    IdentificaBaixa.SQL.Add('INNER JOIN lte ON mlt.ltechave = lte.ltechave ');
    IdentificaBaixa.SQL.Add('WHERE mlt.ltechave=' + Self.lteltechave.AsString);
    IdentificaBaixa.Open;

    ccov.First;
    while not ccov.Eof do
    begin

      ccov.Edit;
      IdentificaBaixa.First;

      if IdentificaBaixa.Fields[5].AsInteger = tfdRecebimentos then
      begin
        if Pos('troco', LowerCase(ccov.Fields[2].AsString)) = 0 then
        begin
          vHistorico := 'Recto Nr.Regs.: ';
        end
        else
        begin
          vHistorico := 'Troco Recto Nr.Regs.: ';
        end;
      end
      else
      begin
        if Pos('troco', LowerCase(ccov.Fields[2].AsString)) = 0 then
        begin
          vHistorico := 'Pagto Nr.Regs.: ';
        end
        else
        begin
          vHistorico := 'Troco Pagto Nr.Regs.: ';
        end;

      end;

      while not IdentificaBaixa.Eof do
      begin
        if IdentificaBaixa.RecordCount = 1 then
          ccov.Fields[0].AsString := IdentificaBaixa.Fields[2].AsString;

        if Pos(IdentificaBaixa.Fields[3].AsString, vFavorecido) = 0 then
          vFavorecido := vFavorecido + IdentificaBaixa.Fields[3].AsString + ',';

        if Pos(IdentificaBaixa.Fields[4].AsString, vHistorico) = 0 then
          vHistorico := vHistorico + IdentificaBaixa.Fields[4].AsString + ',';

        IdentificaBaixa.Next;
      end;
      ccov.Fields[1].AsString := Copy(vFavorecido, 1, Length(vFavorecido) - 1);
      ccov.Fields[2].AsString := Copy(vHistorico, 1, Length(vHistorico) - 1);
      ccov.Post;

      ccov.Next;
    end;
    cltv.Next;
  end;
  ccov.Close;
end;

end.
