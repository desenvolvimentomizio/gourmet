Unit ufnfepdv;

Interface

Uses
  Winapi.Windows, Vcl.Forms, IdComponent, pingsend,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection, IdTCPClient, miDASLIB,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  ACBrValidador, Data.DB, MemDS, DBAccess, Uni, ACBrBase, ACBrDFe, ACBrNFe,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Controls, Vcl.ComCtrls, Vcl.Dialogs, System.Classes,
  System.SysUtils, System.StrUtils, System.Math, UniScript, IniFiles,
  pcnConversao, pcnConversaoNFe, ACBrUtil, IdAttachment, IdAttachmentFile,
  uFuncoes, dateutils, ACBrMail, MAPI,  ACBrNFeDANFEFRDM, ACBrNFe.Classes,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFeUtil, upegabase,
  ACBrDFeSSL, IdEMailAddress, blcksock;

Type
  Tfnfepdv = Class(TForm)
    ACBrNFeNotas: TACBrNFe;
    paginas: TPageControl;
    emissao: TTabSheet;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    consultasefaz: TTabSheet;
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    etd: TUniQuery;
    etdetddoc1: TStringField;
    etdedrcep: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrbairro: TStringField;
    etdcddcodigo: TStringField;
    etdcddnome: TStringField;
    etdufssigla: TStringField;
    etdetftelefone: TStringField;
    etdtpecodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    toe: TUniQuery;
    mes: TUniQuery;
    mesmeschave: TIntegerField;
    mestoecodigo: TIntegerField;
    dtm: TUniQuery;
    toetoeidentificacao: TStringField;
    itm: TUniQuery;
    dtmdtmchave: TIntegerField;
    dtmdtmplaca: TStringField;
    dtmdtmvolumes: TFloatField;
    dtmdtmpesobruto: TFloatField;
    dtmdtmpesoliq: TFloatField;
    dtmmeschave: TIntegerField;
    dtmetdcodigo: TIntegerField;
    dtmufscodigo: TStringField;
    dtmedrrua: TStringField;
    dtmcddnome: TStringField;
    dtmufssigla: TStringField;
    dtmedrinscest: TStringField;
    dtmetddoc1: TStringField;
    dtmetdidentificacao: TStringField;
    dtmdtmespecie: TStringField;
    dtmdtmmarcas: TStringField;
    mesetdcodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmprocodigo: TIntegerField;
    itmproncm: TStringField;
    itmitmdesccomple: TStringField;
    itmpronomereduzido: TStringField;
    itmpronome: TStringField;
    itmitmquantidade: TFloatField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmchave: TIntegerField;
    itmcstcodigo: TStringField;
    itmicmcodigo: TStringField;
    itmitmicm: TFloatField;
    itmitmbicm: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmbipi: TFloatField;
    itmitmipi: TFloatField;
    mesmestotal: TFloatField;
    qTomTof: TUniQuery;
    etdedrinscest: TStringField;
    toettecodigo: TIntegerField;
    Memo1: TMemo;
    mesrefcodigo: TIntegerField;
    mestfpcodigo: TIntegerField;
    rcc: TUniQuery;
    rccrccchave: TIntegerField;
    rccmeschave: TIntegerField;
    rccrcccorrecao: TStringField;
    rccrccretorno: TStringField;
    rccrcclote: TIntegerField;
    rccrccsequencial: TIntegerField;
    plmodonfe: TPanel;
    mestdfcodigo: TStringField;
    mesmesnumero: TIntegerField;
    mesmesserie: TStringField;
    mesedritem: TIntegerField;
    enf: TUniQuery;
    enftencodigo: TIntegerField;
    enfenfseqevento: TIntegerField;
    enfenfdescricao: TStringField;
    enfenfcstat: TIntegerField;
    enfenfxml: TBlobField;
    enfenfxmotivo: TStringField;
    mev: TUniQuery;
    mevmevchave: TIntegerField;
    mevenfchave: TIntegerField;
    mevmeschave: TIntegerField;
    enfenfchave: TIntegerField;
    mesmesdatanfe: TDateField;
    qEnfMev: TUniQuery;
    qEnfMevenfseqevento: TIntegerField;
    qEnfMevenfdescricao: TStringField;
    qEnfMevtencodigo: TIntegerField;
    qEnfMevenfchaveevento: TStringField;
    qEnfMevenfregistroevento: TDateField;
    enfenfregistroevento: TDateField;
    enfenfchaveevento: TStringField;
    mesmescoocupom: TIntegerField;
    dfr: TUniQuery;
    dfrdfrchave: TIntegerField;
    dfretdcodigo: TIntegerField;
    dfrdfrserie: TStringField;
    dfrdfremissao: TDateField;
    cfr: TUniQuery;
    tom: TUniQuery;
    tof: TUniQuery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    tomtomobs: TStringField;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    tofticcodigo: TIntegerField;
    dfrdfrchavenfe: TStringField;
    dfretddoc1: TStringField;
    dfredrinscest: TStringField;
    qCfrEcf: TUniQuery;
    qCfrEcfcfrcooecf: TIntegerField;
    qCfrEcfecfcaixa: TIntegerField;
    cfrcfrchave: TIntegerField;
    cfrtdfcodigo: TStringField;
    cfrcfrcooecf: TIntegerField;
    cfrecfcodigo: TIntegerField;
    cfrtofcodigo: TIntegerField;
    cfrcfremissao: TDateField;
    mesmesdatacupom: TDateField;
    ACBrValidador1: TACBrValidador;
    toetoecodigo: TIntegerField;
    itmpunqtdtribtotal: TFloatField;
    itmunisimbolotrib: TStringField;
    itmproanpcodigo: TIntegerField;
    plstatus: TPanel;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmensagempdv: TStringField;
    cfgcfgtrmimpfis1: TIntegerField;
    cfgcfgtrmimpfis2: TIntegerField;
    cfgcfgtrmtef1: TIntegerField;
    cfgcfgtrmtef2: TIntegerField;
    cfgcfgimpnfe1: TIntegerField;
    cfgcfgimpnfe2: TIntegerField;
    cfgcfgimpnfc1: TIntegerField;
    cfgcfgimpnfc2: TIntegerField;
    cfgcfgimpnfc3: TIntegerField;
    cfgcfgnumecertif: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    cfgedrinscest: TStringField;
    cfgedrrua: TStringField;
    cfgedrnumero: TStringField;
    cfgedrbairro: TStringField;
    cfgedrcep: TStringField;
    cfgcddnome: TStringField;
    cfgufssigla: TStringField;
    cfgetftelefone: TStringField;
    cfgctdboxedominio: TStringField;
    tcg: TUniQuery;
    tcgtcgaliqnac: TFloatField;
    cfgcfgmodonfe: TIntegerField;
    consulta: TUniQuery;
    trm: TUniQuery;
    trmtciporta: TStringField;
    trmecfcodigo: TIntegerField;
    trmtrmcodigo: TIntegerField;
    trmtipcodigo: TIntegerField;
    mesmesregistro: TDateField;
    dfrtdfcodigo: TStringField;
    dfrufscodigo: TStringField;
    cfgcfgsenhacertificado: TStringField;
    rni: TUniQuery;
    rnirnichave: TIntegerField;
    rnirniano: TStringField;
    rnirnimes: TStringField;
    rnitdfcodigo: TStringField;
    rnirninumeroinicial: TIntegerField;
    rnirninumerofinal: TIntegerField;
    rnirnijutificativa: TStringField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmoutras: TFloatField;
    mesmesoutras: TFloatField;
    toettocodigo: TIntegerField;
    qEnfMevmesregistro: TDateField;
    qEteMes: TUniQuery;
    qEteMesetecodigo: TIntegerField;
    qEteMeseteemail: TStringField;
    qEteMesetdidentificacao: TStringField;
    dfrmeschave: TIntegerField;
    dfrdfrnumero: TIntegerField;
    NumeroNFe: TUniQuery;
    itmitmcargatrib: TFloatField;
    itmitmcargatribest: TFloatField;
    mesflacodigo: TIntegerField;
    plrelatorio: TPanel;
    enfenfemaildestinatario: TStringField;
    enfenfcnpjdestinatario: TStringField;
    enfenfchavenfe: TStringField;
    ici: TUniQuery;
    icf: TUniQuery;
    icficfchave: TIntegerField;
    icficfdatainicial: TDateField;
    icficfdatafinal: TDateField;
    icficfpercicmorigem: TFloatField;
    icficfpercicmdestino: TFloatField;
    iciicichave: TIntegerField;
    iciiciicmaliguotaicms: TFloatField;
    iciiciuforigem: TStringField;
    iciiciufdestino: TStringField;
    toetoedescricao: TStringField;
    mestemcodigo: TIntegerField;
    etdetdnfemodelos: TStringField;
    itmtpocodigo: TIntegerField;
    cfgcfgversao: TStringField;
    cfgcfgcestativo: TIntegerField;
    itmtcecest: TStringField;
    rfi: TUniQuery;
    rfirfinumero: TStringField;
    rfirfivencimento: TDateField;
    rfirfivalor: TFloatField;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    tittitvalor: TFloatField;
    itmcspcodigo: TStringField;
    itmcsfcodigo: TStringField;
    mesmesbicms: TFloatField;
    mesmesicms: TFloatField;
    cfgcfgtextoemail: TStringField;
    itmitmpercreducaobaseicm: TFloatField;
    cfgcfgpercentualpis: TFloatField;
    cfgcfgpercentualcofins: TFloatField;
    qconsulta: TUniQuery;
    itmitmaliqpis: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmpis: TCurrencyField;
    itmitmbpis: TCurrencyField;
    itmitmcofins: TCurrencyField;
    itmitmbcofins: TCurrencyField;
    cfgcfgtoenotacomplementar: TIntegerField;
    cfgcfgtoesubstnoestado: TIntegerField;
    cfgcfgtoesubstforaestado: TIntegerField;
    ncm: TUniQuery;
    ncmansanexo: TStringField;
    itmncm: TUniQuery;
    itmncmtoecodigo: TIntegerField;
    mesmesfrete: TCurrencyField;
    itmitmfrete: TCurrencyField;
    itmpunbarra: TStringField;
    ACBrValidadorBarra: TACBrValidador;
    dtl: TUniQuery;
    rfititcodigo: TIntegerField;
    mesmesdesconto: TFloatField;
    dtlltechave: TIntegerField;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtlmdacodigo: TIntegerField;
    itmcsicodigo: TStringField;
    mesttocodigo: TIntegerField;
    ncmsubst: TUniQuery;
    toeitm: TUniQuery;
    toeitmtoecodigo: TIntegerField;
    toeitmcstcodigo: TStringField;
    toeitmcsicodigo: TStringField;
    toeitmcspcodigo: TStringField;
    toeitmcfgpercentualpis: TFloatField;
    toeitmcsfcodigo: TStringField;
    toeitmcfgpercentualcofins: TFloatField;
    itmcst: TUniQuery;
    itmcstitmchave: TIntegerField;
    itmcstcstcodigo: TStringField;
    itmcstcsicodigo: TStringField;
    itmcstcspcodigo: TStringField;
    itmcstcsfcodigo: TStringField;
    itmcstitmaliqpis: TFloatField;
    itmcstitmaliqcofins: TFloatField;
    itmcstitmaliqipi: TFloatField;
    cfgcfgusacstnoproduto: TIntegerField;
    itmtoecodigo: TIntegerField;
    etdedrnomefazenda: TStringField;
    etdedrrazaofazenda: TStringField;
    cfgcfgtoesubstanpnoestado: TIntegerField;
    cfgcfgtoesubstanpforaestado: TIntegerField;
    cfgcfgprevisualizarimpressaonfe: TIntegerField;
    cfgcfgsubstitutotributario: TIntegerField;
    consultadesconto: TUniQuery;
    mesmesnumeropedido: TStringField;
    itmitmitempedido: TStringField;
    mesmeshoranfe: TTimeField;
    cfgcfgdescontonoservico: TIntegerField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgtoemesinte: TIntegerField;
    mesmesretirabalcao: TIntegerField;
    mestom: TUniQuery;
    tai: TUniQuery;
    taitaichave: TIntegerField;
    taitaialiquota: TFloatField;
    etdufscodigo: TStringField;
    ssn: TUniQuery;
    ssnssncodigo: TIntegerField;
    ssnssnaliquota: TFloatField;
    ssnssnicms: TFloatField;
    icm: TUniQuery;
    icmicmcodigo: TStringField;
    icmicmaliquotas: TStringField;
    cfgssncodigo: TIntegerField;
    toecstnormal: TStringField;
    cfgcfgtoemesfora: TIntegerField;
    etdtcbcodigo: TIntegerField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    spdspdaliquotasimples: TFloatField;
    toecstcodigo: TStringField;
    cfgatvcodigo: TIntegerField;
    mesmeschavenfe: TStringField;
    mesmesemissao: TDateField;
    pad: TUniQuery;
    padpadcodigo: TIntegerField;
    padpadncm: TStringField;
    padpadpis: TFloatField;
    padpadcofins: TFloatField;
    padpadextipi: TStringField;
    itmpadextipi: TStringField;
    cfgcfgpresencialtoedestino: TIntegerField;
    padpadcodigopiscofins: TStringField;
    itmitmmva: TFloatField;
    cfgcfgtoeinteproducaopropria: TIntegerField;
    itmproproducao: TIntegerField;
    cfgcfgtoeforaproducaopropria: TIntegerField;
    cfgcfgtoeintesubsprodpropria: TIntegerField;
    cfgcfgtoeforasubsprodpropria: TIntegerField;
    mesmespararevenda: TIntegerField;
    cfgcfgtributacaoimendes: TIntegerField;
    itmitmbasefcpicm: TFloatField;
    itmitmpercfcpicm: TFloatField;
    itmitmvalofcpicm: TFloatField;
    itmitmbasefcpicmst: TFloatField;
    itmitmpercfcpicmst: TFloatField;
    itmitmvalofcpicmst: TFloatField;
    mesmesfilialpedido: TStringField;
    itmicmaliquotas: TStringField;
    ctd: TUniQuery;
    ctdctdcnpj: TStringField;
    cfgcfgtoetransflaintepro: TIntegerField;
    cfgcfgtoetransflainte: TIntegerField;
    cfgeteemail: TStringField;
    cfgcfgcertificadoa1: TBlobField;
    cfgcfgsenhacertificadoa1: TStringField;
    etdetdcodigo: TIntegerField;
    mesmesbicm: TFloatField;
    TmConfirma: TTimer;
    rdc: TUniQuery;
    qdtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlmodalidade: TIntegerField;
    mesoricodigo: TIntegerField;
    ori: TUniQuery;
    orietdcodigo: TIntegerField;
    orietddoc1: TStringField;
    orioriidentificacao: TStringField;
    irr: TUniQuery;
    irrirrchave: TIntegerField;
    irretdcodigo: TIntegerField;
    irrirrpercentual: TFloatField;
    cfgcfgservarqnfes: TStringField;
    emailnfe: TTabSheet;
    Memo4: TMemo;
    mostraemail: TProgressBar;
    IdMessage1: TIdMessage;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    LlMsgEmail: TLabel;
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Procedure bconfirmaClick(Sender: TObject);
    Procedure bcancelaClick(Sender: TObject);



    procedure FormShow(Sender: TObject);
    procedure TmConfirmaTimer(Sender: TObject);
    procedure ACBrNFeNotasStatusChange(Sender: TObject);
  Private
    Acesso: TAcesso;
    Fzcone: tuniconnection;
    vpConsultouSEFAZ: Boolean;

    Procedure mConsultaSEFAZ;

    Function mConsultaNFe(vMOstraConsulta: Boolean = False): Boolean;
    Procedure mGerarPDF;
    Procedure mReimprimirNFe;
    Procedure CarregaNFe(narq: String);
    Procedure ImprimeNFe;
    Procedure GeraXML(taModo: TpcnTipoAmbiente = taProducao);
    Procedure ReGeraXML(taModo: TpcnTipoAmbiente = taProducao);

    Function validaentidade: Boolean;
    Function validatransporte: Boolean;
    Procedure mEnviarNFe;
    function GeraNomeNFe(vmeschave: String): String;
    Function mConsultaSEFAZInterna: Boolean;
    function VerificaPreExistencia(tipo: string): Boolean;
    procedure AjustaObservacoes;
    function impcertificado: string;
    procedure Inicializar;
    function mCodigoConsultaSEFAZ: String;
    function processa: Boolean;
    procedure ajustafuncao;
    procedure AjustaCaminhoGeralNF(Data: TDate);
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    procedure mInutilizarNumeroNFeDireto;

    procedure VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
    procedure VerifieAjustaItemcomConsumidorFinal(vContribuinte: Boolean);
    procedure VerifieAjustaICM;
    procedure VerifieAjustaPISCOFINS;
    procedure VerifieAjustaItemReclassificacao;
    function DefineVertical: String;
    function validatemprodutos: Boolean;
    procedure mEmailNFe;
    function EnviarEmail(destino, copias, texto, assunto, xml, pdf,
      nome_cliente, nome_empresa: String): Boolean;
    procedure AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);

    // procedure VerifieAjustaItemTransferenciaFilial;

    { Private declarations }
  Public
    { Public declarations }
    vpmestotalbaseicm: Double;

    vpFilial: String;
    vpPathAplicativo: String;
    vpStatSEFAZ: Integer;
    vModulo: string;

    vRotinaNFe: TRotinasNFe;

    vpDataAtual: Double;

    vusrcodigo: string;
    vpRetorno: String;
    vpArquivoNFe: String;
    vpArquivoXMLEvento: String;
    vpArquivoPDFEvento: String;
    vpMesChave: String;
    vChaveMestre: String;
    vSubPastaDoc: string;
    vPastaPrincipal: string;
    ACBrNFeDANFEFR: TACBrNFeDANFEFR;

    function LerConfiguracao: Boolean;

  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  End;

  timpnfe = function(AOwner: TComponent; conexao: tuniconnection; vusrcodigo: string; vchave: string): string;
  tmodete = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vchave: string; vChaveMestre: string): string;

  { TValidaProdutos = Function(AOwner: TComponent; conexao: tuniconnection; ChaveMes: string; CodigoFilial: string = '1';
    VerificaNCM: Boolean = True): Boolean; }

Var
  fnfepdv: Tfnfepdv;
  vpErroConsultaNFe: Boolean = False;
  vpConsultaVisivel: Boolean = True;

Implementation

uses
  ACBrUtil.DateTime;



{$R *.dfm}

function ModuloNFe(AOwner: TComponent; conexao: tuniconnection;  vMeschave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso): Boolean;
Var
  i, x: Integer;
  vHora: String;
  vDia: String;
Begin

    if pinghost('google.com') then
    begin
      ShowMessage('SEM CONEXÃO!! '+#13+#13+'Verifique sua conexão com a internet !');
      exit;
    end;


  if FindWindow('Tfnfe', nil) = 0 then
    fnfepdv := Tfnfepdv.Create(AOwner);
  try
    // ajusta variaveis de Mod Inicial
    fnfepdv.vpRetorno := '';
    vpErroConsultaNFe := False;
    fnfepdv.vpMesChave := vMeschave;
    fnfepdv.Acesso := Acesso;
    fnfepdv.vusrcodigo := fnfepdv.Acesso.Usuario.ToString;



    fnfepdv.vpConsultouSEFAZ := True;

    fnfepdv.zcone := conexao;

    x := fnfepdv.ComponentCount - 1;
    For i := 0 To x Do
    begin
      If fnfepdv.Components[i] Is TUniQuery Then
        (fnfepdv.Components[i] As TUniQuery).Connection := conexao;

      If fnfepdv.Components[i] Is TUniScript Then
        (fnfepdv.Components[i] As TUniScript).Connection := conexao;
    end;

    fnfepdv.cfg.Close;
    fnfepdv.cfg.ParamByName('flacodigo').AsString := '1';
    fnfepdv.cfg.Open;

    if fnfepdv.cfgcfgemailnfe.AsString = 'nfe@pegasussistemas.com.br' then
    begin

      fnfepdv.cfg.Edit;
      fnfepdv.cfgcfgemailnfe.AsString := 'nfe@miziosistemas.com.br';
      fnfepdv.cfgcfgemailservidornfe.AsString := 'mail.miziosistemas.com.br';
      fnfepdv.cfgcfgemailsenhanfe.AsString := 'MizioXda973*';
      fnfepdv.cfg.Post;

    end;

    vHora := agora(Application, conexao);

    fnfepdv.mes.Close;
    fnfepdv.mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
    fnfepdv.mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    fnfepdv.mes.Open;

    vDia := hoje(Application, conexao);

    fnfepdv.vpDataAtual := strtodatetime(formatdatetime('dd/mm/yyyy', strtodate(vDia)) + ' ' + formatdatetime('hh:mm:ss', strtodatetime(vHora)));

    fnfepdv.cfg.Close;

    If Not fnfepdv.cfg.Active Then
    begin
      fnfepdv.cfg.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
      fnfepdv.cfg.Open;
    end;

    fnfepdv.vpFilial := Acesso.Filial.ToString;

    fnfepdv.cfg.Close;
    fnfepdv.cfg.ParamByName('flacodigo').AsString := fnfepdv.vpFilial;
    fnfepdv.cfg.Open;

    fnfepdv.vPastaPrincipal := ExtractFilePath(Application.ExeName);

    fnfepdv.Caption := 'NFE - Caminho :' + fnfepdv.vPastaPrincipal;
    fnfepdv.vSubPastaDoc := 'arqnfes';

    if Copy(fnfepdv.vPastaPrincipal, Length(fnfepdv.vPastaPrincipal), 1) <> '\' then
      fnfepdv.vPastaPrincipal := fnfepdv.vPastaPrincipal + '\';

    fnfepdv.AjustaCaminhoGeralNF(fnfepdv.vpDataAtual);


    fnfepdv.vRotinaNFe := vRotinaNFe;

    // carrega configuracaoes de ambiente do .ini

    fnfepdv.LerConfiguracao;
    fnfepdv.Inicializar;
    fnfepdv.FormStyle := fsNormal;
    fnfepdv.pbotoes.Visible := True;
    fnfepdv.bconfirma.Enabled := True;


    if fnfepdv.ShowModal = mrOk then
      Result := True;
  finally
    fnfepdv.Free;
  end;
End;

exports ModuloNFe;




function Tfnfepdv.processa: Boolean;
begin
  bconfirma.Enabled := False;
  bcancela.Enabled := False;

  // processa comando

  case vRotinaNFe of
    rnfGerarNFe:
      mEnviarNFe;
    rnfImprimirNFe:
      mReimprimirNFe;
    rnfStatusSefaz:
      mConsultaSEFAZ;
    rnfStatusNFe:
      mConsultaNFe;
  end;

  if vpRetorno <> '' then
    Result := True
  else
    Result := False;
end;

Procedure Tfnfepdv.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := caFree;
End;

procedure Tfnfepdv.FormShow(Sender: TObject);
begin

  self.Width := 335;
  self.Height := 250;

  ajustafuncao;

  TmConfirma.Enabled:=True;

end;




Function Tfnfepdv.validatemprodutos: Boolean;
Begin
  consulta.Close;
  consulta.SQL.Text := 'select  count(itmchave) qtd from itm,pro where itm.procodigo=pro.procodigo and tpocodigo<>' + IntToStr(tpoServicos) +
    '  and meschave=' + mesmeschave.AsString;
  consulta.Open;

  if consulta.FieldByName('qtd').AsInteger = 0 then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;

End;

Function Tfnfepdv.validaentidade: Boolean;
Begin
  Result := True;
End;

Function Tfnfepdv.validatransporte: Boolean;
Begin
  Result := True;
End;

procedure Tfnfepdv.VerifieAjustaPISCOFINS;
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;

  vlEtdCodigo: string;

  vlOrigemSimples: Boolean;
  vlDestinoNormal: Boolean;

  vlRetiraBalcao: Integer;
  vlParaRevenda: Integer;

begin
  if mesttocodigo.AsInteger=ttoDevolucao then
  begin
   exit;
  end;


  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo, mespararevenda,mesretirabalcao from mes where meschave=' + vpMesChave;
    consulta.Open;

    vlRetiraBalcao := consulta.FieldByName('mesretirabalcao').AsInteger;
    vlParaRevenda := consulta.FieldByName('mespararevenda').AsInteger;
    vlEtdCodigo := consulta.FieldByName('etdcodigo').AsString;

    consulta.Close;

    if cfgcrtcodigo.AsInteger = 3 then // normal
    begin
      vlOrigemSimples := False;
    end
    else
    begin
      vlOrigemSimples := True;
    end;

    consulta.Close;
    consulta.SQL.Text := 'select etdregime from etd where etdcodigo=' + vlEtdCodigo;
    consulta.Open;

    if (consulta.FieldByName('etdregime').AsInteger = 0) or (consulta.FieldByName('etdregime').AsInteger = 2) then
    begin
      vlDestinoNormal := False;
    end
    else
    begin
      vlDestinoNormal := True;
    end;

    consulta.Close;

    itm.Close;
    itm.Params[0].AsString := vpMesChave;
    itm.Params[1].AsInteger := Acesso.Filial;
    itm.Open;

    itm.First;

    While Not itm.Eof Do
    Begin

      if (itmitmaliqpis.AsFloat > 0) and (itmitmaliqcofins.AsFloat > 0) then
      begin

        itm.Edit;
        itmitmpis.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
          itmitmoutras.AsCurrency) * (itmitmaliqpis.AsFloat / 100);
        itmitmbpis.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
          itmitmoutras.AsCurrency);

        itmitmcofins.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
          itmitmoutras.AsCurrency) * (itmitmaliqcofins.AsFloat / 100);
        itmitmbcofins.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
          itmitmoutras.AsCurrency);
        itm.Post;
      end
      else
      begin

        itm.Edit;
        itmitmpis.AsFloat := 0;
        itmitmbpis.AsCurrency := 0;
        itmitmcofins.AsFloat := 0;
        itmitmbcofins.AsCurrency := 0;
        itm.Post;

      end;

      itm.Next;
    End;
  end;
end;

procedure Tfnfepdv.VerifieAjustaICM;
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;

  vlEtdCodigo: string;

  vlOrigemSimples: Boolean;
  vlDestinoNormal: Boolean;

  vlRetiraBalcao: Integer;
  vlParaRevenda: Integer;

begin

  if mesttocodigo.AsInteger=ttoDevolucao then
  begin
   exit;
  end;

  if (cfgcfgtributacaoimendes.AsInteger = 0) { or ((mesttocodigo.AsInteger = ttoOutros)) } then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo, mespararevenda,mesretirabalcao from mes where meschave=' + vpMesChave;
    consulta.Open;

    vlRetiraBalcao := consulta.FieldByName('mesretirabalcao').AsInteger;
    vlParaRevenda := consulta.FieldByName('mespararevenda').AsInteger;
    vlEtdCodigo := consulta.FieldByName('etdcodigo').AsString;

    consulta.Close;

    if (cfgcrtcodigo.AsInteger = 3) or (cfgcrtcodigo.AsInteger = 2) then // normal
    begin
      vlOrigemSimples := False;
    end
    else
    begin
      vlOrigemSimples := True;
    end;

    consulta.Close;
    consulta.SQL.Text := 'select etdregime from etd where etdcodigo=' + vlEtdCodigo;
    consulta.Open;

    if (consulta.FieldByName('etdregime').AsInteger = 0) or (consulta.FieldByName('etdregime').AsInteger = 2) then
    begin
      vlDestinoNormal := False;
    end
    else
    begin
      vlDestinoNormal := True;
    end;

    consulta.Close;

    itm.First;

    While Not itm.Eof Do
    Begin
      if (itmicmcodigo.AsString <> 'ff') and (itmicmcodigo.AsString <> 'nn') and (itmicmcodigo.AsString <> 'ii') then
      begin

        if (vlOrigemSimples = True) and (vlDestinoNormal = False) then // imposto zerado
        begin

          spd.Close;
          spd.Open;

          if spdspdaliquotasimples.AsFloat > 0 then
          begin

            if etdtpecodigo.AsInteger = 1 then
            begin
              itm.Edit;
              itmitmbicms.AsFloat := 0;
              itmitmaliqicms.AsFloat := 0;;
              itmitmicms.AsFloat := 0;
              itmitmpercreducaobaseicm.AsCurrency := 0;
              itmcstcodigo.AsString := toecstcodigo.AsString;
              itm.Post;

            end
            else
            begin
              if (cfgcrtcodigo.AsInteger = 2) or (cfgcrtcodigo.AsInteger = 3) then
              begin
                itm.Edit;
                itmicmcodigo.AsString := spdspdaliquotasimples.AsString;
                itmitmicm.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
                  itmitmoutras.AsCurrency) * (taitaialiquota.AsFloat / 100);
                itmitmbicm.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
                  itmitmoutras.AsCurrency);
                itmitmpercreducaobaseicm.AsCurrency := 0;;
                itmcstcodigo.AsString := toecstnormal.AsString;
                itm.Post;
              end;
            end;

          end
          else
          begin

            itm.Edit;
            itmitmbicms.AsFloat := 0;
            itmitmaliqicms.AsFloat := 0;;
            itmitmicms.AsFloat := 0;
            itmitmpercreducaobaseicm.AsCurrency := 0;
            itm.Post;

          end;

        end
        else if ((vlOrigemSimples = False)) and (vlDestinoNormal = True) then // normal para normal
        begin

          if vlParaRevenda = 1 then
          begin

            tai.Close;
            tai.ParamByName('data').AsDate := mesmesregistro.AsFloat;
            tai.ParamByName('ufscodigoorigem').AsString := cfgufscodigo.AsString;
            tai.ParamByName('ufscodigodestino').AsString := etdufscodigo.AsString;
            tai.Open;

            if taitaialiquota.AsFloat <> 0 then
            begin
              if (itmcstcodigo.AsString = '000') or (itmcstcodigo.AsString = '010') or (itmcstcodigo.AsString = '020') then
              begin

                itm.Edit;
                itmicmcodigo.AsString := taitaialiquota.AsString;

                itmitmicm.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
                  itmitmoutras.AsCurrency) * (taitaialiquota.AsFloat / 100);
                itmitmbicm.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
                  itmitmoutras.AsCurrency);
                itmitmpercreducaobaseicm.AsCurrency := 0;;
                itmcstcodigo.AsString := toecstnormal.AsString;
                itm.Post;

              end
              else
              begin
                itm.Edit;
                itmitmbicms.AsFloat := 0;
                itmitmbicm.AsCurrency := 0;
                itmitmaliqicms.AsFloat := 0;;
                itmitmicms.AsFloat := 0;
                itmitmpercreducaobaseicm.AsCurrency := 0;
                itm.Post;
              end;
            end;

          end
          else
          begin

            itm.Edit;
            itmitmbicms.AsFloat := 0;
            itmitmbicm.AsFloat := 0;
            itmitmaliqicms.AsFloat := 0;;
            itmitmicms.AsFloat := 0;
            itmitmpercreducaobaseicm.AsCurrency := 0;
            itm.Post;

          end;
        end
        else if ((vlOrigemSimples = True)) and (vlDestinoNormal = True) then // simples para normal pegua da talela snn o icm
        begin

          if vlParaRevenda = 1 then
          begin

            ssn.Close;
            ssn.ParamByName('ssncodigo').AsString := cfgssncodigo.AsString;
            ssn.Open;

            spd.Close;
            spd.Open;

            if (spdspdaliquotasimples.AsString <> '') and (spdspdaliquotasimples.AsString <> '0') then
            begin

              icm.Close;
              icm.Open;

              if spdspdaliquotasimples.AsFloat <> 0 then
              begin

                itm.Edit;
                itmitmbicms.AsFloat := 0;
                itmitmbicm.AsFloat := 0;
                itmitmaliqicms.AsFloat := 0;;
                itmitmicms.AsFloat := 0;
                itmitmpercreducaobaseicm.AsCurrency := 0;
                itmcstcodigo.AsString := toecstnormal.AsString;
                itm.Post;
              end;

            end
            else
            begin

              icm.Close;
              icm.Open;

              if not icm.Locate('icmaliquotas', floattostr(ssnssnaliquota.AsFloat * (ssnssnicms.AsFloat / 100)), []) then

              begin
                icm.Append;
                icmicmcodigo.AsString := floattostr(ssnssnaliquota.AsFloat * (ssnssnicms.AsFloat / 100));
                icmicmaliquotas.AsString := floattostr(ssnssnaliquota.AsFloat * (ssnssnicms.AsFloat / 100));
                icm.Post;
              end;

              if ssnssnaliquota.AsFloat <> 0 then
              begin

                itm.Edit;
                itmitmbicms.AsFloat := 0;
                itmitmbicm.AsFloat := 0;
                itmitmaliqicms.AsFloat := 0;;
                itmitmicms.AsFloat := 0;
                itmitmpercreducaobaseicm.AsCurrency := 0;
                itmcstcodigo.AsString := toecstnormal.AsString;
                itm.Post;

              end;

            end;
          end
          else
          begin

            itm.Edit;
            itmitmbicms.AsFloat := 0;
            itmitmbicm.AsFloat := 0;
            itmitmaliqicms.AsFloat := 0;;
            itmitmicms.AsFloat := 0;
            itmitmpercreducaobaseicm.AsCurrency := 0;
            itm.Post;

          end;

        end;

      end;

      if mesttocodigo.AsInteger = 7 then
      begin
        itm.Edit;
        itmitmbicms.AsFloat := 0;
        itmitmbicm.AsFloat := 0;
        itmitmaliqicms.AsFloat := 0;;
        itmitmicms.AsFloat := 0;
        itmitmpercreducaobaseicm.AsCurrency := 0;
        itmcstcodigo.AsString := toecstnormal.AsString;
        itm.Post;

      end;

      itm.Next;
    End;
  end
  else if (cfgcfgtributacaoimendes.AsInteger = 1) then
  begin

    if mesttocodigo.AsInteger <> ttoDevolucao then
    begin

      itm.First;

      While Not itm.Eof Do
      Begin
        // Fran: 03/10/2022 - quando o veritical for boutique vai gerar a nota com CFOP de dentro do estado.
        if DefineVertical = 'Boutique' then
        begin
          consulta.Close;
          consulta.SQL.Text := 'SELECT p.procodigo, p.pronome, p.cfocfop, p.icmcodigo ,p.icmcodigofora, ';
          consulta.SQL.add('(SELECT icmaliquotas FROM icm c WHERE p.icmcodigo=c.icmcodigo) icmaliquota, ');
          consulta.SQL.add('(SELECT icmaliquotas FROM icm i WHERE p.icmcodigofora=i.icmcodigo) icmaliquotafora, ');
          consulta.SQL.add('p.propercreducaobaseicm, cstcodigo,csicodigo,cspcodigo,csfcodigo,propisaliquota, procofinsaliquota  ');
          consulta.SQL.add('from pro p where p.procodigo=' + itmprocodigo.AsString);
          consulta.Open;

        end
        else
        begin
          consulta.Close;
          consulta.SQL.Text := 'SELECT p.procodigo, p.pronome, p.cfocfop, p.cfocfopfora,p.icmcodigo ,p.icmcodigofora, ';
          consulta.SQL.add('(SELECT icmaliquotas FROM icm c WHERE p.icmcodigo=c.icmcodigo) icmaliquota, ');
          consulta.SQL.add('(SELECT icmaliquotas FROM icm i WHERE p.icmcodigofora=i.icmcodigo) icmaliquotafora, ');
          consulta.SQL.add('p.propercreducaobaseicm, cstcodigo,csicodigo,cspcodigo,csfcodigo,propisaliquota, procofinsaliquota  ');
          consulta.SQL.add('from pro p where p.procodigo=' + itmprocodigo.AsString);
          consulta.Open;
        end;

        vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
        vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
        vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
        vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

        vlcfgpercentualpis := consulta.FieldByName('propisaliquota').AsString;
        vlcfgpercentualcofins := consulta.FieldByName('procofinsaliquota').AsString;

        itm.Edit;

        itmcstcodigo.AsString := vlcstcodigo;

        itmcsicodigo.AsString := consulta.FieldByName('csicodigo').AsString;
        itmcspcodigo.AsString := consulta.FieldByName('cspcodigo').AsString;
        itmcsfcodigo.AsString := consulta.FieldByName('csfcodigo').AsString;

        itmitmaliqpis.AsFloat := consulta.FieldByName('propisaliquota').AsFloat;
        itmitmaliqcofins.AsFloat := consulta.FieldByName('procofinsaliquota').AsFloat;

        if itmitmaliqpis.AsFloat > 0 then
        begin

          itmitmpis.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
            itmitmoutras.AsCurrency) * (itmitmaliqpis.AsFloat / 100);
          itmitmbpis.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
            itmitmoutras.AsCurrency);
        end
        else
        begin
          itmitmpis.AsFloat := 0;
          itmitmbpis.AsCurrency := 0;
        end;

        if itmitmaliqcofins.AsFloat > 0 then
        begin
          itmitmcofins.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
            itmitmoutras.AsCurrency) * (itmitmaliqcofins.AsFloat / 100);
          itmitmbcofins.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
            itmitmoutras.AsCurrency);

        end
        else
        begin
          itmitmcofins.AsFloat := 0;
          itmitmbcofins.AsCurrency := 0;
        end;
        itm.Post;

        if (lowercase(consulta.FieldByName('icmcodigo').AsString) <> 'ff') and (lowercase(consulta.FieldByName('icmcodigo').AsString) <> 'nn') and
          (lowercase(consulta.FieldByName('icmcodigo').AsString) <> 'ii') then
        begin

          itm.Edit;

          if cfgufssigla.AsString = etdufssigla.AsString then
          begin
            itmicmcodigo.AsString := consulta.FieldByName('icmcodigo').AsString;
            itmicmaliquotas.AsString := consulta.FieldByName('icmaliquota').AsString;

            if (mesttocodigo.AsInteger = ttoVenda) then
            begin
              itmcfocfop.AsString := consulta.FieldByName('cfocfop').AsString;
            end;

          end
          else
          begin

            if (mesttocodigo.AsInteger = ttoVenda) then
            begin

              if cfgcfgpresencialtoedestino.AsInteger = 0 then
              begin
                itmcfocfop.AsString := consulta.FieldByName('cfocfop').AsString;
                itmicmcodigo.AsString := consulta.FieldByName('icmcodigo').AsString;
                itmicmaliquotas.AsString := consulta.FieldByName('icmaliquota').AsString;
              end
              else
              begin
                itmcfocfop.AsString := consulta.FieldByName('cfocfopfora').AsString;
                itmicmcodigo.AsString := consulta.FieldByName('icmcodigofora').AsString;
                itmicmaliquotas.AsString := consulta.FieldByName('icmaliquotafora').AsString;
              end;

              // Fran: 03/10/2022 - quando o veritical for boutique vai gerar a nota com CFOP de dentro do estado.
              if DefineVertical = 'Boutique' then
              begin
                itmcfocfop.AsString := consulta.FieldByName('cfocfop').AsString;
              end;

            end;
          end;

          if itmicmaliquotas.AsFloat > 0 then
          begin

            itmitmbicm.AsCurrency := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency + itmitmfrete.AsCurrency +
              itmitmoutras.AsCurrency);

            itmitmpercreducaobaseicm.AsFloat := consulta.FieldByName('propercreducaobaseicm').AsFloat;
            if itmitmpercreducaobaseicm.AsFloat > 0 then
            begin
              itmitmbicm.AsCurrency := itmitmbicm.AsCurrency - (itmitmbicm.AsCurrency * (itmitmpercreducaobaseicm.AsFloat / 100))
            end;

            itmitmicm.AsFloat := itmitmbicm.AsCurrency * (itmicmaliquotas.AsFloat / 100);

          end
          else
          begin
            itmitmpercreducaobaseicm.AsFloat := 0;
            itmitmbicm.AsCurrency := 0;
            itmitmicm.AsFloat := 0;
          end;
          itm.Post;
        end;
        itm.Next;
      end;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update mes set ';
      consulta.SQL.add('mesbicm=(select sum(itmbicm) from itm where mes.meschave=itm.meschave and meschave=' + mesmeschave.AsString + ') ');
      consulta.SQL.add('  ,mespis=(select sum(itmpis) from itm where mes.meschave=itm.meschave and meschave=' + mesmeschave.AsString + ') ');
      consulta.SQL.add('  ,mescofins=(select sum(itmcofins) from itm where mes.meschave=itm.meschave and meschave=' + mesmeschave.AsString + ') ');
      consulta.SQL.add('  where meschave=' + mesmeschave.AsString);
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

    end;
  End;

end;

Procedure Tfnfepdv.ImprimeNFe;
Var
  it: Integer;
  vtBC: Double;
  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;

  vtipi: Double;
  vCST: String;

  vInfComplTEF, vInfComplGeral, vSeparadorGeral: String;
  vInfComplCF, vSeparadorCF: String;
  vInfComplNF, vSeparadorNF: String;
  vInfComplNFP, vSeparadorNFP: String;
  vInfComplNFe, vSeparadorNFe: String;
  Duplicata: TDupCollectionItem;

  vxdesc, vxtot, vxliq: Double;

  vAnoMesNFe: String;

  vTestaInscEst: String;

  vErro: String;
  vMsgRetorno: String;

  vNumeroNFe: Integer;
  vChaveNFe: String;
  vProtocoloNFe: String;

  (* Carga Tributária *)
  vlTotTrib: Double;
  vlTotTribEst: Double;
  vlMensagemCargaTrib: String;

  (* Retornos da SEFAZ *)
  vCStat: Integer;
  vXMotivo: String;

  (* Utilizados para chamada do mvpr - Validação de Produtos *)
  // ValidaProdutos: TValidaProdutos;
  vPodeProdutos: Boolean;
  Pack: HModule;
  i: Integer;
  vlNomeArquivoNFe: string;
  ok: Boolean;

  (* CST e CSOSN *)
  vlCSTIcmsOK: Boolean;
  vlCSTIcms: TpcnCSTIcms;

  vlCSOSNIcmsOK: Boolean;
  vlCSOSNIcms: TpcnCSOSNIcms;

  vltotpis: Double;
  vltotcofins: Double;
  vltotServicos: Double;
  vlTotalFrete: Double;
  vlTotalDinheiro: Double;
  vlTotalPIX: Double;

  vlrfinumero: string;
  vlParcela: Integer;
  vlPag: currency;
  vlTotalPag: currency;
  vlParcelaIndividual: currency;
  vltitulo: Integer;
  vlFatvLiq: Double;
  vlTotalCartoes: Double;
  vlTemANP: Boolean;
  vlTotalST: Double;
  vlTotalConvenio: Double;
  vlTotalDescontoProdutos: Double;
  vlTotalDescontoServico: Double;

  vhrNFe: string;

  vlTotvFCP: Double;
  vlTotvFCPDest: Double;
  vlTotvFCPST: Double;
  vlICMSUFDest: Double;

  vlOBSRetencao: string;
  vlItem: string;
var
  s: String;
  iValue, iCode, iReduz: Integer;

  vlMensagemICM: STRING;
  vlMensagemReducaoBase: STRING;
  vlReducoes: TStringList;
  vlitemErro: String;

Begin

  {
    consulta.close;
    consulta.sql.Text:='SET time_zone = "-04:00";';
    consulta.ExecSQL;

    consulta.close;
    consulta.sql.Text:='SET @@session.time_zone = "-04:00";';
    consulta.ExecSQL;
  }

  vlTotalDescontoProdutos := 0;
  vlTotalDescontoServico := 0;
  vpmestotalbaseicm := 0;

  vlTotvFCP := 0;
  vlTotvFCPDest := 0;
  vlTotvFCPST := 0;
  vlICMSUFDest := 0;

  vlTotalST := 0;
  vlTemANP := False;
  vlTotalDinheiro := 0;
  vlTotalPIX := 0;
  vlTotalConvenio := 0;
  vlTotalCartoes := 0;
  vlTotalFrete := 0;
  vxdesc := 0;
  vxtot := 0;
  vxliq := 0;
  vltotServicos := 0;
  vlParcelaIndividual := 0;

  vltotpis := 0;
  vltotcofins := 0;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  //
  // ****** Carrega consulta da tabela mes e itm ********
  //


  mes.Close;
  mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
  mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  mes.Open;


  rfi.Close;
  rfi.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
  rfi.Open;
  while not rfi.Eof do
  begin
    if strtodate(rfirfivencimento.AsString) < strtodate(hoje(Application, zcone)) then
    begin
      showmessage('ATENÇÃO!' + #13 + #13 + 'Falha na Validação do SEFAZ MT.' + #13 +
        'O Contas a Receber desta nota tem vencimento anterior a emissão da nota.' + 'Registro do Contas a Receber com a numero nr.: ' +
        rfirfinumero.AsString + ' vencimento ' + rfirfivencimento.AsString);
      exit;
    end;

    rfi.Next;
  end;

  rfi.First;

      qDtl.Close;
      qDtl.SQL.Clear;
      qDtl.SQL.add('SELECT distinct lte.ltetroco ltetroco, lte.ltechave ');
      qDtl.SQL.add('  FROM rfm ');
      qDtl.SQL.add(' INNER JOIN mfi ON rfm.rfichave = mfi.rfichave ');
      qDtl.SQL.add(' INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
      qDtl.SQL.add(' INNER JOIN lte ON mlt.ltechave = lte.ltechave ');
      qDtl.SQL.add(' WHERE rfm.meschave = ' + fnfepdv.vpMesChave);
      qDtl.Open;




  dtl.close;
  dtl.Connection := zcone;
  dtl.ParamByName('ltechave').AsString:=qDtl.FieldByName('ltechave').AsString;
  dtl.Open;


  tit.Close;
  tit.ParamByName('titcodigo').AsInteger := rfititcodigo.AsInteger;
  tit.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;

  vlReducoes := TStringList.Create;

  itm.First;
  while not itm.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'select propercreducaobaseicm from pro where propercreducaobaseicm>0 and procodigo=' + itmprocodigo.AsString;
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      vlReducoes.add(floattostr(100 - consulta.FieldByName('propercreducaobaseicm').AsFloat) + '%');
    end;

    itm.Next;
  end;

  itm.First;

  (*
    *
    ****** Verifica Pré-existência da NFe *******
    *
  *)
  if validatemprodutos = False then
  begin
    showmessage('Não é permitido emissão de nota com apenas SERVIÇOS e sem MERCADORIAS!');
    exit; // Se NFe já existe abandona a geração.
  end;

  // try
  if VerificaPreExistencia('55') then
    exit; // Se NFe já existe abandona a geração.
  // except

  // end;



  //
  // Valida Itens para Emissão do Documento
  //
  {
    Pack := LoadPackage('modulos\mvpr.bpl');
    If Pack <> 0 Then
    Try
    @ValidaProdutos := GetProcAddress(Pack, PChar('ValidaProdutos'));

    If Assigned(ValidaProdutos) Then
    vPodeProdutos := ValidaProdutos(Application, zcone, vpMesChave, Acesso.Filial.ToString);

    Finally
    DoUnLoadPackage(Application, Pack);
    End;

    if not vPodeProdutos then
    exit;
  }

  vPodeProdutos := True;

  //
  // Carrega Operação e Entidade
  //

  toe.Close;

  toe.SQL.Text := 'select ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao,cstnormal,cstcodigo from toe where toecodigo=' +
    mestoecodigo.AsString;

  toe.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  if etd.IsEmpty then
  begin
    Application.MessageBox(PChar('Falha no Cadastros do Destinatário!' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'), '',
      MB_OK + MB_ICONERROR);

    exit;
  end;

  if etdetftelefone.AsString = '' then
  begin
    Application.MessageBox(PChar('Para emissão de NFe é necessário o NÚMERO do TELEFONE do CLIENTE para a nota!' + #13 + #13 +
      'Corrija no cadastro do CLIENTE e tente novamente.'), '', MB_OK + MB_ICONERROR);

    exit;

  end;

  AjustaObservacoes;

  CheckBox1.Checked := True;



  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFeNotas.NotasFiscais.Clear;

  ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;
  if rfi.RecordCount > 0 then
  begin
    ACBrNFeDANFEFR.ExibeCampoFatura := True;
  end;

  If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
  begin
    ACBrNFeDANFEFR.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
    ACBrNFeDANFEFR.ExpandeLogoMarca := True;
  end;



  // Try

  With ACBrNFeNotas.NotasFiscais.add.NFe Do
  Begin

    ide.indIntermed := iiSemOperacao;

    infRespTec.CNPJ := '14477548000131';
    infRespTec.email := 'Mizio@Miziosisemas.com.br';
    infRespTec.xContato := 'Mizio Sistemas';
    infRespTec.fone := '6635442765';

    (*
      *
      ********* Identificação da NFe - IDE ********
      *
    *)

    if (rfi.RecordCount > 0) then
    begin

      // fpCartaoCredito, fpCartaoDebito
      vlTotalDescontoServico := 0;

      consulta.Close;
      consulta.SQL.Text := 'select  itmdesconto from itm,pro where itm.procodigo=pro.procodigo and tpocodigo=' + IntToStr(tpoServicos) +
        '  and meschave=' + mesmeschave.AsString;
      consulta.Open;
      consulta.First;
      while not consulta.Eof do
      begin

        // vlTotalDescontoServico := vlTotalDescontoServico + consulta.FieldByName('itmdesconto').AsCurrency;

        consulta.Next;
      end;

      consulta.Close;
      consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
      consulta.Open;

      if consulta.FieldByName('messervicos').AsFloat > 0 then
      begin

        vltotServicos := consulta.FieldByName('messervicos').AsFloat -
          (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos')
          .AsFloat + consulta.FieldByName('messervicos').AsFloat)));
      end
      else
      begin
        vltotServicos := 0;
      end;

      vlTotalPIX := 0;
      vlTotalDinheiro := 0;
      dtl.First;

      while not dtl.Eof do
      begin

        with pag.add do
        begin
          if dtlmodalidade.AsInteger = mdaPIX then
            tPag := fpDinheiro;

          if dtlmodalidade.AsInteger = mdaChequeTerceiros then
            tPag := fpCheque;

          if dtlmodalidade.AsInteger = mdaCartaoDebito then
          begin
            vlTotalCartoes := vlTotalCartoes + dtldtlvalor.AsCurrency;
            tPag := fpCartaoDebito;
          end;

          if dtlmodalidade.AsInteger = mdaCartaoCredito then
          begin
            vlTotalCartoes := vlTotalCartoes + dtldtlvalor.AsCurrency;
            tPag := fpCartaoCredito;
          end;

          if dtlmodalidade.AsInteger = mdaConvenio then
            tPag := fpCreditoLoja;

          if dtlmodalidade.AsInteger = mdaDinheiro then
          begin
            vlTotalDinheiro := vlTotalDinheiro + dtldtlvalor.AsCurrency;
            tPag := fpDinheiro;
          end;

          if dtlmodalidade.AsInteger = mdaPIX then
          begin
            vlTotalPIX := vlTotalPIX + dtldtlvalor.AsCurrency;
            tPag := fpDinheiro;
          end;

          vlTotalDescontoProdutos := 0;

          itm.First;
          while not itm.Eof do
          begin
            if itmtpocodigo.AsInteger = tpoMercadoriaRevenda then
            begin

              vlTotalDescontoProdutos := vlTotalDescontoProdutos + itmitmdesconto.AsCurrency;

            end;

            itm.Next;
          end;

          vlPag := 0;

          if cfgcfgdescontonoservico.AsInteger = 1 then
          begin

            vlPag := (dtldtlvalor.AsCurrency * (consulta.FieldByName('mesprodutos').AsFloat / (consulta.FieldByName('messervicos').AsFloat +
              consulta.FieldByName('mesprodutos').AsFloat)));

          end
          else
          begin
            if consulta.FieldByName('mesprodutos').AsFloat = 0 then
            begin
              vlPag := dtldtlvalor.AsCurrency;
            end
            else
            begin

              vlPag := dtldtlvalor.AsCurrency -
                (dtldtlvalor.AsCurrency * ((consulta.FieldByName('messervicos').AsFloat) / (consulta.FieldByName('mesprodutos').AsFloat +
                vlTotalDescontoProdutos + consulta.FieldByName('messervicos').AsFloat + vlTotalDescontoServico)));

            end;
          end;

          if dtlmodalidade.AsInteger = mdaConvenio then
          begin
            vlTotalConvenio := vlPag;
          end;

          vPag := vlPag;
        end;
        dtl.Next;
      end;

      if not consulta.IsEmpty then
      begin
        if consulta.FieldByName('messervicos').AsString <> '' then
          vltotServicos := consulta.FieldByName('messervicos').AsCurrency
        else
          vltotServicos := 0;
      end;
      vlTotalPag := 0;
      if dtlmodalidade.AsInteger = mdaConvenio then
      begin

        Cobr.Fat.nFat := 'Tit: nr: ' + rfititcodigo.AsString;
        // Cobr.Fat.vOrig := (tittitvalor.AsCurrency - vltotServicos) - vlTotalDinheiro;

        Cobr.Fat.vOrig := dtldtlvalor.AsCurrency;
        Cobr.Fat.vDesc := 0;
        // Cobr.Fat.vLiq := tittitvalor.AsCurrency - vltotServicos - vlTotalDinheiro;
        vlParcela := 1;
        vlrfinumero := '';
        vltitulo := -1;
        vlFatvLiq := 0;
        while not rfi.Eof do
        begin

          vltitulo := rfititcodigo.AsInteger;

          if vlrfinumero <> rfirfinumero.AsString then
          begin

            { if (RoundTo(rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount), -2) > 0.01) or  (RoundTo(rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount), -2) = 0) then
              BEGIN }
            Duplicata := Cobr.Dup.add;
            Duplicata.nDup := formatfloat('000', vlParcela);
            Duplicata.dVenc := rfirfivencimento.AsFloat;
            { Duplicata.vDup :=
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos - vlTotalDescontoServico) / (mesmestotal.AsCurrency)))));
              vlTotalPag := vlTotalPag +
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos - vlTotalDescontoServico) / (mesmestotal.AsCurrency)))));
            }

            Duplicata.vDup :=
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos) / (mesmestotal.AsCurrency)))));
            vlTotalPag := vlTotalPag +
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos) / (mesmestotal.AsCurrency)))));

            vlParcelaIndividual := Duplicata.vDup;
            vlrfinumero := rfirfinumero.AsString;
            vlParcela := vlParcela + 1;
            { END; }
          end;
          rfi.Next;

          if rfi.Eof then
          begin

            vlFatvLiq := vlTotalPag;
            Cobr.Fat.vLiq := vlTotalPag;

          end;

        end;
        Cobr.Fat.vOrig := Cobr.Fat.vLiq;
      end;

    end
    else
    begin

      if (toettocodigo.AsInteger = ttoDevolucao) or (toettocodigo.AsInteger = ttoRemessaRetorno) or (toettocodigo.AsInteger = ttoOutros) or
        (toettocodigo.AsInteger = ttoComplemento) then
      begin
        with pag.add do
        begin
          tPag := fpSemPagamento;
          vPag := 0;
        end;
      end

      else
      begin

        if not dtl.IsEmpty then
        begin
          consulta.Close;
          consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
          consulta.Open;
          vltotServicos := consulta.FieldByName('messervicos').AsFloat -
            (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos')
            .AsFloat + consulta.FieldByName('messervicos').AsFloat)));
          vlTotalDinheiro := 0;
          dtl.First;

          while not dtl.Eof do
          begin

            with pag.add do
            begin
              if dtlmodalidade.AsInteger = mdaPIX then
                tPag := fpDinheiro;

              if dtlmodalidade.AsInteger = mdaChequeTerceiros then
                tPag := fpCheque;

              if dtlmodalidade.AsInteger = mdaCartaoDebito then
                tPag := fpCartaoDebito;

              if dtlmodalidade.AsInteger = mdaCartaoCredito then
                tPag := fpCartaoCredito;

              if dtlmodalidade.AsInteger = mdaConvenio then
                tPag := fpCreditoLoja;

              if dtlmodalidade.AsInteger = mdaDinheiro then
              begin
                vlTotalDinheiro := vlTotalDinheiro + dtldtlvalor.AsCurrency;
                tPag := fpDinheiro;
              end;

              if dtlmodalidade.AsInteger = mdaPIX then
              begin
                vlTotalPIX := vlTotalPIX + dtldtlvalor.AsCurrency;
                tPag := fpDinheiro;
              end;

              vlPag := dtldtlvalor.AsCurrency -
                (dtldtlvalor.AsCurrency * (consulta.FieldByName('messervicos').AsFloat / (consulta.FieldByName('mesprodutos').AsFloat +
                consulta.FieldByName('messervicos').AsFloat)));

              vPag := vlPag;
            end;
            dtl.Next;
          end;

        end
        else
        begin

          with pag.add do
          begin

            consulta.Close;
            consulta.SQL.Text := 'select sum(itmtotal-itmdesconto) produtos from itm,pro where itm.procodigo=pro.procodigo and pro.tpocodigo=' +
              QuotedStr('00') + ' and meschave=' + mesmeschave.AsString;
            consulta.Open;

            tPag := fpDinheiro;
            vPag := consulta.FieldByName('produtos').AsFloat;

          end;
        end;
      end;

    end;

    ide.cUF := cfgufscodigo.AsInteger;
    // Ide.cNF -> Código da NFe definido por último.

    ide.natOp := toetoeidentificacao.AsString;

    case mestfpcodigo.AsInteger of
      0:
        ide.indPag := ipVista;
      1:
        ide.indPag := ipPrazo;
      9:
        ide.indPag := ipOutras;
    else
      ide.indPag := ipOutras;
    end;

    ide.modelo := 55;
    ide.serie := cfgcfgserienfe.AsInteger;

    // Ide.cNF -> Número da NFe definido por último.
    infNFe.Versao := cfgcfgversao.AsFloat;

    ide.dEmi := vpDataAtual;
    ide.dSaiEnt := strtodatetime(agora(Application, zcone));

    // Ide.dSaiEnt := vpDataAtual;

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
    begin

      if not etd.Active then
      begin
        etd.Close;
        etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
        etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
        etd.Open;

      end;

      if etdtcbcodigo.AsInteger = 2 then
      begin

        if (cfgatvcodigo.AsInteger = atvrestaurante) then
        begin
          if cfgcfgpresencialtoedestino.AsInteger = 1 then
          begin
            ide.idDest := doInterestadual;
            Transp.modFrete := mfSemFrete;
          end
          else
          begin
            ide.idDest := doInterna;
            Transp.modFrete := mfSemFrete;
          end;
        end
        else
        begin
          if ide.indPres = pcPresencial then
          begin
            if ide.indFinal = cfConsumidorFinal then
            begin
              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin

                ide.idDest := doInterestadual;
                Transp.modFrete := mfSemFrete;

              end
              else
              begin

                ide.idDest := doInterna;
                Transp.modFrete := mfSemFrete;
              end;

            end
            else
            begin

              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual
              end
              else
              begin
                ide.idDest := doInterna;
                Transp.modFrete := mfSemFrete;
              end;
            end;
          end
          else
          begin

            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              ide.idDest := doInterestadual
            end
            else
            begin
              ide.idDest := doInterna;
              Transp.modFrete := mfSemFrete;
            end;

          end;
        end;

      end
      else
      begin

        if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
        begin
          if cfgcfgpresencialtoedestino.AsInteger = 1 then
          begin
            ide.idDest := doInterestadual;
            Transp.modFrete := mfSemFrete;
          end
          else
          begin
            ide.idDest := doInterna;
          end;
        end
        else
        begin
          if ide.indPres = pcPresencial then
          begin
            if ide.indFinal = cfConsumidorFinal then
            begin
              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual;
                Transp.modFrete := mfSemFrete;
              end
              else
              begin

                ide.idDest := doInterna;
                Transp.modFrete := mfSemFrete;
              end;
            end
            else
            begin

              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual
              end
              else
              begin
                ide.idDest := doInterna;
              end;

            end;
          end
          else
          begin

            ide.idDest := doInterestadual
          end;
        end;

      end;
    end
    else
    begin

      itm.First;
      While Not itm.Eof Do
      Begin
        if itmproanpcodigo.AsString <> '' then
          vlTemANP := True;

        itm.Next;
      End;
      itm.First;

      dtm.Close;
      dtm.ParamByName('meschave').AsString := vpMesChave;
      dtm.ParamByName('flacodigo').AsInteger := mesflacodigo.AsInteger;
      dtm.Open;

      If dtm.RecordCount = 1 Then
      Begin

        if vlTemANP then
        begin

          ide.idDest := doInterna;
          Transp.modFrete := mfContaDestinatario;

        end;
      End
      else
      begin
        Transp.modFrete := mfSemFrete;
        ide.idDest := doInterna;
      end;
    end;

    case toettecodigo.AsInteger of
      0:
        ide.tpNF := tnEntrada;
      1:
        ide.tpNF := tnSaida;
    end;

    ide.tpImp := tiRetrato;
    ide.tpEmis := teNormal;

    // Ide.tpEmis := teContingencia;
    // ACBrNFeNotas.Configuracoes.Geral.FormaEmissao := teContingencia;

    (* Finalidade da NFe *)
    case toettocodigo.AsInteger of
      ttoCompra, ttoVenda, ttoRemessaRetorno:
        ide.finNFe := fnNormal;
      ttoDevolucao:
        ide.finNFe := fnDevolucao;
      ttoAjuste:
        ide.finNFe := fnAjuste;
      ttoComplemento:
        ide.finNFe := fnComplementar;
    end;

    if mesoricodigo.AsInteger=3 then  // delivery entrega
    begin
      ide.indPres:= pcTeleatendimento;
      ide.indIntermed:=iiOperacaoSemIntermediador;

    end
    else if (mesoricodigo.AsInteger=7) or (mesoricodigo.AsInteger=8)  then  // nuc ou aiqfome
    begin

      ide.indPres:= pcTeleatendimento;
      ide.indIntermed:=iiOperacaoComIntermediador;

      with infIntermed do
      begin

       ori.close;
       ori.ParamByName('oricodigo').AsInteger:=mesoricodigo.AsInteger;
       ori.Open;

       infIntermed.CNPJ:=SoNumeros(orietddoc1.AsString);
       infIntermed.idCadIntTran:=orioriidentificacao.AsString;

      end;

    end
    else    // presencial no salão
    begin
      ide.indPres := pcPresencial;
      ide.indIntermed := iiSemOperacao;
    end;


    ide.cMunFG := cfgcddcodigo.AsInteger;

    if cfgcfgmodonfe.AsInteger = 2 then
      ide.tpAmb := taHomologacao;

    if cfgcfgmodonfe.AsInteger = 1 then
      ide.tpAmb := taProducao;

    ide.verProc := '21.25.300.1';

    ctd.Close;
    ctd.Connection := zcone;
    ctd.Open;

    if not ctd.IsEmpty then
    begin
      if (ctdctdcnpj.AsString <> '') and (ctdctdcnpj.AsString <> '0') then
      begin
        try
          if strtofloat(SoNumeros(ctdctdcnpj.AsString)) > 0 then
          begin
            autXML.add.CNPJCPF := SoNumeros(ctdctdcnpj.AsString);
          end;
        except

        end;
      end;
    end;
    (*
      *
      ****** Grupo de Informações de Documentos Referenciados
      *
    *)
    vInfComplCF := '';
    vSeparadorCF := '';

    vInfComplNF := '';
    vSeparadorNF := '';
    vInfComplNFP := '';
    vSeparadorNFP := '';
    vInfComplNFe := '';
    vSeparadorNFe := '';

    dfr.Close;
    dfr.Params[0].AsString := vpMesChave;
    dfr.Open;

    (* Documento Fiscal Referenciado *)
    while not dfr.Eof do
    begin
      with ide.NFref.add do
      begin
        (* Nota Fiscal Modelo 1/1a *)
        if dfrtdfcodigo.AsString = tdfNotaFiscal then
          with RefNF do
          begin
            cUF := dfrufscodigo.AsInteger;
            AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
            CNPJ := SomenteNumeros(dfretddoc1.AsString);
            modelo := dfrtdfcodigo.AsInteger;
            // serie := dfrdfrserie.AsInteger;
            serie := cfgcfgserienfe.AsInteger;

            nNF := dfrdfrnumero.AsInteger;

            if vInfComplNF = '' then
              vInfComplNF := 'Nota Fiscal referenciada: ';

            vInfComplNF := vInfComplNF + vSeparadorNF + dfrdfrnumero.AsString;
            vSeparadorNF := ', ';
          end;

        (* Nota Fiscal de Produtor Rural *)
        if dfrtdfcodigo.AsString = tdfNotaFiscalDeProdutor then
          with RefNFP do
          begin
            cUF := dfrufscodigo.AsInteger;
            AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
            CNPJCPF := SomenteNumeros(dfretddoc1.AsString);

            IE := SomenteNumeros(dfredrinscest.AsString);

            if Copy(IE, 1, 1) = '0' then
              IE := Copy(IE, 2, 20);

            if Copy(IE, 1, 1) = '0' then
              IE := Copy(IE, 2, 20);

            if Copy(IE, 1, 1) = '0' then
              IE := Copy(IE, 2, 20);

            if Copy(IE, 1, 1) = '0' then
              IE := Copy(IE, 2, 20);

            modelo := dfrtdfcodigo.AsString;
            serie := cfgcfgserienfe.AsInteger;
            // serie := dfrdfrserie.AsInteger;
            nNF := dfrdfrnumero.AsInteger;

            if vInfComplNFP = '' then
              vInfComplNFP := 'Nota Fiscal de Produtor referenciada: ';

            vInfComplNFP := vInfComplNFP + vSeparadorNFP + dfrdfrnumero.AsString;
            vSeparadorNFP := ', ';
          end;

        (* Nota Fiscal Eletrônica - NFe *)
        if MatchStr(dfrtdfcodigo.AsString, [tdfNotaFiscalEletronica, tdfNotaFiscalConsumidorEletronica]) then
        begin
          refNFe := dfrdfrchavenfe.AsString;

          if vInfComplNFe = '' then
            vInfComplNFe := 'NF-e referenciada: ';

          vInfComplNFe := vInfComplNFe + vSeparadorNFe + dfrdfrchavenfe.AsString;
          vSeparadorNFe := ', ';
        end;
      end;

      dfr.Next;
    end;

    if vInfComplNF <> '' then
      vInfComplNF := vInfComplNF + ';';

    if vInfComplNFP <> '' then
      vInfComplNFP := vInfComplNFP + ';';

    if vInfComplNFe <> '' then
      vInfComplNFe := vInfComplNFe + ';';

    if vInfComplCF <> '' then
      vInfComplCF := vInfComplCF + ';';

    (*
      *
      ****** Emitente da NFe - EMIT ********
      *
    *)

    Emit.CNPJCPF := SomenteNumeros(cfgetddoc1.AsString);
    Emit.IE := SomenteNumeros(cfgedrinscest.AsString);

    if Copy(Emit.IE, 1, 1) = '0' then
      Emit.IE := Copy(Emit.IE, 2, 20);

    if Copy(Emit.IE, 1, 1) = '0' then
      Emit.IE := Copy(Emit.IE, 2, 20);

    if Copy(Emit.IE, 1, 1) = '0' then
      Emit.IE := Copy(Emit.IE, 2, 20);

    if Copy(Emit.IE, 1, 1) = '0' then
      Emit.IE := Copy(Emit.IE, 2, 20);

    Emit.xNome := cfgetdidentificacao.AsString;
    Emit.xFant := cfgetdapelido.AsString;
    Emit.EnderEmit.fone := cfgetftelefone.AsString;
    Emit.EnderEmit.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString));
    Emit.EnderEmit.xLgr := cfgedrrua.AsString;
    Emit.EnderEmit.nro := cfgedrnumero.AsString;
    Emit.EnderEmit.xCpl := '';
    Emit.EnderEmit.xBairro := cfgedrbairro.AsString;
    Emit.EnderEmit.cMun := cfgcddcodigo.AsInteger;
    Emit.EnderEmit.xMun := cfgcddnome.AsString;
    Emit.EnderEmit.UF := UpperCase(cfgufssigla.AsString);
    Emit.EnderEmit.cPais := 1058;

    if trim(mesmesfilialpedido.AsString) <> '' then
    begin
      Emit.EnderEmit.xCpl := mesmesfilialpedido.AsString;
    end;

    Emit.EnderEmit.xPais := 'BRASIL';

    case cfgcrtcodigo.AsInteger of
      1:
        Emit.CRT := crtSimplesNacional;
      2:
        Emit.CRT := crtSimplesExcessoReceita;
      3:
        Emit.CRT := crtRegimeNormal;
    end;

    (*
      *
      ********* Destinatário da NFe **********
      *
    *)

    Dest.CNPJCPF := SomenteNumeros(self.etdetddoc1.AsString);
    Dest.EnderDest.CEP := StrToInt(SomenteNumeros(etdedrcep.AsString));
    Dest.EnderDest.xLgr := etdedrrua.AsString;
    Dest.EnderDest.nro := etdedrnumero.AsString;
    Dest.EnderDest.xCpl := '';
    Dest.EnderDest.xBairro := etdedrbairro.AsString;
    Dest.EnderDest.cMun := etdcddcodigo.AsInteger;
    Dest.EnderDest.xMun := etdcddnome.AsString;
    Dest.EnderDest.UF := UpperCase(etdufssigla.AsString);
    Dest.EnderDest.fone := etdetftelefone.AsString;

    (* Valida Inscrição Estadual do Destinatário *)
    try
      vTestaInscEst := trim(SomenteNumeros(etdedrinscest.AsString));

      if vTestaInscEst = '00000000000' then
        vTestaInscEst := '';

      strtofloat(vTestaInscEst);

      ACBrValidador1.TipoDocto := docInscEst;
      ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
      ACBrValidador1.Documento := vTestaInscEst;

      if not ACBrValidador1.Validar then
      begin
        Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 +
          'Corrija no cadastro do destinatário e tente novamente.'), 'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
        vTestaInscEst := '';
        exit;
      end;

      if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 14 then
        ACBrValidador1.TipoDocto := docCNPJ;

      if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 11 then
        ACBrValidador1.TipoDocto := docCPF;

      ACBrValidador1.Documento := SomenteNumeros(self.etdetddoc1.AsString);

      if not ACBrValidador1.Validar then
      begin
        Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'),
          'CNPJ ou CPF Inválido', MB_OK + MB_ICONERROR);

        exit;
      end;

    except
      vTestaInscEst := '';
    end;

    if vTestaInscEst <> '' then
    begin
      Dest.IE := vTestaInscEst;
      Dest.indIEDest := inContribuinte;

      if mesmespararevenda.AsInteger = 1 then
      begin
        ide.indFinal := cfNao;
      end
      else
      begin
        ide.indFinal := cfConsumidorFinal;
      end;
    end
    else
    begin
      Dest.IE := '';
      Dest.indIEDest := inNaoContribuinte;
      ide.indFinal := cfConsumidorFinal;
    end;

    if etdedrrazaofazenda.AsString <> '' then
      Dest.xNome := etdedrrazaofazenda.AsString
    else
      Dest.xNome := etdetdidentificacao.AsString;
    Dest.EnderDest.cPais := 1058;
    Dest.EnderDest.xPais := 'BRASIL';

    (*
      *
      ********* Detalhamento de Produtos e Serviços - DET ***********
      *
    *)

    itm.Refresh;

    itm.IndexFieldNames := 'itmchave';
    itm.First;
    it := 1;

    vtBC := 0;
    vtICMS := 0;
    vtBCST := 0;
    vtICMSST := 0;

    vlTotTrib := 0;
    vlTotTribEst := 0;
    vlMensagemCargaTrib := '';
    vlOBSRetencao := '';

    itm.Close;
    itm.Params[0].AsString := vpMesChave;
    itm.Params[1].AsInteger := Acesso.Filial;
    itm.Open;

    itm.First;
    While Not itm.Eof Do
    Begin

      if (cfgcfgusacstnoproduto.AsInteger = 0) and (cfgcfgdefinetoeatendimento.AsInteger = 0) then
      begin

        toeitm.Close;
        toeitm.Connection := zcone;
        toeitm.ParamByName('toecodigo').AsInteger := itmtoecodigo.AsInteger;
        toeitm.Open;

        itmcst.Close;
        itmcst.Connection := zcone;
        itmcst.ParamByName('itmchave').AsInteger := itmitmchave.AsInteger;
        itmcst.Open;

        if dfr.IsEmpty then
        begin

          if itmcstcodigo.AsString = '' then
          begin

            itmcst.Edit;
            itmcstcstcodigo.AsString := toeitmcstcodigo.AsString;
            itmcstcsicodigo.AsString := toeitmcsicodigo.AsString;
            itmcstcspcodigo.AsString := toeitmcspcodigo.AsString;
            itmcstcsfcodigo.AsString := toeitmcsfcodigo.AsString;
            itmcstitmaliqpis.AsFloat := toeitmcfgpercentualpis.AsFloat;
            itmcstitmaliqcofins.AsFloat := toeitmcfgpercentualcofins.AsFloat;
            itmcst.Post;
          end;
        end;

      end;
      itm.Next;
    End;

    if (mesttocodigo.AsInteger = ttoVenda) then
    begin

      VerifieAjustaICM;
      VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);
      VerifieAjustaPISCOFINS;
    end
    else if (mesttocodigo.AsInteger = ttoOutros) then
    begin
      VerifieAjustaICM;
    end
    else if (mesttocodigo.AsInteger = ttoReclassificacao) then
    begin
      VerifieAjustaItemReclassificacao;
    end;

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
    begin
      if ide.indPres = pcPresencial then
      begin
        if ide.indFinal = cfConsumidorFinal then
        begin
          if mesmesretirabalcao.AsInteger = 1 then
          begin

            VerifieAjustaItemcomConsumidorFinal(False);

          end
          else
          begin

            ide.idDest := doInterestadual;
          end;

        end;
      end;
    end;

    itm.Close;
    itm.Params[0].AsString := vpMesChave;
    itm.Params[1].AsInteger := Acesso.Filial;
    itm.Open;

    itm.First;

    itm.First;
    While Not itm.Eof Do
    Begin
      if itmproanpcodigo.AsString <> '' then
        vlTemANP := True;
      With Det.add Do
      Begin

        infAdProd := itmitmdesccomple.AsString;
        Prod.nItem := it;
        Prod.ncm := SomenteNumeros(itmproncm.AsString);

        ACBrValidadorBarra.TipoDocto := docGTIN;
        ACBrValidadorBarra.Documento := Copy(itmpunbarra.AsString, 2, 13);
        if ACBrValidadorBarra.Validar then
        begin
          Prod.cEAN := Copy(itmpunbarra.AsString, 2, 13);
          Prod.cEANTrib := Prod.cEAN;
        end
        else
        begin
          Prod.cEAN := 'SEM GTIN';
          Prod.cEANTrib := Prod.cEAN;
        end;

        if itmpadextipi.AsString <> '' then
        begin
          Prod.EXTIPI := itmpadextipi.AsString;
        end;

        Prod.CFOP := SoNumeros(itmcfocfop.AsString); // '5101';

        if itmproanpcodigo.AsString <> '' then
        begin

          with Prod.comb do
          begin
            cProdANP := itmproanpcodigo.AsInteger;
            UFcons := UpperCase(etdufssigla.AsString);
            pGLP := 100;
            descANP := 'GLP';
            vPart := itmitmvalor.AsCurrency / 13;
          end;

        end;

        Prod.cProd := self.itmprocodigo.AsString; // '67';

        If cfgcfgdescrinfe.AsInteger = 0 Then
          Prod.xProd := BuscaTroca(trim(itmpronome.AsString), '%', '');

        If cfgcfgdescrinfe.AsInteger = 1 Then
          Prod.xProd := BuscaTroca(trim(itmpronomereduzido.AsString), '%', '');

        If (Copy(Prod.xProd, 1, 1) = '.') Then
          Prod.xProd := trim(Copy(Prod.xProd, 2, 300));

        Prod.qCom := self.itmitmquantidade.AsFloat;
        Prod.uCom := self.itmunisimbolo.AsString; // 'KG';
        Prod.vProd := TBRound(self.itmitmquantidade.AsFloat * self.itmitmvalor.AsFloat, 2);
        Prod.vUnCom := self.itmitmvalor.AsFloat; // 10;

        Prod.vDesc := self.itmitmdesconto.AsFloat;

        Prod.qTrib := self.itmpunqtdtribtotal.AsFloat;
        Prod.uTrib := self.itmunisimbolotrib.AsString;
        if itmpunqtdtribtotal.AsCurrency > 0 then
          Prod.vUnTrib := Prod.vProd / Prod.qTrib
        else
          Prod.vUnTrib := 0;

        Prod.vOutro := self.itmitmoutras.AsFloat;

        vxdesc := vxdesc + Prod.vDesc; // acumula o valor do desconto
        vxtot := vxtot + Prod.vProd; // acumula o valor total do item
        vxliq := vxliq + (vxtot - vxdesc); // acumula o valor liquido da nota

        // inclui dados do pedido
        if (mesmesnumeropedido.AsString <> '') and (itmitmitempedido.AsString <> '') then
        begin
          Prod.xPed := mesmesnumeropedido.AsString;

          s := itmitmitempedido.AsString;

          val(s, iValue, iCode);

          if iCode = 0 then
          begin
            Prod.nItemPed := formatfloat('000000', itmitmitempedido.AsInteger);

          end
          else
          begin
            Prod.nItemPed := itmitmitempedido.AsString;
          end;

        end;

        if itmtpocodigo.AsInteger = 99 then
          Prod.CEST := '01.999.00';

        if itmtcecest.AsString <> '' then
        begin
          Prod.CEST := itmtcecest.AsString;
        end;

        With Imposto Do
        Begin

          (* Se for operação de Venda define o total de carga tributária por item *)
          if toettocodigo.AsInteger = ttoVenda then
          begin
            Imposto.vTotTrib := itmitmcargatrib.AsFloat + itmitmcargatribest.AsFloat;

            (* Acumula totais de carga tributária por ente Federal e Estadual *)
            vlTotTrib := vlTotTrib + itmitmcargatrib.AsFloat;
            vlTotTribEst := vlTotTribEst + itmitmcargatribest.AsFloat;
          end;

          case mesrefcodigo.AsInteger of
            1:
              begin
                Prod.vFrete := itmitmfrete.AsCurrency;
                vlTotalFrete := vlTotalFrete + itmitmfrete.AsCurrency;
              end;
            9:
              Total.ICMSTot.vFrete := 0;
          end;

          With ICMS Do

          Begin

            // ICMS.orig:=TpcnOrigemMercadoria.oeEstrangeiraAdquiridaBrasil;
              // ICMS.orig:=TpcnOrigemMercadoria.oeNacionalConteudoImportacaoInferiorIgual40;

            case Emit.CRT of
              (* CSOSN *)
              crtSimplesNacional:
                begin

                  vCST := self.itmcstcodigo.AsString;

                  vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                  if vlCSOSNIcmsOK then
                    CSOSN := vlCSOSNIcms

                end;

              (* CST *)
              crtRegimeNormal, crtSimplesExcessoReceita:
                begin

                  if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                  begin

                    vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                  end
                  else
                  begin
                    vCST := Copy(self.itmcstcodigo.AsString, 2, 2);

                    vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, vCST);

                  end;

                  if vlCSTIcmsOK then
                    CST := vlCSTIcms;
                end;

            end;

            ICMS.modBC := dbiValorOperacao;
            If (lowercase(self.itmicmcodigo.AsString) = 'ff') Or (lowercase(self.itmicmcodigo.AsString) = 'ii') Or
              (lowercase(self.itmicmcodigo.AsString) = 'nn') Or (lowercase(self.itmicmcodigo.AsString) = '00') Or
              (lowercase(self.itmicmcodigo.AsString) = '01') Then
            Begin
              ICMS.pICMS := 0;
              ICMS.vICMS := 0;
              ICMS.vBC := 0;
            End
            Else
            Begin
              If (self.itmicmcodigo.AsFloat = 0.01) or (self.itmitmicm.AsFloat = 0) Then
              Begin
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.vBC := 0;
                if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn500) or (ICMS.CSOSN = csosn400) then
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := itmitmmva.AsFloat;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                    ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;
                  end;
                end
                else
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := itmitmmva.AsFloat;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                    ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;

                  end;
                end;
              End
              Else
              Begin
                ICMS.pICMS := self.itmicmaliquotas.AsFloat;
                ICMS.vICMS := itmitmicm.AsFloat;
                ICMS.vBC := itmitmbicm.AsCurrency;
                ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;

                if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn500) or (ICMS.CSOSN = csosn400) then
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := itmitmmva.AsFloat;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                  end;
                end
                else
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := itmitmmva.AsFloat;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                  end;
                end;
              End;
            End;

            if (ICMS.CSOSN = csosn202) or (ICMS.CSOSN = csosn500) then
            begin

              vtICMS := vtICMS + 0;
              vtBC := vtBC + 0;
              ICMS.vBCFCPST := 0;
              ICMS.pFCPST := 0;
              ICMS.vFCPST := 0;

            end
            else
            begin
              vtICMS := vtICMS + ICMS.vICMS;
              vtBC := vtBC + ICMS.vBC;

            end;

            vlTotalST := vlTotalST + ICMS.vICMSST;
            vtICMSST := vtICMSST + ICMS.vICMSST;
            vtBCST := vtBCST + ICMS.vBCST;
            { if (ICMS.CST = cst60) and (Ide.indFinal = cfConsumidorFinal) then
              begin
              pST := 17;
              end; }

            if (itmcfocfop.AsString <> '5.405') and (itmcfocfop.AsString <> '6.411') and (itmcfocfop.AsString <> '6.403') then
            begin

              if (Dest.indIEDest = inNaoContribuinte) and (ide.indFinal = cfConsumidorFinal) and (Emit.EnderEmit.UF <> Dest.EnderDest.UF) and
                (cfgcfgpresencialtoedestino.AsInteger = 1) then
              begin


                //
                // ****** Carrega tabela icms ********
                //

                icf.Close;
                icf.FilterSQL := QuotedStr(formatdatetime('yyyy-mm-dd', ide.dEmi)) + ' BETWEEN date(icfdatainicial) AND date(icfdatafinal)';
                icf.Open;

                ici.Close;
                ici.FilterSQL := 'iciuforigem=' + QuotedStr(Emit.EnderEmit.UF) + ' AND iciufdestino=' + QuotedStr(Dest.EnderDest.UF);
                ici.Open;

                if vtBC > 0 then
                begin

                  ICMSUFDest.vBCUFDest := vtBC;
                  ICMSUFDest.pICMSUFDest := 0; // itmicmaliquotas.AsFloat;
                  ICMSUFDest.pICMSInter := itmicmaliquotas.AsFloat; // iciiciicmaliguotaicms.AsFloat;
                  ICMSUFDest.pICMSInterPart := icficfpercicmdestino.AsFloat;

                  if (vtBC * (itmicmaliquotas.AsFloat / 100)) - (vtBC * (ICMSUFDest.pICMSInter / 100)) > 0 then
                  begin
                    // ICMSUFDest.vICMSUFDest := (vtBC * (itmicmaliquotas.AsFloat / 100)) - (vtBC * (ICMSUFDest.pICMSInter / 100));
                    ICMSUFDest.vICMSUFDest := RoundTo((vtBC * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmorigem.AsFloat / 100), -2);
                    vlICMSUFDest := vlICMSUFDest + ICMSUFDest.vICMSUFDest;
                  end;

                  // ICMSUFDest.vICMSUFRemet := RoundTo((vtBC * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmorigem.AsFloat / 100), -2);
                  ICMSUFDest.vICMSUFRemet := 0;
                  // ICMSUFDest.vICMSUFDest := RoundTo((vtBC * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmorigem.AsFloat / 100), -2);
                  ICMSUFDest.vICMSUFDest := 0;

                end;
              end;
            end;

            if cfgcrtcodigo.AsInteger <> 1 then
            begin

              if (itmitmbasefcpicm.AsString <> '') and (itmitmbasefcpicm.AsString <> '0') then
              begin

                if (Dest.indIEDest <> inContribuinte) then
                begin
                  if (Emit.EnderEmit.UF <> Dest.EnderDest.UF) then
                  begin

                    // ICMSUFDest.pFCPUFDest:=itmitmpercfcpicm.AsFloat;
                    // ICMSUFDest.vFCPUFDest := itmitmvalofcpicm.AsFloat;
                    // ICMSUFDest.vBCFCPUFDest:= itmitmbasefcpicm.AsFloat;

                    // vlTotvFCPDest := vlTotvFCPDest + itmitmvalofcpicm.AsFloat;
                    vlTotvFCPDest := 0;
                  end
                  else
                  begin
                    vBCFCP := itmitmbasefcpicm.AsFloat;
                    pFCP := itmitmpercfcpicm.AsFloat;
                    vFCP := itmitmvalofcpicm.AsFloat;
                    vlTotvFCP := vlTotvFCP + itmitmvalofcpicm.AsFloat;

                  end;
                end
                else
                begin

                  if (Emit.EnderEmit.UF <> Dest.EnderDest.UF) then
                  begin

                    // ICMSUFDest.pFCPUFDest:=itmitmpercfcpicm.AsFloat;
                    // ICMSUFDest.vFCPUFDest := itmitmvalofcpicm.AsFloat;
                    // ICMSUFDest.vBCFCPUFDest:= itmitmbasefcpicm.AsFloat;
                    // vlTotvFCPDest := vlTotvFCPDest + itmitmvalofcpicm.AsFloat;

                    vlTotvFCPDest := 0;
                  end
                  else
                  begin
                    vBCFCP := itmitmbasefcpicm.AsFloat;
                    pFCP := itmitmpercfcpicm.AsFloat;
                    vFCP := itmitmvalofcpicm.AsFloat;
                    vlTotvFCP := vlTotvFCP + itmitmvalofcpicm.AsFloat;
                  end;

                end;
              end;

              if (itmitmbasefcpicmst.AsString <> '') and (itmitmbasefcpicmst.AsString <> '0') then
              begin

                vBCFCPST := itmitmbasefcpicmst.AsFloat;
                pFCPST := itmitmpercfcpicmst.AsFloat;
                vFCPST := itmitmvalofcpicmst.AsFloat;
                vlTotvFCPST := vlTotvFCPST + itmitmvalofcpicmst.AsFloat;
              end;

            end;

            if mesmespararevenda.AsInteger = 1 then
            begin
              if itmcstcodigo.AsString = '101' then
              begin
                vpmestotalbaseicm := vpmestotalbaseicm + ((itmitmvalor.AsFloat * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency);
              end;

            end;

          End;

          if itmproanpcodigo.AsString = '' then
          begin

            If self.itmitmaliqipi.AsFloat <> 0 Then
            Begin
              ipi.vIPI := itmitmipi.AsCurrency;
              ipi.vBC := itmitmbipi.AsCurrency;
              ipi.pIPI := self.itmitmaliqipi.AsFloat;

              ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
              // ipi.CST := ipi50;
              vtipi := vtipi + ipi.vIPI;
            End
            Else
            Begin
              ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
              // ipi.CST := ipi01;
            End;

          end;
          if itmcspcodigo.AsString = '' then
          begin
            pis.CST := StrToCSTPIS(ok, formatfloat('00', 99));
          end
          else
          begin

            pis.CST := StrToCSTPIS(ok, formatfloat('00', itmcspcodigo.AsInteger));
          end;

          if cfgcrtcodigo.AsInteger = 3 then // não é simples nem mei
          begin

            pis.pPIS := itmitmaliqpis.AsFloat;

            if cfgcfgtoenotacomplementar.AsInteger = mestoecodigo.AsInteger then
            begin
              pis.vPIS := itmitmpis.AsCurrency;
              pis.vBC := itmitmbpis.AsCurrency
            end
            else
            begin
              if itmitmaliqpis.AsFloat <> 0 then
              begin
                pis.vPIS := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) * (itmitmaliqpis.AsFloat / 100);
                pis.vBC := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
              end;
            end;
            vltotpis := vltotpis + pis.vPIS;

          end;
          if itmcsfcodigo.AsString = '' then
          begin
            COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', 99));

          end
          else
          begin
            COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', itmcsfcodigo.AsInteger));
          end;
          if cfgcrtcodigo.AsInteger = 3 then // não é simples nem mei
          begin
            COFINS.pCOFINS := itmitmaliqcofins.AsFloat;

            if cfgcfgtoenotacomplementar.AsInteger = mestoecodigo.AsInteger then
            begin
              COFINS.vBC := itmitmbcofins.AsCurrency;
              COFINS.vCOFINS := itmitmcofins.AsCurrency;
            end
            else
            begin
              if itmitmaliqcofins.AsFloat <> 0 then
              begin
                COFINS.vBC := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
                COFINS.vCOFINS := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) *
                  (itmitmaliqcofins.AsFloat / 100);
              end;
            end;

            vltotcofins := vltotcofins + COFINS.vCOFINS;
          end;

          { if cfgcfgcstpis.AsString <> '' then
            begin
            pis.CST := StrToCSTPIS(ok, cfgcfgcstpis.AsString);
            end;

            if cfgcfgcstcofins.AsString <> '' then
            begin
            COFINS.CST := StrToCSTCOFINS(ok, cfgcfgcstcofins.AsString);
            end; }

        End;
        it := it + 1;
      End;
      itm.Next;
    End;

    (*
      *
      ******** Informações do Transporte da NF-e - TRANSP ********
      *
    *)

    // Responsavel pelo Frete 0- Por conta do emitente; 1- Por conta do destinatário/remetente;2- Por conta de terceiros;9- Sem cobrança de frete
    case mesrefcodigo.AsInteger of
      0:
        Transp.modFrete := mfContaEmitente;
      1:
        begin
          if (cfgatvcodigo.AsInteger = atvrestaurante) then
          begin
            Transp.modFrete := mfSemFrete;
            consulta.Close;
            consulta.SQL.Text := 'update mes set refcodigo=9 where meschave=' + vpMesChave;
            consulta.ExecSQL;
          end
          else
          begin
            Transp.modFrete := mfContaDestinatario;
          end;
        end;
      2:
        Transp.modFrete := mfContaTerceiros;
      3:
        Transp.modFrete := mfProprioRemetente;

      9:
        Transp.modFrete := mfSemFrete;
    end;


    dtm.Close;
    dtm.ParamByName('meschave').AsString := vpMesChave;
    dtm.ParamByName('flacodigo').AsInteger := mesflacodigo.AsInteger;
    dtm.Open;

    if Transp.modFrete <> mfSemFrete then
    begin

      If dtm.RecordCount = 1 Then
      Begin

        Transp.Transporta.xNome := dtmetdidentificacao.AsString;
        Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
        Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

        if Copy(Transp.Transporta.IE, 1, 1) = '0' then
          Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

        if Copy(Transp.Transporta.IE, 1, 1) = '0' then
          Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

        if Copy(Transp.Transporta.IE, 1, 1) = '0' then
          Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

        if Copy(Transp.Transporta.IE, 1, 1) = '0' then
          Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

        Transp.Transporta.xEnder := dtmedrrua.AsString;
        Transp.Transporta.xMun := dtmcddnome.AsString;
        Transp.Transporta.UF := dtmufssigla.AsString;

        { Transp.veicTransp.placa := dtmdtmplaca.AsString;
          Transp.veicTransp.UF := dtmufssigla.AsString; }

        if Emit.EnderEmit.UF <> Dest.EnderDest.UF then // fora do estado
        begin

          Transp.Transporta.xNome := dtmetdidentificacao.AsString;
          Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
          Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          Transp.Transporta.xEnder := dtmedrrua.AsString;
          Transp.Transporta.xMun := dtmcddnome.AsString;
          Transp.Transporta.UF := dtmufssigla.AsString;

          { Transp.veicTransp.placa := dtmdtmplaca.AsString;
            Transp.veicTransp.UF := dtmufssigla.AsString; }

          Transp.Vol.add;
          Transp.Vol.Items[0].qVol := dtmdtmvolumes.AsInteger;
          Transp.Vol.Items[0].esp := dtmdtmespecie.AsString;
          Transp.Vol.Items[0].marca := dtmdtmmarcas.AsString;
          Transp.Vol.Items[0].pesoB := dtmdtmpesobruto.AsFloat;
          Transp.Vol.Items[0].pesoL := dtmdtmpesoliq.AsFloat;

        end
        else
        begin

          Transp.Vol.add;
          Transp.Vol.Items[0].qVol := dtmdtmvolumes.AsInteger;
          Transp.Vol.Items[0].esp := dtmdtmespecie.AsString;
          Transp.Vol.Items[0].marca := dtmdtmmarcas.AsString;
          Transp.Vol.Items[0].pesoB := dtmdtmpesobruto.AsFloat;
          Transp.Vol.Items[0].pesoL := dtmdtmpesoliq.AsFloat;
        end;
      End
      Else
      Begin

        Transp.Transporta.xNome := '';
        Transp.Transporta.CNPJCPF := '';
        Transp.Transporta.IE := '';
        Transp.Transporta.xEnder := '';
        Transp.Transporta.xMun := '';
        Transp.Transporta.UF := '';

        Transp.Vol.add;
        Transp.Vol.Items[0].qVol := 1;
        Transp.Vol.Items[0].esp := '';
        Transp.Vol.Items[0].marca := '';
        Transp.Vol.Items[0].pesoB := 0;
        Transp.Vol.Items[0].pesoL := 0;

      End;

    end
    else
    begin

      Transp.Transporta.xNome := '';
      Transp.Transporta.CNPJCPF := '';
      Transp.Transporta.IE := '';
      Transp.Transporta.xEnder := '';
      Transp.Transporta.xMun := '';
      Transp.Transporta.UF := '';

      Transp.Vol.add;
      Transp.Vol.Items[0].qVol := 1;
      Transp.Vol.Items[0].esp := '';
      Transp.Vol.Items[0].marca := '';
      Transp.Vol.Items[0].pesoB := 0;
      Transp.Vol.Items[0].pesoL := 0;

    end;

    (*
      *
      ******* Totais da NFe *******
      *
    *)

    irr.Close;
    irr.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
    irr.Open;

    if not irr.IsEmpty then
    begin
      Total.retTrib.vBCIRRF := mesmestotal.AsCurrency;
      Total.retTrib.vIRRF := mesmestotal.AsCurrency * (irrirrpercentual.AsFloat / 100);
      vlOBSRetencao := 'Imposto de Renda retido na fonte - Base de Calculo: ' + formatfloat('#0.00', mesmestotal.AsFloat) + ' Imposto Retido: ' +
        formatfloat('#0.00', mesmestotal.AsCurrency * (irrirrpercentual.AsFloat / 100));
    end;

    Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
    Total.ICMSTot.vIPI := vtipi;

    Total.ICMSTot.vBC := vtBC;
    Total.ICMSTot.vICMS := RoundTo(vtICMS, -2);

    if vlICMSUFDest > 0 then
    begin
      Total.ICMSTot.vICMSUFDest := vlICMSUFDest;
    end;
    // 180;
    Total.ICMSTot.vBCST := vtBCST; // + Total.ICMSTot.vST;
    Total.ICMSTot.vST := RoundTo(vtICMSST, -2);
    Total.ICMSTot.vProd := RoundTo(vxtot, -2);
    Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
    Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;

    if cfgcrtcodigo.AsInteger <> 1 then
    begin
      Total.ICMSTot.vFCP := vlTotvFCP;
      Total.ICMSTot.vFCPST := vlTotvFCPST;
    end;

    if vlTotvFCPDest > 0 then
    begin
      Total.ICMSTot.vFCPufdest := vlTotvFCPDest;
    end;

    consulta.Close;
    consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
    consulta.Open;

    if consulta.FieldByName('messervicos').AsFloat > 0 then
    begin
      if cfgcfgdescontonoservico.AsInteger = 1 then
      begin
        vltotServicos := consulta.FieldByName('messervicos').AsFloat;
      end
      else
      begin
        vltotServicos := consulta.FieldByName('messervicos').AsFloat;
      end;
    end
    else
    begin
      vltotServicos := 0;
    end;

    if vltotServicos > 0 then
    begin
      Total.ICMSTot.vNF := vxtot - vxdesc;

    end
    else
    begin
      Total.ICMSTot.vNF := mesmestotal.AsCurrency;
    end;

    Total.ICMSTot.vPIS := vltotpis;
    Total.ICMSTot.vCOFINS := vltotcofins;

    case mesrefcodigo.AsInteger of
      1:
        Total.ICMSTot.vFrete := mesmesfrete.AsCurrency;
      9:
        Total.ICMSTot.vFrete := 0;
    end;


    qTomTof.Close;
    qTomTof.SQL.Text := 'SELECT distinct tofidentificacao FROM tom, tof WHERE ';
    qTomTof.SQL.add('tom.tofcodigo = tof.tofcodigo AND ');
    qTomTof.SQL.add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
    qTomTof.SQL.add('tom.meschave = ' + vpMesChave + ' ');
    qTomTof.SQL.add('ORDER BY tof.tofcodigo');
    qTomTof.Open;

    vInfComplGeral := '';


    While Not qTomTof.Eof Do
    Begin
      if pos(trim(qTomTof.Fields[0].AsString), vInfComplGeral) = 0 then
      begin

        if pos('%?', qTomTof.Fields[0].AsString) > 0 then
        begin
          if pos('%?', qTomTof.Fields[0].AsString) > 0 then
          begin

            spd.Close;
            spd.Open;

            if (spdspdaliquotasimples.AsString <> '') and (spdspdaliquotasimples.AsString <> '0') then
            begin

              icm.Close;
              icm.Open;


              if spdspdaliquotasimples.AsFloat <> 0 then
              begin
                if mesmespararevenda.AsInteger = 1 then
                begin
                  consulta.Close;
                  consulta.SQL.Text := 'select etdregime from etd where etdcodigo=' + mesetdcodigo.AsString;
                  consulta.Open;

                  if consulta.FieldByName('etdregime').AsInteger = 1 then
                  begin
                    vlMensagemICM := StringReplace(qTomTof.Fields[0].AsString, '%?', spdspdaliquotasimples.AsString + '%', []);
                  end
                  else
                  begin
                    vlMensagemICM := StringReplace(qTomTof.Fields[0].AsString, '%?', spdspdaliquotasimples.AsString + '%', []);

                  end;
                end;

              end;
            end
            else
            begin
              vlMensagemICM := ''; // StringReplace(qTomTof.Fields[0].AsString, '%?', itmicmcodigo.AsString + '%', []);
            end;
          end
          else
          begin
            vlMensagemICM := qTomTof.Fields[0].AsString;
          end;

          if pos('R$', vlMensagemICM) > 0 then
          begin
            spd.Close;
            spd.Open;

            if (spdspdaliquotasimples.AsString <> '') and (spdspdaliquotasimples.AsString <> '0') then
            begin

              icm.Close;
              icm.Open;

              if not icm.Locate('icmaliquotas', spdspdaliquotasimples.AsString, []) then
              begin

                if spdspdaliquotasimples.AsFloat <> 0 then
                begin

                  vlMensagemICM := StringReplace(vlMensagemICM, 'R$?',
                    'R$ ' + floattostr(RoundTo(vpmestotalbaseicm { mesmestotal.AsCurrency } * (spdspdaliquotasimples.AsFloat / 100), -2)), []);

                end;
              end;
            end
            else
            begin

              vlMensagemICM := StringReplace(vlMensagemICM, 'R$?',
                'R$ ' + floattostr(RoundTo(vpmestotalbaseicm { mesmestotal.AsCurrency } * (itmicmcodigo.AsFloat / 100), -2)), []);
            end;
          end
          else
          begin
            vlMensagemICM := vlMensagemICM;
          end;

          vInfComplGeral := vInfComplGeral + trim(vlMensagemICM) + ';';
        end
        else
        begin
          vInfComplGeral := vInfComplGeral + trim(qTomTof.Fields[0].AsString) + ';';
        end;
      end;
      qTomTof.Next;
    End;

    vInfComplTEF:='';

    dtl.First;
    while not dtl.Eof do
    begin

      rdc.close;
      rdc.ParamByName('dtlchave').AsInteger:=dtl.FieldByName('dtlchave').AsInteger;
      rdc.Open;

      if not rdc.IsEmpty then
      begin
        vInfComplTEF:=vInfComplTEF+'Cód. Transação TEF: '+rdc.FieldByName('rdcnrauto').AsString;
      end;

      dtl.Next;
    end;

    vInfComplGeral:=vInfComplGeral+#13+#10+'|;'+vInfComplTEF;


    (* Trata mensagem referente Carga Tributária *)
    if (vlTotTrib + vlTotTribEst) > 0 then
    begin
      vlMensagemCargaTrib := 'Trib. aprox. R$ ';
      vlMensagemCargaTrib := vlOBSRetencao + ' ' + vlMensagemCargaTrib + formatfloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal ';

      if vlTotTribEst > 0 then
        vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + formatfloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual ';

      vlMensagemCargaTrib := vlMensagemCargaTrib + ' Fonte: IBPT 5oi7eW;'
    end;

    (* Trata mensagem referente Redução de base se calculo *)
    { * REDUÇÃO DA BASE DE CALCULO A 58,33% CONFORME INCISO II DO ARTIGO 1 DO ANEXO V DO RICMS/MT * }

    vlMensagemReducaoBase := '';

    if vlReducoes.Count > 0 then
    begin
      for iReduz := 0 to vlReducoes.Count - 1 do
      begin

        vlMensagemReducaoBase := { vlMensagemReducaoBase + }
          StringReplace('REDUÇÃO DA BASE DE CALCULO A % CONFORME INCISO II DO ARTIGO 1 DO ANEXO V DO RICMS/MT', '%', vlReducoes[iReduz], []) + ' ';
      end;
    end;

    InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib +
      vlMensagemReducaoBase, toetoeidentificacao.AsString, '', [rfReplaceAll, rfIgnoreCase]);

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
    begin
      if ide.indPres = pcPresencial then
      begin
        if ide.indFinal = cfConsumidorFinal then
        begin

          consulta.Close;
          consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
          consulta.Open;
          ide.natOp := consulta.FieldByName('toeidentificacao').AsString;
          if etdtcbcodigo.AsInteger = 2 then
          begin

            if (cfgatvcodigo.AsInteger = atvrestaurante) then
            begin
              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual;
                Transp.modFrete := mfSemFrete;
              end
              else
              begin
                ide.idDest := doInterna;
              end;
            end
            else
            begin
              if ide.indPres = pcPresencial then
              begin
                if ide.indFinal = cfConsumidorFinal then
                begin

                  if mesmesretirabalcao.AsInteger = 0 then
                  begin
                    ide.idDest := doInterestadual;
                    // Transp.modFrete := mfSemFrete;

                  end
                  else
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual;
                      Transp.modFrete := mfSemFrete;
                    end
                    else
                    begin
                      if Emit.EnderEmit.UF <> Dest.EnderDest.UF then // fora do estado
                      begin

                        if (cfgatvcodigo.AsInteger = atvrestaurante) then
                        begin
                          ide.idDest := doInterna;
                          Transp.modFrete := mfSemFrete;
                        end
                        else
                        begin
                          if cfgcfgpresencialtoedestino.AsInteger = 1 then
                          begin
                            ide.idDest := doInterestadual
                          end
                          else
                          begin
                            ide.idDest := doInterna;
                            Transp.modFrete := mfSemFrete;
                          end;

                        end;
                      end
                      else
                      begin

                        ide.idDest := doInterna;
                        Transp.modFrete := mfSemFrete;

                      end;

                    end;
                  end;
                end
                else
                begin
                  ide.idDest := doInterestadual
                end;
              end
              else
              begin
                ide.idDest := doInterestadual
              end;
            end;

          end
          else
          begin
            if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
            begin
              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual;
                Transp.modFrete := mfSemFrete;
              end
              else
              begin
                ide.idDest := doInterna;
              end;
            end
            else
            begin

              if ide.indPres = pcPresencial then
              begin
                if ide.indFinal = cfConsumidorFinal then
                begin
                  if cfgcfgpresencialtoedestino.AsInteger = 1 then
                  begin
                    ide.idDest := doInterestadual;
                    Transp.modFrete := mfSemFrete;
                  end
                  else
                  begin
                    ide.idDest := doInterna;
                    Transp.modFrete := mfSemFrete;
                  end;
                end
                else
                begin
                  if cfgcfgpresencialtoedestino.AsInteger = 1 then
                  begin
                    ide.idDest := doInterestadual
                  end
                  else
                  begin
                    ide.idDest := doInterna;
                  end;

                end;
              end
              else
              begin

                ide.idDest := doInterestadual
              end;

            end;
          end;



        end;
      end;
    end;


    if (self.mesmesnumero.AsString <> '') and (self.mesmesnumero.AsString <> '0') and (mestemcodigo.AsInteger <> 3) then
      vNumeroNFe := self.mesmesnumero.AsInteger
    else
    begin
      NumeroNFe.Close;
      NumeroNFe.ParamByName('flacodigo').AsString := vpFilial;
      NumeroNFe.ExecSQL;
      vNumeroNFe := NumeroNFe.Fields[0].AsInteger;


    end;


    ide.nNF := vNumeroNFe;
    ide.cNF := GerarCodigoDFe(vNumeroNFe);

    (* A partir deste momento venda é considerada uma NF-e Pendente pois já possui número *)
    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    // try
    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET ';
    qconsulta.SQL.add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
    qconsulta.SQL.add('messerie = ' + IntToStr(ide.serie) + ', ');
    qconsulta.SQL.add('tdfcodigo = ''55'', ');
    qconsulta.SQL.add('temcodigo = 4 ');
    qconsulta.SQL.add('WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
    qconsulta.ExecSQL;
    // except

    // end;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;

  End;

   try

      ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;

      CheckBox3.Checked := True;


      // Assina e salva arquivo no Path definido
      ACBrNFeNotas.NotasFiscais.Assinar;

      CheckBox4.Checked := True;


      // Valida Arquivo
      ACBrNFeNotas.NotasFiscais.Validar;

      CheckBox5.Checked := True;


      vChaveNFe := Copy(ACBrNFeNotas.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);


      Except
      On E: Exception Do
      Begin

       if pos('<enderDest>', e.Message)>0 then
       begin
         Showmessage('ATENÇÃO '+#13+#13+
                     ' VERIFICAR ENDEREÇO DO CLIENTE,'+#13+
                     'CORRIGIR OS DADOS E GERAR A NOTA NOVAMENTE!');
                     exit;
       end;

      End;

   end;

   Try

   ACBrNFeNotas.Enviar(0, False, True, False);

   Except
     On E: Exception Do
     Begin


        if pos('duplicidade', lowercase(E.Message)) > 0 then
        begin

          vChaveNFe := Copy(lowercase(E.Message), pos('[', lowercase(E.Message)) - 1);

          vChaveNFe := Copy(vChaveNFe, 1,length(vChaveNFe) );
          vChaveNFe := Copy(vChaveNFe, 1, pos(']', lowercase(vChaveNFe)) - 1);

          vChaveNFe := SoNumeros(vChaveNFe);




          if fileexists(ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar+vChaveNFe+'-nfe.xml'  ) then
          begin
            ACBrNFeNotas.NotasFiscais.Clear;
            ACBrNFeNotas.NotasFiscais.LoadFromFile(ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar+vChaveNFe+'-nfe.xml' );

            vpArquivoNFe:=ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar+vChaveNFe+'-nfe.xml';

           if mConsultaNFe(False) then
            exit;

          end;



          consulta.Close;
          consulta.SQL.Text := 'UPDATE mes SET ';
          consulta.SQL.add('tdfcodigo = ' + QuotedStr('55') + ', ');
          consulta.SQL.add('refcodigo = 9, ');
          consulta.SQL.add('meschavenfe = ' + QuotedStr(vChaveNFe) + ' WHERE ');

          consulta.SQL.add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
          consulta.ExecSQL;


           if cfgcfgmodonfe.AsInteger = 2 then
           begin
            // ImprimeNFe;
            // GeraXML(taHomologacao)
           end
           else if cfgcfgmodonfe.AsInteger = 1 then
           begin
            // ImprimeNFe;
            // GeraXML(taProducao);
           end;

          CheckBox3.Checked := True;


            // Assina e salva arquivo no Path definido
          ACBrNFeNotas.NotasFiscais.Assinar;

          CheckBox4.Checked := True;


            // Valida Arquivo
          ACBrNFeNotas.NotasFiscais.Validar;

          CheckBox5.Checked := True;


          vChaveNFe := Copy(ACBrNFeNotas.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

          ACBrNFeNotas.Enviar(0, False, True, False);



        end
        else if pos('erro não catalogado', lowercase(E.Message)) > 0 then
        begin

          vlItem := E.Message;
          vlItem := Copy(E.Message, pos('[', E.Message) + 1, 20);
          vlItem := SoNumeros(vlItem);

          showmessage('A T E N Ç Ã O:' + #13 + #13 + 'Sefaz fora do ar.' + #13 + 'Tente novamente mais tarde!');
          exit

        end
        else if pos('Inativo ou Inoperante tente novamente', lowercase(E.Message)) > 0 then
        begin

          vlItem := E.Message;
          vlItem := Copy(E.Message, pos('[', E.Message) + 1, 20);
          vlItem := SoNumeros(vlItem);

          showmessage('A T E N Ç Ã O:' + #13 + #13 + 'Sefaz fora do ar.' + #13 + 'Tente novamente mais tarde!');
          exit

        end
        else if (pos('Rejeicao: Informado NCM inexistente', E.Message) > 0) then
        begin

          vlItem := Copy(E.Message, pos('[', E.Message) + 1, 20);
          vlItem := SoNumeros(vlItem);

          showmessage('A T E N Ç Ã O:' + #13 + #13 + 'O produto :' + #13 + #13 + ACBrNFeNotas.NotasFiscais.Items[0].NFe.Det.Items[StrToInt(vlItem) - 1]
          .Prod.xProd + ' esta com o NCM inválido!' + #13 + #13 + 'Por favor, ajustar no cadastro de Produtos');

          exit;
        end
        else if (pos('NCM) - Conteúdo inválido.', E.Message) > 0) then
        begin

          vlItem := Copy(E.Message, pos('<', E.Message) + 1, 20);
          vlItem := SoNumeros(vlItem);

          showmessage('A T E N Ç Ã O:' + #13 + #13 + 'O produto :' + #13 + #13 + ACBrNFeNotas.NotasFiscais.Items[0].NFe.Det.Items[StrToInt(vlItem) - 1]
          .Prod.xProd + ' esta com o NCM inválido!' + #13 + #13 + 'Por favor, ajustar no cadastro de Produtos');

          exit;

        end;

     End;

   End;

  vCStat := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.CStat;
  vXMotivo := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.xMotivo;

  CheckBox6.Checked := True;


  // Se código de status = 100 - Autorizado o uso da NF-e.
  If vCStat = 100 Then
  Begin

    if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
    begin
      ACBrNFeDANFEFR.MostraPreview := True;
      ACBrNFeDANFEFR.MostraSetup := True;
    end;

    ACBrNFeNotas.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';

    if not DirectoryExists(ACBrNFeDANFEFR.PathPDF) then
      ForceDirectories(ACBrNFeDANFEFR.PathPDF);

    ACBrNFeDANFEFR.Sistema := '(66)3544-2765 PÉGASUS Sistemas';
    ACBrNFeNotas.NotasFiscais.ImprimirPDF;

    vProtocoloNFe := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.nProt;
    vhrNFe := TimeToStr(ACBrNFeNotas.NotasFiscais.Items[0].NFe.ide.dEmi);

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET ';
    qconsulta.SQL.add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    // QuotedStr(ajustadata(mesmesregistro.AsString)) + ', ');
    qconsulta.SQL.add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
    qconsulta.SQL.add('tdfcodigo = ''55'', ');
    qconsulta.SQL.add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
    qconsulta.SQL.add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
    qconsulta.SQL.add('temcodigo = 5, ');
    qconsulta.SQL.add('meschavenfe = ' + QuotedStr(vChaveNFe) + ' WHERE ');
    qconsulta.SQL.add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
    qconsulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;

    // try
    vlNomeArquivoNFe := GeraNomeNFe(vpMesChave);

    if FileExists(vlNomeArquivoNFe) then
    begin
      {
      if (cfgcfgservarqnfes.AsString <> '127.0.0.1') and (pos('\', cfgcfgservarqnfes.AsString) = 0) then
      begin
        EnviaXMLServidor(cfgcfgservarqnfes.AsString, vlNomeArquivoNFe);
      end;
      }

      if not mes.Active then
      begin
        mes.Close;
        mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
        mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        mes.Open;
      end;

    end;
    // except
    // end;

    ACBrNFeNotas.NotasFiscais.Clear;

    sleep(500);

    mEmailNFe;

  End
  else if vCStat = 301 then
  begin


    // ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';

    if not DirectoryExists(ACBrNFeDANFEFR.PathPDF) then
      ForceDirectories(ACBrNFeDANFEFR.PathPDF);

    ACBrNFeNotas.NotasFiscais.ImprimirPDF;

    vProtocoloNFe := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.nProt;
    vhrNFe := TimeToStr(ACBrNFeNotas.NotasFiscais.Items[0].NFe.ide.dEmi);
    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET ';
    qconsulta.SQL.add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.add('mesdatanfe = ' + QuotedStr(ajustadata(mesmesregistro.AsString)) + ', ');
    qconsulta.SQL.add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
    qconsulta.SQL.add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
    qconsulta.SQL.add('tdfcodigo = ''55'', ');
    qconsulta.SQL.add('sdecodigo = ''04'', ');
    qconsulta.SQL.add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
    qconsulta.SQL.add('temcodigo = 5, ');
    qconsulta.SQL.add('meschavenfe = ' + QuotedStr(vChaveNFe) + ' WHERE ');
    qconsulta.SQL.add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
    qconsulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;

    // try
    vlNomeArquivoNFe := GeraNomeNFe(vpMesChave);

    if FileExists(vlNomeArquivoNFe) then
    begin
      {
      if (cfgcfgservarqnfes.AsString <> '127.0.0.1') and (pos('\', cfgcfgservarqnfes.AsString) = 0) then
      begin
        EnviaXMLServidor(cfgcfgservarqnfes.AsString, vlNomeArquivoNFe);
      end;
      }

      if not mes.Active then
      begin
        mes.Close;
        mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
        mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        mes.Open;
      end;

    end;
    // except
    // end;

    ACBrNFeNotas.NotasFiscais.Clear;

  end
  else
  begin
    Application.MessageBox(PChar('NF-e não Autorizada.' + #13 + #13 + 'Mensagem: ' + #13 + IntToStr(vCStat) + ' - ' + vXMotivo), 'Erro NF-e',
      MB_OK + MB_ICONWARNING);

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update mes set temcodigo=4 where meschave=' + vpMesChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;

  end;
  vpRetorno := '';

End;


Procedure Tfnfepdv.GeraXML(taModo: TpcnTipoAmbiente = taProducao);
Var
  it: Integer;
  vtBC: Double;

  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;
  vtipi: Double;
  vCST: String;

  vInfComplTEF,vInfComplGeral, vSeparadorGeral: String;
  vInfComplCF, vSeparadorCF: String;
  vInfComplNF, vSeparadorNF: String;
  vInfComplNFP, vSeparadorNFP: String;
  vInfComplNFe, vSeparadorNFe: String;

  vxdesc, vxtot, vxliq: Double;

  vAnoMesNFe: String;

  vTestaInscEst: String;

  vErro: String;
  vMsgRetorno: String;

  vNumeroNFe: Integer;
  vChaveNFe: String;
  vProtocoloNFe: String;

  (* CST e CSOSN *)
  vlCSTIcmsOK: Boolean;
  vlCSTIcms: TpcnCSTIcms;

  vlCSOSNIcmsOK: Boolean;
  vlCSOSNIcms: TpcnCSOSNIcms;

  (* Totais Carga Tributária *)
  vlTotTrib: Double;
  vlTotTribEst: Double;
  vlMensagemCargaTrib: String;

  (* Retornos da SEFAZ *)
  vCStat: Integer;
  vXMotivo: String;

  (* Utilizados para chamada do mvpr - Validação de Produtos *)
  // ValidaProdutos: TValidaProdutos;
  vPodeProdutos: Boolean;
  Pack: HModule;
  i: Integer;
  vlNomeArquivoNFCe: string;
  ok: Boolean;

  vHora: string;
  vDia: String;
  vltotpis: Double;
  vltotcofins: Double;
  vlTotalFrete: Double;
  vxser: Double;
  vlTotvFCP: Double;
  vlTotvFCPST: Double;

var
  s: String;
  iValue, iCode: Integer;

  vlMensagemICM: string;

Begin
  vlTotalFrete := 0;

  vlTotvFCP := 0;
  vlTotvFCPST := 0;

  vxdesc := 0;
  vxtot := 0;
  vxliq := 0;
  vltotpis := 0;
  vltotcofins := 0;
  vxser := 0;

  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  mes.Close;
  mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
  mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  mes.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;


  //
  // Carrega Operação e Entidade
  //

  toe.Close;
  toe.SQL.Text := 'SELECT ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao,cstnormal,cstcodigo FROM toe WHERE toecodigo = ' +
    mestoecodigo.AsString;
  toe.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  AjustaObservacoes;

  CheckBox1.Checked := True;


  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFeNotas.NotasFiscais.Clear;

  ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

  If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
  begin
    ACBrNFeDANFEFR.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
    ACBrNFeDANFEFR.ExpandeLogoMarca := True;
  end;

  Try

    With ACBrNFeNotas.NotasFiscais.add.NFe Do
    Begin

      ide.indIntermed := iiSemOperacao;

      infRespTec.CNPJ := '14477548000131';
      infRespTec.email := 'Mizio@Miziosisemas.com.br';
      infRespTec.xContato := 'Mizio Sistemas';
      infRespTec.fone := '6635442765';

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      ide.natOp := toetoeidentificacao.AsString;

      case mestfpcodigo.AsInteger of
        0:
          ide.indPag := ipVista;
        1:
          ide.indPag := ipPrazo;
        9:
          ide.indPag := ipOutras;
      else
        ide.indPag := ipOutras;
      end;

      vHora := agora(Application, zcone);
      vDia := hoje(Application, zcone);

      fnfepdv.vpDataAtual := strtodatetime(formatdatetime('dd/mm/yyyy', strtodate(vDia)) + ' ' + formatdatetime('hh:mm:ss', strtodatetime(vHora)));

      ide.modelo := 55;
      ide.serie := cfgcfgserienfe.AsInteger;

      // Ide.cNF -> Número da NFe definido por último.
      ide.dEmi := vpDataAtual;
      ide.dSaiEnt := strtodatetime(agora(Application, zcone));

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if not etd.Active then
        begin
          etd.Close;
          etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
          etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
          etd.Open;

        end;

        if etdtcbcodigo.AsInteger = 2 then
        begin
          if (cfgatvcodigo.AsInteger = atvrestaurante) then
          begin
            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              ide.idDest := doInterestadual;
              Transp.modFrete := mfSemFrete;
            end
            else
            begin
              ide.idDest := doInterna;
            end;
          end
          else
          begin
            if ide.indPres = pcPresencial then
            begin
              if ide.indFinal = cfConsumidorFinal then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                  Transp.modFrete := mfSemFrete;
                end;
              end
              else
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual
                end
                else
                begin
                  ide.idDest := doInterna;
                end;

              end;
            end
            else
            begin
              ide.idDest := doInterestadual
            end;
          end;

        end
        else
        begin
          if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
          begin
            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              ide.idDest := doInterestadual;
              Transp.modFrete := mfSemFrete;
            end
            else
            begin
              ide.idDest := doInterna;
            end;
          end
          else
          begin
            if ide.indPres = pcPresencial then
            begin
              if ide.indFinal = cfConsumidorFinal then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                  Transp.modFrete := mfSemFrete;
                end;
              end
              else
              begin
                ide.idDest := doInterestadual
              end;
            end
            else
            begin
              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                ide.idDest := doInterestadual
              end
              else
              begin
                ide.idDest := doInterna;
              end;

            end;
          end;

        end;
      end
      else
      begin
        ide.idDest := doInterna;
      end;

      case toettecodigo.AsInteger of
        0:
          ide.tpNF := tnEntrada;
        1:
          ide.tpNF := tnSaida;
      end;

      ide.tpImp := tiRetrato;
      ide.tpEmis := teNormal;

      (* Finalidade da NFe *)
      case toettocodigo.AsInteger of
        ttoCompra, ttoVenda, ttoRemessaRetorno:
          ide.finNFe := fnNormal;
        ttoDevolucao:
          ide.finNFe := fnDevolucao;
        ttoAjuste:
          ide.finNFe := fnAjuste;
        ttoComplemento:
          ide.finNFe := fnComplementar;
      end;

      if mesmespararevenda.AsInteger = 1 then
      begin
        ide.indFinal := cfNao;
      end
      else
      begin
        ide.indFinal := cfConsumidorFinal;
      end;

      if mesoricodigo.AsInteger=3 then  // delivery entrega
      begin
        ide.indPres:= pcTeleatendimento;
        ide.indIntermed:=iiOperacaoSemIntermediador;
      end
      else if (mesoricodigo.AsInteger=7) or (mesoricodigo.AsInteger=8)  then  // nuc ou aiqfome
      begin

        ide.indPres:= pcTeleatendimento;
        ide.indIntermed:=iiOperacaoComIntermediador;


        with infIntermed do
        begin

         ori.close;
         ori.ParamByName('oricodigo').AsInteger:=mesoricodigo.AsInteger;
         ori.Open;

         infIntermed.CNPJ:=SoNumeros(orietddoc1.AsString);
         infIntermed.idCadIntTran:=orioriidentificacao.AsString;

        end;

      end
      else    // presencial no salão
      begin
        ide.indPres := pcPresencial;
        ide.indIntermed := iiSemOperacao;
      end;


      ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
      begin
        ide.tpAmb := taModo;
      end
      else
      begin
        ide.tpAmb := taHomologacao;
      end;

      ide.verProc := '21.25.300.1';

      ctd.Close;
      ctd.Connection := zcone;
      ctd.Open;

      if not ctd.IsEmpty then
      begin
        if (ctdctdcnpj.AsString <> '') and (ctdctdcnpj.AsString <> '0') then
        begin
          try
            if strtofloat(SoNumeros(ctdctdcnpj.AsString)) > 0 then
            begin
              autXML.add.CNPJCPF := SoNumeros(ctdctdcnpj.AsString);
            end;
          except

          end;
        end;
      end;
      (*
        *
        ****** Grupo de Informações de Documentos Referenciados
        *
      *)
      vInfComplCF := '';
      vSeparadorCF := '';

      vInfComplNF := '';
      vSeparadorNF := '';
      vInfComplNFP := '';
      vSeparadorNFP := '';
      vInfComplNFe := '';
      vSeparadorNFe := '';

      dfr.Close;
      dfr.Params[0].AsString := vpMesChave;
      dfr.Open;

      (* Documento Fiscal Referenciado *)
      while not dfr.Eof do
      begin
        with ide.NFref.add do
        begin
          (* Nota Fiscal Modelo 1/1a *)
          if dfrtdfcodigo.AsString = tdfNotaFiscal then
            with RefNF do
            begin
              cUF := dfrufscodigo.AsInteger;
              AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
              CNPJ := SomenteNumeros(dfretddoc1.AsString);
              modelo := dfrtdfcodigo.AsInteger;
              // serie := dfrdfrserie.AsInteger;
              serie := cfgcfgserienfe.AsInteger;
              nNF := dfrdfrnumero.AsInteger;

              if vInfComplNF = '' then
                vInfComplNF := 'Nota Fiscal referenciada: ';

              vInfComplNF := vInfComplNF + vSeparadorNF + dfrdfrnumero.AsString;
              vSeparadorNF := ', ';
            end;

          (* Nota Fiscal de Produtor Rural *)
          if dfrtdfcodigo.AsString = tdfNotaFiscalDeProdutor then
            with RefNFP do
            begin
              cUF := dfrufscodigo.AsInteger;
              AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
              CNPJCPF := SomenteNumeros(dfretddoc1.AsString);
              IE := SomenteNumeros(dfredrinscest.AsString);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              modelo := dfrtdfcodigo.AsString;
              // serie := dfrdfrserie.AsInteger;
              serie := cfgcfgserienfe.AsInteger;
              nNF := dfrdfrnumero.AsInteger;

              if vInfComplNFP = '' then
                vInfComplNFP := 'Nota Fiscal de Produtor referenciada: ';

              vInfComplNFP := vInfComplNFP + vSeparadorNFP + dfrdfrnumero.AsString;
              vSeparadorNFP := ', ';
            end;

          (* Nota Fiscal Eletrônica - NFe *)
          if dfrtdfcodigo.AsString = tdfNotaFiscalEletronica then
          begin
            refNFe := dfrdfrchavenfe.AsString;

            if vInfComplNFe = '' then
              vInfComplNFe := 'NF-e referenciada: ';

            vInfComplNFe := vInfComplNFe + vSeparadorNFe + dfrdfrchavenfe.AsString;
            vSeparadorNFe := ', ';
          end;
        end;

        dfr.Next;
      end;

      if vInfComplNF <> '' then
        vInfComplNF := vInfComplNF + ';';

      if vInfComplNFP <> '' then
        vInfComplNFP := vInfComplNFP + ';';

      if vInfComplNFe <> '' then
        vInfComplNFe := vInfComplNFe + ';';

      if vInfComplCF <> '' then
        vInfComplCF := vInfComplCF + ';';

      (*
        *
        ****** Emitente da NFe - EMIT ********
        *
      *)

      Emit.CNPJCPF := SomenteNumeros(cfgetddoc1.AsString);
      Emit.IE := SomenteNumeros(cfgedrinscest.AsString);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      Emit.xNome := cfgetdidentificacao.AsString;
      Emit.xFant := cfgetdapelido.AsString;
      Emit.EnderEmit.fone := cfgetftelefone.AsString;
      Emit.EnderEmit.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString));
      Emit.EnderEmit.xLgr := cfgedrrua.AsString;
      Emit.EnderEmit.nro := cfgedrnumero.AsString;
      Emit.EnderEmit.xCpl := '';
      Emit.EnderEmit.xBairro := cfgedrbairro.AsString;
      Emit.EnderEmit.cMun := cfgcddcodigo.AsInteger;
      Emit.EnderEmit.xMun := cfgcddnome.AsString;
      Emit.EnderEmit.UF := UpperCase(cfgufssigla.AsString);
      Emit.EnderEmit.cPais := 1058;

      if trim(mesmesfilialpedido.AsString) <> '' then
      begin
        Emit.EnderEmit.xCpl := mesmesfilialpedido.AsString;
      end;

      Emit.EnderEmit.xPais := 'BRASIL';

      case cfgcrtcodigo.AsInteger of
        1:
          Emit.CRT := crtSimplesNacional;
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      (*
        *
        ********* Destinatário da NFe **********
        *
      *)

      Dest.CNPJCPF := SomenteNumeros(self.etdetddoc1.AsString);
      if etdedrcep.AsString = '' then
        Dest.EnderDest.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString))
      else
        Dest.EnderDest.CEP := StrToInt(SomenteNumeros(etdedrcep.AsString));

      Dest.EnderDest.xLgr := etdedrrua.AsString;
      Dest.EnderDest.nro := etdedrnumero.AsString;
      Dest.EnderDest.xCpl := '';
      Dest.EnderDest.xBairro := etdedrbairro.AsString;

      if etdcddcodigo.AsString = '' then
        Dest.EnderDest.cMun := cfgcddcodigo.AsInteger
      else
        Dest.EnderDest.cMun := etdcddcodigo.AsInteger;

      if etdcddnome.AsString = '' then
        Dest.EnderDest.xMun := cfgcddnome.AsString
      else
        Dest.EnderDest.xMun := etdcddnome.AsString;

      if etdufssigla.AsString = '' then
        Dest.EnderDest.UF := UpperCase(cfgufssigla.AsString)
      else
        Dest.EnderDest.UF := UpperCase(etdufssigla.AsString);
      Dest.EnderDest.fone := etdetftelefone.AsString;

      (* Valida Inscrição Estadual do Destinatário *)
      try
        vTestaInscEst := trim(SomenteNumeros(etdedrinscest.AsString));

        if vTestaInscEst = '00000000000' then
          vTestaInscEst := '';

        strtofloat(vTestaInscEst);

        ACBrValidador1.TipoDocto := docInscEst;
        ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
        ACBrValidador1.Documento := vTestaInscEst;

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 +
            'Corrija no cadastro do destinatário e tente novamente.'), 'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
          vTestaInscEst := '';
          exit;
        end;

        if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 14 then
          ACBrValidador1.TipoDocto := docCNPJ;

        if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 11 then
          ACBrValidador1.TipoDocto := docCPF;

        ACBrValidador1.Documento := SomenteNumeros(self.etdetddoc1.AsString);

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 +
            'Corrija no cadastro do destinatário e tente novamente.'), 'CNPJ ou CPF Inválido', MB_OK + MB_ICONERROR);

          exit;
        end;

      except
        vTestaInscEst := '';
      end;

      if vTestaInscEst <> '' then
      begin
        Dest.IE := vTestaInscEst;
        Dest.indIEDest := inContribuinte;
      end
      else
      begin
        Dest.IE := '';
        Dest.indIEDest := inNaoContribuinte;
      end;
      if etdedrrazaofazenda.AsString <> '' then
        Dest.xNome := etdedrrazaofazenda.AsString
      else
        Dest.xNome := etdetdidentificacao.AsString;

      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';

      (*
        *
        ********* Detalhamento de Produtos e Serviços - DET ***********
        *
      *)

      itm.Refresh;

      itm.IndexFieldNames := 'itmchave';
      itm.First;
      it := 1;

      vtBC := 0;
      vtICMS := 0;
      vtBCST := 0;
      vtICMSST := 0;

      vlTotTrib := 0;
      vlTotTribEst := 0;
      vlMensagemCargaTrib := '';

      VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if ide.indPres = pcPresencial then
        begin

          { if Dest.indIEDest = inContribuinte then
            begin
            VerifieAjustaItemcomConsumidorFinal(True);
            end
            else
            begin }
          VerifieAjustaItemcomConsumidorFinal(False);
          { end; }

        end;
      end;

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      itm.First;

      While Not itm.Eof Do
      Begin
        With Det.add Do
        Begin

          infAdProd := itmitmdesccomple.AsString;
          Prod.nItem := it;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);

          Prod.CFOP := itmcfocfop.AsString; // '5101';

          
          Prod.cProd := self.itmprocodigo.AsString; // '67';

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(trim(itmpronome.AsString), '%', '');

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(trim(itmpronomereduzido.AsString), '%', '');

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := trim(Copy(Prod.xProd, 2, 300));

          Prod.qCom := self.itmitmquantidade.AsFloat;
          Prod.uCom := self.itmunisimbolo.AsString; // 'KG';
          Prod.vProd := TBRound(self.itmitmquantidade.AsFloat * self.itmitmvalor.AsFloat, 2);
          Prod.vUnCom := self.itmitmvalor.AsFloat; // 10;

          Prod.vDesc := self.itmitmdesconto.AsFloat;

          Prod.qTrib := self.itmpunqtdtribtotal.AsFloat;
          Prod.uTrib := self.itmunisimbolotrib.AsString;
          Prod.vUnTrib := Prod.vProd / Prod.qTrib; // 10;
          Prod.vOutro := self.itmitmoutras.AsFloat;

          // inclui dados do pedido
          if (mesmesnumeropedido.AsString <> '') and (itmitmitempedido.AsString <> '') then
          begin
            Prod.xPed := mesmesnumeropedido.AsString;

            s := itmitmitempedido.AsString;

            val(s, iValue, iCode);

            if iCode = 0 then
            begin
              Prod.nItemPed := formatfloat('000000', itmitmitempedido.AsInteger);
            end
            else
            begin
              Prod.nItemPed := itmitmitempedido.AsString;
            end;

          end;

          vxdesc := vxdesc + Prod.vDesc; // acumula o valor do desconto
          vxtot := vxtot + Prod.vProd; // acumula o valor total do item
          vxliq := vxliq + (vxtot - vxdesc); // acumula o valor liquido da nota

          if itmtpocodigo.AsInteger = 99 then
            Prod.CEST := '01.999.00';

          if itmtcecest.AsString <> '' then
          begin

            Prod.CEST := itmtcecest.AsString;

          end;

          With Imposto Do
          Begin

            (* Se for operação de Venda define o total de carga tributária por item *)
            if toettocodigo.AsInteger = ttoVenda then
            begin
              Imposto.vTotTrib := itmitmcargatrib.AsFloat + itmitmcargatribest.AsFloat;

              (* Acumula totais de carga tributária por ente Federal e Estadual *)
              vlTotTrib := vlTotTrib + itmitmcargatrib.AsFloat;
              vlTotTribEst := vlTotTribEst + itmitmcargatribest.AsFloat;
            end;

            case mesrefcodigo.AsInteger of
              1:
                begin
                  Prod.vFrete := itmitmfrete.AsCurrency;
                  vlTotalFrete := vlTotalFrete + itmitmfrete.AsCurrency;
                end;
              9:
                Total.ICMSTot.vFrete := 0;
            end;

            With ICMS Do
            Begin

              // ICMS.orig:=TpcnOrigemMercadoria.oeEstrangeiraAdquiridaBrasil;
              case Emit.CRT of
                (* CSOSN *)
                crtSimplesNacional:
                  begin

                    vCST := self.itmcstcodigo.AsString;

                    vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                    if vlCSOSNIcmsOK then
                      CSOSN := vlCSOSNIcms

                  end;

                (* CST *)
                crtRegimeNormal, crtSimplesExcessoReceita:
                  begin

                    vCST := Copy(self.itmcstcodigo.AsString, 2, 2);

                    if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                    end
                    else
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, vCST);

                    end;

                    if vlCSTIcmsOK then
                      CST := vlCSTIcms;
                  end;
              end;

              // (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90,cstPart10,cstPart90,cstRep41,cstVazio);
              ICMS.modBC := dbiValorOperacao;
              If (lowercase(self.itmicmcodigo.AsString) = 'ff') Or (lowercase(self.itmicmcodigo.AsString) = 'ii') Or
                (lowercase(self.itmicmcodigo.AsString) = 'nn') Then
              Begin
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.vBC := 0;
              End
              Else
              Begin
                If (self.itmitmicm.AsFloat = 0.01) or (self.itmitmicm.AsFloat = 0) Then
                Begin
                  ICMS.pICMS := 0;
                  ICMS.vICMS := 0;
                  ICMS.vBC := 0;
                End
                Else
                Begin
                  ICMS.pICMS := self.itmicmaliquotas.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.AsCurrency;
                  ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;

                  if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn400) then
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := itmitmmva.AsFloat;
                      ICMS.vBCST := itmitmbicms.AsFloat;
                      ICMS.pICMSST := itmitmaliqicms.AsFloat;
                      ICMS.vICMSST := itmitmicms.AsFloat;
                    end;
                  end
                  else
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := itmitmmva.AsFloat;
                      ICMS.vBCST := itmitmbicms.AsFloat;
                      ICMS.pICMSST := itmitmaliqicms.AsFloat;
                      ICMS.vICMSST := itmitmicms.AsFloat;
                    end;
                  end;
                End;
              End;

              vtICMS := vtICMS + ICMS.vICMS;
              vtBC := vtBC + ICMS.vBC;

              vtICMSST := vtICMSST + ICMS.vICMSST;
              vtBCST := vtBCST + ICMS.vBCST;
              if cfgcrtcodigo.AsInteger <> 1 then
              begin

                if (itmitmbasefcpicm.AsString <> '') and (itmitmbasefcpicm.AsString <> '0') then
                begin
                  vBCFCP := itmitmbasefcpicm.AsFloat;
                  pFCP := itmitmpercfcpicm.AsFloat;
                  vFCP := itmitmvalofcpicm.AsFloat;
                  vlTotvFCP := vlTotvFCP + itmitmvalofcpicm.AsFloat;
                end;

                if (itmitmbasefcpicmst.AsString <> '') and (itmitmbasefcpicmst.AsString <> '0') then
                begin
                  vBCFCPST := itmitmbasefcpicmst.AsFloat;
                  pFCPST := itmitmpercfcpicmst.AsFloat;
                  vFCPST := itmitmvalofcpicmst.AsFloat;
                  vlTotvFCPST := vlTotvFCPST + itmitmvalofcpicmst.AsFloat;
                end;
              end;

              if mesmespararevenda.AsInteger = 1 then
              begin
                if itmcstcodigo.AsString = '101' then
                begin
                  vpmestotalbaseicm := vpmestotalbaseicm + ((itmitmvalor.AsFloat * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency);
                end;

              end;

            End;

            if itmproanpcodigo.AsString = '' then
            begin

              If self.itmitmaliqipi.AsFloat <> 0 Then
              Begin
                ipi.vIPI := itmitmipi.AsCurrency;
                ipi.vBC := itmitmbipi.AsCurrency;
                ipi.pIPI := self.itmitmaliqipi.AsFloat;

                ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
                // ipi.CST := ipi50;
                vtipi := vtipi + ipi.vIPI;
              End
              Else
              Begin
                ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
                // ipi.CST := ipi01;
              End;
            end;

            if itmcspcodigo.AsString = '' then
            begin
              pis.CST := StrToCSTPIS(ok, formatfloat('00', 99));
            end
            else
            begin
              pis.CST := StrToCSTPIS(ok, formatfloat('00', itmcspcodigo.AsInteger));
            end;

            if itmcsfcodigo.AsString = '' then
            BEGIN
              COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', 99));
            END
            else
            begin
              COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', itmcsfcodigo.AsInteger));
            end;

            if cfgcrtcodigo.AsInteger = 3 then // não é simples nem mei
            begin
              if itmitmaliqpis.AsFloat <> 0 then
              begin
                pis.pPIS := itmitmaliqpis.AsFloat;
                pis.vBC := itmitmbpis.AsCurrency;
                pis.vPIS := itmitmpis.AsFloat;
                vltotpis := vltotpis + pis.vPIS;

              end;

              if itmitmaliqcofins.AsFloat <> 0 then
              begin
                COFINS.pCOFINS := itmitmaliqcofins.AsFloat;
                COFINS.vBC := itmitmbcofins.AsCurrency;
                COFINS.vCOFINS := itmitmcofins.AsFloat;
                vltotcofins := vltotcofins + COFINS.vCOFINS;
              end;

            end;

            { if cfgcfgcstpis.AsString <> '' then
              begin
              pis.CST := StrToCSTPIS(ok, cfgcfgcstpis.AsString);
              end;

              if cfgcfgcstcofins.AsString <> '' then
              begin
              COFINS.CST := StrToCSTCOFINS(ok, cfgcfgcstcofins.AsString);
              end; }

          End;
          it := it + 1;
        End;
        itm.Next;
      End;

      (*
        *
        ******** Informações do Transporte da NF-e - TRANSP ********
        *
      *)

      // Responsavel pelo Frete 0- Por conta do emitente; 1- Por conta do destinatário/remetente;2- Por conta de terceiros;9- Sem cobrança de frete
      case mesrefcodigo.AsInteger of
        0:
          Transp.modFrete := mfContaEmitente;
        1:
          Transp.modFrete := mfContaDestinatario;
        2:
          Transp.modFrete := mfContaTerceiros;
        9:
          Transp.modFrete := mfSemFrete;
      end;

      if (ide.indPres = pcPresencial) and (ide.indFinal = cfConsumidorFinal) then
      begin
        Transp.modFrete := mfSemFrete;
      end;

      dtm.Close;
      dtm.ParamByName('meschave').AsString := vpMesChave;
      dtm.Open;

      if Transp.modFrete <> mfSemFrete then
      begin

        If dtm.RecordCount = 1 Then
        Begin

          If dtmetdcodigo.AsInteger <> mesetdcodigo.AsInteger Then
          Begin
            Transp.Transporta.xNome := dtmetdidentificacao.AsString;
            Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
            Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            Transp.Transporta.xEnder := dtmedrrua.AsString;
            Transp.Transporta.xMun := dtmcddnome.AsString;
            Transp.Transporta.UF := dtmufssigla.AsString;

            // Transp.veicTransp.placa := dtmdtmplaca.AsString;
            // Transp.veicTransp.UF := dtmufssigla.AsString;

            if Emit.EnderEmit.UF <> Dest.EnderDest.UF then // fora do estado
            begin

              Transp.Transporta.xNome := dtmetdidentificacao.AsString;
              Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
              Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

              if Copy(Transp.Transporta.IE, 1, 1) = '0' then
                Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

              if Copy(Transp.Transporta.IE, 1, 1) = '0' then
                Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

              if Copy(Transp.Transporta.IE, 1, 1) = '0' then
                Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

              if Copy(Transp.Transporta.IE, 1, 1) = '0' then
                Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

              Transp.Transporta.xEnder := dtmedrrua.AsString;
              Transp.Transporta.xMun := dtmcddnome.AsString;
              Transp.Transporta.UF := dtmufssigla.AsString;

              // Transp.veicTransp.placa := dtmdtmplaca.AsString;
              // Transp.veicTransp.UF := dtmufssigla.AsString;

              Transp.Vol.add;
              Transp.Vol.Items[0].qVol := dtmdtmvolumes.AsInteger;
              Transp.Vol.Items[0].esp := dtmdtmespecie.AsString;
              Transp.Vol.Items[0].marca := dtmdtmmarcas.AsString;
              Transp.Vol.Items[0].pesoB := dtmdtmpesobruto.AsFloat;
              Transp.Vol.Items[0].pesoL := dtmdtmpesoliq.AsFloat;
            end;

          End;

          Transp.Vol.add;
          Transp.Vol.Items[0].qVol := dtmdtmvolumes.AsInteger;
          Transp.Vol.Items[0].esp := dtmdtmespecie.AsString;
          Transp.Vol.Items[0].marca := dtmdtmmarcas.AsString;
          Transp.Vol.Items[0].pesoB := dtmdtmpesobruto.AsFloat;
          Transp.Vol.Items[0].pesoL := dtmdtmpesoliq.AsFloat;
        End
        Else
        Begin
          Transp.Transporta.xNome := '';
          Transp.Transporta.CNPJCPF := '';
          Transp.Transporta.IE := '';
          Transp.Transporta.xEnder := '';
          Transp.Transporta.xMun := '';
          Transp.Transporta.UF := '';

          Transp.Vol.add;
          Transp.Vol.Items[0].qVol := 1;
          Transp.Vol.Items[0].esp := '';
          Transp.Vol.Items[0].marca := '';
          Transp.Vol.Items[0].pesoB := 0;
          Transp.Vol.Items[0].pesoL := 0;
        End;

      end
      else
      begin
        Transp.Transporta.xNome := '';
        Transp.Transporta.CNPJCPF := '';
        Transp.Transporta.IE := '';
        Transp.Transporta.xEnder := '';
        Transp.Transporta.xMun := '';
        Transp.Transporta.UF := '';

        Transp.Vol.add;
        Transp.Vol.Items[0].qVol := 1;
        Transp.Vol.Items[0].esp := '';
        Transp.Vol.Items[0].marca := '';
        Transp.Vol.Items[0].pesoB := 0;
        Transp.Vol.Items[0].pesoL := 0;

      end;
      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vIPI := vtipi;
      Total.ICMSTot.vBC := vtBC;

      Total.ICMSTot.vICMS := RoundTo(vtICMS, -2);
      // 180;
      Total.ICMSTot.vBCST := vtBCST;
      Total.ICMSTot.vST := RoundTo(vtICMSST, -2);

      consulta.Close;
      consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
      consulta.Open;

      if consulta.FieldByName('messervicos').AsFloat > 0 then
      begin

        if cfgcfgdescontonoservico.AsInteger = 1 then
        begin
          { vxser := consulta.FieldByName('messervicos').AsFloat -
            (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos').AsFloat +
            consulta.FieldByName('messervicos').AsFloat))); }
          vxser := consulta.FieldByName('messervicos').AsFloat;

        end
        else
        begin
          vxser := consulta.FieldByName('messervicos').AsFloat;

        end;
      end
      else
      begin
        vxser := 0;
      end;

      if vxser > 0 then
        Total.ICMSTot.vNF := mesmestotal.AsCurrency - vxser
      else
        Total.ICMSTot.vNF := mesmestotal.AsCurrency;

      Total.ICMSTot.vProd := RoundTo(vxtot, -2);
      Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
      Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;
      if cfgcrtcodigo.AsInteger <> 1 then
      begin

        Total.ICMSTot.vFCP := vlTotvFCP;
        Total.ICMSTot.vFCPST := vlTotvFCPST;
      end;

      case mesrefcodigo.AsInteger of
        1:
          Total.ICMSTot.vFrete := mesmesfrete.AsCurrency;
        9:
          Total.ICMSTot.vFrete := 0;
      end;

      // Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro), -2);

      qTomTof.Close;
      qTomTof.SQL.Text := 'SELECT tofidentificacao FROM tom, tof WHERE ';
      qTomTof.SQL.add('tom.tofcodigo = tof.tofcodigo AND ');
      qTomTof.SQL.add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
      qTomTof.SQL.add('tom.meschave = ' + vpMesChave + ' ');
      qTomTof.SQL.add('ORDER BY tof.tofcodigo');
      qTomTof.Open;

      vInfComplGeral := '';

      while not qTomTof.Eof do
      begin

        if pos('%?', qTomTof.Fields[0].AsString) > 0 then
        begin
          vlMensagemICM := StringReplace(qTomTof.Fields[0].AsString, '%?', itmicmcodigo.AsString + '%', []);

          vlMensagemICM := StringReplace(vlMensagemICM, 'R$?',
            'R$ ' + floattostr(RoundTo(vpmestotalbaseicm { mesmestotal.AsCurrency } * (itmicmcodigo.AsFloat / 100), -2)), []);

          vInfComplGeral := vInfComplGeral + trim(vlMensagemICM) + ';';
        end
        else
        begin
          vInfComplGeral := vInfComplGeral + trim(qTomTof.Fields[0].AsString) + ';';
        end;

        qTomTof.Next;
      end;

      vInfComplTEF:='';

      dtl.First;
      while not dtl.Eof do
      begin

        rdc.close;
        rdc.ParamByName('dtlchave').AsInteger:=dtl.FieldByName('dtlchave').AsInteger;
        rdc.Open;

        if not rdc.IsEmpty then
        begin
          vInfComplTEF:=vInfComplTEF+'Cód. Transação TEF: '+rdc.FieldByName('rdcnrauto').AsString;
        end;

        dtl.Next;
      end;

    vInfComplGeral:=vInfComplGeral+#13+#10+'|;'+vInfComplTEF;


      (* Trata mensagem referente Carga Tributária *)
      if (vlTotTrib + vlTotTribEst) > 0 then
      begin
        vlMensagemCargaTrib := 'Trib. aprox. R$ ';
        vlMensagemCargaTrib := vlMensagemCargaTrib + formatfloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal ';

        if vlTotTribEst > 0 then
          vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + formatfloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual ';

        vlMensagemCargaTrib := vlMensagemCargaTrib + ' Fonte: IBPT 5oi7eW;'
      end;

      // InfAdic.infCpl := vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib;

      InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib,
        toetoeidentificacao.AsString, '', [rfReplaceAll, rfIgnoreCase]);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if ide.indPres = pcPresencial then
        begin
          if ide.indFinal = cfConsumidorFinal then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
            consulta.Open;
            ide.natOp := consulta.FieldByName('toeidentificacao').AsString;

            if etdtcbcodigo.AsInteger = 2 then
            begin
              if (cfgatvcodigo.AsInteger = atvrestaurante) then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                end;
              end
              else
              begin
                if ide.indPres = pcPresencial then
                begin
                  if ide.indFinal = cfConsumidorFinal then
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual;
                      Transp.modFrete := mfSemFrete;
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                      Transp.modFrete := mfSemFrete;
                    end;
                  end
                  else
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                    end;
                  end;
                end
                else
                begin
                  ide.idDest := doInterestadual
                end;
              end;

            end
            else
            begin
              if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                end;
              end
              else
              begin
                ide.idDest := doInterestadual;
              end;

            end;

            // InfAdic.infCpl := InfAdic.infCpl + ' ' + '"ICMS recolhido anteriormente por estimativa simplificada - Operação Presencial/Venda no Balcão”';

          end;
        end;
      end;

      (*
        *
        ********* Identifica o Número da NF-e **********
        *
      *)

      if (self.mesmesnumero.AsString <> '') and (self.mesmesnumero.AsString <> '0') and (self.mestemcodigo.AsInteger <> 3) then
        vNumeroNFe := self.mesmesnumero.AsInteger
      else
      begin

        { qConsulta.Close;
          qConsulta.SQL.Text := 'select cfgnumeronfe from cfgmnfe where cfgcodigo=1';
          qConsulta.Open;

          vNumeroNFe := qConsulta.FieldByName('cfgnumeronfe').AsInteger + 1; }

        NumeroNFe.ParamByName('flacodigo').AsString := vpFilial;
        NumeroNFe.ExecSQL;
        vNumeroNFe := NumeroNFe.Fields[0].AsInteger;

      end;
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET mesnumero = ' + IntToStr(vNumeroNFe) + ' WHERE meschave = ' + vpMesChave + ' and flacodigo=' +
        Acesso.Filial.ToString;
      qconsulta.ExecSQL;
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

      cfg.Close;
      cfg.ParamByName('flacodigo').AsString := vpFilial;
      cfg.Open;

      if vNumeroNFe > cfgcfgnumeronfe.AsInteger then
      begin
        { qConsulta.Close;
          qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=1';
          qConsulta.ExecSQL;

          qConsulta.Close;
          qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=' + Acesso.Filial.ToString;
          qConsulta.ExecSQL; }

      end;

      ide.nNF := vNumeroNFe;
      ide.cNF := GerarCodigoDFe(vNumeroNFe);

      (* A partir deste momento venda é considerada uma NF-e Pendente pois já possui número *)

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET ';
      qconsulta.SQL.add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
      qconsulta.SQL.add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
      qconsulta.SQL.add('tdfcodigo = ''55'', ');
      qconsulta.SQL.add('temcodigo = 4 ');
      qconsulta.SQL.add('WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
      qconsulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

    End;
  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro preenchimento dos dados da NF-e.' + #13 + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'),
        'Erro Preenchimento NF-e', MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
      exit;
    End;
  End;

  try
    // Gera Arquivo da NF-e e mantém memória
    ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;

    ACBrNFeNotas.NotasFiscais.GerarNFe;

    vChaveNFe := Copy(ACBrNFeNotas.NotasFiscais.Items[0].NFe.infnfe.ID, 4, 44);
    ACBrNFeNotas.NotasFiscais.Items[0].GravarXML(vChaveNFe + '-nfe.xml', ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar);

    CheckBox3.Checked := True;

    // Assina e salva arquivo no Path definido
    try
      ACBrNFeNotas.NotasFiscais.Assinar;
    except

    end;

    CheckBox4.Checked := True;

    CheckBox5.Checked := True;

  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro na geração da NF-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'),
        'Erro Geração NF-e', MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      exit;
    End;
  end;

  vpRetorno := '';

End;

Procedure Tfnfepdv.ReGeraXML(taModo: TpcnTipoAmbiente = taProducao);
Var
  it: Integer;
  vtBC: Double;

  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;
  vtipi: Double;
  vCST: String;

  vInfComplTEF, vInfComplGeral, vSeparadorGeral: String;
  vInfComplCF, vSeparadorCF: String;
  vInfComplNF, vSeparadorNF: String;
  vInfComplNFP, vSeparadorNFP: String;
  vInfComplNFe, vSeparadorNFe: String;

  vxdesc, vxtot, vxliq: Double;

  vAnoMesNFe: String;

  vTestaInscEst: String;

  vErro: String;
  vMsgRetorno: String;

  vNumeroNFe: Integer;
  vChaveNFe: String;
  vProtocoloNFe: String;

  (* CST e CSOSN *)
  vlCSTIcmsOK: Boolean;
  vlCSTIcms: TpcnCSTIcms;

  vlCSOSNIcmsOK: Boolean;
  vlCSOSNIcms: TpcnCSOSNIcms;

  (* Totais Carga Tributária *)
  vlTotTrib: Double;
  vlTotTribEst: Double;
  vlMensagemCargaTrib: String;

  (* Retornos da SEFAZ *)
  vCStat: Integer;
  vXMotivo: String;

  (* Utilizados para chamada do mvpr - Validação de Produtos *)
  // ValidaProdutos: TValidaProdutos;
  vPodeProdutos: Boolean;
  Pack: HModule;
  i: Integer;
  vlNomeArquivoNFCe: string;
  ok: Boolean;

  vHora: string;
  vDia: String;
  vlTotalFrete: Double;
  vlTemANP: Boolean;
  vlTotalST: Double;
  vxser: Double;

  vlTotvFCP: Double;
  vlTotvFCPST: Double;

var
  s: String;
  iValue, iCode: Integer;

  vlMensagemICM: string;

Begin
  vlTemANP := False;
  vlTotalST := 0;
  vlTotalFrete := 0;

  vxdesc := 0;
  vxtot := 0;
  vxliq := 0;
  vxser := 0;

  vlTotvFCP := 0;
  vlTotvFCPST := 0;


  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  mes.Close;
  mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
  mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  mes.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;


  //
  // Carrega Operação e Entidade
  //

  toe.Close;
  toe.SQL.Text := 'SELECT ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao,cstnormal,cstcodigo FROM toe WHERE toecodigo = ' +
    mestoecodigo.AsString;
  toe.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  AjustaObservacoes;

  CheckBox1.Checked := True;


  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFeNotas.NotasFiscais.Clear;

  ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

  If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
  begin
    ACBrNFeDANFEFR.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
    ACBrNFeDANFEFR.ExpandeLogoMarca := True;
  end;

  Try

    With ACBrNFeNotas.NotasFiscais.add.NFe Do
    Begin
      ide.indIntermed := iiSemOperacao;

      infRespTec.CNPJ := '14477548000131';
      infRespTec.email := 'Mizio@Miziosisemas.com.br';
      infRespTec.xContato := 'Mizio Sistemas';
      infRespTec.fone := '6635442765';

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      ide.natOp := toetoeidentificacao.AsString;

      case mestfpcodigo.AsInteger of
        0:
          ide.indPag := ipVista;
        1:
          ide.indPag := ipPrazo;
        9:
          ide.indPag := ipOutras;
      else
        ide.indPag := ipOutras;
      end;

      vHora := agora(Application, zcone);
      vDia := mesmesregistro.AsString;

      fnfepdv.vpDataAtual := mesmesregistro.AsFloat;
      ide.modelo := 55;
      ide.serie := cfgcfgserienfe.AsInteger;

      // Ide.cNF -> Número da NFe definido por último.
      ide.dEmi := vpDataAtual;
      ide.dSaiEnt := strtodatetime(agora(Application, zcone));

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin

        if not etd.Active then
        begin
          etd.Close;
          etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
          etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
          etd.Open;

        end;

        if etdtcbcodigo.AsInteger = 2 then
        begin
          if (cfgatvcodigo.AsInteger = atvrestaurante) then
          begin
            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              ide.idDest := doInterestadual;
              Transp.modFrete := mfSemFrete;
            end
            else
            begin
              ide.idDest := doInterna;
            end;
          end
          else
          begin
            if ide.indPres = pcPresencial then
            begin
              if ide.indFinal = cfConsumidorFinal then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                  Transp.modFrete := mfSemFrete;
                end;
              end
              else
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual
                end
                else
                begin
                  ide.idDest := doInterna;
                end;
              end;
            end
            else
            begin
              ide.idDest := doInterestadual
            end;
          end;

        end
        else
        begin
          if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
          begin
            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              ide.idDest := doInterestadual;
              Transp.modFrete := mfSemFrete;
            end
            else
            begin
              ide.idDest := doInterna;
            end;
          end
          else
          begin
            if ide.indPres = pcPresencial then
            begin
              if ide.indFinal = cfConsumidorFinal then
              begin
                ide.idDest := doInterna;
                Transp.modFrete := mfSemFrete;
              end
              else
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual
                end
                else
                begin
                  ide.idDest := doInterna;
                end;
              end;
            end
            else
            begin

              ide.idDest := doInterestadual
            end;
          end;
        end;
      end
      else
      begin
        ide.idDest := doInterna;
      end;

      case toettecodigo.AsInteger of
        0:
          ide.tpNF := tnEntrada;
        1:
          ide.tpNF := tnSaida;
      end;

      ide.tpImp := tiRetrato;
      ide.tpEmis := teNormal;

      (* Finalidade da NFe *)
      case toettocodigo.AsInteger of
        ttoCompra, ttoVenda, ttoRemessaRetorno:
          ide.finNFe := fnNormal;
        ttoDevolucao:
          ide.finNFe := fnDevolucao;
        ttoAjuste:
          ide.finNFe := fnAjuste;
        ttoComplemento:
          ide.finNFe := fnComplementar;
      end;

      if mesmespararevenda.AsInteger = 1 then
      begin
        ide.indFinal := cfNao;
      end
      else
      begin
        ide.indFinal := cfConsumidorFinal;
      end;


      if mesoricodigo.AsInteger=3 then  // delivery entrega
      begin
        ide.indPres:= pcTeleatendimento;
        ide.indIntermed:=iiOperacaoSemIntermediador;

      end
      else if (mesoricodigo.AsInteger=7) or (mesoricodigo.AsInteger=8)  then  // nuc ou aiqfome
      begin

        ide.indPres:= pcTeleatendimento;
        ide.indIntermed:=iiOperacaoComIntermediador;

        with infIntermed do
        begin

         ori.close;
         ori.ParamByName('oricodigo').AsInteger:=mesoricodigo.AsInteger;
         ori.Open;

         infIntermed.CNPJ:=SoNumeros(orietddoc1.AsString);
         infIntermed.idCadIntTran:=orioriidentificacao.AsString;

        end;

      end
      else    // presencial no salão
      begin
        ide.indPres := pcPresencial;
        ide.indIntermed := iiSemOperacao;
      end;



      ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
      begin
        ide.tpAmb := taModo;
      end
      else
      begin
        ide.tpAmb := taHomologacao;
      end;

      ide.verProc := '21.25.300.1';

      ctd.Close;
      ctd.Connection := zcone;
      ctd.Open;

      if not ctd.IsEmpty then
      begin
        if (ctdctdcnpj.AsString <> '') and (ctdctdcnpj.AsString <> '0') then
        begin
          try
            if strtofloat(SoNumeros(ctdctdcnpj.AsString)) > 0 then
            begin
              autXML.add.CNPJCPF := SoNumeros(ctdctdcnpj.AsString);
            end;
          except

          end;
        end;
      end;
      (*
        *
        ****** Grupo de Informações de Documentos Referenciados
        *
      *)
      vInfComplCF := '';
      vSeparadorCF := '';

      vInfComplNF := '';
      vSeparadorNF := '';
      vInfComplNFP := '';
      vSeparadorNFP := '';
      vInfComplNFe := '';
      vSeparadorNFe := '';

      dfr.Close;
      dfr.Params[0].AsString := vpMesChave;
      dfr.Open;

      (* Documento Fiscal Referenciado *)
      while not dfr.Eof do
      begin
        with ide.NFref.add do
        begin
          (* Nota Fiscal Modelo 1/1a *)
          if dfrtdfcodigo.AsString = tdfNotaFiscal then
            with RefNF do
            begin
              cUF := dfrufscodigo.AsInteger;
              AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
              CNPJ := SomenteNumeros(dfretddoc1.AsString);
              modelo := dfrtdfcodigo.AsInteger;
              // serie := dfrdfrserie.AsInteger;
              serie := cfgcfgserienfe.AsInteger;
              nNF := dfrdfrnumero.AsInteger;

              if vInfComplNF = '' then
                vInfComplNF := 'Nota Fiscal referenciada: ';

              vInfComplNF := vInfComplNF + vSeparadorNF + dfrdfrnumero.AsString;
              vSeparadorNF := ', ';
            end;

          (* Nota Fiscal de Produtor Rural *)
          if dfrtdfcodigo.AsString = tdfNotaFiscalDeProdutor then
            with RefNFP do
            begin
              cUF := dfrufscodigo.AsInteger;
              AAMM := formatdatetime('yymm', dfrdfremissao.AsFloat);
              CNPJCPF := SomenteNumeros(dfretddoc1.AsString);
              IE := SomenteNumeros(dfredrinscest.AsString);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              if Copy(IE, 1, 1) = '0' then
                IE := Copy(IE, 2, 20);

              modelo := dfrtdfcodigo.AsString;
              // serie := dfrdfrserie.AsInteger;
              serie := cfgcfgserienfe.AsInteger;
              nNF := dfrdfrnumero.AsInteger;

              if vInfComplNFP = '' then
                vInfComplNFP := 'Nota Fiscal de Produtor referenciada: ';

              vInfComplNFP := vInfComplNFP + vSeparadorNFP + dfrdfrnumero.AsString;
              vSeparadorNFP := ', ';
            end;

          (* Nota Fiscal Eletrônica - NFe *)
          if dfrtdfcodigo.AsString = tdfNotaFiscalEletronica then
          begin
            refNFe := dfrdfrchavenfe.AsString;

            if vInfComplNFe = '' then
              vInfComplNFe := 'NF-e referenciada: ';

            vInfComplNFe := vInfComplNFe + vSeparadorNFe + dfrdfrchavenfe.AsString;
            vSeparadorNFe := ', ';
          end;
        end;

        dfr.Next;
      end;

      if vInfComplNF <> '' then
        vInfComplNF := vInfComplNF + ';';

      if vInfComplNFP <> '' then
        vInfComplNFP := vInfComplNFP + ';';

      if vInfComplNFe <> '' then
        vInfComplNFe := vInfComplNFe + ';';

      if vInfComplCF <> '' then
        vInfComplCF := vInfComplCF + ';';

      (*
        *
        ****** Emitente da NFe - EMIT ********
        *
      *)

      Emit.CNPJCPF := SomenteNumeros(cfgetddoc1.AsString);
      Emit.IE := SomenteNumeros(cfgedrinscest.AsString);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      if Copy(Emit.IE, 1, 1) = '0' then
        Emit.IE := Copy(Emit.IE, 2, 20);

      Emit.xNome := cfgetdidentificacao.AsString;
      Emit.xFant := cfgetdapelido.AsString;
      Emit.EnderEmit.fone := cfgetftelefone.AsString;
      Emit.EnderEmit.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString));
      Emit.EnderEmit.xLgr := cfgedrrua.AsString;
      Emit.EnderEmit.nro := cfgedrnumero.AsString;
      Emit.EnderEmit.xCpl := '';
      Emit.EnderEmit.xBairro := cfgedrbairro.AsString;
      Emit.EnderEmit.cMun := cfgcddcodigo.AsInteger;
      Emit.EnderEmit.xMun := cfgcddnome.AsString;
      Emit.EnderEmit.UF := UpperCase(cfgufssigla.AsString);
      Emit.EnderEmit.cPais := 1058;

      if trim(mesmesfilialpedido.AsString) <> '' then
      begin
        Emit.EnderEmit.xCpl := mesmesfilialpedido.AsString;
      end;

      Emit.EnderEmit.xPais := 'BRASIL';

      case cfgcrtcodigo.AsInteger of
        1:
          Emit.CRT := crtSimplesNacional;
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      (*
        *
        ********* Destinatário da NFe **********
        *
      *)

      Dest.CNPJCPF := SomenteNumeros(self.etdetddoc1.AsString);
      if etdedrcep.AsString = '' then
        Dest.EnderDest.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString))
      else
        Dest.EnderDest.CEP := StrToInt(SomenteNumeros(etdedrcep.AsString));

      Dest.EnderDest.xLgr := etdedrrua.AsString;
      Dest.EnderDest.nro := etdedrnumero.AsString;
      Dest.EnderDest.xCpl := '';
      Dest.EnderDest.xBairro := etdedrbairro.AsString;

      if etdcddcodigo.AsString = '' then
        Dest.EnderDest.cMun := cfgcddcodigo.AsInteger
      else
        Dest.EnderDest.cMun := etdcddcodigo.AsInteger;

      if etdcddnome.AsString = '' then
        Dest.EnderDest.xMun := cfgcddnome.AsString
      else
        Dest.EnderDest.xMun := etdcddnome.AsString;

      if etdufssigla.AsString = '' then
        Dest.EnderDest.UF := UpperCase(cfgufssigla.AsString)
      else
        Dest.EnderDest.UF := UpperCase(etdufssigla.AsString);
      Dest.EnderDest.fone := etdetftelefone.AsString;

      (* Valida Inscrição Estadual do Destinatário *)
      try
        vTestaInscEst := trim(SomenteNumeros(etdedrinscest.AsString));

        if vTestaInscEst = '00000000000' then
          vTestaInscEst := '';

        strtofloat(vTestaInscEst);

        ACBrValidador1.TipoDocto := docInscEst;
        ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
        ACBrValidador1.Documento := vTestaInscEst;

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 +
            'Corrija no cadastro do destinatário e tente novamente.'), 'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
          vTestaInscEst := '';
          exit;
        end;

        if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 14 then
          ACBrValidador1.TipoDocto := docCNPJ;

        if Length(SomenteNumeros(self.etdetddoc1.AsString)) = 11 then
          ACBrValidador1.TipoDocto := docCPF;

        ACBrValidador1.Documento := SomenteNumeros(self.etdetddoc1.AsString);

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 +
            'Corrija no cadastro do destinatário e tente novamente.'), 'CNPJ ou CPF Inválido', MB_OK + MB_ICONERROR);

          exit;
        end;

      except
        vTestaInscEst := '';
      end;

      if vTestaInscEst <> '' then
      begin
        Dest.IE := vTestaInscEst;
        Dest.indIEDest := inContribuinte;
      end
      else
      begin
        Dest.IE := '';
        Dest.indIEDest := inNaoContribuinte;
      end;

      if etdedrrazaofazenda.AsString <> '' then
        Dest.xNome := etdedrrazaofazenda.AsString
      else
        Dest.xNome := etdetdidentificacao.AsString;

      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';

      (*
        *
        ********* Detalhamento de Produtos e Serviços - DET ***********
        *
      *)

      itm.Refresh;

      itm.IndexFieldNames := 'itmchave';
      itm.First;
      it := 1;

      vtBC := 0;
      vtICMS := 0;
      vtBCST := 0;
      vtICMSST := 0;

      vlTotTrib := 0;
      vlTotTribEst := 0;
      vlMensagemCargaTrib := '';

      VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if ide.indPres = pcPresencial then
        begin
          { if Dest.indIEDest = inContribuinte then
            begin
            VerifieAjustaItemcomConsumidorFinal(True);
            end
            else
            begin }
          VerifieAjustaItemcomConsumidorFinal(False);
          { end; }
        end;
      end;

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      itm.First;

      While Not itm.Eof Do
      Begin

        if itmproanpcodigo.AsString <> '' then
          vlTemANP := True;

        With Det.add Do
        Begin

          infAdProd := itmitmdesccomple.AsString;
          Prod.nItem := it;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);

          Prod.CFOP := itmcfocfop.AsString; // '5101';

          
          Prod.cProd := self.itmprocodigo.AsString; // '67';

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(trim(itmpronome.AsString), '%', '');

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(trim(itmpronomereduzido.AsString), '%', '');

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := trim(Copy(Prod.xProd, 2, 300));

          Prod.qCom := self.itmitmquantidade.AsFloat;
          Prod.uCom := self.itmunisimbolo.AsString; // 'KG';
          Prod.vProd := TBRound(self.itmitmquantidade.AsFloat * self.itmitmvalor.AsFloat, 2);
          Prod.vUnCom := self.itmitmvalor.AsFloat; // 10;

          Prod.vDesc := self.itmitmdesconto.AsFloat;

          Prod.qTrib := self.itmpunqtdtribtotal.AsFloat;
          Prod.uTrib := self.itmunisimbolotrib.AsString;
          Prod.vUnTrib := Prod.vProd / Prod.qTrib; // 10;
          Prod.vOutro := self.itmitmoutras.AsFloat;
          // inclui dados do pedido
          if (mesmesnumeropedido.AsString <> '') and (itmitmitempedido.AsString <> '') then
          begin
            Prod.xPed := mesmesnumeropedido.AsString;

            s := itmitmitempedido.AsString;

            val(s, iValue, iCode);

            if iCode = 0 then
            begin
              Prod.nItemPed := formatfloat('000000', itmitmitempedido.AsInteger);
            end
            else
            begin
              Prod.nItemPed := itmitmitempedido.AsString;
            end;

          end;

          vxdesc := vxdesc + Prod.vDesc; // acumula o valor do desconto
          vxtot := vxtot + Prod.vProd; // acumula o valor total do item
          vxliq := vxliq + (vxtot - vxdesc); // acumula o valor liquido da nota

          if itmtpocodigo.AsInteger = 99 then
            Prod.CEST := '01.999.00';

          if itmtcecest.AsString <> '' then
          begin
            Prod.CEST := itmtcecest.AsString;
          end;

          With Imposto Do
          Begin

            (* Se for operação de Venda define o total de carga tributária por item *)
            if toettocodigo.AsInteger = ttoVenda then
            begin
              Imposto.vTotTrib := itmitmcargatrib.AsFloat + itmitmcargatribest.AsFloat;

              (* Acumula totais de carga tributária por ente Federal e Estadual *)
              vlTotTrib := vlTotTrib + itmitmcargatrib.AsFloat;
              vlTotTribEst := vlTotTribEst + itmitmcargatribest.AsFloat;
            end;

            case mesrefcodigo.AsInteger of
              1:
                begin
                  Prod.vFrete := itmitmfrete.AsCurrency;
                  vlTotalFrete := vlTotalFrete + itmitmfrete.AsCurrency;
                end;
              9:
                Total.ICMSTot.vFrete := 0;
            end;

            With ICMS Do
            Begin
              // ICMS.orig:=TpcnOrigemMercadoria.oeEstrangeiraAdquiridaBrasil;
              case Emit.CRT of
                (* CSOSN *)
                crtSimplesNacional:
                  begin
                    vCST := self.itmcstcodigo.AsString;

                    vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                    if vlCSOSNIcmsOK then
                      CSOSN := vlCSOSNIcms

                  end;

                (* CST *)
                crtRegimeNormal, crtSimplesExcessoReceita:
                  begin

                    vCST := Copy(self.itmcstcodigo.AsString, 2, 2);

                    if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                    end
                    else
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, vCST);

                    end;

                    if vlCSTIcmsOK then
                      CST := vlCSTIcms;
                  end;
              end;

              // (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90,cstPart10,cstPart90,cstRep41,cstVazio);

              ICMS.modBC := dbiValorOperacao;
              If (lowercase(self.itmicmcodigo.AsString) = 'ff') Or (lowercase(self.itmicmcodigo.AsString) = 'ii') Or
                (lowercase(self.itmicmcodigo.AsString) = 'nn') Then
              Begin
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.vBC := 0;
              End
              Else
              Begin
                If (self.itmitmicm.AsFloat = 0.01) or (self.itmitmicm.AsFloat = 0) Then
                Begin
                  ICMS.pICMS := 0;
                  ICMS.vICMS := 0;
                  ICMS.vBC := 0;
                End
                Else
                Begin
                  ICMS.pICMS := self.itmicmaliquotas.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.AsCurrency;
                  ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;
                  if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn400) then
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := itmitmmva.AsFloat;
                      ICMS.vBCST := itmitmbicms.AsFloat;
                      ICMS.pICMSST := itmitmaliqicms.AsFloat;
                      ICMS.vICMSST := itmitmicms.AsFloat;
                    end;
                  end
                  else
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := itmitmmva.AsFloat;
                      ICMS.vBCST := itmitmbicms.AsFloat;
                      ICMS.pICMSST := itmitmaliqicms.AsFloat;
                      ICMS.vICMSST := itmitmicms.AsFloat;
                    end;
                  end;
                End;
              End;

              if (ICMS.CSOSN = csosn202) or (ICMS.CSOSN = csosn500) then
              begin
                vtICMS := vtICMS + 0;
                vtBC := vtBC + 0;
                ICMS.vBCFCPST := 0;
                ICMS.pFCPST := 0;
                ICMS.vFCPST := 0;

              end
              else
              begin
                vtICMS := vtICMS + ICMS.vICMS;
                vtBC := vtBC + ICMS.vBC;

              end;

              vlTotalST := vlTotalST + ICMS.vICMSST;
              vtICMSST := vtICMSST + ICMS.vICMSST;

              vtBCST := vtBCST + ICMS.vBCST;
              if cfgcrtcodigo.AsInteger <> 1 then
              begin

                if (itmitmbasefcpicm.AsString <> '') and (itmitmbasefcpicm.AsString <> '0') then
                begin
                  vBCFCP := itmitmbasefcpicm.AsFloat;
                  pFCP := itmitmpercfcpicm.AsFloat;
                  vFCP := itmitmvalofcpicm.AsFloat;
                  vlTotvFCP := vlTotvFCP + itmitmvalofcpicm.AsFloat;
                end;

                if (itmitmbasefcpicmst.AsString <> '') and (itmitmbasefcpicmst.AsString <> '0') then
                begin
                  vBCFCPST := itmitmbasefcpicmst.AsFloat;
                  pFCPST := itmitmpercfcpicmst.AsFloat;
                  vFCPST := itmitmvalofcpicmst.AsFloat;
                  vlTotvFCPST := vlTotvFCPST + itmitmvalofcpicmst.AsFloat;
                end;

              end;
              if mesmespararevenda.AsInteger = 1 then
              begin
                if itmcstcodigo.AsString = '101' then
                begin
                  vpmestotalbaseicm := vpmestotalbaseicm + ((itmitmvalor.AsFloat * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency);
                end;

              end;

            End;
            if itmproanpcodigo.AsString = '' then
            begin

              If self.itmitmaliqipi.AsFloat <> 0 Then
              Begin
                ipi.vIPI := itmitmipi.AsCurrency;
                ipi.vBC := itmitmbipi.AsCurrency;
                ipi.pIPI := self.itmitmaliqipi.AsFloat;

                ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
                // ipi.CST := ipi50;
                vtipi := vtipi + ipi.vIPI;
              End
              Else
              Begin
                ipi.CST := StrToCSTIPI(ok, itmcsicodigo.AsString);
                // ipi.CST := ipi01;
              End;

            end;
            if itmcspcodigo.AsString = '' then
            begin
              pis.CST := StrToCSTPIS(ok, formatfloat('00', 99));

            end
            else
            begin

              pis.CST := StrToCSTPIS(ok, formatfloat('00', itmcspcodigo.AsInteger));
            end;

            if itmcsfcodigo.AsString = '' then
            begin
              COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', 99));

            end
            else
            begin

              COFINS.CST := StrToCSTCOFINS(ok, formatfloat('00', itmcsfcodigo.AsInteger));
            end;

            { if cfgcfgcstpis.AsString <> '' then
              begin
              pis.CST := StrToCSTPIS(ok, cfgcfgcstpis.AsString);
              end;

              if cfgcfgcstcofins.AsString <> '' then
              begin
              COFINS.CST := StrToCSTCOFINS(ok, cfgcfgcstcofins.AsString);
              end; }

          End;
          it := it + 1;
        End;
        itm.Next;
      End;

      (*
        *
        ******** Informações do Transporte da NF-e - TRANSP ********
        *
      *)

      // Responsavel pelo Frete 0- Por conta do emitente; 1- Por conta do destinatário/remetente;2- Por conta de terceiros;9- Sem cobrança de frete
      case mesrefcodigo.AsInteger of
        0:
          Transp.modFrete := mfContaEmitente;
        1:
          Transp.modFrete := mfContaDestinatario;
        2:
          Transp.modFrete := mfContaTerceiros;
        9:
          Transp.modFrete := mfSemFrete;
      end;

      if (ide.indPres = pcPresencial) and (ide.indFinal = cfConsumidorFinal) then
      begin
        Transp.modFrete := mfSemFrete;
      end;

      dtm.Close;
      dtm.ParamByName('meschave').AsString := vpMesChave;
      dtm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      dtm.Open;

      if Transp.modFrete <> mfSemFrete then
      begin

        If dtm.RecordCount = 1 Then
        Begin

          Transp.Transporta.xNome := dtmetdidentificacao.AsString;
          Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
          Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          if Copy(Transp.Transporta.IE, 1, 1) = '0' then
            Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

          Transp.Transporta.xEnder := dtmedrrua.AsString;
          Transp.Transporta.xMun := dtmcddnome.AsString;
          Transp.Transporta.UF := dtmufssigla.AsString;

          { Transp.veicTransp.placa := dtmdtmplaca.AsString;
            Transp.veicTransp.UF := dtmufssigla.AsString; }

          if Emit.EnderEmit.UF <> Dest.EnderDest.UF then // fora do estado
          begin

            Transp.Transporta.xNome := dtmetdidentificacao.AsString;
            Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
            Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            if Copy(Transp.Transporta.IE, 1, 1) = '0' then
              Transp.Transporta.IE := Copy(Transp.Transporta.IE, 2, 20);

            Transp.Transporta.xEnder := dtmedrrua.AsString;
            Transp.Transporta.xMun := dtmcddnome.AsString;
            Transp.Transporta.UF := dtmufssigla.AsString;

            // Transp.veicTransp.placa := dtmdtmplaca.AsString;
            // Transp.veicTransp.UF := dtmufssigla.AsString;

          end
          else
          begin

            Transp.Vol.add;
            Transp.Vol.Items[0].qVol := dtmdtmvolumes.AsInteger;
            Transp.Vol.Items[0].esp := dtmdtmespecie.AsString;
            Transp.Vol.Items[0].marca := dtmdtmmarcas.AsString;
            Transp.Vol.Items[0].pesoB := dtmdtmpesobruto.AsFloat;
            Transp.Vol.Items[0].pesoL := dtmdtmpesoliq.AsFloat;
          end;
        End
        Else
        Begin
          Transp.Transporta.xNome := '';
          Transp.Transporta.CNPJCPF := '';
          Transp.Transporta.IE := '';
          Transp.Transporta.xEnder := '';
          Transp.Transporta.xMun := '';
          Transp.Transporta.UF := '';

          Transp.Vol.add;
          Transp.Vol.Items[0].qVol := 1;
          Transp.Vol.Items[0].esp := '';
          Transp.Vol.Items[0].marca := '';
          Transp.Vol.Items[0].pesoB := 0;
          Transp.Vol.Items[0].pesoL := 0;
        End;

      end
      else
      begin
        Transp.Transporta.xNome := '';
        Transp.Transporta.CNPJCPF := '';
        Transp.Transporta.IE := '';
        Transp.Transporta.xEnder := '';
        Transp.Transporta.xMun := '';
        Transp.Transporta.UF := '';

        Transp.Vol.add;
        Transp.Vol.Items[0].qVol := 1;
        Transp.Vol.Items[0].esp := '';
        Transp.Vol.Items[0].marca := '';
        Transp.Vol.Items[0].pesoB := 0;
        Transp.Vol.Items[0].pesoL := 0;

      end;
      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vIPI := vtipi;
      Total.ICMSTot.vBC := vtBC;

      Total.ICMSTot.vICMS := RoundTo(vtICMS, -2);
      // 180;
      Total.ICMSTot.vBCST := vtBCST;
      Total.ICMSTot.vST := RoundTo(vtICMSST, -2);

      consulta.Close;
      consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
      consulta.Open;

      if consulta.FieldByName('messervicos').AsFloat > 0 then
      begin
        if cfgcfgdescontonoservico.AsInteger = 1 then
        begin
          { vxser := consulta.FieldByName('messervicos').AsFloat -
            (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos').AsFloat +
            consulta.FieldByName('messervicos').AsFloat))); }
          vxser := consulta.FieldByName('messervicos').AsFloat;

        end
        else
        begin
          vxser := consulta.FieldByName('messervicos').AsFloat;

        end;
      end
      else
      begin
        vxser := 0;
      end;

      if vxser > 0 then
        Total.ICMSTot.vNF := mesmestotal.AsCurrency - vxser
      else
        Total.ICMSTot.vNF := mesmestotal.AsCurrency;

      Total.ICMSTot.vProd := RoundTo(vxtot, -2);
      Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
      Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;
      if cfgcrtcodigo.AsInteger <> 1 then
      begin

        Total.ICMSTot.vFCP := vlTotvFCP;
        Total.ICMSTot.vFCPST := vlTotvFCPST;
      end;


      // Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro + vlTotalST), -2);

      case mesrefcodigo.AsInteger of
        1:
          Total.ICMSTot.vFrete := mesmesfrete.AsCurrency;
        9:
          Total.ICMSTot.vFrete := 0;
      end;

      qTomTof.Close;
      qTomTof.SQL.Text := 'SELECT tofidentificacao FROM tom, tof WHERE ';
      qTomTof.SQL.add('tom.tofcodigo = tof.tofcodigo AND ');
      qTomTof.SQL.add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
      qTomTof.SQL.add('tom.meschave = ' + vpMesChave + ' ');
      qTomTof.SQL.add('ORDER BY tof.tofcodigo');
      qTomTof.Open;

      vInfComplGeral := '';

      while not qTomTof.Eof do
      begin
        if pos(trim(qTomTof.Fields[0].AsString), vInfComplGeral) = 0 then
        begin

          if pos('%?', qTomTof.Fields[0].AsString) > 0 then
          begin
            vlMensagemICM := StringReplace(qTomTof.Fields[0].AsString, '%?', itmicmcodigo.AsString + '%', []);

            vlMensagemICM := StringReplace(vlMensagemICM, 'R$?',
              'R$ ' + floattostr(RoundTo(vpmestotalbaseicm { mesmestotal.AsCurrency } * (itmicmcodigo.AsFloat / 100), -2)), []);

            if pos(vlMensagemICM, vInfComplGeral) >= 0 then
            begin
              vInfComplGeral := vInfComplGeral + trim(vlMensagemICM) + ';';
            end;
          end
          else
          begin

            if pos(trim(qTomTof.Fields[0].AsString), vInfComplGeral) = 0 then
            begin
              vInfComplGeral := vInfComplGeral + trim(qTomTof.Fields[0].AsString) + ';';
            end;
          end;

        end;
        qTomTof.Next;
      end;

      vInfComplTEF:='';

      dtl.First;
      while not dtl.Eof do
      begin

        rdc.close;
        rdc.ParamByName('dtlchave').AsInteger:=dtl.FieldByName('dtlchave').AsInteger;
        rdc.Open;

        if not rdc.IsEmpty then
        begin
          vInfComplTEF:=vInfComplTEF+'Cód. Transação TEF: '+rdc.FieldByName('rdcnrauto').AsString;
        end;

        dtl.Next;
      end;

      vInfComplGeral:=vInfComplGeral+#13+#10+'|;'+vInfComplTEF;



      (* Trata mensagem referente Carga Tributária *)
      if (vlTotTrib + vlTotTribEst) > 0 then
      begin
        vlMensagemCargaTrib := 'Trib. aprox. R$ ';
        vlMensagemCargaTrib := vlMensagemCargaTrib + formatfloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal ';

        if vlTotTribEst > 0 then
          vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + formatfloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual ';

        vlMensagemCargaTrib := vlMensagemCargaTrib + ' Fonte: IBPT 5oi7eW;'
      end;

      // InfAdic.infCpl := vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib;
      InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib,
        toetoeidentificacao.AsString, '', [rfReplaceAll, rfIgnoreCase]);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if ide.indPres = pcPresencial then
        begin
          if ide.indFinal = cfConsumidorFinal then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
            consulta.Open;
            ide.natOp := consulta.FieldByName('toeidentificacao').AsString;

            if etdtcbcodigo.AsInteger = 2 then
            begin
              if (cfgatvcodigo.AsInteger = atvrestaurante) then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin

                  ide.idDest := doInterna;
                end;

              end
              else
              begin
                if ide.indPres = pcPresencial then
                begin
                  if ide.indFinal = cfConsumidorFinal then
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual;
                      Transp.modFrete := mfSemFrete;
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                      Transp.modFrete := mfSemFrete;
                    end;
                  end
                  else
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                      Transp.modFrete := mfSemFrete;
                    end;
                  end;
                end
                else
                begin
                  ide.idDest := doInterestadual
                end;
              end;

            end
            else
            begin
              if (cfgatvcodigo.AsInteger = atvrestaurante) or (cfgatvcodigo.AsInteger = atvmercado) then
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  ide.idDest := doInterestadual;
                  Transp.modFrete := mfSemFrete;
                end
                else
                begin
                  ide.idDest := doInterna;
                  Transp.modFrete := mfSemFrete;
                end;
              end
              else
              begin
                if ide.indPres = pcPresencial then
                begin
                  if ide.indFinal = cfConsumidorFinal then
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual;
                      Transp.modFrete := mfSemFrete;
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                      Transp.modFrete := mfSemFrete;
                    end;
                  end
                  else
                  begin
                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin
                      ide.idDest := doInterestadual
                    end
                    else
                    begin
                      ide.idDest := doInterna;
                      Transp.modFrete := mfSemFrete;
                    end;
                  end;
                end
                else
                begin

                  ide.idDest := doInterestadual
                end;
              end;
            end;

            // InfAdic.infCpl := InfAdic.infCpl + ' ' + '"ICMS recolhido anteriormente por estimativa simplificada - Operação Presencial/Venda no Balcão”';

          end;
        end;
      end;

      (*
        *
        ********* Identifica o Número da NF-e **********
        *
      *)

      if (self.mesmesnumero.AsString <> '') and (self.mesmesnumero.AsString <> '0') and (self.mestemcodigo.AsInteger <> 3) then
        vNumeroNFe := self.mesmesnumero.AsInteger
      else
      begin

        { qConsulta.Close;
          qConsulta.SQL.Text := 'select cfgnumeronfe from cfgmnfe where cfgcodigo=1';
          qConsulta.Open;

          vNumeroNFe := qConsulta.FieldByName('cfgnumeronfe').AsInteger + 1; }

        NumeroNFe.ParamByName('flacodigo').AsString := vpFilial;
        NumeroNFe.ExecSQL;
        vNumeroNFe := NumeroNFe.Fields[0].AsInteger;

      end;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET mesnumero = ' + IntToStr(vNumeroNFe) + ' WHERE meschave = ' + vpMesChave + ' and flacodigo=' +
        Acesso.Filial.ToString;
      qconsulta.ExecSQL;
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

      cfg.Close;
      cfg.ParamByName('flacodigo').AsString := vpFilial;
      cfg.Open;

      if vNumeroNFe > cfgcfgnumeronfe.AsInteger then
      begin
        { qConsulta.Close;
          qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=1';
          qConsulta.ExecSQL;

          qConsulta.Close;
          qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=' + Acesso.Filial.ToString;
          qConsulta.ExecSQL; }

      end;

      ide.nNF := vNumeroNFe;
      ide.cNF := GerarCodigoDFe(vNumeroNFe);

    End;
  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro preenchimento dos dados da NF-e.' + #13 + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'),
        'Erro Preenchimento NF-e', MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
      exit;
    End;
  End;

  try
    // Gera Arquivo da NF-e e mantém memória

    ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;

    ACBrNFeNotas.NotasFiscais.GerarNFe;

    vChaveNFe := Copy(ACBrNFeNotas.NotasFiscais.Items[0].NFe.infnfe.ID, 4, 44);
    ACBrNFeNotas.NotasFiscais.Items[0].GravarXML(vChaveNFe + '-nfe.xml', ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar);

    CheckBox3.Checked := True;

    // Assina e salva arquivo no Path definido
    try
      ACBrNFeNotas.NotasFiscais.Assinar;
    except

    end;

    CheckBox4.Checked := True;

    CheckBox5.Checked := True;

  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro na geração da NF-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'),
        'Erro Geração NF-e', MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      exit;
    End;
  end;

  vpRetorno := '';

End;

Function Tfnfepdv.GeraNomeNFe(vmeschave: String): String;
Var
  Retorno: String;
  vAnoMesNFe: String;
  arq: String;
Begin
  Retorno := '';

  qconsulta.Close;
  qconsulta.SQL.Text := 'SELECT mesdatanfe, mesregistro, meschavenfe FROM mes WHERE meschave = ' + vmeschave + ' and flacodigo=' +
    Acesso.Filial.ToString;
  qconsulta.Open;

  If (self.qconsulta.RecordCount = 1) And (qconsulta.Fields[0].AsString <> '') Then
  Begin
    vAnoMesNFe := vPastaPrincipal + fnfepdv.vSubPastaDoc + '\' + formatdatetime('yyyymm', qconsulta.Fields[0].AsFloat);
    arq := vAnoMesNFe + '\' + qconsulta.Fields[2].AsString + '-nfe.XML';
    Retorno := arq;
  End
  Else If (self.qconsulta.RecordCount = 1) And (qconsulta.Fields[1].AsString <> '') Then
  Begin
    vAnoMesNFe := vPastaPrincipal + fnfepdv.vSubPastaDoc + '\' + formatdatetime('yyyymm', qconsulta.Fields[1].AsFloat);
    arq := vAnoMesNFe + '\' + qconsulta.Fields[2].AsString + '-nfe.XML';
    Retorno := arq;
  End;

  qconsulta.Close;

  Result := Retorno;
End;

procedure Tfnfepdv.VerifieAjustaItemcomConsumidorFinal(vContribuinte: Boolean);
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;
begin

  if mesttocodigo.AsInteger=ttoDevolucao then
  begin
   exit;
  end;

  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
  begin

    itm.First;

    // ajusta o toe do item para produto sem substituição
    While Not itm.Eof Do
    Begin
      if (itmtcecest.AsString = '') then
      begin

        if vContribuinte then // fora do estado
        begin

          if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
          begin

            consulta.Close;
            consulta.SQL.Text :=
              'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoeforaproducaopropria.AsString;
            consulta.Open;

          end
          else
          begin

            consulta.Close;
            consulta.SQL.Text :=
              'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoemesfora.AsString;
            consulta.Open;

          end;

        end
        else
        begin

          if cfgcfgpresencialtoedestino.AsInteger = 1 then
          begin

            if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
            begin
              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
                cfgcfgtoeforaproducaopropria.AsString;
              consulta.Open;

            end
            else
            begin

              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
                cfgcfgtoemesfora.AsString;
              consulta.Open;

            end;
          end
          else
          begin

            if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
            begin

              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
                cfgcfgtoeinteproducaopropria.AsString;
              consulta.Open;

            end
            else
            begin

              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
                cfgcfgtoemesinte.AsString;
              consulta.Open;
            end;
          end;

        end;

        vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
        vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
        vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
        vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

        vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
        vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
        vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        vlcfop := consulta.FieldByName('toecfopsaida').AsString;

        itmncm.Close;

        if cfgcfgpresencialtoedestino.AsInteger = 1 then
        begin
          itmncm.SQL.Text := 'update itm set itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' +
            QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' +
            QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' + cfgcfgtoemesfora.AsString + ' where itmchave=' +
            itmitmchave.AsString;
          itmncm.ExecSQL;

        end
        else
        begin

          itmncm.SQL.Text := 'update itm set itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' +
            QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' +
            QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' + cfgcfgtoemesinte.AsString + ' where itmchave=' +
            itmitmchave.AsString;
          itmncm.ExecSQL;
        end;

      end;
      itm.Next;
    End;
    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    if cfgcfgpresencialtoedestino.AsInteger = 1 then
    begin
      itmncm.Close;
      itmncm.SQL.Text := 'update mes set toecodigo=' + cfgcfgtoemesfora.AsString + ' where meschave=' + mesmeschave.AsString;
      itmncm.ExecSQL;

    end
    else
    begin

      itmncm.Close;
      itmncm.SQL.Text := 'update mes set toecodigo=' + cfgcfgtoemesinte.AsString + ' where meschave=' + mesmeschave.AsString;
      itmncm.ExecSQL;
    end;
    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;



    // fim do ajusta o toe do item para produto com substituição

  end;
end;

{
  procedure Tfnfepdv.VerifieAjustaItemTransferenciaFilial;
  var
  vlcfop: string;
  vlToecodigo: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlitmmva: string;
  vlitmreducaobaseicm: string;
  vlpercentualpis: string;
  vlpercentualcofins: string;
  vlProducao: Integer;

  begin

  itm.First;

  // ajusta o toe do item para produto sem substituição
  While Not itm.Eof Do
  Begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT pro.procodigo,pro.pronome, pro.proproducao,pro.icmcodigo,';
  consulta.SQL.Add('pro.cfocfop,cstcodigo,csicodigo,cspcodigo, csfcodigo, pro.propisaliquota, ');
  consulta.SQL.Add('pro.procofinsaliquota, promva, propercfcp, pro.propercreducaobaseicm ');
  consulta.SQL.Add('from pro where procodigo=' + itmprocodigo.AsString);
  consulta.Open;

  vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
  vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
  vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
  vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

  vlpercentualpis := consulta.FieldByName('propisaliquota').AsString;
  vlpercentualpis := StringReplace(vlpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  vlpercentualcofins := consulta.FieldByName('procofinsaliquota').AsString;
  vlpercentualcofins := StringReplace(vlpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  vlitmmva := consulta.FieldByName('promva').AsString;
  vlitmmva := StringReplace(vlitmmva, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  vlitmreducaobaseicm := consulta.FieldByName('propercreducaobaseicm').AsString;
  vlitmreducaobaseicm := StringReplace(vlitmreducaobaseicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  vlProducao := consulta.FieldByName('proproducao').AsInteger;

  if vlProducao = 1 then
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecodigo, toecfoosaida from toe where toecodigo=' + cfgcfgtoetransflaintepro.AsString;
  consulta.Open;
  end
  else
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecodigo, toecfoosaida from toe where toecodigo=' + cfgcfgtoetransflainte.AsString;
  consulta.Open;
  end;

  vlcfop := consulta.FieldByName('toecfoosaida').AsString;
  vlToecodigo := consulta.FieldByName('toecodigo').AsString;

  itmncm.Close;
  itmncm.SQL.Text := 'update itm set  toecodigo=' + vlToecodigo + ', itmpercreducaobaseicm=' + vlitmreducaobaseicm + ', itmmva=' + vlitmmva +
  ', itmaliqcofins=' + vlpercentualcofins + ' ,itmaliqpis=' + vlpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
  QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' +
  QuotedStr(vlcsfcodigo) + ' where itmchave=' + itmitmchave.AsString;
  itmncm.ExecSQL;

  itm.Next;
  End;



  // fim do ajusta o toe do item para produto com substituição

  end;
}

procedure Tfnfepdv.VerifieAjustaItemReclassificacao;
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;
begin
  if mesttocodigo.AsInteger=ttoDevolucao then
  begin
   exit;
  end;


  itm.First;

  // ajusta o toe do item para produto sem substituição
  While Not itm.Eof Do
  Begin

    consulta.Close;
    consulta.SQL.Text :=
      'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
      mestoecodigo.AsString;
    consulta.Open;

    vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
    vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
    vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
    vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

    vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
    vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
    vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlcfop := consulta.FieldByName('toecfopsaida').AsString;

    itmncm.Close;

    itmncm.SQL.Text := 'update itm set itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' +
      QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) +
      ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' + mestoecodigo.AsString + ' where itmchave=' + itmitmchave.AsString;
    itmncm.ExecSQL;

    itm.Next;
  End;



  // fim do ajusta o toe do item para produto com substituição

end;

procedure Tfnfepdv.VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;
  vlTceCest: string;
  vlToeMensagemPermite: string;
  vlToeMensagemNaoPermite: string;
  vlTofcodigo: Integer;

  vlRetiraBalcao: Integer;
  vlParaRevenda: Integer;
begin
  if mesttocodigo.AsInteger=ttoDevolucao then
  begin
   exit;
  end;


  if mesttocodigo.AsInteger <> ttoDevolucao then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo, mespararevenda,mesretirabalcao from mes where meschave=' + vpMesChave;
    consulta.Open;

    vlRetiraBalcao := consulta.FieldByName('mesretirabalcao').AsInteger;

    itm.First;

    // ajusta o toe do item para produto com substituição
    While Not itm.Eof Do
    Begin

      if (itmtcecest.AsString <> '') OR (cfgcfgsubstitutotributario.AsInteger = 1) then
      begin

        if usEmitente <> ufDestinatario then // fora do estado
        begin

          if itmproanpcodigo.AsString <> '' then // tem codigo de anp
          begin

            if (cfgcfgdefinetoeatendimento.AsInteger = 1) then
            begin

              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                + itmtoecodigo.AsString;
              consulta.Open;

              vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
              vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
              vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
              vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

              vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
              vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

              vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
              vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
              vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfop := consulta.FieldByName('toecfopsaida').AsString;

              consulta.Close;
              consulta.SQL.Text := 'select tcecest from tce where tcecest=' + QuotedStr(itmtcecest.AsString);
              consulta.Open;

              vlTceCest := consulta.FieldByName('tcecest').AsString;

              if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
              begin

                itmncm.Close;
                itmncm.SQL.Text := 'update itm set   itmcest=' + QuotedStr(vlTceCest) + '  ,itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                  + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                  QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo=' +
                  cfgcfgtoesubstanpforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                itmncm.ExecSQL;
              end;

            end
            else
            begin
              if (cfgcfgtoesubstanpforaestado.AsInteger <> 0) and (cfgcfgtoesubstanpnoestado.AsInteger <> 0) then
              begin

                if etdtcbcodigo.AsInteger = 2 then
                begin

                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoesubstanpforaestado.AsString;
                  consulta.Open;
                end
                else
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoesubstanpnoestado.AsString;
                  consulta.Open;

                end;

                vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
                vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
                vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
                vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

                vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
                vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

                vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
                vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
                vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfop := consulta.FieldByName('toecfopsaida').AsString;

                consulta.Close;
                consulta.SQL.Text := 'select tcecest from tce where tcecest=' + QuotedStr(itmtcecest.AsString);
                consulta.Open;

                vlTceCest := consulta.FieldByName('tcecest').AsString;
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.Close;
                  itmncm.SQL.Text := 'update itm set   itmcest=' + QuotedStr(vlTceCest) + '  ,itmaliqcofins=' + vlcfgpercentualcofins +
                    ' ,itmaliqpis=' + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo='
                    + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo=' +
                    cfgcfgtoesubstanpforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;

              end;

            end;
          end
          else
          begin

            if (cfgcfgtoesubstforaestado.AsInteger <> 0) and (cfgcfgtoesubstnoestado.AsInteger <> 0) then
            begin

              if (etdtcbcodigo.AsInteger = 2) and (vlRetiraBalcao <> 1) then // contribuinte e nao presencial
              begin
                if itmproproducao.AsInteger = 1 then
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoeforasubsprodpropria.AsString;
                  consulta.Open;

                end
                else
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoesubstforaestado.AsString;
                  consulta.Open;

                end;

              end
              else
              begin
                if cfgcfgpresencialtoedestino.AsInteger = 1 then
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoesubstforaestado.AsString;
                  consulta.Open;

                end
                else
                begin

                  if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
                  begin

                    consulta.Close;
                    consulta.SQL.Text :=
                      'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                      + cfgcfgtoeintesubsprodpropria.AsString;
                    consulta.Open;
                  end
                  else
                  begin

                    consulta.Close;
                    consulta.SQL.Text :=
                      'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                      + cfgcfgtoesubstnoestado.AsString;
                    consulta.Open;
                  end;

                end;

              end;

              vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
              vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
              vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
              vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

              vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
              vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

              vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
              vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
              vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfop := consulta.FieldByName('toecfopsaida').AsString;

              vlTceCest := itmtcecest.AsString;

              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin
                if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.Close;
                    itmncm.SQL.Text := 'update itm set  itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoeforasubsprodpropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;

                end
                else
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.Close;
                    itmncm.SQL.Text := 'update itm set  itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoesubstforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;
                end;

              end
              else
              begin
                if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.Close;
                    itmncm.SQL.Text := 'update itm set  itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoeintesubsprodpropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;

                  end;
                end
                else
                begin

                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.Close;
                    itmncm.SQL.Text := 'update itm set  itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoesubstnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;
                end;
              end;

            end;

          end;
        end
        else if usEmitente = ufDestinatario then
        begin

          if itmproanpcodigo.AsString <> '' then // tem codigo anp
          begin

            if (cfgcfgdefinetoeatendimento.AsInteger = 1) then
            begin
              if (cfgcfgtoesubstanpnoestado.AsInteger <> 0) then
              begin

                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + itmtoecodigo.AsString;
                consulta.Open;

                vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
                vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
                vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
                vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

                vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
                vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

                vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
                vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
                vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfop := consulta.FieldByName('toecfopsaida').AsString;

                vlTceCest := itmtcecest.AsString;
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.Close;
                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo=' +
                    cfgcfgtoesubstanpnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;

              end;

            end
            else
            begin

              if (cfgcfgtoesubstanpnoestado.AsInteger <> 0) then
              begin

                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoesubstanpnoestado.AsString;
                consulta.Open;

                vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
                vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
                vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
                vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

                vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
                vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

                vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
                vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
                vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

                vlcfop := consulta.FieldByName('toecfopsaida').AsString;

                vlTceCest := itmtcecest.AsString;
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.Close;
                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo=' +
                    cfgcfgtoesubstanpnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;

              end;

            end;
          end
          else
          begin

            if (cfgcfgtoesubstnoestado.AsInteger <> 0) then
            begin

              if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
              begin

                if itmproproducao.AsInteger = 1 then
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoeintesubsprodpropria.AsString;

                  consulta.Open;

                end
                else
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoesubstnoestado.AsString;
                  consulta.Open;

                end;
              end
              else
              begin

                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoesubstnoestado.AsString;
                consulta.Open;

              end;

              vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
              vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
              vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
              vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;
              if consulta.FieldByName('toetextopermite').AsString <> '' then
              begin
                vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
              end;

              if consulta.FieldByName('toetextonaopermite').AsString <> '' then
              begin
                vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;
              end;

              vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
              vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
              vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

              vlcfop := consulta.FieldByName('toecfopsaida').AsString;

              vlTceCest := itmtcecest.AsString;

              itmncm.Close;

              if itmproproducao.AsInteger = 1 then
              begin
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoeintesubsprodpropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;

              end
              else
              begin
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoesubstnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;
              end;

            end;

          end;
        end;

      end
      else
      begin

        // sem substiuição

        if usEmitente <> ufDestinatario then
        begin
          if etdtcbcodigo.AsInteger = 2 then
          begin

            if (cfgcfgdefinetoeatendimento.AsInteger = 1) then
            begin

              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                + itmtoecodigo.AsString;
              consulta.Open;

            end
            else
            begin

              if cfgcfgpresencialtoedestino.AsInteger = 1 then
              begin

                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstnormal as cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoemesfora.AsString;
                consulta.Open;

              end
              else
              begin

                if (cfgcfgtoemesinte.AsInteger <> 0) or (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
                begin

                  if itmproproducao.AsInteger = 1 then
                  begin

                    if etdedrinscest.AsString <> '' then
                    begin
                      if etdufssigla.AsString <> cfgufssigla.AsString then
                      begin

                        consulta.Close;
                        consulta.SQL.Text :=
                          'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                          + cfgcfgtoeforaproducaopropria.AsString;
                        consulta.Open;

                      end
                      else
                      begin

                        consulta.Close;
                        consulta.SQL.Text :=
                          'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                          + cfgcfgtoeforaproducaopropria.AsString;
                        consulta.Open;

                      end;

                    end
                    else
                    begin

                      consulta.Close;
                      consulta.SQL.Text :=
                        'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                        + cfgcfgtoeforaproducaopropria.AsString;
                      consulta.Open;

                    end;

                  end
                  else
                  begin

                    if cfgcfgpresencialtoedestino.AsInteger = 1 then
                    begin

                      consulta.Close;
                      consulta.SQL.Text :=
                        'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                        + cfgcfgtoemesfora.AsString;
                      consulta.Open;

                    end
                    else
                    begin

                      consulta.Close;
                      consulta.SQL.Text :=
                        'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                        + cfgcfgtoemesinte.AsString;
                      consulta.Open;

                    end;
                  end;
                end
                else
                begin

                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite  from toe where toecodigo='
                    + cfgcfgtoemesfora.AsString;
                  consulta.Open;

                end;

              end;

            end;
            vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
            vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
            vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
            vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

            vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
            vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

            vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
            vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

            vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
            vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

            vlcfop := consulta.FieldByName('toecfopsaida').AsString;

            vlTceCest := itmtcecest.AsString;

            itmncm.Close;

            if cfgcfgpresencialtoedestino.AsInteger = 1 then
            begin
              if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
              begin
                if itmproproducao.AsInteger = 1 then
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoeforaproducaopropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;
                end
                else
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoemesfora.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;

                end;

              end
              else
              begin
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoemesfora.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;

              end;
            end
            else

            begin

              if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
              begin
                if itmproproducao.AsInteger = 1 then
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoeinteproducaopropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;
                end
                else
                begin
                  if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                  begin

                    itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins +
                      ' ,itmaliqpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) +
                      ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) +
                      ', toecodigo=' + cfgcfgtoemesfora.AsString + ' where itmchave=' + itmitmchave.AsString;
                    itmncm.ExecSQL;
                  end;

                end;
              end
              else
              begin
                if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
                begin

                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoemesfora.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end;
              end;

            end;

          end
          else
          begin

            if itmproproducao.AsInteger = 1 then
            begin
              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                + cfgcfgtoemesinte.AsString;
              consulta.Open;

            end
            else
            begin
              consulta.Close;
              consulta.SQL.Text :=
                'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                + cfgcfgtoemesinte.AsString;
              consulta.Open;
            end;

            vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
            vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
            vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
            vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

            vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
            vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

            vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
            vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

            vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
            vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

            vlcfop := consulta.FieldByName('toecfopsaida').AsString;

            vlTceCest := itmtcecest.AsString;
            if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
            begin

              itmncm.Close;

              itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' +
                vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                cfgcfgtoemesinte.AsString + ' where itmchave=' + itmitmchave.AsString;
              itmncm.ExecSQL;
            end;

          end;

          vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;

          vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;
          spd.Close;
          spd.Open;

          if (cfgcrtcodigo.AsInteger in [1, 2]) and (spdspdaliquotasimples.AsInteger = 0) then
          begin
            // vlToeMensagemPermite := '';
          end
          else
          begin
            vlToeMensagemNaoPermite := '';
          end;

        end
        else
        begin
          if (cfgcfgdefinetoeatendimento.AsInteger = 1) then
          begin

            consulta.Close;
            consulta.SQL.Text :=
              'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
              + itmtoecodigo.AsString;
            consulta.Open;

          end
          else
          begin

            if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
            begin

              if itmproproducao.AsInteger = 1 then
              begin
                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoeinteproducaopropria.AsString;
                consulta.Open;
              end
              else
              begin
                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoemesinte.AsString;
                consulta.Open;

              end;

            end
            else
            begin

              consulta.Close;
              consulta.SQL.Text := 'select etdcodigo, mespararevenda,mesretirabalcao from mes where meschave=' + vpMesChave;
              consulta.Open;

              vlRetiraBalcao := consulta.FieldByName('mesretirabalcao').AsInteger;
              vlParaRevenda := consulta.FieldByName('mespararevenda').AsInteger;

              if vlParaRevenda = 1 then
              begin

                if etdufssigla.AsString <> cfgufssigla.AsString then
                begin
                  if cfgcfgpresencialtoedestino.AsInteger = 1 then
                  begin
                    consulta.Close;
                    consulta.SQL.Text :=
                      'select toecfopsaida,cstnormal as cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                      + cfgcfgtoemesfora.AsString;
                    consulta.Open;
                  end
                  else
                  begin

                    consulta.Close;
                    consulta.SQL.Text :=
                      'select toecfopsaida,cstnormal as cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                      + cfgcfgtoemesinte.AsString;
                    consulta.Open;

                  end;

                end
                else
                begin
                  consulta.Close;
                  consulta.SQL.Text :=
                    'select toecfopsaida,cstnormal as cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                    + cfgcfgtoemesinte.AsString;
                  consulta.Open;

                end;

              end
              else
              begin

                consulta.Close;
                consulta.SQL.Text :=
                  'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
                  + cfgcfgtoemesinte.AsString;
                consulta.Open;
              end;

            end;

          end;

          vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
          vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
          vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
          vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

          vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
          vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

          vlcfgpercentualpis := consulta.FieldByName('cfgpercentualpis').AsString;
          vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

          vlcfgpercentualcofins := consulta.FieldByName('cfgpercentualcofins').AsString;
          vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

          vlcfop := consulta.FieldByName('toecfopsaida').AsString;

          vlTceCest := itmtcecest.AsString;

          if (cfgcfgtributacaoimendes.AsInteger = 0) or (mesttocodigo.AsInteger = 7) then
          begin

            itmncm.Close;
            if (cfgcfgdefinetoeatendimento.AsInteger = 1) then
            begin

              itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' +
                vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                itmtoecodigo.AsString + ' where itmchave=' + itmitmchave.AsString;
              itmncm.ExecSQL;
            end
            else
            begin

              if (cfgcfgtoeinteproducaopropria.AsInteger <> 0) then
              begin
                if itmproproducao.AsInteger = 1 then
                begin

                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoeinteproducaopropria.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;
                end
                else
                begin
                  itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis='
                    + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                    QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                    cfgcfgtoemesinte.AsString + ' where itmchave=' + itmitmchave.AsString;
                  itmncm.ExecSQL;

                end;

              end
              else
              begin
                itmncm.SQL.Text := 'update itm set itmcest=' + QuotedStr(vlTceCest) + '  , itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' +
                  vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' +
                  QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
                  cfgcfgtoemesinte.AsString + ' where itmchave=' + itmitmchave.AsString;
                itmncm.ExecSQL;

              end;

            end;
          end;
          vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;

          vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

        end;

      end;

      if mesttocodigo.AsInteger = 7 then
      begin
        itm.Edit;
        itmitmbicms.AsFloat := 0;
        itmitmbicm.AsFloat := 0;
        itmitmaliqicms.AsFloat := 0;;
        itmitmicms.AsFloat := 0;
        itmitmpercreducaobaseicm.AsCurrency := 0;
        itmcstcodigo.AsString := toecstnormal.AsString;
        itm.Post;

      end;

      itm.Next;
    End;
    {
      if (cfgcfgdefinetoeatendimento.AsInteger = 0) then
      begin

      consulta.Close;
      consulta.SQL.Text := 'select padcodigo from pro where procodigo=' + itmprocodigo.AsString;
      consulta.Open;
      if not consulta.IsEmpty then
      begin
      if consulta.FieldByName('padcodigo').AsString <> '' then
      begin
      pad.Close;
      pad.ParamByName('padcodigo').AsString := consulta.FieldByName('padcodigo').AsString;
      pad.Open;

      if not pad.IsEmpty then
      begin

      if (padpadpis.AsString <> '') and (padpadcofins.AsString <> '') then
      begin

      vlcspcodigo := padpadcodigopiscofins.AsString;
      vlcsfcodigo := padpadcodigopiscofins.AsString;

      vlcfgpercentualpis := padpadpis.AsString;
      vlcfgpercentualpis := StringReplace(vlcfgpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

      vlcfgpercentualcofins := padpadcofins.AsString;
      vlcfgpercentualcofins := StringReplace(vlcfgpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

      itmncm.Close;

      itmncm.SQL.Text := 'update itm set csfcodigo=' + QuotedStr(vlcsfcodigo) + '   ,cspcodigo=' + QuotedStr(vlcspcodigo) +
      '    ,itmaliqcofins=' + vlcfgpercentualcofins + ' ,itmaliqpis=' + vlcfgpercentualpis + ' where itmchave=' + itmitmchave.AsString;
      itmncm.ExecSQL;

      end;

      end;

      end;
      end;

      end;
    }
  end;
  // end;

  /// INICIAL
  /// tratativas de mengens de notas

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;

  itm.First;
  while not itm.Eof do
  begin

    consulta.Close;
    consulta.SQL.Text :=
      'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins, toetextopermite, toetextonaopermite from toe where toecodigo='
      + itmtoecodigo.AsString;
    consulta.Open;

    if mesmespararevenda.AsInteger = 1 then
    begin
      if itmcstcodigo.AsString = '101' then
      begin
        vlToeMensagemPermite := consulta.FieldByName('toetextopermite').AsString;
      end
      else
      begin
        vlToeMensagemPermite := consulta.FieldByName('toetextonaopermite').AsString;
      end;
    end
    else
    begin
      vlToeMensagemPermite := '';
    end;

    vlToeMensagemNaoPermite := consulta.FieldByName('toetextonaopermite').AsString;

    vlTofcodigo := 0;
    tof.Close;
    tof.Open;
    if vlToeMensagemPermite = #$D#$A then
      vlToeMensagemPermite := '';

    if vlToeMensagemNaoPermite = #$D#$A then
      vlToeMensagemNaoPermite := '';

    consulta.Close;
    consulta.SQL.Text := 'select etdregime from etd where etdcodigo=' + etdetdcodigo.AsString;
    consulta.Open;

    if ((etdtcbcodigo.AsInteger <> 2) and (consulta.FieldByName('etdregime').AsInteger <> 1)) or (mesmespararevenda.AsInteger = 0) then
    begin
      vlToeMensagemPermite := '';
    end;

    if consulta.FieldByName('etdregime').AsInteger = 2 then
    begin
      vlToeMensagemPermite := '';
    end;

    if (trim(vlToeMensagemPermite) <> '') then
    begin

      if not tof.Locate('tofidentificacao', trim(vlToeMensagemPermite), []) then
      BEGIN
        tof.Append;
        toftofidentificacao.AsString := trim(vlToeMensagemPermite);
        tofticcodigo.AsInteger := ticObservacao;
        tof.Post;
        vlTofcodigo := toftofcodigo.AsInteger;
      END
      else
      begin
        vlTofcodigo := toftofcodigo.AsInteger;
      end;
    end
    else if (trim(vlToeMensagemNaoPermite) <> '') then
    begin
      if not tof.Locate('tofidentificacao', trim(vlToeMensagemNaoPermite), []) then
      BEGIN

        tof.Append;
        toftofidentificacao.AsString := trim(vlToeMensagemNaoPermite);
        tofticcodigo.AsInteger := ticObservacao;
        tof.Post;
        vlTofcodigo := toftofcodigo.AsInteger;
      END
      else
      begin
        vlTofcodigo := toftofcodigo.AsInteger;
      end;
    end;

    if vlToeMensagemNaoPermite <> '' then
    begin
      if vlTofcodigo <> 0 then
      begin
        mestom.Close;
        mestom.SQL.Text := 'select tomchave, meschave, tof.tofcodigo from tom,tof where tof.tofidentificacao=' + QuotedStr(vlToeMensagemNaoPermite) +
          ' and tom.tofcodigo and meschave=' + vpMesChave + ' and tof.tofcodigo=' + vlTofcodigo.ToString;
        mestom.Open;

        if mestom.IsEmpty then
        begin
          mestom.Append;
          mestom.FieldByName('meschave').AsString := vpMesChave;
          mestom.FieldByName('tofcodigo').AsString := vlTofcodigo.ToString;
          mestom.Post;
        end;

      end;

    end;

    if vlToeMensagemPermite <> '' then
    begin
      if vlTofcodigo <> 0 then
      begin
        mestom.Close;
        mestom.SQL.Text := 'select tomchave, meschave, tof.tofcodigo from tom,tof where tof.tofidentificacao=' + QuotedStr(vlToeMensagemPermite) +
          ' and tom.tofcodigo and meschave=' + vpMesChave + ' and tof.tofcodigo=' + vlTofcodigo.ToString;
        mestom.Open;

        if mestom.IsEmpty then
        begin
          mestom.Append;
          mestom.FieldByName('meschave').AsString := vpMesChave;
          mestom.FieldByName('tofcodigo').AsString := vlTofcodigo.ToString;
          mestom.Post;
        end;

      end;

    end;

    vlTofcodigo := 0;
    itm.Next;

  End;

  // ok substituição
  vlTofcodigo := 0;
  if not tof.Locate('tofidentificacao', trim('ICMS cobrado anteriormente por substituicao Tributaria'), []) then
  BEGIN

    tof.Append;
    toftofidentificacao.AsString := trim('ICMS cobrado anteriormente por substituicao Tributaria');
    tofticcodigo.AsInteger := ticObservacao;
    tof.Post;
    vlTofcodigo := toftofcodigo.AsInteger;
  END;

  if (itm.Locate('toecodigo', cfgcfgtoesubstnoestado.AsInteger, [])) or (itm.Locate('toecodigo', cfgcfgtoesubstforaestado.AsInteger, [])) or
    (itm.Locate('toecodigo', cfgcfgtoesubstanpnoestado.AsInteger, [])) or (itm.Locate('toecodigo', cfgcfgtoesubstanpforaestado.AsInteger, [])) then
  begin

    if vlTofcodigo <> 0 then
    begin
      mestom.Close;
      mestom.SQL.Text := 'select tomchave, meschave, tofcodigo from tom where meschave=' + vpMesChave + ' and tofcodigo=' + vlTofcodigo.ToString;
      mestom.Open;

      if mestom.IsEmpty then
      begin
        mestom.Append;
        mestom.FieldByName('meschave').AsString := vpMesChave;
        mestom.FieldByName('tofcodigo').AsString := vlTofcodigo.ToString;
        mestom.Post;
      end;

    end;

  end;

  // operação presencial ok
  if not tof.Locate('tofidentificacao', trim('Operacao Presencial/Venda no Balcao'), []) then
  BEGIN

    tof.Append;
    toftofidentificacao.AsString := trim('Operacao Presencial/Venda no Balcao');
    tofticcodigo.AsInteger := ticObservacao;
    tof.Post;
    vlTofcodigo := toftofcodigo.AsInteger;
  END;

  if mesmesretirabalcao.AsInteger = 1 then
  begin
    if vlTofcodigo <> 0 then
    begin
      mestom.Close;
      mestom.SQL.Text := 'select tomchave, meschave, tofcodigo from tom where meschave=' + vpMesChave + ' and tofcodigo=' + vlTofcodigo.ToString;
      mestom.Open;

      if mestom.IsEmpty then
      begin
        mestom.Append;
        mestom.FieldByName('meschave').AsString := vpMesChave;
        mestom.FieldByName('tofcodigo').AsString := vlTofcodigo.ToString;
        mestom.Post;
      end;

    end;

  end;

  /// FINAL
  /// tratativas de mengens de notas








  // fim do ajusta o toe do item para produto com substituição

end;

Procedure Tfnfepdv.mReimprimirNFe;
Var
  vCStatus: Integer;
Begin

  If FileExists(vpArquivoNFe) Then
  Begin

    CarregaNFe(vpArquivoNFe);

    vCStatus := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.CStat;

    if not vCStatus = 100 then
    begin
      Application.MessageBox(PChar('NF-e não autorizada. Não pode ser impressa.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update mes set temcodigo=4 where meschave=' + vpMesChave;
      consulta.ExecSQL;
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

      exit;
    end;

    ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

    if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
    begin
      ACBrNFeDANFEFR.MostraPreview := True;
      ACBrNFeDANFEFR.MostraSetup := True;
    end;

    ACBrNFeNotas.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
    ACBrNFeNotas.NotasFiscais.ImprimirPDF;

  End
  else
    showmessage('457881 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');
End;


Procedure Tfnfepdv.mEnviarNFe;
Begin

  consulta.Close;
  consulta.SQL.Text := 'select etdnfemodelos from etd,mes where etd.etdcodigo=mes.etdcodigo and mes.etdcodigo=' + vpMesChave;
  consulta.Open;

  { if (consulta.FieldByName('etdnfemodelos').AsString = '99') or (consulta.FieldByName('etdnfemodelos').AsString = '55') then
    begin }

  if not vpConsultouSEFAZ then
    mConsultaSEFAZ;

  ImprimeNFe;

  { end
    else
    begin
    showmessage('Documento fiscal não autorizado para este cliente!');
    Exit;
    end; }
End;

Procedure Tfnfepdv.mGerarPDF;
Var
  narq: String;
  vCStat: Integer;
Begin

  narq := vpArquivoNFe;

  If FileExists(narq) Then
  Begin
    CarregaNFe(narq);

    vCStat := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.CStat;

    if not vCStat = 100 then
    begin
      Application.MessageBox(PChar('NF-e não autorizada. Não pode ser gerado PDF.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);

      exit;
    end;

    ACBrNFeNotas.NotasFiscais.ImprimirPDF;
  End
  else
    showmessage('543228 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');
End;

Procedure Tfnfepdv.mInutilizarNumeroNFeDireto;
Var
  modelo, serie, Ano, mes, NumeroInicial, NumeroFinal, Justificativa: String;
Begin
  consulta.Close;
  consulta.SQL.Text := 'select mesregistro, mesnumero from mes where meschave=' + vpMesChave;
  consulta.Open;

  if consulta.IsEmpty then
  begin
    showmessage('Registro não localizado para inutilização de numeração!');
    exit;
  end;

  if not LerConfiguracao then
    exit;

  if not vpConsultouSEFAZ then
    mConsultaSEFAZ;

  Ano := IntToStr(YearOf(consulta.FieldByName('mesregistro').AsFloat));
  mes := IntToStr(MonthOf(consulta.FieldByName('mesregistro').AsFloat));

  NumeroInicial := consulta.FieldByName('mesnumero').AsString;
  NumeroFinal := consulta.FieldByName('mesnumero').AsString;
  Justificativa := 'Falha na emissão do documento fiscal';

  ACBrNFeNotas.WebServices.Inutiliza(cfgetddoc1.AsString, Justificativa, StrToInt(Ano), 55, 1, StrToInt(NumeroInicial), StrToInt(NumeroFinal));

  rni.Open;
  rni.Append;
  rnirniano.AsString := Ano;
  rnirnimes.AsString := mes;
  rnitdfcodigo.AsString := '55';
  rnirninumeroinicial.AsString := NumeroInicial;
  rnirninumerofinal.AsString := NumeroFinal;
  rnirnijutificativa.AsString := Justificativa;
  rni.Post;

  consulta.Close;
  consulta.SQL.Text := 'set @disable_triggers=1';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE mes,toe SET   mesnumero=0, temcodigo=2, tdfcodigo=' + QuotedStr('00') + ', meschavenfe=' + QuotedStr('') +
    ', mesprotocolo=' + QuotedStr('') + ', mesdatanfe=null WHERE mes.toecodigo=toe.toecodigo and mesnumero>=' + NumeroInicial + ' and mesnumero<=' +
    NumeroFinal + ' and sdecodigo=' + QuotedStr('00') + ' AND tdfcodigo=' + QuotedStr('55') + ' AND toe.ttocodigo=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'set @disable_triggers=null';
  consulta.ExecSQL;

  rni.Close;
End;







Procedure Tfnfepdv.mConsultaSEFAZ;
var
  vlRetornoErro: string;
Begin

  ACBrNFeNotas.Configuracoes.WebServices.Visualizar := True;
  try
    ACBrNFeNotas.WebServices.StatusServico.Executar;
    self.vpRetorno := UTF8Encode(ACBrNFeNotas.WebServices.StatusServico.RetWS);

  except
    on E: Exception do
    begin
      vlRetornoErro := E.Message;
      Application.MessageBox(PChar('Falha de conexão com servidores da SEFAZ.' + #13 + #13 + 'Mensagem: ' + #13 + vlRetornoErro),
        'Falha comunicação WebService', MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
    end;
  end;
End;

Function Tfnfepdv.mCodigoConsultaSEFAZ: string;
Begin
  Result := '000 - Falha de conexao';
  ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;

  try
    ACBrNFeNotas.WebServices.StatusServico.Executar;
    Result := IntToStr(ACBrNFeNotas.WebServices.StatusServico.CStat) + ' - ' + ACBrNFeNotas.WebServices.StatusServico.xMotivo;
  except
    Result := '000 - Falha de conexao';
  end;

End;

Function Tfnfepdv.mConsultaSEFAZInterna: Boolean;
Begin
  Result := False;
  ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;
  try
    ACBrNFeNotas.WebServices.StatusServico.Executar;
  except
    vpStatSEFAZ := ACBrNFeNotas.WebServices.StatusServico.CStat;
    Result := False;
  end;
  (* Verifica se código de retorno é igual a 107 - Serviço em Operação *)
  if ACBrNFeNotas.WebServices.StatusServico.CStat = 107 then
  begin
    vpStatSEFAZ := ACBrNFeNotas.WebServices.StatusServico.CStat;
    Result := True;
  end;
End;

function Tfnfepdv.impcertificado: string;
var
  impnfe: timpnfe;

  ch: string;
  vu: string;
  vpack: Cardinal;
begin
  vpack := LoadPackage('modulos\minfe.bpl');
  if vpack <> 0 then
    try
      @impnfe := GetProcAddress(vpack, PChar('conscertificadonfe'));
      if Assigned(impnfe) then
      begin
        ch := impnfe(Application, self.zcone, '', '');
        Result := ch;
      end;
    finally
      // UnLoadPackage(vpack);
    end;
End;

function Tfnfepdv.DefineVertical: String;
var
  vlTipoVertical: string;
begin
  vpPathAplicativo := ExtractFilePath(Application.ExeName);

  if FileExists(vpPathAplicativo + 'GourmetERP.exe') then
    vlTipoVertical := 'Gourmet'
  else if FileExists(vpPathAplicativo + 'MercatoERP.exe') then
    vlTipoVertical := 'Mercato'
  else if FileExists(vpPathAplicativo + 'BoutiqueERP.exe') then
    vlTipoVertical := 'Boutique'
  else if FileExists(vpPathAplicativo + 'VarejoERP.exe') then
    vlTipoVertical := 'Varejo';

  Result := vlTipoVertical;

end;

function Tfnfepdv.LerConfiguracao: Boolean;
Var
  IniFile: String;
  Ini: TIniFile;
  ok: Boolean;
  StreamMemo: TMemoryStream;
  vlPrograma: string;
Begin
  Result := True;

  vlPrograma := DefineVertical;

  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + vlPrograma + 'erp.ini');

  // Try

  if cfgcfgmodonfe.AsInteger = 2 then
    plmodonfe.Caption := 'Homologação'
  else
    plmodonfe.Caption := 'Produção';

  if cfgcfgversao.AsFloat = 4 then
    ACBrNFeNotas.Configuracoes.Geral.VersaoDF := ve400
  else
    ACBrNFeNotas.Configuracoes.Geral.VersaoDF := ve310;

  ACBrNFeDANFEFR := TACBrNFeDANFEFR.Create(self);

  if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
  begin
    ACBrNFeDANFEFR.MostraPreview := True;
    ACBrNFeDANFEFR.MostraSetup := True;
  end;
  ACBrNFeNotas.DANFE := ACBrNFeDANFEFR;

  mes.Close;
  mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
  mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  mes.Open;

  rfi.Close;
  rfi.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
  rfi.Open;

  if rfi.RecordCount > 0 then
  begin
    ACBrNFeDANFEFR.ExibeCampoFatura := True;
  end;

  ACBrNFeNotas.Configuracoes.WebServices.ResourceName := 'ACBrNFeServicos';
  ACBrNFeNotas.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'schemas';
  ACBrNFeNotas.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName) + 'schemas\ACBrNFeServicos.ini';

  ACBrNFeNotas.Configuracoes.Geral.SSLLib := libWinCrypt;
  ACBrNFeNotas.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
  ACBrNFeNotas.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
  ACBrNFeNotas.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;

  ACBrNFeNotas.Configuracoes.Certificados.NumeroSerie := self.cfgcfgnumecertif.AsString;
  ACBrNFeNotas.Configuracoes.Certificados.Senha := cfgcfgsenhacertificadoa1.AsString;

  ACBrNFeNotas.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrNFeNotas.Configuracoes.Geral.Salvar := True;

  ACBrNFeNotas.Configuracoes.WebServices.UF := UpperCase(self.cfgufssigla.AsString);

  if cfgcfgmodonfe.AsInteger = 2 then
    ACBrNFeNotas.Configuracoes.WebServices.Ambiente := taHomologacao;

  if cfgcfgmodonfe.AsInteger = 1 then
    ACBrNFeNotas.Configuracoes.WebServices.Ambiente := taProducao;

  ACBrNFeNotas.Configuracoes.WebServices.Visualizar := True;

  ACBrNFeNotas.Configuracoes.WebServices.ProxyHost := Ini.ReadString('Proxy', 'Host', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyPort := Ini.ReadString('Proxy', 'Porta', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyUser := Ini.ReadString('Proxy', 'User', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyPass := Ini.ReadString('Proxy', 'Pass', '');

  If ACBrNFeNotas.DANFE <> Nil Then
  Begin
    ACBrNFeNotas.DANFE.TipoDANFE := StrToTpImp(ok, IntToStr(Ini.ReadInteger('Mizio', 'DANFE', 1)));

    If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
    Begin
      ACBrNFeNotas.DANFE.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
      ACBrNFeDANFEFR.ExpandeLogoMarca := True;
    End;
  End;

  ACBrNFeDANFEFR.FastFile := vPastaPrincipal + 'Report\DanfeRetrato.fr3';
  ACBrNFeDANFEFR.Sistema := 'www.miziosistemas.com.br - Mizio Sistemas - (66) 3544-2765';
  ACBrNFeDANFEFR.FastFileEvento := vPastaPrincipal + 'Report\EVENTOS.fr3';
  plrelatorio.Caption := 'Arquivo: ' + ACBrNFeDANFEFR.FastFile;
  consulta.Close;
  consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + Acesso.Usuario.ToString;
  consulta.Open;
  ACBrNFeDANFEFR.Usuario := consulta.FieldByName('clbidentificacao').AsString;

  ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
  StreamMemo := TMemoryStream.Create;
  Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
  ACBrNFeNotas.Configuracoes.Geral.SSLHttpLib := httpWinINet;

  ACBrNFeNotas.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao := tzManual;
  ACBrNFeNotas.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := '-04:00';

  StreamMemo.Free;

  // Finally
  // Ini.Free;
  // End;

End;

procedure Tfnfepdv.ACBrNFeNotasStatusChange(Sender: TObject);
begin
  plstatus.Caption := 'Processando...';
  Application.processmessages;

end;

procedure Tfnfepdv.AjustaCaminhoGeralNF(Data: TDate);
var
  vAnoMesNFe: string;
begin
  // verifca se os diretorios existem se nao ja cria os mesmos
  if not DirectoryExists(vPastaPrincipal + 'pdfs') then
    ForceDirectories(vPastaPrincipal + 'pdfs');

  if not DirectoryExists(vPastaPrincipal + vSubPastaDoc) then
    ForceDirectories(vPastaPrincipal + vSubPastaDoc);

  vAnoMesNFe := vPastaPrincipal + vSubPastaDoc + '\' + formatdatetime('yyyymm', Data);

  if not DirectoryExists(vAnoMesNFe) then
    ForceDirectories(vAnoMesNFe);
  ACBrNFeNotas.Configuracoes.Arquivos.PathSalvar := vAnoMesNFe + '\';
end;

procedure Tfnfepdv.ajustafuncao;
begin
  // oculta todas paginas para mostrar só a corrente
  self.emissao.TabVisible := False;
  self.consultasefaz.TabVisible := False;

  // processa comando
  case vRotinaNFe of
    rnfGerarNFe:
      self.emissao.TabVisible := True;
    rnfStatusSefaz:
      self.consultasefaz.TabVisible := True;
  end;

end;

procedure Tfnfepdv.Inicializar;
begin
  self.Width := 500;
  self.Height := 250;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsString := vpFilial;
  cfg.Open;

end;


Procedure Tfnfepdv.bcancelaClick(Sender: TObject);
Begin
  Close;
End;

Procedure Tfnfepdv.bconfirmaClick(Sender: TObject);
Begin
  try
    processa;
  finally
    Close;
  end;
End;

Procedure Tfnfepdv.CarregaNFe(narq: String);
Begin
  ACBrNFeNotas.NotasFiscais.Clear;
  ACBrNFeNotas.NotasFiscais.LoadFromFile(narq);

End;


function Tfnfepdv.VerificaPreExistencia(tipo: string): Boolean;
var
  vnrnfe, vnrser: Integer;
  xndoc1: String;
  xnnfe: String;
  xnarq: String;
  vAnoMesNFe: String;
  vData: Double;
  vRetorno: Boolean;
begin

  CheckBox2.Checked := True;
  application.ProcessMessages;

  vRetorno := False;

  if mes.FieldByName('mesnumero').AsInteger = 0 then
  begin
    NumeroNFe.Close;
    NumeroNFe.ParamByName('flacodigo').AsString := vpFilial;
    NumeroNFe.ExecSQL;
    vnrnfe := NumeroNFe.Fields[0].AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update mes set mesnumero=' + vnrnfe.ToString + ' where meschave=' + fnfepdv.vpMesChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'set @disable_triggers=null';
    consulta.ExecSQL;

    mes.Close;
    mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
    mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    mes.Open;

  end;

  vnrnfe := mes.FieldByName('mesnumero').AsInteger;
  try
    vnrser := mes.FieldByName('messerie').AsInteger;
    // serie:=cfgcfgserienfe.AsInteger;
  except
    vnrser := 1;
  end;

  if vnrnfe = 0 then
    exit;
  if mesmesdatanfe.AsString <> '' then
  begin
    if mesmesdatanfe.AsFloat <> 0 then
      vData := mesmesdatanfe.AsFloat
    else
      vData := mesmesregistro.AsFloat;
  end
  else
    vData := mesmesregistro.AsFloat;

  vAnoMesNFe := vPastaPrincipal + fnfepdv.vSubPastaDoc + '\' + formatdatetime('yyyymm', vData);

  xndoc1 := SomenteNumeros(cfgetddoc1.AsString);

  xnnfe := Copy(cfgcddcodigo.AsString, 1, 2);
  xnnfe := xnnfe + formatdatetime('yymm', vData);
  xnnfe := xnnfe + xndoc1;
  xnnfe := xnnfe + tipo;
  xnnfe := xnnfe + formatfloat('000', vnrser);
  xnnfe := xnnfe + formatfloat('000000000', vnrnfe);
  xnnfe := xnnfe + '1';
  xnnfe := xnnfe + formatfloat('00000000', vnrnfe);
  xnnfe := xnnfe + Modulo11(trim(xnnfe));

  xnarq := xnnfe + '-nfe.xml';

  vpArquivoNFe := vAnoMesNFe + '\' + xnarq;

  if (FileExists(vAnoMesNFe + '\' + xnarq)) then
    if mConsultaNFe then
    begin
      (* Consulta não foi realizada corretamente e para não tentar gerar novamente a NF-e retorna como True *)
      if vpErroConsultaNFe then
        exit(True);

      mReimprimirNFe;
      mGerarPDF;

      vRetorno := True;
    end;

  Result := vRetorno;
end;




Procedure Tfnfepdv.AjustaObservacoes;
var
  vlTofcodigo: String;
Begin

  tom.Close;
  tom.Params[0].AsString := vpMesChave;
  tom.Open;

  If cfgcfgobs1.AsInteger > 0 Then
    If Not tom.Locate('tofcodigo', cfgcfgobs1.AsInteger, []) Then
    Begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + cfgcfgobs1.AsString + ')';
      qconsulta.ExecSQL;
    End;

  If cfgcfgobs2.AsInteger > 0 Then
    If Not tom.Locate('tofcodigo', cfgcfgobs2.AsInteger, []) Then
    Begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + cfgcfgobs2.AsString + ')';
      qconsulta.ExecSQL;
    End;

  If cfgcfgobs3.AsInteger > 0 Then
    If Not tom.Locate('tofcodigo', cfgcfgobs3.AsInteger, []) Then
    Begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + cfgcfgobs3.AsString + ')';
      qconsulta.ExecSQL;
    End;

  If cfgcfgobs4.AsInteger > 0 Then
    If Not tom.Locate('tofcodigo', cfgcfgobs4.AsInteger, []) Then
    Begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + cfgcfgobs4.AsString + ')';
      qconsulta.ExecSQL;
    End;

  if toetoedescricao.AsString <> '' then
  begin
    qconsulta.Close;
    qconsulta.SQL.Text := 'select tofcodigo from tof where lower(tofidentificacao)=' + QuotedStr(lowercase(toetoedescricao.AsString));
    qconsulta.Open;

  end;
  tom.Refresh;

End;


procedure Tfnfepdv.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;

  vlArquivo := ExtractFilePath(Application.ExeName) + 'Logs\NFe\' + formatdatetime('yyyymmddhhnnsszzz', now()) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

procedure Tfnfepdv.TmConfirmaTimer(Sender: TObject);
begin
 TmConfirma.Enabled:=False;
 bconfirmaClick(bconfirma);
end;



Function Tfnfepdv.mConsultaNFe(vMOstraConsulta: Boolean = False): Boolean;
Var
  nProt: String;
  vnrnfe: String;
  vchNFe: String;
  vdtNFe: String;
  vhrNFe: String;
  vCodStatusNFe: String;
  vMsgStatusNFe: String;
  vRetorno: Boolean;
  vlRetornoErro: string;
  vDtAutorizacao: Double;
Begin

  vRetorno := False;

  {If not FileExists(vpArquivoNFe) Then
  Begin
    if (cfgcfgservarqnfes.AsString <> '127.0.0.1')  then
    begin
      vpArquivoNFe := BaixaXMLServidor(IPServidorArquivos, vpArquivoNFe);
    end;
  End;}

  If FileExists(vpArquivoNFe) Then
  Begin

    ACBrNFeNotas.NotasFiscais.Clear;
    ACBrNFeNotas.NotasFiscais.LoadFromFile(vpArquivoNFe);

    ACBrNFeNotas.Configuracoes.WebServices.Visualizar := False;

    ACBrNFeNotas.Consultar;
    vdtNFe := DateToStr(ACBrNFeNotas.NotasFiscais[0].NFe.ide.dEmi);
    vhrNFe := TimeToStr(ACBrNFeNotas.NotasFiscais[0].NFe.ide.dEmi);
    nProt := ACBrNFeNotas.WebServices.consulta.Protocolo;
    vDtAutorizacao := ACBrNFeNotas.WebServices.consulta.DhRecbto;
    vchNFe := ACBrNFeNotas.WebServices.consulta.NFeChave;
    vCodStatusNFe := IntToStr(ACBrNFeNotas.WebServices.consulta.CStat);
    vMsgStatusNFe := ACBrNFeNotas.WebServices.consulta.xMotivo;

    vnrnfe := IntToStr(ACBrNFeNotas.NotasFiscais.Items[0].NFe.ide.nNF);

    (* Verifica código de retorno é igual a 100 - Uso Autorizado *)

    If ACBrNFeNotas.WebServices.consulta.CStat = 100 Then
    begin
      // Try
      vRetorno := True;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL;

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET ';
      qconsulta.SQL.add('mesregistro = ' + QuotedStr(ajustadata(vdtNFe)) + ', ');
      qconsulta.SQL.add('mesnumero = ' + QuotedStr(vnrnfe) + ', ');
      qconsulta.SQL.add('meschavenfe = ' + QuotedStr(vchNFe) + ', ');
      qconsulta.SQL.add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
      qconsulta.SQL.add('tdfcodigo = ' + QuotedStr('55') + ', ');
      qconsulta.SQL.add('temcodigo = 5, ');
      qconsulta.SQL.add('mesprotocolo = ' + QuotedStr(nProt) + ' WHERE ');
      qconsulta.SQL.add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
      qconsulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL;

      // try
      vpArquivoNFe := GeraNomeNFe(vpMesChave);

      if FileExists(vpArquivoNFe) then
      begin

      {  if (cfgcfgservarqnfes.AsString <> '127.0.0.1') and (pos('\', cfgcfgservarqnfes.AsString) = 0) then
        begin
          EnviaXMLServidor(cfgcfgservarqnfes.AsString, vpArquivoNFe);
        end;}

        if not mes.Active then
        begin
          mes.Close;
          mes.ParamByName('meschave').AsString := fnfepdv.vpMesChave;
          mes.ParamByName('flacodigo').AsInteger := Acesso.Filial;
          mes.Open;
        end;

      end;
      // except
      // end;

      qconsulta.Close;
      qconsulta.SQL.Text := 'select mesregistro,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vpMesChave;
      qconsulta.Open;
      if vMOstraConsulta then
      begin
        showmessage('Emissão: ' + qconsulta.Fields[0].AsString + ''#13'' + (* *)
          'Nr. NFE: ' + qconsulta.Fields[1].AsString + ''#13'' + (* *)
          'Chave  : ' + qconsulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
          'Código Status: ' + vCodStatusNFe + #13 + (* *)
          'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
          'Protocolo Nr.: ' + nProt + #13 + (* *)
          'Data  e  Hora: ' + datetimetostr(vDtAutorizacao));

      end;
      qconsulta.Close;

      // Except
      // End;
    end;

  End
  Else
    showmessage('564228 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');

  Result := vRetorno;
End;


Procedure Tfnfepdv.mEmailNFe;
Var
  narq, npdf: String;
  emailscc: string;
  emails: string;
  vlArqs: TStringList;
  vlNomeArquivo: String;
Begin
  try
    vpArquivoNFe := GeraNomeNFe(vpMesChave);
    narq := vpArquivoNFe;

    if (pos('arqnfes', vpArquivoNFe) > 0) and (pos('conarqnfes', vpArquivoNFe) = 0) then
    begin
      vlNomeArquivo := StringReplace(vpArquivoNFe, 'arqnfes', 'conarqnfes', []);
    end;

    if FileExists(narq) then
    begin

      if not DirectoryExists(ExtractFilePath(vlNomeArquivo)) then
        ForceDirectories(ExtractFilePath(vlNomeArquivo));

      copyfile(PChar(vpArquivoNFe), PChar(vlNomeArquivo), False);

    end;

   { If not FileExists(vpArquivoNFe) Then
    Begin
      if (cfgcfgservarqnfes.AsString <> '127.0.0.1')  then
      begin
        vpArquivoNFe := BaixaXMLServidor(IPServidorArquivos, vpArquivoNFe);
      end;
    End;}

    if (pos('arqnfes', vpArquivoNFe) > 0) and (pos('conarqnfes', vpArquivoNFe) = 0) then
    begin
      vpArquivoNFe := StringReplace(vpArquivoNFe, 'arqnfes', 'conarqnfes', []);
    end;

    narq := vpArquivoNFe;

    qEteMes.Close;
    qEteMes.Params[0].AsString := vpMesChave;
    qEteMes.Params[1].AsInteger := Acesso.Filial;
    qEteMes.Open;

    emails := '';
    emailscc := '';

    qEteMes.First;
    while not qEteMes.Eof do
    begin
      if pos('@', qEteMeseteemail.AsString) > 0 then
        if emails = '' then
          emails := qEteMeseteemail.AsString
        else if pos(qEteMeseteemail.AsString, emailscc) = 0 then
          emailscc := emailscc + qEteMeseteemail.AsString + ';';

      qEteMes.Next;
    end;

    emailscc := Copy(emailscc, 1, Length(emailscc) - 1);

    npdf := ExtractFileName(narq);
    npdf := Copy(npdf, 1, pos('-', npdf) - 1);
    npdf := vPastaPrincipal + 'pdfs\NFe\' + npdf + '-nfe.pdf';

    if not DirectoryExists(vPastaPrincipal + 'pdfs\NFe\') then
      ForceDirectories(vPastaPrincipal + 'pdfs\NFe\');

    if not(FileExists(narq)) then
    begin
      Application.MessageBox(PChar('9275 Arquivo XML da NF-e não foi localizado!' + #13 + #13 + 'Arquivo: ' + narq), 'Atenção',
        MB_ICONWARNING + MB_OK);
      exit;
    end;

    if (FileExists(npdf)) = False then
    begin
      narq := vpArquivoNFe;

    end;

    If FileExists(narq) Then
    Begin
      CarregaNFe(narq);
      ACBrNFeNotas.NotasFiscais.ImprimirPDF;
    End;

    if not(FileExists(npdf)) then
    begin
      Application.MessageBox(PChar('9281 Arquivo PDF da NF-e não foi localizado!' + #13 + #13 + 'Arquivo: ' + npdf), 'Atenção',
        MB_ICONWARNING + MB_OK);
      exit;
    end;


    If EnviarEmail(emails, emailscc, 'Esta NFE foi emitida tendo sua empresa como destino.', 'NFE emitida pela empresa: ' + cfgetdapelido.AsString,
      narq, npdf, qEteMesetdidentificacao.AsString, cfgetdapelido.AsString) Then
    begin
      Application.MessageBox(PChar('Email enviado com sucesso para: ' + qEteMesetdidentificacao.AsString + #13 + 'Email: ' + emails + #13 +
        'Cópias: ' + emailscc), 'ENVIO CONCLUÍDO', MB_OK + MB_ICONINFORMATION)

    end;


  except
    on E: Exception do
    begin
      showmessage('erro ' + E.Message);
      SalvarLogErro(E.Message, E.StackTrace);
    end;
  end;
End;


Function Tfnfepdv.EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  vEnviado: Boolean;
  vlCNPJ: String;
  vlResponder: TIdEmailAddressList;
  Attachmentxml: TIdAttachmentFile;
  Attachmentpdf: TIdAttachmentFile;
  vlMensagemErro: String;
  vlXMLCloud: Boolean;
  vlPDFCloud: Boolean;

  vCStat: Integer;
  vlxmlnovo: string;
Begin

  vEnviado := False;
  Result := vEnviado;
  if trim(destino) = '' then
  begin
    Application.MessageBox(PChar('Email do destinatário não cadastrado.' + #13 + #13 + 'Cadastre o email do cliente e envie novamente.'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    exit;

  end;

  if trim(cfgcfgemailnfe.AsString) = '' then
  begin
    Application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 +
      'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  if (trim(destino) = '') then
  begin
    destino := cfgctdboxedominio.AsString;
  end
  else
  begin
    if cfgctdboxedominio.AsString <> '' then
    begin
      copias := copias + ' ' + cfgctdboxedominio.AsString;
      copias := trim(copias);
      copias := StringReplace(copias, ' ', ';', [rfReplaceAll, rfIgnoreCase]);
    end;
  end;

  if (trim(destino) = '') and (trim(copias) = '') then
  begin
    Application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    exit;
  end;

  if lowercase(cfgcfgemailnfe.AsString) = 'nfe@miziosistemas.com.br' then
  begin
    // vlXMLCloud := SalvarArquivoCloud('NFe', xml);
    // vlPDFCloud := SalvarArquivoCloud('PDF', pdf);

    vlXMLCloud := True;
    vlPDFCloud := True;

    if (trim(destino) = '') then
    begin
      destino := cfgctdboxedominio.AsString;
    end
    else
    begin
      if cfgctdboxedominio.AsString <> '' then
      begin
        copias := copias + ' ' + cfgctdboxedominio.AsString;
        copias := trim(copias);
        copias := StringReplace(copias, ' ', ';', [rfReplaceAll, rfIgnoreCase]);
      end;
    end;

    if vlXMLCloud and vlPDFCloud then
    begin

      vlCNPJ := SomenteNumeros(cfgetddoc1.AsString);

      {

        If not FileExists(vpArquivoNFe) Then
        Begin

        if (cfgcfgservarqnfes.AsString <> '127.0.0.1')  then
        begin
        xml := BaixaXMLServidor(IPServidorArquivos, xml);
        end;

        End;

        vlxmlnovo:=stringreplace(xml,'arqnfes', 'conarqnfes',[]);

        CarregaNFe(vlxmlnovo);

        vCStat := ACBrNFeNotas.NotasFiscais.Items[0].NFe.procNFe.CStat;

        ACBrNFeNotas.NotasFiscais.ImprimirPDF;
      }

      // try
     // verificar se ativa     vEnviado := PublicarEmail(vlCNPJ, destino, copias, texto + #13 + #13 + cfgcfgtextoemail.AsString, assunto, xml, pdf, nome_cliente, nome_empresa);
      Result := vEnviado;

      // except
      // sleep(2000);
      // vEnviado := PublicarEmail(vlCNPJ, destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa);
      // Result := vEnviado;
      // end;

    end
    else
    begin
      vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + 'Falha de comunicação, por favor envie novamente!';
      Application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);

    end;
  end
  else
  begin

    Inicializar;

    emailnfe.TabVisible := True;
    paginas.ActivePage := emailnfe;

    mostraemail.Visible := True;


    AtualizaMensagemEmail(1, 'Cerregando configuração.');

    Try
      AtualizaMensagemEmail(2, 'Criando mensagem.');

      IdMessage1.Clear;
      IdMessage1.Body.Clear;
      IdMessage1.Body.Text := texto + #13 + #13 + cfgcfgtextoemail.AsString; // Corpo da mensagem.
      IdMessage1.Subject := assunto; // Assunto
      IdMessage1.From.Text := lowercase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
      IdMessage1.From.Name := nome_empresa; // Nome para apresentação

      IdMessage1.CCList.EMailAddresses := copias; // Com cópia
      IdMessage1.BccList.EMailAddresses := copias;

      IdMessage1.Recipients.EMailAddresses := destino; // email destino

      IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text;

      vlResponder := TIdEmailAddressList.Create(self);
      vlResponder.EMailAddresses := cfgeteemail.AsString;
      IdMessage1.InReplyTo := cfgeteemail.AsString;
      IdMessage1.ReplyTo := vlResponder;

      AtualizaMensagemEmail(3, 'Anexando XML');

      if FileExists(xml) then
        Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml);

      AtualizaMensagemEmail(4, 'Anexando PDF');

      mostraemail.Repaint;

      if FileExists(pdf) then
        Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf);

      AtualizaMensagemEmail(5, 'Conectando...');

      // Conectando e enviando
      Try
        SMTP.Connect; // Inicia conexão

        AtualizaMensagemEmail(6, '');

        If SMTP.Connected Then
        Begin
          AtualizaMensagemEmail(7, '');

          SMTP.Send(IdMessage1); // Se conectado envia email

          AtualizaMensagemEmail(8, '');

          vEnviado := True;
          SMTP.Disconnect; // Desconecta

          AtualizaMensagemEmail(9, '');

          Attachmentxml.Free;
          Attachmentpdf.Free;
        End;
      Except
        On E: Exception Do // Definição da variável e do tipo Exception
        Begin
          vEnviado := False;

          vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + E.Message;
          Application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);

          SalvarLogErro(E.Message, E.StackTrace);

          SMTP.Disconnect;
          sleep(1000);

          If SMTP.Connected Then
            SMTP.Disconnect;
        End;
      End;
    Finally
      AtualizaMensagemEmail(10, '');
    End;
  end;
  Result := vEnviado;
End;


Procedure Tfnfepdv.AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
begin
  mostraemail.Position := Posicao;
  LlMsgEmail.Caption := Mensagem;

  sleep(10);
end;


End.
