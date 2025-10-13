Unit Frm_SPEDFiscal;

Interface

Uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms, ACBrEFDBlocos,
  Dialogs, StdCtrls, ACBrSpedFiscal, ExtCtrls, ComCtrls, ACBrUtil, ACBrTXTClass,
  UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS, ACBrBase,
  ACBrValidador, Inifiles, Ufuncoes, VirtualTable;

Type

  { TFrmSPEDFiscal }

  TFrmSPEDFiscal = Class(TForm)
    BtnB_0: TButton;
    BtnB_1: TButton;
    BtnB_C: TButton;
    BtnB_D: TButton;
    BtnB_E: TButton;
    BtnB_H: TButton;
    BtnError: TButton;
    BtnTXT: TButton;
    BtnB_9: TButton;
    EdBufNotas: TEdit;
    EdNotas: TEdit;
    EdBufLinhas: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    MemoError: TMemo;
    Label2: TLabel;
    MemoTXT: TMemo;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    mostra: TProgressBar;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    BtnB_G: TButton;
    UCConexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    Spd: TUniQuery;
    Spdspdchave: TIntegerField;
    Spdspdexercicio: TIntegerField;
    Spdspddatainicial: TDateField;
    Spdspddatafinal: TDateField;
    Spdspddatabalanco: TDateField;
    Spdpcccodigo: TStringField;
    Spdspdativo: TIntegerField;
    Dcfg: TDataSource;
    Consulta: TUniQuery;
    Ctd: TUniQuery;
    Etd: TUniQuery;
    Etdetdcodigo: TIntegerField;
    Etdetdidentificacao: TStringField;
    Etdetddoc1: TStringField;
    Etdtpecodigo: TIntegerField;
    Etdedrcodigo: TIntegerField;
    Etdedrinscest: TStringField;
    Etdcddcodigo: TStringField;
    Etdedrrua: TStringField;
    Etdedrnumero: TStringField;
    Etdedrcomple: TStringField;
    Etdedrbairro: TStringField;
    Uni: TUniQuery;
    Uniunicodigo: TIntegerField;
    Uniunisimbolo: TStringField;
    Uniuninome: TStringField;
    Pro: TUniQuery;
    Proprocodigo: TIntegerField;
    Propronome: TStringField;
    Propunbarra: TStringField;
    Protpocodigo: TIntegerField;
    Protpoidentificacao: TStringField;
    Proproncm: TStringField;
    Prounicodigo: TIntegerField;
    Proicmaliquotas: TStringField;
    Prounisimbolo: TStringField;
    Tof: TUniQuery;
    Toftofcodigo: TIntegerField;
    Toftofidentificacao: TStringField;
    Toe: TUniQuery;
    Toetoecodigo: TIntegerField;
    Toetoeidentificacao: TStringField;
    Mes: TUniQuery;
    Mesetdcodigo: TIntegerField;
    Mestdfcodigo: TStringField;
    Messdecodigo: TStringField;
    Mesmesserie: TStringField;
    Mesmesnumero: TIntegerField;
    Mesmeschavenfe: TStringField;
    Mesmesemissao: TDateField;
    Mesmesregistro: TDateField;
    Mesmesvalor: TFloatField;
    Mesmesdesconto: TFloatField;
    Mesmestotal: TFloatField;
    Mesmesfrete: TFloatField;
    Mesmesseguro: TFloatField;
    Mesmesoutras: TFloatField;
    Mesmesbicm: TFloatField;
    Mesmesicm: TFloatField;
    Mesmesbicms: TFloatField;
    Mesmesicms: TFloatField;
    Mesmesipi: TFloatField;
    Mesmespis: TFloatField;
    Mesmescofins: TFloatField;
    Mesmespiss: TFloatField;
    Mesmescofinss: TFloatField;
    Itm: TUniQuery;
    Itmmeschave: TIntegerField;
    Itmitmitem: TIntegerField;
    Itmprocodigo: TIntegerField;
    Itmitmdesccomple: TStringField;
    Itmunicodigo: TIntegerField;
    Itmitmquantidade: TFloatField;
    Itmitmdesconto: TFloatField;
    Itmitmmovifisico: TStringField;
    Itmtoecodigo: TIntegerField;
    Itmitmbicm: TFloatField;
    Itmitmicm: TFloatField;
    Itmitmaliqicm: TStringField;
    Itmitmicms: TFloatField;
    Itmitmaliqicms: TFloatField;
    Itmitmapuipi: TStringField;
    Itmcsicodigo: TStringField;
    Itmceicodigo: TStringField;
    Itmitmbipi: TFloatField;
    Itmitmaliqipi: TFloatField;
    Itmitmipi: TFloatField;
    Itmcspcodigo: TStringField;
    Itmitmbpis: TFloatField;
    Itmitmaliqpis: TFloatField;
    Itmitmquantpis: TFloatField;
    Itmitmaliqpisvalor: TFloatField;
    Itmitmpis: TFloatField;
    Itmcsfcodigo: TStringField;
    Itmitmbcofins: TFloatField;
    Itmitmaliqcofins: TFloatField;
    Itmitmquantcofins: TFloatField;
    Itmitmaliqcofinsvalor: TFloatField;
    Itmitmcofins: TFloatField;
    Itmitmchave: TIntegerField;
    Itmcfocfop: TStringField;
    Itmitmbicms: TFloatField;
    Ecf: TUniQuery;
    Ecfecfcodigo: TIntegerField;
    Ecfecfmodelo: TStringField;
    Ecfecfserie: TStringField;
    Ecfecftipodoc: TStringField;
    Ecfecfcaixa: TIntegerField;
    Rrz: TUniQuery;
    Rrzrrzcodigo: TIntegerField;
    Rrzrrzdata: TDateField;
    Rrzecfcodigo: TIntegerField;
    Rrzrrzcontadorreinicio: TIntegerField;
    Rrzrrzcontadorreducao: TIntegerField;
    Rrzrrznumordultdoc: TIntegerField;
    Rrzrrzvalorgrantot: TFloatField;
    Rrzrrzvalorvndbru: TFloatField;
    Tpz: TUniQuery;
    Tpztpzchave: TIntegerField;
    Tpztpzcodigo: TStringField;
    Tpztpzvlracumtot: TFloatField;
    Tpztpznrtot: TIntegerField;
    Tpztpzdescr: TStringField;
    Tpzrrzcodigo: TIntegerField;
    Mdf: TUniQuery;
    Mdfmdfchave: TIntegerField;
    Mdfrrzcodigo: TIntegerField;
    Mdfcstcodigo: TStringField;
    Mdfcfocfop: TStringField;
    Mdfmdfaliquota: TFloatField;
    Mdfmdfvlopr: TFloatField;
    Mdfmdfvlbcicms: TFloatField;
    Mdftofcodigo: TIntegerField;
    Cuf: TUniQuery;
    Cufcufchave: TIntegerField;
    Cuftdfcodigo: TStringField;
    Cufsdecodigo: TStringField;
    Cufcufcco: TIntegerField;
    Cufcufdata: TDateField;
    Cufcuftotal: TFloatField;
    Cufcufpis: TFloatField;
    Cufcufcofins: TFloatField;
    Cufcufdoc1: TStringField;
    Cufcufnome: TStringField;
    Cufrrzcodigo: TIntegerField;
    Icu: TUniQuery;
    Icuicuchave: TIntegerField;
    Icuprocodigo: TIntegerField;
    Icucstcodigo: TStringField;
    Icuunicodigo: TIntegerField;
    Icuicuquantidade: TFloatField;
    Icuicuquantidadecanc: TFloatField;
    Icuicuvalor: TFloatField;
    Icucfocfop: TStringField;
    Icuicualiqicm: TFloatField;
    Icuicupis: TFloatField;
    Icuicucofins: TFloatField;
    Icuunisimbolo: TStringField;
    Spdspdmotivoinv: TStringField;
    Spdspdvalortotal: TFloatField;
    Ivt: TUniQuery;
    Ivtivtchave: TIntegerField;
    Ivtspdchave: TIntegerField;
    Ivtprocodigo: TIntegerField;
    Ivtpcccodigo: TStringField;
    Ivtivtquantidade: TFloatField;
    Ivtivtvalor: TFloatField;
    Ivtivttotal: TFloatField;
    Ivtivtproprietario: TStringField;
    Ivtivtdescricao: TStringField;
    Ivtetdcodigo: TIntegerField;
    Ivtpronome: TStringField;
    Ivtunisimbolo: TStringField;
    Proicmcodigo: TStringField;
    Itmcfocfopdestinacao: TStringField;
    Itmcstcodigo: TStringField;
    Itmunisimbolo: TStringField;
    Itmitmtotal: TFloatField;
    Mesmeschave: TIntegerField;
    itmC190: TUniQuery;
    itmC190itmbicm: TFloatField;
    itmC190itmicm: TFloatField;
    itmC190itmaliqicm: TStringField;
    itmC190itmicms: TFloatField;
    itmC190itmipi: TFloatField;
    itmC190itmbicms: TFloatField;
    itmC190cfocfopdestinacao: TStringField;
    itmC190cstcodigo: TStringField;
    itmC190total: TFloatField;
    Itme110: TUniQuery;
    Mestoecodigo: TIntegerField;
    Drrz: TDataSource;
    Decf: TDataSource;
    Dcuf: TDataSource;
    Mdfmdfvlicms: TFloatField;
    Procuf: TUniQuery;
    Unicuf: TUniQuery;
    Toecuf: TUniQuery;
    Procufprocodigo: TIntegerField;
    Procufpronome: TStringField;
    Procufpunbarra: TStringField;
    Procuftpocodigo: TIntegerField;
    Procuftpoidentificacao: TStringField;
    Procufproncm: TStringField;
    Procuficmcodigo: TStringField;
    Procufunicodigo: TIntegerField;
    Procuficmaliquotas: TStringField;
    Procufunisimbolo: TStringField;
    Unicufunicodigo: TIntegerField;
    Unicufunisimbolo: TStringField;
    Unicufuninome: TStringField;
    Toecuftoecodigo: TIntegerField;
    Toecuftoeidentificacao: TStringField;
    ACBrValidador1: TACBrValidador;
    Proivt: TUniQuery;
    Proivtprocodigo: TIntegerField;
    Proivtpronome: TStringField;
    Proivtpunbarra: TStringField;
    Proivttpocodigo: TIntegerField;
    Proivttpoidentificacao: TStringField;
    Proivtproncm: TStringField;
    Proivticmcodigo: TStringField;
    Proivtunicodigo: TIntegerField;
    Proivticmaliquotas: TStringField;
    Proivtunisimbolo: TStringField;
    Uniivt: TUniQuery;
    Uniivtunicodigo: TIntegerField;
    Uniivtunisimbolo: TStringField;
    Uniivtuninome: TStringField;
    Cte: TUniQuery;
    Ctectechave: TIntegerField;
    Ctecteoperacao: TStringField;
    Ctecteemissor: TStringField;
    Cteetdcodigo: TIntegerField;
    Ctetdfcodigo: TStringField;
    Ctesdecodigo: TStringField;
    Ctecteserie: TStringField;
    Ctectesubserie: TStringField;
    Ctectenumero: TStringField;
    Ctecteechave: TStringField;
    Ctecteemissao: TDateField;
    Ctectedtaquis: TDateField;
    Ctecteechaveref: TStringField;
    Ctectevalor: TFloatField;
    Ctectedesconto: TFloatField;
    Ctectevalordoc: TFloatField;
    Ctectebicm: TFloatField;
    Ctecteicm: TFloatField;
    Ctectevlrntrbi: TFloatField;
    Cteticcodigo: TIntegerField;
    Ctepcccodigo: TStringField;
    Cteictchave: TIntegerField;
    Ctecstcodigo: TStringField;
    Ctecfocfop: TStringField;
    Cteictaliqicm: TFloatField;
    Cteictvlroperacao: TFloatField;
    Cteictbicm: TFloatField;
    Cteicticm: TFloatField;
    Cteictredbase: TFloatField;
    Ctetofcodigo: TIntegerField;
    Validadorgtin: TACBrValidador;
    Itme110totalicms: TFloatField;
    Etdcte: TUniQuery;
    Etdcteetdcodigo: TIntegerField;
    Etdcteetdidentificacao: TStringField;
    Etdcteetddoc1: TStringField;
    Etdctetpecodigo: TIntegerField;
    Etdcteedrcodigo: TIntegerField;
    Etdcteedrinscest: TStringField;
    Etdctecddcodigo: TStringField;
    Etdcteedrrua: TStringField;
    Etdcteedrnumero: TStringField;
    Etdcteedrcomple: TStringField;
    Etdcteedrbairro: TStringField;
    Ctee110: TUniQuery;
    Ctee110totalicms: TFloatField;
    Cufe110: TUniQuery;
    Csv: TUniQuery;
    Csvcsvchave: TIntegerField;
    Csvetdcodigo: TIntegerField;
    Csvcstcodigo: TStringField;
    Csvcfocfop: TStringField;
    Csvcsvemissao: TDateField;
    Csvcsvregistro: TDateField;
    Csvcsvserie: TStringField;
    Csvcsvsubserie: TStringField;
    Csvcsvnumero: TStringField;
    Csvcsvvalor: TFloatField;
    Csvcsvdesconto: TFloatField;
    Csvcsvgeral: TFloatField;
    Csvcsvbicm: TFloatField;
    Csvcsvicm: TFloatField;
    Csvcsvbicms: TFloatField;
    Csvcsvicms: TFloatField;
    Csvcsvpis: TFloatField;
    Csvcsvcofins: TFloatField;
    Csvcsvaliqicm: TFloatField;
    Csvtoecodigo: TIntegerField;
    Csvtdfcodigo: TStringField;
    Csvsdecodigo: TStringField;
    Etdcsv: TUniQuery;
    Etdcsvetdcodigo: TIntegerField;
    Etdcsvetdidentificacao: TStringField;
    Etdcsvetddoc1: TStringField;
    Etdcsvtpecodigo: TIntegerField;
    Etdcsvedrcodigo: TIntegerField;
    Etdcsvedrinscest: TStringField;
    Etdcsvcddcodigo: TStringField;
    Etdcsvedrrua: TStringField;
    Etdcsvedrnumero: TStringField;
    Etdcsvedrcomple: TStringField;
    Etdcsvedrbairro: TStringField;
    Mestfpcodigo: TIntegerField;
    Mesrefcodigo: TIntegerField;
    Mesttecodigo: TIntegerField;
    Mesttmcodigo: TIntegerField;
    Csvtcscodigo: TStringField;
    Csvclccodigo: TStringField;
    Ctetcfcodigo: TStringField;
    Cterefcodigo: TIntegerField;
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
    Etdedritem: TIntegerField;
    Ctdctdcodigo: TIntegerField;
    Ctdcfgcodigo: TIntegerField;
    Ctdctdidentificacao: TStringField;
    Ctdctdcpf: TStringField;
    Ctdctdcrc: TStringField;
    Ctdctdcnpj: TStringField;
    Ctdctdcep: TStringField;
    Ctdctdendereco: TStringField;
    Ctdctdnumero: TStringField;
    Ctdctdcomple: TStringField;
    Ctdctdbairro: TStringField;
    Ctdctdfone: TStringField;
    Ctdctdfax: TStringField;
    Ctdctdemail: TStringField;
    Ctdcddcodigo: TStringField;
    Etdcteedritem: TIntegerField;
    MPro: TVirtualTable;
    MUni: TVirtualTable;
    MUniunisimbolo: TStringField;
    MUniuninome: TStringField;
    MUniunicodigo: TIntegerField;
    MProprocodigo: TIntegerField;
    MPropronome: TStringField;
    MPropunbarra: TStringField;
    MProtpocodigo: TIntegerField;
    MProtpoidentificacao: TStringField;
    MProproncm: TStringField;
    MProicmcodigo: TStringField;
    MProunicodigo: TIntegerField;
    MProicmaliquotas: TStringField;
    MProunisimbolo: TStringField;
    MEtd: TVirtualTable;
    MEtdetdcodigo: TIntegerField;
    MEtdetdidentificacao: TStringField;
    MEtdetddoc1: TStringField;
    MEtdtpecodigo: TIntegerField;
    MEtdedrcodigo: TIntegerField;
    MEtdedrinscest: TStringField;
    MEtdcddcodigo: TStringField;
    MEtdedrrua: TStringField;
    MEtdedrnumero: TStringField;
    MEtdedrcomple: TStringField;
    MEtdedrbairro: TStringField;
    MEtdedritem: TIntegerField;
    Etdcsvedritem: TIntegerField;
    Cfg: TUniQuery;
    Cfgcfgcodigo: TIntegerField;
    Cfgcrtcodigo: TIntegerField;
    Cfgssncodigo: TIntegerField;
    Cfgcfgperfil: TStringField;
    Cfgcfgcnae: TStringField;
    Cfgcfgetdsped: TIntegerField;
    Cfgcfgspedicms: TStringField;
    Cfgcfgcstterceiros: TStringField;
    Cfgcfgcstcuf: TStringField;
    Mesedritem: TIntegerField;
    tom: TUniQuery;
    tomtofcodigo: TIntegerField;
    tomtofidentificacao: TStringField;
    icuC490: TUniQuery;
    icuC490cstcodigo: TStringField;
    icuC490cfocfop: TStringField;
    icuC490icuvalor: TFloatField;
    icuC490icuicm: TFloatField;
    icuC490icualiqicm: TFloatField;
    cbConcomitante: TCheckBox;
    mesmesprodutos: TFloatField;
    mestemcodigo: TIntegerField;
    mad: TUniQuery;
    etdadc: TUniQuery;
    etdadcetdcodigo: TIntegerField;
    etdadcetdidentificacao: TStringField;
    etdadcetddoc1: TStringField;
    etdadctpecodigo: TIntegerField;
    etdadcedrcodigo: TIntegerField;
    etdadcedrinscest: TStringField;
    etdadccddcodigo: TStringField;
    etdadcedrrua: TStringField;
    etdadcedrnumero: TStringField;
    etdadcedrcomple: TStringField;
    etdadcedrbairro: TStringField;
    etdadcedritem: TIntegerField;
    madmadchave: TIntegerField;
    madetdcodigo: TIntegerField;
    madspdchave: TIntegerField;
    madmadvalorccredito: TFloatField;
    madmadvalorcdebito: TFloatField;
    btnB_Completo: TButton;
    edtFile: TEdit;
    Label1: TLabel;
    Procedure BtnB_0Click(Sender: TObject);
    Procedure BtnB_9Click(Sender: TObject);
    Procedure BtnTXTClick(Sender: TObject);
    Procedure BtnB_1Click(Sender: TObject);
    Procedure BtnB_CClick(Sender: TObject);
    Procedure BtnB_DClick(Sender: TObject);
    Procedure BtnB_EClick(Sender: TObject);
    Procedure BtnB_HClick(Sender: TObject);
    Procedure BtnErrorClick(Sender: TObject);
    Procedure EdtFileChange(Sender: TObject);
    Procedure CbConcomitanteClick(Sender: TObject);
    Procedure ACBrSPEDFiscal1Error(Const MsnError: AnsiString);
    Procedure BtnB_CompletoClick(Sender: TObject);
    Procedure BtnB_GClick(Sender: TObject);
    Procedure FormShow(Sender: TObject);
  Private
    Procedure LoadToMemo;
    Function SoNumeros(Const Texto: String): String;
    Procedure CarregaUniEPro;
    Procedure CarregaEntidades;
    { Private declarations }
  Public
    { Public declarations }
    Vusrcodigo: String;
  End;

Var
  FrmSPEDFiscal: TFrmSPEDFiscal;

Implementation

{$R *.dfm}

Function TFrmSPEDFiscal.SoNumeros(Const Texto: String): String;
//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  I: Integer;
  S: String;
Begin
  S := '';
  For I := 1 To Length(Texto) Do
  Begin
    If (Texto[I] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, I, 1);
    End;
  End;
  Result := S;
End;

Procedure TFrmSPEDFiscal.ACBrSPEDFiscal1Error(Const MsnError: AnsiString);
Begin
  MemoError.Lines.Add(MsnError);
End;

Procedure TFrmSPEDFiscal.BtnB_0Click(Sender: TObject);

Const
  StrUNID: Array [0 .. 4] Of String = ('PC', 'UN', 'LT', 'PC', 'MT');

Var
  Int0150: Integer;
  Int0175: Integer;
  Int0300: Integer;
  Int0190: Integer;
  Int0500: Integer;
  Int0600: Integer;
  Vuniinv: String;
  Pode: Boolean;
  CodEntidade: String;

Begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 0.
  // abertura das tabelas do Bloco-0(Abertura do arquivo digital e identificação da Entidade.
  Cfg.Close;
  Spd.Close;
  Ctd.Close;
  Etd.Close;
  Uni.Close;
  Pro.Close;
  Toe.Close;
  Tof.Close;

  Cfg.Open;
  Spd.Open;
  Ctd.Open;
  Etd.Open;
  Uni.Open;
  Pro.Open;
  Tof.Open;

  CfgEtd.Open;

  cbConcomitante.Enabled := False;
  BtnB_0.Enabled := False;
  BtnB_C.Enabled := True;

  // Definindo

  With ACBrSPEDFiscal1 Do // Daniel
  Begin
    DT_INI := Self.Spdspddatainicial.AsFloat;
    DT_FIN := Self.Spdspddatafinal.AsFloat;
  End;

  mad.Close;
  mad.Params[0].AsInteger := Self.Spdspdchave.AsInteger;
  mad.Open;

  Toe.Close;
  Toe.Params[0].AsFloat := Self.Spdspddatainicial.AsFloat;
  Toe.Params[1].AsFloat := Self.Spdspddatafinal.AsFloat;
  Toe.Open;

  If cbConcomitante.Checked Then
  Begin
    With ACBrSPEDFiscal1 Do
    Begin
      LinhasBuffer := StrToIntDef(EdBufLinhas.Text, 0);
      IniciaGeracao;
    End;
    LoadToMemo;
  End;

  With ACBrSPEDFiscal1.Bloco_0 Do
  Begin
    // Dados da Empresa
    // Daniel

    If CfgEtd.Active Then
    Begin
      If CfgEtd.RecordCount > 0 Then
      Begin
        With Registro0000New Do
        Begin
          COD_VER := vlVersao108; // Janeiro/14 NOVA VERSÃO 108 = (vlVersao107)
          COD_FIN := RaOriginal;
          NOME := Trim(Self.CfgEtdetdidentificacao.AsString);
          CNPJ := Self.SoNumeros(Self.CfgEtdetddoc1.AsString);
          CPF := '';
          UF := Self.CfgEtdufssigla.AsString;
          IE := Self.SoNumeros(Self.CfgEtdedrinscest.AsString);
          COD_MUN := Self.CfgEtdcddcodigo.AsInteger;
          IM := '';
          SUFRAMA := '';
          IND_PERFIL := PfPerfilA;
          IND_ATIV := AtOutros;
        End;
      End;
    End;

    With Registro0001New Do
    Begin
      IND_MOV := ImComDados;

      // FILHO - Dados complementares da Empresa                                       // Daniel
      With Registro0005New Do
      Begin
        FANTASIA := Trim(Self.CfgEtdetdapelido.AsString);
        CEP := Self.SoNumeros(Self.CfgEtdedrcep.AsString);
        ENDERECO := Trim(Self.CfgEtdedrrua.AsString);
        NUM := Trim(Self.CfgEtdedrnumero.AsString);
        COMPL := Trim(Self.CfgEtdedrcomple.AsString);
        BAIRRO := Trim(Self.CfgEtdedrbairro.AsString);
        FONE := Self.SoNumeros(Self.CfgEtdetftelefone.AsString);
        FAX := '';
        EMAIL := Self.CfgEtdeteemail.AsString;
      End;

      // FILHO - Dados do contador.                                                    // Daniel
      With Registro0100New Do
      Begin
        NOME := Trim(Self.Ctdctdidentificacao.AsString);
        CPF := Self.SoNumeros(Self.Ctdctdcpf.AsString);
        CRC := Self.SoNumeros(Self.Ctdctdcrc.AsString);
        CNPJ := Self.SoNumeros(Self.Ctdctdcnpj.AsString);
        CEP := Self.SoNumeros(Self.Ctdctdcep.AsString);
        ENDERECO := Trim(Self.Ctdctdendereco.AsString);
        NUM := Self.Ctdctdnumero.AsString;
        COMPL := '';
        BAIRRO := Trim(Self.Ctdctdbairro.AsString);
        FONE := Self.SoNumeros(Self.Ctdctdfone.AsString);
        FAX := Self.SoNumeros(Self.Ctdctdfax.AsString);
        EMAIL := Self.Ctdctdemail.AsString;
        COD_MUN := Self.Ctdcddcodigo.AsInteger;
      End;






      //
      // ***** PARTICIPANTES *********
      //

      CarregaEntidades;

      MEtd.IndexFieldNames := 'etdidentificacao';
      MEtd.First;
      While Not MEtd.Eof Do
      Begin

        If Not Registro0150.LocalizaRegistro(MEtdetdcodigo.AsString) Then
        Begin

          With Registro0150New Do
          Begin
            COD_PART := MEtdetdcodigo.AsString;
            NOME := Trim(Self.MEtdetdidentificacao.AsString);
            COD_PAIS := '1058';
            CNPJ := '';
            CPF := '';

            If (Self.MEtdtpecodigo.AsInteger = 1) Or (Self.MEtdtpecodigo.AsInteger = 3) Then
              CPF := Self.SoNumeros(Self.MEtdetddoc1.AsString)
            Else
              CNPJ := Self.SoNumeros(Self.MEtdetddoc1.AsString);

            IE := Self.SoNumeros(Self.MEtdedrinscest.AsString);
            COD_MUN := Self.MEtdcddcodigo.AsInteger;
            SUFRAMA := '';
            ENDERECO := Trim(Self.MEtdedrrua.AsString);
            NUM := Trim(Self.MEtdedrnumero.AsString);
            COMPL := Trim(Self.MEtdedrcomple.AsString);
            BAIRRO := Trim(Self.MEtdedrbairro.AsString);

            // Registro de alterações
            { With Registro0175New Do // ajustar
              Begin
              DT_ALT := DT_INI + 1;
              NR_CAMPO := '1';
              CONT_ANT := 'CAMPO ANTERIOR ' + '1';
              End; }
          End;
        End;

        MEtd.Next;
      End;










      //
      // *****  UNIDADES E PRODUTOS
      //

      CarregaUniEPro;

      MUni.First; // ir para o inicio da tabela
      While Not MUni.Eof Do
      Begin

        With Registro0190New Do
        Begin
          UNID := Self.MUniunisimbolo.AsString;
          DESCR := Self.MUniuninome.AsString;
        End;

        MUni.Next;
      End;

      MPro.IndexFieldNames := 'procodigo';

      MPro.First; // ir para o inicio da tabela
      While Not MPro.Eof Do
      Begin

        With Registro0200New Do // Fran - 21/12/2011 as 10hs4min
        Begin

          COD_ITEM := Self.MProprocodigo.AsString; // '000001'-   código do item
          DESCR_ITEM := Trim(Self.MPropronome.AsString); // 'PRODUTO 1'- Descrição do item

          COD_BARRA := '';

          If EAN13Valido(Floattostr(Strtofloat(Self.MPropunbarra.AsString))) Then
            COD_BARRA := Self.MPropunbarra.AsString; // '' - Representação alfanumérico do código de barra do produto, se houver

          UNID_INV := Self.MProunisimbolo.AsString; // 'UN' - Unidade de medida utilizada na qualificação de estoques

          Case (Self.MProtpocodigo.AsInteger) Of
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

          COD_NCM := Copy(Self.MProproncm.AsString, 1, 8); // '30049026';  Código da Nomenclatura Comum do Mercdosul

          COD_GEN := '';

          If (Copy(Self.MProproncm.AsString, 1, 2) <> '00') And (Length(Self.MProproncm.AsString) = 8) Then
            COD_GEN := Copy(Self.MProproncm.AsString, 1, 2); // '30' - Código do gênero do item, conforme a tabela 4.2.1

          If (MProicmaliquotas.AsString = 'FF') Or (MProicmaliquotas.AsString = 'NN') Or (MProicmaliquotas.AsString = 'II') Then
            ALIQ_ICMS := 0 // usar a aliquota 0
          Else
            ALIQ_ICMS := Self.MProicmaliquotas.AsCurrency; // 17.00;

          Consulta.Close;
          Consulta.SQL.Text := 'SELECT DISTINCT  uni.unisimbolo, pun.punmultiplicador ';
          Consulta.SQL.Add('FROM itm,pro,pun,uni,mes,toe WHERE ');
          Consulta.SQL.Add('pro.procodigo=itm.procodigo ');
          Consulta.SQL.Add('AND itm.puncodigo=pun.puncodigo ');
          Consulta.SQL.Add('AND uni.unicodigo=itm.unicodigo ');
          Consulta.SQL.Add('AND mes.mesregistro>=' + QuotedStr(Ajustadata(Self.Spdspddatainicial.AsString)) + ' ');
          Consulta.SQL.Add('AND mes.mesregistro<=' + QuotedStr(Ajustadata(Self.Spdspddatafinal.AsString)) + ' ');
          Consulta.SQL.Add('AND mes.toecodigo=toe.toecodigo ');
          Consulta.SQL.Add('AND toe.ttmcodigo=1 ');
          Consulta.SQL.Add('AND mes.meschave=itm.meschave ');
          Consulta.SQL.Add('AND itm.procodigo=' + Self.MProprocodigo.AsString + ' ');
          Consulta.SQL.Add('AND unisimbolo<>' + QuotedStr(UNID_INV));

          Consulta.Open;

          If Not Consulta.IsEmpty Then
          Begin
            Consulta.First;
            While Not Consulta.Eof Do
            Begin
              With Registro0220New Do
              Begin
                UNID_CONV := Consulta.Fields[0].AsString;
                FAT_CONV := Consulta.Fields[1].AsFloat;
              End;
              Consulta.Next;
            End;
          End;


          // unidades base do cadastro não utilizadas em movimentações no mes

          If Not MUni.Locate('unisimbolo', UNID_INV, []) Then
          Begin

            Consulta.Close;
            Consulta.SQL.Text := 'SELECT punmultiplicador, uninome FROM pun,uni WHERE ';
            Consulta.SQL.Add('pun.unicodigo=uni.unicodigo ');
            Consulta.SQL.Add('AND pun.procodigo=' + Self.MProprocodigo.AsString + ' ');
            Consulta.SQL.Add('AND unisimbolo=' + QuotedStr(UNID_INV));
            Consulta.Open;

            If Not Consulta.IsEmpty Then
            Begin
              If Not Registro0190.LocalizaRegistro(UNID_INV) Then
              Begin
                With Registro0190New Do
                Begin
                  UNID := UNID_INV;
                  DESCR := Consulta.Fields[1].AsString;
                End;
              End;
            End;
          End;
        End;

        MPro.Next;
      End;





      // FILHO
      { For int0300 := 1 To 10 Do
        Begin
        // 10 Bens Imobilizados
        With Registro0300New Do
        Begin
        COD_IND_BEM := FormatFloat('000000', int0300);                           // não será informado
        IDENT_MERC := 1;
        DESCR_ITEM := 'DESCRIÇÃO DO ITEM';
        COD_PRNC := '';
        COD_CTA := '';
        NR_PARC := 10;
        // FILHO
        With Registro0305New Do
        Begin
        COD_CCUS := '1';
        //            FUNC := 'BREVE DESCRIÇÃO DA FUNÇÃO DO IMOBILIZADO ' +FormatFloat('000000', int0300);;
        VIDA_UTIL := 60;
        End;
        End;
        End; }

      Toe.Close;
      Toe.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
      Toe.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
      Toe.Open;

      Toe.First; // ir para o inicio da tabela                                    // Fran - 21/12/2011 as 10hs20min
      While Not Toe.Eof Do
      Begin
        With Registro0400New Do
        Begin
          COD_NAT := Self.Toetoecodigo.AsString; // '12020';
          DESCR_NAT := Self.Toetoeidentificacao.AsString; // 'DESCRIÇÃO DA NATUREZA DE OPERAÇÃO 12020';
        End;
        Toe.Next;
      End;

      { toecuf.Close;
        toecuf.Open;

        toecuf.First; // ir para o inicio da tabela                                    // Fran - 21/12/2011 as 10hs20min
        While Not toecuf.Eof Do
        Begin
        if not toe.Locate('toecodigo',self.toecuftoecodigo.AsInteger,[]) then
        begin
        With Registro0400New Do
        Begin
        COD_NAT := self.toecuftoecodigo.AsString; // '12020';
        DESCR_NAT := self.toecuftoeidentificacao.AsString; // 'DESCRIÇÃO DA NATUREZA DE OPERAÇÃO 12020';
        End;
        end;
        toecuf.Next;
        End; }

      { tic.Close;
        tic.Params[0].Asdate := self.spdspddatainicial.Asfloat;
        tic.Params[1].Asdate := self.spdspddatafinal.Asfloat;
        tic.Open;


        tic.First; // ir para o inicio da tabela                                    // Fran - 21/12/2011 as 10hs25min
        While Not tic.Eof Do
        Begin
        With Registro0450New Do
        Begin
        COD_INF := self.ticticcodigo.AsString; //'000001';
        TXT := self.ticticidentificacao.AsString; //'INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL';
        End;
        tic.Next;
        End; }

      { tof.First; // ir para o inicio da tabela                                   // Fran - 21/12/2011 as 10hs27min
        While Not tof.Eof Do
        Begin
        With Registro0460New Do
        Begin
        COD_OBS := self.toftofcodigo.AsString; //'000001';
        TXT := self.toftofidentificacao.AsString; //'TEXTO DE OBSERVAÇÃO DO DOCUMENTO FISCAL ';
        End;
        tof.Next;
        End; }

    End;
  End;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_0;
    LoadToMemo;
  End;

  // Showmessage('Concluido com sucesso!');
End; // Regsitro 990 - Encerramento do bloco(0)

Procedure TFrmSPEDFiscal.BtnB_9Click(Sender: TObject);
Begin
  BtnB_9.Enabled := False;
  ACBrSPEDFiscal1.WriteBloco_9;
  LoadToMemo;

  // Habilita os botões
  BtnB_0.Enabled := True;
  BtnB_1.Enabled := True;
  BtnB_C.Enabled := True;
  BtnB_D.Enabled := True;
  BtnB_E.Enabled := True;
  BtnB_G.Enabled := True;
  BtnB_H.Enabled := True;

  cbConcomitante.Enabled := True;
  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnTXTClick(Sender: TObject);
Begin
  BtnTXT.Enabled := False;

  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef(EdBufLinhas.Text, 0);

  { With ACBrSPEDFiscal1 Do
    Begin
    DT_INI := StrToDate('01/11/2011');
    DT_FIN := StrToDate('30/11/2011');
    End; }

  // Limpa a lista de erros.
  MemoError.Lines.Clear;
  // Informa a pasta onde será salvo o arquivo TXT.
  // ACBrSpedFiscal1.Path := '.\Arquivo Sped TXT\';

  // Método que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
  BtnB_0.Enabled := True;
  BtnTXT.Enabled := True;
  cbConcomitante.Enabled := True;
End;

Procedure TFrmSPEDFiscal.BtnErrorClick(Sender: TObject);
Begin
  { With ACBrSPEDFiscal1 Do
    Begin
    DT_INI := StrToDate('01/07/2011');
    DT_FIN := StrToDate('01/07/2011');
    End; }

  // Limpa a lista de erros.
  MemoError.Lines.Clear;

  // Método que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT;

  // Habilita os botões
  BtnB_0.Enabled := True;
  BtnB_1.Enabled := True;
  BtnB_C.Enabled := True;
  BtnB_D.Enabled := True;
  BtnB_E.Enabled := True;
  BtnB_H.Enabled := True;
End;

Procedure TFrmSPEDFiscal.BtnB_1Click(Sender: TObject);
Begin
  BtnB_1.Enabled := False;
  BtnB_9.Enabled := cbConcomitante.Checked;

  // Alimenta o componente com informações para gerar todos os registros do Bloco 1.
  With ACBrSPEDFiscal1.Bloco_1 Do
  Begin
    With Registro1001New Do
    Begin
      IND_MOV := ImComDados; // imSemDados;
    End;

    With Registro1010New Do
    Begin
      IND_EXP := 'N';
      IND_CCRF := 'N';
      IND_COMB := 'N';
      IND_USINA := 'N';
      IND_VA := 'N';
      IND_EE := 'N';
      if mad.RecordCount = 0 then
        IND_CART := 'N' // define se houve operações com cartoes
      else
        IND_CART := 'S'; // define se houve operações com cartoes
      IND_FORM := 'N';
      IND_AER := 'N';
    End;

    if mad.RecordCount > 0 then
    begin
      mad.First;
      while not mad.Eof do
      begin
        With Registro1600New Do
        Begin
          COD_PART := madetdcodigo.AsString + '01';
          TOT_CREDITO := madmadvalorccredito.AsCurrency;
          TOT_DEBITO := madmadvalorcdebito.AsCurrency

        End;
        mad.Next;
      end;

    end;

  End;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_1;
    LoadToMemo;
  End;

  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_CClick(Sender: TObject);
Var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
  VQueryC190: String;
  VQueryC490: String;
Begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C. -  Documentos Fiscais - Mercadorias
  BtnB_C.Enabled := False;
  BtnB_D.Enabled := True;

  NNotas := StrToInt64Def(EdNotas.Text, 1);
  BNotas := StrToInt64Def(EdBufNotas.Text, 1);

  Mes.Close;
  Mes.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Mes.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Mes.Open;

  Rrz.Close;
  Rrz.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Rrz.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Rrz.Open;

  With ACBrSPEDFiscal1.Bloco_C Do
  Begin
    If (Mes.RecordCount > 0) Or (Rrz.RecordCount > 0) Then
    Begin

      With RegistroC001New Do
      Begin
        IND_MOV := ImComDados;




        //
        // *****  NOTAS FISCAIS  *****
        //

        Mes.First; // ir para o inicio da tabela
        While Not Mes.Eof Do
        Begin // Fran  - 21/12/2011 as 17hs30min
          if (mestemcodigo.AsInteger = 5) or (mestemcodigo.AsInteger = 3) then
          begin
            If (Mes.RecordCount > 0) Then
            Begin

              With RegistroC100New Do // Nota Fiscal, Nota Fiscal avulsa, Nota Fiscal de produtor e NF-e
              Begin

                If Self.Mesttecodigo.AsInteger = 0 Then // Tipo de operação (0-Entrada,1-Saida)
                  IND_OPER := TpEntradaAquisicao
                Else If Self.Mesttecodigo.AsInteger = 1 Then
                  IND_OPER := TpSaidaPrestacao;

                If Mesttmcodigo.AsInteger = 0 Then // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                  IND_EMIT := EdEmissaoPropria
                Else If Self.Mesttmcodigo.AsInteger = 1 Then
                  IND_EMIT := EdTerceiros;

                COD_MOD := Self.Mestdfcodigo.AsString; // Modelo de documento fiscal (Nota fiscal, Nota Fiscal Eletrônica...)

                If Self.Messdecodigo.AsString = '00' Then // Situação do documento fiscal(documento regular,documento fiscal complementar...)
                  COD_SIT := SdRegular // Documento regular
                Else If Self.Messdecodigo.AsString = '01' Then
                  COD_SIT := SdExtempRegular // Escrituração extemporânea de documento regular
                Else If Self.Messdecodigo.AsString = '02' Then
                  COD_SIT := SdCancelado // Documento cancelado
                Else If Self.Messdecodigo.AsString = '03' Then
                  COD_SIT := SdCanceladoExtemp
                  // Escrituração extemporânea de documento cancelado
                Else If Self.Messdecodigo.AsString = '04' Then
                  COD_SIT := SdDoctoDenegado // 04 - NF-e ou CT-e - denegado
                Else If Self.Messdecodigo.AsString = '05' Then
                  COD_SIT := SdDoctoNumInutilizada // 05 - NF-e ou CT-e - Numeração inutilizada
                Else If Self.Messdecodigo.AsString = '06' Then
                  COD_SIT := SdFiscalCompl // 06 - Documento Fiscal Complementar
                Else If Self.Messdecodigo.AsString = '07' Then
                  COD_SIT := SdExtempCompl
                  // 07 - Escrituração extemporânea de documento complementar
                Else If Self.Messdecodigo.AsString = '08' Then
                  COD_SIT := SdRegimeEspecNEsp;
                // 08 - Documento Fiscal emitido com base em Regime Especial ou Norma Específica
                SER := Self.Mesmesserie.AsString; // série do documento fiscal
                NUM_DOC := Self.Mesmesnumero.AsString; // FormatFloat('11000000', INotas); Número do documento fiscal
                CHV_NFE := Self.Mesmeschavenfe.AsString; // Chave da Nota Fiscal eletrônica
                DT_DOC := Self.Mesmesregistro.AsFloat; // DT_INI + INotas; Data da emissão do documento fiscal
                DT_E_S := Self.Mesmesregistro.AsFloat; // DT_INI + INotas;  data da entrada ou da saída

                If (Self.Messdecodigo.AsString <> '02') and (Self.Messdecodigo.AsString <> '04') Then
                Begin

                  If ((COD_MOD <> '65') and (Mesetdcodigo.AsInteger <> 0)) and (COD_MOD <> '2D') Then
                  BEGIN
                    COD_PART := Self.Mesetdcodigo.AsString + FormatFloat('00', Self.Mesedritem.AsInteger); // codigo do participante - entidade
                  END;
                  if Self.mesmesprodutos.AsFloat = 0 then
                    VL_DOC := Mesmestotal.AsFloat
                  else
                    VL_DOC := Self.mesmesprodutos.AsFloat; // valor total do documento Fiscal

                  If Self.Mestfpcodigo.AsString = '0' Then // indicador do tipo de pagamento(0-A vista, 1-A prazo,9-sem pagamento)
                    IND_PGTO := TpVista // 0 - À Vista
                  Else If Self.Mestfpcodigo.AsString = '1' Then
                    IND_PGTO := TpPrazo // 1 - A Prazo
                  Else If Self.Mestfpcodigo.AsString = '2' Then
                    IND_PGTO := tpOutros; // 9 - Sem pagamento

                  VL_DESC := Self.Mesmesdesconto.AsFloat; // Valor total do desconto
                  VL_ABAT_NT := 0; // abatimento não tributado e não comercia (ex: desconto ICMS nas remessas para ZFM)
                  VL_MERC := Self.Mesmesvalor.AsFloat; // Valor total das mercadorias e serviços

                  If Self.Mesrefcodigo.AsInteger = 0 Then // indicador do tipo de frete(0-emitente,1- destinatário/remetente...)
                    IND_FRT := TfPorContaEmitente // 0 - Por conta de Emitente
                  Else If Self.Mesrefcodigo.AsInteger = 1 Then
                    IND_FRT := TfPorContaDestinatario // 1 - Por conta do Destinatario
                  Else If Self.Mesrefcodigo.AsInteger = 2 Then
                    IND_FRT := TfPorContaTerceiros // 2 - Por conta do Terceiro
                  Else If Self.Mesrefcodigo.AsInteger = 9 Then
                    IND_FRT := TfSemCobrancaFrete; // 9 - Sem cobrança de frete

                  VL_FRT := Self.Mesmesfrete.AsCurrency;
                  VL_SEG := Self.Mesmesseguro.AsFloat; // valor do seguro indicado no documento fiscal
                  VL_OUT_DA := Self.Mesmesoutras.AsFloat;

                  // Verifica se registra impostos é diferente de 1='Registrar Normal'
                  If Cfgcrtcodigo.AsInteger in [1, 2, 3] Then
                  Begin
                    VL_BC_ICMS := 0;
                    VL_ICMS := 0;
                    VL_BC_ICMS_ST := 0;
                    VL_ICMS_ST := 0;
                    VL_IPI := 0;
                    VL_PIS := 0;
                    VL_COFINS := 0;
                    VL_PIS_ST := 0;
                    VL_COFINS_ST := 0;
                  End
                  Else
                  Begin
                    If (COD_MOD <> '65') and (COD_MOD <> '2D') Then
                    begin
                      VL_BC_ICMS := Self.Mesmesbicm.AsCurrency;
                      VL_ICMS := Self.Mesmesbicms.AsCurrency;
                      VL_BC_ICMS_ST := Self.Mesmesbicms.AsCurrency;
                      // Valor da base de cálculo do ICMS  substituição tributária
                      VL_ICMS_ST := Self.Mesmesicms.AsCurrency; // Valor do ICMS retido por substituição tributária
                      VL_IPI := Self.Mesmesipi.AsFloat; // valor total do IPI
                      VL_PIS := Self.Mesmespis.AsFloat; // Valor total do PIS
                      VL_COFINS := Self.Mesmescofins.AsFloat; // Valor total da COFINS
                      VL_PIS_ST := Self.Mesmespiss.AsFloat; // Valor total do PIS retido por substituição tributária
                      VL_COFINS_ST := Self.Mesmescofinss.AsFloat; // Valor total da COFINS retido por substituição tributária
                    end;
                  End;
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
                If ((Mesttmcodigo.AsInteger = 1) Or (Self.Mestdfcodigo.AsString = '01')) and (Self.Messdecodigo.AsString <> '02') and
                  (Self.Messdecodigo.AsString <> '04') Then
                Begin

                  Itm.Close;
                  Itm.Params[0].AsInteger := Self.Mesmeschave.AsInteger;
                  Itm.Open;

                  Itm.First;
                  While Not Itm.Eof Do // Fran - 22/12/2011 as 9hs28min(termino)
                  Begin
                    With RegistroC170New Do // Inicio Adicionar os Itens:
                    Begin
                      NUM_ITEM := FormatFloat('000', Self.Itm.Recno); // FormatFloat('000', IItens) número sequencial do item no docuemnto fiscal
                      COD_ITEM := Self.Itmprocodigo.AsString; // ('000000', StrToInt(NUM_ITEM)); Código do item no cadastro de pordutos
                      DESCR_COMPL := Self.Itmitmdesccomple.AsString;
                      // FormatFloat('11000000', INotas) + ' -> ITEM ' // Descrição complementar do item como adotado no documento fiscal
                      QTD := Self.Itmitmquantidade.AsFloat; // Quantidade do item
                      UNID := Self.Itmunisimbolo.AsString; // 'UN' unidade do item
                      VL_ITEM := Self.Itmitmtotal.AsCurrency { / self.itmitmquantidade.Asfloat }; // Valor do item
                      VL_DESC := Self.Itmitmdesconto.AsCurrency; // Valor do desconto

                      // Movimetação física do item/produto
                      If Self.Itmitmmovifisico.AsInteger = 0 Then
                        IND_MOV := MfSim // 0 - Sim
                      Else If Self.Itmitmmovifisico.AsInteger = 1 Then
                        IND_MOV := MfNao; // 1 - Não

                      // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                      If (Mesttmcodigo.AsInteger = 0) Or (Cfgcfgcstterceiros.AsString = '') Then
                        CST_ICMS := Self.Itmcstcodigo.AsString
                        // Código da situação tributária referente ao ICMS.
                      Else
                        CST_ICMS := Cfgcfgcstterceiros.AsString;
                      // '090'; // self.itmcstcodigo.asstring; // Código da situação tributária referente ao ICMS.

                      CFOP := Self.SoNumeros(Self.Itmcfocfopdestinacao.AsString);

                      COD_NAT := Self.Itmtoecodigo.AsString; // '64' Código da Natureza da operação

                      // Verifica se "Registra impostos" é diferente de 1='Registrar Normal'
                      If Cfgcrtcodigo.AsInteger in [1, 2, 3] Then
                      Begin
                        VL_BC_ICMS := 0; // Valor da base de cálculo do ICMS
                        ALIQ_ICMS := 0; // Aliquota de icms
                        VL_ICMS := 0; // Valor do icms creditado/debitado

                        VL_BC_ICMS_ST := 0; // Valor da base de cálculo referente icms substituição tributária
                        ALIQ_ST := 0; // Aliquota ICMS substituição tributária na unidade da federação de destino
                        VL_ICMS_ST := 0; // Valor do ICMS referente a substituição tributária}

                        IND_APUR := IaMensal; // indicador doperíodo de apuração do IPI

                        // Identifica se movimento é de Entrada ou Saída (0='Entrada' 1=Saída)
                        If Mesttecodigo.AsInteger = 0 Then
                          CST_IPI := '49' { self.itmcsicodigo.AsString; }
                          // código da situação tributária referente ao IPI, conforme tabela CSI.
                        Else
                          CST_IPI := '99'; { self.itmcsicodigo.AsString; } // código da situação tributária referente ao IPI, conforme tabela CSI.

                        COD_ENQ := ''; // '';  Código do enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.(Não existe)
                        VL_BC_IPI := 0; // Valor da bese de calculo do IPI
                        ALIQ_IPI := 0; // Alicquota do IPI
                        VL_IPI := 0; // Valor do IPI creditado/depitado

                        // Identifica se movimento é de Entrada ou Saída (0='Entrada' 1=Saída)
                        If Mesttecodigo.AsInteger = 0 Then
                          CST_PIS := '98' // self.itmcspcodigo.AsString; // Código da situação tributária referente ao PIS
                        Else
                          CST_PIS := '49'; // self.itmcspcodigo.AsString; // Código da situação tributária referente ao PIS

                        VL_BC_PIS := 0; // self.itmitmbpis.AsFloat; // pisOutrasOperacoes  - valor base de calculo do PIS
                        ALIQ_PIS_PERC := 0; // self.itmitmaliqpis.AsFloat; // Aliquota do PIS(em percentual)
                        QUANT_BC_PIS := 0; // self.itmitmquantpis.AsFloat; //Quantidade - base cálculo do PIS
                        ALIQ_PIS_R := 0; // self.itmitmaliqpisvalor.AsFloat; // Aliquota do PIS (em reais)
                        VL_PIS := 0; // self.itmitmpis.AsFloat; //valor do PIS

                        // Identifica se movimento é de Entrada ou Saída (0='Entrada' 1=Saída)
                        If Mesttecodigo.AsInteger = 0 Then
                          CST_COFINS := '98' // self.itmcsfcodigo.AsString; // cofinsOutrasOperacoes  - Código da situação tribitária da COFINS
                        Else
                          CST_COFINS := '49'; // self.itmcsfcodigo.AsString; // cofinsOutrasOperacoes  - Código da situação tribitária da COFINS

                        VL_BC_COFINS := 0; // self.itmitmbcofins.AsFloat; // Base de cálculo da COFINS
                        ALIQ_COFINS_PERC := 0; // self.itmitmaliqcofins.AsFloat; // Aliquota da COFINS
                        QUANT_BC_COFINS := 0; // self.itmitmquantcofins.AsFloat; //Quantidade - base de cálculo da COFINS
                        ALIQ_COFINS_R := 0; // self.itmitmaliqcofinsvalor.AsFloat; // Alíquota da COFINS(em reais)
                        VL_COFINS := 0; // self.itmitmcofins.AsFloat; // Valor da COFINS

                      End
                      Else
                      Begin
                        VL_BC_ICMS := Self.Itmitmbicm.AsFloat; // Valor da base de cálculo do ICMS
                        ALIQ_ICMS := Self.Itmitmaliqicm.AsFloat; // Aliquota de icms
                        VL_ICMS := Self.Itmitmicm.AsFloat; // Valor do icms creditado/debitado

                        VL_BC_ICMS_ST := Self.Itmitmbicms.AsFloat; // Valor da base de cálculo referente icms substituição tributária
                        ALIQ_ST := Self.Itmitmaliqicms.AsFloat; // Aliquota ICMS substituição tributária na unidade da federação de destino
                        VL_ICMS_ST := Self.Itmitmicms.AsFloat; // Valor do ICMS referente a substituição tributária}

                        IND_APUR := IaMensal; // indicador doperíodo de apuração do IPI

                        // Identifica se movimento é de Entrada ou Saída (0='Entrada' 1=Saída)
                        If Mesttecodigo.AsInteger = 0 Then
                          CST_IPI := '49' { self.itmcsicodigo.AsString; }
                          // código da situação tributária referente ao IPI, conforme tabela CSI.
                        Else
                          CST_IPI := '98'; { self.itmcsicodigo.AsString; } // código da situação tributária referente ao IPI, conforme tabela CSI.

                        COD_ENQ := ''; // '';  Código do enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.(Não existe)
                        VL_BC_IPI := 0; // Valor da bese de calculo do IPI
                        ALIQ_IPI := 0; // Alicquota do IPI
                        VL_IPI := 0; // Valor do IPI creditado/depitado

                        CST_PIS := Self.Itmcspcodigo.AsString; // Código da situação tributária referente ao PIS
                        VL_BC_PIS := Self.Itmitmbpis.AsFloat; // pisOutrasOperacoes  - valor base de calculo do PIS
                        ALIQ_PIS_PERC := Self.Itmitmaliqpis.AsFloat; // Aliquota do PIS(em percentual)
                        QUANT_BC_PIS := Self.Itmitmquantpis.AsFloat; // Quantidade - base cálculo do PIS
                        ALIQ_PIS_R := Self.Itmitmaliqpisvalor.AsFloat; // Aliquota do PIS (em reais)
                        VL_PIS := Self.Itmitmpis.AsFloat; // valor do PIS

                        CST_COFINS := Self.Itmcsfcodigo.AsString; // cofinsOutrasOperacoes  - Código da situação tribitária da COFINS
                        VL_BC_COFINS := Self.Itmitmbcofins.AsFloat; // Base de cálculo da COFINS
                        ALIQ_COFINS_PERC := Self.Itmitmaliqcofins.AsFloat; // Aliquota da COFINS
                        QUANT_BC_COFINS := Self.Itmitmquantcofins.AsFloat; // Quantidade - base de cálculo da COFINS
                        ALIQ_COFINS_R := Self.Itmitmaliqcofinsvalor.AsFloat; // Alíquota da COFINS(em reais)
                        VL_COFINS := Self.Itmitmcofins.AsFloat; // Valor da COFINS

                      End;

                      COD_CTA := '2.01.01.09.04'; // Código da Conta analítica Contábil debitada/creditada - Não será informada

                    End; // Fim dos Itens;

                    Itm.Next

                  End;
                End;





                //
                // ***  REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55). ***
                //

                If (Self.Messdecodigo.AsString <> '02') and (Self.Messdecodigo.AsString <> '04') Then
                Begin

                  If VQueryC190 = '' Then
                    VQueryC190 := itmC190.SQL.Text;

                  itmC190.Close;

                  If not Cfgcrtcodigo.AsInteger in [1, 2, 3] Then
                    itmC190.SQL.Text := VQueryC190 + ' GROUP BY cstcodigo , toe.toecfopsaida , itmaliqicm'
                  Else If Cfgcfgcstterceiros.AsString = '' Then
                    itmC190.SQL.Text := VQueryC190 + ' GROUP BY cstcodigo , toe.toecfopsaida'
                  Else
                    itmC190.SQL.Text := VQueryC190 + ' GROUP BY toe.toecfopsaida';

                  itmC190.Params[0].AsInteger := Self.Mesmeschave.AsInteger;
                  itmC190.Open;

                  itmC190.First;
                  While Not itmC190.Eof Do // Fran - 22/12/2011 as 9hs28min(termino)
                  Begin

                    With RegistroC190New Do
                    Begin
                      // Indicador do emitente do documento fiscal - (0-Emissão Própria, 1-Terceiros)
                      If (Mesttmcodigo.AsInteger = 0) Or (Cfgcfgcstterceiros.AsString = '') Then
                        CST_ICMS := Self.itmC190cstcodigo.AsString
                        // '090'; {'500'; // self.itmc190cstcodigo.asstring;}
                      Else
                        CST_ICMS := Cfgcfgcstterceiros.AsString; // '090';

                      CFOP := Self.SoNumeros(Self.itmC190cfocfopdestinacao.AsString);

                      VL_OPR := itmC190total.AsFloat;

                      VL_RED_BC := 0;

                      // Verifica se "Registra impostos" é diferente de 1='Registrar Normal'
                      If Cfgcrtcodigo.AsInteger in [1, 2, 3] Then
                      Begin
                        ALIQ_ICMS := 0;
                        VL_BC_ICMS := 0;
                        VL_ICMS := 0;

                        VL_BC_ICMS_ST := 0;
                        VL_ICMS_ST := 0;

                        VL_IPI := 0
                      End
                      Else
                      Begin
                        ALIQ_ICMS := itmC190itmaliqicm.AsFloat;
                        VL_BC_ICMS := itmC190itmbicm.AsFloat;
                        VL_ICMS := itmC190itmicm.AsFloat;

                        VL_BC_ICMS_ST := itmC190itmbicms.AsFloat;
                        VL_ICMS_ST := itmC190itmicms.AsFloat;

                        VL_IPI := itmC190itmipi.AsFloat
                      End;

                    End;

                    itmC190.Next;
                  End;
                End;
              End;
            End;

            If cbConcomitante.Checked Then
            Begin
              If (INotas Mod BNotas) = 0 Then // Gravar a cada N notas
              Begin
                // Grava registros na memoria para o TXT, e limpa memoria
                ACBrSPEDFiscal1.WriteBloco_C(False); // False, NAO fecha o Bloco

                Application.ProcessMessages;
              End;
            End;
          end;
          Mes.Next;
        End;









        //
        // *****  CUPOM FISCAL  *****
        //

        If Not Ecf.Active Then
        Begin
          Ecf.Open;
        End;

        If Not Rrz.Active Then
        Begin
          Rrz.Open;
        End;

        If Not Tpz.Active Then
        Begin
          Tpz.Open;
        End;

        If Not Cuf.Active Then
        Begin
          Cuf.Open;
        End;

        If Not Icu.Active Then
        Begin
          Icu.Open;
        End;

        If (Rrz.RecordCount > 0) Then
        Begin

          Ecf.First;
          If (Ecf.RecordCount > 0) { And (Cuf.RecordCount > 0) } Then
          Begin
            While Not Ecf.Eof Do
            Begin
              // REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).
              With RegistroC400New Do // Fran - 22/12/2011  as 11hs8min
              Begin
                COD_MOD := Trim(Self.Ecfecftipodoc.AsString); // '2D' Código do modelo do documento fiscal.
                ECF_MOD := Trim(Self.Ecfecfmodelo.AsString); // 'DARUMA FS600'; // Modelo do equipamento
                ECF_FAB := Trim(Self.Ecfecfserie.AsString); // '21098765432123456789'; Número de série do fabricante da ECF
                ECF_CX := Trim(Self.Ecfecfcaixa.AsString); // '001'; Número do caixa atribuido ao ECF

                Self.Rrz.First;
                While Not Rrz.Eof Do
                Begin
                  With RegistroC405New Do // Redução Z                                                 // Fran 21/12/2011 as 13hs33min
                  Begin
                    DT_DOC := Self.Rrzrrzdata.AsFloat; // DT_FIN; //StrToDate('30/11/2011') Data do movimento a que se refere a Redução Z
                    CRO := Self.Rrzrrzcontadorreinicio.AsInteger; // Posição do Contador de reinicio de operação
                    CRZ := Self.Rrzrrzcontadorreducao.AsInteger; // Posição do Contador de redução Z
                    // NUM_COO_FIN := self.rrzrrznumordultdoc.AsInteger; // Número do contador de Ordem de Operação do último documento emitido no dia.
                    NUM_COO_FIN := Self.Rrzrrznumordultdoc.AsInteger; // Número do contador de Ordem de Operação do último documento emitido no dia.
                    GT_FIN := Self.Rrzrrzvalorgrantot.AsFloat; // Valor do Grande total final

                    Tpz.Close;
                    Tpz.Params[0].AsInteger := Self.Rrzrrzcodigo.AsInteger;
                    Tpz.Open;

                    VL_BRT := Self.Rrzrrzvalorvndbru.AsFloat; // Valor de venda bruta
                    If Self.Rrzrrzvalorvndbru.AsFloat > 0 Then
                    Begin
                      With RegistroC410New Do
                      Begin // não será informado
                        VL_PIS := 0.00;
                        VL_COFINS := 0.00;
                      End;
                    End;

                    Tpz.First;
                    While Not Tpz.Eof Do
                    Begin
                      If Self.Tpztpzvlracumtot.AsFloat > 0 Then
                      Begin // Fran - 21/12/2011 as 14hs34min
                        With RegistroC420New Do // Registros dos totalizadores Parciais da Redução Z
                        Begin
                          COD_TOT_PAR := Trim(Self.Tpztpzcodigo.AsString);
                          // 'T1700'- Código do totalizador, conforme tabela 4.4.6
                          VLR_ACUM_TOT := Self.Tpztpzvlracumtot.AsFloat;
                          /// 100.00 - Valor acumulado no totalizador, relativo a respectiva Redução Z
                          ///
                          ///
                          If Self.Tpztpznrtot.AsInteger > 0 Then
                          Begin
                            If (Pos('I', Self.Tpztpzcodigo.AsString) = 0) And (Pos('N', Self.Tpztpzcodigo.AsString) = 0) And
                              (Pos('F', Self.Tpztpzcodigo.AsString) = 0) Then
                              NR_TOT := Self.Tpztpznrtot.AsInteger;
                            // Número do totalizador quando ocorrer mais de uma situação com a mesma carga tributária efetiva
                          End
                          Else
                          Begin
                            // NR_TOT :='';
                          End;

                          DESCR_NR_TOT := Self.Tpztpzdescr.AsString;
                          // 'TOTALIZADOR T1700'- Descrição da situação tributária relativa ao totalizador parcial, quando houver mais de um com a mesma carga tributária efetiva.
                        End;
                      End;
                      Tpz.Next;
                    End;
                    // Documento Fiscal emitido por ECF
                    If Self.Rrzrrzvalorvndbru.AsFloat > 0 Then
                    Begin
                      Cuf.Close;
                      Cuf.Params[0].AsInteger := Self.Rrzrrzcodigo.AsInteger;
                      Cuf.Open;

                      If Bloco_0.Registro0000.IND_PERFIL <> PfPerfilB Then
                      Begin
                        Cuf.First;
                        While Not Cuf.Eof Do
                        Begin
                          With REgistroC460New Do
                          Begin
                            COD_MOD := Self.Cuftdfcodigo.AsString; // '2D' -  Código do modelo do documento fiscal, conforme a tabela 4.1.1

                            case Self.Cufsdecodigo.AsInteger of
                              0:
                                COD_SIT := SdRegular; // 00 - Documento regular
                              1:
                                COD_SIT := SdExtempRegular; // 01 - Escrituração extemporânea de documento regular
                              2:
                                COD_SIT := SdCancelado; // 02 - Documento cancelado sdExtempRegular;
                              3:
                                COD_SIT := SdCanceladoExtemp; // 03 - Escrituração extemporânea de documento cancelado
                              4:
                                COD_SIT := SdDoctoDenegado; // 04 - NF-e ou CT-e - denegado
                              5:
                                COD_SIT := SdDoctoNumInutilizada; // 05 - NF-e ou CT-e - Numeração inutilizada
                              6:
                                COD_SIT := SdFiscalCompl; // 06 - Documento Fiscal Complementar
                              7:
                                COD_SIT := SdExtempCompl; // 07 - Escrituração extemporânea de documento complementar
                              8:
                                COD_SIT := SdRegimeEspecNEsp; // 08 - Documento Fiscal emitido com base em Regime Especial ou Norma Específica
                            end;

                            NUM_DOC := Self.Cufcufcco.AsString; // 000001'Número do docuemnto fiscal (COO)

                            If Self.Cufsdecodigo.AsInteger <> 2 Then
                            Begin

                              DT_DOC := Self.Cufcufdata.AsFloat; // StrToDate('30/11/2011') Data da emissão do documento fiscal
                              If Self.Cufsdecodigo.AsInteger = 2 Then
                              Begin
                                VL_DOC := 0;
                              End
                              Else
                              Begin
                                VL_DOC := Self.Cufcuftotal.AsFloat; // 100.00 Valor total do documento fiscal
                              End;
                              VL_PIS := Self.Cufcufpis.AsFloat; // 0.00 Valor do PIS
                              VL_COFINS := Self.Cufcufcofins.AsFloat; // 0.00 valor da COFINS

                              If Self.Cufcufdoc1.AsString <> '0' Then
                              Begin

                                Self.ACBrValidador1.TipoDocto := DocCPF;
                                Self.ACBrValidador1.Documento := Self.Cufcufdoc1.AsString;

                                If Self.ACBrValidador1.Validar = False Then
                                Begin
                                  Self.ACBrValidador1.TipoDocto := DocCNPJ;
                                  Self.ACBrValidador1.Documento := Self.Cufcufdoc1.AsString;

                                  If Self.ACBrValidador1.Validar = False Then
                                  Begin
                                    Self.ACBrValidador1.TipoDocto := DocCNPJ;
                                    Self.ACBrValidador1.Documento := '';
                                    CPF_CNPJ := '';
                                    NOM_ADQ := '';

                                  End;
                                End;
                              End
                              Else
                              Begin
                                CPF_CNPJ := ''; // '33333333333' CPF ou CNPJ do adquirente
                                NOM_ADQ := ''; // 'TESTE'  Nome do adquirente
                              End;

                              Icu.Close;
                              Icu.SQL.Text := 'SELECT * FROM icu,uni WHERE ';
                              Icu.SQL.Add('icu.unicodigo=uni.unicodigo ');
                              Icu.SQL.Add('AND cufchave=' + Self.Cufcufchave.AsString);
                              Icu.Open;

                              Icu.First;
                              While Not Icu.Eof Do
                              Begin

                                With RegistroC470New Do // Itens do documento Fiscal emitido por ECF
                                Begin
                                  COD_ITEM := Self.Icuprocodigo.AsString; // '000001';//Código do item(campo02 do registro0200)
                                  QTD := Self.Icuicuquantidade.AsFloat; // 1 Quantidade do Item
                                  // 0 Quantidade cancelada,no caso de cancelamento parcial de item
                                  QTD_CANC := Self.Icuicuquantidadecanc.AsFloat;
                                  UNID := Self.Icuunisimbolo.AsString; // 'UN' Unidade do item (Campo 02 do registro 0190)
                                  VL_ITEM := Self.Icuicuvalor.AsFloat; // 100.00 valor total do item

                                  CST_ICMS := Cfgcfgcstcuf.AsString;
                                  // '000'; //'000'Código da situação Tributária, conforme a tabela indicada no item 4.3.1

                                  // CST_ICMS := self.icucstcodigo.AsString;  modificado com base na instrução do DELTA 18/05/2012  //'000'Código da situação Tributária, conforme a tabela indicada no item 4.3.1

                                  CFOP := SoNumeros(Self.Icucfocfop.AsString); // '5102' Código Fiscal da Operação e Prestação
                                  ALIQ_ICMS := Self.Icuicualiqicm.AsFloat; // 17.00 Alíquota do ICMS - Carga tributária efetiva em percentual
                                  VL_PIS := Self.Icuicupis.AsFloat; // 0.00 Valor do PIS
                                  VL_COFINS := Self.Icuicucofins.AsFloat; // 0.00 VAlor da COFINS
                                End;
                                Icu.Next;
                              End;

                            End;
                          End;
                          Cuf.Next;
                        End;
                      End;

                      If VQueryC490 = '' Then
                        VQueryC490 := icuC490.SQL.Text;

                      icuC490.Close;

                      If Cfgcrtcodigo.AsInteger in [1, 2, 3] Then
                        icuC490.SQL.Text := VQueryC490 + ' GROUP BY cstcodigo , cfocfop , icualiqicm'
                      Else If Cfgcfgcstcuf.AsString = '' Then
                        icuC490.SQL.Text := VQueryC490 + ' GROUP BY cstcodigo , cfocfop'
                      Else
                        icuC490.SQL.Text := VQueryC490 + ' GROUP BY cfocfop';

                      icuC490.Params[0].AsInteger := Rrzrrzcodigo.AsInteger;
                      icuC490.Open;

                      icuC490.First;
                      While Not icuC490.Eof Do // Fran - 22/12/2011 as 9hs28min(termino)
                      Begin
                        With RegistroC490New Do // Regsitro Analítico do Documento Diário
                        Begin
                          CST_ICMS := icuC490cstcodigo.AsString; // '000'; {'500'; // self.itmc190cstcodigo.asstring;}
                          VL_OPR := icuC490icuvalor.AsCurrency;
                          // 100.00;// Valor da operação correspondente à combinação de CST_ICMS,CFOP, e alíquota do ICMS, incluídas as despesas acessórias e acréscimos
                          CFOP := SoNumeros(Self.icuC490cfocfop.AsString); // '5102' Código Fiscal da Opreação e Prestação

                          If Pos('041', Cfgcfgcstcuf.AsString) > 0 Then
                          Begin
                            ALIQ_ICMS := 0; // 17.00;// Alíquota do ICMS
                            VL_BC_ICMS := 0;
                            // 100.00;// Valor acumulado da base de cáculo do ICMS, referente à combinação de CST_ICMS,CFOP, e alíquotas de ICMS
                            VL_ICMS := 0; // Valor acumulado do ICMS, referente à combinação de CST_ICMS,CFOP, e alíquotas de ICMS
                          End
                          Else
                          Begin
                            ALIQ_ICMS := icuC490icualiqicm.AsFloat;
                            VL_BC_ICMS := icuC490icuvalor.AsCurrency;
                            VL_ICMS := icuC490icuicm.AsCurrency;
                            // Valor acumulado do ICMS, referente à combinação de CST_ICMS,CFOP, e alíquotas de ICMS
                          End;

                          COD_OBS := ''; // '000001'  -  Código da observação do alnçamento fiscal (campo 02 do registro 0460)
                        End;
                        icuC490.Next;
                      End;
                    End;
                  End;
                  Rrz.Next;
                End;
              End;
              Ecf.Next;
            End;
          End;
        End;








        //
        // *****  CONTAS DE CONSUMO  *****
        //

        Csv.Close;
        Csv.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
        Csv.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
        Csv.Open;

        If Not Csv.IsEmpty Then
        Begin

          While Not Csv.Eof Do
          Begin
            If Csvcsvgeral.AsFloat > 0 Then
            begin
              If (Trim(Csvtcscodigo.AsString) = '1') Or (Trim(Csvtcscodigo.AsString) = '2') Then
              Begin
                With RegistroC500New Do // REGISTRO DE 1-ENERGIA E 2-AGUA
                Begin
                  IND_OPER := TpEntradaAquisicao;
                  IND_EMIT := EdTerceiros;
                  COD_PART := Self.Csvetdcodigo.AsString + '01';
                  // Estou utilizando sempre como endereço principal
                  COD_MOD := Csvtdfcodigo.AsString;
                  If Csvsdecodigo.AsString = '00' Then
                  Begin
                    COD_SIT := SdRegular;
                  End;

                  SER := Csvcsvserie.AsString;
                  SUB := Csvcsvsubserie.AsString;
                  COD_CONS := Csvclccodigo.AsString;
                  NUM_DOC := Csvcsvnumero.AsString;
                  DT_DOC := Csvcsvemissao.AsFloat;
                  DT_E_S := Csvcsvregistro.AsFloat;
                  VL_DOC := Csvcsvvalor.AsCurrency;
                  VL_DESC := Csvcsvdesconto.AsCurrency;
                  VL_FORN := Csvcsvgeral.AsCurrency;
                  VL_SERV_NT := 0;
                  VL_TERC := 0;
                  VL_DA := 0;
                  VL_BC_ICMS := 0; // csvcsvbicm.AsCurrency;
                  VL_ICMS := 0; // csvcsvicm.AsCurrency;
                  VL_BC_ICMS_ST := 0; // csvcsvbicms.AsCurrency;
                  VL_ICMS_ST := 0; // csvcsvicms.AsCurrency;
                  VL_PIS := Csvcsvpis.AsCurrency;
                  VL_COFINS := Csvcsvcofins.AsCurrency;
                End;

                With RegistroC590New Do // REGISTRO DE AGUA E ENERGIA
                Begin
                  CST_ICMS := Csvcstcodigo.AsString;
                  CFOP := Self.SoNumeros(Csvcfocfop.AsString);
                  ALIQ_ICMS := Csvcsvaliqicm.AsFloat;
                  VL_OPR := Csvcsvgeral.AsCurrency;
                  VL_BC_ICMS := 0; // csvcsvbicm.AsCurrency;
                  VL_ICMS := 0; // csvcsvicm.AsCurrency;
                  VL_BC_ICMS_ST := 0; // csvcsvbicms.AsCurrency;
                  VL_ICMS_ST := 0; // csvcsvicms.AsCurrency;
                  VL_RED_BC := 0;
                End;
              End;
            End;
            Csv.Next;
          End;

        End;
      End;
    End;
  End;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco   ENCERRAMENTO DO BLOCO C.
    LoadToMemo;
  End;

  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_CompletoClick(Sender: TObject);
Begin
  mostra.Visible := True;
  Application.ProcessMessages;
  BtnB_0Click(Self);
  mostra.Position := 1;
  Application.ProcessMessages;

  BtnB_CClick(Self);
  mostra.Position := 2;
  Application.ProcessMessages;

  BtnB_DClick(Self);
  mostra.Position := 3;
  Application.ProcessMessages;

  BtnB_EClick(Self);
  mostra.Position := 4;
  Application.ProcessMessages;

  BtnB_GClick(Self);
  mostra.Position := 5;
  Application.ProcessMessages;

  BtnB_HClick(Self);
  mostra.Position := 6;
  Application.ProcessMessages;

  BtnB_1Click(Self);
  mostra.Position := 7;
  Application.ProcessMessages;

  BtnB_9Click(Self);
  mostra.Position := 8;
  Application.ProcessMessages;
   Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_DClick(Sender: TObject);
Begin
  BtnB_D.Enabled := False;
  BtnB_E.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do Bloco D.

  With ACBrSPEDFiscal1.Bloco_D Do
  Begin

    Cte.Close;
    Cte.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
    Cte.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
    Cte.Open;

    Csv.Close;
    Csv.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
    Csv.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;

    Csv.Filter := 'tcscodigo=' + Chr(39) + '3' + Chr(39);
    Csv.Filtered := True;
    Csv.Open;

    Cte.First;

    If (Cte.RecordCount > 0) Or (Csv.RecordCount > 0) Then
    Begin

      With RegistroD001New Do
      Begin
        IND_MOV := ImComDados;

        While Not Cte.Eof Do
        Begin
          With RegistroD100New Do
          Begin
            IND_OPER := TpEntradaAquisicao;
            IND_EMIT := EdTerceiros;
            COD_PART := Self.Cteetdcodigo.AsString + '01'; // Utilizando sempre como endereço principal
            COD_MOD := Self.Ctetdfcodigo.AsString;
            COD_SIT := SdRegular;
            SER := Self.Ctecteserie.AsString;
            NUM_DOC := Self.Ctectenumero.AsString;
            CHV_CTE := Self.Ctecteechave.AsString;
            DT_DOC := Self.Ctecteemissao.AsFloat;
            // StrToDate('30/11/2011');
            DT_A_P := Self.Ctectedtaquis.AsFloat;; // StrToDate('30/11/2011');

            If Self.Ctetcfcodigo.AsString <> '99' Then
            Begin
              TP_CT_e := Self.Ctetcfcodigo.AsString;
            End;

            VL_DOC := Self.Ctectevalordoc.AsFloat;
            VL_DESC := Self.Ctectedesconto.AsFloat;

            IND_FRT := TfPorContaDestinatario;

            VL_SERV := Self.Ctectevalor.AsFloat;
            VL_BC_ICMS := 0; // CONFORME info Lediane da DELTA - DATA: 16/05/2012 self.ctectebicm.AsFloat;
            VL_ICMS := 0; // self.ctecteicm.AsFloat;
            VL_NT := 0;
            COD_INF := '';
            COD_CTA := Self.Ctepcccodigo.AsString;
          End;

          With RegistroD190New Do
          Begin
            CST_ICMS := Ctecstcodigo.AsString;

            CFOP := SoNumeros(Ctecfocfop.AsString);
            ALIQ_ICMS := 0; // self.cteictaliqicm.AsFloat;
            VL_OPR := Self.Cteictvlroperacao.AsFloat;
            VL_BC_ICMS := 0; // self.ctectebicm.AsFloat;
            VL_ICMS := 0; // self.ctecteicm.AsFloat;
            VL_RED_BC := 0; // self.cteictredbase.AsFloat;
            COD_OBS := '';
          End;
          Cte.Next;
        End;

        If Not Csv.IsEmpty Then
        Begin

          While Not Csv.Eof Do
          Begin
            If (Trim(Csvtcscodigo.AsString) = '3') Then
            Begin
              With RegistroD500New Do
              // Registro de telecomunicações
              Begin
                IND_OPER := TpEntradaAquisicao;
                IND_EMIT := EdTerceiros;
                COD_PART := Self.Csvetdcodigo.AsString + '01';
                // Utilizando sempre como endereço principal
                COD_MOD := Csvtdfcodigo.AsString;
                If Csvsdecodigo.AsString = '00' Then
                Begin
                  COD_SIT := SdRegular;
                End;

                SER := Csvcsvserie.AsString;
                SUB := Csvcsvsubserie.AsString;
                NUM_DOC := Csvcsvnumero.AsString;
                DT_DOC := Csvcsvemissao.AsFloat;
                DT_A_P := Csvcsvregistro.AsFloat;
                VL_DOC := Csvcsvvalor.AsCurrency;
                VL_DESC := Csvcsvdesconto.AsCurrency;
                VL_SERV := Csvcsvgeral.AsCurrency;
                VL_SERV_NT := 0;
                VL_TERC := 0;
                VL_DA := 0;
                VL_BC_ICMS := 0; // csvcsvbicm.AsCurrency; instrução do gabriel 16/06
                VL_ICMS := 0; // csvcsvicm.AsCurrency; instrução do gabriel 16/06
                VL_PIS := Csvcsvpis.AsCurrency;
                VL_COFINS := Csvcsvcofins.AsCurrency;

                If Csvclccodigo.AsString = '1' Then
                Begin
                  TP_ASSINANTE := AssComercialIndustrial;
                End
                Else If Csvclccodigo.AsString = '2' Then
                Begin
                  TP_ASSINANTE := AssPodrPublico;
                End
                Else If Csvclccodigo.AsString = '3' Then
                Begin
                  TP_ASSINANTE := AssResidencial;
                End
                Else If Csvclccodigo.AsString = '4' Then
                Begin
                  TP_ASSINANTE := AssPublico;
                End
                Else If Csvclccodigo.AsString = '5' Then
                Begin
                  TP_ASSINANTE := AssSemiPublico;
                End
                Else If Csvclccodigo.AsString = '6' Then
                Begin
                  TP_ASSINANTE := AssOutros;
                End;
              End;

              With RegistroD590New Do // Registro de telecomunicações
              Begin
                CST_ICMS := Csvcstcodigo.AsString;
                CFOP := Self.SoNumeros(Csvcfocfop.AsString);
                ALIQ_ICMS := Csvcsvaliqicm.AsFloat;
                VL_OPR := Csvcsvgeral.AsCurrency;
                VL_BC_ICMS := 0; // csvcsvbicm.AsCurrency;
                VL_ICMS := 0; // csvcsvicm.AsCurrency;
                VL_RED_BC := 0;

              End;
            End;
            Csv.Next;
          End;
        End;
      End;
    End
    Else
    Begin

      With RegistroD001New Do
      Begin
        IND_MOV := ImSemDados;
      End;
    End;
  End;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_d; // True, fecha o Bloco   ENCERRAMENTO DO BLOCO d.

    LoadToMemo;
  End;
  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_EClick(Sender: TObject);
Const
  ESTADOS: Array [0 .. 1] Of String = ('RS', 'SC');
Var
  I: Integer;
  VTOTICMS: Double;
Begin
  // Alimenta o componente com informações para gerar todos os registros do Bloco E.
  BtnB_E.Enabled := False;
  BtnB_G.Enabled := True;

  With ACBrSPEDFiscal1.Bloco_E Do
  Begin
    With RegistroE001New Do
    Begin
      IND_MOV := ImComDados;

      With RegistroE100New Do
      Begin

        DT_INI := Self.Spdspddatainicial.AsFloat;
        DT_FIN := Self.Spdspddatafinal.AsFloat;

        Itme110.Close;
        Itme110.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
        Itme110.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
        Itme110.Open;

        Ctee110.Close;
        Ctee110.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
        Ctee110.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
        Ctee110.Open;

        Cufe110.Close;
        Cufe110.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
        Cufe110.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
        Cufe110.Open;

        If (Not Itme110.IsEmpty) And (Not Cufe110.IsEmpty) Then
        Begin

          With RegistroE110New Do
          Begin
            VTOTICMS := Self.Itme110totalicms.AsFloat
            { + self.ctee110totalicms.AsFloat };
            VL_TOT_DEBITOS := VTOTICMS;
            VL_AJ_DEBITOS := 0.00;
            VL_TOT_AJ_DEBITOS := 0.00;
            VL_ESTORNOS_CRED := 0;
            VL_TOT_CREDITOS := 0;
            VL_AJ_CREDITOS := 0;
            VL_TOT_AJ_CREDITOS := VTOTICMS;
            VL_ESTORNOS_DEB := 0;
            VL_SLD_CREDOR_ANT := 0;
            VL_SLD_APURADO := 0.00;
            VL_TOT_DED := 0.00;
            VL_ICMS_RECOLHER := 0.00;
            VL_SLD_CREDOR_TRANSPORTAR := 0;
            DEB_ESP := 0;

            If VTOTICMS > 0 Then
            Begin
              With RegistroE111New Do
              Begin
                COD_AJ_APUR := 'MT022235';
                DESCR_COMPL_AJ := '';
                VL_AJ_APUR := Self.Itme110totalicms.AsFloat;
              End;
            End;

            // with RegistroE112New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRIÇÃO RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE113New do begin
            // COD_PART := '000001';
            // COD_MOD  := '01';
            // SER      := 'SERI';
            // SUB      := '';
            // NUM_DOC  := '123456789';
            // DT_DOC   := Now;
            // COD_ITEM := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            // with RegistroE115New do begin
            // COD_INF_ADIC   := 'RS000001';
            // VL_INF_ADIC    := 0;
            // DESCR_COMPL_AJ := '';
            // end;

            { With RegistroE116New Do
              Begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '10';
              IND_PROC := opSefaz;
              PROC := 'DESCRIÇÃO DO PROCESSO';
              TXT_COMPL := '';
              MES_REF := '112011';
              End; }
          End;
        End;
      End;

      // Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscrição estadual
      { For I := Low(ESTADOS) To High(ESTADOS) Do
        Begin
        With RegistroE200New Do
        Begin
        DT_INI :=self.spdspddatainicial.AsFloat;
        DT_FIN :=self.spdspddatafinal.AsFloat;
        UF := ESTADOS[I];

        With RegistroE210New Do
        Begin
        IND_MOV_ST := mstSemOperacaoST;
        VL_SLD_CRED_ANT_ST := 0;
        VL_DEVOL_ST := 0;
        VL_RESSARC_ST := 0;
        VL_OUT_CRED_ST := 0;
        VL_AJ_CREDITOS_ST := 0;
        VL_SLD_DEV_ANT_ST := 0.00;
        VL_DEDUCOES_ST := 0;
        VL_ICMS_RECOL_ST := 0.00;
        VL_SLD_CRED_ST_TRANSPORTAR := 0;
        VL_OUT_DEB_ST := 0.00;
        DEB_ESP_ST := 0;

        // with RegistroE220New do begin
        // COD_AJ_APUR    := 'RS109999';
        // DESCR_COMPL_AJ := '';
        // VL_AJ_APUR     := 0.00;
        //
        // with RegistroE230New do begin
        // NUM_DA    := '123';
        // NUM_PROC  := '123';
        // IND_PROC  := opOutros;
        // PROC      := 'DESCRIÇÃO RESUMIDA';
        // TXT_COMPL := 'COMPLEMENTO';
        // end;
        //
        // with RegistroE240New do begin
        // COD_PART   := '000001';
        // COD_MOD    := '01';
        // SER        := 'SERI';
        // SUB        := '';
        // NUM_DOC    := '123456789';
        // DT_DOC     := Now;
        // COD_ITEM   := '000001';
        // VL_AJ_ITEM := 0;
        // end;
        // end;

        With RegistroE250New Do
        Begin
        COD_OR := '000';
        VL_OR := 0;
        DT_VCTO := Now;
        COD_REC := '123';
        NUM_PROC := '1020304050';
        IND_PROC := opOutros;
        PROC := 'DESCRIÇÃO RESUMIDA';
        TXT_COMPL := '';
        MES_REF := '112011';
        End;
        End;
        End;
        End; }

      { With RegistroE500New Do
        Begin
        IND_APUR := iaMensal;
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');

        With RegistroE510New Do
        Begin
        CFOP := '5120';
        CST_IPI := '50';
        VL_CONT_IPI := 0;
        VL_BC_IPI := 0;
        VL_IPI := 0;
        End;

        With RegistroE520New Do
        Begin
        VL_SD_ANT_IPI := 0;
        VL_DEB_IPI := 0;
        VL_CRED_IPI := 0;
        VL_OD_IPI := 10.00;
        VL_OC_IPI := 0;
        VL_SC_IPI := 0;
        VL_SD_IPI := 10.00;

        With RegistroE530New Do
        Begin
        IND_AJ := ajDebito;
        VL_AJ := 10;
        COD_AJ := '001';
        IND_DOC := odOutros;
        NUM_DOC := '123';
        DESCR_AJ := 'DESCRIÇÃO DETALHADA';
        End;
        End;
        //   fim registro E500
        End; }
    End;
  End;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_E;
    LoadToMemo;
  End;
  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_GClick(Sender: TObject);
Begin
  BtnB_G.Enabled := False;
  BtnB_H.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do Bloco G.
  { With ACBrSPEDFiscal1.Bloco_G Do
    Begin
    With RegistroG001New Do
    Begin
    IND_MOV := imComDados;

    With RegistroG110New Do
    Begin
    DT_INI := Now;
    DT_FIN := Now;
    SALDO_IN_ICMS := 44.00;
    SOM_PARC := 4.40;
    VL_TRIB_EXP := 10.999;
    VL_TOTAL := 10.999;
    IND_PER_SAI := 1.00;
    ICMS_APROP := 4.40;
    SOM_ICMS_OC := 10.999;

    With RegistroG125New Do
    Begin
    COD_IND_BEM := '000001';
    DT_MOV := StrToDate('01/11/2011');
    TIPO_MOV := mbcSI;
    VL_IMOB_ICMS_OP := 10.999;
    VL_IMOB_ICMS_ST := 10.999;
    VL_IMOB_ICMS_FRT := 10.999;
    VL_IMOB_ICMS_DIF := 10.999;
    NUM_PARC := 10;
    VL_PARC_PASS := 4.40;

    With RegistroG126New Do
    Begin
    DT_INI := StrToDate('01/10/2011'); ;
    DT_FIN := StrToDate('30/10/2011'); ;
    NUM_PARC := 1234;
    VL_PARC_PASS := 10.999;
    VL_TRIB_OC := 10.999;
    VL_TOTAL := 10.999;
    IND_PER_SAI := 1.00;
    VL_PARC_APROP := 10.999;
    End;

    With RegistroG130New Do
    Begin
    IND_EMIT := edEmissaoPropria;
    COD_PART := '000001';
    COD_MOD := '55';
    SERIE := '1';
    NUM_DOC := '000068849';
    CHV_NFE_CTE := '35100260318797000100550010000688490882775007';
    DT_DOC := Now;

    With RegistroG140New Do
    Begin
    NUM_ITEM := '9999';
    COD_ITEM := '000001';
    End;
    End;
    End;
    End;
    End;
    End; }

  If cbConcomitante.Checked Then
  Begin
    // ACBrSPEDFiscal1.WriteBloco_G;
    LoadToMemo;
  End;
  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.BtnB_HClick(Sender: TObject);
Var
  IInvent: Integer;
Begin
  If Not Cfg.Active Then
    Cfg.Open;

  BtnB_H.Enabled := False;
  BtnB_1.Enabled := True;

  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco H.
  If Not Ivt.Active Then
    Ivt.Open;

  If FormatDateTime('m', Self.Spdspddatainicial.AsFloat) = '2' Then
    With ACBrSPEDFiscal1.Bloco_H Do
      With RegistroH001New Do // abertura do bloco H
      begin
        IND_MOV := ImComDados; // indicador do movimento,bloco com dados informados

        With RegistroH005New Do // Inventário
        Begin
          DT_INV := Self.Spdspddatabalanco.AsFloat;
          // DT_FIN o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000

          Ivt.First;
          While Not Ivt.Eof Do
          Begin
            VL_INV := VL_INV + Self.Ivtivttotal.AsFloat; // 1000;
            Ivt.Next;
          End;
          // MOT_INV := self.spdspdmotivoinv.AsFloat; -  Motivo do Inventário - ainda não está informado no componente, está só no manual.

          // FILHO

          Ivt.First;
          While Not Ivt.Eof Do
          Begin

            With RegistroH010New Do
            Begin
              COD_ITEM := Self.Ivtprocodigo.AsString;
              // FormatFloat('00000000000000', IInvent); Código do item
              UNID := Self.Ivtunisimbolo.AsString; // 'UN'; unidade do item
              QTD := Self.Ivtivtquantidade.AsFloat; // 1 - quantidade do item
              VL_UNIT := Self.Ivtivtvalor.AsFloat; // 100 - valor unitario do item
              VL_ITEM := Self.Ivtivttotal.AsFloat; // 100 - valor do item

              case Self.Ivtivtproprietario.AsInteger of
                0:
                  IND_PROP := PiInformante; // 0- Item de propriedade do informante e em seu poder
                1:
                  IND_PROP := PiInformanteNoTerceiro; // 1- Item de propriedade do informante em posse de terceiros
                2:
                  IND_PROP := PiTerceiroNoInformante; // 2- Item de propriedade de terceiros em posse do informante;
              end;

              If IND_PROP <> PiInformante Then
                COD_PART := Cfgcfgetdsped.AsString + '01';
              // Utilizando sempre como endereço principal // codigo do participante (Apenas informado quando item não for de propriedade do informante)

              TXT_COMPL := ''; // self.ivtpronome.AsString; // descrição complementar do item
              COD_CTA := Self.Ivtpcccodigo.AsString; // codigo da conta analítoca contábil debitada/creditada
            End;
            Ivt.Next;
          End;
        End;
      end;

  If cbConcomitante.Checked Then
  Begin
    ACBrSPEDFiscal1.WriteBloco_H; // encerramento do bloco H
    LoadToMemo;
  End;

  // Showmessage('Concluido com sucesso!');
End;

Procedure TFrmSPEDFiscal.EdtFileChange(Sender: TObject);
Begin
  ACBrSPEDFiscal1.Arquivo := EdtFile.Text;
End;

Procedure TFrmSPEDFiscal.FormShow(Sender: TObject);
Var
  Arquini: Tinifile;
  Vnomebanco: String;
  Vservidor: String;
  Vusuario: String;
  Vsenha: String;

  vlPath: String;
Begin
  Arquini := Tinifile.Create(Extractfilepath(Application.ExeName) + 'gourmeterp.ini');
  With Arquini Do
  Begin
    Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    Vusuario := ReadString('posi', 'usuario', 'root');
    Vsenha := ReadString('posi', 'senha', 'xda973');
  End;
  Arquini.Free;
  Try
    UCConexao.Connected := False;
    UCConexao.Database := Vnomebanco;
    UCConexao.Username := 'root';
    UCConexao.ProviderName := 'mysql';
    UCConexao.Password := Vsenha;
    UCConexao.Server := Vservidor;
    UCConexao.Connected := True;
  Finally

  End;

  vlPath := Extractfilepath(Application.ExeName) + 'Sped';

  if not DirectoryExists(vlPath) then
    ForceDirectories(vlPath);

  ACBrSPEDFiscal1.Path := vlPath;
End;

Procedure TFrmSPEDFiscal.LoadToMemo;
Begin
  MemoTXT.Lines.Clear;
  If FileExists(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo) Then
    MemoTXT.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);
End;

Procedure TFrmSPEDFiscal.CbConcomitanteClick(Sender: TObject);
Begin
  BtnTXT.Enabled := Not cbConcomitante.Checked;
  BtnError.Enabled := BtnTXT.Enabled;

  EdBufNotas.Enabled := cbConcomitante.Checked;

  If Not cbConcomitante.Checked Then
  Begin
    BtnB_0.Enabled := True;
    BtnB_C.Enabled := False;
    BtnB_D.Enabled := False;
    BtnB_E.Enabled := False;
    BtnB_H.Enabled := False;
    BtnB_1.Enabled := False;
    BtnB_9.Enabled := False;
  End;
End;

Procedure TFrmSPEDFiscal.CarregaUniEPro;
Var
  I: Integer;
Begin

  MUni.Clear;
  MPro.Clear;

  MUni.Open;
  MPro.Open;





  //
  // *****  UNIDADES  *****
  //

  Uni.Close;
  Uni.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Uni.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Uni.Open;

  Uni.First; // ir para o inicio da tabela
  While Not Uni.Eof Do
  Begin
    If Not MUni.Locate('unicodigo', Uniunicodigo.AsInteger, []) Then
    Begin
      MUni.Append;
      MUniunicodigo.AsInteger := Uniunicodigo.AsInteger;
      MUniunisimbolo.AsString := Uniunisimbolo.AsString;
      MUniuninome.AsString := Uniuninome.AsString;
      MUni.Post;
    End;

    Uni.Next;
  End;

  Unicuf.Close;
  Unicuf.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Unicuf.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Unicuf.Open;

  Unicuf.First;
  While Not Unicuf.Eof Do
  Begin
    If Not MUni.Locate('unicodigo', Unicufunicodigo.AsInteger, []) Then
    Begin
      MUni.Append;
      MUniunicodigo.AsInteger := Unicufunicodigo.AsInteger;
      MUniunisimbolo.AsString := Unicufunisimbolo.AsString;
      MUniuninome.AsString := Unicufuninome.AsString;
      MUni.Post;
    End;

    Unicuf.Next;
  End;

  Uniivt.Close;
  Uniivt.Open;

  Uniivt.First;
  While Not Uniivt.Eof Do
  Begin
    If Not MUni.Locate('unicodigo', Uniivtunicodigo.AsInteger, []) Then
    Begin
      MUni.Append;
      MUniunicodigo.AsInteger := Uniivtunicodigo.AsInteger;
      MUniunisimbolo.AsString := Uniivtunisimbolo.AsString;
      MUniuninome.AsString := Uniivtuninome.AsString;
      MUni.Post;
    End;

    Uniivt.Next;
  End;






  //
  // *****  PRODUTOS *****
  //

  Proivt.Close;
  Proivt.Open;

  Proivt.First;
  While Not Proivt.Eof Do
  Begin

    If Not MPro.Locate('procodigo', Proivtprocodigo.AsInteger, []) Then
    Begin
      MPro.Append;
      For I := 0 To MPro.FieldCount - 1 Do
      Begin
        MPro.Fields[I] := Proivt.Fields[I];
      End;
      MPro.Post;

    End;

    Proivt.Next;
  End;

  Pro.Close;
  Pro.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Pro.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Pro.Open;

  Pro.First;
  While Not Pro.Eof Do
  Begin

    If Not MPro.Locate('procodigo', Proprocodigo.AsInteger, []) Then
    Begin
      MPro.Append;
      For I := 0 To MPro.FieldCount - 1 Do
      Begin
        MPro.Fields[I] := Pro.Fields[I];
      End;
      MPro.Post;

    End;

    Pro.Next;
  End;

  Procuf.Close;
  Procuf.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Procuf.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Procuf.Open;

  Procuf.First;
  While Not Procuf.Eof Do
  Begin

    If Not MPro.Locate('procodigo', Procufprocodigo.AsInteger, []) Then
    Begin
      MPro.Append;
      For I := 0 To MPro.FieldCount - 1 Do
      Begin
        MPro.Fields[I] := Procuf.Fields[I];
      End;
      MPro.Post;

    End;

    Procuf.Next;
  End;
End;

Procedure TFrmSPEDFiscal.CarregaEntidades;
Var
  CodEntidade: Integer;
  I: Integer;
Begin
  MEtd.Clear;
  MEtd.Open;

  Etd.Close;
  Etd.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Etd.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Etd.Open;

  Etd.First;
  While Not Etd.Eof Do
  Begin
    CodEntidade := StrToInt(Etdetdcodigo.AsString + FormatFloat('00', Etdedritem.AsInteger));
    If Not MEtd.Locate('etdcodigo', CodEntidade, []) Then
    Begin
      MEtd.Append;
      MEtdetdcodigo.AsInteger := CodEntidade;
      For I := 1 To MEtd.FieldCount - 1 Do
        MEtd.Fields[I] := Etd.Fields[I];

      MEtd.Post;
    End;

    Etd.Next;
  End;

  Etdcte.Close;
  Etdcte.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Etdcte.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Etdcte.Open;

  Etdcte.First;
  While Not Etdcte.Eof Do
  Begin
    CodEntidade := StrToInt(Etdcteetdcodigo.AsString + FormatFloat('00', Etdcteedritem.AsInteger));
    If Not MEtd.Locate('etdcodigo', CodEntidade, []) Then
    Begin
      MEtd.Append;
      MEtdetdcodigo.AsInteger := CodEntidade;
      For I := 1 To MEtd.FieldCount - 1 Do
        MEtd.Fields[I] := Etdcte.Fields[I];

      MEtd.Post;
    End;

    Etdcte.Next;
  End;

  Etdcsv.Close;
  Etdcsv.Params[0].AsDate := Self.Spdspddatainicial.AsFloat;
  Etdcsv.Params[1].AsDate := Self.Spdspddatafinal.AsFloat;
  Etdcsv.Open;

  Etdcsv.First;
  While Not Etdcsv.Eof Do
  Begin
    CodEntidade := StrToInt(Etdcsvetdcodigo.AsString + FormatFloat('00', Etdcsvedritem.AsInteger));
    If Not MEtd.Locate('etdcodigo', CodEntidade, []) Then
    Begin
      MEtd.Append;
      MEtdetdcodigo.AsInteger := CodEntidade;
      For I := 1 To MEtd.FieldCount - 1 Do
        MEtd.Fields[I] := Etdcsv.Fields[I];

      MEtd.Post;
    End;

    Etdcsv.Next;
  End;

  etdadc.Close;
  etdadc.Params[0].AsInteger := Self.Spdspdchave.AsInteger;
  etdadc.Open;

  etdadc.First;
  While Not etdadc.Eof Do
  Begin
    CodEntidade := StrToInt(etdadcetdcodigo.AsString + FormatFloat('00', etdadcedritem.AsInteger));
    // CodEntidade := etdadcetdcodigo.AsInteger;

    If Not MEtd.Locate('etdcodigo', CodEntidade, []) Then
    Begin
      MEtd.Append;
      MEtdetdcodigo.AsInteger := CodEntidade;
      For I := 1 To MEtd.FieldCount - 1 Do
        MEtd.Fields[I] := etdadc.Fields[I];

      MEtd.Post;
    End;

    etdadc.Next;
  End;

End;

End.
