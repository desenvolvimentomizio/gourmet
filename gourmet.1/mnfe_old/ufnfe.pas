Unit ufnfe;

Interface

Uses
  Winapi.Windows, Vcl.Forms, IdComponent,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection, IdTCPClient, miDASLIB,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  ACBrValidador, Data.DB, MemDS, DBAccess, Uni, ACBrBase, ACBrDFe, ACBrNFe,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Controls, Vcl.ComCtrls, Vcl.Dialogs, System.Classes,
  System.SysUtils, System.StrUtils, System.Math, UniScript, IniFiles,
  pcnConversao, pcnConversaoNFe, ACBrUtil, IdAttachment, IdAttachmentFile,
  uFuncoes, uPegaBase, dateutils, ACBrMail, MAPI, pcnNFe, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFeUtil;

Type
  Tfnfe = Class(TForm)
    ACBrNFe: TACBrNFe;
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
    consultanfe: TTabSheet;
    cancelanfe: TTabSheet;
    emailnfe: TTabSheet;
    inutilizanumero: TTabSheet;
    gerarpdf: TTabSheet;
    reimprimirnfe: TTabSheet;
    PlLogos: TPanel;
    Image1: TImage;
    Image2: TImage;
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
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    mostraemail: TProgressBar;
    mesrefcodigo: TIntegerField;
    LlMsgEmail: TLabel;
    mestfpcodigo: TIntegerField;
    ccorrecao: TTabSheet;
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
    emailevento: TTabSheet;
    Memo9: TMemo;
    Memo10: TMemo;
    reimprimirEvento: TTabSheet;
    Memo11: TMemo;
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
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    toetoecodigo: TIntegerField;
    itmpunqtdtribtotal: TFloatField;
    itmunisimbolotrib: TStringField;
    itmproanpcodigo: TIntegerField;
    plstatus: TPanel;
    consultarEvento: TTabSheet;
    Memo8: TMemo;
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
    cfgcfgservarqnfes: TStringField;
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
    mesxml: TUniQuery;
    mesxmlmeschave: TIntegerField;
    mesxmlmesarqxml: TBlobField;
    mesxmlflacodigo: TIntegerField;
    toetoedescricao: TStringField;
    mestemcodigo: TIntegerField;
    etdetdnfemodelos: TStringField;
    itmtpocodigo: TIntegerField;
    ACBrMail: TACBrMail;
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
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Procedure bconfirmaClick(Sender: TObject);
    Procedure bcancelaClick(Sender: TObject);
    procedure IdSMTPConnected(Sender: TObject);
    procedure IdSMTPDisconnected(Sender: TObject);
    procedure IdSMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
    procedure IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure IdSMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure SMTPConnected(Sender: TObject);
    procedure SMTPDisconnected(Sender: TObject);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ACBrMailMailException(const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
    procedure ACBrMailAfterMailProcess(Sender: TObject);
    procedure ACBrMailMailProcess(const AMail: TACBrMail; const AStatus: TMailStatus);
  Private
    Acesso: TAcesso;
    Fzcone: tuniconnection;
    vpConsultouSEFAZ: Boolean;
    Procedure mConsultaSEFAZ;
    Procedure mCancelarNFe;
    Function mConsultaNFe: Boolean;
    Procedure mEmailNFe;
    Procedure mInutilizarNumeroNFe;
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
    procedure mCartaCorrecao;
    procedure cadastraemail(chave, chavemestre: string);
    procedure atualizatela;
    procedure ImprimeEventoNfe;
    Function mConsultaSEFAZInterna: Boolean;
    function VerificaPreExistencia(tipo: string): Boolean;
    function EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
    procedure AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
    procedure mEmailEvento;
    procedure EnviarEmailEvento;
    procedure ReimprirEvento;
    procedure GeraNomeArqsEvento;
    procedure AjustaObservacoes;
    function ExigeGrupoCombustivel(CFOP: String): Boolean;
    function impcertificado: string;
    procedure Inicializar;
    function mConsultaEventoNFe: Boolean;
    function mCodigoConsultaSEFAZ: String;
    function processa: Boolean;
    procedure ajustafuncao;
    procedure AjustaCaminhoGeralNF(Data: TDate);
    procedure mGeraXML;
    procedure mReGeraXML;
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    procedure mInutilizarNumeroNFeDireto;
    procedure mManifDestDesconhecimento;
    procedure mGeraPrevia;
    procedure ArtMAPISendMail(const Subject, MessageText, MailFromName, MailFromAddress, MailToName, MailToAddress: String; const AttachmentFileNames: array of String);

    procedure VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
    procedure VerifieAjustaItemcomConsumidorFinal;
    { Private declarations }
  Public
    { Public declarations }
    vpFilial: String;

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
  TValidaProdutos = Function(AOwner: TComponent; conexao: tuniconnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;

Var
  fnfe: Tfnfe;
  vpErroConsultaNFe: Boolean = False;
  vpConsultaVisivel: Boolean = True;

Implementation

uses
  ufnfecorrecao;

{$R *.dfm}

function ModuloNFe(AOwner: TComponent; conexao: tuniconnection; varq: string; vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso; vConsultouSefaz: Boolean): Boolean;
Var
  i, x: Integer;
  vHora: String;
  vDia: String;
Begin

  if FindWindow('Tfnfe', nil) = 0 then
    fnfe := Tfnfe.Create(AOwner);
  try
    // ajusta variaveis de Mod Inicial
    fnfe.vpRetorno := '';
    vpErroConsultaNFe := False;
    fnfe.vpArquivoNFe := varq;
    fnfe.vpMesChave := vchave;
    fnfe.Acesso := Acesso;
    fnfe.vusrcodigo := fnfe.Acesso.Usuario.ToString;

    fnfe.vpConsultouSEFAZ := vConsultouSefaz;

    // atribui a todos os componentes de banco a conexao recebido
    fnfe.zcone := conexao;

    x := fnfe.ComponentCount - 1;
    For i := 0 To x Do
    begin
      If fnfe.Components[i] Is TUniQuery Then
        (fnfe.Components[i] As TUniQuery).Connection := conexao;

      If fnfe.Components[i] Is TUniScript Then
        (fnfe.Components[i] As TUniScript).Connection := conexao;
    end;

    vHora := agora(Application, conexao);
    vDia := hoje(Application, conexao);

    fnfe.vpDataAtual := strtodatetime(formatdatetime('dd/mm/yyyy', strtodate(vDia)) + ' ' + formatdatetime('hh:mm:ss', strtodatetime(vHora)));
    // fnfe.consulta.Fields[0].AsFloat;

    fnfe.cfg.Close;

    If Not fnfe.cfg.Active Then
    begin
      fnfe.cfg.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
      fnfe.cfg.Open;
    end;

    if fnfe.cfgedrinscest.AsString = '' then
    begin
      showmessage('Este filial não possui Inscrição Estadual, a nota será emitida com os dados da Matriz!');
      fnfe.vpFilial := '1';
    end
    else
    begin
      fnfe.vpFilial := Acesso.Filial.ToString;
    end;

    fnfe.cfg.Close;
    fnfe.cfg.ParamByName('flacodigo').AsString := fnfe.vpFilial;
    fnfe.cfg.Open;

    if fnfe.cfgcfgservarqnfes.AsString = '' then
    begin
      fnfe.vPastaPrincipal := ExtractFilePath(Application.ExeName);
    end
    else
    begin
      fnfe.vPastaPrincipal := fnfe.cfgcfgservarqnfes.AsString;
    end;

    fnfe.Caption := 'NFE - Caminho :' + fnfe.vPastaPrincipal;
    fnfe.vSubPastaDoc := 'arqnfes';

    if Copy(fnfe.vPastaPrincipal, Length(fnfe.vPastaPrincipal), 1) <> '\' then
      fnfe.vPastaPrincipal := fnfe.vPastaPrincipal + '\';

    fnfe.AjustaCaminhoGeralNF(fnfe.vpDataAtual);

    // atribui modulo para variavel local
    // fnfe.vModulo := vModulo;

    fnfe.vRotinaNFe := vRotinaNFe;

    // carrega configuracaoes de ambiente do .ini

    fnfe.LerConfiguracao;
    fnfe.Inicializar;
    fnfe.FormStyle := fsNormal;
    fnfe.pbotoes.Visible := True;
    fnfe.bconfirma.Enabled := True;

    if fnfe.ShowModal = mrOk then
      Result := True;
  finally
    fnfe.Free;
  end;
End;

exports ModuloNFe;

procedure Tfnfe.ArtMAPISendMail(const Subject, MessageText, MailFromName, MailFromAddress, MailToName, MailToAddress: String; const AttachmentFileNames: array of String);
// Originally by Brian Long: The Delphi Magazine issue 60 - Delphi And Email
var
  MAPIError: DWord;
  MapiMessage: TMapiMessage;
  Originator, Recipient: TMapiRecipDesc;
  Files, FilesTmp: PMapiFileDesc;
  FilesCount: Integer;
begin
  FillChar(MapiMessage, Sizeof(TMapiMessage), 0);

  MapiMessage.lpszSubject := PAnsiChar(AnsiString(Subject));
  MapiMessage.lpszNoteText := PAnsiChar(AnsiString(MessageText));

  FillChar(Originator, Sizeof(TMapiRecipDesc), 0);

  Originator.lpszName := PAnsiChar(AnsiString(MailFromName));
  Originator.lpszAddress := PAnsiChar(AnsiString(MailFromAddress));
  // MapiMessage.lpOriginator := @Originator;
  MapiMessage.lpOriginator := nil;

  MapiMessage.nRecipCount := 1;
  FillChar(Recipient, Sizeof(TMapiRecipDesc), 0);
  Recipient.ulRecipClass := MAPI_TO;
  Recipient.lpszName := PAnsiChar(AnsiString(MailToName));
  Recipient.lpszAddress := PAnsiChar(AnsiString(MailToAddress));
  MapiMessage.lpRecips := @Recipient;

  MapiMessage.nFileCount := High(AttachmentFileNames) - Low(AttachmentFileNames) + 1;
  Files := AllocMem(Sizeof(TMapiFileDesc) * MapiMessage.nFileCount);
  MapiMessage.lpFiles := Files;
  FilesTmp := Files;
  for FilesCount := Low(AttachmentFileNames) to High(AttachmentFileNames) do
  begin
    FilesTmp.nPosition := $FFFFFFFF;
    FilesTmp.lpszPathName := PAnsiChar(AnsiString(AttachmentFileNames[FilesCount]));
    Inc(FilesTmp)
  end;

  try
    MAPIError := MapiSendMail(0, Application.MainForm.Handle, MapiMessage, MAPI_LOGON_UI { or MAPI_NEW_SESSION } , 0);
  finally
    FreeMem(Files)
  end;

  case MAPIError of
    MAPI_E_AMBIGUOUS_RECIPIENT:
      showmessage('A recipient matched more than one of the recipient descriptor structures and MAPI_DIALOG was not set. No message was sent.');
    MAPI_E_ATTACHMENT_NOT_FOUND:
      showmessage('The specified attachment was not found; no message was sent.');
    MAPI_E_ATTACHMENT_OPEN_FAILURE:
      showmessage('The specified attachment could not be opened; no message was sent.');
    MAPI_E_BAD_RECIPTYPE:
      showmessage('The type of a recipient was not MAPI_TO, MAPI_CC, or MAPI_BCC. No message was sent.');
    MAPI_E_FAILURE:
      showmessage('One or more unspecified errors occurred; no message was sent.');
    MAPI_E_INSUFFICIENT_MEMORY:
      showmessage('There was insufficient memory to proceed. No message was sent.');
    MAPI_E_LOGIN_FAILURE:
      showmessage('There was no default logon, and the user failed to log on successfully when the logon dialog box was displayed. No message was sent.');
    MAPI_E_TEXT_TOO_LARGE:
      showmessage('The text in the message was too large to sent; the message was not sent.');
    MAPI_E_TOO_MANY_FILES:
      showmessage('There were too many file attachments; no message was sent.');
    MAPI_E_TOO_MANY_RECIPIENTS:
      showmessage('There were too many recipients; no message was sent.');
    MAPI_E_UNKNOWN_RECIPIENT:
      showmessage('A recipient did not appear in the address list; no message was sent.');
    MAPI_E_USER_ABORT:
      showmessage('The user canceled the process; no message was sent.');
    SUCCESS_SUCCESS:
      showmessage('MAPISendMail successfully sent the message.');
  else
    showmessage('MAPISendMail failed with an unknown error code.');
  end;
end;

function Tfnfe.processa: Boolean;
begin
  bconfirma.Enabled := False;
  bcancela.Enabled := False;

  // processa comando

  case vRotinaNFe of
    rnfGerarNFe:
      mEnviarNFe;
    rnfImprimirNFe:
      mReimprimirNFe;
    rnfGerarPDF:
      mGerarPDF;
    rnfEmail:
      mEmailNFe;
    rnfCancelar:
      mCancelarNFe;
    rnfCartaCorrecao:
      mCartaCorrecao;
    rnfEmailEvento:
      mEmailEvento;
    rnfImprimirEvento:
      ReimprirEvento;
    rnfConsultaEvento:
      mConsultaEventoNFe;
    rnfGerarXML:
      mGeraXML;
    rnfReGerarXML:
      mReGeraXML;

    rnfInutilizar:
      mInutilizarNumeroNFe;
    rnfStatusSefaz:
      mConsultaSEFAZ;
    rnfStatusNFe:
      mConsultaNFe;
    rnfInutilizarDireto:
      mInutilizarNumeroNFeDireto;
    rnfManifDestDesconhecimento:
      mManifDestDesconhecimento;
    rnfGerarPrevia:
      mGeraPrevia;

  end;

  if vpRetorno <> '' then
    Result := True
  else
    Result := False;
end;

Procedure Tfnfe.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := caFree;
End;

procedure Tfnfe.FormShow(Sender: TObject);
begin

  self.Width := 500;
  self.Height := 250;

  ajustafuncao;
end;

procedure Tfnfe.IdSMTPConnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Conectado';
  atualizatela;
end;

procedure Tfnfe.IdSMTPDisconnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Desconectado';
  atualizatela;

end;

procedure Tfnfe.IdSMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
begin
  LlMsgEmail.Caption := 'Falha de recipiente!';
  atualizatela;

end;

procedure Tfnfe.IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  LlMsgEmail.Caption := AStatusText;
  atualizatela;

end;

procedure Tfnfe.IdSMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  mostraemail.Max := AWorkCount;
  LlMsgEmail.Caption := IntToStr(AWorkCount);
  atualizatela;
end;

procedure Tfnfe.IdSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  // mostraemail.Max := AWorkCountMax;
  LlMsgEmail.Caption := 'Inicio do Envio';
  atualizatela;
end;

procedure Tfnfe.IdSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  LlMsgEmail.Caption := 'Final do envio';
  atualizatela;
end;

Function Tfnfe.validaentidade: Boolean;
Begin
  Result := True;
End;

Function Tfnfe.validatransporte: Boolean;
Begin
  Result := True;
End;

Procedure Tfnfe.ImprimeNFe;
Var
  it: Integer;
  vtBC: Double;
  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;
  vtipi: Double;
  vCST: String;

  vInfComplGeral, vSeparadorGeral: String;
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
  ValidaProdutos: TValidaProdutos;
  vPodeProdutos: Boolean;
  Pack: HModule;
  i: Integer;
  vlNomeArquivoNFCe: string;
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

var
  s: String;
  iValue, iCode: Integer;

Begin
  vlTotalST := 0;
  vlTemANP := False;
  vlTotalDinheiro := 0;
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


  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  mes.Close;
  mes.Params[0].AsString := vpMesChave;
  mes.Params[1].AsInteger := Acesso.Filial;
  mes.Open;

  rfi.Close;
  rfi.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
  rfi.Open;
  while not rfi.Eof do
  begin
    if strtodate(rfirfivencimento.AsString) < strtodate(hoje(Application, zcone)) then
    begin
      showmessage('ATENÇÃO!' + #13 + #13 + 'Falha na Validação do SEFAZ MT.' + #13 + 'O Contas a Rceber desta nota tem vencimento anterior a emissão da nota.' +
        'Registro do Contas a Rceceber com a numero nr.: ' + rfirfinumero.AsString + ' vencimento ' + rfirfivencimento.AsString);
      exit;
    end;

    rfi.Next;
  end;

  rfi.First;

  dtl.Close;
  dtl.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
  dtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  dtl.Open;

  tit.Close;
  tit.ParamByName('titcodigo').AsInteger := rfititcodigo.AsInteger;
  tit.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;

  (*
    *
    ****** Verifica Pré-existência da NFe *******
    *
  *)
  try
    if VerificaPreExistencia('55') then
      exit; // Se NFe já existe abandona a geração.
  except

  end;



  //
  // Valida Itens para Emissão do Documento
  //

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



  //
  // Carrega Operação e Entidade
  //

  toe.Close;

  if mestdfcodigo.AsString = tdfCupomFiscalEmitidoPorECF then
    toe.SQL.Text := 'select ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao from toe where toecfopsaida = ''5.929'''
  else
    toe.SQL.Text := 'select ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao from toe where toecodigo=' + mestoecodigo.AsString;

  toe.Open;

  if mestdfcodigo.AsString = tdfCupomFiscalEmitidoPorECF then
  begin
    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET toecodigo = ' + toetoecodigo.AsString + ' WHERE meschave = ' + mesmeschave.AsString + ' and flacodigo=' + Acesso.Filial.ToString;
    qconsulta.ExecSQL;

    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE itm SET toecodigo = ' + toetoecodigo.AsString + ' WHERE meschave = ' + mesmeschave.AsString + ' and flacodigo=' + Acesso.Filial.ToString;
    qconsulta.ExecSQL;

    mes.Refresh;
    itm.Refresh;
  end;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  if etd.IsEmpty then
  begin
    Application.MessageBox(PChar('Falha no Cadastros do Destinatário!' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'), '', MB_OK + MB_ICONERROR);

    exit;
  end;

  AjustaObservacoes;

  CheckBox1.Checked := True;
  atualizatela;


  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFe.NotasFiscais.Clear;

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

  With ACBrNFe.NotasFiscais.Add.NFe Do
  Begin
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
      consulta.SQL.Text := 'select  itmdesconto from itm,pro where itm.procodigo=pro.procodigo and tpocodigo=' + IntToStr(tpoServicos) + '  and meschave=' + mesmeschave.AsString;
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

      vltotServicos := consulta.FieldByName('messervicos').AsFloat -
        (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos').AsFloat +
        consulta.FieldByName('messervicos').AsFloat)));

      vlTotalDinheiro := 0;
      dtl.First;

      while not dtl.Eof do
      begin

        with pag.Add do
        begin
          if dtlmdacodigo.AsInteger = mdaChequeTerceiros then
            tPag := fpCheque;

          if dtlmdacodigo.AsInteger = mdaCartaoDebito then
          begin
            vlTotalCartoes := vlTotalCartoes + dtldtlvalor.AsCurrency;
            tPag := fpCartaoDebito;
          end;

          if dtlmdacodigo.AsInteger = mdaCartaoCredito then
          begin
            vlTotalCartoes := vlTotalCartoes + dtldtlvalor.AsCurrency;
            tPag := fpCartaoCredito;
          end;

          if dtlmdacodigo.AsInteger = mdaConvenio then
            tPag := fpCreditoLoja;

          if dtlmdacodigo.AsInteger = mdaDinheiro then
          begin
            vlTotalDinheiro := vlTotalDinheiro + dtldtlvalor.AsCurrency;
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

          vlPag := dtldtlvalor.AsCurrency - (dtldtlvalor.AsCurrency * ((consulta.FieldByName('messervicos').AsFloat - vlTotalDescontoServico) /
            ((consulta.FieldByName('mesprodutos').AsFloat - vlTotalDescontoProdutos) + (consulta.FieldByName('messervicos').AsFloat - vlTotalDescontoServico))));
          if dtlmdacodigo.AsInteger = mdaConvenio then
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
      if dtlmdacodigo.AsInteger = mdaConvenio then
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
            Duplicata := Cobr.Dup.Add;
            Duplicata.nDup := formatfloat('000', vlParcela);
            Duplicata.dVenc := rfirfivencimento.AsFloat;
            Duplicata.vDup :=
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos - vlTotalDescontoServico) / (mesmestotal.AsCurrency)))));
            vlTotalPag := vlTotalPag +
              strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (rfirfivalor.AsCurrency * ((vltotServicos - vlTotalDescontoServico) / (mesmestotal.AsCurrency)))));

            vlParcelaIndividual := Duplicata.vDup;
            vlrfinumero := rfirfinumero.AsString;
            vlParcela := vlParcela + 1;
            { END; }
          end;
          rfi.Next;

          if rfi.Eof then
          begin

            // Cobr.Fat.vOrig := Cobr.Fat.vOrig - ( vltotServicos+ vlTotalDinheiro) ;
            // Cobr.Fat.vLiq := Cobr.Fat.vLiq -  (vltotServicos + vlTotalDinheiro );

            if vlTotalPag <> vlTotalConvenio then
            begin

              vlPag := vlTotalConvenio - vlTotalPag;

              Duplicata.vDup := vlParcelaIndividual + vlPag;

              if Duplicata.vDup < 0 then
                Duplicata.vDup := Duplicata.vDup * -1;

              { if vlPag < 0 then
                vlPag := vlPag * -1; }

              { if vlPag > 0 then
                begin }
              vlTotalPag := vlTotalPag + vlPag;
              { end; }

              // Cobr.Fat.vOrig := vlTotalPag; // Cobr.Fat.vOrig + strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount)));
              vlFatvLiq := vlTotalPag; // vlFatvLiq + strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount)));
              Cobr.Fat.vLiq := vlTotalPag; // vlFatvLiq;

            end
            else
            begin

              // Cobr.Fat.vOrig := vlTotalPag; // Cobr.Fat.vOrig + strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount)));
              vlFatvLiq := vlTotalPag; // vlFatvLiq + strtofloat(formatfloat('#0.00', rfirfivalor.AsCurrency - (vltotServicos / rfi.RecordCount)));
              Cobr.Fat.vLiq := vlTotalPag; // vlFatvLiq;

              // Duplicata.vDup := vlTotalPag;

            end;

          end;

        end;
        Cobr.Fat.vOrig := Cobr.Fat.vLiq;
      end;

    end
    else
    begin

      if (toettocodigo.AsInteger = ttoDevolucao) or (toettocodigo.AsInteger = ttoRemessaRetorno) or (toettocodigo.AsInteger = ttoOutros) or (toettocodigo.AsInteger = ttoComplemento)
      then
      begin
        with pag.Add do
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
            (consulta.FieldByName('mesdesconto').AsCurrency * (consulta.FieldByName('mesdesconto').AsCurrency / (consulta.FieldByName('mesprodutos').AsFloat +
            consulta.FieldByName('messervicos').AsFloat)));
          vlTotalDinheiro := 0;
          dtl.First;

          while not dtl.Eof do
          begin

            with pag.Add do
            begin
              if dtlmdacodigo.AsInteger = mdaChequeTerceiros then
                tPag := fpCheque;

              if dtlmdacodigo.AsInteger = mdaCartaoDebito then
                tPag := fpCartaoDebito;

              if dtlmdacodigo.AsInteger = mdaCartaoCredito then
                tPag := fpCartaoCredito;

              if dtlmdacodigo.AsInteger = mdaConvenio then
                tPag := fpCreditoLoja;

              if dtlmdacodigo.AsInteger = mdaDinheiro then
              begin
                vlTotalDinheiro := vlTotalDinheiro + dtldtlvalor.AsCurrency;
                tPag := fpDinheiro;
              end;

              vlPag := dtldtlvalor.AsCurrency -
                (dtldtlvalor.AsCurrency * (consulta.FieldByName('messervicos').AsFloat / (consulta.FieldByName('mesprodutos').AsFloat + consulta.FieldByName('messervicos')
                .AsFloat)));

              vPag := vlPag;
            end;
            dtl.Next;
          end;

        end
        else
        begin

          with pag.Add do
          begin

            consulta.Close;
            consulta.SQL.Text := 'select messervicos, mesprodutos, mesdesconto from mes where meschave=' + mesmeschave.AsString;
            consulta.Open;
            tPag := fpDinheiro;
            vPag := mesmestotal.AsCurrency - consulta.FieldByName('messervicos').AsFloat;
          end;
        end;
      end;

    end;

    Ide.cUF := cfgufscodigo.AsInteger;
    // Ide.cNF -> Código da NFe definido por último.

    Ide.natOp := toetoeidentificacao.AsString;

    case mestfpcodigo.AsInteger of
      0:
        Ide.indPag := ipVista;
      1:
        Ide.indPag := ipPrazo;
      9:
        Ide.indPag := ipOutras;
    else
      Ide.indPag := ipOutras;
    end;

    Ide.modelo := 55;
    Ide.serie := cfgcfgserienfe.AsInteger;

    // Ide.cNF -> Número da NFe definido por último.
    infNFe.Versao := cfgcfgversao.AsFloat;

    Ide.dEmi := vpDataAtual;

    // Ide.dSaiEnt := vpDataAtual;

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      Ide.idDest := doInterestadual
    else
      Ide.idDest := doInterna;

    case toettecodigo.AsInteger of
      0:
        Ide.tpNF := tnEntrada;
      1:
        Ide.tpNF := tnSaida;
    end;

    Ide.tpImp := tiRetrato;
    Ide.tpEmis := teNormal;

    (* Finalidade da NFe *)
    case toettocodigo.AsInteger of
      ttoCompra, ttoVenda, ttoRemessaRetorno:
        Ide.finNFe := fnNormal;
      ttoDevolucao:
        Ide.finNFe := fnDevolucao;
      ttoAjuste:
        Ide.finNFe := fnAjuste;
      ttoComplemento:
        Ide.finNFe := fnComplementar;
    end;

    if toettocodigo.AsInteger = ttoVenda then
      Ide.indPres := pcPresencial
    else
      Ide.indPres := pcNao;

    Ide.cMunFG := cfgcddcodigo.AsInteger;

    if cfgcfgmodonfe.AsInteger = 2 then
      Ide.tpAmb := taHomologacao;

    if cfgcfgmodonfe.AsInteger = 1 then
      Ide.tpAmb := taProducao;

    Ide.verProc := '19.25.2.8';

    (*
      *
      ****** Grupo de Informações de Documentos Referenciados
      *
    *)
    vInfComplCF := '';
    vSeparadorCF := '';

    if mestdfcodigo.AsString = tdfCupomFiscalEmitidoPorECF then
    begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'SELECT tomchave FROM tom, tof, cfr WHERE ';
      qconsulta.SQL.Add('tom.tofcodigo = tof.tofcodigo ');
      qconsulta.SQL.Add('AND tof.tofcodigo = cfr.tofcodigo ');
      qconsulta.SQL.Add('AND tof.ticcodigo = ' + IntToStr(ticCupomFiscal) + ' ');
      qconsulta.SQL.Add('AND tom.meschave = ' + vpMesChave);
      qconsulta.Open;

      if qconsulta.IsEmpty then
      begin
        if not tof.Active then
          tof.Open;

        tof.append;
        toftofidentificacao.AsString := 'Cupom Fiscal referenciado - ' + mesmescoocupom.AsString;
        tofticcodigo.AsInteger := ticCupomFiscal;
        tof.Post;

        if not tom.Active then
          tom.Open;

        tom.append;
        tomtofcodigo.AsInteger := toftofcodigo.AsInteger;
        tommeschave.AsString := vpMesChave;
        tom.Post;

        if not cfr.Active then
          cfr.Open;

        cfr.append;
        cfrtdfcodigo.AsString := tdfCupomFiscalEmitidoPorECF;
        cfrcfrcooecf.AsInteger := mesmescoocupom.AsInteger;
        cfrecfcodigo.AsInteger := 1;
        cfrtofcodigo.AsInteger := toftofcodigo.AsInteger;
        cfrcfremissao.AsFloat := mesmesdatacupom.AsFloat;
        cfr.Post;
      end;

      (* Cupom Fiscal Referenciado *)
      qCfrEcf.Close;
      qCfrEcf.Params.ParamByName('tofcodigo').AsInteger := qTomTof.Fields[0].AsInteger;
      qCfrEcf.Open;

      if not qCfrEcf.IsEmpty then
      begin
        with Ide.NFref.Add do
        begin
          RefECF.modelo := ECFModRef2D;
          RefECF.nECF := qCfrEcfecfcaixa.AsString;
          RefECF.nCOO := qCfrEcfcfrcooecf.AsString;
        end;

        if vInfComplCF = '' then
          vInfComplCF := 'Cupom Fiscal referenciado: ';

        vInfComplCF := vInfComplCF + vSeparadorCF + qCfrEcfcfrcooecf.AsString;
        vSeparadorCF := ',';
      end;
    end;

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
      with Ide.NFref.Add do
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

    Emit.xNome :=  cfgetdidentificacao.AsString;
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
      vTestaInscEst := Trim(SomenteNumeros(etdedrinscest.AsString));

      if vTestaInscEst = '00000000000' then
        vTestaInscEst := '';

      strtofloat(vTestaInscEst);

      ACBrValidador1.TipoDocto := docInscEst;
      ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
      ACBrValidador1.Documento := vTestaInscEst;

      if not ACBrValidador1.Validar then
      begin
        Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'),
          'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
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
        Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'), 'CNPJ ou CPF Inválido',
          MB_OK + MB_ICONERROR);

        exit;
      end;

    except
      vTestaInscEst := '';
    end;

    if vTestaInscEst <> '' then
    begin
      Dest.IE := vTestaInscEst;
      Dest.indIEDest := inContribuinte;
      Ide.indFinal := cfConsumidorFinal;
    end
    else
    begin
      Dest.IE := '';
      Dest.indIEDest := inNaoContribuinte;
      Ide.indFinal := cfConsumidorFinal;
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

    if mesttocodigo.AsInteger = 2 then
    begin
      VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);
    end;

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
    begin
      if Ide.indPres = pcPresencial then
      begin
        if Ide.indFinal = cfConsumidorFinal then
        begin

          VerifieAjustaItemcomConsumidorFinal;

        end;
      end;
    end;

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

        itmcst.Edit;

        itmcstcstcodigo.AsString := toeitmcstcodigo.AsString;
        itmcstcsicodigo.AsString := toeitmcsicodigo.AsString;
        itmcstcspcodigo.AsString := toeitmcspcodigo.AsString;
        itmcstcsfcodigo.AsString := toeitmcsfcodigo.AsString;
        itmcstitmaliqpis.AsFloat := toeitmcfgpercentualpis.AsFloat;
        itmcstitmaliqcofins.AsFloat := toeitmcfgpercentualcofins.AsFloat;

        itmcst.Post;

      end;
      itm.Next;
    End;

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
      With Det.Add Do
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

        Prod.CFOP := sonumeros(itmcfocfop.AsString); // '5101';

        { if ExigeGrupoCombustivel(Prod.CFOP) then
          begin
          if Length(itmproanpcodigo.AsString) <> 9 then
          raise Exception.Create('CFOP  de  Combustível  e  não  informado código da ANP no cadastro do produto!');

          with Prod.comb do
          begin
          cProdANP := itmproanpcodigo.AsInteger;
          UFcons := UpperCase(etdufssigla.AsString);

          end;
          end; }

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
          Prod.xProd := BuscaTroca(Trim(itmpronome.AsString), '%', ''); // 'ALHO 400 G';

        If cfgcfgdescrinfe.AsInteger = 1 Then
          Prod.xProd := BuscaTroca(Trim(itmpronomereduzido.AsString), '%', ''); // 'ALHO 400 G';

        If (Copy(Prod.xProd, 1, 1) = '.') Then
          Prod.xProd := Trim(Copy(Prod.xProd, 2, 300));

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

        if cfgcfgcestativo.AsInteger = 1 then
        begin
          if itmtcecest.AsString <> '' then
          begin

            Prod.CEST := itmtcecest.AsString;
          end;

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

            case Emit.CRT of
              (* CSOSN *)
              crtSimplesNacional, crtSimplesExcessoReceita:
                begin
                  vCST := self.itmcstcodigo.AsString;

                  vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                  if vlCSOSNIcmsOK then
                    CSOSN := vlCSOSNIcms

                end;

              (* CST *)
              crtRegimeNormal:
                begin

                  if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                  begin
                    vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                  end
                  else
                  begin

                    vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2));
                  end;

                  if vlCSTIcmsOK then
                    CST := vlCSTIcms;
                end;
            end;

            ICMS.modBC := dbiValorOperacao;
            If (LowerCase(self.itmicmcodigo.AsString) = 'ff') Or (LowerCase(self.itmicmcodigo.AsString) = 'ii') Or (LowerCase(self.itmicmcodigo.AsString) = 'nn') Or
              (LowerCase(self.itmicmcodigo.AsString) = '00') Or (LowerCase(self.itmicmcodigo.AsString) = '01') Then
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
                if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn500) then
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 17.65;
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
                    ICMS.pMVAST := 17.65;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                    ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;
                  end;
                end;
              End
              Else
              Begin
                ICMS.pICMS := self.itmicmcodigo.AsFloat;
                ICMS.vICMS := itmitmicm.AsFloat;
                ICMS.vBC := itmitmbicm.AsCurrency;
                ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;

                if (ICMS.CSOSN = csosn900) or (ICMS.CSOSN = csosn500) then
                begin
                  if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                  begin
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 17.65;
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
                    ICMS.pMVAST := 17.65;
                    ICMS.vBCST := itmitmbicms.AsFloat;
                    ICMS.pICMSST := itmitmaliqicms.AsFloat;
                    ICMS.vICMSST := itmitmicms.AsFloat;
                  end;

                end;
              End;
            End;

            vtICMS := vtICMS + ICMS.vICMS;
            vtBC := vtBC + ICMS.vBC;

            vlTotalST := vlTotalST + ICMS.vICMSST;
            vtICMSST := vtICMSST + ICMS.vICMSST;
            vtBCST := vtBCST + ICMS.vBCST;
            if (ICMS.CST = cst60) and (Ide.indFinal = cfConsumidorFinal) then
            begin
              pST := 17;
            end;

            if (Dest.indIEDest = inNaoContribuinte) and (Ide.indFinal = cfConsumidorFinal) and (Emit.EnderEmit.UF <> Dest.EnderDest.UF) then
            begin


              //
              // ****** Carrega tabela icms ********
              //

              icf.Close;
              icf.FilterSQL := QuotedStr(formatdatetime('yyyy-mm-dd', Ide.dEmi)) + ' BETWEEN date(icfdatainicial) AND date(icfdatafinal)';
              icf.Open;

              ici.Close;
              ici.FilterSQL := 'iciuforigem=' + QuotedStr(Emit.EnderEmit.UF) + ' AND iciufdestino=' + QuotedStr(Dest.EnderDest.UF);
              ici.Open;

              ICMSUFDest.vBCUFDest := vtBC;
              // ICMSUFDest.pFCPUFDest := 0;
              ICMSUFDest.pICMSUFDest := iciiciicmaliguotaicms.AsFloat;

              ICMSUFDest.pICMSInter := iciiciicmaliguotaicms.AsFloat;

              ICMSUFDest.pICMSInterPart := icficfpercicmdestino.AsFloat;
              // ICMSUFDest.vFCPUFDest := 0;
              ICMSUFDest.vICMSUFDest := RoundTo((vtBC * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmdestino.AsFloat / 100), -2);
              ICMSUFDest.vICMSUFRemet := RoundTo((vtBC * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmorigem.AsFloat / 100), -2);

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

          pis.CST := StrToCSTPIS(ok, itmcspcodigo.AsString);

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
              pis.vPIS := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) * (itmitmaliqpis.AsFloat / 100);
              pis.vBC := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
            end;
            vltotpis := vltotpis + pis.vPIS;

          end;

          COFINS.CST := StrToCSTCOFINS(ok, itmcsfcodigo.AsString);
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
              COFINS.vBC := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
              COFINS.vCOFINS := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) * (itmitmaliqcofins.AsFloat / 100);
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
        Transp.modFrete := mfContaDestinatario;
      2:
        Transp.modFrete := mfContaTerceiros;
      9:
        Transp.modFrete := mfSemFrete;
    end;

    dtm.Close;
    dtm.ParamByName('meschave').AsString := vpMesChave;
    dtm.ParamByName('flacodigo').AsInteger := mesflacodigo.AsInteger;
    dtm.Open;

    If dtm.RecordCount = 1 Then
    Begin

      if vlTemANP then
      begin
        Transp.Transporta.xNome := dtmetdidentificacao.AsString;
        Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
        Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

        Transp.Transporta.xEnder := dtmedrrua.AsString;
        Transp.Transporta.xMun := dtmcddnome.AsString;
        Transp.Transporta.UF := dtmufssigla.AsString;

        Transp.veicTransp.placa := dtmdtmplaca.AsString;
        Transp.veicTransp.UF := dtmufssigla.AsString;
      end;

      Transp.Vol.Add;
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

      Transp.Vol.Add;
      Transp.Vol.Items[0].qVol := 1;
      Transp.Vol.Items[0].esp := '';
      Transp.Vol.Items[0].marca := '';
      Transp.Vol.Items[0].pesoB := 0;
      Transp.Vol.Items[0].pesoL := 0;
    End;

    (*
      *
      ******* Totais da NFe *******
      *
    *)

    Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
    Total.ICMSTot.vIPI := vtipi;
    Total.ICMSTot.vBC := vtBC;
    Total.ICMSTot.vICMS := RoundTo(vtICMS, -2); // 180;
    Total.ICMSTot.vBCST := vtBCST + Total.ICMSTot.vST;
    Total.ICMSTot.vST := RoundTo(vtICMSST, -2);
    Total.ICMSTot.vProd := RoundTo(vxtot, -2);
    Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
    Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;

    Total.ICMSTot.vPIS := vltotpis;
    Total.ICMSTot.vCOFINS := vltotcofins;

    case mesrefcodigo.AsInteger of
      1:
        Total.ICMSTot.vFrete := vlTotalFrete;
      9:
        Total.ICMSTot.vFrete := 0;
    end;

    Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro + Total.ICMSTot.vFrete), -2);

    // Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro + Total.ICMSTot.vFrete), -2);

    //
    // ****** apuração do icms para consumidor final fora do estado ********
    //

    { if (Dest.indIEDest = inNaoContribuinte) and (Ide.indFinal = cfConsumidorFinal) and (Emit.EnderEmit.UF <> Dest.EnderDest.UF) then
      begin





      //
      // ****** Carrega tabela icms ********
      //

      icf.Close;
      icf.FilterSQL := QuotedStr(formatdatetime('yyyy-mm-dd', Ide.dEmi)) + ' BETWEEN date(icfdatainicial) AND date(icfdatafinal)';
      icf.Open;

      ici.Close;
      ici.FilterSQL := 'iciuforigem=' + QuotedStr(Emit.EnderEmit.UF) + ' AND iciufdestino=' + QuotedStr(Dest.EnderDest.UF);
      ici.Open;

      Total.ICMSTot.vICMSUFDest := RoundTo((Total.ICMSTot.vNF * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmdestino.AsFloat / 100), -2);
      Total.ICMSTot.vICMSUFRemet := RoundTo((Total.ICMSTot.vNF * (iciiciicmaliguotaicms.AsFloat / 100)) * (icficfpercicmorigem.AsFloat / 100), -2);

      end; }

    qTomTof.Close;
    qTomTof.SQL.Text := 'SELECT distinct tofidentificacao FROM tom, tof WHERE ';
    qTomTof.SQL.Add('tom.tofcodigo = tof.tofcodigo AND ');
    qTomTof.SQL.Add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
    qTomTof.SQL.Add('tom.meschave = ' + vpMesChave + ' ');
    qTomTof.SQL.Add('ORDER BY tof.tofcodigo');
    qTomTof.Open;

    vInfComplGeral := '';

    { if (cfgcfgobs2.AsString <> '0') or (cfgcfgobs3.AsString <> '0') or (cfgcfgobs4.AsString <> '0') then
      begin }

    While Not qTomTof.Eof Do
    Begin
      if pos(Trim(qTomTof.Fields[0].AsString), vInfComplGeral) = 0 then
      begin
        vInfComplGeral := vInfComplGeral + Trim(qTomTof.Fields[0].AsString) + ';';
      end;
      qTomTof.Next;
    End;
    { end; }

    (* Trata mensagem referente Carga Tributária *)
    if (vlTotTrib + vlTotTribEst) > 0 then
    begin
      vlMensagemCargaTrib := 'Trib. aprox. R$ ';
      vlMensagemCargaTrib := vlMensagemCargaTrib + formatfloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal ';

      if vlTotTribEst > 0 then
        vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + formatfloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual ';

      vlMensagemCargaTrib := vlMensagemCargaTrib + ' Fonte: IBPT 5oi7eW;'
    end;

    InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib, toetoeidentificacao.AsString, '',
      [rfReplaceAll, rfIgnoreCase]);

    if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
    begin
      if Ide.indPres = pcPresencial then
      begin
        if Ide.indFinal = cfConsumidorFinal then
        begin

          consulta.Close;
          consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
          consulta.Open;
          Ide.natOp := consulta.FieldByName('toeidentificacao').AsString;
          Ide.idDest := doInterna;

          InfAdic.infCpl := InfAdic.infCpl + ' ' + '"ICMS recolhido anteriormente por estimativa simplificada - Operação Presencial/Venda no Balcão”';

        end;
      end;
    end;

    (*
      *
      ********* Identifica o Número da NF-e **********
      *
    *)

    if (self.mesmesnumero.AsString <> '') and (self.mesmesnumero.AsString <> '0') and (mestemcodigo.AsInteger <> 3) then
      vNumeroNFe := self.mesmesnumero.AsInteger
    else
    begin
      NumeroNFe.Close;
      NumeroNFe.ParamByName('flacodigo').AsString := vpFilial;
      NumeroNFe.ExecSQL;
      vNumeroNFe := NumeroNFe.Fields[0].AsInteger;

      { qConsulta.Close;
        qConsulta.SQL.Text := 'select cfgnumeronfe from cfgmnfe where cfgcodigo=1';
        qConsulta.Open;

        vNumeroNFe := qConsulta.FieldByName('cfgnumeronfe').AsInteger + 1; }

      { qConsulta.Close;
        qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=1';
        qConsulta.ExecSQL;

        qConsulta.Close;
        qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=' + Acesso.Filial.ToString;
        qConsulta.ExecSQL; }

      showmessage('Nota a ser emitida: ' + IntToStr(vNumeroNFe));

    end;

    { if vNumeroNFe > cfgcfgnumeronfe.AsInteger then
      begin
      qConsulta.Close;
      qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=1';
      qConsulta.ExecSQL;

      qConsulta.Close;
      qConsulta.SQL.Text := 'UPDATE cfgmnfe SET cfgnumeronfe = ' + IntToStr(vNumeroNFe) + ' and cfgcodigo=' + Acesso.Filial.ToString;
      qConsulta.ExecSQL;

      end; }

    Ide.nNF := vNumeroNFe;
    Ide.cNF := GerarCodigoDFe(vNumeroNFe);

    (* A partir deste momento venda é considerada uma NF-e Pendente pois já possui número *)

    try
      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET ';
      qconsulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
      qconsulta.SQL.Add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
      qconsulta.SQL.Add('messerie = ' + IntToStr(Ide.serie) + ', ');
      qconsulta.SQL.Add('tdfcodigo = ''55'', ');
      qconsulta.SQL.Add('temcodigo = 4 ');
      qconsulta.SQL.Add('WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
      qconsulta.ExecSQL;
    except

    end;
  End;
  { Except
    On E: Exception Do
    Begin
    If E.Message = '' Then
    vErro := ''
    Else
    vErro := #13 + 'Erro: ' + E.Message;

    Application.MessageBox(PChar('Erro preenchimento dos dados da NF-e.' + #13 + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Preenchimento NF-e',
    MB_OK + MB_ICONERROR);

    SalvarLogErro(E.Message, E.StackTrace);
    Exit;
    End;
    End; }

  try

    ACBrNFe.Configuracoes.WebServices.Visualizar := False;

    CheckBox3.Checked := True;
    atualizatela;

    // Assina e salva arquivo no Path definido
    ACBrNFe.NotasFiscais.Assinar;

    CheckBox4.Checked := True;
    atualizatela;

    // Valida Arquivo
    ACBrNFe.NotasFiscais.Validar;

    CheckBox5.Checked := True;
    atualizatela;

    vChaveNFe := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro na geração da NF-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Geração NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
      exit;
    End;
  end;

  Try
    ACBrNFe.Enviar(0, False, True);

    vCStat := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.CStat;
    vXMotivo := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.xMotivo;

    CheckBox6.Checked := True;
    atualizatela;
  Except
    On E: Exception Do
    Begin

      vCStat := ACBrNFe.NotasFiscais[0].NFe.procNFe.CStat;
      vXMotivo := ACBrNFe.NotasFiscais[0].NFe.procNFe.xMotivo;

      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      If (vCStat = 0) And (vXMotivo = '') Then
        vMsgRetorno := ''
      Else
        vMsgRetorno := #13 + 'Retorno: ' + IntToStr(vCStat) + ' - ' + vXMotivo + #13;

      Application.MessageBox(PChar('NF-e Não Autorizada.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Envio NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      exit;
    End;
  End;

  // Se código de status = 100 - Autorizado o uso da NF-e.
  If vCStat = 100 Then
  Begin

    if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
    begin
      ACBrNFeDANFEFR.MostraPreview := True;
      ACBrNFeDANFEFR.MostraSetup := True;
    end;

    ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
    ACBrNFeDANFEFR.Sistema := '(66)3544-2765 Mizio Sistemas';
    ACBrNFe.NotasFiscais.ImprimirPDF;

    vProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
    vhrNFe := TimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi);
    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET ';
    qconsulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.Add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.Add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
    qconsulta.SQL.Add('tdfcodigo = ''55'', ');
    qconsulta.SQL.Add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
    qconsulta.SQL.Add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
    qconsulta.SQL.Add('temcodigo = 5, ');
    qconsulta.SQL.Add('meschavenfe = ' + QuotedStr(vChaveNFe) + ' WHERE ');
    qconsulta.SQL.Add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
    qconsulta.ExecSQL;

    try
      vlNomeArquivoNFCe := GeraNomeNFe(vpMesChave);

      if FileExists(vlNomeArquivoNFCe) then
      begin
        if not mes.Active then
        begin
          mes.Close;
          mes.Params[0].AsString := vpMesChave;
          mes.Params[1].AsInteger := Acesso.Filial;
          mes.Open;
        end;

        mesxml.Close;
        mesxml.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
        mesxml.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        mesxml.Open;

        if mesxml.IsEmpty then
          mesxml.append
        else
          mesxml.Edit;

        mesxmlmesarqxml.LoadFromFile(vlNomeArquivoNFCe);
        mesxmlflacodigo.AsInteger := Acesso.Filial;
        mesxmlmeschave.AsInteger := mesmeschave.AsInteger;

        mesxml.Post;

      end;
    except
    end;

    { qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE itm SET itm.itmsped = 1 WHERE itm.flacodigo=' + Acesso.Filial.ToString + ' and itm.meschave = ' + vpMesChave;
      qconsulta.ExecSQL; }

    ACBrNFe.NotasFiscais.Clear;

    Sleep(500);

    mEmailNFe;

  End
  else if vCStat = 301 then
  begin


    // ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
    ACBrNFe.NotasFiscais.ImprimirPDF;

    vProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
    vhrNFe := TimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi);
    qconsulta.Close;
    qconsulta.SQL.Text := 'UPDATE mes SET ';
    qconsulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.Add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    qconsulta.SQL.Add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
    qconsulta.SQL.Add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
    qconsulta.SQL.Add('tdfcodigo = ''55'', ');
    qconsulta.SQL.Add('sdecodigo = ''04'', ');
    qconsulta.SQL.Add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
    qconsulta.SQL.Add('temcodigo = 5, ');
    qconsulta.SQL.Add('meschavenfe = ' + QuotedStr(vChaveNFe) + ' WHERE ');
    qconsulta.SQL.Add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
    qconsulta.ExecSQL;

    try
      vlNomeArquivoNFCe := GeraNomeNFe(vpMesChave);

      if FileExists(vlNomeArquivoNFCe) then
      begin
        if not mes.Active then
        begin
          mes.Close;
          mes.Params[0].AsString := vpMesChave;
          mes.Params[1].AsInteger := Acesso.Filial;
          mes.Open;
        end;

        mesxml.Close;
        mesxml.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
        mesxml.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        mesxml.Open;

        if mesxml.IsEmpty then
          mesxml.append
        else
          mesxml.Edit;

        mesxmlmesarqxml.LoadFromFile(vlNomeArquivoNFCe);
        mesxmlflacodigo.AsInteger := Acesso.Filial;
        mesxmlmeschave.AsInteger := mesmeschave.AsInteger;

        mesxml.Post;

      end;
    except
    end;

    { qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE itm SET itm.itmsped = 1 WHERE itm.flacodigo=' + Acesso.Filial.ToString + ' and itm.meschave = ' + vpMesChave;
      qconsulta.ExecSQL; }

    ACBrNFe.NotasFiscais.Clear;

  end
  else
    Application.MessageBox(PChar('NF-e não Autorizada.' + #13 + #13 + 'Mensagem: ' + #13 + IntToStr(vCStat) + ' - ' + vXMotivo), 'Erro NF-e', MB_OK + MB_ICONWARNING);

  vpRetorno := '';

End;

Procedure Tfnfe.GeraXML(taModo: TpcnTipoAmbiente = taProducao);
Var
  it: Integer;
  vtBC: Double;
  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;
  vtipi: Double;
  vCST: String;

  vInfComplGeral, vSeparadorGeral: String;
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
  ValidaProdutos: TValidaProdutos;
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

var
  s: String;
  iValue, iCode: Integer;

Begin
  vlTotalFrete := 0;

  vxdesc := 0;
  vxtot := 0;
  vxliq := 0;
  vltotpis := 0;
  vltotcofins := 0;

  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  mes.Close;
  mes.Params[0].AsString := vpMesChave;
  mes.Params[1].AsInteger := Acesso.Filial;
  mes.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;


  //
  // Carrega Operação e Entidade
  //

  toe.Close;
  toe.SQL.Text := 'SELECT ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao FROM toe WHERE toecodigo = ' + mestoecodigo.AsString;
  toe.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  AjustaObservacoes;

  CheckBox1.Checked := True;
  atualizatela;


  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFe.NotasFiscais.Clear;

  ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

  If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
  begin
    ACBrNFeDANFEFR.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
    ACBrNFeDANFEFR.ExpandeLogoMarca := True;
  end;

  Try

    With ACBrNFe.NotasFiscais.Add.NFe Do
    Begin

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      Ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      Ide.natOp := toetoeidentificacao.AsString;

      case mestfpcodigo.AsInteger of
        0:
          Ide.indPag := ipVista;
        1:
          Ide.indPag := ipPrazo;
        9:
          Ide.indPag := ipOutras;
      else
        Ide.indPag := ipOutras;
      end;

      vHora := agora(Application, zcone);
      vDia := hoje(Application, zcone);

      fnfe.vpDataAtual := strtodatetime(formatdatetime('dd/mm/yyyy', strtodate(vDia)) + ' ' + formatdatetime('hh:mm:ss', strtodatetime(vHora)));

      Ide.modelo := 55;
      Ide.serie := cfgcfgserienfe.AsInteger;

      // Ide.cNF -> Número da NFe definido por último.
      Ide.dEmi := vpDataAtual;
      Ide.dSaiEnt := vpDataAtual;

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
        Ide.idDest := doInterestadual
      else
        Ide.idDest := doInterna;

      case toettecodigo.AsInteger of
        0:
          Ide.tpNF := tnEntrada;
        1:
          Ide.tpNF := tnSaida;
      end;

      Ide.tpImp := tiRetrato;
      Ide.tpEmis := teNormal;

      (* Finalidade da NFe *)
      case toettocodigo.AsInteger of
        ttoCompra, ttoVenda, ttoRemessaRetorno:
          Ide.finNFe := fnNormal;
        ttoDevolucao:
          Ide.finNFe := fnDevolucao;
        ttoAjuste:
          Ide.finNFe := fnAjuste;
        ttoComplemento:
          Ide.finNFe := fnComplementar;
      end;

      Ide.indFinal := cfNao;

      if toettocodigo.AsInteger = ttoVenda then
        Ide.indPres := pcPresencial
      else
        Ide.indPres := pcNao;

      Ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        Ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
      begin
        Ide.tpAmb := taModo;
      end
      else
      begin
        Ide.tpAmb := taHomologacao;
      end;

      Ide.verProc := '18.25.7.001';

      (*
        *
        ****** Grupo de Informações de Documentos Referenciados
        *
      *)
      vInfComplCF := '';
      vSeparadorCF := '';

      if mestdfcodigo.AsString = tdfCupomFiscalEmitidoPorECF then
      begin
        qconsulta.Close;
        qconsulta.SQL.Text := 'SELECT tomchave FROM tom, tof, cfr WHERE ';
        qconsulta.SQL.Add('tom.tofcodigo = tof.tofcodigo ');
        qconsulta.SQL.Add('AND tof.tofcodigo = cfr.tofcodigo ');
        qconsulta.SQL.Add('AND tof.ticcodigo = ' + IntToStr(ticCupomFiscal) + ' ');
        qconsulta.SQL.Add('AND tom.meschave = ' + vpMesChave);
        qconsulta.Open;

        if qconsulta.IsEmpty then
        begin
          if not tof.Active then
            tof.Open;

          tof.append;
          toftofidentificacao.AsString := 'Cupom Fiscal referenciado - ' + mesmescoocupom.AsString;
          tofticcodigo.AsInteger := ticCupomFiscal;
          tof.Post;

          if not tom.Active then
            tom.Open;

          tom.append;
          tomtofcodigo.AsInteger := toftofcodigo.AsInteger;
          tommeschave.AsString := vpMesChave;
          tom.Post;

          if not cfr.Active then
            cfr.Open;

          cfr.append;
          cfrtdfcodigo.AsString := tdfCupomFiscalEmitidoPorECF;
          cfrcfrcooecf.AsInteger := mesmescoocupom.AsInteger;
          cfrecfcodigo.AsInteger := 1;
          cfrtofcodigo.AsInteger := toftofcodigo.AsInteger;
          cfrcfremissao.AsFloat := mesmesdatacupom.AsFloat;
          cfr.Post;
        end;

        (* Cupom Fiscal Referenciado *)
        qCfrEcf.Close;
        qCfrEcf.Params.ParamByName('tofcodigo').AsInteger := qTomTof.Fields[0].AsInteger;
        qCfrEcf.Open;

        if not qCfrEcf.IsEmpty then
        begin
          with Ide.NFref.Add do
          begin
            RefECF.modelo := ECFModRef2D;
            RefECF.nECF := qCfrEcfecfcaixa.AsString;
            RefECF.nCOO := qCfrEcfcfrcooecf.AsString;
          end;

          if vInfComplCF = '' then
            vInfComplCF := 'Cupom Fiscal referenciado: ';

          vInfComplCF := vInfComplCF + vSeparadorCF + qCfrEcfcfrcooecf.AsString;
          vSeparadorCF := ',';
        end;
      end;

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
        with Ide.NFref.Add do
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
        vTestaInscEst := Trim(SomenteNumeros(etdedrinscest.AsString));

        if vTestaInscEst = '00000000000' then
          vTestaInscEst := '';

        strtofloat(vTestaInscEst);

        ACBrValidador1.TipoDocto := docInscEst;
        ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
        ACBrValidador1.Documento := vTestaInscEst;

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'),
            'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
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
          Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'), 'CNPJ ou CPF Inválido',
            MB_OK + MB_ICONERROR);

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
        if Ide.indPres = pcPresencial then
        begin
          if Ide.indFinal = cfConsumidorFinal then
          begin

            VerifieAjustaItemcomConsumidorFinal;

          end;
        end;
      end;

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      itm.First;

      While Not itm.Eof Do
      Begin
        With Det.Add Do
        Begin

          infAdProd := itmitmdesccomple.AsString;
          Prod.nItem := it;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);

          Prod.CFOP := itmcfocfop.AsString; // '5101';

          if ExigeGrupoCombustivel(Prod.CFOP) then
          begin
            if Length(itmproanpcodigo.AsString) <> 9 then
              raise Exception.Create('CFOP  de  Combustível  e  não  informado código da ANP no cadastro do produto!');

            with Prod.comb do
            begin
              cProdANP := itmproanpcodigo.AsInteger;
              UFcons := UpperCase(etdufssigla.AsString);
            end;
          end;

          Prod.cProd := self.itmprocodigo.AsString; // '67';

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(Trim(itmpronome.AsString), '%', ''); // 'ALHO 400 G';

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(Trim(itmpronomereduzido.AsString), '%', ''); // 'ALHO 400 G';

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := Trim(Copy(Prod.xProd, 2, 300));

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

          if cfgcfgcestativo.AsInteger = 1 then
          begin
            if itmtcecest.AsString <> '' then
            begin

              Prod.CEST := itmtcecest.AsString;

            end;
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

              case Emit.CRT of
                (* CSOSN *)
                crtSimplesNacional, crtSimplesExcessoReceita:
                  begin
                    vCST := self.itmcstcodigo.AsString;

                    vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                    if vlCSOSNIcmsOK then
                      CSOSN := vlCSOSNIcms

                  end;

                (* CST *)
                crtRegimeNormal:
                  begin

                    if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                    end
                    else
                    begin

                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2));
                    end;

                    if vlCSTIcmsOK then
                      CST := vlCSTIcms;
                  end;
              end;

              // (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90,cstPart10,cstPart90,cstRep41,cstVazio);
              ICMS.modBC := dbiValorOperacao;
              If (LowerCase(self.itmicmcodigo.AsString) = 'ff') Or (LowerCase(self.itmicmcodigo.AsString) = 'ii') Or (LowerCase(self.itmicmcodigo.AsString) = 'nn') Then
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
                  ICMS.pICMS := self.itmicmcodigo.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.AsCurrency;
                  ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;

                  if ICMS.CSOSN = csosn900 then
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 17.65;
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
                      ICMS.pMVAST := 17.65;
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

            pis.CST := StrToCSTPIS(ok, itmcspcodigo.AsString);
            COFINS.CST := StrToCSTCOFINS(ok, itmcsfcodigo.AsString);

            if cfgcrtcodigo.AsInteger = 3 then // não é simples nem mei
            begin
              pis.pPIS := itmitmaliqpis.AsFloat;
              pis.vBC := itmitmbpis.AsCurrency;
              pis.vPIS := itmitmpis.AsFloat;
              vltotpis := vltotpis + pis.vPIS;

              COFINS.pCOFINS := itmitmaliqcofins.AsFloat;
              COFINS.vBC := itmitmbcofins.AsCurrency;
              COFINS.vCOFINS := itmitmcofins.AsFloat;
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
          Transp.modFrete := mfContaDestinatario;
        2:
          Transp.modFrete := mfContaTerceiros;
        9:
          Transp.modFrete := mfSemFrete;
      end;

      dtm.Close;
      dtm.ParamByName('meschave').AsString := vpMesChave;
      dtm.Open;

      If dtm.RecordCount = 1 Then
      Begin

        If dtmetdcodigo.AsInteger <> mesetdcodigo.AsInteger Then
        Begin
          if itmproanpcodigo.AsString <> '' then
          begin
            Transp.Transporta.xNome := dtmetdidentificacao.AsString;
            Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
            Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

            Transp.Transporta.xEnder := dtmedrrua.AsString;
            Transp.Transporta.xMun := dtmcddnome.AsString;
            Transp.Transporta.UF := dtmufssigla.AsString;

            Transp.veicTransp.placa := dtmdtmplaca.AsString;
            Transp.veicTransp.UF := dtmufssigla.AsString;
          end;
        End;

        Transp.Vol.Add;
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

        Transp.Vol.Add;
        Transp.Vol.Items[0].qVol := 1;
        Transp.Vol.Items[0].esp := '';
        Transp.Vol.Items[0].marca := '';
        Transp.Vol.Items[0].pesoB := 0;
        Transp.Vol.Items[0].pesoL := 0;
      End;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vIPI := vtipi;
      Total.ICMSTot.vBC := vtBC;
      Total.ICMSTot.vICMS := RoundTo(vtICMS, -2); // 180;
      Total.ICMSTot.vBCST := vtBCST;
      Total.ICMSTot.vST := RoundTo(vtICMSST, -2);
      Total.ICMSTot.vNF := mesmestotal.AsCurrency;
      Total.ICMSTot.vProd := RoundTo(vxtot, -2);
      Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
      Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;

      case mesrefcodigo.AsInteger of
        1:
          Total.ICMSTot.vFrete := vlTotalFrete;
        9:
          Total.ICMSTot.vFrete := 0;
      end;

      Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro), -2);

      qTomTof.Close;
      qTomTof.SQL.Text := 'SELECT tofidentificacao FROM tom, tof WHERE ';
      qTomTof.SQL.Add('tom.tofcodigo = tof.tofcodigo AND ');
      qTomTof.SQL.Add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
      qTomTof.SQL.Add('tom.meschave = ' + vpMesChave + ' ');
      qTomTof.SQL.Add('ORDER BY tof.tofcodigo');
      qTomTof.Open;

      vInfComplGeral := '';

      while not qTomTof.Eof do
      begin
        vInfComplGeral := vInfComplGeral + Trim(qTomTof.Fields[0].AsString) + ';';
        qTomTof.Next;
      end;

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

      InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib, toetoeidentificacao.AsString, '',
        [rfReplaceAll, rfIgnoreCase]);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if Ide.indPres = pcPresencial then
        begin
          if Ide.indFinal = cfConsumidorFinal then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
            consulta.Open;
            Ide.natOp := consulta.FieldByName('toeidentificacao').AsString;
            Ide.idDest := doInterna;

            InfAdic.infCpl := InfAdic.infCpl + ' ' + '"ICMS recolhido anteriormente por estimativa simplificada - Operação Presencial/Venda no Balcão”';

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

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET mesnumero = ' + IntToStr(vNumeroNFe) + ' WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString;
      qconsulta.ExecSQL;

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

      Ide.nNF := vNumeroNFe;
      Ide.cNF := GerarCodigoDFe(vNumeroNFe);

      (* A partir deste momento venda é considerada uma NF-e Pendente pois já possui número *)
      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET ';
      qconsulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
      qconsulta.SQL.Add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
      qconsulta.SQL.Add('tdfcodigo = ''55'', ');
      qconsulta.SQL.Add('temcodigo = 4 ');
      qconsulta.SQL.Add('WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
      qconsulta.ExecSQL;

    End;
  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro preenchimento dos dados da NF-e.' + #13 + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Preenchimento NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
      exit;
    End;
  End;

  try
    // Gera Arquivo da NF-e e mantém memória
    ACBrNFe.Configuracoes.WebServices.Visualizar := False;

    ACBrNFe.NotasFiscais.GerarNFe;

    vChaveNFe := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    ACBrNFe.NotasFiscais.Items[0].GravarXML(vChaveNFe + '-nfe.xml', ACBrNFe.Configuracoes.Arquivos.PathSalvar);

    CheckBox3.Checked := True;
    atualizatela;

    // Assina e salva arquivo no Path definido
    try
      ACBrNFe.NotasFiscais.Assinar;
    except

    end;

    CheckBox4.Checked := True;
    atualizatela;

    CheckBox5.Checked := True;
    atualizatela;

  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro na geração da NF-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Geração NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      exit;
    End;
  end;

  vpRetorno := '';

End;

Procedure Tfnfe.ReGeraXML(taModo: TpcnTipoAmbiente = taProducao);
Var
  it: Integer;
  vtBC: Double;
  vtICMS: Double;
  vtBCST: Double;
  vtICMSST: Double;
  vtipi: Double;
  vCST: String;

  vInfComplGeral, vSeparadorGeral: String;
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
  ValidaProdutos: TValidaProdutos;
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

var
  s: String;
  iValue, iCode: Integer;

Begin
  vlTemANP := False;
  vlTotalST := 0;
  vlTotalFrete := 0;

  vxdesc := 0;
  vxtot := 0;
  vxliq := 0;

  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  mes.Close;
  mes.Params[0].AsString := vpMesChave;
  mes.Params[1].AsInteger := Acesso.Filial;
  mes.Open;

  itm.Close;
  itm.Params[0].AsString := vpMesChave;
  itm.Params[1].AsInteger := Acesso.Filial;
  itm.Open;


  //
  // Carrega Operação e Entidade
  //

  toe.Close;
  toe.SQL.Text := 'SELECT ttecodigo, toeidentificacao, toecodigo, ttocodigo,toedescricao FROM toe WHERE toecodigo = ' + mestoecodigo.AsString;
  toe.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  AjustaObservacoes;

  CheckBox1.Checked := True;
  atualizatela;


  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFe.NotasFiscais.Clear;

  ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

  If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
  begin
    ACBrNFeDANFEFR.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
    ACBrNFeDANFEFR.ExpandeLogoMarca := True;
  end;

  Try

    With ACBrNFe.NotasFiscais.Add.NFe Do
    Begin

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      Ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      Ide.natOp := toetoeidentificacao.AsString;

      case mestfpcodigo.AsInteger of
        0:
          Ide.indPag := ipVista;
        1:
          Ide.indPag := ipPrazo;
        9:
          Ide.indPag := ipOutras;
      else
        Ide.indPag := ipOutras;
      end;

      vHora := agora(Application, zcone);
      vDia := mesmesregistro.AsString;

      fnfe.vpDataAtual := mesmesregistro.AsFloat;
      Ide.modelo := 55;
      Ide.serie := cfgcfgserienfe.AsInteger;

      // Ide.cNF -> Número da NFe definido por último.
      Ide.dEmi := vpDataAtual;
      Ide.dSaiEnt := vpDataAtual;

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
        Ide.idDest := doInterestadual
      else
        Ide.idDest := doInterna;

      case toettecodigo.AsInteger of
        0:
          Ide.tpNF := tnEntrada;
        1:
          Ide.tpNF := tnSaida;
      end;

      Ide.tpImp := tiRetrato;
      Ide.tpEmis := teNormal;

      (* Finalidade da NFe *)
      case toettocodigo.AsInteger of
        ttoCompra, ttoVenda, ttoRemessaRetorno:
          Ide.finNFe := fnNormal;
        ttoDevolucao:
          Ide.finNFe := fnDevolucao;
        ttoAjuste:
          Ide.finNFe := fnAjuste;
        ttoComplemento:
          Ide.finNFe := fnComplementar;
      end;

      Ide.indFinal := cfNao;

      if toettocodigo.AsInteger = ttoVenda then
        Ide.indPres := pcPresencial
      else
        Ide.indPres := pcNao;

      Ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        Ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
      begin
        Ide.tpAmb := taModo;
      end
      else
      begin
        Ide.tpAmb := taHomologacao;
      end;

      Ide.verProc := '18.25.1.001';

      (*
        *
        ****** Grupo de Informações de Documentos Referenciados
        *
      *)
      vInfComplCF := '';
      vSeparadorCF := '';

      if mestdfcodigo.AsString = tdfCupomFiscalEmitidoPorECF then
      begin
        qconsulta.Close;
        qconsulta.SQL.Text := 'SELECT tomchave FROM tom, tof, cfr WHERE ';
        qconsulta.SQL.Add('tom.tofcodigo = tof.tofcodigo ');
        qconsulta.SQL.Add('AND tof.tofcodigo = cfr.tofcodigo ');
        qconsulta.SQL.Add('AND tof.ticcodigo = ' + IntToStr(ticCupomFiscal) + ' ');
        qconsulta.SQL.Add('AND tom.meschave = ' + vpMesChave);
        qconsulta.Open;

        if qconsulta.IsEmpty then
        begin
          if not tof.Active then
            tof.Open;

          tof.append;
          toftofidentificacao.AsString := 'Cupom Fiscal referenciado - ' + mesmescoocupom.AsString;
          tofticcodigo.AsInteger := ticCupomFiscal;
          tof.Post;

          if not tom.Active then
            tom.Open;

          tom.append;
          tomtofcodigo.AsInteger := toftofcodigo.AsInteger;
          tommeschave.AsString := vpMesChave;
          tom.Post;

          if not cfr.Active then
            cfr.Open;

          cfr.append;
          cfrtdfcodigo.AsString := tdfCupomFiscalEmitidoPorECF;
          cfrcfrcooecf.AsInteger := mesmescoocupom.AsInteger;
          cfrecfcodigo.AsInteger := 1;
          cfrtofcodigo.AsInteger := toftofcodigo.AsInteger;
          cfrcfremissao.AsFloat := mesmesdatacupom.AsFloat;
          cfr.Post;
        end;

        (* Cupom Fiscal Referenciado *)
        qCfrEcf.Close;
        qCfrEcf.Params.ParamByName('tofcodigo').AsInteger := qTomTof.Fields[0].AsInteger;
        qCfrEcf.Open;

        if not qCfrEcf.IsEmpty then
        begin
          with Ide.NFref.Add do
          begin
            RefECF.modelo := ECFModRef2D;
            RefECF.nECF := qCfrEcfecfcaixa.AsString;
            RefECF.nCOO := qCfrEcfcfrcooecf.AsString;
          end;

          if vInfComplCF = '' then
            vInfComplCF := 'Cupom Fiscal referenciado: ';

          vInfComplCF := vInfComplCF + vSeparadorCF + qCfrEcfcfrcooecf.AsString;
          vSeparadorCF := ',';
        end;
      end;

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
        with Ide.NFref.Add do
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
        vTestaInscEst := Trim(SomenteNumeros(etdedrinscest.AsString));

        if vTestaInscEst = '00000000000' then
          vTestaInscEst := '';

        strtofloat(vTestaInscEst);

        ACBrValidador1.TipoDocto := docInscEst;
        ACBrValidador1.Complemento := UpperCase(etdufssigla.AsString);
        ACBrValidador1.Documento := vTestaInscEst;

        if not ACBrValidador1.Validar then
        begin
          Application.MessageBox(PChar('Inscrição Estadual do destinatário inválida.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'),
            'Inscrição Estadual Inválida', MB_OK + MB_ICONERROR);
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
          Application.MessageBox(PChar('CNPJ ou CPF do destinatário inválido.' + #13 + #13 + 'Corrija no cadastro do destinatário e tente novamente.'), 'CNPJ ou CPF Inválido',
            MB_OK + MB_ICONERROR);

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
        if Ide.indPres = pcPresencial then
        begin
          if Ide.indFinal = cfConsumidorFinal then
          begin

            VerifieAjustaItemcomConsumidorFinal;

          end;
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

        With Det.Add Do
        Begin

          infAdProd := itmitmdesccomple.AsString;
          Prod.nItem := it;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);

          Prod.CFOP := itmcfocfop.AsString; // '5101';

          if ExigeGrupoCombustivel(Prod.CFOP) then
          begin
            if Length(itmproanpcodigo.AsString) <> 9 then
              raise Exception.Create('CFOP  de  Combustível  e  não  informado código da ANP no cadastro do produto!');

            with Prod.comb do
            begin
              cProdANP := itmproanpcodigo.AsInteger;
              UFcons := UpperCase(etdufssigla.AsString);
            end;
          end;

          Prod.cProd := self.itmprocodigo.AsString; // '67';

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(Trim(itmpronome.AsString), '%', ''); // 'ALHO 400 G';

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(Trim(itmpronomereduzido.AsString), '%', ''); // 'ALHO 400 G';

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := Trim(Copy(Prod.xProd, 2, 300));

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

          if cfgcfgcestativo.AsInteger = 1 then
          begin
            if itmtcecest.AsString <> '' then
            begin
              Prod.CEST := itmtcecest.AsString;
            end;

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

              case Emit.CRT of
                (* CSOSN *)
                crtSimplesNacional, crtSimplesExcessoReceita:
                  begin
                    vCST := self.itmcstcodigo.AsString;

                    vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, vCST);

                    if vlCSOSNIcmsOK then
                      CSOSN := vlCSOSNIcms

                  end;

                (* CST *)
                crtRegimeNormal:
                  begin
                    if (Copy(self.itmcstcodigo.AsString, 2, 2) = '60') and (itmproanpcodigo.AsString <> '') then
                    begin
                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2) + 'rep');

                    end
                    else
                    begin

                      vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(self.itmcstcodigo.AsString, 2, 2));
                    end;

                    if vlCSTIcmsOK then
                      CST := vlCSTIcms;
                  end;
              end;

              // (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90,cstPart10,cstPart90,cstRep41,cstVazio);

              ICMS.modBC := dbiValorOperacao;
              If (LowerCase(self.itmicmcodigo.AsString) = 'ff') Or (LowerCase(self.itmicmcodigo.AsString) = 'ii') Or (LowerCase(self.itmicmcodigo.AsString) = 'nn') Then
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
                  ICMS.pICMS := self.itmicmcodigo.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.AsCurrency;
                  ICMS.pRedBC := itmitmpercreducaobaseicm.AsCurrency;
                  if ICMS.CSOSN = csosn900 then
                  begin
                    if (itmitmbicms.AsFloat > 0) and (itmitmaliqicms.AsFloat > 0) then
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 17.65;
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
                      ICMS.pMVAST := 17.65;
                      ICMS.vBCST := itmitmbicms.AsFloat;
                      ICMS.pICMSST := itmitmaliqicms.AsFloat;
                      ICMS.vICMSST := itmitmicms.AsFloat;
                    end;
                  end;
                End;
              End;

              vtICMS := vtICMS + ICMS.vICMS;
              vtBC := vtBC + ICMS.vBC;
              vlTotalST := vlTotalST + ICMS.vICMSST;
              vtICMSST := vtICMSST + ICMS.vICMSST;

              vtBCST := vtBCST + ICMS.vBCST;
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
            pis.CST := StrToCSTPIS(ok, itmcspcodigo.AsString);
            COFINS.CST := StrToCSTCOFINS(ok, itmcsfcodigo.AsString);

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

      dtm.Close;
      dtm.ParamByName('meschave').AsString := vpMesChave;
      dtm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      dtm.Open;

      If dtm.RecordCount = 1 Then
      Begin

        if vlTemANP then
        begin
          Transp.Transporta.xNome := dtmetdidentificacao.AsString;
          Transp.Transporta.CNPJCPF := SomenteNumeros(dtmetddoc1.AsString);
          Transp.Transporta.IE := SomenteNumeros(dtmedrinscest.AsString);

          Transp.Transporta.xEnder := dtmedrrua.AsString;
          Transp.Transporta.xMun := dtmcddnome.AsString;
          Transp.Transporta.UF := dtmufssigla.AsString;

          Transp.veicTransp.placa := dtmdtmplaca.AsString;
          Transp.veicTransp.UF := dtmufssigla.AsString;
        end;

        Transp.Vol.Add;
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

        Transp.Vol.Add;
        Transp.Vol.Items[0].qVol := 1;
        Transp.Vol.Items[0].esp := '';
        Transp.Vol.Items[0].marca := '';
        Transp.Vol.Items[0].pesoB := 0;
        Transp.Vol.Items[0].pesoL := 0;
      End;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vIPI := vtipi;
      Total.ICMSTot.vBC := vtBC;
      Total.ICMSTot.vICMS := RoundTo(vtICMS, -2); // 180;
      Total.ICMSTot.vBCST := vtBCST;
      Total.ICMSTot.vST := RoundTo(vtICMSST, -2);
      Total.ICMSTot.vNF := mesmestotal.AsCurrency;
      Total.ICMSTot.vProd := RoundTo(vxtot, -2);
      Total.ICMSTot.vDesc := RoundTo(vxdesc, -2);
      Total.ICMSTot.vOutro := mesmesoutras.AsCurrency;

      Total.ICMSTot.vNF := RoundTo((vxtot - vxdesc + vtipi + Total.ICMSTot.vST + Total.ICMSTot.vOutro + vlTotalST), -2);

      case mesrefcodigo.AsInteger of
        1:
          Total.ICMSTot.vFrete := vlTotalFrete;
        9:
          Total.ICMSTot.vFrete := 0;
      end;

      qTomTof.Close;
      qTomTof.SQL.Text := 'SELECT tofidentificacao FROM tom, tof WHERE ';
      qTomTof.SQL.Add('tom.tofcodigo = tof.tofcodigo AND ');
      qTomTof.SQL.Add('tof.ticcodigo IN (' + IntToStr(ticObservacao) + ') AND ');
      qTomTof.SQL.Add('tom.meschave = ' + vpMesChave + ' ');
      qTomTof.SQL.Add('ORDER BY tof.tofcodigo');
      qTomTof.Open;

      vInfComplGeral := '';

      while not qTomTof.Eof do
      begin
        if pos(Trim(qTomTof.Fields[0].AsString), vInfComplGeral) = 0 then
        begin
          vInfComplGeral := vInfComplGeral + Trim(qTomTof.Fields[0].AsString) + ';';
        end;
        qTomTof.Next;
      end;

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
      InfAdic.infCpl := StringReplace(vInfComplGeral + vInfComplCF + vInfComplNF + vInfComplNFP + vInfComplNFe + vlMensagemCargaTrib, toetoeidentificacao.AsString, '',
        [rfReplaceAll, rfIgnoreCase]);

      if UpperCase(cfgufssigla.AsString) <> UpperCase(etdufssigla.AsString) then
      begin
        if Ide.indPres = pcPresencial then
        begin
          if Ide.indFinal = cfConsumidorFinal then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select toeidentificacao from toe where toecodigo=' + mestoecodigo.AsString;
            consulta.Open;
            Ide.natOp := consulta.FieldByName('toeidentificacao').AsString;
            Ide.idDest := doInterna;

            InfAdic.infCpl := InfAdic.infCpl + ' ' + '"ICMS recolhido anteriormente por estimativa simplificada - Operação Presencial/Venda no Balcão”';

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

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET mesnumero = ' + IntToStr(vNumeroNFe) + ' WHERE meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString;
      qconsulta.ExecSQL;

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

      Ide.nNF := vNumeroNFe;
      Ide.cNF := GerarCodigoDFe(vNumeroNFe);

    End;
  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro preenchimento dos dados da NF-e.' + #13 + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Preenchimento NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
      exit;
    End;
  End;

  try
    // Gera Arquivo da NF-e e mantém memória

    ACBrNFe.Configuracoes.WebServices.Visualizar := False;

    ACBrNFe.NotasFiscais.GerarNFe;

    vChaveNFe := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    ACBrNFe.NotasFiscais.Items[0].GravarXML(vChaveNFe + '-nfe.xml', ACBrNFe.Configuracoes.Arquivos.PathSalvar);

    CheckBox3.Checked := True;
    atualizatela;

    // Assina e salva arquivo no Path definido
    try
      ACBrNFe.NotasFiscais.Assinar;
    except

    end;

    CheckBox4.Checked := True;
    atualizatela;

    CheckBox5.Checked := True;
    atualizatela;

  Except
    On E: Exception Do
    Begin
      If E.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + E.Message;

      Application.MessageBox(PChar('Erro na geração da NF-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFe".'), 'Erro Geração NF-e',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      exit;
    End;
  end;

  vpRetorno := '';

End;

Function Tfnfe.GeraNomeNFe(vmeschave: String): String;
Var
  Retorno: String;
  vAnoMesNFe: String;
  arq: String;
Begin
  Retorno := '';

  qconsulta.Close;
  qconsulta.SQL.Text := 'SELECT mesdatanfe, mesregistro, meschavenfe FROM mes WHERE meschave = ' + vmeschave + ' and flacodigo=' + Acesso.Filial.ToString;
  qconsulta.Open;

  If (self.qconsulta.RecordCount = 1) And (qconsulta.Fields[0].AsString <> '') Then
  Begin
    vAnoMesNFe := vPastaPrincipal + fnfe.vSubPastaDoc + '\' + formatdatetime('yyyymm', qconsulta.Fields[0].AsFloat);
    arq := vAnoMesNFe + '\' + qconsulta.Fields[2].AsString + '-nfe.XML';
    Retorno := arq;
  End
  Else If (self.qconsulta.RecordCount = 1) And (qconsulta.Fields[1].AsString <> '') Then
  Begin
    vAnoMesNFe := vPastaPrincipal + fnfe.vSubPastaDoc + '\' + formatdatetime('yyyymm', qconsulta.Fields[1].AsFloat);
    arq := vAnoMesNFe + '\' + qconsulta.Fields[2].AsString + '-nfe.XML';
    Retorno := arq;
  End;

  qconsulta.Close;

  Result := Retorno;
End;

procedure Tfnfe.VerifieAjustaItemcomConsumidorFinal;
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;
begin

  itm.First;

  // ajusta o toe do item para produto com substituição
  While Not itm.Eof Do
  Begin

    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' + cfgcfgtoemesinte.AsString;
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

    itmncm.SQL.Text := 'update itm set itmcofins=' + vlcfgpercentualcofins + ' ,itmpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
      QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
      cfgcfgtoemesinte.AsString + ' where itmchave=' + itmitmchave.AsString;
    itmncm.ExecSQL;

    itm.Next;
  End;

  itmncm.Close;

  itmncm.SQL.Text := 'update mes set toecodigo=' + cfgcfgtoemesinte.AsString + ' where meschave=' + mesmeschave.AsString;
  itmncm.ExecSQL;



  // fim do ajusta o toe do item para produto com substituição

end;

procedure Tfnfe.VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
var
  vlcfop: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlcfgpercentualpis: string;
  vlcfgpercentualcofins: string;
begin

  itm.First;

  // ajusta o toe do item para produto com substituição
  While Not itm.Eof Do
  Begin

    ncm.Close;
    ncm.SQL.Text := 'select ansanexo from ans where (tcgncm LIKE ' + QuotedStr(itmproncm.AsString) + ') or (tcgncm LIKE ' + QuotedStr(Copy(itmproncm.AsString, 1, 4)) + ')';
    ncm.Open;

    if (not ncm.IsEmpty) or (cfgcfgsubstitutotributario.AsInteger = 1) then
    begin
      if usEmitente <> ufDestinatario then
      begin

        if itmproanpcodigo.AsString <> '' then
        begin
          if (cfgcfgtoesubstanpforaestado.AsInteger <> 0) then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoesubstanpforaestado.AsString;
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
            itmncm.SQL.Text := 'update itm set itmcofins=' + vlcfgpercentualcofins + ' ,itmpis=' + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
              QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo='
              + cfgcfgtoesubstanpforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
            itmncm.ExecSQL;

          end;

        end
        else
        begin

          if (cfgcfgtoesubstforaestado.AsInteger <> 0) then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoesubstforaestado.AsString;
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

            itmncm.SQL.Text := 'update itm set itmcofins=' + vlcfgpercentualcofins + ' ,itmpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
              QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
              cfgcfgtoesubstforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
            itmncm.ExecSQL;

          end;

        end;

      end;

      if usEmitente = ufDestinatario then
      begin

        if itmproanpcodigo.AsString <> '' then
        begin
          if (cfgcfgtoesubstanpnoestado.AsInteger <> 0) then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoesubstanpnoestado.AsString;
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
            itmncm.SQL.Text := 'update itm set itmcofins=' + vlcfgpercentualcofins + ' ,itmpis=' + vlcfgpercentualpis + ',  cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
              QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfodigo=' + QuotedStr(vlcsfcodigo) + '   ,toecodigo='
              + cfgcfgtoesubstanpnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
            itmncm.ExecSQL;

          end;

        end
        else
        begin

          if (cfgcfgtoesubstnoestado.AsInteger <> 0) then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select toecfopsaida,cstcodigo,csicodigo,cspcodigo, csfcodigo,cfgpercentualpis, cfgpercentualcofins from toe where toecodigo=' +
              cfgcfgtoesubstnoestado.AsString;
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

            itmncm.SQL.Text := 'update itm set itmcofins=' + vlcfgpercentualcofins + ' ,itmpis=' + vlcfgpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' +
              QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) + ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ', toecodigo=' +
              cfgcfgtoesubstnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
            itmncm.ExecSQL;

          end;

        end;
      end;
    end;
    itm.Next;
  End;




  // fim do ajusta o toe do item para produto com substituição

end;

{ *


  procedure Tfnfe.VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
  var
  vlcfop: string;
  begin

  itm.First;

  // ajusta o toe do item para produto com substituição
  While Not itm.Eof Do
  Begin

  ncmsubst.Close;
  ncmsubst.Connection := zcone;
  ncmsubst.SQL.Text := 'select ansanexo from ans where (tcgncm LIKE ' + QuotedStr(itmproncm.AsString) + ') or (tcgncm LIKE ' + QuotedStr(Copy(itmproncm.AsString, 1, 4)) + ')';
  ncmsubst.Open;

  if not ncmsubst.IsEmpty then
  begin
  if usEmitente <> ufDestinatario then
  begin
  if itmproanpcodigo.AsString <> '' then
  begin
  if (cfgcfgtoesubstanpforaestado.AsInteger <> 0) then
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstanpforaestado.AsString;
  consulta.Open;

  vlcfop := consulta.FieldByName('toecfopsaida').AsString;

  itmncm.Close;
  itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  ,toecodigo=' + cfgcfgtoesubstanpforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
  itmncm.ExecSQL;

  end;

  end
  else
  begin
  if (cfgcfgtoesubstforaestado.AsInteger <> 0) then
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstforaestado.AsString;
  consulta.Open;

  vlcfop := consulta.FieldByName('toecfopsaida').AsString;

  itmncm.Close;
  itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  ,toecodigo=' + cfgcfgtoesubstforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
  itmncm.ExecSQL;

  end;

  end;

  end;
  if usEmitente = ufDestinatario then
  begin

  if itmproanpcodigo.AsString <> '' then
  begin
  if (cfgcfgtoesubstanpnoestado.AsInteger <> 0) then
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstanpnoestado.AsString;
  consulta.Open;

  vlcfop := consulta.FieldByName('toecfopsaida').AsString;

  itmncm.Close;
  itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  ,toecodigo=' + cfgcfgtoesubstanpnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
  itmncm.ExecSQL;

  end;

  end
  else
  begin

  if (cfgcfgtoesubstnoestado.AsInteger <> 0) then
  begin
  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstnoestado.AsString;
  consulta.Open;

  vlcfop := consulta.FieldByName('toecfopsaida').AsString;

  itmncm.Close;
  itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  , toecodigo=' + cfgcfgtoesubstnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
  itmncm.ExecSQL;
  end;
  end;
  end;

  end;
  itm.Next;
  End;




  // fim do ajusta o toe do item para produto com substituição

  end;

  * }

Procedure Tfnfe.mReimprimirNFe;
Var
  vCStatus: Integer;
Begin

  If not FileExists(vpArquivoNFe) Then
  Begin
    consulta.Close;
    consulta.SQL.Text := 'select mesarqxml from mesxml where meschave=' + self.vpMesChave;
    consulta.Open;

    TBlobField(consulta.FieldByName('mesarqxml')).SaveToFile(vpArquivoNFe);

  End;

  If FileExists(vpArquivoNFe) Then
  Begin

    CarregaNFe(vpArquivoNFe);

    vCStatus := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.CStat;

    if not vCStatus = 100 then
    begin
      Application.MessageBox(PChar('NF-e não autorizada. Não pode ser impressa.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
      exit;
    end;

    ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

    if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
    begin
      ACBrNFeDANFEFR.MostraPreview := True;
      ACBrNFeDANFEFR.MostraSetup := True;
    end;

    ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
    ACBrNFe.NotasFiscais.ImprimirPDF;

  End
  else
    showmessage('457881 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');
End;

Procedure Tfnfe.mReGeraXML;
Begin
  ReGeraXML;

End;

Procedure Tfnfe.mGeraXML;
Begin
  GeraXML;
End;

Procedure Tfnfe.mGeraPrevia;
Begin
  GeraXML(taHomologacao);
  vpArquivoNFe := GeraNomeNFe(vpMesChave);

  If FileExists(vpArquivoNFe) Then
  Begin

    CarregaNFe(vpArquivoNFe);

    ACBrNFeDANFEFR.NumCopias := cfgcfgviasnfe.AsInteger;

    if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
    begin
      ACBrNFeDANFEFR.MostraPreview := True;
      ACBrNFeDANFEFR.MostraSetup := True;
    end;

    ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
    ACBrNFe.NotasFiscais.ImprimirPDF;

  End
  else
    showmessage('457881 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');

End;

Procedure Tfnfe.mEnviarNFe;
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

Procedure Tfnfe.mGerarPDF;
Var
  narq: String;
  vCStat: Integer;
Begin

  narq := vpArquivoNFe;

  If FileExists(narq) Then
  Begin
    CarregaNFe(narq);

    vCStat := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.CStat;

    if not vCStat = 100 then
    begin
      Application.MessageBox(PChar('NF-e não autorizada. Não pode ser gerado PDF.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
      exit;
    end;

    ACBrNFe.NotasFiscais.ImprimirPDF;
  End
  else
    showmessage('543228 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');
End;

Procedure Tfnfe.mInutilizarNumeroNFeDireto;
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

  ACBrNFe.WebServices.Inutiliza(cfgetddoc1.AsString, Justificativa, StrToInt(Ano), 55, 1, StrToInt(NumeroInicial), StrToInt(NumeroFinal));

  rni.Open;
  rni.append;
  rnirniano.AsString := Ano;
  rnirnimes.AsString := mes;
  rnitdfcodigo.AsString := '55';
  rnirninumeroinicial.AsString := NumeroInicial;
  rnirninumerofinal.AsString := NumeroFinal;
  rnirnijutificativa.AsString := Justificativa;
  rni.Post;

  rni.Close;
End;

Procedure Tfnfe.mInutilizarNumeroNFe;
Var
  modelo, serie, Ano, mes, NumeroInicial, NumeroFinal, Justificativa: String;
Begin

  if not LerConfiguracao then
    exit;

  if not vpConsultouSEFAZ then
    mConsultaSEFAZ;

  If Not(InputQuery('Inutilização de Números de NFE ', 'Ano', Ano)) Then
    exit;
  If Not(InputQuery('Inutilização de Números de NFE ', 'Mes', mes)) Then
    exit;
  If Not(InputQuery('Inutilização de Números de NFE ', 'Número Inicial', NumeroInicial)) Then
    exit;
  If Not(InputQuery('Inutilização de Números de NFE ', 'Número Final', NumeroFinal)) Then
    exit;
  If Not(InputQuery('Inutilização de Números de NFE ', 'Justificativa', Justificativa)) Then
    exit;

  ACBrNFe.WebServices.Inutiliza(cfgetddoc1.AsString, Justificativa, StrToInt(Ano), 55, 1, StrToInt(NumeroInicial), StrToInt(NumeroFinal));

  rni.Open;
  rni.append;
  rnirniano.AsString := Ano;
  rnirnimes.AsString := mes;
  rnitdfcodigo.AsString := '55';
  rnirninumeroinicial.AsString := NumeroInicial;
  rnirninumerofinal.AsString := NumeroFinal;
  rnirnijutificativa.AsString := Justificativa;
  rni.Post;
  rni.Close;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE mes,toe SET temcodigo=2, tdfcodigo=' + QuotedStr('00') + ', meschavenfe=' + QuotedStr('') + ', mesprotocolo=' + QuotedStr('') +
    ', mesdatanfe=null WHERE mes.toecodigo=toe.toecodigo and mesnumero>=' + NumeroInicial + ' and mesnumero<=' + NumeroFinal + ' and sdecodigo=' + QuotedStr('00') +
    ' AND tdfcodigo=' + QuotedStr('55') + ' AND toe.ttocodigo=2';
  consulta.ExecSQL;

End;

procedure Tfnfe.cadastraemail(chave, chavemestre: string);
var
  vpack: Cardinal;
  modnfe: tmodete;
begin
  vpack := LoadPackage('modulos\mete.bpl');
  if vpack <> 0 then
    try
      @modnfe := GetProcAddress(vpack, PChar('formulario'));
      if Assigned(modnfe) then
      begin
        modnfe(Application, self.zcone, self.vusrcodigo, chave, chavemestre);
      end;
    finally
      // UnLoadPackage(vpack);
    end;
end;

Procedure Tfnfe.mEmailNFe;
Var
  narq, npdf: String;
  emailscc: string;
  emails: string;
  vlArqs: Tstringlist;
Begin
  try
    vpArquivoNFe := GeraNomeNFe(vpMesChave);
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

    if (FileExists(npdf)) = False then
      mGerarPDF;

    if not(FileExists(narq)) then
    begin
      Application.MessageBox(PChar('Arquivo XML da NF-e não foi localizado!' + #13 + #13 + 'Arquivo: ' + narq), 'Atenção', MB_ICONWARNING + MB_OK);
      exit;
    end;

    if not(FileExists(npdf)) then
    begin
      Application.MessageBox(PChar('Arquivo PDF da NF-e não foi localizado!' + #13 + #13 + 'Arquivo: ' + npdf), 'Atenção', MB_ICONWARNING + MB_OK);
      exit;
    end;

    if (pos('yahoo', cfgcfgemailnfe.AsString) > 0) then
    begin
      try
        vlArqs := Tstringlist.Create;
        vlArqs.Add(narq);
        vlArqs.Add(npdf);

        ArtMAPISendMail('NFE emitida pela empresa: ' + cfgetdapelido.AsString, 'Esta NFE foi emitida tendo sua empresa como destino.', cfgetdapelido.AsString,
          cfgcfgemailnfe.AsString, cfgetdapelido.AsString, emails, [narq, npdf]);

      finally
        freeandnil(vlArqs);
      end;

    end
    else
    begin

      If EnviarEmail(emails, emailscc, 'Esta NFE foi emitida tendo sua empresa como destino.', 'NFE emitida pela empresa: ' + cfgetdapelido.AsString, narq, npdf,
        qEteMesetdidentificacao.AsString, cfgetdapelido.AsString) Then
        Application.MessageBox(PChar('Email enviado com sucesso para: ' + qEteMesetdidentificacao.AsString + #13 + 'Email: ' + emails + #13 + 'Cópias: ' + emailscc),
          'ENVIO CONCLUÍDO', MB_OK + MB_ICONINFORMATION);

      If cfgctdboxedominio.AsString <> '' Then
      Begin
        EnviarEmail(cfgctdboxedominio.AsString, '', 'Esta NFE foi emitida tendo sua empresa como destino.', 'NFE emitida pela empresa: ' + cfgetdapelido.AsString, narq, npdf,
          qconsulta.Fields[1].AsString, cfgetdapelido.AsString);
      End;
    end;

  except
    on E: Exception do
      SalvarLogErro(E.Message, E.StackTrace);
  end;
End;

Function Tfnfe.mConsultaNFe: Boolean;
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

  If FileExists(vpArquivoNFe) Then
  Begin

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

    ACBrNFe.Configuracoes.WebServices.Visualizar := False;
    // try
    ACBrNFe.Consultar;
    vdtNFe := DateToStr(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);
    vhrNFe := TimeToStr(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);
    nProt := ACBrNFe.WebServices.consulta.Protocolo;
    vDtAutorizacao := ACBrNFe.WebServices.consulta.DhRecbto;
    vchNFe := ACBrNFe.WebServices.consulta.NFeChave;
    vCodStatusNFe := IntToStr(ACBrNFe.WebServices.consulta.CStat);
    vMsgStatusNFe := ACBrNFe.WebServices.consulta.xMotivo;

    vnrnfe := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);

    (* Verifica código de retorno é igual a 100 - Uso Autorizado *)

    If ACBrNFe.WebServices.consulta.CStat = 100 Then
    begin
      // Try
      vRetorno := True;

      qconsulta.Close;
      qconsulta.SQL.Text := 'UPDATE mes SET ';
      qconsulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(vdtNFe)) + ', ');
      qconsulta.SQL.Add('mesnumero = ' + QuotedStr(vnrnfe) + ', ');
      qconsulta.SQL.Add('meschavenfe = ' + QuotedStr(vchNFe) + ', ');
      qconsulta.SQL.Add('meshoranfe = ' + QuotedStr(vhrNFe) + ', ');
      qconsulta.SQL.Add('tdfcodigo = ' + QuotedStr('55') + ', ');
      qconsulta.SQL.Add('temcodigo = 5, ');
      qconsulta.SQL.Add('mesprotocolo = ' + QuotedStr(nProt) + ' WHERE ');
      qconsulta.SQL.Add('meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
      qconsulta.ExecSQL;

      // try
      vpArquivoNFe := GeraNomeNFe(vpMesChave);

      if FileExists(vpArquivoNFe) then
      begin
        if not mes.Active then
        begin
          mes.Close;
          mes.Params[0].AsString := vpMesChave;
          mes.Params[1].AsInteger := Acesso.Filial;
          mes.Open;
        end;

        mesxml.Close;
        mesxml.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
        mesxml.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        mesxml.Open;

        if mesxml.IsEmpty then
          mesxml.append
        else
          mesxml.Edit;

        mesxmlmesarqxml.LoadFromFile(vpArquivoNFe);
        mesxml.Post;

      end;
      // except
      // end;

      qconsulta.Close;
      qconsulta.SQL.Text := 'select mesregistro,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vpMesChave;
      qconsulta.Open;

      showmessage('Emissão: ' + qconsulta.Fields[0].AsString + ''#13'' + (* *)
        'Nr. NFE: ' + qconsulta.Fields[1].AsString + ''#13'' + (* *)
        'Chave  : ' + qconsulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
        'Código Status: ' + vCodStatusNFe + #13 + (* *)
        'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
        'Protocolo Nr.: ' + nProt + #13 + (* *)
        'Data  e  Hora: ' + DateTimeToStr(vDtAutorizacao));

      qconsulta.Close;

      // Except
      // End;
    end;
    { except
      on E: Exception do
      begin
      vlRetornoErro := E.Message;
      Application.MessageBox(PChar('Falha ao consultar situação da NF-e.' + #13 + #13 + 'Mensagem: ' + #13 + vlRetornoErro), 'Erro Consulta Status NF-e', MB_OK + MB_ICONERROR);
      (* Consulta não foi realizada corretamente e para não tentar gerar novamente a NF-e retorna como True *)
      vpErroConsultaNFe := True;

      SalvarLogErro(E.Message, E.StackTrace);

      Exit(True);
      end;
      end; }
  End
  Else
    showmessage('564228 - ATENÇÃO: O Arquivo ' + vpArquivoNFe + ' não foi localizado!');

  Result := vRetorno;
End;

Procedure Tfnfe.mCancelarNFe;
Var
  vProtocoloCanc: String;
  vJustificativaCanc: String;
  vTamCorrecao: Integer;
  vCStat: Integer;
  vXMotivo: String;
  vnArqNfe: String;
  vnArqEve: String;
  vAssunto: string;
  vTexto: string;
  vArqEvento: String;
  vChaveEvento: String;
  vErro: string;
  vMsgRetorno: string;
Begin

  If not FileExists(vpArquivoNFe) Then
  begin
    Application.MessageBox(PChar('O Arquivo ' + vpArquivoNFe + ' não foi localizado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  repeat
    if not(InputQuery('Cancelamento da NF-e', 'Justificativa do cancelamento.' + #13 + 'Contendo de 15 a 1000 caracteres.', vJustificativaCanc)) then
      exit;

    vTamCorrecao := Length(vJustificativaCanc);

    if vTamCorrecao < 15 then
      showmessage('Justificativa deve ter no mínimo 15 caracteres!');
  until (vTamCorrecao >= 15);

  If vJustificativaCanc = '' Then
  Begin
    Application.MessageBox(PChar('É necessário uma jutificativa para cancelamento da NFE!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  End;

  if LerConfiguracao then
  begin

    if not vpConsultouSEFAZ then
      mConsultaSEFAZ;

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

    AjustaCaminhoGeralNF(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);

    ACBrNFe.Configuracoes.WebServices.Visualizar := False;

    ACBrNFe.EventoNFe.Evento.Clear;
    ACBrNFe.EventoNFe.idLote := 0;

    with ACBrNFe.EventoNFe.Evento.Add do
    begin

      // vJustificativaCanc := StringReplace(vJustificativaCanc, '> <', '><', [rfIgnoreCase, rfReplaceAll]);
      // vJustificativaCanc := StringReplace(vJustificativaCanc, ' </', '</', [rfIgnoreCase, rfReplaceAll]);
      // vJustificativaCanc := StringReplace(vJustificativaCanc, '> ', '>', [rfIgnoreCase, rfReplaceAll]);
      vJustificativaCanc := StringReplace(vJustificativaCanc, #$D#$A, '', [rfIgnoreCase, rfReplaceAll]);
      vJustificativaCanc := StringReplace(vJustificativaCanc, #$D, '', [rfIgnoreCase, rfReplaceAll]);

      infEvento.dhEvento := vpDataAtual;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := vJustificativaCanc;
      infEvento.versaoEvento := '1.00';
    end;

    Try
      ACBrNFe.EnviarEvento(0);

      vCStat := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.CStat;
      vXMotivo := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
      vProtocoloCanc := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;

      if (vCStat = 135) or (vCStat = 136) then
      begin

        vChaveEvento := Copy(ACBrNFe.EventoNFe.Evento.Items[0].infEvento.ID, 3, 52);

        vArqEvento := ACBrNFe.Configuracoes.Arquivos.PathSalvar;
        vArqEvento := vArqEvento + '\' + vChaveEvento;
        vArqEvento := vArqEvento + '-procEventoNFe.xml';

        enf.Open;
        enf.append;
        enftencodigo.AsInteger := tenCancelamento;
        enfenfregistroevento.AsFloat := vpDataAtual;
        enfenfchaveevento.AsString := vChaveEvento;
        enfenfseqevento.AsInteger := 1; // Cancelamento não tem sequência.
        enfenfdescricao.AsString := vJustificativaCanc;
        if FilesExists(vArqEvento) then
          enfenfxml.LoadFromFile(vArqEvento);
        enfenfcstat.AsInteger := vCStat;
        enfenfxmotivo.AsString := vXMotivo;
        enf.Post;

        mev.Open;
        mev.append;
        mevenfchave.AsInteger := enfenfchave.AsInteger;
        mevmeschave.AsString := vpMesChave;
        mev.Post;

        qconsulta.Close;
        qconsulta.SQL.Text := 'UPDATE mes SET ';
        qconsulta.SQL.Add('sdecodigo = ''02'', ');
        qconsulta.SQL.Add('mesprotocolo = ''' + vProtocoloCanc + ''' ');
        qconsulta.SQL.Add('where meschave = ' + vpMesChave + ' and flacodigo=' + Acesso.Filial.ToString);
        qconsulta.ExecSQL;

        ImprimeEventoNfe;

        EnviarEmailEvento;

        showmessage('Cancelamento efetuado com sucesso!');
      end
      else
        Application.MessageBox(PChar('Evento de NF-e não autorizado.' + #13 + #13 + 'Mensagem: ' + #13 + vXMotivo), 'Erro Envio Evento NF-e', MB_OK + MB_ICONERROR);
    Except
      On E: Exception Do
      Begin

        vCStat := ACBrNFe.EventoNFe.Evento[0].RetInfEvento.CStat;
        vXMotivo := ACBrNFe.EventoNFe.Evento[0].RetInfEvento.xMotivo;

        If E.Message = '' Then
          vErro := ''
        Else
          vErro := #13 + 'Erro: ' + E.Message;

        If (vCStat = 0) And (vXMotivo = '') Then
          vMsgRetorno := ''
        Else
          vMsgRetorno := #13 + 'Retorno: ' + IntToStr(vCStat) + ' - ' + vXMotivo + #13;

        Application.MessageBox(PChar('Evento de NF-e não autorizado.' + #13 + 'Mensagem: ' + vErro), 'Erro Envio NF-e', MB_OK + MB_ICONERROR);

        SalvarLogErro(E.Message, E.StackTrace);

        exit;
      End;
    End;
  end;

End;

Procedure Tfnfe.mManifDestDesconhecimento;
var
  chave, idLote, CNPJ: string;
  lMsg: string;
begin

  if LerConfiguracao then
  begin

    if not vpConsultouSEFAZ then
      mConsultaSEFAZ;

    enf.Close;
    enf.FilterSQL := 'enfchave=' + vpMesChave;
    enf.Open;

    chave := enfenfchavenfe.AsString;

    chave := Trim(OnlyNumber(chave));
    idLote := '1';

    CNPJ := Trim(OnlyNumber(cfgetddoc1.AsString));

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

    ACBrNFe.Configuracoes.WebServices.Visualizar := False;

    ACBrNFe.EventoNFe.Evento.Clear;

    with ACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.cOrgao := 91;
      infEvento.chNFe := chave;
      infEvento.CNPJ := CNPJ;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teManifDestDesconhecimento;

    end;
    ACBrNFe.EnviarEvento(StrToInt(idLote));

    with ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
    begin
      lMsg := 'Id: ' + ID + #13 + 'tpAmb: ' + TpAmbToStr(tpAmb) + #13 + 'verAplic: ' + verAplic + #13 + 'cOrgao: ' + IntToStr(cOrgao) + #13 + 'cStat: ' + IntToStr(CStat) + #13 +
        'xMotivo: ' + xMotivo + #13 + 'chNFe: ' + chNFe + #13 + 'tpEvento: ' + TpEventoToStr(tpEvento) + #13 + 'xEvento: ' + xEvento + #13 + 'nSeqEvento: ' + IntToStr(nSeqEvento) +
        #13 + 'CNPJDest: ' + CNPJDest + #13 + 'emailDest: ' + emailDest + #13 + 'dhRegEvento: ' + DateTimeToStr(dhRegEvento) + #13 + 'nProt: ' + nProt;
    end;
    showmessage(lMsg);

    { MemoResp.Lines.Text := ACBrNFe.WebServices.EnvEvento.RetWS;
      memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      // ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
      LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta); }

  end;

end;

Procedure Tfnfe.mCartaCorrecao;
var
  vCorrecao: string;
  nArqEve: string;
  vSeqEvento: Integer;
  vCStat: Integer;
  vXMotivo: String;
  vnArqPdf: string;
  emails, emailscc: string;
  vAssunto: string;
  vTexto: string;
  vArqEvento: String;
  vChaveEvento: String;
  vErro: string;
  vMsgRetorno: string;
begin
  vpArquivoNFe := GeraNomeNFe(vpMesChave);

  showmessage('Arquivo a ser utilizado: ' + vpArquivoNFe);

  if not FilesExists(vpArquivoNFe) then
  begin
    Application.MessageBox(PChar('Arquivo XML da NF-e não encontrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    exit;
  end;

  if LerConfiguracao then
  begin

    if not vpConsultouSEFAZ then
      mConsultaSEFAZ;

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

    AjustaCaminhoGeralNF(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);

    // Verifica se NFe está Autorizada.
    if not ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.CStat = 100 then
    begin
      Application.MessageBox(PChar('A NF-e selecionada não é autorizada.' + #13 + 'Por favor, consulte a situação da NF-e e tente novamente.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
      exit;
    end;

    ACBrNFeDANFEFR.PathPDF := ACBrNFeDANFEFR.PathPDF + '\CCe';
    ACBrNFe.EventoNFe.Evento.Clear;

    (* Verifica se já existe carta de correção para a NF-e selecionada *)
    qEnfMev.ParamByName('meschave').AsString := vpMesChave;
    qEnfMev.Open;
    qEnfMev.Last;

    if qEnfMevtencodigo.AsInteger = tenCancelamento then
    begin
      Application.MessageBox(PChar('A NF-e selecionada está cancelada.' + #13 + 'Carta de Correção não pode ser gerada para documento cancelado.'), 'ATENÇÃO',
        MB_OK + MB_ICONWARNING);
      exit;
    end;

    vSeqEvento := qEnfMevenfseqevento.AsInteger + 1;
    vCorrecao := '';

    if qEnfMevenfseqevento.AsInteger > 0 then
      case Application.MessageBox(PChar('Já existe uma Carta de Correção vínculada a esta NF-e: ' + qEnfMevenfseqevento.AsString + #13 + 'Novas correções substituem as anteriores.'
        + #13 + 'Deseja manter correções anteriores ?'), 'Carta de Correção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) of
        IDYES:
          vCorrecao := qEnfMevenfdescricao.AsString;
      end;

    fnfecorrecao := Tfnfecorrecao.Create(self);
    try
      fnfecorrecao.textocorrecao.Lines.Text := vCorrecao;
      fnfecorrecao.ShowModal;

      if fnfecorrecao.ModalResult = mrCancel then
        exit;

      vCorrecao := fnfecorrecao.textocorrecao.Lines.Text;

    finally
      fnfecorrecao.Free;
    end;

    (* Cria evento *)
    with ACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.cOrgao := 51;
      infEvento.dhEvento := vpDataAtual;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := vSeqEvento + 1;
      infEvento.detEvento.xCorrecao := vCorrecao;
    end;

    try
      if ACBrNFe.EnviarEvento(0) then
      begin

        vCStat := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.CStat;
        vXMotivo := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
        showmessage(IntToStr(vCStat) + #13 + vXMotivo);

        if (vCStat = 135) or (vCStat = 136) then
        begin
          vChaveEvento := Copy(ACBrNFe.EventoNFe.Evento.Items[0].infEvento.ID, 3, 52);

          vArqEvento := ACBrNFe.Configuracoes.Arquivos.PathSalvar;
          vArqEvento := vArqEvento + '\' + vChaveEvento;
          vArqEvento := vArqEvento + '-procEventoNFe.xml';

          enf.Open;
          enf.append;
          enftencodigo.AsInteger := tenCCe;
          enfenfregistroevento.AsFloat := vpDataAtual;
          enfenfchaveevento.AsString := vChaveEvento;
          enfenfseqevento.AsInteger := vSeqEvento + 1;
          enfenfdescricao.AsString := vCorrecao;
          if FilesExists(vArqEvento) then
            enfenfxml.LoadFromFile(vArqEvento);
          enfenfcstat.AsInteger := vCStat;
          enfenfxmotivo.AsString := vXMotivo;
          enf.Post;

          mev.Open;
          mev.append;
          mevenfchave.AsInteger := enfenfchave.AsInteger;
          mevmeschave.AsString := fnfe.vpMesChave;
          mev.Post;

          (* Impressão e envio de Email do Evento *)
          ImprimeEventoNfe;

          EnviarEmailEvento;
        end
        else
          Application.MessageBox(PChar('Evento de NF-e não autorizado.' + #13 + #13 + 'Mensagem: ' + #13 + vXMotivo), 'Erro Envio Evento NF-e', MB_OK + MB_ICONERROR);
      end
      else
      begin
        vCStat := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.CStat;
        vXMotivo := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
        showmessage(IntToStr(vCStat) + #13 + vXMotivo);

      end;
    Except
      On E: Exception Do
      Begin

        vCStat := ACBrNFe.EventoNFe.Evento[0].RetInfEvento.CStat;
        vXMotivo := ACBrNFe.EventoNFe.Evento[0].RetInfEvento.xMotivo;

        If E.Message = '' Then
          vErro := ''
        Else
          vErro := #13 + 'Erro: ' + E.Message;

        If (vCStat = 0) And (vXMotivo = '') Then
          vMsgRetorno := ''
        Else
          vMsgRetorno := #13 + 'Retorno: ' + IntToStr(vCStat) + ' - ' + vXMotivo + #13;

        Application.MessageBox(PChar('Evento de NF-e não autorizado.' + #13 + 'Mensagem: ' + vErro), 'Erro Envio NF-e', MB_OK + MB_ICONERROR);

        SalvarLogErro(E.Message, E.StackTrace);

        exit;
      End;
    End;
  end;
end;

procedure Tfnfe.ImprimeEventoNfe;
var
  vTipoEvento: String;
begin
  if not LerConfiguracao then
    exit;

  if vpArquivoXMLEvento = '' then
    GeraNomeArqsEvento;

  if not FilesExists(vpArquivoXMLEvento) then
  begin
    Application.MessageBox(PChar('Não foi possível imprimir o Evento selecionado.' + #13 + 'Arquivo XML não localizado.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

  ACBrNFe.EventoNFe.Evento.Clear;
  ACBrNFe.EventoNFe.LerXML(vpArquivoXMLEvento);
  ACBrNFe.ImprimirEvento;

  vTipoEvento := IfThen(ACBrNFe.EventoNFe.Evento.Items[0].infEvento.tpEvento = teCCe, 'CCe', 'Cancelamento');
  ACBrNFe.DANFE.PathPDF := vPastaPrincipal + '\pdfs\' + vTipoEvento;

  ACBrNFe.ImprimirEventoPDF;

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.EventoNFe.Evento.Clear;
end;

Function Tfnfe.mConsultaEventoNFe: Boolean;
Var
  nProt: String;
  vnrnfe: String;
  vchNFe: String;
  vdtNFe: String;
  vhrNFe: String;
  vCodStatusNFe: String;
  vMsgStatusNFe: String;
  vRetorno: Boolean;
  i: Integer;
  nProtCanc: string;
  dhRectoCanc: Extended;
Begin

  vRetorno := False;

  if not LerConfiguracao then
    exit;

  if not FilesExists(vpArquivoNFe) then
  begin
    Application.MessageBox(PChar('Não foi possível consultar o Evento selecionado.' + #13 + 'Arquivo XML não localizado.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.NotasFiscais.LoadFromFile(vpArquivoNFe);

  ACBrNFe.Configuracoes.WebServices.Visualizar := False;
  ACBrNFe.Consultar;

  i := ACBrNFe.WebServices.consulta.procEventoNFe.Count - 1;

  with ACBrNFe.WebServices.consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0] do
  begin

    // RetInfEvento.cStat;     EU NÃO CONSEGUI TERMINAR O QUE ESTAVA FAZENDO ONTEM.

  end;

  if ACBrNFe.WebServices.consulta.procEventoNFe.Items[i].RetEventoNFe.infEvento.tpEvento = teCancelamento then
  begin
    nProtCanc := ACBrNFe.WebServices.consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0].RetInfEvento.nProt;
    dhRectoCanc := ACBrNFe.WebServices.consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0].RetInfEvento.dhRegEvento;
  end;

  vdtNFe := DateToStr(ACBrNFe.WebServices.consulta.DhRecbto);
  vhrNFe := TimeToStr(ACBrNFe.WebServices.consulta.DhRecbto);
  nProt := ACBrNFe.WebServices.consulta.Protocolo;
  vchNFe := ACBrNFe.WebServices.consulta.NFeChave;

  Result := vRetorno;
End;

Procedure Tfnfe.mConsultaSEFAZ;
var
  vlRetornoErro: string;
Begin
  ACBrNFe.Configuracoes.WebServices.Visualizar := True;
  try
    ACBrNFe.WebServices.StatusServico.Executar;

    self.vpRetorno := UTF8Encode(ACBrNFe.WebServices.StatusServico.RetWS);
  except
    on E: Exception do
    begin
      vlRetornoErro := E.Message;
      Application.MessageBox(PChar('Falha de conexão com servidores da SEFAZ.' + #13 + #13 + 'Mensagem: ' + #13 + vlRetornoErro), 'Falha comunicação WebService',
        MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);
    end;
  end;
End;

Function Tfnfe.mCodigoConsultaSEFAZ: string;
Begin
  Result := '000 - Falha de conexao';
  ACBrNFe.Configuracoes.WebServices.Visualizar := False;

  try
    ACBrNFe.WebServices.StatusServico.Executar;
    Result := IntToStr(ACBrNFe.WebServices.StatusServico.CStat) + ' - ' + ACBrNFe.WebServices.StatusServico.xMotivo;
  except
    Result := '000 - Falha de conexao';
  end;

End;

Function Tfnfe.mConsultaSEFAZInterna: Boolean;
Begin
  Result := False;
  ACBrNFe.Configuracoes.WebServices.Visualizar := False;
  try
    ACBrNFe.WebServices.StatusServico.Executar;
  except
    vpStatSEFAZ := ACBrNFe.WebServices.StatusServico.CStat;
    Result := False;
  end;
  (* Verifica se código de retorno é igual a 107 - Serviço em Operação *)
  if ACBrNFe.WebServices.StatusServico.CStat = 107 then
  begin
    vpStatSEFAZ := ACBrNFe.WebServices.StatusServico.CStat;
    Result := True;
  end;
End;

function Tfnfe.impcertificado: string;
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

function Tfnfe.LerConfiguracao: Boolean;
Var
  IniFile: String;
  Ini: TIniFile;
  ok: Boolean;
  StreamMemo: TMemoryStream;
Begin
  Result := True;

  { if impcertificado = '0' then
    begin
    ShowMessage('Por favor, verifique o Cartão de Certificado Digital');
    Result := False;
    Exit;
    end; }

  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');

  // Try

  if cfgcfgmodonfe.AsInteger = 2 then
    plmodonfe.Caption := 'Homologação'
  else
    plmodonfe.Caption := 'Produção';

  if cfgcfgversao.AsFloat = 4 then
    ACBrNFe.Configuracoes.Geral.VersaoDF := ve400
  else
    ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;

  ACBrNFeDANFEFR := TACBrNFeDANFEFR.Create(self);

  if cfgcfgprevisualizarimpressaonfe.AsInteger = 1 then
  begin
    ACBrNFeDANFEFR.MostraPreview := True;
    ACBrNFeDANFEFR.MostraSetup := True;
  end;
  ACBrNFe.DANFE := ACBrNFeDANFEFR;

  mes.Close;
  mes.Params[0].AsString := vpMesChave;
  mes.Params[1].AsInteger := Acesso.Filial;
  mes.Open;

  rfi.Close;
  rfi.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
  rfi.Open;

  if rfi.RecordCount > 0 then
  begin
    ACBrNFeDANFEFR.ExibeCampoFatura := True;
  end;

  ACBrNFe.Configuracoes.WebServices.ResourceName := 'ACBrNFeServicos';
  ACBrNFe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'schemas';
  ACBrNFe.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName) + 'schemas\ACBrNFeServicos.ini';

  ACBrNFe.Configuracoes.Certificados.NumeroSerie := self.cfgcfgnumecertif.AsString;

  if Length(cfgcfgsenhacertificado.AsString) > 0 then
    ACBrNFe.Configuracoes.Certificados.Senha := cfgcfgsenhacertificado.AsString;

  ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrNFe.Configuracoes.Geral.Salvar := True;

  ACBrNFe.Configuracoes.WebServices.UF := UpperCase(self.cfgufssigla.AsString);

  if cfgcfgmodonfe.AsInteger = 2 then
    ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;

  if cfgcfgmodonfe.AsInteger = 1 then
    ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;

  ACBrNFe.Configuracoes.WebServices.Visualizar := True;

  ACBrNFe.Configuracoes.WebServices.ProxyHost := Ini.ReadString('Proxy', 'Host', '');
  ACBrNFe.Configuracoes.WebServices.ProxyPort := Ini.ReadString('Proxy', 'Porta', '');
  ACBrNFe.Configuracoes.WebServices.ProxyUser := Ini.ReadString('Proxy', 'User', '');
  ACBrNFe.Configuracoes.WebServices.ProxyPass := Ini.ReadString('Proxy', 'Pass', '');

  If ACBrNFe.DANFE <> Nil Then
  Begin
    ACBrNFe.DANFE.TipoDANFE := StrToTpImp(ok, IntToStr(Ini.ReadInteger('mizio', 'DANFE', 1)));

    If FileExists(ExtractFilePath(Application.ExeName) + 'logonfe.jpg') Then
    Begin
      ACBrNFe.DANFE.Logo := ExtractFilePath(Application.ExeName) + 'logonfe.jpg';
      ACBrNFeDANFEFR.ExpandeLogoMarca := True;
    End;
  End;

  ACBrNFeDANFEFR.FastFile := vPastaPrincipal + 'Report\DanfeRetrato.fr3';
  ACBrNFeDANFEFR.FastFileEvento := vPastaPrincipal + 'Report\EVENTOS.fr3';
  plrelatorio.Caption := 'Arquivo: ' + ACBrNFeDANFEFR.FastFile;
  consulta.Close;
  consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + Acesso.Usuario.ToString;
  consulta.Open;
  ACBrNFeDANFEFR.Usuario := consulta.FieldByName('clbidentificacao').AsString;

  ACBrNFeDANFEFR.PathPDF := vPastaPrincipal + 'pdfs\NFe';
  StreamMemo := TMemoryStream.Create;
  Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
  StreamMemo.Free;

  // Finally
  // Ini.Free;
  // End;

End;

procedure Tfnfe.AjustaCaminhoGeralNF(Data: TDate);
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
  ACBrNFe.Configuracoes.Arquivos.PathSalvar := vAnoMesNFe + '\';
end;

procedure Tfnfe.ajustafuncao;
begin
  // oculta todas paginas para mostrar só a corrente
  self.emissao.TabVisible := False;
  self.consultasefaz.TabVisible := False;
  self.consultanfe.TabVisible := False;
  self.emailnfe.TabVisible := False;
  self.inutilizanumero.TabVisible := False;
  self.cancelanfe.TabVisible := False;
  self.gerarpdf.TabVisible := False;
  self.reimprimirnfe.TabVisible := False;
  self.ccorrecao.TabVisible := False;
  self.emailevento.TabVisible := False;
  self.reimprimirEvento.TabVisible := False;
  self.consultarEvento.TabVisible := False;

  // processa comando
  case vRotinaNFe of
    rnfGerarNFe:
      self.emissao.TabVisible := True;
    rnfImprimirNFe:
      self.reimprimirnfe.TabVisible := True;
    rnfGerarPDF:
      self.gerarpdf.TabVisible := True;
    rnfEmail:
      self.emailnfe.TabVisible := True;
    rnfCancelar:
      self.cancelanfe.TabVisible := True;
    rnfCartaCorrecao:
      self.ccorrecao.TabVisible := True;
    rnfEmailEvento:
      self.emailevento.TabVisible := True;
    rnfImprimirEvento:
      self.reimprimirEvento.TabVisible := True;
    rnfConsultaEvento:
      self.consultarEvento.TabVisible := True;
    rnfInutilizar, rnfInutilizarDireto:
      self.inutilizanumero.TabVisible := True;
    rnfStatusSefaz:
      self.consultasefaz.TabVisible := True;
    rnfStatusNFe:
      self.consultanfe.TabVisible := True;
  end;

end;

procedure Tfnfe.Inicializar;
begin
  self.Width := 500;
  self.Height := 250;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsString := vpFilial;
  cfg.Open;

  // Define configurações do servidor para envio de email.
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase(cfgcfgemailservidornfe.AsString); // 'smtp.live.com'; // 'smtp.gmail.com';
    Username := LowerCase(cfgcfgemailnfe.AsString); // 'email@hotmail.com'; // 'email@gmail.com';
    Password := Trim(cfgcfgemailsenhanfe.AsString); // 'senha';
    Port := cfgcfgmailportnfe.AsInteger; // 587; // 465;
    case cfgcfgemailusatls.AsInteger of
      0:
        UseTLS := UtNoTLSSupport;
      1:
        UseTLS := UtUseExplicitTLS;
      2:
        UseTLS := UtUseImplicitTLS;
      3:
        UseTLS := UtUseRequireTLS;
    end;
    AuthType := SatDefault;
    ConnectTimeout := 30000;
    ReadTimeout := 30000;
  end;

  with IO_OpenSSL do
  begin
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := sslmClient;
  end;

  // fnfe.LerConfiguracao;
end;

Procedure Tfnfe.bcancelaClick(Sender: TObject);
Begin
  Close;
End;

Procedure Tfnfe.bconfirmaClick(Sender: TObject);
Begin
  try
    processa;
  finally
    Close;
  end;
End;

Procedure Tfnfe.CarregaNFe(narq: String);
Begin
  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.NotasFiscais.LoadFromFile(narq);

End;

procedure Tfnfe.atualizatela;
begin
  // Application.ProcessMessages;
end;

function Tfnfe.VerificaPreExistencia(tipo: string): Boolean;
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
  atualizatela;

  vRetorno := False;

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

  vAnoMesNFe := vPastaPrincipal + fnfe.vSubPastaDoc + '\' + formatdatetime('yyyymm', vData);

  xndoc1 := SomenteNumeros(cfgetddoc1.AsString);

  xnnfe := Copy(cfgcddcodigo.AsString, 1, 2);
  xnnfe := xnnfe + formatdatetime('yymm', vData);
  xnnfe := xnnfe + xndoc1;
  xnnfe := xnnfe + tipo;
  xnnfe := xnnfe + formatfloat('000', vnrser);
  xnnfe := xnnfe + formatfloat('000000000', vnrnfe);
  xnnfe := xnnfe + '1';
  xnnfe := xnnfe + formatfloat('00000000', vnrnfe);
  xnnfe := xnnfe + Modulo11(Trim(xnnfe));

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

Function Tfnfe.EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
  vlMensagemErro, vlDiretorioErro: String;

Begin

  vEnviado := False;
  Result := vEnviado;

  if Trim(cfgcfgemailnfe.AsString) = '' then
  begin
    Application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    exit;
  end;

  if (Trim(destino) = '') and (Trim(copias) = '') then
  begin
    Application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  emailnfe.TabVisible := True;
  paginas.ActivePage := emailnfe;

  mostraemail.Visible := True;
  atualizatela;

  AtualizaMensagemEmail(1, 'Cerregando configuração.');

  Try
    AtualizaMensagemEmail(2, 'Criando mensagem.');

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto + #13 + #13 + cfgcfgtextoemail.AsString; // Corpo da mensagem.
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino
    IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text;

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
        Sleep(1000);

        If SMTP.Connected Then
          SMTP.Disconnect;
      End;
    End;
  Finally
    AtualizaMensagemEmail(10, '');
  End;

  Result := vEnviado;
End;

Procedure Tfnfe.AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
begin
  mostraemail.Position := Posicao;
  LlMsgEmail.Caption := Mensagem;
  atualizatela;
  Sleep(10);
end;

procedure Tfnfe.mEmailEvento;
begin
  EnviarEmailEvento;
end;

Procedure Tfnfe.EnviarEmailEvento;
var
  vEmail, vEmailCC: string;
  vAssunto: string;
  vTexto: string;
  vSeqEvento: Integer;
begin
  try

    if vpArquivoXMLEvento = '' then
      GeraNomeArqsEvento;

    if qEnfMev.Active then
      qEnfMev.Refresh
    else
    begin
      qEnfMev.ParamByName('meschave').AsString := vpMesChave;
      qEnfMev.Open;
      qEnfMev.Last;
    end;

    case qEnfMevtencodigo.AsInteger of
      tenCCe:
        begin
          vAssunto := 'Carta de Correção - CC-e da Empresa: ' + cfgetdapelido.AsString;
          vTexto := 'Esta Carta de Correção - CC-e foi emitida tendo sua empresa como destino.';
        end;
      tenCancelamento:
        begin
          vAssunto := 'Cancelamento de NFe da Empresa: ' + cfgetdapelido.AsString;
          vTexto := 'Este cancelamento de NF-e foi emitido tendo sua empresa como destino.';
        end;
    end;

    if not FilesExists(vpArquivoXMLEvento) then
    begin
      Application.MessageBox(PChar('O Email não pode ser enviado.' + #13 + 'O arquivo XML do evento não foi localizado.' + #13 + 'Arquivo: ' + vpArquivoXMLEvento), 'ATENÇÃO',
        MB_OK + MB_ICONERROR);
      exit;
    end;

    if not FilesExists(vpArquivoPDFEvento) then
    begin
      Application.MessageBox(PChar('O Email não pode ser enviado.' + #13 + 'O arquivo PDF do evento não foi localizado.' + #13 + 'Arquivo: ' + vpArquivoPDFEvento + #13 + #13 +
        'Utilize a opção "Imprimir Evento" e tente enviar o email novamente.'), 'ATENÇÃO', MB_OK + MB_ICONERROR);
      exit;
    end;

    qEteMes.Close;
    qEteMes.Params[0].AsString := vpMesChave;
    qEteMes.Params[1].AsInteger := Acesso.Filial;
    qEteMes.Open;

    vEmail := '';
    vEmailCC := '';

    qEteMes.First;
    while not qEteMes.Eof do
    begin
      if pos('@', qEteMeseteemail.AsString) > 0 then
        if vEmail = '' then
          vEmail := qEteMeseteemail.AsString
        else if pos(qEteMeseteemail.AsString, vEmailCC) = 0 then
          vEmailCC := vEmailCC + qEteMeseteemail.AsString + ';';

      qEteMes.Next;
    end;

    vEmailCC := Copy(vEmailCC, 1, Length(vEmailCC) - 1);

    If EnviarEmail(vEmail, vEmailCC, vTexto, vAssunto, vpArquivoXMLEvento, vpArquivoPDFEvento, qEteMesetdidentificacao.AsString, cfgetdapelido.AsString) Then
      Application.MessageBox(PChar('Email enviado com sucesso para: ' + qEteMesetdidentificacao.AsString + #13 + #13 + 'Email: ' + vEmail + #13 + 'Cópias: ' + vEmailCC),
        'ENVIO CONCLUÍDO', MB_OK + MB_ICONINFORMATION);
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao enviar email.' + #13 + #13 + 'Mensage: ' + #13 + E.Message), 'ATENÇÃO', MB_OK + MB_ICONERROR);
      SalvarLogErro(E.Message, E.StackTrace);
    end;
  end;
end;

procedure Tfnfe.ReimprirEvento;
begin
  ImprimeEventoNfe;
end;

procedure Tfnfe.SMTPConnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Conectado';
  atualizatela;
end;

procedure Tfnfe.SMTPDisconnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Desconectado';
  atualizatela;
end;

procedure Tfnfe.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  LlMsgEmail.Caption := 'Inicio do Envio';
  atualizatela;
end;

procedure Tfnfe.SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  LlMsgEmail.Caption := 'Final do Envio';
  atualizatela;
end;

procedure Tfnfe.GeraNomeArqsEvento;
var
  vPathXML: String;
  vPathPDF: String;
  vTipoEvento: String;
begin

  if qEnfMev.Active then
    qEnfMev.Refresh
  else
  begin
    qEnfMev.ParamByName('meschave').AsString := vpMesChave;
    qEnfMev.Open;
    qEnfMev.Last;

  end;

  vPathXML := vPastaPrincipal + fnfe.vSubPastaDoc + '\' + formatdatetime('yyyymm', qEnfMevmesregistro.AsFloat) + '\';
  vpArquivoXMLEvento := vPathXML + qEnfMevenfchaveevento.AsString + '-ProcEventoNFe.xml';

  vpArquivoNFe := GeraNomeNFe(vpMesChave);

  vTipoEvento := IfThen(qEnfMevtencodigo.AsInteger = tenCCe, 'CCe', 'Cancelamento');
  vPathPDF := vPastaPrincipal + '\pdfs\' + vTipoEvento + '\';
  vpArquivoPDFEvento := vPathPDF + qEnfMevenfchaveevento.AsString + '-ProcEventoNFe.pdf';
end;

procedure Tfnfe.ACBrMailAfterMailProcess(Sender: TObject);
begin
  showmessage('Email enviado com sucesso!');
end;

procedure Tfnfe.ACBrMailMailException(const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
begin
  showmessage(E.Message);
end;

procedure Tfnfe.ACBrMailMailProcess(const AMail: TACBrMail; const AStatus: TMailStatus);
begin

  // plstatus.Caption:=Inttostr(TMailStatus(aStatus));
  Application.ProcessMessages;
end;

procedure Tfnfe.ACBrNFeStatusChange(Sender: TObject);
begin
  plstatus.Caption := 'Processando...';
  Application.ProcessMessages;
end;

Procedure Tfnfe.AjustaObservacoes;
var
  vlTofCodigo: String;
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
    qconsulta.SQL.Text := 'select tofcodigo from tof where lower(tofidentificacao)=' + QuotedStr(LowerCase(toetoedescricao.AsString));
    qconsulta.Open;

    {
      if not qconsulta.IsEmpty then
      begin
      vlTofCodigo := qconsulta.FieldByName('tofcodigo').AsString;
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + vlTofCodigo + ')';
      qconsulta.ExecSQL;

      end
      else
      begin
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tof (tofcodigo,tofidentificacao, ticcodigo) VALUES (@codigo,' + QuotedStr(UpperCase(toetoedescricao.AsString)) + ',' + '1' + ')';
      qconsulta.ExecSQL;

      qconsulta.Close;
      qconsulta.SQL.Text := 'select tofcodigo from tof where lower(tofidentificacao)=' + QuotedStr(LowerCase(toetoedescricao.AsString));
      qconsulta.Open;

      if not qconsulta.IsEmpty then
      begin
      vlTofCodigo := qconsulta.FieldByName('tofcodigo').AsString;
      qconsulta.Close;
      qconsulta.SQL.Text := 'INSERT INTO tom (meschave, tofcodigo) VALUES (' + vpMesChave + ',' + vlTofCodigo + ')';
      qconsulta.ExecSQL;

      end;
      end; }
  end;
  tom.Refresh;

End;

function Tfnfe.ExigeGrupoCombustivel(CFOP: String): Boolean;
begin
  Result := False;
  case StrToInt(Copy(CFOP, 1, 1)) of
    1, 2:
      case StrToInt(Copy(CFOP, 3, 3)) of
        651 .. 653, 658 .. 664:
          Result := True;
      end;
    3:
      case StrToInt(Copy(CFOP, 3, 3)) of
        651 .. 653:
          Result := True;
      end;
    5, 6:
      case StrToInt(Copy(CFOP, 3, 3)) of
        651 .. 667:
          Result := True;
      end;
    7:
      case StrToInt(Copy(CFOP, 3, 3)) of
        651, 654, 667:
          Result := True;
      end;
  end;
end;

procedure Tfnfe.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;

  vlArquivo := ExtractFilePath(Application.ExeName) + 'Logs\NFe\' + formatdatetime('yyyymmddhhnnsszzz', now()) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

End.
