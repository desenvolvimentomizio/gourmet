unit Frm_SPEDPisCofins;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
{$IFNDEF FPC}
  Windows, Messages,
{$ENDIF}
  SysUtils, Variants, Classes, Graphics, Controls, Forms, ACBrEPCBlocos,
  Dialogs, StdCtrls, ACBrSpedPisCofins, ExtCtrls, ComCtrls, ACBrUtil,
  ACBrTXTClass, UniProvider, MySQLUniProvider, Data.DB, DBAccess, Uni, MemDS, VirtualTable, DASQLMonitor, UniSQLMonitor, inifiles,
  ACBrBase;

type

  { TFrmSPEDPisCofins }

  TFrmSPEDPisCofins = class(TForm)
    btnB_0: TButton;
    btnB_1: TButton;
    btnB_C: TButton;
    btnB_D: TButton;
    btnError: TButton;
    btnTXT: TButton;
    btnB_9: TButton;
    cbConcomitante: TCheckBox;
    edBufNotas: TEdit;
    edBufLinhas: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    memoError: TMemo;
    edtFile: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memoTXT: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    btnB_A: TButton;
    btnB_F: TButton;
    btnB_M: TButton;
    btnB_P: TButton;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgssncodigo: TIntegerField;
    cfgcfgperfil: TStringField;
    cfgcfgcnae: TStringField;
    cfgcfgetdsped: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgcfgcstcuf: TStringField;
    cfgcfgspedicms: TStringField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspddatabalanco: TDateField;
    spdpcccodigo: TStringField;
    spdspdativo: TIntegerField;
    spdspdmotivoinv: TStringField;
    spdspdvalortotal: TFloatField;
    spdspdpasta: TStringField;
    spdspdregistro: TDateTimeField;
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    ctd: TUniQuery;
    ctdctdcodigo: TIntegerField;
    ctdcfgcodigo: TIntegerField;
    ctdctdidentificacao: TStringField;
    ctdctdcpf: TStringField;
    ctdctdcrc: TStringField;
    ctdctdcnpj: TStringField;
    ctdctdcep: TStringField;
    ctdctdendereco: TStringField;
    ctdctdnumero: TStringField;
    ctdctdcomple: TStringField;
    ctdctdbairro: TStringField;
    ctdctdfone: TStringField;
    ctdctdfax: TStringField;
    ctdctdemail: TStringField;
    ctdcddcodigo: TStringField;
    CfgEtd: TUniQuery;
    CfgEtdetdcodigo: TIntegerField;
    CfgEtdetdidentificacao: TStringField;
    CfgEtdetddoc1: TStringField;
    CfgEtdtpecodigo: TIntegerField;
    CfgEtdedrcodigo: TIntegerField;
    CfgEtdedrinscest: TStringField;
    CfgEtdcddcodigo: TStringField;
    CfgEtdedrrua: TStringField;
    CfgEtdedrnumero: TStringField;
    CfgEtdedrcomple: TStringField;
    CfgEtdedrbairro: TStringField;
    CfgEtdufssigla: TStringField;
    CfgEtdetdapelido: TStringField;
    CfgEtdetftelefone: TStringField;
    CfgEtdeteemail: TStringField;
    CfgEtdedrcep: TStringField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    propunbarra: TStringField;
    protpocodigo: TIntegerField;
    protpoidentificacao: TStringField;
    proproncm: TStringField;
    proicmcodigo: TStringField;
    prounicodigo: TIntegerField;
    proicmaliquotas: TStringField;
    prounisimbolo: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetddoc1: TStringField;
    etdtpecodigo: TIntegerField;
    etdedrcodigo: TIntegerField;
    etdedrinscest: TStringField;
    etdcddcodigo: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrcomple: TStringField;
    etdedrbairro: TStringField;
    etdedritem: TIntegerField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    uniuninome: TStringField;
    tof: TUniQuery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    flaflasigla: TStringField;
    flaetdcodigo: TIntegerField;
    flaetddoc1: TStringField;
    flaetdidentificacao: TStringField;
    flatpecodigo: TIntegerField;
    flaedrcodigo: TIntegerField;
    flaedrinscest: TStringField;
    flacddcodigo: TStringField;
    flaedrrua: TStringField;
    flaedrnumero: TStringField;
    flaedrcomple: TStringField;
    flaedrbairro: TStringField;
    flaedrcep: TStringField;
    flaufssigla: TStringField;
    flaetdapelido: TStringField;
    flaetftelefone: TStringField;
    flaeteemail: TStringField;
    mEtd: TVirtualTable;
    mEtdetdcodigo: TIntegerField;
    mEtdetdidentificacao: TStringField;
    mEtdetddoc1: TStringField;
    mEtdtpecodigo: TIntegerField;
    mEtdedrcodigo: TIntegerField;
    mEtdedrinscest: TStringField;
    mEtdcddcodigo: TStringField;
    mEtdedrrua: TStringField;
    mEtdedrnumero: TStringField;
    mEtdedrcomple: TStringField;
    mEtdedrbairro: TStringField;
    mEtdedritem: TIntegerField;
    mUni: TVirtualTable;
    mUniunicodigo: TIntegerField;
    mUniunisimbolo: TStringField;
    mUniuninome: TStringField;
    mPro: TVirtualTable;
    mProprocodigo: TIntegerField;
    mPropronome: TStringField;
    mPropunbarra: TStringField;
    mProtpocodigo: TIntegerField;
    mProtpoidentificacao: TStringField;
    mProproncm: TStringField;
    mProicmcodigo: TStringField;
    mProunicodigo: TIntegerField;
    mProicmaliquotas: TStringField;
    mProunisimbolo: TStringField;
    consulta: TUniQuery;
    mes: TUniQuery;
    mesttecodigo: TIntegerField;
    mesttmcodigo: TIntegerField;
    mesetdcodigo: TIntegerField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    mesrefcodigo: TIntegerField;
    mesmesfrete: TFloatField;
    mesmesseguro: TFloatField;
    mesmesoutras: TFloatField;
    mesmesbicm: TFloatField;
    mesmesicm: TFloatField;
    mesmesbicms: TFloatField;
    mesmesicms: TFloatField;
    mesmesipi: TFloatField;
    mesmespis: TFloatField;
    mesmescofins: TFloatField;
    mesmespiss: TFloatField;
    mesmescofinss: TFloatField;
    mesmeschave: TIntegerField;
    mestoecodigo: TIntegerField;
    mestfpcodigo: TIntegerField;
    mesedritem: TIntegerField;
    mesmesprodutos: TFloatField;
    mestemcodigo: TIntegerField;
    itm: TUniQuery;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmunicodigo: TIntegerField;
    itmunisimbolo: TStringField;
    itmitmtotal: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmmovifisico: TStringField;
    itmcstcodigo: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmcfocfopdestinacao: TStringField;
    itmitmbicm: TFloatField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmicms: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmitmpis: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmitmchave: TIntegerField;
    itmC175: TUniQuery;
    itmC175cstcodigo: TStringField;
    itmC175cfocfopdestinacao: TStringField;
    itmC175itmaliqicm: TStringField;
    itmC175itmbicm: TFloatField;
    itmC175itmicm: TFloatField;
    itmC175itmbicms: TFloatField;
    itmC175itmicms: TFloatField;
    itmC175itmipi: TFloatField;
    itmC175total: TFloatField;
    itmC175itmapuipi: TStringField;
    itmC175csicodigo: TStringField;
    itmC175ceicodigo: TStringField;
    itmC175itmbipi: TFloatField;
    itmC175itmaliqipi: TFloatField;
    itmC175itmipi_1: TFloatField;
    itmC175cspcodigo: TStringField;
    itmC175itmbpis: TFloatField;
    itmC175itmaliqpis: TFloatField;
    itmC175itmquantpis: TFloatField;
    itmC175itmaliqpisvalor: TFloatField;
    itmC175itmpis: TFloatField;
    itmC175csfcodigo: TStringField;
    itmC175itmoutras: TFloatField;
    itmC175itmbcofins: TFloatField;
    itmC175itmaliqcofins: TFloatField;
    itmC175itmquantcofins: TFloatField;
    itmC175itmaliqcofinsvalor: TFloatField;
    itmC175itmcofins: TFloatField;
    itmC175itmdesconto: TFloatField;
    itmC180: TUniQuery;
    itmC180procodigo: TIntegerField;
    itmC180cfocfopdestinacao: TStringField;
    itmC180itmtotal: TFloatField;
    itmC180tdfcodigo: TStringField;
    itmC180itmbpis: TFloatField;
    itmC180itmaliqpis: TFloatField;
    itmC180itmquantpis: TFloatField;
    itmC180itmaliqpisvalor: TFloatField;
    itmC180itmpis: TFloatField;
    itmC180csfcodigo: TStringField;
    itmC180itmoutras: TFloatField;
    itmC180itmbcofins: TFloatField;
    itmC180itmaliqcofins: TFloatField;
    itmC180itmquantcofins: TFloatField;
    itmC180itmaliqcofinsvalor: TFloatField;
    itmC180itmcofins: TFloatField;
    itmC180proncm: TStringField;
    itmC180itmdesconto: TFloatField;
    itmM600: TUniQuery;
    itmM600cstcodigo: TStringField;
    itmM600cfocfopdestinacao: TStringField;
    itmM600itmaliqicm: TStringField;
    itmM600itmbicm: TFloatField;
    itmM600itmicm: TFloatField;
    itmM600itmbicms: TFloatField;
    itmM600itmicms: TFloatField;
    itmM600itmipi: TFloatField;
    itmM600total: TFloatField;
    itmM600itmapuipi: TStringField;
    itmM600csicodigo: TStringField;
    itmM600ceicodigo: TStringField;
    itmM600itmbipi: TFloatField;
    itmM600itmaliqipi: TFloatField;
    itmM600itmipi_1: TFloatField;
    itmM600cspcodigo: TStringField;
    itmM600itmbpis: TFloatField;
    itmM600itmaliqpis: TFloatField;
    itmM600itmquantpis: TFloatField;
    itmM600itmaliqpisvalor: TFloatField;
    itmM600itmpis: TFloatField;
    itmM600csfcodigo: TStringField;
    itmM600itmoutras: TFloatField;
    itmM600itmbcofins: TFloatField;
    itmM600itmaliqcofins: TFloatField;
    itmM600itmquantcofins: TFloatField;
    itmM600itmaliqcofinsvalor: TFloatField;
    itmM600itmcofins: TFloatField;
    itmM600itmdesconto: TFloatField;
    UniSQLMonitor1: TUniSQLMonitor;
    mesmesxml: TBlobField;
    procedure btnB_0Click(Sender: TObject);
    procedure btnB_9Click(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnB_1Click(Sender: TObject);
    procedure btnB_CClick(Sender: TObject);
    procedure btnB_DClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure ACBrSPEDPisCofins1Error(const MsnError: AnsiString);
    procedure btnB_FClick(Sender: TObject);
    procedure btnB_MClick(Sender: TObject);
    procedure btnB_AClick(Sender: TObject);
    procedure btnVariosBlocosClick(Sender: TObject);
    procedure btnB_PClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LoadToMemo;
    procedure CarregaEntidades;
    procedure CarregaUniEPro;
    procedure ConectaBanco;
    { Private declarations }
  public
    { Public declarations }
    vpSpdChave: String;
  end;

const
  (* Emitente da Operação para o TOE - ttm *)
  ttmEmissaoPropria = 0;
  ttmTerceiros = 1;
  ttmEmAndamento = 9;

var
  FrmSPEDPisCofins: TFrmSPEDPisCofins;

implementation

uses
  ACBrEPCBloco_0, ACBrEPCBloco_1, ACBrEPCBloco_A, ACBrEPCBloco_C, ACBrEPCBloco_D, ACBrEPCBloco_F, ACBrEPCBloco_M;

{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}

Function ajustadata(dia: String): String;

Var
  d: String;
  di, me, an: String;
Begin
  d := dia;
  di := Copy(d, 1, 2);
  me := Copy(d, 4, 2);
  an := Copy(d, 7, 4);
  d := an + '-' + me + '-' + di;
  result := d;
End;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To Length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;
End;

procedure TFrmSPEDPisCofins.ACBrSPEDPisCofins1Error(const MsnError: AnsiString);
begin
  memoError.Lines.Add(MsnError);
end;

procedure TFrmSPEDPisCofins.btnB_PClick(Sender: TObject);
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco P.
  with ACBrSPEDPisCofins1.Bloco_P do
  begin
    with RegistroP001New do
    begin
      IND_MOV := imComDados;

      // P010 - Identificação do Estabelecimento
      with RegistroP010New do
      begin
        CNPJ := '11111111000272';

        // P100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
        with RegistroP100New do
        begin
          DT_INI := StrToDate('01/04/2014');
          DT_FIM := StrToDate('30/04/2014');
          VL_REC_TOT_EST := 0;
          COD_ATIV_ECON := '00000025';
          VL_REC_ATIV_ESTAB := 0;
          VL_EXC := 0;
          VL_BC_CONT := 0;
          ALIQ_CONT := 2;
          VL_CONT_APU := 0;
          COD_CTA := '';
          INFO_COMPL := '';
        end;

        // REGISTRO P200: CONSOLIDAÇÃO DA CONTRIBUIÇÃO PREVIDENCIÁRIA SOBRE A RECEITA BRUTA
        with RegistroP200New do
        begin
          PER_REF := FormatDateTime('mmyyyy', StrToDate('30/04/2014'));
          VL_TOT_CONT_APU := 0;
          VL_TOT_AJ_REDUC := 0;
          VL_TOT_AJ_ACRES := 0;
          VL_TOT_CONT_DEV := 0;
          COD_REC := '298501';
        end;
      end;
    end;
  end;
  btnB_P.Enabled := False;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_P;
    LoadToMemo;
  end;
end;

procedure TFrmSPEDPisCofins.btnB_0Click(Sender: TObject);
const
  strUNID: array [0 .. 4] of string = ('PC', 'UN', 'LT', 'KG', 'MT');

var
  int0140: Integer;
  int0150: Integer;
  int0190: Integer;
  int0200: Integer;

begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 0.

  Conexao.Connected := true;

  vpSpdChave := '2';

  cfg.Close;
  spd.Close;
  ctd.Close;
  etd.Close;
  Uni.Close;
  pro.Close;
  toe.Close;
  tof.Close;

  cfg.Close;
  cfg.Params[0].AsInteger := 1;
  cfg.Open;

  spd.Close;
  // spd.Params[0].AsString := vpSpdChave;
  spd.Open;

  ctd.Open;
  etd.Open;
  Uni.Open;
  pro.Open;
  tof.Open;
  fla.Open;

  CfgEtd.Close;
  CfgEtd.Open;

  if CfgEtd.IsEmpty then
  begin

    ShowMessage('Atenção: Verifique os dados de configurações do SPED.' + #13 + 'Dados da entidade ligada a empresa estão incompletos!');
    memoError.Lines.Add(' ERRO ERRO ERRO :' + #13 + #13 + #13 + 'Atenção: Verifique os dados de configurações do SPED.' + #13 +
      'Dados da entidade ligada a empresa estão incompletos!');
  end;

  cbConcomitante.Enabled := False;
  btnB_0.Enabled := False;
  btnB_C.Enabled := true;
  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := Self.spdspddatainicial.AsFloat;
    DT_FIN := Self.spdspddatafinal.AsFloat;
    IniciaGeracao;
  end;

  toe.Close;
  toe.Params[0].AsFloat := Self.spdspddatainicial.AsFloat;
  toe.Params[1].AsFloat := Self.spdspddatafinal.AsFloat;
  toe.Open;

  if cbConcomitante.Checked then
  begin
    with ACBrSPEDPisCofins1 do
    begin
      // DT_INI := StrToDate('01/04/2014');
      // DT_FIN := StrToDate('30/04/2014');
      LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);

      // IniciaGeracao;
    end;

    LoadToMemo;
  end;

  with ACBrSPEDPisCofins1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER := vlVersao202;
      TIPO_ESCRIT := tpEscrOriginal;
      IND_SIT_ESP := indSitAbertura;
      NUM_REC_ANTERIOR := '';
      NOME := Trim(Self.CfgEtdetdidentificacao.AsString);
      CNPJ := SoNumeros(Self.CfgEtdetddoc1.AsString);
      UF := Self.CfgEtdufssigla.AsString;
      COD_MUN := Self.CfgEtdcddcodigo.AsInteger;
      SUFRAMA := '';
      IND_NAT_PJ := indNatPJSocEmpresariaGeral;
      IND_ATIV := indAtivComercio;

      with Registro0001New do
      begin
        IND_MOV := imComDados;

        // FILHO - Dados do contador.
        with Registro0100New do
        begin
          NOME := Self.ctdctdidentificacao.AsString;
          CPF := SoNumeros(Self.ctdctdcpf.AsString); // Deve ser uma informação valida
          CRC := SoNumeros(Self.ctdctdcrc.AsString);
          CNPJ := SoNumeros(Self.ctdctdcnpj.AsString);
          CEP := SoNumeros(Self.ctdctdcep.AsString);
          ENDERECO := Self.ctdctdendereco.AsString;
          NUM := Self.ctdctdnumero.AsString;
          COMPL := Self.ctdctdcomple.AsString;
          BAIRRO := Self.ctdctdbairro.AsString;
          FONE := Self.ctdctdfone.AsString;
          FAX := Self.ctdctdfax.AsString;
          EMAIL := Self.ctdctdemail.AsString;
          COD_MUN := Self.ctdcddcodigo.AsInteger;
        end;

        // FILHO - Regime de Apuração
        with Registro0110New do
        begin
          COD_INC_TRIB := codEscrOpIncCumulativo; // LUCRO REAL - codEscrOpIncNaoCumulativo; // codEscrOpIncCumulativo;
          IND_APRO_CRED := indMetodoApropriacaoDireta;
          COD_TIPO_CONT := codIndTipoConExclAliqBasica;
          // IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
          IND_REG_CUM := codRegimeCompetEscritDetalhada; // codRegimeCaixa;
        end;

        // 0140 - Tabela de Cadastro de Estabelecimento
        // Aqui temos o exemplo de uma empresa com 2 Estabelecimentos!!!
        while not fla.Eof do
        begin
          int0140 := flaflacodigo.AsInteger;

          // FILHO
          with Registro0140New do
          begin
            COD_EST := flaflacodigo.AsString;
            NOME := flaflaidentificacao.AsString;
            CNPJ := SoNumeros(flaetddoc1.AsString);
            UF := flaufssigla.AsString;
            IE := SoNumeros(flaedrinscest.AsString);
            COD_MUN := flacddcodigo.AsInteger;
            IM := '';
            SUFRAMA := '';

            // Se for o estabelecimento 2 geramos um registro 0145 que é necessário para o bloco P
            if int0140 = 2 then
            begin
              with Registro0145New do
              begin
                COD_INC_TRIB := '1';
                VL_REC_TOT := 3;
                VL_REC_ATIV := 2;
                VL_REC_DEMAIS_ATIV := 1;

                INFO_COMPL := '';
              end;
            end;

            CarregaEntidades;

            mEtd.IndexFieldNames := 'etdidentificacao';
            mEtd.First;
            While Not mEtd.Eof Do
            Begin
              // 0150 - Tabela de Cadastro do Participante
              with Registro0150New do
              begin
                COD_PART := mEtdetdcodigo.AsString;

                NOME := Trim(Self.mEtdetdidentificacao.AsString);
                COD_PAIS := '1058';
                CNPJ := '';
                CPF := '';

                If (Self.mEtdtpecodigo.AsInteger = 1) Or (Self.mEtdtpecodigo.AsInteger = 3) Then
                  CPF := SoNumeros(Self.mEtdetddoc1.AsString)
                Else
                  CNPJ := SoNumeros(Self.mEtdetddoc1.AsString);

                IE := SoNumeros(Self.mEtdedrinscest.AsString);
                COD_MUN := Self.mEtdcddcodigo.AsInteger;
                SUFRAMA := '';
                ENDERECO := Trim(Self.mEtdedrrua.AsString);
                NUM := Trim(Self.mEtdedrnumero.AsString);
                COMPL := Trim(Self.mEtdedrcomple.AsString);
                BAIRRO := Trim(Self.mEtdedrbairro.AsString);

              end;
              mEtd.Next;
            end;

            CarregaUniEPro;

            mUni.First; // ir para o inicio da tabela
            While Not mUni.Eof Do
            Begin

              With Registro0190New Do
              Begin
                UNID := Self.mUniunisimbolo.AsString;
                DESCR := Self.mUniuninome.AsString;
              End;

              mUni.Next;
            End;

            mPro.IndexFieldNames := 'procodigo';

            mPro.First; // ir para o inicio da tabela
            While Not mPro.Eof Do
            Begin

              With Registro0200New Do // Fran - 21/12/2011 as 10hs4min
              Begin

                COD_ITEM := Self.mProprocodigo.AsString; // '000001'-   código do item
                DESCR_ITEM := Trim(Self.mPropronome.AsString); // 'PRODUTO 1'- Descrição do item

                COD_BARRA := '';

                if Self.mPropunbarra.AsString <> '' then
                begin
                  If EAN13Valido(Floattostr(Strtofloat(Self.mPropunbarra.AsString))) Then
                    COD_BARRA := Self.mPropunbarra.AsString; // '' - Representação alfanumérico do código de barra do produto, se houver
                end;

                UNID_INV := Self.mProunisimbolo.AsString; // 'UN' - Unidade de medida utilizada na qualificação de estoques

                Case (Self.mProtpocodigo.AsInteger) Of
                  0:
                    TIPO_ITEM := TiMercadoriaRevenda;
                  1:
                    TIPO_ITEM := TiMateriaPrima;
                  2:
                    TIPO_ITEM := TiEmbalagem;
                  3:
                    TIPO_ITEM := TiProdutoProcesso;
                  4:
                    TIPO_ITEM := TiProdutoAcabado;
                  5:
                    TIPO_ITEM := TiSubproduto;
                  6:
                    TIPO_ITEM := TiProdutoIntermediario;
                  7:
                    TIPO_ITEM := TiMaterialConsumo;
                  8:
                    TIPO_ITEM := TiAtivoImobilizado;
                  9:
                    TIPO_ITEM := TiServicos;
                  10:
                    TIPO_ITEM := TiOutrosInsumos;
                  99:
                    TIPO_ITEM := TiOutras;
                End;

                COD_NCM := Copy(Self.mProproncm.AsString, 1, 8); // '30049026';  Código da Nomenclatura Comum do Mercdosul

                COD_GEN := '';

                If (Copy(Self.mProproncm.AsString, 1, 2) <> '00') And (Length(Self.mProproncm.AsString) = 8) Then
                  COD_GEN := Copy(Self.mProproncm.AsString, 1, 2); // '30' - Código do gênero do item, conforme a tabela 4.2.1

                If (mProicmaliquotas.AsString = 'FF') Or (mProicmaliquotas.AsString = 'NN') Or (mProicmaliquotas.AsString = 'II') Then
                  ALIQ_ICMS := 0 // usar a aliquota 0
                Else
                  ALIQ_ICMS := Self.mProicmaliquotas.AsCurrency; // 17.00;

                consulta.Close;
                consulta.SQL.Text := 'SELECT DISTINCT  uni.unisimbolo, pun.punmultiplicador ';
                consulta.SQL.Add('FROM itm,pro,pun,uni,mes,toe WHERE ');
                consulta.SQL.Add('pro.procodigo=itm.procodigo ');
                consulta.SQL.Add('AND itm.puncodigo=pun.puncodigo ');
                consulta.SQL.Add('AND uni.unicodigo=itm.unicodigo ');
                consulta.SQL.Add('AND mes.mesregistro>=' + QuotedStr(ajustadata(Self.spdspddatainicial.AsString)) + ' ');
                consulta.SQL.Add('AND mes.mesregistro<=' + QuotedStr(ajustadata(Self.spdspddatafinal.AsString)) + ' ');
                consulta.SQL.Add('AND mes.toecodigo=toe.toecodigo ');
                consulta.SQL.Add('AND toe.ttmcodigo=1 ');
                consulta.SQL.Add('AND mes.meschave=itm.meschave ');
                consulta.SQL.Add('AND itm.procodigo=' + Self.mProprocodigo.AsString + ' ');
                consulta.SQL.Add('AND unisimbolo<>' + QuotedStr(UNID_INV));

                consulta.Open;

                { If Not consulta.IsEmpty Then
                  Begin
                  consulta.First;
                  While Not consulta.Eof Do
                  Begin
                  With Registro0220New Do
                  Begin
                  UNID_CONV := consulta.Fields[0].AsString;
                  FAT_CONV := consulta.Fields[1].AsFloat;
                  End;
                  consulta.Next;
                  End;
                  End; }


                // unidades base do cadastro não utilizadas em movimentações no mes

                If Not mUni.Locate('unisimbolo', UNID_INV, []) Then
                Begin

                  consulta.Close;
                  consulta.SQL.Text := 'SELECT punmultiplicador, uninome FROM pun,uni WHERE ';
                  consulta.SQL.Add('pun.unicodigo=uni.unicodigo ');
                  consulta.SQL.Add('AND pun.procodigo=' + Self.mProprocodigo.AsString + ' ');
                  consulta.SQL.Add('AND unisimbolo=' + QuotedStr(UNID_INV));
                  consulta.Open;

                  If Not consulta.IsEmpty Then
                  Begin
                    If Not Registro0190.LocalizaRegistro(UNID_INV) Then
                    Begin
                      With Registro0190New Do
                      Begin
                        UNID := UNID_INV;
                        DESCR := consulta.Fields[1].AsString;
                      End;
                    End;
                  End;
                End;
              End;

              mPro.Next;
            End;

            {
              // 10 produtos/serviços
              for int0200 := 1 to 11 do
              begin
              // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
              with Registro0200New do
              begin
              COD_ITEM := FormatFloat('000000', int0200);
              DESCR_ITEM := 'DESCRIÇÃO DO ITEM' + FormatFloat('000000', int0200);
              COD_BARRA := '';
              COD_ANT_ITEM := '';
              UNID_INV := strUNID[int0200 mod (High(strUNID))];
              if int0200 = 11 then
              begin
              TIPO_ITEM := tiOutrosInsumos;
              COD_NCM := '';
              end
              else
              begin
              TIPO_ITEM := tiMercadoriaRevenda;
              COD_NCM := '12345678';
              end;
              EX_IPI := '';
              COD_GEN := '';
              COD_LST := '';
              ALIQ_ICMS := 0;

              // Cria uma alteração apenas para o item 11...
              if (int0200 = 11) then
              with Registro0205New do
              begin
              DESCR_ANT_ITEM := 'DESCRIÇÃO ANTERIOR DO ITEM 11';
              DT_INI := StrToDate('01/04/2014');
              DT_FIM := StrToDate('15/04/2014'); // Observe que o campo é DT_FIM e não DT_FIN
              end;
              end;
              end; }

          end;
          fla.Next;
        end;

        // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
         with Registro0500New do
          begin
          DT_ALT := StrToDate('01/01/2015');
          COD_NAT_CC := ncgAtivo;
          IND_CTA := indCTASintetica;
          NIVEL := '5';
          COD_CTA := '2.01.01.09.04';
          NOME_CTA := 'PIS a Recolher';
          COD_CTA_REF := '2.01.01.09';
          CNPJ_EST :=OnlyNumber(CfgEtdetddoc1.AsString);
          end;


         // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
         with Registro0500New do
          begin
          DT_ALT := StrToDate('01/01/2015');
          COD_NAT_CC := ncgAtivo;
          IND_CTA := indCTASintetica;
          NIVEL := '5';
          COD_CTA := '2.01.01.09.05';
          NOME_CTA := 'COFINS a Recolher';
          COD_CTA_REF := '2.01.01.09';
          CNPJ_EST :=OnlyNumber(CfgEtdetddoc1.AsString);
          end;


      end;
    end;

  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_0;
    LoadToMemo;
  end;
end;

procedure TFrmSPEDPisCofins.btnB_9Click(Sender: TObject);
begin
  btnB_9.Enabled := False;
  ACBrSPEDPisCofins1.WriteBloco_9;
  LoadToMemo;

  // Habilita os botões
  btnB_0.Enabled := true;
  btnB_1.Enabled := true;
  btnB_A.Enabled := true;
  btnB_C.Enabled := true;
  btnB_D.Enabled := true;
  btnB_F.Enabled := true;
  btnB_M.Enabled := true;

  cbConcomitante.Enabled := true;
end;

procedure TFrmSPEDPisCofins.btnTXTClick(Sender: TObject);
begin
  btnTXT.Enabled := False;

  ACBrSPEDPisCofins1.LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);

  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2014');
    DT_FIN := StrToDate('30/04/2014');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pasta onde será salvo o arquivo TXT.
  ACBrSPEDPisCofins1.Path := '.\';
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text;

  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
  btnB_0.Enabled := true;
  btnB_1.Enabled := true;
  btnB_A.Enabled := true;
  btnB_C.Enabled := true;
  btnB_D.Enabled := true;
  btnB_F.Enabled := true;
  btnB_M.Enabled := true;
  btnB_P.Enabled := true;
  btnTXT.Enabled := true;
  cbConcomitante.Enabled := true;
end;

procedure TFrmSPEDPisCofins.btnVariosBlocosClick(Sender: TObject);
begin
  btnB_0.Click;
  btnB_A.Click;
  btnB_C.Click;
  btnB_D.Click;
  btnB_F.Click;
  btnB_M.Click;
  btnB_1.Click;
  btnB_P.Click;
end;

procedure TFrmSPEDPisCofins.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2014');
    DT_FIN := StrToDate('30/04/2014');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT;

  // Habilita os botões
  btnB_0.Enabled := true;
  btnB_1.Enabled := true;
  btnB_A.Enabled := true;
  btnB_C.Enabled := true;
  btnB_D.Enabled := true;
  btnB_F.Enabled := true;
  btnB_M.Enabled := true;
end;

procedure TFrmSPEDPisCofins.btnB_1Click(Sender: TObject);
begin
  btnB_1.Enabled := False;
  btnB_9.Enabled := cbConcomitante.Checked;

  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 1.
  // with ACBrSPEDPisCofins1.Bloco_1 do
  // begin
  // with Registro1001New do
  // begin
  // IND_MOV := 1;
  // end;
  // end;

  with ACBrSPEDPisCofins1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imSemDados;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TFrmSPEDPisCofins.btnB_CClick(Sender: TObject);
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
  // val: Double;
begin
  // val := 0.65;
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C.
  btnB_C.Enabled := False;
  btnB_D.Enabled := true;

  mes.Close;
  mes.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
  mes.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
  mes.Open;

  BNotas := StrToInt64Def(edBufNotas.Text, 1);

  ProgressBar1.Visible := cbConcomitante.Checked;
  ProgressBar1.Max := NNotas;
  ProgressBar1.Position := 0;

  with ACBrSPEDPisCofins1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      IND_MOV := imComDados;

      // C010 - Identificação do Estabelecimento
      with RegistroC010New do
      begin
        CNPJ := SoNumeros(Self.CfgEtdetddoc1.AsString);
        IND_ESCRI := IndEscriConsolidado;

        // Inserir Notas...

        mes.First; // ir para o inicio da tabela
        While Not mes.Eof Do
        Begin // Fran  - 21/12/2011 as 17hs30min
          if (mestemcodigo.AsInteger = 5) or (mestemcodigo.AsInteger = 3) then
          begin
            If (mes.RecordCount > 0) Then
            Begin

              With RegistroC100New Do // Nota Fiscal, Nota Fiscal avulsa, Nota Fiscal de produtor e NF-e
              Begin

                If Self.mesttecodigo.AsInteger = 0 Then // Tipo de operação (0-Entrada,1-Saida)
                  IND_OPER := TpEntradaAquisicao
                Else If Self.mesttecodigo.AsInteger = 1 Then
                  IND_OPER := TpSaidaPrestacao;

                If mesttmcodigo.AsInteger = 0 Then // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                  IND_EMIT := EdEmissaoPropria
                Else If Self.mesttmcodigo.AsInteger = 1 Then
                  IND_EMIT := EdTerceiros;

                COD_MOD := Self.mestdfcodigo.AsString; // Modelo de documento fiscal (Nota fiscal, Nota Fiscal Eletrônica...)

                If Self.messdecodigo.AsString = '00' Then // Situação do documento fiscal(documento regular,documento fiscal complementar...)
                  COD_SIT := SdRegular // Documento regular
                Else If Self.messdecodigo.AsString = '01' Then
                  COD_SIT := SdExtempRegular // Escrituração extemporânea de documento regular
                Else If Self.messdecodigo.AsString = '02' Then
                  COD_SIT := SdCancelado // Documento cancelado
                Else If Self.messdecodigo.AsString = '03' Then
                  COD_SIT := SdCanceladoExtemp
                  // Escrituração extemporânea de documento cancelado
                Else If Self.messdecodigo.AsString = '04' Then
                  COD_SIT := SdDoctoDenegado // 04 - NF-e ou CT-e - denegado
                Else If Self.messdecodigo.AsString = '05' Then
                  COD_SIT := SdDoctoNumInutilizada // 05 - NF-e ou CT-e - Numeração inutilizada
                Else If Self.messdecodigo.AsString = '06' Then
                  COD_SIT := SdFiscalCompl // 06 - Documento Fiscal Complementar
                Else If Self.messdecodigo.AsString = '07' Then
                  COD_SIT := SdExtempCompl
                  // 07 - Escrituração extemporânea de documento complementar
                Else If Self.messdecodigo.AsString = '08' Then
                  COD_SIT := SdRegimeEspecNEsp;
                // 08 - Documento Fiscal emitido com base em Regime Especial ou Norma Específica
                SER := Self.mesmesserie.AsString; // série do documento fiscal
                NUM_DOC := Self.mesmesnumero.AsString; // FormatFloat('11000000', INotas); Número do documento fiscal

                CHV_NFE := Self.mesmeschavenfe.AsString; // Chave da Nota Fiscal eletrônica
                DT_DOC := Self.mesmesemissao.AsFloat; // DT_INI + INotas; Data da emissão do documento fiscal
                DT_E_S := Self.mesmesregistro.AsFloat; // DT_INI + INotas;  data da entrada ou da saída

                If (Self.messdecodigo.AsString <> '02') and (Self.messdecodigo.AsString <> '04') Then
                Begin

                  If ((COD_MOD <> '65') and (mesetdcodigo.AsInteger <> 0)) and (COD_MOD <> '2D') Then
                  BEGIN
                    COD_PART := Self.mesetdcodigo.AsString + FormatFloat('00', Self.mesedritem.AsInteger); // codigo do participante - entidade
                  END;
                  if Self.mesmesprodutos.AsFloat = 0 then
                    VL_DOC := mesmestotal.AsFloat + mesmesdesconto.AsCurrency
                  else
                    VL_DOC := Self.mesmesprodutos.AsFloat + mesmesdesconto.AsCurrency; // valor total do documento Fiscal

                  If Self.mestfpcodigo.AsString = '0' Then // indicador do tipo de pagamento(0-A vista, 1-A prazo,9-sem pagamento)
                    IND_PGTO := TpVista // 0 - À Vista
                  Else If Self.mestfpcodigo.AsString = '1' Then
                    IND_PGTO := TpPrazo // 1 - A Prazo
                  Else If Self.mestfpcodigo.AsString = '2' Then
                    IND_PGTO := tpSemPagamento; // 9 - Sem pagamento

                  VL_DESC := 0; // Self.mesmesdesconto.AsFloat; // Valor total do desconto
                  VL_ABAT_NT := 0; // abatimento não tributado e não comercia (ex: desconto ICMS nas remessas para ZFM)
                  VL_MERC := Self.mesmesvalor.AsFloat; // Valor total das mercadorias e serviços

                  If Self.mesrefcodigo.AsInteger = 0 Then // indicador do tipo de frete(0-emitente,1- destinatário/remetente...)
                    IND_FRT := TfPorContaEmitente // 0 - Por conta de Emitente
                  Else If Self.mesrefcodigo.AsInteger = 1 Then
                    IND_FRT := TfPorContaDestinatario // 1 - Por conta do Destinatario
                  Else If Self.mesrefcodigo.AsInteger = 2 Then
                    IND_FRT := TfPorContaTerceiros // 2 - Por conta do Terceiro
                  Else If Self.mesrefcodigo.AsInteger = 9 Then
                    IND_FRT := TfSemCobrancaFrete; // 9 - Sem cobrança de frete

                  VL_FRT := Self.mesmesfrete.AsCurrency;
                  VL_SEG := Self.mesmesseguro.AsFloat; // valor do seguro indicado no documento fiscal
                  VL_OUT_DA := Self.mesmesoutras.AsFloat;

                  // Verifica se registra impostos é diferente de 1='Registrar Normal'

                  If { (COD_MOD <> '65') and } (COD_MOD <> '2D') Then
                  begin
                    VL_BC_ICMS := Self.mesmesbicm.AsCurrency;
                    VL_ICMS := Self.mesmesbicms.AsCurrency;
                    VL_BC_ICMS_ST := Self.mesmesbicms.AsCurrency;
                    // Valor da base de cálculo do ICMS  substituição tributária
                    VL_ICMS_ST := Self.mesmesicms.AsCurrency; // Valor do ICMS retido por substituição tributária
                    VL_IPI := Self.mesmesipi.AsFloat; // valor total do IPI
                    VL_PIS := (mesmestotal.AsFloat) * (0.65 / 100); // Self.mesmespis.AsFloat; // Valor total do PIS
                    VL_COFINS := (mesmestotal.AsFloat) * (3 / 100); // Self.mesmescofins.AsFloat; // Valor total da COFINS
                    VL_PIS_ST := Self.mesmespiss.AsFloat; // Valor total do PIS retido por substituição tributária
                    VL_COFINS_ST := Self.mesmescofinss.AsFloat; // Valor total da COFINS retido por substituição tributária
                  end;

                End;

                { tom.Close;
                  tom.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
                  tom.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
                  tom.Open;

                  (* Gera registros específicos para notas emitidas por terceiros *)
                  If IND_EMIT = EdTerceiros Then
                  Begin
                  While Not tom.Eof Do
                  Begin
                  With RegistroC110New Do
                  Begin
                  COD_INF := Self.tomtofcodigo.AsString; // Código da informação complementar do documento fiscal
                  TXT_COMPL := Self.tomtofidentificacao.AsString; // Descrição complementar do código de referência.
                  End;
                  tom.Next;
                  End;

                  End; }

                { Gera o registro de importação apenas para notas de entrada }
                { If IND_OPER = tpEntradaAquisicao Then                                   // não será informado
                  Begin
                  With RegistroC120New Do
                  Begin
                  COD_DOC_IMP := diSimplificadaImport;
                  NUM_DOC__IMP := '1024879531';
                  PIS_IMP := 0.00;
                  COFINS_IMP := 0.00;
                  NUM_ACDRAW := '';
                  End;
                  End; }

                { Gera registros específicos para notas emitidas por terceiros e de prestação }
                { If (IND_EMIT = edTerceiros) And (IND_OPER = tpSaidaPrestacao) Then               // não será informado
                  Begin
                  With RegistroC130New Do
                  Begin
                  VL_SERV_NT := 10.12;
                  VL_BC_ISSQN := 10.12;
                  VL_ISSQN := 10.12;
                  VL_BC_IRRF := 10.12;
                  VL_IRRF := 10.12;
                  VL_BC_PREV := 10.12;
                  VL_PREV := 10.12;
                  End;
                  End; }





                //
                // **** REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55). ****
                //

                // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                If ((mesttmcodigo.AsInteger = 1) Or (Self.mestdfcodigo.AsString = '01')) and (Self.messdecodigo.AsString <> '02') and
                  (Self.messdecodigo.AsString <> '04') Then
                Begin

                  itm.Close;
                  itm.Params[0].AsInteger := Self.mesmeschave.AsInteger;
                  itm.Open;

                  itm.First;
                  While Not itm.Eof Do // Fran - 22/12/2011 as 9hs28min(termino)
                  Begin

                    { With RegistroC170New Do // Inicio Adicionar os Itens:
                      Begin
                      NUM_ITEM := FormatFloat('000', Self.itm.Recno); // FormatFloat('000', IItens) número sequencial do item no docuemnto fiscal
                      COD_ITEM := Self.itmprocodigo.AsString; // ('000000', StrToInt(NUM_ITEM)); Código do item no cadastro de pordutos
                      DESCR_COMPL := Self.itmitmdesccomple.AsString;
                      // FormatFloat('11000000', INotas) + ' -> ITEM ' // Descrição complementar do item como adotado no documento fiscal
                      QTD := Self.itmitmquantidade.AsFloat; // Quantidade do item
                      UNID := Self.itmunisimbolo.AsString; // 'UN' unidade do item
                      VL_ITEM := Self.itmitmtotal.AsCurrency ; // Valor do item
                      VL_DESC := 0;//Self.itmitmdesconto.AsCurrency; // Valor do desconto

                      // Movimetação física do item/produto
                      If Self.itmitmmovifisico.AsInteger = 0 Then
                      IND_MOV := MfSim // 0 - Sim
                      Else If Self.itmitmmovifisico.AsInteger = 1 Then
                      IND_MOV := MfNao; // 1 - Não

                      // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                      If (mesttmcodigo.AsInteger = ttmEmissaoPropria) Or (cfgcfgcstterceiros.AsString = '') Then
                      CST_ICMS := StrToCstIcms(Self.itmcstcodigo.AsString)
                      // Código da situação tributária referente ao ICMS.
                      Else If (mesttmcodigo.AsInteger = ttmTerceiros) and (cfgcfgcstterceiros.AsString <> '') Then
                      CST_ICMS := StrToCstIcms(cfgcfgcstterceiros.AsString)
                      Else
                      CST_ICMS := StrToCstIcms(itmcstcodigo.AsString); // cfgcfgcstterceiros.AsString;
                      // '090'; // self.itmcstcodigo.asstring; // Código da situação tributária referente ao ICMS.

                      CFOP := SoNumeros(Self.itmcfocfopdestinacao.AsString);

                      COD_NAT := Self.itmtoecodigo.AsString; // '64' Código da Natureza da operação

                      // Verifica se "Registra impostos" é diferente de 1='Registrar Normal'
                      VL_BC_ICMS := Self.itmitmbicm.AsFloat; // Valor da base de cálculo do ICMS
                      ALIQ_ICMS := Self.itmitmaliqicm.AsFloat; // Aliquota de icms
                      VL_ICMS := Self.itmitmicm.AsFloat; // Valor do icms creditado/debitado

                      VL_BC_ICMS_ST := Self.itmitmbicms.AsFloat; // Valor da base de cálculo referente icms substituição tributária
                      ALIQ_ST := Self.itmitmaliqicms.AsFloat; // Aliquota ICMS substituição tributária na unidade da federação de destino
                      VL_ICMS_ST := Self.itmitmicms.AsFloat; // Valor do ICMS referente a substituição tributária

                      IND_APUR := IaMensal; // indicador doperíodo de apuração do IPI

                      // Identifica se movimento é de Entrada ou Saída (0='Entrada' 1=Saída)
                      If mesttecodigo.AsInteger = 0 Then
                      CST_IPI := StrToCstIpi('49')
                      // código da situação tributária referente ao IPI, conforme tabela CSI.
                      Else
                      CST_IPI := StrToCstIpi('98'); // código da situação tributária referente ao IPI, conforme tabela CSI.

                      COD_ENQ := ''; // '';  Código do enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.(Não existe)
                      VL_BC_IPI := 0; // Valor da bese de calculo do IPI
                      ALIQ_IPI := 0; // Alicquota do IPI
                      VL_IPI := 0; // Valor do IPI creditado/depitado

                      CST_PIS := stpisValorAliquotaNormal; //strToCstPis(Self.itmcspcodigo.AsString); // Código da situação tributária referente ao PIS
                      VL_BC_PIS := Self.itmitmtotal.AsCurrency;//-Self.itmitmdesconto.AsCurrency;  // Self.itmitmbpis.AsFloat; // pisOutrasOperacoes  - valor base de calculo do PIS
                      ALIQ_PIS_PERC := 0.65; // Self.itmitmaliqpis.AsFloat; // Aliquota do PIS(em percentual)
                      QUANT_BC_PIS :=   Self.itmitmquantpis.AsFloat; // Quantidade - base cálculo do PIS
                      ALIQ_PIS_R := Self.itmitmaliqpisvalor.AsFloat; // Aliquota do PIS (em reais)
                      VL_PIS :=(Self.itmitmtotal.AsCurrency)*(0.65/100); // valor do PIS

                      CST_COFINS := stcofinsValorAliquotaNormal; //StrToCstCofins(Self.itmcsfcodigo.AsString); // cofinsOutrasOperacoes  - Código da situação tribitária da COFINS
                      VL_BC_COFINS :=Self.itmitmtotal.AsCurrency;//-Self.itmitmdesconto.AsCurrency; //Self.itmitmbcofins.AsFloat; // Base de cálculo da COFINS
                      ALIQ_COFINS_PERC :=3; //Self.itmitmaliqcofins.AsFloat; // Aliquota da COFINS
                      QUANT_BC_COFINS := Self.itmitmquantcofins.AsFloat; // Quantidade - base de cálculo da COFINS
                      ALIQ_COFINS_R := Self.itmitmaliqcofinsvalor.AsFloat; // Alíquota da COFINS(em reais)
                      VL_COFINS := (Self.itmitmtotal.AsCurrency)*(3/100);//Self.itmitmcofins.AsFloat; // Valor da COFINS

                      COD_CTA := '1.01.03.01.01'; // Código da Conta analítica Contábil debitada/creditada - Não será informada

                      End; } // Fim dos Itens;

                    itm.Next

                  End;
                End;

              End;

            End;

            { if mestdfcodigo.AsString = '65' then
              begin
              itmC175.Close;
              itmC175.ParamByName('meschave').AsString := mesmeschave.AsString;
              itmC175.Open;

              with RegistroC175New do
              begin

              CFOP := SoNumeros(itmC175cfocfopdestinacao.AsString);
              VL_OPR := itmC175total.AsCurrency+itmC175itmdesconto.AsCurrency;
              VL_DESC := 0;//itmC175itmdesconto.AsCurrency;
              CST_PIS :=stpisValorAliquotaNormal;// StrToCstPis(itmC175cspcodigo.AsString);
              VL_BC_PIS := itmC175total.AsCurrency+itmC175itmdesconto.AsCurrency;// itmC175itmbpis.AsCurrency;
              ALIQ_PIS := 0.65;// itmC175itmaliqpis.AsFloat;
              // QUANT_BC_PIS :=0;// itmC175itmquantpis.AsFloat;
              // ALIQ_PIS_QUANT := itmC175itmaliqpisvalor.AsFloat;
              VL_PIS :=   (itmC175total.AsCurrency+itmC175itmdesconto.AsCurrency)*(0.65/100);;// itmC175itmpis.AsCurrency;
              CST_COFINS := stcofinsValorAliquotaNormal; // StrToCstCofins(itmC175csfcodigo.AsString);
              VL_BC_COFINS := itmC175total.AsCurrency+itmC175itmdesconto.AsCurrency;// itmC175itmbcofins.AsCurrency;;
              ALIQ_COFINS := 3;//itmC175itmaliqcofins.AsFloat;
              // QUANT_BC_COFINS := 0;//itmC175itmaliqcofins.AsFloat;
              // ALIQ_COFINS_QUANT := itmC175itmaliqcofinsvalor.AsCurrency;
              VL_COFINS := (itmC175total.AsCurrency+itmC175itmdesconto.AsCurrency)*(3/100);//itmC175itmcofins.AsCurrency;
              COD_CTA := '';
              INFO_COMPL := '';;

              end;

              end; }
            //
            // ***  REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55). ***
            //

            If cbConcomitante.Checked Then
            Begin
              If (INotas Mod BNotas) = 0 Then // Gravar a cada N notas
              Begin
                // Grava registros na memoria para o TXT, e limpa memoria
                ACBrSPEDPisCofins1.WriteBloco_C(False); // False, NAO fecha o Bloco

                application.ProcessMessages;
              End;
            End;
          end;
          mes.Next;
        End;

        {
          // C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
          // Fiscal de Produtor (código 04) e NF-e (código 55)
          with RegistroC100New do
          begin
          IND_OPER := tpEntradaAquisicao;
          IND_EMIT := edEmissaoPropria;
          COD_PART := '2'; // Baseado no registro 0200
          COD_MOD := '01';
          COD_SIT := sdRegular;
          SER := '';
          NUM_DOC := FormatFloat('000000000', INotas); //
          CHV_NFE := '';
          DT_DOC := DT_INI + INotas;
          DT_E_S := DT_INI + INotas;
          VL_DOC := 0;
          IND_PGTO := tpSemPagamento;
          VL_DESC := 0;
          VL_ABAT_NT := 0;
          VL_MERC := 0;
          IND_FRT := tfSemCobrancaFrete;
          VL_FRT := 0;
          VL_SEG := 0;
          VL_OUT_DA := 0;
          VL_BC_ICMS := 0;
          VL_ICMS := 0;
          VL_BC_ICMS_ST := 0;
          VL_ICMS_ST := 0;
          VL_IPI := 0;
          VL_PIS := 0;
          VL_COFINS := 0;
          VL_PIS_ST := 0;
          VL_COFINS_ST := 0;

          // 10 itens para cada nota...
          for IItens := 1 to 10 do
          begin
          // c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
          with RegistroC170New do // Inicio Adicionar os Itens:
          begin
          NUM_ITEM := FormatFloat('000', IItens);
          COD_ITEM := FormatFloat('000000', StrToInt(NUM_ITEM));
          DESCR_COMPL := FormatFloat('NF000000', INotas) + ' -> ITEM ' + COD_ITEM;
          QTD := 1.123456; // O último dígito deve ser ignorado no arquivo
          UNID := 'UN';
          VL_ITEM := 0;
          VL_DESC := 0;
          IND_MOV := mfNao;
          CST_ICMS := sticmsTributadaIntegralmente;
          CFOP := '1252';
          COD_NAT := '';
          // COD_NAT          := '64'; //Informar no 0400 antes de utilizá-lo
          VL_BC_ICMS := 0;
          ALIQ_ICMS := 0;
          VL_ICMS := 0;
          VL_BC_ICMS_ST := 0;
          ALIQ_ST := 0;
          VL_ICMS_ST := 0;
          IND_APUR := iaMensal;
          CST_IPI := stipiEntradaIsenta;
          COD_ENQ := '';
          VL_BC_IPI := 0;
          ALIQ_IPI := 0;
          VL_IPI := 0;
          CST_PIS := stpisOperAquiAliquotaZero;
          VL_BC_PIS := 1;
          ALIQ_PIS_PERC := Null;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_R := Null;
          VL_PIS := 0;
          CST_COFINS := stcofinsOperAquiAliquotaZero;
          VL_BC_COFINS := 1;
          ALIQ_COFINS_PERC := Null;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_R := Null;
          VL_COFINS := 0;
          COD_CTA := '01'; // Baseado no 0500
          end; // Fim do Registro;
          end; // Fim do for Itens;

          if cbConcomitante.Checked then
          begin
          if (INotas mod BNotas) = 0 then // Gravar a cada BNotas notas
          begin
          // Grava registros na memoria para o TXT, e limpa memoria
          ACBrSPEDPisCofins1.WriteBloco_C(False); // False, NAO fecha o Bloco
          ProgressBar1.Position := INotas;
          Application.ProcessMessages;
          end;
          end;

          end; }

        // Registros c180 exemplo de VL_BC_PIS e ALIQ_PIS não nulo

        itmC180.Close;
        itmC180.ParamByName('inicio').AsDate := Self.spdspddatainicial.AsFloat;
        itmC180.ParamByName('final').AsDate := Self.spdspddatafinal.AsFloat;
        itmC180.Open;

        // REGISTRO C490: CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF (CÓDIGOS
        // 02, 2D, 59 e 60)
        with RegistroC490New do
        begin
          DT_DOC_INI := Self.spdspddatainicial.AsFloat;
          DT_DOC_FIN := Self.spdspddatafinal.AsFloat;
          COD_MOD := '02';

          itmC180.First;
          while not itmC180.Eof do
          begin

            // REGISTRO C491: REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
            // POR ECF (CÓDIGOS 02, 2D e 59) – PIS/PASEP
            with RegistroC491New do
            begin
              // Exemplo com valores não nulos
              COD_ITEM := itmC180procodigo.AsString; // Código do item (campo 02 do Registro 0200)
              CST_PIS := stpisValorAliquotaNormal;
              CFOP := StrtoInt(SoNumeros(itmC180cfocfopdestinacao.AsString));
              VL_ITEM := itmC180itmtotal.AsCurrency;
              VL_BC_PIS := itmC180itmtotal.AsCurrency;
              ALIQ_PIS := 0.65;
              QUANT_BC_PIS := Null;
              ALIQ_PIS_QUANT := Null;
              VL_PIS := itmC180itmtotal.AsCurrency * (0.65 / 100);
              COD_CTA := '2.01.01.09.04';
            end;

            // REGISTRO C495: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
            // POR ECF (CÓDIGOS 02, 2D e 59) – COFINS
            with RegistroC495New do
            begin
              // Exemplo com valores não nulos
              COD_ITEM := itmC180procodigo.AsString; // Código do item (campo 02 do Registro 0200)
              CST_COFINS := stcofinsValorAliquotaNormal;
              CFOP := StrtoInt(SoNumeros(itmC180cfocfopdestinacao.AsString));
              VL_ITEM := itmC180itmtotal.AsCurrency;
              VL_BC_COFINS := itmC180itmtotal.AsCurrency;
              ALIQ_COFINS := 3;
              QUANT_BC_COFINS := Null;
              ALIQ_COFINS_QUANT := Null;
              VL_COFINS := itmC180itmtotal.AsCurrency * (3 / 100);
              COD_CTA := '2.01.01.09.05';
            end;

            itmC180.Next;
          end;

        end;

        { itmC180.First;
          while not itmC180.Eof do
          begin

          with RegistroC180New do
          begin

          COD_MOD := itmC180tdfcodigo.AsString;

          DT_DOC_INI := Self.spdspddatainicial.AsFloat;
          DT_DOC_FIN := Self.spdspddatafinal.AsFloat;

          COD_ITEM := itmC180procodigo.AsString; // Código do item (campo 02 do Registro 0200)
          COD_NCM := SoNumeros(itmC180proncm.AsString);
          EX_IPI := '';
          VL_TOT_ITEM := itmC180itmtotal.AsCurrency; // itmC180itmdesconto.AsCurrency; //0 ;

          // Registros C181 e C185
          with RegistroC181New do
          begin
          CST_PIS := stpisValorAliquotaNormal;
          CFOP := SoNumeros(itmC180cfocfopdestinacao.AsString);
          VL_ITEM := itmC180itmtotal.AsCurrency;
          VL_DESC := itmC180itmdesconto.AsCurrency;
          VL_BC_PIS := itmC180itmtotal.AsCurrency;
          ALIQ_PIS := 0.65;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_QUANT := Null;
          VL_PIS := itmC180itmtotal.AsCurrency * (0.65 / 100);
          COD_CTA := '';
          end;

          with RegistroC185New do
          begin
          CST_COFINS := stcofinsValorAliquotaNormal;
          CFOP := SoNumeros(itmC180cfocfopdestinacao.AsString);
          VL_ITEM := itmC180itmtotal.AsCurrency;
          VL_DESC := itmC180itmdesconto.AsCurrency;
          VL_BC_COFINS := itmC180itmtotal.AsCurrency;
          ALIQ_COFINS := 3;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_QUANT := Null;
          VL_COFINS := itmC180itmtotal.AsCurrency * (3 / 100);
          COD_CTA := '';
          end;
          end;
          itmC180.Next;
          end; }

        // Exemplo com campo VL_BC_PIS nulo
        { with RegistroC180New do
          begin

          COD_MOD := '55';
          DT_DOC_INI := DT_INI;
          DT_DOC_FIN := DT_INI + INotas;
          COD_ITEM := FormatFloat('000000', 11); // Código do item (campo 02 do Registro 0200)
          COD_NCM := '';
          EX_IPI := '';
          VL_TOT_ITEM := 0;

          with RegistroC181New do
          begin
          CST_PIS := stpisOutrasOperacoesSaida;
          CFOP := '5101';
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_PIS := Null;
          ALIQ_PIS := Null;
          QUANT_BC_PIS := 0;
          ALIQ_PIS_QUANT := 0.1;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          with RegistroC185New do
          begin
          CST_COFINS := stcofinsOutrasOperacoesSaida;
          CFOP := '5101';
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_COFINS := Null;
          ALIQ_COFINS := Null;
          QUANT_BC_COFINS := 0;
          ALIQ_COFINS_QUANT := 0.1;
          VL_COFINS := 0;
          COD_CTA := '';
          end;
          end; }

        { // Registros c190 exemplo de VL_BC_PIS e ALIQ_PIS não nulo
          for IItens := 1 to 3 do
          begin
          // c190 - Consolidação de Notas Fiscais Eletrônicas (Código 55) – Operações de
          // Aquisição com Direito a Crédito, e Operações de Devolução de Compras e
          // Vendas.
          with RegistroC190New do
          begin
          COD_MOD := '55';
          DT_REF_INI := DT_INI;
          DT_REF_FIN := DT_INI + INotas;
          COD_ITEM := FormatFloat('000000', IItens); // Código do item (campo 02 do Registro 0200)
          COD_NCM := '12345678';
          EX_IPI := '';
          VL_TOT_ITEM := 0;

          // Registros C191 e C195
          with RegistroC191New do
          begin
          CNPJ_CPF_PART := '12345678909';
          CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
          CFOP := 1102;
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_PIS := 0;
          ALIQ_PIS := 0.99;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_QUANT := Null;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          with RegistroC195New do
          begin
          CNPJ_CPF_PART := '12345678909';
          CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
          CFOP := 1102;
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_COFINS := 0;
          ALIQ_COFINS := 4.56;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_QUANT := Null;
          VL_COFINS := 0;
          COD_CTA := '';
          end;

          end;
          end; }

        { with RegistroC190New do
          begin
          COD_MOD := '55';
          DT_REF_INI := DT_INI;
          DT_REF_FIN := DT_INI + INotas;
          COD_ITEM := FormatFloat('000000', 11); // Código do item (campo 02 do Registro 0200)
          COD_NCM := '';
          EX_IPI := '';
          VL_TOT_ITEM := 0;

          // Registros C191 e C195
          with RegistroC191New do
          begin
          CNPJ_CPF_PART := '12345678909';
          CST_PIS := stpisOutrasOperacoesEntrada;
          CFOP := 1102;
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_PIS := Null;
          ALIQ_PIS := Null;
          QUANT_BC_PIS := 0;
          ALIQ_PIS_QUANT := 0.1;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          with RegistroC195New do
          begin
          CNPJ_CPF_PART := '12345678909';
          CST_COFINS := stcofinsOutrasOperacoesEntrada;
          CFOP := 1102;
          VL_ITEM := 1;
          VL_DESC := 0;
          VL_BC_COFINS := Null;
          ALIQ_COFINS := Null;
          QUANT_BC_COFINS := 0;
          ALIQ_COFINS_QUANT := 0.1;
          VL_COFINS := 0;
          COD_CTA := '';
          end;
          end; }

        // Registros c380 exemplo de VL_BC_PIS e ALIQ_PIS não nulo
        { for IItens := 1 to 3 do
          begin
          // C380: NOTA FISCAL DE VENDA A CONSUMIDOR (CÓDIGO 02) -
          // CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS.
          with RegistroC380New do
          begin
          COD_MOD := '02';
          DT_DOC_INI := DT_INI + (4 * (IItens - 1));
          DT_DOC_FIN := DT_DOC_INI + 3;
          NUM_DOC_INI := IItens + (3 * (IItens - 1));
          NUM_DOC_FIN := NUM_DOC_INI + 3;
          VL_DOC := 0;
          VL_DOC_CANC := 0;

          // Registros C381 e C385
          with RegistroC381New do
          begin
          CST_PIS := stpisValorAliquotaNormal;
          COD_ITEM := FormatFloat('000000', IItens); // Código do item (campo 02 do Registro 0200)
          VL_ITEM := 1;
          VL_BC_PIS := 0;
          ALIQ_PIS := 0.65;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_QUANT := Null;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          with RegistroC385New do
          begin
          CST_COFINS := stcofinsValorAliquotaNormal;
          COD_ITEM := FormatFloat('000000', IItens); // Código do item (campo 02 do Registro 0200)
          VL_ITEM := 1;
          VL_BC_COFINS := 0;
          ALIQ_COFINS := 3;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_QUANT := Null;
          VL_COFINS := 0;
          COD_CTA := '';
          end;
          end;
          end;

          // Exemplo com campo VL_BC_PIS nulo
          with RegistroC380New do
          begin

          COD_MOD := '02';
          DT_DOC_INI := DT_INI + (4 * (IItens - 1));
          DT_DOC_FIN := DT_DOC_INI + 3;
          NUM_DOC_INI := IItens + (3 * (IItens - 1));
          NUM_DOC_FIN := NUM_DOC_INI + 3;
          VL_DOC := 0;
          VL_DOC_CANC := 0;

          with RegistroC381New do
          begin
          CST_PIS := stpisOutrasOperacoesSaida;
          COD_ITEM := FormatFloat('000000', 11); // Código do item (campo 02 do Registro 0200)
          VL_ITEM := 1;
          VL_BC_PIS := Null;
          ALIQ_PIS := Null;
          QUANT_BC_PIS := 0;
          ALIQ_PIS_QUANT := 0.1;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          with RegistroC385New do
          begin
          CST_COFINS := stcofinsOutrasOperacoesSaida;
          COD_ITEM := FormatFloat('000000', 11); // Código do item (campo 02 do Registro 0200)
          VL_ITEM := 1;
          VL_BC_COFINS := Null;
          ALIQ_COFINS := Null;
          QUANT_BC_COFINS := 0;
          ALIQ_COFINS_QUANT := 0.1;
          VL_COFINS := 0;
          COD_CTA := '';
          end;
          end;

          // RegistroC400New
          // REGISTRO C400: EQUIPAMENTO ECF (CÓDIGOS 02 e 2D)
          with RegistroC400New do
          begin
          COD_MOD := '02';
          ECF_MOD := 'ECF-IF';
          ECF_FAB := 'XX123456789012345678';
          ECF_CX := 1;

          // REGISTRO C405: REDUÇÃO Z (CÓDIGOS 02 e 2D)
          with RegistroC405New do
          begin
          DT_DOC := DT_INI + 7;
          CRO := 1;
          CRZ := 30;
          NUM_COO_FIN := 100;
          GT_FIN := 1000000;
          VL_BRT := 10000;

          // REGISTRO C481: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – PIS/PASEP
          // (CÓDIGOS 02 e 2D)
          with RegistroC481New do
          begin
          // Exemplo com valores não nulos
          CST_PIS := stpisValorAliquotaNormal;
          VL_ITEM := 1;
          VL_BC_PIS := 0;
          ALIQ_PIS := 0.65;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_QUANT := Null;
          VL_PIS := 0;
          COD_ITEM := FormatFloat('000000', 1);
          COD_CTA := '';
          end;

          // REGISTRO C485: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – COFINS
          // (CÓDIGOS 02 e 2D)
          with RegistroC485New do
          begin
          // Exemplo com valores não nulos
          CST_COFINS := stcofinsValorAliquotaNormal;
          VL_ITEM := 1;
          VL_BC_COFINS := 0;
          ALIQ_COFINS := 3;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_QUANT := Null;
          VL_COFINS := 0;
          COD_ITEM := FormatFloat('000000', 1);
          COD_CTA := '';
          end;

          // Exemplo com valores NULOS
          // REGISTRO C481: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – PIS/PASEP
          // (CÓDIGOS 02 e 2D)
          with RegistroC481New do
          begin
          // Exemplo com valores nulos
          CST_PIS := stpisOutrasOperacoesSaida;
          VL_ITEM := 1;
          VL_BC_PIS := Null;
          ALIQ_PIS := Null;
          QUANT_BC_PIS := 0;
          ALIQ_PIS_QUANT := 0.1;
          VL_PIS := 0;
          COD_ITEM := FormatFloat('000000', 11);
          COD_CTA := '';
          end;

          // REGISTRO C485: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – COFINS
          // (CÓDIGOS 02 e 2D)
          with RegistroC485New do
          begin
          // Exemplo com valores não nulos
          CST_COFINS := stcofinsOutrasOperacoesSaida;
          VL_ITEM := 1;
          VL_BC_COFINS := Null;
          ALIQ_COFINS := Null;
          QUANT_BC_COFINS := 0;
          ALIQ_COFINS_QUANT := 0.1;
          VL_COFINS := 0;
          COD_ITEM := FormatFloat('000000', 11);
          COD_CTA := '';
          end;

          // REGISTRO C490: CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF (CÓDIGOS
          // 02, 2D, 59 e 60)
          with RegistroC490New do
          begin
          DT_DOC_INI := DT_INI;
          DT_DOC_FIN := DT_INI + 7;
          COD_MOD := '02';

          // REGISTRO C491: REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
          // POR ECF (CÓDIGOS 02, 2D e 59) – PIS/PASEP
          with RegistroC491New do
          begin
          // Exemplo com valores não nulos
          COD_ITEM := FormatFloat('000000', 1);
          CST_PIS := stpisValorAliquotaNormal;
          CFOP := 5101;
          VL_ITEM := 1;
          VL_BC_PIS := 0;
          ALIQ_PIS := 0.65;
          QUANT_BC_PIS := Null;
          ALIQ_PIS_QUANT := Null;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          // REGISTRO C495: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
          // POR ECF (CÓDIGOS 02, 2D e 59) – COFINS
          with RegistroC495New do
          begin
          // Exemplo com valores não nulos
          COD_ITEM := FormatFloat('000000', 1);
          CST_COFINS := stcofinsValorAliquotaNormal;
          CFOP := 5101;
          VL_ITEM := 1;
          VL_BC_COFINS := 0;
          ALIQ_COFINS := 3;
          QUANT_BC_COFINS := Null;
          ALIQ_COFINS_QUANT := Null;
          VL_COFINS := 0;
          COD_CTA := '';
          end;

          // Exemplo com valores NULOS
          // REGISTRO C491: REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
          // POR ECF (CÓDIGOS 02, 2D e 59) – PIS/PASEP
          with RegistroC491New do
          begin
          // Exemplo com valores nulos
          COD_ITEM := FormatFloat('000000', 11);
          CST_PIS := stpisOutrasOperacoesSaida;
          CFOP := 5101;
          VL_ITEM := 1;
          VL_BC_PIS := Null;
          ALIQ_PIS := Null;
          QUANT_BC_PIS := 0;
          ALIQ_PIS_QUANT := 0.1;
          VL_PIS := 0;
          COD_CTA := '';
          end;

          // REGISTRO C495: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS
          // POR ECF (CÓDIGOS 02, 2D e 59) – COFINS
          with RegistroC495New do
          begin
          // Exemplo com valores nulos
          COD_ITEM := FormatFloat('000000', 11);
          CST_COFINS := stcofinsOutrasOperacoesSaida;
          CFOP := 5101;
          VL_ITEM := 1;
          VL_BC_COFINS := Null;
          ALIQ_COFINS := Null;
          QUANT_BC_COFINS := 0;
          ALIQ_COFINS_QUANT := 0.1;
          VL_COFINS := 0;
          COD_CTA := '';
          end;

          end;

          end;

          end; }

      end; // C10
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_C(true); // True, fecha o Bloco
    LoadToMemo;
  end;

  ProgressBar1.Visible := False;
end;

procedure TFrmSPEDPisCofins.btnB_DClick(Sender: TObject);
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco D.
  // with ACBrSPEDPisCofins1.Bloco_D do
  // begin
  // with RegistroD001New do
  // begin
  // IND_MOV := 1;
  // end;
  // end;
  {
    with ACBrSPEDPisCofins1.Bloco_D do
    begin
    with RegistroD001New do
    begin
    IND_MOV := imComDados;

    // Estabelecimento
    with RegistroD010New do
    begin
    CNPJ := '11111111000191';

    // for INotas := 1 to NNotas do
    // begin
    // with RegistroD100New do
    // begin
    // IND_OPER := 0;
    // IND_EMIT := 0;
    // COD_PART := '';
    // COD_MOD :=  '';
    // end;
    // end;

    // D200 - Resumo da Escrituração Diária – Prestação de Serviços de Transportes
    // (Códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
    with RegistroD200New do
    begin
    // |D200|08|00|||11574|11854|6352|000011574|000011854|6352|25072014|6807,57|0,00|
    COD_MOD := '08';
    COD_SIT := sdfRegular;
    SER := '';
    SUB := '';
    NUM_DOC_INI := 11574;
    NUM_DOC_FIN := 11854;
    CFOP := 6352;
    DT_REF := DT_INI; // StrToDate('15/04/2014');
    VL_DOC := 6807.57;
    VL_DESC := 0;
    end;

    // with RegistroD350New do
    // begin
    // COD_MOD := '2E';
    // ECF_MOD := 'MODELO DO ECF';
    // ECF_FAB := 'NUMSERIEECF';
    // DT_DOC := DT_INI;
    // CRO := 1;
    // CRZ := 1;
    // NUM_COO_FIN := 10;
    // GT_FIN := 10000;
    // VL_BRT := 10000;
    // CST_PIS := stpisValorAliquotaDiferenciada;
    // VL_BC_PIS := 100;
    // ALIQ_PIS := 2;
    // QUANT_BC_PIS := 100;
    // ALIQ_PIS_QUANT := 1;
    // VL_PIS := 1;
    // CST_COFINS := stcofinsValorAliquotaDiferenciada;
    // VL_BC_COFINS := 100;
    // ALIQ_COFINS := 2;
    // QUANT_BC_COFINS := 300;
    // ALIQ_COFINS_QUANT := 2;
    // VL_COFINS := 3;
    // COD_CTA := '';
    // end;
    end;
    end;
    end;
  }

  btnB_D.Enabled := False;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_D;
    LoadToMemo;
  end;
end;

procedure TFrmSPEDPisCofins.edtFileChange(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text;
end;

procedure TFrmSPEDPisCofins.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Self.Width := 550;
  Self.Height := 650;
  ConectaBanco;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TUniQuery then
      TUniQuery(Self.Components[i]).Connection := Conexao;

    if Self.Components[i] is tUniTable then
      tUniTable(Self.Components[i]).Connection := Conexao;

  end;

end;

Procedure TFrmSPEDPisCofins.ConectaBanco;
Var
  arquini: TIniFile;
  vlNomeBanco: String;
  vlPortaBanco: String;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
  vlTipoBanco: String;
Begin

  arquini := TIniFile.Create(ExtractFilePath(application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vlUsuario := ReadString('posi', 'usuario', 'root');
    vlSenha := ReadString('posi', 'senha', 'xda973');
    vlPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

  End;
  arquini.Free;

  (* Configuração para DBMonitor *)

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';

  if lowercase(vlTipoBanco) = 'postgresql' then
    Conexao.ProviderName := 'PostgreSQL';

  Conexao.Connected := False;
  Conexao.Database := vlNomeBanco;
  Conexao.Username := vlUsuario;
  Conexao.Password := vlSenha;
  Conexao.Port := StrtoInt(vlPortaBanco);
  Conexao.Server := vlServidor;

  Conexao.Connected := true;

End;

procedure TFrmSPEDPisCofins.LoadToMemo;
begin
  memoTXT.Lines.Clear;
  if FileExists(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo) then
    memoTXT.Lines.LoadFromFile(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo);
end;

procedure TFrmSPEDPisCofins.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled := not cbConcomitante.Checked;
  btnError.Enabled := btnTXT.Enabled;

  edBufNotas.Enabled := cbConcomitante.Checked;

  if not cbConcomitante.Checked then
  begin
    btnB_0.Enabled := true;
    btnB_A.Enabled := False;
    btnB_C.Enabled := False;
    btnB_D.Enabled := False;
    btnB_F.Enabled := False;
    btnB_M.Enabled := False;
    btnB_1.Enabled := False;
    btnB_9.Enabled := False;
  end;
end;

procedure TFrmSPEDPisCofins.btnB_FClick(Sender: TObject);
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco F.
  { with ACBrSPEDPisCofins1.Bloco_F do
    begin
    with RegistroF001New do
    begin
    IND_MOV := imComDados;

    // F010 - Identificação do Estabelecimento
    with RegistroF010New do
    begin
    CNPJ := '11111111000191';

    // F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
    with RegistroF100New do
    begin
    IND_OPER := indRepCustosDespesasEncargos;
    COD_PART := '1';
    COD_ITEM := '000001'; // Codigo do Item no registro 0200
    DT_OPER := Date();
    VL_OPER := 0.01; // Deve ser Maior que zero
    CST_PIS := stpisCredPresAquiExcRecTribMercInt;
    // Para Operação Representativa de Aquisição, Custos, Despesa ou Encargos, Sujeita à Incidência de Crédito, o CST deve ser referente a Operações com Direito a Crédito (50 a 56) ou a Crédito Presumido (60 a 66).Para Operação Representativa de Receita Auferida, Sujeita ao Pagamento da Contribuição, o CST deve ser igual a 01, 02, 03 ou 05.Para Operação Representativa de Receita Auferida NÃO Sujeita ao Pagamento da Contribuição, o CST deve ser igual a 04, 06, 07, 08, 09, 49 ou 99.
    VL_BC_PIS := 0;
    ALIQ_PIS := 1.2375;
    VL_PIS := 0;
    CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
    VL_BC_COFINS := 0;
    ALIQ_COFINS := 3.04;
    VL_COFINS := 0;
    NAT_BC_CRED := bccAqBensRevenda;
    IND_ORIG_CRED := opcMercadoInterno;
    COD_CTA := '';
    COD_CCUS := '';
    // COD_CCUS      := '123';//Para usar o COD_CCUS é necessário gerar, primeiro, um registro 0600 correspondente.
    DESC_DOC_OPER := '';
    end;
    end;
    end;
    end; }

  btnB_F.Enabled := False;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_F;
    LoadToMemo;
  end;

end;

procedure TFrmSPEDPisCofins.btnB_MClick(Sender: TObject);
// var
// vlBC, vlBcCofins, aliqCofins, vlcredNC: Real;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco M.
  with ACBrSPEDPisCofins1.Bloco_M do
  begin
    with RegistroM001New do
    begin
      IND_MOV := imComDados;

      itmM600.Close;
      itmM600.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
      itmM600.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
      itmM600.Open;


      // M100 - Crédito de PIS/PASEP Relativo ao Período
      { with RegistroM100New do
        begin
        COD_CRED := '306';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_PIS := 0;
        ALIQ_PIS := 0.99;
        QUANT_BC_PIS := 0;
        ALIQ_PIS_QUANT := Null;
        VL_CRED := 0;
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIF := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        // Valor do Crédito disponível, descontado da contribuição apurada no próprio período. Se IND_DESC_CRED=0, informar o valor total do Campo 12; Se IND_DESC_CRED=1, informar o valor parcial do Campo 12.
        SLD_CRED := 0;

        with RegistroM105New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_PIS_TOT := 0;
        VL_BC_PIS_CUM := Null;
        VL_BC_PIS_NC := 0;
        VL_BC_PIS := 0;
        QUANT_BC_PIS_TOT := Null;
        QUANT_BC_PIS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM100New do
        begin
        COD_CRED := '206';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_PIS := 0;
        ALIQ_PIS := 0.99;
        QUANT_BC_PIS := 0;
        ALIQ_PIS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIF := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        // Valor do Crédito disponível, descontado da contribuição apurada no próprio período. Se IND_DESC_CRED=0, informar o valor total do Campo 12; Se IND_DESC_CRED=1, informar o valor parcial do Campo 12.
        SLD_CRED := 0;

        with RegistroM105New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_PIS_TOT := 0;
        VL_BC_PIS_CUM := Null;
        VL_BC_PIS_NC := 0;
        VL_BC_PIS := 0;
        QUANT_BC_PIS_TOT := Null;
        QUANT_BC_PIS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM100New do
        begin
        COD_CRED := '106';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_PIS := 0;
        ALIQ_PIS := 0.99;
        QUANT_BC_PIS := 0;
        ALIQ_PIS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIF := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        // Valor do Crédito disponível, descontado da contribuição apurada no próprio período. Se IND_DESC_CRED=0, informar o valor total do Campo 12; Se IND_DESC_CRED=1, informar o valor parcial do Campo 12.
        SLD_CRED := 0;

        with RegistroM105New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_PIS_TOT := 0;
        VL_BC_PIS_CUM := Null;
        VL_BC_PIS_NC := 0;
        VL_BC_PIS := 0;
        QUANT_BC_PIS_TOT := Null;
        QUANT_BC_PIS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM100New do
        begin
        COD_CRED := '106';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_PIS := 0;
        ALIQ_PIS := 1.2375;
        QUANT_BC_PIS := 0;
        ALIQ_PIS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIF := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        // Valor do Crédito disponível, descontado da contribuição apurada no próprio período. Se IND_DESC_CRED=0, informar o valor total do Campo 12; Se IND_DESC_CRED=1, informar o valor parcial do Campo 12.
        SLD_CRED := 0;

        with RegistroM105New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_PIS := stpisCredPresAquiExcRecTribMercInt;
        VL_BC_PIS_TOT := 0;
        VL_BC_PIS_CUM := Null;
        VL_BC_PIS_NC := 0;
        VL_BC_PIS := 0;
        QUANT_BC_PIS_TOT := Null;
        QUANT_BC_PIS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM200New do
        begin
        VL_TOT_CONT_NC_PER := (itmM600total.AsCurrency)*(0.65/100);
        VL_TOT_CRED_DESC := 0;
        VL_TOT_CRED_DESC_ANT := 0;
        VL_TOT_CONT_NC_DEV := (itmM600total.AsCurrency)*(0.65/100);
        VL_RET_NC := 0;
        VL_OUT_DED_NC := 0;
        VL_CONT_NC_REC :=(itmM600total.AsCurrency)*(0.65/100);
        VL_TOT_CONT_CUM_PER := 0;
        VL_RET_CUM := 0;
        VL_OUT_DED_CUM := 0;
        VL_CONT_CUM_REC := 0;
        VL_TOT_CONT_REC := (itmM600total.AsCurrency)*(0.65/100);

        with RegistroM210New do
        begin
        COD_CONT := ccNaoAcumAliqBasica;
        VL_REC_BRT := itmM600total.AsCurrency;
        VL_BC_CONT := itmM600total.AsCurrency;
        ALIQ_PIS := 0.65;
        QUANT_BC_PIS := 0;
        ALIQ_PIS_QUANT := Null;
        VL_CONT_APUR :=  (itmM600total.AsCurrency)*(0.65/100) ;//itmM600itmpis.AsCurrency;
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CONT_DIFER := 0;
        VL_CONT_DIFER_ANT := 0;
        VL_CONT_PER := (itmM600total.AsCurrency)*(0.65/100);
        end;

        end; }

      { with RegistroM500New do
        begin
        COD_CRED := '306';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_COFINS := 0;
        ALIQ_COFINS := 4.56;
        QUANT_BC_COFINS := 0;
        ALIQ_COFINS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIFER := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        SLD_CRED := 0;

        with RegistroM505New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_COFINS_TOT := 0;
        VL_BC_COFINS_CUM := Null;
        VL_BC_COFINS_NC := 0;
        VL_BC_COFINS := 0;
        QUANT_BC_COFINS_TOT := Null;
        QUANT_BC_COFINS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM500New do
        begin
        COD_CRED := '206';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_COFINS := 0;
        ALIQ_COFINS := 4.56;
        QUANT_BC_COFINS := 0;
        ALIQ_COFINS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIFER := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        SLD_CRED := 0;

        with RegistroM505New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_COFINS_TOT := 0;
        VL_BC_COFINS_CUM := Null;
        VL_BC_COFINS_NC := 0;
        VL_BC_COFINS := 0;
        QUANT_BC_COFINS_TOT := Null;
        QUANT_BC_COFINS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM500New do
        begin
        COD_CRED := '106';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_COFINS := 0;
        ALIQ_COFINS := 3.04;
        QUANT_BC_COFINS := 0;
        ALIQ_COFINS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIFER := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        SLD_CRED := 0;

        with RegistroM505New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
        VL_BC_COFINS_TOT := 0;
        VL_BC_COFINS_CUM := Null;
        VL_BC_COFINS_NC := 0;
        VL_BC_COFINS := 0;
        QUANT_BC_COFINS_TOT := Null;
        QUANT_BC_COFINS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM500New do
        begin
        COD_CRED := '106';
        IND_CRED_ORI := icoOperProprias;
        VL_BC_COFINS := 0;
        ALIQ_COFINS := 4.56;
        QUANT_BC_COFINS := 0;
        ALIQ_COFINS_QUANT := Null;
        VL_CRED := 0; // OBRIGATORIO
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CRED_DIFER := 0;
        VL_CRED_DISP := 0;
        IND_DESC_CRED := idcTotal;
        VL_CRED_DESC := 0;
        SLD_CRED := 0;

        with RegistroM505New do
        begin
        NAT_BC_CRED := bccAqBensRevenda;
        CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
        VL_BC_COFINS_TOT := 0;
        VL_BC_COFINS_CUM := Null;
        VL_BC_COFINS_NC := 0;
        VL_BC_COFINS := 0;
        QUANT_BC_COFINS_TOT := Null;
        QUANT_BC_COFINS := 0;
        DESC_CRED := '';
        end;

        end; }

      { with RegistroM600New do
        begin
        VL_TOT_CONT_NC_PER := itmM600total.AsCurrency*(3/100);
        VL_TOT_CRED_DESC := 0;
        VL_TOT_CRED_DESC_ANT := 0;
        VL_TOT_CONT_NC_DEV := itmM600total.AsCurrency*(3/100);
        VL_RET_NC := 0;
        VL_OUT_DED_NC := 0;
        VL_CONT_NC_REC := itmM600total.AsCurrency*(3/100);
        VL_TOT_CONT_CUM_PER := 0;
        VL_RET_CUM := 0;
        VL_OUT_DED_CUM := 0;
        VL_CONT_CUM_REC := 0;
        VL_TOT_CONT_REC :=itmM600total.AsCurrency*(3/100);

        with RegistroM610New do
        begin
        COD_CONT := ccNaoAcumAliqBasica;
        VL_REC_BRT := itmM600total.AsCurrency;//+itmM600itmdesconto.AsCurrency;
        VL_BC_CONT := itmM600total.AsCurrency;
        ALIQ_COFINS := 3;
        QUANT_BC_COFINS := 0;
        ALIQ_COFINS_QUANT := Null;
        VL_CONT_APUR := itmM600total.AsCurrency*(3/100);//itmM600itmcofins.AsCurrency;
        VL_AJUS_ACRES := 0;
        VL_AJUS_REDUC := 0;
        VL_CONT_DIFER := 0;
        VL_CONT_DIFER_ANT := 0;
        VL_CONT_PER := itmM600total.AsCurrency*(3/100);
        end;


        end; }

    end;
  end;
  btnB_M.Enabled := False;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_M;
    LoadToMemo;
  end;
end;

procedure TFrmSPEDPisCofins.btnB_AClick(Sender: TObject);
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco A.
  btnB_A.Enabled := False;

  { mes.Close;
    mes.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
    mes.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
    mes.Open;



    BNotas := StrToInt64Def(edBufNotas.Text, 1);

    ProgressBar1.Visible := cbConcomitante.Checked;
    ProgressBar1.Max := NNotas;
    ProgressBar1.Position := 0;

    with ACBrSPEDPisCofins1.Bloco_A do
    begin
    with RegistroA001New do
    begin
    IND_MOV := imComDados;
    //
    with RegistroA010New do
    begin

    CNPJ := '11111111000191'; // ou 33333333333328
    for INotas := 1 to NNotas do
    begin


    with RegistroA100New do
    begin
    IND_OPER := itoContratado;
    IND_EMIT := iedfProprio;
    COD_PART := '2'; // baseado no registro 0150
    COD_SIT := sdfRegular;
    SER := '';
    SUB := '';
    NUM_DOC := FormatFloat('NF000000', INotas);
    CHV_NFSE := '';
    DT_DOC := DT_INI + INotas;
    DT_EXE_SERV := DT_INI + INotas;
    VL_DOC := 0.01; // Deve ser maior que zero
    IND_PGTO := tpSemPagamento;
    VL_DESC := 0;
    VL_BC_PIS := 0;
    VL_PIS := 0;
    VL_BC_COFINS := 0;
    VL_COFINS := 0;
    VL_PIS_RET := 0;
    VL_COFINS_RET := 0;
    VL_ISS := 0;

    // A170
    for IItens := 1 to 5 do
    begin

    with RegistroA170New do // Inicio Adicionar os Itens:
    begin
    NUM_ITEM := IItens;
    COD_ITEM := FormatFloat('000000', NUM_ITEM); // Código deve ser baseado no registro 0200
    // COD_ITEM         := IntToStr(NUM_ITEM);
    DESCR_COMPL := FormatFloat('NF000000', INotas) + ' -> ITEM ' + COD_ITEM;
    VL_ITEM := 0;
    VL_DESC := 0;
    NAT_BC_CRED := bccOutrasOpeComDirCredito;
    IND_ORIG_CRED := opcMercadoInterno;
    CST_PIS := stpisOutrasOperacoes;
    VL_BC_PIS := 0;
    ALIQ_PIS := 0;
    VL_PIS := 0;
    CST_COFINS := stcofinsOutrasOperacoes;
    VL_BC_COFINS := 0;
    ALIQ_COFINS := 0;
    VL_COFINS := 0;
    COD_CTA := '01';
    COD_CCUS := '';
    // COD_CCUS         := '123'; //Para usar o COD_CCUS é necessário gerar, primeiro, um registro 0600 correspondente.
    end; // Fim dos Itens;
    end;
    end;
    if cbConcomitante.Checked then
    begin
    if (INotas mod BNotas) = 0 then // Gravar a cada N notas
    begin
    // Grava registros na memoria para o TXT, e limpa memoria
    ACBrSPEDPisCofins1.WriteBloco_A(False); // False, NAO fecha o Bloco
    ProgressBar1.Position := INotas;
    Application.ProcessMessages;
    end;
    end;
    end;
    end;
    end;
    end; }

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_A(true); // True, fecha o Bloco
    LoadToMemo;
  end;

  ProgressBar1.Visible := False;
end;

Procedure TFrmSPEDPisCofins.CarregaEntidades;
Var
  CodEntidade: Integer;
  i: Integer;
Begin
  mEtd.Clear;
  mEtd.Open;

  etd.Close;
  etd.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
  etd.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
  etd.Open;

  etd.First;
  While Not etd.Eof Do
  Begin
    CodEntidade := StrtoInt(etdetdcodigo.AsString + FormatFloat('00', etdedritem.AsInteger));
    If Not mEtd.Locate('etdcodigo', CodEntidade, []) Then
    Begin
      mEtd.Append;
      mEtdetdcodigo.AsInteger := CodEntidade;
      For i := 1 To mEtd.FieldCount - 1 Do
        mEtd.Fields[i] := etd.Fields[i];

      mEtd.Post;
    End;

    etd.Next;
  End;

End;

Procedure TFrmSPEDPisCofins.CarregaUniEPro;
Var
  i: Integer;
  vlSpdChaveBalanco: string;
Begin

  mUni.Clear;
  mPro.Clear;

  mUni.Open;
  mPro.Open;

  //
  // *****  UNIDADES  *****
  //

  Uni.Close;
  Uni.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
  Uni.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
  Uni.Open;

  Uni.First; // ir para o inicio da tabela
  While Not Uni.Eof Do
  Begin
    If Not mUni.Locate('unicodigo', uniunicodigo.AsInteger, []) Then
    Begin
      mUni.Append;
      mUniunicodigo.AsInteger := uniunicodigo.AsInteger;
      mUniunisimbolo.AsString := uniunisimbolo.AsString;
      mUniuninome.AsString := uniuninome.AsString;
      mUni.Post;
    End;

    Uni.Next;
  End;





  //
  // *****  PRODUTOS *****
  //

  consulta.Close;
  consulta.SQL.Text := 'SELECT ivt.spdchave FROM ivt,spd WHERE ivt.spdchave=spd.spdchave and spd.spddatabalanco=:databalanco limit 1';
  consulta.ParamByName('databalanco').AsDate := spdspddatabalanco.AsFloat;
  consulta.Open;
  vlSpdChaveBalanco := consulta.Fieldbyname('spdchave').AsString;

  pro.Close;
  pro.Params[0].AsDate := Self.spdspddatainicial.AsFloat;
  pro.Params[1].AsDate := Self.spdspddatafinal.AsFloat;
  pro.Open;

  pro.First;
  While Not pro.Eof Do
  Begin

    If Not mPro.Locate('procodigo', proprocodigo.AsInteger, []) Then
    Begin
      mPro.Append;
      For i := 0 To mPro.FieldCount - 1 Do
      Begin
        mPro.Fields[i] := pro.Fields[i];
      End;
      mPro.Post;

    End;

    pro.Next;
  End;

End;

end.
