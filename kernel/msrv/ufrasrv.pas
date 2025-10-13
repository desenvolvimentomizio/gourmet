unit ufrasrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Controls, Vcl.Dialogs, Vcl.Graphics, System.SysUtils, uFuncoes, uPegaBase,
  ufcremlt, System.ImageList, Vcl.ImgList,   Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.Diagnostics, Winapi.Messages, ACBrMail,
  ACBrDFeReport, ACBrNFSeDANFSeClass, ACBrNFSeDANFSeRLClass, ACBrBase, ACBrDFe,
  ACBrNFSe, inifiles, ComObj, Excel2000, System.Variants;

type
  Tfrasrv = class(Tfrabase)
    cfg: tuniquery;
    consultax: tuniquery;
    Dtom: tunidatasource;
    tom: tuniquery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    tomtofidentificacao: TStringField;
    Ddtm: tunidatasource;
    dtm: tuniquery;
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
    dtmetddoc1: TStringField;
    dtmetdidentificacao: TStringField;
    dtmdtmespecie: TStringField;
    dtmdtmmarcas: TStringField;
    dtmedrinscest: TStringField;
    rfm: tuniquery;
    rfmltedinheiro: TFloatField;
    rfmltechequepro: TFloatField;
    rfmltechequeter: TFloatField;
    rfmltecartcred: TFloatField;
    rfmltecartdeb: TFloatField;
    rfmltebancario: TFloatField;
    rfmltereparc: TFloatField;
    Ditm: tunidatasource;
    itm: tuniquery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    etd: tuniquery;
    ete: tuniquery;
    vdtm: tuniquery;
    vdtmdtmchave: TIntegerField;
    vdtmdtmplaca: TStringField;
    vdtmdtmvolumes: TFloatField;
    vdtmdtmpesobruto: TFloatField;
    vdtmdtmpesoliq: TFloatField;
    vdtmmeschave: TIntegerField;
    vdtmetdcodigo: TIntegerField;
    vdtmufscodigo: TStringField;
    vdtmedrrua: TStringField;
    vdtmcddnome: TStringField;
    vdtmufssigla: TStringField;
    vdtmetddoc1: TStringField;
    vdtmetdidentificacao: TStringField;
    vdtmdtmespecie: TStringField;
    vdtmdtmmarcas: TStringField;
    vdtmedrinscest: TStringField;
    PCDetalhes: TPageControl;
    TSObservacoes: TTabSheet;
    Label6: TLabel;
    listaobs: TDBGrid;
    TSTransporte: TTabSheet;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    etdcodigo: TDBEdit;
    etdidentificacao: TDBEdit;
    ufssigla: TDBEdit;
    dtmplaca: TDBEdit;
    dtmvolumes: TDBEdit;
    dtmespecie: TDBEdit;
    dtmmarcas: TDBEdit;
    dtmpesobruto: TDBEdit;
    dtmpesoliq: TDBEdit;
    Pnl1: TPanel;
    Pltotalvendas: TPanel;
    Pltotaldescontos: TPanel;
    PlResumo: TPanel;
    pdetalhe: TPanel;
    Panel3: TPanel;
    listapor: TDBGrid;
    pvalordetalhe: TPanel;
    PlItens: TPanel;
    listaitm: TDBGrid;
    PlRodapeItens: TPanel;
    plQtdItens: TPanel;
    plDescontoItens: TPanel;
    plBrutoItens: TPanel;
    plLiquidoItens: TPanel;
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatdfcodigo: TStringField;
    itmitmtotalliq: TFloatField;
    tto: tuniquery;
    ttottocodigo: TIntegerField;
    ttottoidentificacao: TStringField;
    uqtabelattocodigo: TIntegerField;
    uqtabelamesregistro: TDateField;
    ActFaturar: TAction;
    SplItens: TSplitter;
    itmtoecodigo: TIntegerField;
    dtl: tuniquery;
    Ddtl: TDataSource;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    itmproncm: TStringField;
    ActInfoComplementar: TAction;
    uqtabelaclbvendedor: TIntegerField;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaorcchave: TIntegerField;
    ActAlterarColaborador: TAction;
    ActAlterarTecnico: TAction;
    uqtabelatemidentificacao: TStringField;
    plInformacoes: TPanel;
    plEstorno: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    hcmdata: TDBEdit;
    hcmhora: TDBEdit;
    clbidentificacao: TDBEdit;
    ccm: tuniquery;
    ccmmeamotivo: TStringField;
    ccmmeacodigo: TIntegerField;
    ccmccmmotivo: TStringField;
    ccmerfchave: TIntegerField;
    Dccm: TDataSource;
    erf: tuniquery;
    erferfdata: TDateField;
    erferfhora: TTimeField;
    erfclbidentificacao: TStringField;
    Derf: TDataSource;
    erferfchave: TIntegerField;
    uqtabelaclboperador: TStringField;
    uqTotais: tuniquery;
    uqTotaismesvalor: TFloatField;
    uqTotaismesdeconto: TFloatField;
    uqTotaismestotal: TFloatField;
    uqTotaismestotalcancelado: TFloatField;
    uqTotaismestotalnf: TFloatField;
    uqItmTotais: tuniquery;
    uqItmTotaismeschave: TIntegerField;
    uqItmTotaisitmtotal: TFloatField;
    uqItmTotaisitmdesconto: TFloatField;
    uqItmTotaisitmtotalliq: TFloatField;
    uqItmTotaisitmitens: TIntegerField;
    uqtabelaflasigla: TStringField;
    uqtabelamesprodutos: TFloatField;
    uqtabelamesservicos: TFloatField;
    PlTotalServicos: TPanel;
    uqTotaismestotalprodutos: TFloatField;
    uqTotaismestotalservicos: TFloatField;
    ActAjustarEstagio: TAction;
    ActAlterarOperador: TAction;
    ActGerarCobranca: TAction;
    tit: tuniquery;
    tittitcodigo: TIntegerField;
    plDetalhes: TPanel;
    pllinha2: TPanel;
    pllinha1: TPanel;
    PlTotalRefaturado: TPanel;
    plTituloItensDetalhe: TPanel;
    btOcultaExibeDetalhe: TSpeedButton;
    uqtabelaflacodigo: TIntegerField;
    hcm: tuniquery;
    Dhcm: TDataSource;
    hcmhcmchave: TIntegerField;
    hcmmeschave: TIntegerField;
    hcmsdecodigo: TStringField;
    hcmclbcodigo: TIntegerField;
    hcmclbidentificacao: TStringField;
    hcmhcmdata: TDateField;
    hcmhcmhora: TTimeField;
    hcmhcmdescricao: TStringField;
    hcmdescricao: TDBEdit;
    plTituloItensObservacoes: TPanel;
    btOcultaExibeObservacoes: TSpeedButton;
    mAjustarFilial: TMenuItem;
    N1: TMenuItem;
    Utilitarios: TMenuItem;
    mfirfi: tuniquery;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmcofins: TFloatField;
    ActAlterarCliente: TAction;
    AjustarCFOPdoItens1: TMenuItem;
    uqtabelatoecodigo: TIntegerField;
    Panel1: TPanel;
    btOcultaExibeTotais: TSpeedButton;
    plTrocaDevol: TPanel;
    uqtabelatoecfopsaida: TStringField;
    ActFinalizar: TAction;
    ActSituacaoComissao: TAction;
    uqtabelamestipocomissao: TIntegerField;
    uqDtlTotais: tuniquery;
    uqDtlConvenios: tuniquery;
    DSTotaisDtls: TDataSource;
    TotaisDtls: TVirtualTable;
    TotaisDtlsmdaidentificacao: TStringField;
    TotaisDtlsdtlvalor: TFloatField;
    TotaisDtlsmdacodigo: TIntegerField;
    adm: tuniquery;
    uqtabelamesinclusao: TDateTimeField;
    ActCancelarFaturamento: TAction;
    mnMarcarcomoReclassificacao: TMenuItem;
    uqtabelameshora: TStringField;
    uqTotaismesrfaturado: TFloatField;
    mnAjustarRegimetributario: TMenuItem;
    pro: tuniquery;
    procstcodigo: TStringField;
    PltotalDoacao: TPanel;
    Pltotalnfe: TPanel;
    plResumoModalidades: TPanel;
    Panel2: TPanel;
    DBResumoModalidades: TDBGrid;
    Pltotalliquido: TPanel;
    dtlmdacodigo: TIntegerField;
    uqDtl: tuniquery;
    uqDtlltechave: TIntegerField;
    uqDtlmdaidentificacao: TStringField;
    uqDtldtlvalor: TFloatField;
    uqDtlmdacodigo: TIntegerField;
    uqDtlmeschave: TIntegerField;
    mostracalculototal: TProgressBar;
    rfi: tuniquery;
    PlTotalProdutos: TPanel;
    PlTotalCancelado: TPanel;
    uqtabelattecodigo: TIntegerField;
    PlTotalARefaturar: TPanel;
    uqTotaissdecodigo: TStringField;
    ACBrNFSe1: TACBrNFSe;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    ACBrMail1: TACBrMail;
    OpenDialog1: TOpenDialog;
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
    cfgcfgsenhacertificado: TStringField;
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
    cfgcfgmodonfe: TIntegerField;
    cfgcfgversao: TStringField;
    cfgcfgcestativo: TIntegerField;
    cfgcfgtextoemail: TStringField;
    cfgcfgpercentualpis: TFloatField;
    cfgcfgpercentualcofins: TFloatField;
    cfgcfgtoenotacomplementar: TIntegerField;
    cfgcfgtoesubstnoestado: TIntegerField;
    cfgcfgtoesubstforaestado: TIntegerField;
    cfgcfgusacstnoproduto: TIntegerField;
    cfgcfgtoesubstanpnoestado: TIntegerField;
    cfgcfgtoesubstanpforaestado: TIntegerField;
    cfgcfgprevisualizarimpressaonfe: TIntegerField;
    cfgcfgsubstitutotributario: TIntegerField;
    cfgcfgdescontonoservico: TIntegerField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgtoemesinte: TIntegerField;
    cfgssncodigo: TIntegerField;
    cfgcfgtoemesfora: TIntegerField;
    cfgatvcodigo: TIntegerField;
    cfgcfgpresencialtoedestino: TIntegerField;
    cfgcfgtoeinteproducaopropria: TIntegerField;
    cfgcfgtoeforaproducaopropria: TIntegerField;
    cfgcfgtoeintesubsprodpropria: TIntegerField;
    cfgcfgtoeforasubsprodpropria: TIntegerField;
    cfgcfgtributacaoimendes: TIntegerField;
    ActCancelarNFSe: TAction;
    ActConsultarLote: TAction;
    ActEnviarNFSe: TAction;
    ActImprimirNFSe: TAction;
    ActEnviarEmailNFSe: TAction;
    ActLinkNFSe: TAction;
    cfgedrinscmun: TStringField;
    uqtabelaedrrua: TStringField;
    uqtabelaedrnumero: TStringField;
    uqtabelaedrcep: TStringField;
    uqtabelacddcodigo: TStringField;
    uqtabelaedrinscmun: TStringField;
    uqtabelaetddoc1: TStringField;
    uqtabelaedrcomple: TStringField;
    uqtabelaedrbairro: TStringField;
    uqtabelaufssigla: TStringField;
    uqtabelaetftelefone: TStringField;
    uqtabelaeteemail: TStringField;
    cfgcfgserienfsv: TStringField;
    cfgcfgnumecertifa1: TStringField;
    cfgcfgsenhacertificadoa1: TStringField;
    cfgcfgcertificadoa1: TBlobField;
    etd001: tuniquery;
    etf001: tuniquery;
    ete001: tuniquery;
    edr001: tuniquery;
    Importaes1: TMenuItem;
    mnLayout001: TMenuItem;
    cdd: tuniquery;
    ufs: tuniquery;
    etv001: tuniquery;
    mes001: tuniquery;
    itm001: tuniquery;
    toe001: tuniquery;
    pro001: tuniquery;
    spd: tuniquery;
    cfgcfgnumeronfsv: TIntegerField;
    itmpronomereduzido: TStringField;
    uqtabelacddnome: TStringField;
    NumeroNFSe: tuniquery;
    ActTodasEnviarNFSe: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaobsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActSairExecute(Sender: TObject);
    procedure ActFaturarExecute(Sender: TObject);
    procedure ActInfoComplementarExecute(Sender: TObject);
    procedure ActAlterarColaboradorExecute(Sender: TObject);
    procedure ActAlterarTecnicoExecute(Sender: TObject);
    procedure uqItmTotaisAfterOpen(DataSet: TDataSet);
    procedure uqItmTotaisAfterRefresh(DataSet: TDataSet);
    procedure ActAjustarEstagioExecute(Sender: TObject);
    procedure ActAlterarOperadorExecute(Sender: TObject);
    procedure ActGerarCobrancaExecute(Sender: TObject);
    procedure btOcultaExibeDetalheClick(Sender: TObject);
    procedure uqTotaisBeforeOpen(DataSet: TDataSet);
    procedure bConfirmaSelecaoClick(Sender: TObject);
    procedure btLimpaBuscaClick(Sender: TObject);
    procedure btOcultaExibeObservacoesClick(Sender: TObject);
    procedure mAjustarFilialClick(Sender: TObject);
    procedure ActAlterarClienteExecute(Sender: TObject);
    procedure AjustarCFOPdoItens1Click(Sender: TObject);
    procedure btOcultaExibeTotaisClick(Sender: TObject);
    procedure ActFinalizarExecute(Sender: TObject);
    procedure ActSituacaoComissaoExecute(Sender: TObject);
    procedure DBResumoModalidadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnMarcarcomoReclassificacaoClick(Sender: TObject);
    procedure mnAjustarRegimetributarioClick(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure ACBrNFSe1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
    procedure ActCancelarNFSeExecute(Sender: TObject);
    procedure ActConsultarLoteExecute(Sender: TObject);
    procedure ActEnviarNFSeExecute(Sender: TObject);
    procedure ActImprimirNFSeExecute(Sender: TObject);
    procedure ActEnviarEmailNFSeExecute(Sender: TObject);
    procedure ActLinkNFSeExecute(Sender: TObject);
    procedure mnLayout001Click(Sender: TObject);
    procedure ActTodasEnviarNFSeExecute(Sender: TObject);
  private
    FSQLBaseTotais: String;
    procedure AlimentarNFSe(NumDFe, NumLote: String);
    procedure AtualizarDetalhe;
    procedure CalculaTotais; override;
    procedure AtualizaTotaisItens;
    function CancelarRFI(vMesChave, motivo: string; vMeaCodigo: string): string;
    procedure AjustaAlturaRodaPeGrid;
    procedure InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
    procedure modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
    function ModuloNFCe(vfuncao, vTrmCodigo, vMesChave, vClbCodigo: string): Boolean;
    function RegistraLote: String;
    procedure CalculaTotaisVelho;
    function RoundTo5(Valor: Double; Casas: Integer): Double;
    procedure CarregaDadosNFSe;
    procedure ConfigurarComponente;
    procedure Convertexmltocsv(vOriAarquivo, vDesAarquivo: string);

  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  public
    { Public declarations }
    vpChaveEmissaoNFSE: string;
    vpAliquotaNFSE: string;
    vpCNAENFSE: string;

    vpUsuarioNFSE: string;
    vpSenhaNFSE: string;

    voPodeCalcular: Boolean;
    memoLog: TStringList;
    procedure Carregar; override;
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string): Boolean;

  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string;
    vtdecodigo, vorcchave, vMesChave: String; vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;

  TCancelar = function(AOwner: TComponent; conexao: TUniConnection; vLteChave: string; vMotivo: string; vusrcodigo: string; vMesChave: string;
    vMeaCodigo: string; vtnccodigo: string): string;

  TValidaProdutos = Function(AOwner: TComponent; conexao: TUniConnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;

var
  frasrv: Tfrasrv;

  // Início ID do Módulo frasrv
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'Serviços';

  // Fim ID do Módulo frasrv

implementation

{$R *.dfm}

uses ufsrvsimples, ufdtmsrv, ufsrvfaturamento, ufsrvAcm, ufrfisrv,
  pnfsConversao, Frm_Status, pcnConversao, System.Math, blcksock, ACBrDFeSSL,
  System.DateUtils;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasrv := Tfrasrv.Create(pCargaFrame);

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasrv := Tfrasrv.Create(pCargaFrame);
  try
    frasrv.CriaAcoesDeAcesso;
  finally
    frasrv.Free;
  end;
end;

exports formuFrame, defineacesso;

function Tfrasrv.RoundTo5(Valor: Double; Casas: Integer): Double;
var
  xValor, xDecimais: String;
  p, nCasas: Integer;
  nValor: Double;
begin
  nValor := Valor;
  xValor := Trim(FloatToStr(Valor));
  p := pos(',', xValor);
  if Casas < 0 then
    nCasas := -Casas
  else
    nCasas := Casas;
  if p > 0 then
  begin
    xDecimais := Copy(xValor, p + 1, Length(xValor));
    if Length(xDecimais) > nCasas then
    begin
      if xDecimais[nCasas + 1] >= '5' then
        SetRoundMode(rmUP)
      else
        SetRoundMode(rmNearest);
    end;
    nValor := RoundTo(Valor, Casas);
  end;
  Result := nValor;
end;

function Tfrasrv.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string): Boolean;
var
  auto: TliberacaoRFI;
  vRetornoUsr: string;
  vLiberacao: Boolean;
  Pack: Cardinal;
begin

  vLiberacao := True;

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vRetornoUsr := auto(Application, Self.zcone, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', True);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := false;
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

procedure Tfrasrv.AjustaAlturaRodaPeGrid;
begin
  PnlRodapeGrid.Height := PCDetalhes.Height + plTituloItensObservacoes.Height + plDetalhes.Height;
end;

procedure Tfrasrv.AjustarCFOPdoItens1Click(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'update itm set cfocfop=' + QuotedStr(uqtabelatoecfopsaida.AsString) + ', toecodigo=' + uqtabelatoecodigo.AsString + ' where meschave='
      + uqtabelameschave.AsString;
    consulta.ExecSQL;
    uqtabela.Next;
  end;

end;

procedure Tfrasrv.uqItmTotaisAfterOpen(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfrasrv.uqItmTotaisAfterRefresh(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfrasrv.uqTotaisBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  uqTotais.FilterSQL := uqtabela.FilterSQL;
end;

function Tfrasrv.CancelarRFI(vMesChave: string; motivo: string; vMeaCodigo: string): string;
var
  registra: TCancelar;
  Pack: Cardinal;
  vlRetorno: string;
begin
  Pack := LoadPackage('modulos\merf.bpl');
  if Pack <> 0 then
    try
      @registra := GetProcAddress(Pack, PChar('Cancelar'));

      if Assigned(registra) then
        Result := registra(Application, zcone, '', motivo, Acesso.Usuario.ToString, vMesChave, vMeaCodigo, '1');
      if Result = '' then
      begin
        vlRetorno := '0';
      end
      else
      begin
        vlRetorno := Result;
      end;

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tfrasrv.Carregar;
begin
  memoLog := TStringList.Create;;

  consulta.Close;
  consulta.Connection := Self.zcone;
  consulta.SQL.Text := 'SELECT cfgdefinetoeatendimento, cfgidentificatecnico, cfgidentificavendedor FROM cfgmsai;';
  consulta.Open;

  if consulta.Fields[1].AsInteger = 1 then
    ActAlterarTecnico.Visible := True;

  if consulta.Fields[2].AsInteger = 1 then
    ActAlterarColaborador.Visible := True;

  inherited Carregar;

  CarregarColunas(listaobs);
  CarregarColunas(listaitm);

  btOcultaExibeObservacoes.Click;
  AjustaAlturaRodaPeGrid;

  voPodeCalcular := True;

end;

procedure Tfrasrv.ActAlterarClienteExecute(Sender: TObject);
var
  vlEtdCodigo: string;
  vlEndereco: string;
  vlRetorno: String;
  vlTxtFiltro: string;
  vlEdrItem: String;

begin
  inherited;

  If (Self.uqtabelamesprotocolo.AsString <> '') Then
  begin
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!');
    exit;
  end;

  vlEtdCodigo := MostraLista('mcli', '', '');

  consulta.Close;
  consulta.SQL.Text := 'SELECT edr.edrcodigo FROM edr WHERE edr.tedcodigo IN (1, 3, 4) AND edr.etdcodigo = ' + vlEtdCodigo;
  consulta.Open;

  if not consulta.Locate('edrcodigo', vlEndereco, []) then
  begin
    vlEndereco := consulta.Fields[0].AsString;

    if consulta.RecordCount > 1 then
    begin
      vlTxtFiltro := 'etdcodigo = ' + vlEtdCodigo;
      vlRetorno := MostraLista('medr', vlTxtFiltro, vlEtdCodigo);

      if vlRetorno <> '' then
        vlEndereco := vlRetorno;
    end;
  end;

  If Application.MessageBox(PChar('Confirma a mofificação desta venda para o cliente Selecionado?'), PChar('Mofidicação de Cliente'),
    MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'select edritem from edr where etdcodigo=' + vlEtdCodigo + ' and edrcodigo=' + vlEndereco;
    consulta.Open;

    vlEdrItem := consulta.FieldByName('edritem').AsString;

    consulta.Close;
    consulta.SQL.Text := 'update mes set edritem=' + vlEdrItem + ', etdcodigo=' + vlEtdCodigo + ' where meschave=' + uqtabelameschave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update rfm,rfi set rfi.etdcodigo=' + vlEtdCodigo + ' where rfm.rfichave=rfi.rfichave and rfm.meschave=' + uqtabelameschave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update mfi,rfm,rfi set mfi.mfisituacao=0 where rfi.rfichave=mfi.rfichave  and rfm.rfichave=rfi.rfichave and rfm.meschave=' +
      uqtabelameschave.AsString;
    consulta.ExecSQL;

    ActAtualizar.Execute;
  End;

end;

procedure Tfrasrv.ACBrNFSe1GerarLog(const ALogLine: string; var Tratado: Boolean);
begin
  inherited;
  memoLog.Add(ALogLine);

end;

Procedure Tfrasrv.CarregaDadosNFSe;
Var
  arquini: TIniFile;

Begin
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vpChaveEmissaoNFSE := ReadString('posi', 'ChaveEmissaoNFSE', '');
    vpAliquotaNFSE := ReadString('posi', 'AliquotaNFSE', '0');
    vpCNAENFSE := ReadString('posi', 'CNAENFSE', '');
    vpUsuarioNFSE := ReadString('posi', 'UsuarioNFSE', '');
    vpSenhaNFSE := ReadString('posi', 'SenhaNFSE', '');

  End;
  arquini.Free;

End;

procedure Tfrasrv.ConfigurarComponente;
var
  Ok: Boolean;
  PathMensal: String;
begin


  // ACBrNFSe1.Configuracoes.Certificados.DadosPFX := '';
  // ACBrNFSe1.Configuracoes.Certificados.ArquivoPFX := ExtractFilePath(Application.ExeName) + 'certificados\certificado.pfx';
  // ACBrNFSe1.Configuracoes.Certificados.Senha := cfgcfgsenhacertificadoa1.AsString;
  // ACBrNFSe1.Configuracoes.Certificados.NumeroSerie := cfgcfgnumecertifa1.AsString;

  ACBrNFSe1.SSL.DescarregarCertificado;

  with ACBrNFSe1.Configuracoes.Geral do
  begin
    ConsultaLoteAposEnvio := True;
    SSLLib := libWinCrypt;
    SSLCryptLib := cryWinCrypt;
    SSLHttpLib := httpWinHttp;
    SSLXmlSignLib := xsLibXml2;

    Salvar := True;
    ExibirErroSchema := True;
    RetirarAcentos := True;
    FormatoAlerta := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
    FormaEmissao := teNormal;

    PathIniCidades := ExtractFilePath(Application.ExeName) + 'ArqINI';

    PathIniProvedor := ExtractFilePath(Application.ExeName) + 'ArqINI'; //

    CodigoMunicipio := StrToIntDef('5107925', 0);
    SenhaWeb := vpSenhaNFSE;
    UserWeb := vpUsuarioNFSE;
    CNPJPrefeitura := '03239076000162';

    Emitente.CNPJ := sonumeros(cfgetddoc1.AsString);
    Emitente.InscMun := cfgedrinscmun.AsString;
    Emitente.RazSocial := cfgetdidentificacao.AsString;
    Emitente.WebUser := vpUsuarioNFSE;
    Emitente.WebSenha := vpSenhaNFSE;
    // Emitente.WebFraseSecr := vpChaveEmissaoNFSE;


    // Provedor ISSNet sem certificado
    // Emitente.WebChaveAcesso := 'A001.B0001.C0001-1';

    // Provedor Sigep sem certificado
    // Emitente.WebChaveAcesso := 'A001.B0001.C0001';

    // Provedor iiBrasil token = WebChaveAcesso para homologação
    // Emitente.WebChaveAcesso := 'TLXX4JN38KXTRNSE';
    // Provedor := proAgili;

    Emitente.WebChaveAcesso := vpChaveEmissaoNFSE;

    { with Emitente.DadosSenhaParams.Add do
      begin
      Param := 'ChaveAutorizacao';
      Conteudo := 'A001.B0001.C0001-1';
      end;
    }

    SetConfigMunicipio;
  end;

  with ACBrNFSe1.Configuracoes.WebServices do
  begin
    Ambiente := taProducao;
    Visualizar := false;

    Salvar := True;
    UF := cfgufssigla.AsString;

    AjustaAguardaConsultaRet := True;

    AguardarConsultaRet := 3000;
    Tentativas := 3;
    IntervaloTentativas := 3000;

    TimeOut := 80000;
    // ProxyHost := edtProxyHost.Text;
    // ProxyPort := edtProxyPorta.Text;
    // ProxyUser := edtProxyUser.Text;
    // ProxyPass := edtProxySenha.Text;
  end;

  ACBrNFSe1.SSL.SSLType := LT_all;

  with ACBrNFSe1.Configuracoes.Arquivos do
  begin
    NomeLongoNFSe := True;
    Salvar := True;
    SepararPorMes := True;
    AdicionarLiteral := True;
    EmissaoPathNFSe := True;
    SepararPorCNPJ := false;
    SepararPorIE := false;
    PathSalvar := ExtractFilePath(Application.ExeName) + 'arqnfses';
    PathSchemas := ExtractFilePath(Application.ExeName) + 'Schemas\agili';

    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'arqnfses') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'arqnfses');

    PathNFSe := ExtractFilePath(Application.ExeName) + 'arqnfses';

    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'logsnfses') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'logsnfses');

    PathGer := ExtractFilePath(Application.ExeName) + 'arqnfses';
    PathMensal := GetPathGer(0);
    PathCan := PathMensal;
    PathSalvar := PathMensal;
  end;

  if ACBrNFSe1.DANFSe <> nil then
  begin
    ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;
    ACBrNFSe1.DANFSe.Logo := ExtractFilePath(Application.ExeName) + 'logo.jpg';
    ACBrNFSe1.DANFSe.PrestLogo := ExtractFilePath(Application.ExeName) + 'prestlogo.jpg';
    ACBrNFSe1.DANFSe.Prefeitura := ExtractFilePath(Application.ExeName) + 'prefeitura.jpg';
    ACBrNFSe1.DANFSe.PathPDF := PathMensal;

    ACBrNFSe1.DANFSe.MargemDireita := 5;
    ACBrNFSe1.DANFSe.MargemEsquerda := 5;
    ACBrNFSe1.DANFSe.MargemSuperior := 5;
    ACBrNFSe1.DANFSe.MargemInferior := 5;
    ACBrNFSe1.DANFSe.MostraPreview := false;
    ACBrNFSe1.DANFSe.MostraSetup := false;
    ACBrNFSe1.DANFSe.MostraStatus := false;

    // Para os provedores que possuem uma lista de serviços como é o caso do Infisc
    // devemos atribuir o valor True a propriedade DetalharServico
    // ACBrNFSeDANFSeRL1.DetalharServico := (ACBrNFSe1.Configuracoes.Geral.Provedor = proInfisc);
  end;

  ACBrNFSeDANFSeRL1.MostraSetup := false;
  ACBrNFSeDANFSeRL1.MostraPreview := false;
  ACBrNFSeDANFSeRL1.MostraStatus := false;
  ACBrNFSeDANFSeRL1.PrintDialog := false;

  { with ACBrNFSe1.MAIL do
    begin
    Host      := edtSmtpHost.Text;
    Port      := edtSmtpPort.Text;
    Username  := edtSmtpUser.Text;
    Password  := edtSmtpPass.Text;
    From      := edtEmailRemetente.Text;
    FromName  := edtEmitRazao.Text;
    SetTLS    := cbEmailTLS.Checked;
    SetSSL    := cbEmailSSL.Checked;
    UseThread := False;

    ReadingConfirmation := False;
    end;
  }

  // lblSchemas.Caption := ACBrNFSe1.Configuracoes.Geral.xProvedor;
end;

procedure Tfrasrv.AlimentarNFSe(NumDFe, NumLote: String);
var
  ValorISS: Double;
  i: Integer;
begin

  with ACBrNFSe1 do
  begin
    NotasFiscais.NumeroLote := NumLote;
    NotasFiscais.Transacao := True;

    with NotasFiscais.Add.NFSe do
    begin
      ChaveNFSe := vpChaveEmissaoNFSE;
      Numero := NumDFe;

      if Configuracoes.Geral.Provedor = proIssDSF then
        SeriePrestacao := '99'
      else
        SeriePrestacao := 'NFSE'; // cfgcfgserienfsv.AsString; // '1';

      NumeroLote := NumLote;

      IdentificacaoRps.Numero := FormatFloat('#########0', StrToInt(NumDFe));

      // Para o provedor ISS.NET em ambiente de Homologação mudar a série para '8'

      if Configuracoes.Geral.Provedor = proIssDSF then
        IdentificacaoRps.Serie := 'NF'
      else
        IdentificacaoRps.Serie := 'NFSE'; // '85';

      // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom, trNone );
      IdentificacaoRps.Tipo := trRPS; //

      DataEmissao := uqtabelamesinclusao.AsFloat;
      DataEmissaoRPS := uqtabelamesinclusao.AsFloat;

      // Provedor Conam
      // DataOptanteSimplesNacional := Date;

      (*
        TnfseNaturezaOperacao = ( no1, no2, no3, no4, no5, no6, no7,
        no50, no51, no52, no53, no54, no55, no56, no57, no58, no59,
        no60, no61, no62, no63, no64, no65, no66, no67, no68, no69,
        no70, no71, no72, no78, no79,
        no101, no111, no121, no201, no301,
        no501, no511, no541, no551, no601, no701 );
      *)
      NaturezaOperacao := no1;
      // NaturezaOperacao := no51;

      // TnfseRegimeEspecialTributacao = ( retNenhum, retMicroempresaMunicipal, retEstimativa, retSociedadeProfissionais, retCooperativa, retMicroempresarioIndividual, retMicroempresarioEmpresaPP );

      if vpUsuarioNFSE = '06825663909' then
      begin
        RegimeEspecialTributacao := retMicroempresaMunicipal;
      end
      else
      begin
        RegimeEspecialTributacao := retMicroempresarioEmpresaPP;
      end;

      // RegimeEspecialTributacao := retLucroReal;

      // TnfseSimNao = ( snSim, snNao );
      { if (cfgcrtcodigo.AsInteger = 2) or (cfgcrtcodigo.AsInteger = 3) then
        OptanteSimplesNacional := snNao
        else }

      if vpUsuarioNFSE = '06825663909' then
        OptanteSimplesNacional := snNao
      else
        OptanteSimplesNacional := snSim;

      // TnfseSimNao = ( snSim, snNao );
      IncentivadorCultural := snNao;
      // Provedor Tecnos
      PercentualCargaTributaria := 0;
      ValorCargaTributaria := 0;
      PercentualCargaTributariaMunicipal := 0;
      ValorCargaTributariaMunicipal := 0;
      PercentualCargaTributariaEstadual := 0;
      ValorCargaTributariaEstadual := 0;

      // TnfseSimNao = ( snSim, snNao );
      // snSim = Ambiente de Produção
      // snNao = Ambiente de Homologação
      if Configuracoes.WebServices.Ambiente = taProducao then
        Producao := snSim
      else
        Producao := snNao;

      // TnfseStatusRPS = ( srNormal, srCancelado );
      Status := srNormal;

      // Somente Os provedores Betha, FISSLex e SimplISS permitem incluir no RPS
      // a TAG: OutrasInformacoes os demais essa TAG é gerada e preenchida pelo
      // WebService do provedor.
      // OutrasInformacoes := 'Pagamento a Vista';

      // Usado quando o RPS for substituir outro
      // RpsSubstituido.Numero := FormatFloat('#########0', i);
      // RpsSubstituido.Serie  := 'UNICA';
      // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
      /// RpsSubstituido.Tipo   := trRPS;

      Servico.Valores.ValorServicos := uqtabelamesservicos.AsFloat;
      Servico.Valores.ValorDeducoes := 0.00;
      Servico.Valores.ValorPis := 0.00;
      Servico.Valores.ValorCofins := 0.00;
      Servico.Valores.ValorInss := 0.00;
      Servico.Valores.ValorIr := 0.00;
      Servico.Valores.ValorCsll := 0.00;


      // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao );
      // stRetencao = snSim
      // stNormal   = snNao

      // Neste exemplo não temos ISS Retido ( stNormal = Não )
      // Logo o valor do ISS Retido é igual a zero.
      Servico.Valores.IssRetido := stNormal; // stRetencao;// stNormal;
      Servico.Valores.ValorIssRetido := 0.00; // uqtabelamesservicos.AsFloat*(strtofloat(vpAliquotaNFSE)/100);

      Servico.Valores.OutrasRetencoes := 0.00;
      Servico.Valores.DescontoIncondicionado := 0.00;
      Servico.Valores.DescontoCondicionado := 0.00;

      Servico.Valores.BaseCalculo := Servico.Valores.ValorServicos - Servico.Valores.ValorDeducoes - Servico.Valores.DescontoIncondicionado;
      // No caso do provedor Ginfes devemos informar a aliquota já dividida por 100
      // para outros provedores devemos informar por exemplo 3, mas ao fazer o calculo
      // do valor do ISS devemos dividir por 100
      Servico.Valores.Aliquota := vpAliquotaNFSE.ToDouble;
      // Provedor Conam
      // Servico.Valores.AliquotaSN := 2.01;

      // Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
      ValorISS := Servico.Valores.BaseCalculo * Servico.Valores.Aliquota / 100;

      // A função RoundTo5 é usada para arredondar valores, sendo que o segundo
      // parametro se refere ao numero de casas decimais.
      // exemplos: RoundTo5(50.532, -2) ==> 50.53
      // exemplos: RoundTo5(50.535, -2) ==> 50.54
      // exemplos: RoundTo5(50.536, -2) ==> 50.54

      Servico.Valores.ValorISS := RoundTo5(ValorISS, -2);


      Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos - Servico.Valores.ValorPis - Servico.Valores.ValorCofins - Servico.Valores.ValorInss -
        Servico.Valores.ValorIr - Servico.Valores.ValorCsll - Servico.Valores.OutrasRetencoes - Servico.Valores.ValorIssRetido -
        Servico.Valores.DescontoIncondicionado - Servico.Valores.DescontoCondicionado;

      // TnfseResponsavelRetencao = ( ptTomador, rtPrestador );
      Servico.ResponsavelRetencao := rtPrestador; // ptTomador;

      Servico.ItemListaServico := '1';

      if Configuracoes.Geral.Provedor = proIssDSF then
        Servico.CodigoCnae := '452000200'
      else
        Servico.CodigoCnae := vpCNAENFSE;

      // Usado pelo provedor de Goiania
      // Servico.CodigoTributacaoMunicipio := '09.01';

      // Para o provedor ISS.NET em ambiente de Homologação
      // o Codigo CNAE tem que ser '6511102'
      // Servico.CodigoCnae                := '123'; // Informação Opcional

      Servico.CodigoTributacaoMunicipio := '1.' + vpCNAENFSE; //

      Servico.Discriminacao := itmpronome.AsString; // 'discriminacao I;discriminacao II';

      // Para o provedor ISS.NET em ambiente de Homologação
      // o Codigo do Municipio tem que ser '999'

      Servico.CodigoMunicipio := cfgcddcodigo.AsString; // '5107925';//  edtCodCidade.Text ajustar para carga;

      // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
      Servico.ExigibilidadeISS := exiExigivel;

      // Informar para Saatri
      Servico.CodigoPais := 1058; // Brasil
      Servico.MunicipioIncidencia := StrToIntDef(cfgcddcodigo.AsString, 0); // StrToIntDef(uqtabelacddcodigo.AsString, 0);

      // Somente o provedor SimplISS permite infomar mais de 1 serviço

      with Servico.ItemServico.New do
      begin
        ItemListaServico := '1';
        codLCServ := Trim(itmpronomereduzido.AsString);
        Codigo := vpCNAENFSE;
        Descricao := itmpronome.AsString;
        Discriminacao := itmpronome.AsString;
        Quantidade := itmitmquantidade.AsFloat;
        ValorUnitario := itmitmvalor.AsFloat;
        ValorServicos := Quantidade * ValorUnitario;
        Aliquota := vpAliquotaNFSE.ToDouble;

      end;

      Prestador.CNPJ := sonumeros(cfgetddoc1.AsString); // edtEmitCNPJ.Text; //'88888888888888';
      Prestador.InscricaoMunicipal := cfgedrinscmun.AsString;

      // Para o provedor ISSDigital deve-se informar também:
      // Prestador.Senha := edtSenhaWeb.Text;
      // Prestador.FraseSecreta := edtFraseSecWeb.Text;

      // Provedor Agili
      Prestador.ChaveAcesso := ACBrNFSe1.Configuracoes.Geral.Emitente.WebChaveAcesso;

      Prestador.cUF := cfgufscodigo.AsInteger;

      // Provedor WebFisco
      // Prestador.Usuario := StrToIntDef(ACBrNFSe1.Configuracoes.Geral.Emitente.WebUser, 0);
      // Prestador.CNPJ_Prefeitura := '03.239.076/001-62';

      PrestadorServico.Endereco.Endereco := cfgedrrua.AsString;
      PrestadorServico.Endereco.TipoLogradouro := '-205';
      PrestadorServico.Endereco.Numero := cfgedrnumero.AsString;
      PrestadorServico.Endereco.Bairro := cfgedrbairro.AsString;
      PrestadorServico.Endereco.CodigoMunicipio := Servico.CodigoMunicipio;
      PrestadorServico.Endereco.UF := cfgufssigla.AsString;
      PrestadorServico.Endereco.CodigoPais := 1058;
      PrestadorServico.Endereco.xPais := 'BRASIL';

      OutrasInformacoes:='Referente a prestação de serviço de uso do Aplicativo Aiqfome';

      PrestadorServico.Endereco.CEP := cfgedrcep.AsString;

      PrestadorServico.RazaoSocial := cfgetdidentificacao.AsString;
      PrestadorServico.NomeFantasia := cfgetdapelido.AsString;

      PrestadorServico.Contato.Telefone := sonumeros(cfgetftelefone.AsString);

      // dadso do cliente
      Tomador.IdentificacaoTomador.CpfCnpj := sonumeros(uqtabelaetddoc1.AsString);
      Tomador.IdentificacaoTomador.InscricaoMunicipal := uqtabelaedrinscmun.AsString;
      Tomador.RazaoSocial := uqtabelaetdidentificacao.AsString;
      Tomador.Endereco.Endereco := uqtabelaedrrua.AsString;
      Tomador.Endereco.TipoLogradouro := '-205';
      Tomador.Endereco.Numero := uqtabelaedrnumero.AsString;
      Tomador.Endereco.Complemento := uqtabelaedrcomple.AsString;
      Tomador.Endereco.Bairro := uqtabelaedrbairro.AsString;
      Tomador.Endereco.CodigoMunicipio := uqtabelacddcodigo.AsString;
      Tomador.Endereco.UF := uqtabelaufssigla.AsString;
      Tomador.Endereco.CodigoPais := 1058; // Brasil
      Tomador.Endereco.CEP := uqtabelaedrcep.AsString;

      // Provedor Equiplano é obrigatório o pais e IE
      // Tomador.Endereco.xPais := 'BRASIL';
      // Tomador.IdentificacaoTomador.InscricaoEstadual := '123456';

      Tomador.Contato.Telefone := Copy(sonumeros(uqtabelaetftelefone.AsString), 1, 11);
      Tomador.Contato.Email := lowercase(uqtabelaeteemail.AsString);

      Tomador.AtualizaTomador := snNao;
      Tomador.TomadorExterior := snNao;

      // Usado quando houver um intermediario na prestação do serviço
      // IntermediarioServico.RazaoSocial        := 'razao';
      // IntermediarioServico.CpfCnpj            := '00000000000';
      // IntermediarioServico.InscricaoMunicipal := '12547478';

      // Usado quando o serviço for uma obra
      // ConstrucaoCivil.CodigoObra := '88888';
      // ConstrucaoCivil.Art        := '433';

      // Condição de Pagamento usado pelo provedor Betha versão 1 do Layout da ABRASF

      { * CondicaoPagamento.QtdParcela := 2;
        CondicaoPagamento.Condicao := cpAPrazo;

        for i := 1 to CondicaoPagamento.QtdParcela do
        begin
        with CondicaoPagamento.Parcelas.New do
        begin
        Parcela := i;
        DataVencimento := Date + (30 * i);
        Valor := (Servico.Valores.ValorLiquidoNfse / CondicaoPagamento.QtdParcela);
        end;
        end;
        * }
    end;
  end;
end;

procedure Tfrasrv.ACBrNFSe1StatusChange(Sender: TObject);
begin
  inherited;
  case ACBrNFSe1.Status of
    stNFSeIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFSeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFSe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFSeConsultaSituacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando a Situação...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFSeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFSeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFSe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFSeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;

end;

procedure Tfrasrv.ActAjustarEstagioExecute(Sender: TObject);
begin
  inherited;
  if uqtabelatdfcodigo.AsString = 'RF' then
  begin
    Application.MessageBox(PChar('Alteração não permitida para registros de Reclassificação de Mercadoria.'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  if ((Self.uqtabelatdfcodigo.AsString = 'AF') or (Self.uqtabelatdfcodigo.AsString = 'RF') or (Self.uqtabelatdfcodigo.AsString = '00')) and
    ((Self.uqtabelatemcodigo.AsString = '3') or (Self.uqtabelatemcodigo.AsString = '2') or (Self.uqtabelatemcodigo.AsString = '1')) then
  begin
    If (Self.uqtabelamesprotocolo.AsString <> '') Then
      ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!')
    Else
    Begin
      If (Self.uqtabelatemcodigo.AsInteger IN [4, 5]) Then
        ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!')
      Else if Self.uqtabelaetdcodigo.AsInteger = 0 then
      begin
        ShowMessage('Atenção: Não pode ser alterados lançamentos feitos para cliente Consumidor!');
        exit;
      end;

      If Application.MessageBox(PChar('Confirma a modificação desta venda para A FATURAR?'), PChar('Mofidicação de Estágio'),
        MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
      Begin

        consulta.Close;
        consulta.SQL.Text := 'select rfichave from rfm where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        while not consulta.eof do
        begin

          rfi.Close;
          rfi.SQL.Text := 'delete from rfi where rfichave=' + consulta.FieldByName('rfichave').AsString;
          rfi.ExecSQL;

          consulta.Next;
        end;

        consulta.Close;
        consulta.SQL.Text := 'delete from rfm where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr('AF') + ' where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

      End;

    End;
  end
  else
    ShowMessage('Atenção: ' + #13 + #13 + 'Só podem ser alterados lançamentos do tipo "Movimento em Andamento" e esteja no estágio "Digitação Manual"!' + #13 +
      'Situação: ' + Self.uqtabelatemcodigo.AsString + #13 + 'Estágio : ' + Self.uqtabelatdfcodigo.AsString);

end;

procedure Tfrasrv.ActAlterarColaboradorExecute(Sender: TObject);
var
  vlMesChave: String;
begin

  uqtabela.DisableControls;
  try
    vlMesChave := Self.uqtabelameschave.AsString;
    (* Chama o formulário para registrar a alteração com (filtro) Código 3 - Alteração de VendecdorTécnico *)
    CriaFormulario(TfsrvAcm, '', vlMesChave, '3');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;

end;

procedure Tfrasrv.ActAlterarExecute(Sender: TObject);
begin
  if (uqtabelatdfcodigo.AsString = tdfMovimentoAFaturar) or (uqtabelatdfcodigo.AsString = tdfRefaturado) then
  begin
    Application.MessageBox(PChar('Alteração não permitida para registros de ' + uqtabelatdfidentificacao.AsString + ' de Mercadoria.'), 'Atenção',
      MB_ICONWARNING + MB_OK);
    exit;
  end;

  if uqtabelattocodigo.AsInteger = ttoReclassificacao then
  begin
    Application.MessageBox(PChar('Alteração não permitida para registros de Reclassificação de Mercadoria.'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  If (Self.uqtabelamesprotocolo.AsString <> '') Then
  begin
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!');
  end
  Else If (Self.uqtabelasdecodigo.AsString = '02') Then
  begin
    ShowMessage('ATENÇÃO: Este registro esta cancelado, não pode ser alterado!')
  end
  else
  Begin

    If (Self.uqtabelatemcodigo.AsInteger IN [4, 5]) Then
      ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!')
    Else if Self.uqtabelaetdcodigo.AsInteger = 0 then
    begin
      ShowMessage('Atenção: Não pode ser alterados lançamentos feitos para cliente Consumidor!');
      exit;
    end;

    CriaFormulario(tfsrvsimples, Self.uqtabelameschave.AsString, '');
  End;

end;

procedure Tfrasrv.ActAlterarOperadorExecute(Sender: TObject);
var
  vlMesChave: String;
begin
  inherited;
  { if uqtabelaorcchave.AsInteger = 0 then
    begin
    Application.MessageBox(PChar('Este registro não possui Vendedor!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
    end; }

  uqtabela.DisableControls;
  try
    vlMesChave := Self.uqtabelameschave.AsString;
    (* Chama o formulário para registrar a alteração com Código 1 - Alteração de Vendedor *)
    CriaFormulario(TfsrvAcm, '', vlMesChave, '9');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;

end;

procedure Tfrasrv.ActAlterarTecnicoExecute(Sender: TObject);
var
  vlMesChave: String;
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT i.itmchave FROM itm i ';
  consulta.SQL.Add('JOIN imc i1 ON i.itmchave = i1.itmchave ');
  consulta.SQL.Add('JOIN clb c ON i1.clbcodigo = c.clbcodigo AND c.fnccodigo = 5 ');
  consulta.SQL.Add('WHERE i.meschave = ' + uqtabelameschave.AsString);
  consulta.Open;

  if consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Este registro não possui Técnico!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  uqtabela.DisableControls;
  try
    vlMesChave := Self.uqtabelameschave.AsString;
    (* Chama o formulário para registrar a alteração com (filtro) Código 2 - Alteração de Técnico *)
    CriaFormulario(TfsrvAcm, '', vlMesChave, '2');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;
end;

procedure Tfrasrv.ActAtualizarExecute(Sender: TObject);
begin
  try
    ActAtualizar.Enabled := false;
    Inherited;
    CalculaTotais;
    { AtualizarDetalhe; }
  finally
    ActAtualizar.Enabled := True;
  end;
end;

procedure Tfrasrv.ActCancelarExecute(Sender: TObject);
var
  vMotivo: string;
  vlMeaCodigo: string;
  vlAcao: string;
  vlItens: TStringList;
  i: Integer;

begin
  { inherited; }

  edbusca.Text := '';

  if uqtabelasdecodigo.AsString = '02' then
  begin
    ShowMessage('ATENÇÃO: Este lançamento já esta cancelado!');
    exit;
  end;

  if (uqtabelatdfcodigo.AsString <> '00') and (uqtabelatdfcodigo.AsString <> 'AF') and (uqtabelatemcodigo.AsInteger <> 4) then
  begin
    ShowMessage('ATENÇÃO: Somente registro do tipo "Movimento em Andamento" pode ser cancelado!');
    exit;
  end;

  If Self.uqtabelamesprotocolo.AsString <> '' Then
  begin
    ShowMessage('ATENÇÃO: Este registro é uma NFE, não pode ser cancelado!');
    exit;
  end;
  vlAcao := IntToStr((Sender as TAction).Tag);
  if RegistroAcessoOperacao(vlAcao, 'Registro') then
  begin

    if Autorizado(Sender) then
      If Application.MessageBox(PChar('Confirma o CANCELAMENTO da Venda selecionada?'), PChar('Cancelamento'),
        MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
      Begin
        try

          vlMeaCodigo := MostraLista('mmea', '');

          Repeat
            vMotivo := InputBox('Cancelamento TOTAL !', 'Descreva o complemento do motivo para o Cancelamento: ', '');
          Until vMotivo <> '';

          vlItens := TStringList.Create;
          Self.itm.First;
          while not itm.eof do
          begin
            vlItens.Add(itmprocodigo.AsString);
            itm.Next;
          end;

          consulta.Close;
          consulta.SQL.Text := 'UPDATE mes SET sdecodigo = ''02'' WHERE meschave = ' + Self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'INSERT INTO hcm (meschave, sdecodigo, clbcodigo, hcmdata, hcmhora, hcmdescricao) VALUES ( ';
          consulta.SQL.Add(Self.uqtabelameschave.AsString + ', ');
          consulta.SQL.Add('''02'', ');
          consulta.SQL.Add(Acesso.Usuario.ToString + ', ');
          consulta.SQL.Add(QuotedStr(ajustadata(DateToStr(Date))) + ', ');
          consulta.SQL.Add(QuotedStr(TimeToStr(time)) + ', ');
          consulta.SQL.Add(QuotedStr(vMotivo) + ')');
          consulta.ExecSQL;

          CancelarRFI(Self.uqtabelameschave.AsString, vMotivo, vlMeaCodigo);

          if (uqtabelatdfcodigo.AsString = '55') or (uqtabelatdfcodigo.AsString = '65') then
          begin
            InutilizarNumeracao(uqtabelameschave.AsInteger, uqtabelatdfcodigo.AsString);
          end;

          for i := 0 to vlItens.count - 1 do
          begin

            consulta.Close;
            consulta.SQL.Text := 'UPDATE pro SET prosaldo=(select calcSaldoProduto(' + vlItens[i] + ')) WHERE procodigo=' + vlItens[i];
            consulta.ExecSQL;

            consulta.Close;
            consulta.SQL.Text := 'UPDATE pro SET prosaldodisp=(select calcSaldoProdutodisp(' + vlItens[i] + ')) WHERE procodigo=' + vlItens[i];
            consulta.ExecSQL;

          end;

          dtl.First;
          while not dtl.eof do
          begin
            consulta.Close;
            consulta.SQL.Text := 'UPDATE lte SET  ltesituacao = 1 WHERE ltechave = ' + dtl.FieldByName('ltechave').AsString;
            consulta.ExecSQL;
            dtl.Next;
          end;

          ShowMessage('Cancelamento realizado com sucesso!');

        except
          ShowMessage('Falha de Cancelamento!');
        end;

        Self.ActAtualizar.Execute;
      End;

  end;
end;

procedure Tfrasrv.ActCancelarNFSeExecute(Sender: TObject);

var
  Codigo, NumeroNFSe, motivo, NumeroLote, CodVerificacao, ASerieNFSe, ANumeroRps, ASerieRps, AValorNFSe: String;
  Valor: Double;
begin
  // Codigo de Cancelamento
  // 1 - Erro de emissão
  // 2 - Serviço não concluido
  // 3 - RPS Cancelado na Emissão

  if not(InputQuery('Cancelar NFSe', 'Código de Cancelamento', Codigo)) then
    exit;

  if not(InputQuery('Cancelar NFSe', 'Numero da NFS-e', NumeroNFSe)) then
    exit;

  if not(InputQuery('Cancelar NFSe', 'Motivo de Cancelamento', motivo)) then
    exit;

  if not(InputQuery('Cancelar NFSe', 'Numero do Lote', NumeroLote)) then
    exit;

  if not(InputQuery('Cancelar NFSe', 'Codigo de Verificação', CodVerificacao)) then
    exit;

  ASerieNFSe := '';
  ANumeroRps := '';
  ASerieRps := '';
  AValorNFSe := '';

  if ACBrNFSe1.Configuracoes.Geral.Provedor = proCONAM then
  begin
    if not(InputQuery('Cancelar NFSe', 'Serie da NFS-e', ASerieNFSe)) then
      exit;

    if not(InputQuery('Cancelar NFSe', 'Numero do Rps', ANumeroRps)) then
      exit;

    if not(InputQuery('Cancelar NFSe', 'Serie do Rps', ASerieRps)) then
      exit;

    if not(InputQuery('Cancelar NFSe', 'Valor da NFS-e', AValorNFSe)) then
      exit;
  end;

  Valor := StrToFloatDef(AValorNFSe, 0);

  ACBrNFSe1.CancelarNFSe(Codigo, NumeroNFSe, motivo, NumeroLote, CodVerificacao, ASerieNFSe, ANumeroRps, ASerieRps, Valor);

  memoLog.Add('Retorno do Cancelamento:');

  memoLog.Add('Cód. Cancelamento: ' + ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento);

  if ACBrNFSe1.WebServices.CancNfse.DataHora <> 0 then
    memoLog.Add('Data / Hora      : ' + DateTimeToStr(ACBrNFSe1.WebServices.CancNfse.DataHora));

  // LoadXML(MemoResp.Text, WBResposta);

end;

procedure Tfrasrv.ActConsultarLoteExecute(Sender: TObject);
var
  Lote, Protocolo: String;
begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  CarregaDadosNFSe;
  ConfigurarComponente;

  OpenDialog1.Title := 'Selecione o RPS';
  OpenDialog1.DefaultExt := '*-rps.xml';
  OpenDialog1.Filter := 'Arquivos RPS (*-rps.xml)|*-rps.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

  { if OpenDialog1.Execute then
    begin
    ACBrNFSe1.NotasFiscais.Clear;
    ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, false);
    end;

  }

  { if not(InputQuery('Consultar Lote', 'Número do Lote', Lote)) then
    exit;
    if not(InputQuery('Consultar Lote', 'Número do Protocolo', Protocolo)) then
    exit; }

  ACBrNFSe1.Configuracoes.Geral.Emitente.WebChaveAcesso := vpChaveEmissaoNFSE;

  ACBrNFSe1.ConsultarNFSe(now(), now(), uqtabelamesnumero.AsString);


  // showmessage(ACBrNFSe1.WebServices.ConsultaNFSe.ToString);

  // memoLog.Text := ACBrNFSe1.WebServices.ConsultaNFSe.ToString;

  // ACBrNFSe1.ConsultarLoteRps(Lote, Protocolo);

  // memoLog.Text := ACBrNFSe1.WebServices.ConsLote.RetWS;
  // memoLog.Text := ACBrNFSe1.WebServices.ConsLote.RetWS;


  // LoadXML(ACBrNFSe1.WebServices.ConsLote.RetWS, WBResposta);

end;

procedure Tfrasrv.InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
var
  arq: string;
Begin
  if vtdfcodigo = '55' then
    modulonfe(arq, rnfInutilizarDireto, vMesChave.ToString);

  if vtdfcodigo = '65' then
    ModuloNFCe('InutilizarNumerosNFCEDireto', Acesso.Terminal.ToString, vMesChave.ToString, Acesso.Usuario.ToString);

end;

function Tfrasrv.ModuloNFCe(vfuncao: string; vTrmCodigo: string; vMesChave: string; vClbCodigo: string): Boolean;
type
  Tmodulonfce = function(AOwner: TComponent; conexao: TUniConnection; vMesChave: string; vfuncao: string; Acesso: TAcesso; vImprimir: Boolean;
    vConsultouSefaz: Boolean; vemail: string): Boolean;
var
  ModuloNFCe: Tmodulonfce;
  vlRetorno: Boolean;
  vlPackNFCe: Cardinal;
begin
  Result := false;
  vlPackNFCe := 0;
  vlPackNFCe := LoadPackage('modulos\mnfepegasus.bpl');
  if vlPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vlPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Self.zcone, vMesChave, vfuncao, Acesso, false, false, '');
    Result := vlRetorno;

  end;
  DoUnLoadPackage(Application, vlPackNFCe);
End;

Procedure Tfrasrv.modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
type
  TModuloNFe = function(AOwner: TComponent; conexao: TUniConnection; varq: string; vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso;
    vConsultouSefaz: Boolean): Boolean;
var
  modnfe: TModuloNFe;

  ch: string;
  vu: string;
  vpack: Cardinal;
begin
  vpack := LoadPackage('modulos\mnfepegasus.bpl');
  if vpack <> 0 then
    try
      @modnfe := GetProcAddress(vpack, PChar('ModuloNFe'));
      if Assigned(modnfe) then
      begin
        modnfe(Application, Self.zcone, arq, chave, Rotina, Acesso, false);
      end;
    finally
      // DoUnLoadPackage(vpack);
    end;
End;

procedure Tfrasrv.ActEnviarEmailNFSeExecute(Sender: TObject);

var
  vAux: String;
  sCC: TStrings;
  sMensagem: TStrings;

begin
  OpenDialog1.Title := 'Selecione a NFSe';
  OpenDialog1.DefaultExt := '*-NFSe.xml';
  OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

  if not OpenDialog1.Execute then
    exit;

  ACBrNFSe1.NotasFiscais.Clear;
  ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  if not(InputQuery('Enviar e-mail', 'Destinatário', vAux)) then
    exit;

  sMensagem := TStringList.Create;
  sMensagem.Add('corpo do texto da mensagem');

  sCC := TStringList.Create;
  try
    sCC.Clear; // Usando para add outros e-mail como Com-Cópia
    // sCC.Add('email_1@provedor.com'); // especifique um email valido
    // sCC.Add('email_2@provedor.com.br');    // especifique um email valido
    ACBrNFSe1.NotasFiscais.Items[0].EnviarEmail(vAux, 'Nota fiscal de serviço gerada:', sMensagem, True // Enviar PDF junto
      , sCC // Lista com emails que serão enviado cópias - TStrings
      , nil // Lista de anexos - TStrings
      , nil // Reply-to
      );
  finally
    sCC.Free;
  end;

  memoLog.Add('Arquivo Carregado de: ' + ACBrNFSe1.NotasFiscais.Items[0].NomeArq);

  // MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
  // LoadXML(MemoResp.Text, WBResposta);

  // pgRespostas.ActivePageIndex := 1;

end;

procedure Tfrasrv.ActEnviarNFSeExecute(Sender: TObject);
var
  vNumRPS, sNomeArq: String;
  vlMessage: string;
begin
  try
    ActEnviarNFSe.Enabled := false;

    if uqtabelamesvalor.AsCurrency <= 0 then
    begin
      ShowMessage('Não é possivel fazer nota de valor negativo ou zero!');
      ActEnviarNFSe.Enabled := True;
      exit;
    end;

    // **************************************************************************
    //
    // A function Gerar só esta disponivel para alguns provedores.
    //
    // **************************************************************************

    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    cfg.Open;

    NumeroNFSe.Close;
    NumeroNFSe.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
    NumeroNFSe.ExecSQL;
    vNumRPS := NumeroNFSe.Fields[0].AsString;

    CarregaDadosNFSe;
    ConfigurarComponente;

    ACBrNFSe1.NotasFiscais.Clear;
    AlimentarNFSe(vNumRPS, '1');

    ConfigurarComponente;
    try
      if ACBrNFSe1.Gerar(StrToInt(vNumRPS), StrToInt(vNumRPS), false) then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update mes set temcodigo=5 where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        sNomeArq := ACBrNFSe1.NotasFiscais.Items[0].NomeArq;

        if sNomeArq <> '' then
        begin

          ACBrNFSe1.NotasFiscais.Clear;
          ACBrNFSe1.NotasFiscais.LoadFromFile(sNomeArq);

          consulta.Close;
          consulta.SQL.Text := 'update cfgmnfe set cfgnumeronfsv=' + ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr('NS') + ', temcodigo=5, mesnumero=' + ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero +
            ' where meschave=' + uqtabelameschave.AsString;
          consulta.ExecSQL;

          // ACBrNFSe1.NotasFiscais.Imprimir;

          memoLog.Add('Arquivo Carregado de: ' + ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
        end;

        ActAtualizar.Execute;
      end;

    except
      on E: Exception do
      begin
        vlMessage := E.Message;

        if pos('Ja existe um RPS com este numero, serie e tipo lancado para este prestador de servico.', vlMessage) > 0 then
        begin
          NumeroNFSe.Close;
          NumeroNFSe.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
          NumeroNFSe.ExecSQL;
          vNumRPS := NumeroNFSe.Fields[0].AsString;

        end
        else
        begin
         showmessage( vlMessage);
        end;

      end;

    end;

  finally
    ActEnviarNFSe.Enabled := True;
  end;
end;

procedure Tfrasrv.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  If Self.uqtabelamesprotocolo.AsString <> '' Then
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser Excluído!')
  Else
    Inherited;
end;

procedure Tfrasrv.ActFaturarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfsrvfaturamento, '', '');
end;

procedure Tfrasrv.ActFinalizarExecute(Sender: TObject);
var
  vRetLote: String;
  vlMdacodigo: string;
  vlTfpCodigo: Integer;

begin
  inherited;

  if dtl.RecordCount > 0 then
  begin
    ShowMessage('Esta venda ja possui finalizador financeiro!');
    exit;
  end;

  vRetLote := RegistraLote;
  if vRetLote = '' then
  begin
    exit;
  end;

  (* Identifica se houve parte de pagamento a prazo *)
  consulta.Close;
  consulta.SQL.Text := 'SELECT rfm.meschave, dtl.mdacodigo  FROM rfm, mfi, mlt, dtl ';
  consulta.SQL.Add('WHERE mfi.rfichave = rfm.rfichave ');
  consulta.SQL.Add('AND mfi.mfichave = mlt.mfichave ');
  consulta.SQL.Add('AND mlt.ltechave = dtl.ltechave ');
  consulta.SQL.Add('AND dtl.mdacodigo in (1,7) ');
  consulta.SQL.Add('AND rfm.meschave = ' + Self.uqtabelameschave.AsString);
  consulta.Open;

  vlMdacodigo := consulta.Fields[1].AsString;

  if consulta.IsEmpty then
    exit;

  if vlMdacodigo = '1' then
    vlTfpCodigo := tfpAVista
  else
    vlTfpCodigo := tfpAPrazo;

  consulta.Close;

  consulta.SQL.Text := 'UPDATE mes SET tdfcodigo=' + QuotedStr(tdfMovimentoEmAndamento) + ', tfpcodigo=' + IntToStr(vlTfpCodigo) + ' WHERE meschave=' +
    Self.uqtabelameschave.AsString;
  consulta.ExecSQL;
  Self.ActAtualizar.Execute;
end;

function Tfrasrv.RegistraLote: String;
type
  TRegistraLote = function(AOwner: TComponent; conexao: TUniConnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;
var
  RegistraLote: TRegistraLote;
  vTotalBruto: String;
  vDesconto: String;
begin
  Pack := LoadPackage('modulos\mlte.bpl');
  If Pack <> 0 Then
    Try
      @RegistraLote := GetProcAddress(Pack, PChar('registralote'));
      If Assigned(RegistraLote) Then
      begin
        vTotalBruto := FloatToStr(uqtabelamestotal.AsFloat + uqtabelamesdesconto.AsFloat);
        vDesconto := FloatToStr(uqtabelamesdesconto.AsFloat);
        Result := RegistraLote(Application, zcone, vchave, '1', vTotalBruto, '0', '0', vDesconto, Acesso, IntToStr(tfdVenda));
      end;
    Finally

    End;
end;

procedure Tfrasrv.ActGerarCobrancaExecute(Sender: TObject);
var
  vRecno: Integer;
  vlPOdeFaturar: Boolean;
begin
  inherited;
  if Self.uqtabelaetdcodigo.AsInteger = 0 then
  begin
    ShowMessage('Não é possível gerar boleto para vendas ao CONSUMIDOR!');
    exit;
  end;
  vlPOdeFaturar := false;
  dtl.First;
  while not dtl.eof do
  begin
    if lowercase(Self.dtlmdaidentificacao.AsString) = 'convênio' then
    begin
      vlPOdeFaturar := True;
      break;
    end;

    dtl.Next;
  end;
  dtl.First;

  if vlPOdeFaturar = false then
  begin
    ShowMessage('Somente vendas com finalizações em Convênio podem ter seus Boletos gerados');
    exit;

  end;

  if Self.uqtabelaetdcodigo.AsInteger = 0 then
  begin

    ShowMessage('Não é possível gerar boleto para vendas ao CONSUMIDOR!');
    exit;
  end;

  vRecno := uqtabela.RecNo;
  // CriaFormulario(Tfrfisrv, Self.tittitcodigo.AsString, uqtabelameschave.AsString);

  if tittitcodigo.AsString <> '' then
    CriaFormulario(Tfcremlt, Self.tittitcodigo.AsString, '');

  uqtabela.RecNo := vRecno;
end;

procedure Tfrasrv.ActImprimirNFSeExecute(Sender: TObject);

begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  CarregaDadosNFSe;
  ConfigurarComponente;

  OpenDialog1.Title := 'Selecione a NFSe';
  OpenDialog1.DefaultExt := '*-NFSe.xml';
  OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrNFSe1.NotasFiscais.Clear;
    ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFSe1.NotasFiscais.Imprimir;
    ACBrNFSe1.NotasFiscais.ImprimirPDF;

    // memoLog.Add('Arquivo Carregado de: ' + ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
    // memoLog.Add('Nota Numero: ' + ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
    // memoLog.Add('Código de Verificação: ' + ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);
    // memoLog.Add('Data de Emissão: ' + DateToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao));

    // MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
    // LoadXML(MemoResp.Text, WBResposta);

    // pgRespostas.ActivePageIndex := 1;
  end;

end;

procedure Tfrasrv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfsrvsimples, '', '');
end;

procedure Tfrasrv.ActInfoComplementarExecute(Sender: TObject);
begin
  If Self.uqtabelamesprotocolo.AsString <> '' Then
  begin
    Application.MessageBox(PChar('Este registro é uma NFE. Não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  MostraLista('mtom', Self.uqtabelameschave.AsString);
end;

procedure Tfrasrv.ActLinkNFSeExecute(Sender: TObject);
var
  vNumNFSe, sCodVerif, sLink: String;
begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  // CarregaDadosNFSe;
  ConfigurarComponente;

  vNumNFSe := uqtabelamesnumero.AsString;

  sLink := ACBrNFSe1.LinkNFSe(vNumNFSe, sCodVerif);

  ShowMessage(sLink);
  // MemoResp.Lines.Add('Link Gerado: ' + sLink);

end;

procedure Tfrasrv.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(listaobs);
  SalvarColunas(listaitm);

  inherited;
end;

procedure Tfrasrv.ActSituacaoComissaoExecute(Sender: TObject);
var
  vlAjustar: string;
  vlTexto: String;
  vlAcao: string;
begin
  inherited;

  if uqtabelamestipocomissao.AsInteger = 1 then
  begin
    vlAjustar := '0';
    vlTexto := '  S E M  Comissão';
  end
  else
  begin

    vlAjustar := '1';
    vlTexto := '  C O M   Comissão';
  end;

  vlAcao := IntToStr((Sender as TAction).Tag);
  if RegistroAcessoOperacao(vlAcao, 'Registro') then
  begin
    if Autorizado(Sender) then
    begin
      If Application.MessageBox(PChar('Confirma a modificação para ' + vlTexto + ' esta vanda?'), PChar('Mofidicação de Comissão'),
        MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
      Begin

        consulta.Close;
        consulta.SQL.Text := 'update mes set mestipocomissao=' + vlAjustar + ' where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update itm set itmtipocomissao=' + vlAjustar + ' where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        uqtabela.RefreshRecord;

      End;
    end;
  end;

end;

procedure Tfrasrv.ActTodasEnviarNFSeExecute(Sender: TObject);
var
  hnd: THandle;
begin
  inherited;
 // DBGListaTitleClick(DBGLista.Columns[8]);
  uqtabela.First;
  while not uqtabela.eof do
  begin

    if (uqtabelamesnumero.AsInteger = 0) and (uqtabelamestotal.AsFloat > 0) then
    begin
      if ActEnviarNFSe.Enabled then
      begin

        ActEnviarNFSe.Execute;

        uqtabela.First;
      end
      else
      begin

         uqtabela.Next;
      end;
    end
    else
    begin
      uqtabela.Next;
    end;
  end;

end;

procedure Tfrasrv.DBGListaDblClick(Sender: TObject);
begin
  { inherited; }
end;

procedure Tfrasrv.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin
  { inherited; }

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      font.Style := [fsbold];
      // Font.Color := CLWHITE;
    End;

  If (Self.uqtabelasdecodigo.AsString = '02') Or (Self.uqtabelasdecodigo.AsString = '03') Or (Self.uqtabelasdecodigo.AsString = '04') Then
    DBGLista.Canvas.font.Color := clRed;

  If (Self.uqtabelamestipocomissao.AsString = '1') then
    DBGLista.Canvas.font.Style := []
  else
    DBGLista.Canvas.font.Style := [fsItalic];

  with TFriendly(DBGLista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrasrv.DBResumoModalidadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrasrv.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (not uqtabela.Executing) and (not uqtabela.Fetching) then
  begin

    AtualizarDetalhe;

    if not ccm.Active then
      ccm.Open;

    if not erf.Active then
      erf.Open;

  end;

end;

procedure Tfrasrv.AtualizarDetalhe;
begin
  if not dtl.Active then
    dtl.Open;

  itm.Close;
  itm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  itm.Open;

  uqItmTotais.Close;
  uqItmTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  uqItmTotais.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  uqItmTotais.Open;

  dtl.Close;
  dtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  dtl.Open;

  if not tom.Active then
    tom.Open;

  if not vdtm.Active then
    vdtm.Open;

  tit.Close;
  tit.Params[0].AsInteger := uqtabelameschave.AsInteger;
  tit.Open;

  if uqtabelasdecodigo.AsString = '02' then
  begin
    plInformacoes.Visible := True;
    plEstorno.Visible := True;
    DBGLista.Repaint;

    hcm.Close;
    hcm.Params[0].AsInteger := uqtabelameschave.AsInteger;
    hcm.Open;

  end

  else
  begin
    hcm.Close;

    plInformacoes.Visible := false;
    plEstorno.Visible := false;
    DBGLista.Repaint;
  end;

end;

procedure Tfrasrv.CalculaTotais;
var

  vlTotalBruto: Double;
  vlTotalDesconto: Double;
  vlTotalLiquido: Double;

  vlTotalProdutos: Double;
  vlTotalServicos: Double;

  vlTotalNF: Double;

  vlTotalCancelado: Double;
  vlRecNo: Integer;

  vlTotalRefaturado: Double;
  vlTotalAFaturar: Double;

  vlTotalTrocaDevo: Double;
  vlTotalDoacoes: Double;

  vlTotalTroco: Double;

  registroatual: Integer;

  vlFiltros: string;
begin

  // inherited;

  try
    vlTotalTroco := 0;
    vlTotalBruto := 0;
    vlTotalDesconto := 0;
    vlTotalLiquido := 0;

    vlTotalProdutos := 0;
    vlTotalServicos := 0;

    vlTotalRefaturado := 0;
    vlTotalAFaturar := 0;

    vlTotalTrocaDevo := 0;

    vlTotalNF := 0;

    vlTotalCancelado := 0;
    vlTotalTrocaDevo := 0;
    vlTotalDoacoes := 0;

    // inicio dos convenios

    adm.Close;
    adm.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;
    adm.Open;

    registroatual := uqtabela.RecNo;

    TotaisDtls.Close;
    TotaisDtls.Clear;

    TotaisDtls.Open;

    TotaisDtls.DisableControls;

    uqtabela.DisableControls;
    { uqtabela.Close;
      uqtabela.Open; }

    dtl.DisableControls;

    uqDtl.Close;
    uqDtl.SQL.Text := '   SELECT DISTINCT ';
    uqDtl.SQL.Add('mes.meschave, ');
    uqDtl.SQL.Add('    mda.mdaidentificacao, ');
    uqDtl.SQL.Add('  ( dtl.dtlvalor) dtlvalor, ');
    uqDtl.SQL.Add('  dtl.ltechave, ');
    uqDtl.SQL.Add('    mda.mdacodigo ');
    uqDtl.SQL.Add('FROM rfm ');
    uqDtl.SQL.Add('  INNER JOIN mes ');
    uqDtl.SQL.Add('    ON rfm.meschave = mes.meschave ');

    uqDtl.SQL.Add('  INNER JOIN rfi ');
    uqDtl.SQL.Add('    ON rfm.rfichave = rfi.rfichave ');

    uqDtl.SQL.Add('  INNER JOIN mfi ');
    uqDtl.SQL.Add('    ON mfi.rfichave = rfi.rfichave ');

    uqDtl.SQL.Add('  inner JOIN mlt ');
    uqDtl.SQL.Add('    ON mlt.mfichave = mfi.mfichave ');

    uqDtl.SQL.Add('  INNER JOIN dtl ');
    uqDtl.SQL.Add('    ON dtl.ltechave = mlt.ltechave ');

    uqDtl.SQL.Add('  INNER JOIN mda ');
    uqDtl.SQL.Add('    ON dtl.mdacodigo = mda.mdacodigo ');
    uqDtl.SQL.Add('  INNER JOIN lte ');
    uqDtl.SQL.Add('    ON mlt.ltechave = lte.ltechave ');

    uqDtl.SQL.Add('WHERE rfi.tfdcodigo IN (2, 32) ');
    uqDtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    uqDtl.SQL.Add('AND mes.tdfcodigo <> ' + QuotedStr('RF') + ' ');
    uqDtl.SQL.Add('AND mes.mesrefeicao = 0 ');
    uqDtl.SQL.Add('AND mes.flacodigo = :flacodigo ');

    uqDtl.SQL.Add('-- filtros ');
    uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add('UNION DISTINCT ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add('SELECT DISTINCT ');
    uqDtl.SQL.Add('    mes.meschave, ');
    uqDtl.SQL.Add('    mda.mdaidentificacao, ');
    uqDtl.SQL.Add('  ( dtl.dtlvalor) dtlvalor, ');
    uqDtl.SQL.Add('  dtl.ltechave, ');
    uqDtl.SQL.Add('    mda.mdacodigo ');
    uqDtl.SQL.Add('FROM rfm ');
    uqDtl.SQL.Add('  INNER JOIN mes ');
    uqDtl.SQL.Add('    ON rfm.meschave = mes.meschave ');
    uqDtl.SQL.Add('    AND rfm.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN rfi ');
    uqDtl.SQL.Add('    ON rfm.rfichave = rfi.rfichave ');
    uqDtl.SQL.Add('    AND rfi.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN mfi ');
    uqDtl.SQL.Add('    ON mfi.rfichave = rfi.rfichave ');
    uqDtl.SQL.Add('    AND mfi.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  inner JOIN mlt ');
    uqDtl.SQL.Add('    ON mlt.mfichave = mfi.mfichave ');
    uqDtl.SQL.Add('    AND mes.flacodigo = mlt.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN dtl ');
    uqDtl.SQL.Add('    ON dtl.ltechave = mlt.ltechave ');
    uqDtl.SQL.Add('    AND mlt.flacodigo = dtl.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN mda ');
    uqDtl.SQL.Add('    ON dtl.mdacodigo = mda.mdacodigo ');
    uqDtl.SQL.Add('  inner JOIN lte ');
    uqDtl.SQL.Add('    ON mlt.ltechave = lte.ltechave ');
    uqDtl.SQL.Add('    AND mes.flacodigo = lte.flacodigo ');
    uqDtl.SQL.Add('WHERE rfi.tfdcodigo IN ( 2) ');
    uqDtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    uqDtl.SQL.Add('AND mes.tdfcodigo <> ' + QuotedStr('RF') + ' ');
    uqDtl.SQL.Add('AND mes.mesrefeicao = 0 ');

    uqDtl.SQL.Add('AND rfi.tficodigo ');
    uqDtl.SQL.Add('AND mes.flacodigo = :flacodigo ');
    uqDtl.SQL.Add('-- filtros ');
    uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');

    uqDtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;

    try
      if not fmd.IsEmpty then
        vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    except
      vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    end;

    uqDtl.SQL.Text := StringReplace(uqDtl.SQL.Text, '-- filtros', vlFiltros, [rfReplaceAll, rfIgnoreCase]);

    uqDtl.Open;
    mostracalculototal.Position := 0;
    mostracalculototal.Max := uqtabela.RecordCount;
    Application.ProcessMessages;
    TotaisDtls.DisableControls;

    if uqtabela.Active then
    begin
      uqtabela.First;
      while not uqtabela.eof do
      begin
        mostracalculototal.Position := mostracalculototal.Position + 1;
        Application.ProcessMessages;

        vlTotalDesconto := vlTotalDesconto + uqtabelamesdesconto.AsCurrency;

        if (uqtabelasdecodigo.AsString = '02') or (uqtabelasdecodigo.AsString = '03') then
        begin
          vlTotalCancelado := vlTotalCancelado + uqtabelamestotal.AsCurrency;
        end
        else
        begin
          if uqtabelattocodigo.AsInteger = ttoVenda then
          begin
            vlTotalProdutos := vlTotalProdutos + uqtabelamesprodutos.AsCurrency;
            vlTotalServicos := vlTotalServicos + uqtabelamesservicos.AsCurrency;
          end;
        end;

        { if uqtabelasdecodigo.AsString = 'RF' then
          vlTotalRefaturado := vlTotalRefaturado + uqtabelamestotal.AsCurrency; }

        if ((uqtabelatdfcodigo.AsString = '65') or (uqtabelatdfcodigo.AsString = '55')) and (uqtabelasdecodigo.AsString <> '02') then
          vlTotalNF := vlTotalNF + uqtabelamestotal.AsCurrency;

        if uqDtl.Locate('meschave', uqtabelameschave.AsInteger, []) then
        begin
          while uqDtlmeschave.AsInteger = uqtabelameschave.AsInteger do
          begin
            if uqtabelasdecodigo.AsString <> '02' then
            begin
              if TotaisDtls.Locate('mdacodigo', uqDtl.FieldByName('mdacodigo').AsInteger, []) then
                TotaisDtls.edit
              else
                TotaisDtls.Append;

              TotaisDtlsmdaidentificacao.AsString := uqDtl.FieldByName('mdaidentificacao').AsString;
              TotaisDtlsdtlvalor.AsCurrency := TotaisDtlsdtlvalor.AsCurrency + uqDtl.FieldByName('dtlvalor').AsCurrency;
              TotaisDtlsmdacodigo.AsInteger := uqDtl.FieldByName('mdacodigo').AsInteger;
              TotaisDtls.Post;

            end;

            if uqtabelasdecodigo.AsString <> '02' then
            begin
              if (uqDtl.FieldByName('mdacodigo').AsInteger = mdaTrocaDevolucao) or (uqDtl.FieldByName('mdacodigo').AsInteger = mdaVale) or
                ((uqtabelattocodigo.AsInteger <> ttoVenda) and (uqtabelattocodigo.AsInteger = tteSaida)) then
              begin
                if uqDtl.FieldByName('dtlvalor').AsString = '' then
                begin
                  vlTotalTrocaDevo := vlTotalTrocaDevo + uqtabelamestotal.AsCurrency;

                end
                else
                begin
                  vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtl.FieldByName('dtlvalor').AsCurrency;
                end;
              end;

              if (uqDtl.FieldByName('mdacodigo').AsInteger = mdaTrocoVale) or
                ((uqtabelattocodigo.AsInteger <> ttoVenda) and (uqtabelattocodigo.AsInteger = tteSaida)) then
              begin
                if uqDtl.FieldByName('dtlvalor').AsString = '' then
                begin
                  vlTotalTrocaDevo := vlTotalTrocaDevo - uqtabelamestotal.AsCurrency;

                end
                else
                begin
                  vlTotalTrocaDevo := vlTotalTrocaDevo - uqDtl.FieldByName('dtlvalor').AsCurrency;
                end;
              end;

            end;

            if (uqDtl.FieldByName('mdacodigo').AsInteger = 11) or (uqDtl.FieldByName('mdacodigo').AsInteger = 22) or
              (uqDtl.FieldByName('mdacodigo').AsInteger = 33) or (uqDtl.FieldByName('mdacodigo').AsInteger = 77) then
              vlTotalTroco := vlTotalTroco + uqDtl.FieldByName('dtlvalor').AsCurrency;

            if (uqDtl.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
            begin
              if uqtabelasdecodigo.AsString = '00' then
              begin
                vlTotalDoacoes := vlTotalDoacoes + uqDtl.FieldByName('dtlvalor').AsCurrency;
              end;

            end;

            vlTotalBruto := vlTotalBruto + uqDtl.FieldByName('dtlvalor').AsCurrency;

            uqDtl.Next;

            if (uqDtlmeschave.AsInteger <> uqtabelameschave.AsInteger) or (uqDtl.eof) then
              break;

          end;

        end
        else
        begin
          if uqtabelasdecodigo.AsString <> '02' then
          begin
            if ((uqtabelattocodigo.AsInteger <> ttoVenda) and ((uqtabelattecodigo.AsInteger = tteSaida))) then
            begin
              vlTotalTrocaDevo := vlTotalTrocaDevo + uqtabelamestotal.AsCurrency;
            end;
          end;
        end;

        uqtabela.Next;
      end;
      vlTotalBruto := 0;
      vlTotalRefaturado := 0;
      vlTotalAFaturar := 0;
      uqtabela.First;
      while not uqtabela.eof do
      begin

        vlTotalBruto := vlTotalBruto + uqtabelamesvalor.AsCurrency;

        if ((uqtabelatdfcodigo.AsString = tdfMovimentoAFaturar)) and (uqtabelasdecodigo.AsString <> '02') then
        begin
          vlTotalAFaturar := vlTotalAFaturar + uqtabelamesvalor.AsCurrency;
        end;

        if (uqtabelatdfcodigo.AsString = tdfRefaturado) and (uqtabelasdecodigo.AsString <> '02') then
        begin

          vlTotalRefaturado := vlTotalRefaturado + uqtabelamesvalor.AsCurrency - uqtabelamesdesconto.AsCurrency;

        end;

        uqtabela.Next;
      end;

      TotaisDtls.EnableControls;

      { * SQLBaseTotais := '';

        if SQLBaseTotais = '' then
        SQLBaseTotais := Trim(Copy(uqTotais.SQL.Text, 1, Pos('-- Filtros', uqTotais.SQL.Text) + 10));

        vlFiltros := uqtabela.SQL.Text;

        vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

        uqTotais.Close;
        uqTotais.FilterSQL := '';
        uqTotais.SQL.Text := SQLBaseTotais;

        if Copy(vlFiltros, Length(vlFiltros) - 1, 1) = ')' then
        uqTotais.SQL.Add('(' + vlFiltros)
        else
        uqTotais.SQL.Add(vlFiltros);

        if Pos('and ', uqtabela.FilterSQL) > 0 then
        uqTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
        else
        uqTotais.FilterSQL := uqtabela.FilterSQL;

        if uqTotais.Params.FindParam('flacodigo') <> nil then
        uqTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

        uqTotais.Open; }



      // TotaisDtls.EnableControls;

      if adm.FieldByName('clbsuper').AsInteger = 1 then
      begin
        plResumoModalidades.Visible := True;
      end
      else
        plResumoModalidades.Visible := false;

      // vlTotalBruto := vlTotalBruto + vlTotalDesconto + vlTotalCancelado;
      // vlTotalBruto := uqTotaismesvalor.AsFloat;
      // vlTotalDesconto := uqTotaismesdeconto.AsFloat;

      vlTotalLiquido := vlTotalBruto - vlTotalDesconto;

      // vlTotalNF := uqTotaismestotalnf.AsFloat;

      // vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
      // vlTotalServicos := uqTotaismestotalservicos.AsFloat;

      // vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;
      // vlTotalRefaturado := uqTotaismesrfaturado.AsFloat;

      Pltotalvendas.Caption := 'Bruto: ' + FormatFloat('##,###,##0.00', vlTotalBruto { + vlTotalCancelado  - vlTotalRefaturado } );
      Pltotaldescontos.Caption := '(-) Descontos: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
      PltotalDoacao.Caption := '(-) Doações: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

      Pltotalliquido.Caption := '(=) : ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
        (vlTotalTrocaDevo + vlTotalDoacoes + vlTotalCancelado + vlTotalRefaturado + vlTotalAFaturar));

      PlTotalRefaturado.Caption := 'Refaturado: ' + FormatFloat('##,###,##0.00', vlTotalRefaturado);
      PlTotalARefaturar.Caption := 'A Faturar: ' + FormatFloat('##,###,##0.00', vlTotalAFaturar);

      Pltotalnfe.Caption := 'FISCAL: ' + FormatFloat('##,###,##0.00', vlTotalNF);

      PlTotalProdutos.Caption := 'Produtos: ' + FormatFloat('##,###,##0.00', vlTotalProdutos);
      PlTotalServicos.Caption := 'Serviços: ' + FormatFloat('##,###,##0.00', vlTotalServicos);

      if vlTotalRefaturado = 0 then
        PlTotalRefaturado.Visible := false;

      if vlTotalServicos = 0 then
      begin
        PlTotalProdutos.Visible := false;
        PlTotalServicos.Visible := false;
      end;

      if vlTotalCancelado > 0 then
      begin
        PlTotalCancelado.Caption := 'Cancelados: ' + FormatFloat('##,###,##0.00', vlTotalCancelado);
        PlTotalCancelado.Visible := True;
      end
      else
        PlTotalCancelado.Visible := false;

      plTrocaDevol.Caption := '(-) Dev/Vale: ' + FormatFloat('##,###,##0.00', vlTotalTrocaDevo { + vlTotalTroco } );

      TotaisDtls.Filter := 'mdacodigo<>11';
      TotaisDtls.Filtered := True;

      TotaisDtls.IndexFieldNames := 'mdacodigo';
    end;
  finally
    uqtabela.RecNo := registroatual;
    uqtabela.EnableControls;
    dtl.EnableControls;
    TotaisDtls.EnableControls;

    mostracalculototal.Position := 0;
    Application.ProcessMessages;

  end;
end;

procedure Tfrasrv.CalculaTotaisVelho;
var
  vlFiltros: String;

  vlTotalBruto: Double;
  vlTotalDesconto: Double;
  vlTotalLiquido: Double;

  vlTotalProdutos: Double;
  vlTotalServicos: Double;

  vlTotalNF: Double;

  vlTotalCancelado: Double;
  vlRecNo: Integer;

  vlTotalRefaturado: Double;
  vlTotalAFaturar: Double;

  vlTotalTrocaDevo: Double;
  vlTotalDoacoes: Double;

  vlTotalTroco: Double;
begin

  vlTotalTroco := 0;
  vlTotalBruto := 0;
  vlTotalDesconto := 0;
  vlTotalLiquido := 0;

  vlTotalProdutos := 0;
  vlTotalServicos := 0;

  vlTotalRefaturado := 0;
  vlTotalAFaturar := 0;

  vlTotalNF := 0;

  vlTotalCancelado := 0;
  vlTotalTrocaDevo := 0;
  vlTotalDoacoes := 0;

  // inicio dos convenios

  adm.Close;
  adm.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;
  adm.Open;

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlConvenios.SQL.Text, 1, pos('-- Filtros', uqDtlConvenios.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlConvenios.Close;
  uqDtlConvenios.SQL.Text := SQLBaseTotais;
  uqDtlConvenios.SQL.Add(vlFiltros);
  if pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlConvenios.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlConvenios.FilterSQL := uqtabela.FilterSQL;

  if uqDtlConvenios.Params.FindParam('flacodigo') <> nil then
    uqDtlConvenios.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlConvenios.Open;

  // fim dos convenios

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlTotais.SQL.Text, 1, pos('-- Filtros', uqDtlTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlTotais.Close;
  uqDtlTotais.SQL.Text := SQLBaseTotais;
  uqDtlTotais.SQL.Add(vlFiltros);
  if pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlTotais.FilterSQL := uqtabela.FilterSQL;

  if uqDtlTotais.Params.FindParam('flacodigo') <> nil then
    uqDtlTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  // uqDtlTotais.SQL.Add('group by mda.mdaidentificacao');
  // uqDtlTotais.SQL.Add('order by mda.mdaidentificacao');

  uqDtlTotais.Open;

  TotaisDtls.Close;
  TotaisDtls.Clear;
  TotaisDtls.Open;
  TotaisDtls.DisableControls;

  uqDtlConvenios.First;
  while not uqDtlConvenios.eof do
  begin
    if TotaisDtls.Locate('mdacodigo', uqDtlConvenios.FieldByName('mdacodigo').AsInteger, []) then
      TotaisDtls.edit
    else
      TotaisDtls.Append;

    TotaisDtlsmdaidentificacao.AsString := uqDtlConvenios.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlConvenios.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlConvenios.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    uqDtlConvenios.Next;
  end;

  uqDtlTotais.First;
  while not uqDtlTotais.eof do
  begin
    if uqDtlTotais.FieldByName('mdacodigo').AsInteger <> mdaConvenio then
    begin

      if TotaisDtls.Locate('mdacodigo', uqDtlTotais.FieldByName('mdacodigo').AsInteger, []) then
        TotaisDtls.edit
      else
        TotaisDtls.Append;

      TotaisDtlsmdaidentificacao.AsString := uqDtlTotais.FieldByName('mdaidentificacao').AsString;
      TotaisDtlsdtlvalor.AsCurrency := TotaisDtlsdtlvalor.AsCurrency + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;
      TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
      TotaisDtls.Post;

      if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 15) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 17) then
        vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

      if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 11) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 22) or
        (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 33) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 77) then
        vlTotalTroco := vlTotalTroco + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

      if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
      begin
        if uqDtlTotais.FieldByName('sdecodigo').AsString = '00' then
        begin
          vlTotalDoacoes := vlTotalDoacoes + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;
        end;
      end;

    end;
    uqDtlTotais.Next;
  end;

  TotaisDtls.EnableControls;

  if adm.FieldByName('clbsuper').AsInteger = 1 then
  begin
    plResumoModalidades.Visible := True;
  end
  else
    plResumoModalidades.Visible := false;

  // plResumoModalidades.Visible := false;

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqTotais.SQL.Text, 1, pos('-- Filtros', uqTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;

  vlFiltros := Trim(Copy(vlFiltros, pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqTotais.Close;
  uqTotais.FilterSQL := '';
  uqTotais.SQL.Text := SQLBaseTotais;

  if Copy(vlFiltros, Length(vlFiltros) - 1, 1) = ')' then
    uqTotais.SQL.Add('(' + vlFiltros)
  else
    uqTotais.SQL.Add(vlFiltros);

  if pos('and ', uqtabela.FilterSQL) > 0 then
    uqTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqTotais.FilterSQL := uqtabela.FilterSQL;

  if uqTotais.Params.FindParam('flacodigo') <> nil then
    uqTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido := uqTotaismestotal.AsFloat - vlTotalDesconto;

  vlTotalNF := uqTotaismestotalnf.AsFloat;

  vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
  vlTotalServicos := uqTotaismestotalservicos.AsFloat;

  vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;
  vlTotalRefaturado := uqTotaismesrfaturado.AsFloat;

  { vlTotalBruto := 0;
    vlTotalDesconto := 0;
    vlTotalLiquido := 0;

    vlTotalProdutos := 0;
    vlTotalServicos := 0;

    vlTotalRefaturado := 0;
    vlTotalAFaturar := 0;

    vlTotalNF := 0;

    vlTotalCancelado := 0;
    vlTotalTrocaDevo := 0;

    try
    vlRecNo := uqtabela.RecNo;
    uqtabela.DisableControls;

    dtl.DisableControls;
    uqtabela.First;
    while not uqtabela.eof do
    begin
    vlTotalBruto := vlTotalBruto + uqtabelamesvalor.AsCurrency;
    vlTotalDesconto := vlTotalDesconto + uqtabelamesdesconto.AsCurrency;

    vlTotalProdutos := vlTotalProdutos + uqtabelamesprodutos.AsCurrency;
    vlTotalServicos := vlTotalServicos + uqtabelamesservicos.AsCurrency;

    if ((uqtabelatdfcodigo.AsString = '55') or (uqtabelatdfcodigo.AsString = '65')) and (uqtabelatemcodigo.AsInteger = temNFEEmitida) then
    begin
    vlTotalNF := vlTotalNF + uqtabelamestotal.AsCurrency;

    end;

    if (uqtabelatdfcodigo.AsString = 'RF') then
    vlTotalRefaturado := vlTotalRefaturado + uqtabelamestotal.AsCurrency;

    if (uqtabelatdfcodigo.AsString = 'AF') then
    vlTotalAFaturar := vlTotalAFaturar + uqtabelamestotal.AsCurrency;

    if uqtabelasdecodigo.AsString = '02' then
    vlTotalCancelado := vlTotalCancelado + uqtabelamestotal.AsCurrency;

    dtl.Close;
    dtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    dtl.Open;

    dtl.First;
    while not dtl.eof do
    begin
    if (dtlmdacodigo.AsInteger = mdaTrocaDevolucao) or (dtlmdacodigo.AsInteger = mdaDoacao) or (dtlmdacodigo.AsInteger = mdaVale) then
    vlTotalTrocaDevo := vlTotalTrocaDevo + dtldtlvalor.AsCurrency;

    dtl.Next;
    end;

    uqtabela.Next;
    end;
    vlTotalLiquido := vlTotalBruto - vlTotalDesconto;

    finally
    try
    uqtabela.RecNo := vlRecNo;

    except

    uqtabela.First;
    end;
    dtl.EnableControls;
    uqtabela.EnableControls;
    end; }

  Pltotalvendas.Caption := 'Bruto R$: ' + FormatFloat('##,###,##0.00', vlTotalBruto { *+ vlTotalCancelado* } );
  Pltotaldescontos.Caption := '(-) Descontos R$: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
  PltotalDoacao.Caption := '(-) Doações R$: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

  Pltotalliquido.Caption := '(=) Líquido R$: ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
    (vlTotalTrocaDevo + vlTotalRefaturado + vlTotalDoacoes { + vlTotalCancelado } ));
  PlTotalRefaturado.Caption := 'Total Refaturado: ' + FormatFloat('##,###,##0.00', vlTotalRefaturado);

  Pltotalnfe.Caption := 'Total FISCAL: ' + FormatFloat('##,###,##0.00', vlTotalNF);

  PlTotalProdutos.Caption := 'Produtos R$: ' + FormatFloat('##,###,##0.00', vlTotalProdutos);
  PlTotalServicos.Caption := 'Serviços R$: ' + FormatFloat('##,###,##0.00', vlTotalServicos);

  if vlTotalRefaturado = 0 then
    PlTotalRefaturado.Visible := false;

  if vlTotalServicos = 0 then
  begin
    PlTotalProdutos.Visible := false;
    PlTotalServicos.Visible := false;
  end;

  if vlTotalCancelado > 0 then
  begin
    PlTotalCancelado.Caption := 'Total Cancelados: ' + FormatFloat('##,###,##0.00', vlTotalCancelado);
    PlTotalCancelado.Visible := True;
  end
  else
    PlTotalCancelado.Visible := false;

  plTrocaDevol.Caption := '(-) Troca/Dev/Vale: ' + FormatFloat('##,###,##0.00', vlTotalTrocaDevo { + vlTotalTroco } );

  TotaisDtls.Filter := 'mdacodigo<>11';
  TotaisDtls.Filtered := True;

  TotaisDtls.IndexFieldNames := 'mdacodigo';
end;

procedure Tfrasrv.AtualizaTotaisItens;
begin
  plQtdItens.Caption := 'Qt.Itens : ' + uqItmTotaisitmitens.AsString;
  plBrutoItens.Caption := 'Total Bruto: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotal.AsFloat);
  plDescontoItens.Caption := 'Total Desconto: ' + FormatFloat('#,##0.00', uqItmTotaisitmdesconto.AsFloat);
  plLiquidoItens.Caption := 'Total Líquido: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotalliq.AsFloat);
end;

procedure Tfrasrv.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  inherited AtualizaFiltroUQTabela;
  CalculaTotais;

end;

procedure Tfrasrv.btLimpaBuscaClick(Sender: TObject);
begin
  Self.edbusca.Text := '';
  inherited;

end;

procedure Tfrasrv.btOcultaExibeDetalheClick(Sender: TObject);
begin
  inherited;
  if btOcultaExibeDetalhe.Caption = '>' then
  begin
    btOcultaExibeDetalhe.Caption := '<';
    PlItens.Width := 722;
  end
  else
  begin
    btOcultaExibeDetalhe.Caption := '>';
    PlItens.Width := 22;
  end;
end;

procedure Tfrasrv.btOcultaExibeObservacoesClick(Sender: TObject);
begin
  inherited;
  if btOcultaExibeObservacoes.Caption = '-' then
  begin
    PCDetalhes.Height := 2;
    btOcultaExibeObservacoes.Caption := '+';
  end
  else
  begin
    PCDetalhes.Height := 77;
    btOcultaExibeObservacoes.Caption := '-';
  end;

  AjustaAlturaRodaPeGrid;

end;

procedure Tfrasrv.btOcultaExibeTotaisClick(Sender: TObject);
begin
  inherited;
  if btOcultaExibeTotais.Caption = '-' then
  begin
    plDetalhes.Height := 2;
    btOcultaExibeTotais.Caption := '+';
  end
  else
  begin
    plDetalhes.Height := 55;
    btOcultaExibeTotais.Caption := '-';
  end;

  AjustaAlturaRodaPeGrid;

end;

procedure Tfrasrv.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  If Odd(Ditm.DataSet.RecNo) Then
    listaitm.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listaitm.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrasrv.listaobsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  If Odd(Dtom.DataSet.RecNo) Then
    listaobs.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listaobs.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
      font.Style := [fsbold]
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrasrv.mAjustarFilialClick(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin
    dtl.Close;
    dtl.SQL.Text := 'SELECT   mda.mdaidentificacao,  dtl.dtlvalor,  rfm.rfmchave, ';
    dtl.SQL.Add('mes.meschave,  rfi.rfihistorico,  mes.flacodigo,  rfi.rfichave,  mfi.mfichave,');
    dtl.SQL.Add('  mes.mestotal,  dtl.dtlchave, dtl.ltechave, dtl.flacodigo as dtlflacodigo, mlt.mltchave, ');
    dtl.SQL.Add(' rfm.flacodigo as rfmflacodigo, rfi.flacodigo as rfiflacodigo, mfi.flacodigo as mfiflacodigo,');
    dtl.SQL.Add(' lte.flacodigo as lteflacodigo, mlt.flacodigo as mltflacodigo ');
    dtl.SQL.Add('FROM rfm ');
    dtl.SQL.Add('  INNER JOIN mes  ON rfm.meschave = mes.meschave --  and rfm.flacodigo=mes.flacodigo ');
    dtl.SQL.Add('  INNER JOIN rfi  ON rfm.rfichave = rfi.rfichave --  and rfi.flacodigo=mes.flacodigo ');
    dtl.SQL.Add('  INNER JOIN mfi  ON mfi.rfichave = rfi.rfichave  -- and mfi.flacodigo=mes.flacodigo ');
    dtl.SQL.Add('  LEFT JOIN mlt  ON mlt.mfichave = mfi.mfichave ');
    dtl.SQL.Add('  LEFT JOIN dtl  ON dtl.ltechave = mlt.ltechave ');
    dtl.SQL.Add('  LEFT JOIN mda  ON dtl.mdacodigo = mda.mdacodigo ');
    dtl.SQL.Add('  LEFT JOIN lte  ON mlt.ltechave = lte.ltechave ');
    dtl.SQL.Add('WHERE rfi.tfdcodigo IN (2, 32) ');
    dtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    dtl.SQL.Add('AND mes.meschave = :meschave and mes.flacodigo=:flacodigo ');
    dtl.SQL.Add(' ');
    dtl.SQL.Add('-- GROUP BY dtl.dtlchave');
    dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    dtl.ParamByName('flacodigo').AsInteger := uqtabelaflacodigo.AsInteger;
    dtl.Open;

    dtl.First;
    while not dtl.eof do
    begin

      if dtl.FieldByName('ltechave').AsString <> '' then
      begin
        try
          consulta.Close;
          consulta.SQL.Text := 'update dtl set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where dtlchave=' +
            dtl.FieldByName('dtlchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try
          consulta.Close;
          consulta.SQL.Text := 'update rfm set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where rfmchave=' +
            dtl.FieldByName('rfmchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mfi set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where mfichave=' +
            dtl.FieldByName('mfichave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update lte set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where ltechave=' +
            dtl.FieldByName('ltechave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mlt set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where mltchave=' +
            dtl.FieldByName('mltchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mor set flacodigo=' + uqtabela.FieldByName('flacodigo').AsString + ' where meschave=' +
            uqtabela.FieldByName('meschave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update itm set flacodigo=' + uqtabela.FieldByName('flacodigo').AsString + ' where meschave=' +
            uqtabela.FieldByName('meschave').AsString;
          consulta.ExecSQL;
        except

        end;

      end;
      dtl.Next;
    end;

    mfirfi.Close;
    mfirfi.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    mfirfi.Open;
    while not mfirfi.eof do
    begin
      try
        consulta.Close;
        consulta.SQL.Text := 'update mfi set flacodigo=' + uqtabelaflacodigo.AsString + ' where mfichave=' + mfirfi.FieldByName('mfichave').AsString;
        consulta.ExecSQL;
      except

      end;
      mfirfi.Next;
    end;

    uqtabela.Next;
  end;
  ShowMessage('Ajuste realizado com sucesso!');

  dtl.Close;
  dtl.SQL.Text := 'SELECT   mda.mdaidentificacao,  dtl.dtlvalor,  rfm.rfmchave, ';
  dtl.SQL.Add('mes.meschave,  rfi.rfihistorico,  mes.flacodigo,  rfi.rfichave,  mfi.mfichave,');
  dtl.SQL.Add('  mes.mestotal,  dtl.dtlchave, dtl.ltechave, dtl.flacodigo as dtlflacodigo, mlt.mltchave, ');
  dtl.SQL.Add(' rfm.flacodigo as rfmflacodigo, rfi.flacodigo as rfiflacodigo, mfi.flacodigo as mfiflacodigo,');
  dtl.SQL.Add(' lte.flacodigo as lteflacodigo , mlt.flacodigo as mltflacodigo ');
  dtl.SQL.Add('FROM rfm ');
  dtl.SQL.Add('  INNER JOIN mes  ON rfm.meschave = mes.meschave   and rfm.flacodigo=mes.flacodigo ');
  dtl.SQL.Add('  INNER JOIN rfi  ON rfm.rfichave = rfi.rfichave   and rfi.flacodigo=mes.flacodigo ');
  dtl.SQL.Add('  INNER JOIN mfi  ON mfi.rfichave = rfi.rfichave  and mfi.flacodigo=mes.flacodigo ');
  dtl.SQL.Add('  LEFT JOIN mlt  ON mlt.mfichave = mfi.mfichave ');
  dtl.SQL.Add('  INNER JOIN dtl  ON dtl.ltechave = mlt.ltechave ');
  dtl.SQL.Add('  LEFT JOIN mda  ON dtl.mdacodigo = mda.mdacodigo ');
  dtl.SQL.Add('  LEFT JOIN lte  ON mlt.ltechave = lte.ltechave ');
  dtl.SQL.Add('WHERE rfi.tfdcodigo IN (2, 32) ');
  dtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
  dtl.SQL.Add('AND mes.meschave = :meschave and mes.flacodigo=:flacodigo ');
  dtl.SQL.Add(' ');
  dtl.SQL.Add('   GROUP BY dtl.mdacodigo');
  dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  dtl.ParamByName('flacodigo').AsInteger := uqtabelaflacodigo.AsInteger;
  dtl.Open;

  dtl.First;

end;

procedure Tfrasrv.mnAjustarRegimetributarioClick(Sender: TObject);
begin
  inherited;
  {
    REGIME LUCRO PRESUMIDO

    Vamos fazer algumas alterações tanto nas entradas dos produtos como na saída.

    - Na Compra de mercadoria (ENTRADA DE MERCADORIA) separar os CFOP quando a empresa Dupe comprar com CFOP 5.102 (entrada 1.102) a venda de mercadoria sairá com CFOP 5102.

    - CST - ICMS = 090 - OUTROS

    - Na Compra de mercadoria (ENTRADA DE MERCADORIA) separar os CFOP quando a empresa Dupe comprar com CFOP 5.403 ou 5.405 (entrada 1.403 - 1.405) a venda de mercadoria sairá com CFOP 5.405.

    - CST - ICMS = 060 - ICMS COBRADO ANTERIORMENTE POR SUBSTITUIÇÃO TRIBUTARIA





  }

  uqtabela.First;
  while not uqtabela.eof do
  begin
    itm.First;
    while not itm.eof do
    begin
      pro.Close;
      pro.ParamByName('procodigo').AsString := itmprocodigo.AsString;
      pro.Open;

      if procstcodigo.AsString = '090' then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.102') + ', toecodigo=' +
          uqtabelatoecodigo.AsString + ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

      end;

      if procstcodigo.AsString = '060' then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.405') + ', toecodigo=' +
          uqtabelatoecodigo.AsString + ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.405') + ', toecodigo=' +
          uqtabelatoecodigo.AsString + ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

      end;

      itm.Next;
    end;
    uqtabela.Next;
  end;
end;

procedure Tfrasrv.Convertexmltocsv(vOriAarquivo, vDesAarquivo: string);

const
  xlCSV = $00000006;
var
  xls, xlw: Variant;
begin
  try
    xls := GetActiveOleObject('Excel.Application');
  except
    xls := CreateOleObject('Excel.Application');
  end;
  xls.DisplayAlerts := false;
  xlw := xls.WorkBooks.Open(Format(vOriAarquivo, [ExtractFileDir(ParamStr(0))]));
  xlw.SaveAs(Format(vDesAarquivo, [ExtractFileDir(ParamStr(0))]), xlCSV);
  xlw.Close;
  xlw := UnAssigned;
  xls.Quit;
  xls := UnAssigned;
end;

procedure Tfrasrv.mnLayout001Click(Sender: TObject);
var
  vlNomeArquivo: string;
  vlTextoArquivo: TStringList;
  i: Integer;
  linha: string;
  Text: string;

  vlEtdCodigo, vletdidentificacao, vletdapelido, vletddeletar, vltpecodigo, vletddatacad, vletddataalt, vletddoc1, vltsecodigo, vletdcarga, vletdativo,
    vletddescsituacao, vletdsped, vletdobs, vletdsuframa, vltcbcodigo, vletdnfemodelos, vlgrtcodigo, vlatvcodigo, vletdpedidoobrigatorio, vletdregime: string;

  vledrcodigo, vltedcodigo,
  // vletdcodigo,
  vledrrua, vledrnumero, vledrcxpostal, vledrcomple, vledrbairro, vlcddcodigo, vledrinscest, vledrcep, vledrinsestst, vlufscodigo, vledrobs, vledrinscmun,
    vlEdrItem, vlsipcodigo: string;

  vletfcodigo,
  // vletdcodigo,
  vlttfcodigo, vletftelefone, vletfcontato: string;

  vletecodigo,
  // vletdcodigo,
  vleteemail, vletecontato, vletedepartamento, vleteenvianfe: string;

  // Campo Novo Do Parecis;Mato Grosso;26873;Monkey Group Food;ALESSANDRO ZARZENON PEREIRA;34.836.522/0001-40;Rua paraná;0;78360-000;Centro;zarzenonvirtual@hotmail.com;(65) 99947-2670;115,29
  // Cidade;Estado;ID Restaurante;Restaurante;Razão Social;CNPJ;Logradouro;Número;CEP;Bairro;Email;Telefones;Valor
  vlCidade, vlEstado, vlIDRestaurante, vlRestaurante, vlRazaoSocial, vlCNPJ, vlLogradouro, vlNumero, vlCEP, vlBairro, vlEmail, vlTelefones, vlValor: string;

  vlMesChave: string;
  vlNumeronfsv: Integer;
  vlnovoarq: string;

begin
  inherited;
  cdd.Close;
  cdd.Open;

  ufs.Close;
  ufs.Open;

  spd.Close;
  spd.Open;

  toe001.Close;
  toe001.Open;

  pro001.Close;
  pro001.Open;

  vlTextoArquivo := TStringList.Create;
  OpenDialog1.DefaultExt := '*.csv;*.xlsx';
  OpenDialog1.Filter := 'Arquivos CSV (*.CSV)|*.CSV';
  OpenDialog1.Execute;
  vlNomeArquivo := OpenDialog1.FileName;

  if pos('xlsx', vlNomeArquivo) > 0 then
  begin
    vlnovoarq := ChangeFileExt(vlNomeArquivo, '.csv');
    Convertexmltocsv(vlNomeArquivo, vlnovoarq);

  end
  else
  begin
    vlnovoarq := vlNomeArquivo;
  end;

  vlTextoArquivo.LoadFromFile(vlnovoarq);

  for i := 1 to vlTextoArquivo.count - 1 do
  begin
    vlValor := '';

    linha := vlTextoArquivo.Strings[i];

    vlCidade := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    cdd.Locate('cddnome', vlCidade, [locaseinsensitive]);
    vlCidade := cdd.FieldByName('cddcodigo').AsString;

    vlEstado := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    ufs.Locate('ufsnome', vlEstado, [locaseinsensitive]);
    vlEstado := cdd.FieldByName('ufscodigo').AsString;

    vlIDRestaurante := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlRestaurante := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlRazaoSocial := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlCNPJ := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlLogradouro := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlNumero := uppercase(Copy(linha, 1, pos(';', linha) - 1));

    vlNumero := sonumeros(vlNumero);
    if vlNumero = '' then
      vlNumero := '0';

    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlCEP := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlBairro := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlEmail := uppercase(Copy(linha, 1, pos(';', linha) - 1));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    vlTelefones := sonumeros(uppercase(Copy(linha, 1, pos(';', linha) - 1)));
    linha := Copy(linha, pos(';', linha) + 1, Length(linha));

    if pos(';', linha) > 0 then
    begin

      vlValor := uppercase(Copy(linha, 1, pos(';', linha) - 1));
      linha := Copy(linha, pos(';', linha) + 1, Length(linha));
    end
    else
    begin
      vlValor := linha;
    end;

    vlValor := StringReplace(vlValor, '.', '', []);

    if pos('-', vlValor) = 0 then
    begin

      etd001.Close;
      etd001.ParamByName('etddoc1').AsString := vlCNPJ;
      etd001.Open;

      if etd001.IsEmpty then
        etd001.Append
      else
        etd001.edit;

      etd001.FieldByName('etdidentificacao').AsString := vlRazaoSocial;
      etd001.FieldByName('etdapelido').AsString := vlRestaurante;
      etd001.FieldByName('tpecodigo').AsString := '2';
      etd001.FieldByName('etddatacad').AsString := hoje(Application, zcone);
      etd001.FieldByName('etddataalt').AsString := hoje(Application, zcone);
      etd001.FieldByName('etddoc1').AsString := vlCNPJ;
      etd001.FieldByName('tsecodigo').AsString := '0';
      etd001.FieldByName('etdcarga').AsString := '1';
      etd001.FieldByName('etdativo').AsString := '1';
      etd001.FieldByName('etddescsituacao').AsString := '';
      etd001.FieldByName('etdsped').AsString := '0';
      etd001.FieldByName('etddeletar').AsString := '0';
      etd001.FieldByName('etdobs').AsString := '';
      etd001.FieldByName('tcbcodigo').AsString := '2';
      etd001.FieldByName('etdnfemodelos').AsString := '99';
      etd001.FieldByName('grtcodigo').AsString := '1';
      etd001.FieldByName('atvcodigo').AsString := '3';
      etd001.FieldByName('etdpedidoobrigatorio').AsString := '0';
      etd001.FieldByName('etdregime').AsString := '1';

      etd001.Post;

      vlEtdCodigo := etd001.FieldByName('etdcodigo').AsString;

      etv001.Close;
      etv001.ParamByName('etdcodigo').AsString := vlEtdCodigo;
      etv001.Open;

      if etv001.IsEmpty then
        etv001.Append
      else
        etv001.edit;

      etv001.FieldByName('etdcodigo').AsString := vlEtdCodigo;
      etv001.FieldByName('tvicodigo').AsString := '1';
      etv001.FieldByName('pcgcodigo').AsString := '';
      etv001.Post;

      edr001.Close;
      edr001.ParamByName('etdcodigo').AsString := vlEtdCodigo;
      edr001.Open;

      if edr001.IsEmpty then
        edr001.Append
      else
        edr001.edit;

      edr001.FieldByName('tedcodigo').AsString := '1';
      edr001.FieldByName('etdcodigo').AsString := vlEtdCodigo;
      edr001.FieldByName('edrrua').AsString := vlLogradouro;
      edr001.FieldByName('edrnumero').AsString := vlNumero;
      edr001.FieldByName('edrbairro').AsString := vlBairro;
      edr001.FieldByName('cddcodigo').AsString := vlCidade;
      edr001.FieldByName('edrinscest').AsString := 'ISENTO';
      edr001.FieldByName('edrcep').AsString := vlCEP;
      edr001.FieldByName('ufscodigo').AsString := vlEstado;
      edr001.FieldByName('edrinscmun').AsString := 'FALTA CAMPO NA LISTA';
      edr001.FieldByName('edritem').AsString := '1';
      edr001.FieldByName('sipcodigo').AsString := '1';

      edr001.Post;

      etf001.Close;
      etf001.ParamByName('etdcodigo').AsString := vlEtdCodigo;
      etf001.Open;

      if etf001.IsEmpty then
        etf001.Append
      else
        etf001.edit;

      etf001.FieldByName('etdcodigo').AsString := vlEtdCodigo;
      etf001.FieldByName('ttfcodigo').AsString := '1';
      etf001.FieldByName('etftelefone').AsString := vlTelefones;
      etf001.FieldByName('etfcontato').AsString := vlRestaurante;
      etf001.FieldByName('etfdepartamento').AsString := 'FINANCEIRO';

      etf001.Post;

      ete001.Close;
      ete001.ParamByName('etdcodigo').AsString := vlEtdCodigo;
      ete001.Open;

      if ete001.IsEmpty then
        ete001.Append
      else
        ete001.edit;

      ete001.FieldByName('etdcodigo').AsString := vlEtdCodigo;
      ete001.FieldByName('eteemail').AsString := lowercase(vlEmail);
      ete001.FieldByName('etecontato').AsString := vlRestaurante;
      ete001.FieldByName('etedepartamento').AsString := 'FINANCEIRO';
      ete001.FieldByName('eteenvianfe').AsString := '1';

      ete001.Post;

      mes001.Close;
      mes001.ParamByName('etdcodigo').AsString := vlEtdCodigo;
      mes001.ParamByName('mes').AsInteger := monthof(spd.FieldByName('spddatabalanco').AsFloat);
      mes001.ParamByName('ano').AsInteger := yearof(spd.FieldByName('spddatabalanco').AsFloat);
      mes001.ParamByName('valor').AsFloat := strtofloat(vlValor);
      mes001.Open;

      if mes001.IsEmpty then
      begin
        mes001.Append;
        vlNumeronfsv := 0;

        mes001.FieldByName('etdcodigo').AsString := vlEtdCodigo;
        mes001.FieldByName('mesemissao').AsString := spd.FieldByName('spddatabalanco').AsString;
        mes001.FieldByName('mesregistro').AsString := hoje(Application, zcone);
        mes001.FieldByName('tdfcodigo').AsString := 'NS';
        mes001.FieldByName('sdecodigo').AsString := '00';
        mes001.FieldByName('messerie').AsString := 'NFSE';

        if mes001.State = dsinsert then
        begin
          mes001.FieldByName('mesnumero').AsInteger := vlNumeronfsv;
        end;
        mes001.FieldByName('meschavenfe').AsString := '';
        mes001.FieldByName('toecodigo').AsString := toe001.FieldByName('toecodigo').AsString;

        if mes001.State = dsedit then
          mes001.FieldByName('mesvalor').AsFloat := mes001.FieldByName('mesvalor').AsFloat + strtofloat(vlValor)
        else
          mes001.FieldByName('mesvalor').AsString := vlValor;

        mes001.FieldByName('mesdesconto').AsString := '0';
        mes001.FieldByName('mesprodutos').AsString := '0';

        if mes001.State = dsedit then
          mes001.FieldByName('messervicos').AsFloat := mes001.FieldByName('mesvalor').AsFloat + strtofloat(vlValor)
        else
          mes001.FieldByName('messervicos').AsString := vlValor;

        mes001.FieldByName('messervicos').AsString := mes001.FieldByName('mesvalor').AsString;
        mes001.FieldByName('mestotal').AsString := mes001.FieldByName('mesvalor').AsString;
        mes001.FieldByName('tfpcodigo').AsString := '0';
        mes001.FieldByName('refcodigo').AsString := '9';
        mes001.FieldByName('trfcodigo').AsString := '9';
        mes001.FieldByName('mesfrete').AsString := '0';
        mes001.FieldByName('messeguro').AsString := '0';
        mes001.FieldByName('mesoutras').AsString := '0';
        mes001.FieldByName('mesbicm').AsString := '0';
        mes001.FieldByName('mesicm').AsString := '0';
        mes001.FieldByName('mesbicms').AsString := '0';
        mes001.FieldByName('mesicms').AsString := '0';
        mes001.FieldByName('mesipi').AsString := '0';
        mes001.FieldByName('mespis').AsString := '0';
        mes001.FieldByName('mescofins').AsString := '0';
        mes001.FieldByName('mespiss').AsString := '0';
        mes001.FieldByName('mescofinss').AsString := '0';
        mes001.FieldByName('mesretirou').AsString := '';
        mes001.FieldByName('clbcodigo').AsString := Acesso.Usuario.ToString;
        mes001.FieldByName('trmcodigo').AsString := Acesso.Terminal.ToString;
        mes001.FieldByName('mesacrescimo').AsString := '0';
        mes001.FieldByName('mesemitente').AsString := '0';
        mes001.FieldByName('mesprotocolo').AsString := '';
        mes001.FieldByName('mesdatanfe').AsString := '';
        mes001.FieldByName('messped').AsString := '0';
        mes001.FieldByName('temcodigo').AsString := '3';
        mes001.FieldByName('mesobs').AsString := '';
        mes001.FieldByName('edritem').AsString := '1';
        mes001.FieldByName('mescoocupom').AsString := '';
        mes001.FieldByName('mesccfcupom').AsString := '';
        mes001.FieldByName('mesdatacupom').AsString := '';
        mes001.FieldByName('tdecodigo').AsString := '0';
        mes001.FieldByName('mesinclusao').AsString := agora(Application, zcone);
        mes001.FieldByName('clbvendedor').AsString := Acesso.Usuario.ToString;
        mes001.FieldByName('meschaverecla').AsString := '';
        mes001.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
        mes001.FieldByName('mesreclassicacao').AsString := '0';
        mes001.FieldByName('mestipocomissao').AsString := '0';
        mes001.FieldByName('mesoutroscustos').AsString := '0';
        mes001.FieldByName('mesrefeicao').AsString := '0';
        mes001.FieldByName('fopcodigo').AsString := '1';
        mes001.FieldByName('mesretorno').AsString := '0';
        mes001.FieldByName('mesliberadoentrega').AsString := '0';
        mes001.FieldByName('mescomplementanota').AsString := '0';
        mes001.FieldByName('mescomplementapor').AsString := '0';
        mes001.FieldByName('mescomplementadapor').AsString := '0';
        mes001.FieldByName('ccxmes').AsString := '0';
        mes001.FieldByName('ccxano').AsString := '0';
        mes001.FieldByName('ccxchave').AsString := '0';
        mes001.FieldByName('mesnumeropedido').AsString := '0';
        mes001.FieldByName('meshoranfe').AsString := '';
        mes001.FieldByName('mestelefone').AsString := vlTelefones;
        mes001.FieldByName('mespararevenda').AsString := '0';
        mes001.FieldByName('mesretirabalcao').AsString := '0';
        mes001.FieldByName('clbcodigoent').AsString := Acesso.Usuario.ToString;
        mes001.FieldByName('mescodigonota').AsString := '0';
        mes001.FieldByName('mesfilialpedido').AsString := '0';
        mes001.Post;

        { consulta.Close;
          consulta.SQL.Text := 'update cfgmnfe set cfgnumeronfsv=' + IntToStr(vlNumeronfsv) + ' where cfgcodigo=' + Acesso.Filial.ToString;
          consulta.ExecSQL; }

        cfg.Close;
        cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        cfg.Open;

        vlMesChave := mes001.FieldByName('meschave').AsString;

        itm001.Close;
        itm001.ParamByName('meschave').AsString := vlMesChave;
        itm001.Open;

        if itm001.IsEmpty then
        begin
          itm001.Append;

          itm001.FieldByName('meschave').AsString := vlMesChave;
          itm001.FieldByName('itmitem').AsString := '1';
          itm001.FieldByName('procodigo').AsString := pro001.FieldByName('procodigo').AsString;
          itm001.FieldByName('cstcodigo').AsString := '900';
          itm001.FieldByName('itmdesccomple').AsString := '';
          itm001.FieldByName('itmquantidade').AsString := '1';
          itm001.FieldByName('itmvalor').AsString := mes001.FieldByName('mesvalor').AsString;
          itm001.FieldByName('itmdesconto').AsString := '0';
          itm001.FieldByName('itmmovifisico').AsString := '0';
          itm001.FieldByName('toecodigo').AsString := toe001.FieldByName('toecodigo').AsString;
          itm001.FieldByName('cfocfop').AsString := toe001.FieldByName('cfocfop').AsString;
          itm001.FieldByName('icmcodigo').AsString := '0';
          itm001.FieldByName('itmbicm').AsString := '0';
          itm001.FieldByName('itmaliqicm').AsString := '0';
          itm001.FieldByName('itmicm').AsString := '0';
          itm001.FieldByName('itmbicms').AsString := '0';
          itm001.FieldByName('itmaliqicms').AsString := '0';
          itm001.FieldByName('itmicms').AsString := '0';
          itm001.FieldByName('itmapuipi').AsString := '0';
          itm001.FieldByName('csicodigo').AsString := '99';
          itm001.FieldByName('ceicodigo').AsString := '0';
          itm001.FieldByName('itmbipi').AsString := '0';
          itm001.FieldByName('itmaliqipi').AsString := '0';
          itm001.FieldByName('itmipi').AsString := '0';
          itm001.FieldByName('cspcodigo').AsString := '99';
          itm001.FieldByName('itmbpis').AsString := '0';
          itm001.FieldByName('itmaliqpis').AsString := '0';
          itm001.FieldByName('itmquantpis').AsString := '0';
          itm001.FieldByName('itmaliqpisvalor').AsString := '0';
          itm001.FieldByName('itmpis').AsString := '0';
          itm001.FieldByName('csfcodigo').AsString := '99';
          itm001.FieldByName('itmbcofins').AsString := '0';
          itm001.FieldByName('itmaliqcofins').AsString := '0';
          itm001.FieldByName('itmquantcofins').AsString := '0';
          itm001.FieldByName('itmaliqcofinsvalor').AsString := '0';
          itm001.FieldByName('itmcofins').AsString := '0';
          itm001.FieldByName('pcccodigo').AsString := '';
          itm001.FieldByName('itmtotal').AsString := vlValor;
          itm001.FieldByName('unicodigo').AsString := pro001.FieldByName('unicodigo').AsString;
          itm001.FieldByName('itmicmsvalor').AsString := '0';
          itm001.FieldByName('puncodigo').AsString := pro001.FieldByName('puncodigo').AsString;
          itm001.FieldByName('procodigoori').AsString := '';
          itm001.FieldByName('pronomeori').AsString := '';
          itm001.FieldByName('progtin').AsString := '';
          itm001.FieldByName('itmcontendo').AsString := '1';
          itm001.FieldByName('cfocfopdestinacao').AsString := toe001.FieldByName('cfocfop').AsString;
          itm001.FieldByName('unicodigobase').AsString := pro001.FieldByName('unicodigo').AsString;
          itm001.FieldByName('itmcusto').AsString := '0';
          itm001.FieldByName('itmtipodesc').AsString := '';
          itm001.FieldByName('itmfrete').AsString := '0';
          itm001.FieldByName('itmseguro').AsString := '0';
          itm001.FieldByName('itmoutras').AsString := '0';
          itm001.FieldByName('itmsped').AsString := '0';
          itm001.FieldByName('itmpercdesc').AsString := '0';
          itm001.FieldByName('itmvlribpt').AsString := '0';
          itm001.FieldByName('itmproservico').AsString := vlValor;
          itm001.FieldByName('itminfadprod').AsString := '';
          itm001.FieldByName('itmquanticontada').AsString := '0';
          itm001.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
          itm001.FieldByName('tdfcodigo').AsString := 'NS';
          itm001.FieldByName('itmtipocomissao').AsString := '0';
          itm001.FieldByName('itmoutroscustos').AsString := '0';
          itm001.FieldByName('itochave').AsString := '0';
          itm001.FieldByName('itmpercreducaobaseicm').AsString := '0';
          itm001.FieldByName('pmpchave').AsString := '';
          itm001.FieldByName('itmitempedido').AsString := '';
          itm001.FieldByName('itmcest').AsString := '';
          itm001.FieldByName('itmmva').AsString := '';
          itm001.FieldByName('pcocodigo').AsString := '';
          itm001.FieldByName('itmpercentualcombo').AsString := '100';
          itm001.FieldByName('itmbasefcpicm').AsString := '0';
          itm001.FieldByName('itmpercfcpicm').AsString := '0';
          itm001.FieldByName('itmvalofcpicm').AsString := '0';
          itm001.FieldByName('itmbasefcpicmst').AsString := '0';
          itm001.FieldByName('itmpercfcpicmst').AsString := '0';
          itm001.FieldByName('itmvalofcpicmst').AsString := '0';
        end
        else
        begin
          itm001.edit;
          itm001.FieldByName('itmvalor').AsString := mes001.FieldByName('mesvalor').AsString;
          itm001.FieldByName('itmtotal').AsString := mes001.FieldByName('mesvalor').AsString;
          itm001.FieldByName('itmproservico').AsString := mes001.FieldByName('mesvalor').AsString;
        end;

        itm001.Post;
      end;
    end;
  end;

  ShowMessage('importações realizada com sucesso!');

end;

procedure Tfrasrv.mnMarcarcomoReclassificacaoClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update mes set mesreclassicacao=9 where meschave=' + uqtabelameschave.AsString;
  consulta.ExecSQL;
  Self.ActAtualizar.Execute;

end;

end.
