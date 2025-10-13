unit uFprinciAte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBAccess, Uni, Data.DB, Vcl.Menus, Midaslib, MemData,
  System.Actions, Vcl.ActnList, MemDS, Vcl.ExtCtrls, UniProvider,
  MySQLUniProvider, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Themes, Vcl.DBCtrls, Vcl.Imaging.pngimage, System.Math,
  System.IniFiles, System.TypInfo, uFuncoes, uPegaBase, jpeg, DASQLMonitor, UniSQLMonitor,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, System.DateUtils;

type
  TPanel = Class(Vcl.ExtCtrls.TPanel)
  protected
    procedure Paint; override;
  End;

type
  TGroupBox = class(Vcl.StdCtrls.TGroupBox)
    // declare this before of your form definitiondirei
  public
    procedure Paint; override;
  end;

type
  TFprinciAte = class(TForm)
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    plInfoTopo: TPanel;
    GBorcchave: TGroupBox;
    orchave: TDBText;
    GBdescmax: TGroupBox;
    ldescmaximo: TLabel;
    GBqtditens: TGroupBox;
    lbitenslancados: TLabel;
    GroupBox3: TGroupBox;
    lbip: TLabel;
    GroupBox7: TGroupBox;
    GroupBox13: TGroupBox;
    lbdados: TLabel;
    GBTerminal: TGroupBox;
    lterminal: TLabel;
    relogio: TTimer;
    trm: TUniQuery;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    cfg: TUniQuery;
    Dlito: TUniDataSource;
    lito: TUniQuery;
    litoitoitem: TIntegerField;
    litoprocodigo: TIntegerField;
    litopronome: TStringField;
    litoitoquantidade: TFloatField;
    litoitovalor: TFloatField;
    litoitototal: TFloatField;
    litoitodesconto: TFloatField;
    litoitosaldo: TFloatField;
    litoprosaldodisp: TFloatField;
    litoitochave: TIntegerField;
    litounisimbolo: TStringField;
    litounicodigo: TIntegerField;
    litoorcchave: TIntegerField;
    litotdecodigo: TIntegerField;
    litoproreferencia: TStringField;
    litoitoproservico: TStringField;
    litoitoinfadprod: TStringField;
    litotpocodigo: TIntegerField;
    litoitoprocomple: TStringField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbdescmaximo: TFloatField;
    clbclbsenha: TStringField;
    clbclbativo: TStringField;
    clbclbidentificacao: TStringField;
    plTopo: TPanel;
    imaconexao5: TImage;
    plEsquerda: TPanel;
    plRodaPe: TPanel;
    plAgora: TPanel;
    ldia: TLabel;
    lreglogio: TLabel;
    lcolaborador: TLabel;
    PCPaginas: TPageControl;
    acoes: TActionList;
    ActClientes: TAction;
    ActProdutos: TAction;
    ActAFaturar: TAction;
    MenuFuncao: TPopupMenu;
    mLocalizaClients: TMenuItem;
    mLocalizaProduto: TMenuItem;
    mConsultaPreco: TMenuItem;
    N3: TMenuItem;
    mAjustaQuantidade: TMenuItem;
    AjustaPreo1: TMenuItem;
    mPrecoaVista: TMenuItem;
    mPrecoaPrazo: TMenuItem;
    N1: TMenuItem;
    mFinalizaAtendimento: TMenuItem;
    mAFaturar: TMenuItem;
    N4: TMenuItem;
    mngerador: TMenuItem;
    bcalculadora: TMenuItem;
    N2: TMenuItem;
    GBBusca: TGroupBox;
    GBUtilitarios: TGroupBox;
    GBSalvar: TGroupBox;
    orc: TUniQuery;
    orcorcchave: TIntegerField;
    orcetdcodigo: TIntegerField;
    orcclbcodigo: TIntegerField;
    orcfopcodigo: TIntegerField;
    orctdecodigo: TIntegerField;
    orcstocodigo: TIntegerField;
    orcmoccodigo: TIntegerField;
    orcorcdataabert: TDateField;
    orcorchoraabert: TTimeField;
    orcorcdataencerr: TDateField;
    orcorcgeralav: TFloatField;
    orcorcgeralap: TFloatField;
    orcorcdescontoav: TFloatField;
    orcorcdescontoap: TFloatField;
    orcorctotalav: TFloatField;
    orcorctotalap: TFloatField;
    orcorcobs: TStringField;
    orcorcdestimpre: TIntegerField;
    orcorcnome: TStringField;
    orcorcendereco: TStringField;
    orcorctelefone: TStringField;
    orcorcdescrpagto: TStringField;
    orcorcextenso: TStringField;
    orcorcnomeretirou: TStringField;
    orctfpcodigo: TIntegerField;
    orcorcpercdescav: TFloatField;

    orctrmcodigo: TIntegerField;
    orcpuocodigo: TIntegerField;
    orcedritem: TIntegerField;
    orcedrcodigo: TIntegerField;
    Dorc: TUniDataSource;
    ito: TUniQuery;
    itoitochave: TIntegerField;
    itoorcchave: TIntegerField;
    itoprocodigo: TIntegerField;
    itoitoquantidade: TFloatField;
    itoitovalorav: TFloatField;
    itoitototalav: TFloatField;
    itoitodescontoav: TFloatField;
    itoitosaldoav: TFloatField;
    itoitovalorap: TFloatField;
    itoitototalap: TFloatField;
    itoitodescontoap: TFloatField;
    itoitosaldoap: TFloatField;
    itounicodigo: TIntegerField;
    itopuncodigo: TIntegerField;
    itoitocontendo: TFloatField;
    itotdecodigo: TIntegerField;
    itostocodigo: TIntegerField;
    itoitoitem: TIntegerField;
    itoitopercdescav: TFloatField;
    itoitopercdescap: TFloatField;
    itoitoproservico: TStringField;
    itoitoinfadprod: TStringField;
    itoitoprocomple: TStringField;
    zPCalcDescAP: TUniSQL;
    zPCalcDescAV: TUniSQL;
    ActCancelaItem: TAction;
    ActLimpaAtendimento: TAction;
    consulta: TUniQuery;
    ActDescontoItem: TAction;
    ActDescontoGeral: TAction;
    ActSair: TAction;
    ActFinalizaVenda: TAction;
    qpro: TUniQuery;
    qproprocodigo: TIntegerField;
    qpropronome: TStringField;
    qprounisimbolo: TStringField;
    qpropunbarra: TStringField;
    qpropunprecoav: TFloatField;
    qpropunprecoap: TFloatField;
    qproprosaldodisp: TFloatField;
    qprounicodigo: TIntegerField;
    qprouninome: TStringField;
    qpropuncodigo: TIntegerField;
    qpropunidentificacao: TStringField;
    qprotpocodigo: TIntegerField;
    qpropunmultiplicador: TFloatField;
    qprosipcodigo: TIntegerField;
    qpropropedecomple: TIntegerField;
    qProSaldo: TUniQuery;
    qProSaldoprocodigo: TIntegerField;
    qProSaldoprosaldodisp: TFloatField;
    qProSaldopunmultiplicador: TFloatField;
    qProSaldoproestoque: TStringField;
    Detd: TUniDataSource;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrbairro: TStringField;
    etdetftelefone: TStringField;
    etdtsecodigo: TIntegerField;
    etdetddoc1: TStringField;
    etdedrinscest: TStringField;
    etdedritem: TIntegerField;
    etdtedidentificacao: TStringField;
    Lidentificacao: TLabel;
    ioc: TUniQuery;
    iocclbcodigo: TIntegerField;
    iocitochave: TIntegerField;
    iociocpercentual: TFloatField;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificacao: TStringField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcfgusasrv: TIntegerField;
    cfgcfgpedeoperador: TIntegerField;
    cfgcfgtipocomissao: TIntegerField;
    cfgcfgpercomismed: TIntegerField;
    cfgcfgusamultiplicador: TIntegerField;
    cfgcfgidentificaequip: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgusaveiculo: TIntegerField;
    cfgcfgcontrolaestoquedisp: TIntegerField;
    cfgcfgpedeclientevenda: TIntegerField;
    cfgetdapelido: TStringField;
    cfgcfgusanfc: TIntegerField;
    trmtciporta: TStringField;
    trmecfcodigo: TIntegerField;
    trmtipcodigo: TIntegerField;
    cfgcfgusapdv: TIntegerField;
    act: TUniQuery;
    actactcodigo: TIntegerField;
    lbNomeEmpresa: TLabel;
    ccx: TUniQuery;
    ccxccxchave: TIntegerField;
    ccxclbcodigo: TIntegerField;
    ccxctacodigo: TIntegerField;
    ccxccxturno: TIntegerField;
    ccxccxdataber: TDateField;
    ccxccxhoraaber: TTimeField;
    ccxccxsaldoaber: TFloatField;
    ccxccxdatafecha: TDateField;
    ccxccxhorafecha: TTimeField;
    ccxccxsaldofecha: TFloatField;
    ccxccxsangrias: TFloatField;
    ccxccxsuprimentos: TFloatField;
    cfgetddoc1: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumeronfce: TIntegerField;
    cfgcfgserienfce: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgmodonfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgetdidentificacao: TStringField;
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
    cfgcfgmensagempdv: TStringField;
    cfgcfgservarqnfes: TStringField;
    plImpressores: TPanel;
    Infce: TImage;
    Infe: TImage;
    IDAV: TImage;
    Ibol: TImage;

    ActAbreCaixa: TAction;
    ActFechaCaixa: TAction;
    ActImprimeCaixa: TAction;
    ActSangria: TAction;
    ActSuprimento: TAction;

    plMensagemPrincipal: TPanel;
    ActAbreGaveta: TAction;
    GBModoNFs: TGroupBox;
    lModoNFes: TLabel;
    plLogomizio: TPanel;
    ILogomizio: TImage;
    plFonemizio: TPanel;
    GBFuncoes: TGroupBox;
    cfgcfgusacondiconsumidor: TIntegerField;
    GBCaixa: TGroupBox;
    Dccx: TDataSource;
    ccxchave: TDBText;
    cfgcfgviaassinar: TIntegerField;
    cfgcfgusaadc: TIntegerField;
    cfgcfgusacre: TIntegerField;
    cfgcfgdigitosbalanca: TIntegerField;
    PMGerador: TPopupMenu;
    Gerador1: TMenuItem;
    GeradorViaAssinatura1: TMenuItem;
    GeradorComprovanteDAV1: TMenuItem;
    GeradorAberturaCCX1: TMenuItem;
    GeradorSuprimentoCCX1: TMenuItem;
    GeradorSangriaCCX1: TMenuItem;
    GeradorFechamentoCCX1: TMenuItem;
    cfgcfgcontrolalimite: TIntegerField;
    cfgcfgidentificatecnico: TIntegerField;
    litopropededescrserv: TIntegerField;
    litopropedetecnicoserv: TIntegerField;
    GeradorGavetaCCX1: TMenuItem;
    orcorchoraencerr: TTimeField;
    cfgcfgusacaixaprevenda: TIntegerField;
    cfgcfgusache: TIntegerField;
    ActLiberaBloqParcial: TAction;
    ActLiberaBloqTotal: TAction;
    litovrpcodigo: TIntegerField;
    itovrpcodigo: TIntegerField;
    qprogracodigo: TIntegerField;
    orcclbcaixa: TIntegerField;
    orcclbvendedor: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    cfgcfgajustaperccomissao: TIntegerField;
    cfgcfgusabol: TIntegerField;
    orceqpcodigo: TIntegerField;
    orcfoacodigo: TIntegerField;
    cfgcfgusavendaforaestab: TIntegerField;
    trmctacodigo: TIntegerField;
    IFundo: TImage;
    plDetalhe: TPanel;
    plCentro: TPanel;
    lista: TDBGrid;
    plRodapeLista: TPanel;
    plTopoDetalhe: TPanel;
    Panel9: TPanel;
    dau: TUniQuery;
    orctdfcodigo: TStringField;
    itotdfcodigo: TStringField;
    itoflacodigo: TIntegerField;
    orcflacodigo: TIntegerField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    flaflasigla: TStringField;
    flaetdcodigo: TIntegerField;
    qpropuncusto: TFloatField;
    pservico: TPanel;
    pltitservico: TPanel;
    beditaservico: TButton;
    itoproservico: TDBMemo;
    scx: TUniQuery;
    scxscxchave: TIntegerField;
    scxccxchave: TIntegerField;
    scxprocodigo: TIntegerField;
    scxscxsaldo: TFloatField;
    scxscxsaldodisp: TFloatField;
    scxscxsaldofecha: TFloatField;
    scxscxsaldodispfecha: TFloatField;
    calcsaldoprodisp: TUniQuery;
    cfgcfgdescontonoservico: TIntegerField;
    orcclbencerrou: TIntegerField;
    cfgcfgformapagamento: TIntegerField;
    ActListaCaixas: TAction;
    clbcodigo: TDBText;
    clbclbsuper: TIntegerField;
    UniSQLMonitor: TUniSQLMonitor;
    disponivel: TUniQuery;
    disponivelrfisaldocapital: TFloatField;
    limite: TUniQuery;
    limiteetdcodigo: TIntegerField;
    limiteetllimitetotal: TFloatField;
    trmtrmbalamodelo: TStringField;
    trmtrmbalaporta: TStringField;
    trmtrmbalabaud: TStringField;
    trmtrmbalahandshake: TStringField;
    trmtrmbalaparity: TStringField;
    trmtrmbalastop: TStringField;
    trmtrmbaladata: TStringField;
    mdt: TUniQuery;
    trmtrmgaveta: TIntegerField;
    ActReimprimeAbertura: TAction;
    ActReimprimeSangria: TAction;
    ActReimprimeSuprimento: TAction;
    ActReimprimeFechamento: TAction;
    ActReimprimeComprovante: TAction;
    ActReimprimeNFCes: TAction;
    orcorcdataentrega: TDateField;
    orcorchoraentrega: TTimeField;
    orcedrcodigoentrega: TIntegerField;
    ItmPro: TUniQuery;
    ItmProprocodigo: TIntegerField;
    ItmPropronome: TStringField;
    ItmProquantidade: TFloatField;
    ItmProtpocodigo: TIntegerField;
    ItmProprosaldo: TFloatField;
    ItmProtpoidentificacao: TStringField;
    ItmProproncm: TStringField;
    ItmProPodeNCM: TBooleanField;
    ItmProPodeSaldo: TBooleanField;
    ItmProitmPodeSaldo: TStringField;
    ItmProitmPodeNCM: TStringField;
    cfgcfgformacancelamento: TIntegerField;
    ActReimprimeTEF: TAction;
    cfgcfgarredondapeso: TIntegerField;
    cfgcfgusaafaturar: TIntegerField;
    pmp: TUniQuery;
    pmppmpchave: TIntegerField;
    pmpprocodigo: TIntegerField;
    pmppmopercentualavista: TFloatField;
    pmppmopercentualaprazo: TFloatField;
    itopmpchave: TIntegerField;
    pmpveri: TUniQuery;
    imaconexao2: TImage;
    imaconexao3: TImage;
    imaconexao4: TImage;
    IMenuInfo: TImage;
    cfgcfgusagou: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    itm2: TUniQuery;
    itm2procodigo: TIntegerField;
    saldo: TUniQuery;
    cfgcfgproinativsaldozero: TIntegerField;
    saldoscx: TUniQuery;
    cfgcfgprevisualizarimpressao: TIntegerField;
    orcmdacodigo: TIntegerField;
    litoitoacrescimovalor: TFloatField;
    litoitoacrescimototal: TFloatField;
    litoitoacrescimosaldo: TFloatField;
    itoitoacrescimoav: TFloatField;
    verhorario: TUniQuery;
    litoitopercentualcombo: TFloatField;
    itoclbatendente: TIntegerField;
    itoitoitempedido: TStringField;
    immpedido: TUniQuery;
    procedure relogioTimer(Sender: TObject);
    Procedure ConectaBanco;
    procedure CancelaItem;
    procedure DescontoNoItem;
    procedure DescontoGeral;
    procedure LimpaAtendimento;
    procedure FinalizaVenda;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLimpaAtendimentoExecute(Sender: TObject);
    procedure ActDescontoItemExecute(Sender: TObject);
    procedure ActDescontoGeralExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActFinalizaVendaExecute(Sender: TObject);
    procedure ActProdutosExecute(Sender: TObject);
    function IncluirNovoItem(Produto, Embalagem: Integer; Variacao: Integer = 0; Quantidade: Double = 0; pcocodigo: Integer = 0): Boolean; virtual;
    procedure Novoorcamento; virtual;
    Procedure Mostrapainelcliente; virtual;
    procedure Mostraclienteselecionado; virtual;
    procedure Ajustabotoes(Situacao: Boolean); virtual;
    procedure ActCancelaItemExecute(Sender: TObject);
    procedure ActClientesExecute(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure imaconexao5Click(Sender: TObject);
    procedure acoesExecute(Action: TBasicAction; var Handled: Boolean);

    procedure ActAbreCaixaExecute(Sender: TObject);
    procedure ActFechaCaixaExecute(Sender: TObject);
    procedure ActSangriaExecute(Sender: TObject);
    procedure ActSuprimentoExecute(Sender: TObject);
    procedure ActImprimeCaixaExecute(Sender: TObject);

    procedure ActAbreGavetaExecute(Sender: TObject);
    procedure mngeradorClick(Sender: TObject);
    procedure Gerador1Click(Sender: TObject);
    procedure GeradorViaAssinatura1Click(Sender: TObject);
    procedure GeradorComprovanteDAV1Click(Sender: TObject);
    procedure GeradorAberturaCCX1Click(Sender: TObject);
    procedure GeradorSuprimentoCCX1Click(Sender: TObject);
    procedure GeradorSangriaCCX1Click(Sender: TObject);
    procedure GeradorFechamentoCCX1Click(Sender: TObject);
    procedure GeradorGavetaCCX1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActLiberaBloqParcialExecute(Sender: TObject);
    procedure ActLiberaBloqTotalExecute(Sender: TObject);
    procedure SetVendedor(const Value: String); virtual;
    function GetBotoesAtivosImpre: String; virtual; abstract;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState); Virtual;
    function ParaFilial: Boolean;
    procedure orcAfterInsert(DataSet: TDataSet);
    procedure itoAfterInsert(DataSet: TDataSet);
    procedure ActListaCaixasExecute(Sender: TObject);
    procedure ActReimprimeAberturaExecute(Sender: TObject);
    procedure ActReimprimeSangriaExecute(Sender: TObject);
    procedure ActReimprimeSuprimentoExecute(Sender: TObject);
    procedure ActReimprimeFechamentoExecute(Sender: TObject);
    procedure ActReimprimeNFCesExecute(Sender: TObject);
    procedure ActReimprimeComprovanteExecute(Sender: TObject);
    procedure ActReimprimeTEFExecute(Sender: TObject);
    procedure ConexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure ConexaoAfterDisconnect(Sender: TObject);

  protected
    Acesso: TAcesso;
  private
    vpBloqueioLiberado: Boolean;

    vpPackNFCe: Cardinal;
    vpPackBol: Cardinal;
    FDevolvendoCondicional: Boolean;
    FVendedor: String;
    FAcsCodigo: Integer;

    function LogarSistema: Boolean;
    function ValidaTerminal: Boolean;

    procedure AjustaaoMonitor;
    procedure AplicaDescontoItem;
    procedure AplicaDescontoGeral;
    procedure FerroKeyPress(Sender: TObject; var Key: Char);
    function ModuloNFCe(vfuncao: string; Acesso: TAcesso; vmeschave: string; vImprimir: Boolean): Boolean;

    Function ModuloBoleto(vmeschave: String): Boolean;
    function RegistraOperacaoCaixa(vTocCodigo: Integer): string;
    procedure SetAcsCodigo(const Value: Integer);
    procedure AjustaCarteiraCobranca(vmeschave: string);
    function SelecionaCarteiraBoleto: String;

    procedure SalvaSaldoProdutos(vTipoMovimento: Integer);
    function modulonfe(arq: String; Rotina: TRotinasNFe; chave: String): Boolean;
    function geranomenfe(vmeschave, vflacodigo: String): String;

    function LimiteAutorizado(vetdcodigo: String; vValorVenda, vlLimiteSolic, vlLimiteDisponivel: Double; vpOrcChave: Integer): Boolean;
    function ListaNFCE: Boolean;
    function ListaComprovantes: Boolean;
    procedure VerAtualizacao(pacote: string);

    procedure atualizaconexao;
    procedure CalculaSaldoVenda2Dias;

    { Private declarations }

  published

    property AcsCodigo: Integer read FAcsCodigo write SetAcsCodigo;
    property Vendedor: String read FVendedor write SetVendedor;
    property BotoesAtivosImpre: String read GetBotoesAtivosImpre;

    { Private declarations }
  public
    { Public declarations }

    vlPackLia: Cardinal;
    vpTentativasReconexoes: Integer;
    vpVerificaInternet: Integer;
    vpccxchave: Integer;
    vpcznchave: Integer;
    vpTeclaFinalizador: Integer;
    vpValorFinalizador: Integer;

    VCBarra: String;

    vpQtdItens: Integer;

    vlPackECF: Cardinal;

    vpCaixaAberto: Integer;

    vpTroco: Double;
    vpRetornoIPO: string;

    vpQuantidade: Double;

    VpEtdCancelado: Boolean;
    VpEtdCodigoOrig: String;

    vpEtdCodigo: String;
    vpEdrCodigo: String;

    vpTipoPreco: Integer;

    vpCtaCodigo: String;
    vpOrcChave: String;
    vpPedChave: String;
    vpMesChave: string;

    vpLarguraTela: Longint;
    vpAlturaTela: Longint;
    VpDescontoMaximo: Double;

    Procedure Recalculatotal;
    procedure InicializacaoGeral;
    procedure Crianovoorc; virtual;
    function MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string; overload;
    function MostraLista(pModulo: String; pModoCarga: TModoCarga; pFiltro: string = ''; pChaveMestre: string = ''): string; overload;

    procedure AjustaQuantidade(Quantidade: Double; Tipo: Integer);
    function QuantiTotalItemOrc(Produto, CodUnidVenda: Integer): Double;
    function PermiteQuantidade(Produto, CodUnidVenda: Integer; Quantidade: Double): Boolean;
    procedure AjustaPreco(ChaveIto: Integer);
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    procedure SalvarTextoEmArquivo(Texto, Diretorio: String);
    function BuscaAtendimentos(Modo: Integer): String;
    procedure AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
    function CarregaAtendimentos: Boolean;
    procedure ImprimirRelatorio(vDataSource: TUniDataSource; vRelatorio: String; vImprimirDireto: Boolean = False);
    procedure CriaAcoesDeAcesso;
    function Finaliza(Vchave: String): String; virtual;
    function Autorizado(pAction: TAction; pMotivo: String): Boolean;
    procedure AtribuiTagAcesso;
    function Imprime(Vchave: String): Boolean;
    procedure AjustaCaixa;

    procedure FinalizaPreVenda;
    procedure IdentificaVendedor;

    { * operacoes da IMPRESSORA NAO FISCAL }

    function ImprimirDAVFR(meschave: string): Boolean; // Fast Report
    function ativaimpressoraNF: Boolean;
    function AbreGavetaNF: Boolean;

    procedure Mostraerro(Texto: String);
    procedure FormErroShow(Sender: TObject);

    function LiberaBloqueioParcial: Boolean;
    function LiberaBloqueioTotal: Boolean;

    function CarregalimiteCliente(vetdcodigo: Integer): Double;
    procedure ImprimeComprovantesCaixa(vOperacaoCaixa: Integer);
    procedure Ajustasqllito;

  end;

  TformuAbertura = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vCtaCodigo: string; vTurno: string; vTrmCodigo: string;
    vModo: string): string;

  TAutorizacaoAtenLimite = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vLimiteSolic: Double; vorcchave: String): string;

  TAutorizacaoAten = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vactcodigo: string; vmotivo: string; vorcchave: String;
    vTrmCodigo: String): string;

  TAutorizacao = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vactcodigo: string; vmotivo: string = '';
    vtdecodigo: String = ''; vorcchave: String = ''; vmeschave: String = ''; vltecodigo: String = ''; vddfcodigo: String = ''): string;

  Timprimeorc = Function(AOwner: TComponent; Conexao: TUniConnection; Vchave: String; vTrmCodigo: String; Vusrcodigo: string;
    vBtsAtivos: string; vValorNota: Currency): String;

  TRegistraLote = function(AOwner: TComponent; Conexao: TUniConnection; Vchave: string; vTrmCodigo: string; principal: string; multa: string;
    juros: string; desconto: string; Acesso: TAcesso; vModo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0;
    vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True;
    vControleEntrega: Boolean = False): string;

  Tregistralotedatagourmet = function(AOwner: TComponent; Conexao: TUniConnection; Vchave: string; vTrmCodigo: string; principal: string;
    multa: string; juros: string; desconto: string; Acesso: TAcesso; vModo: string; vDia: TDate; vPodeConvenio: Boolean = True;
    vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0;
    vPodeTrocaDoacao: Boolean = True; vControleEntrega: Boolean = False; vCcxChave: Integer = 0; vetdcodigo:Integer=0; vComplemento:Boolean=false ): string;

  TRegistraLoteEnt = Function(AOwner: TComponent; Conexao: TUniConnection; Vchave: string; vTrmCodigo: string; principal: string; multa: string;
    juros: string; desconto: string; Acesso: TAcesso; vModo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0;
    vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True;
    vPodeCheque: Boolean = False; vCcxChave: string = ''): string;

  TBuscaItens = Function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; Moccodigo: Integer; Vchave: String): String;

  TProcessaOrc = function(AOwner: TComponent; Conexao: TUniConnection; pChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;
  TCarregaOrc = function(AOwner: TComponent; Conexao: TUniConnection; pOrcChave: string; pMesChave: string; pAcesso: TAcesso;
    AFaturar: Boolean = False): string;

  Tajustadesconto = Function(AOwner: TComponent; Conexao: TUniConnection; vDesconto, vPercentual, vValor, Vbruto, Vtipo, Vusrcodigo, Vpermax: String;
    vtdecodigo: String; vorcchave: String = ''; vmeschave: String = ''): String;

  TComunicaECF = function(AOwner: TComponent; Conexao: TUniConnection; trmcodigo: string; meschave: string; comando: string): Boolean;

  TConsultaECF = function(AOwner: TComponent; Conexao: TUniConnection; trmcodigo: string; meschave: string; comando: string): string;

  TModuloNFCe = function(AOwner: TComponent; Conexao: TUniConnection; vmeschave: string; vfuncao: string; Acesso: TAcesso; vImprimir: Boolean;
    vConsultouSefaz: Boolean; vemail: string): Boolean;

const
  (* Situação do Código de Barra *)
  cCodBarraEstadoDevolucao = ' Devolução de Condicional ';
  cCodBarraEstadoInclusao = 'Digite o código :   ';

  (* Tipo de Ajuste de Quantidade *)
  taqSoma = 0;
  taqSubtrai = 1;
  taqFinal = 2;

var

  FprinciAte: TFprinciAte;
  ferro: TForm;
  HMutex: THandle;
  (* Utilizado pelo OnCloseQuery *)
  ShuttingDown: Boolean = False;

  vpBloqueioTotal: Boolean = False;
  vpBloqueioParcial: Boolean = False;

  (* Identifica se já realizada primeira consulta da SEFAZ *)
  vpConsultouSefaz: Boolean = False;

implementation

{$R *.dfm}

uses ulunidades, ufajustapreco;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);
  TCellGrid = class(TCustomGrid);

procedure TPanel.Paint;
const
  Alignments: array [TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
  VerticalAlignments: array [TVerticalAlignment] of Longint = (DT_TOP, DT_BOTTOM, DT_VCENTER);
var
  Rect: TRect;
  LColor: TColor;
  LStyle: TCustomStyleServices;
  LDetails: TThemedElementDetails;
  TopColor: TColor;
  BottomColor: TColor;
  LBaseColor: TColor;
  LBaseTopColor: TColor;
  LBaseBottomColor: TColor;
  Flags: Longint;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := LBaseTopColor;
    if Bevel = bvLowered then
      TopColor := LBaseBottomColor;
    BottomColor := LBaseBottomColor;
    if Bevel = bvLowered then
      BottomColor := LBaseTopColor;
  end;

begin

  Rect := GetClientRect;

  LBaseColor := Color;
  // use the color property value to get the background color.
  LBaseTopColor := clBtnHighlight;
  LBaseBottomColor := clBtnShadow;
  LStyle := StyleServices;
  if LStyle.Enabled then
  begin
    LDetails := LStyle.GetElementDetails(tpPanelBevel);
    if LStyle.GetElementColor(LDetails, ecEdgeHighLightColor, LColor) and (LColor <> clNone) then
      LBaseTopColor := LColor;
    if LStyle.GetElementColor(LDetails, ecEdgeShadowColor, LColor) and (LColor <> clNone) then
      LBaseBottomColor := LColor;
  end;

  if BevelOuter <> bvNone then
  begin
    AdjustColors(BevelOuter);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  if not(LStyle.Enabled and (csParentBackground in ControlStyle)) then
    Frame3D(Canvas, Rect, LBaseColor, LBaseColor, BorderWidth)
  else
    InflateRect(Rect, -Integer(BorderWidth), -Integer(BorderWidth));
  if BevelInner <> bvNone then
  begin
    AdjustColors(BevelInner);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  with Canvas do
  begin
    if not LStyle.Enabled or not ParentBackground then
    begin
      Brush.Color := LBaseColor;
      FillRect(Rect);
    end;

    if ShowCaption and (Caption <> '') then
    begin
      Brush.Style := bsClear;
      Font := Font;
      Font.Color := clBlack;
      Flags := DT_EXPANDTABS or DT_SINGLELINE or VerticalAlignments[VerticalAlignment] or Alignments[Alignment];
      Flags := DrawTextBiDiModeFlags(Flags);
      if LStyle.Enabled then
      begin
        LDetails := LStyle.GetElementDetails(tpPanelBackground);
        if not LStyle.GetElementColor(LDetails, ecTextColor, LColor) or (LColor = clNone) then
          LColor := Font.Color;
        if Tag > 0 then
          LColor := Tag;

        LStyle.DrawText(Handle, LDetails, Caption, Rect, TTextFormatFlags(Flags), LColor)
      end
      else
        DrawText(Handle, Caption, -1, Rect, Flags);
    end;
  end;
end;

{ TGroupBox }

procedure TGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
  CaptionRect, OuterRect: TRect;
  Size: TSize;
  Box: TThemedButton;
  Details: TThemedElementDetails;
begin

  with Canvas do
  begin
    Font := Font;

    if ThemeControl(Self) then
    begin
      if Text <> '' then
      begin
        GetTextExtentPoint32(Handle, PChar(Text), Length(Text), Size);
        CaptionRect := Rect(0, 0, Size.cx, Size.cy);
        if not UseRightToLeftAlignment then
          OffsetRect(CaptionRect, 8, 0)
        else
          OffsetRect(CaptionRect, Width - 8 - CaptionRect.Right, 0);
      end
      else
        CaptionRect := Rect(0, 0, 0, 0);

      OuterRect := ClientRect;
      OuterRect.Top := (CaptionRect.Bottom - CaptionRect.Top) div 2;
      with CaptionRect do
        ExcludeClipRect(Handle, Left, Top, Right, Bottom);
      if Enabled then
        Box := tbGroupBoxNormal
      else
        Box := tbGroupBoxDisabled;
      Details := ThemeServices.GetElementDetails(Box);
      // Draw the themed frame
      ThemeServices.DrawElement(Handle, Details, OuterRect);
      SelectClipRgn(Handle, 0);
      if Text <> '' then
      begin
        Font.Name := 'Tahoma';
        Font.Size := 11;
        Font.Style := [fsBold];
        H := TextHeight('0');
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        // Now using the Windows.DrawText
        DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
        if Tag > 0 then
          Font.Color := clwhite; // background color of the caption

        Brush.Color := Color; // background color of the caption
        DrawText(Handle, PChar(Text), Length(Text), R, Flags);
      end;
    end
    else
      inherited;
    // if the control is not themed then use the original paint method.
  end;
end;

procedure TFprinciAte.AjustaCaixa;
var
  vnome: string;
begin

  if trmctacodigo.AsString = '' then
  begin
    Showmessage('Verificar configurações do terminal, falta conta do terminal!');
    exit;
  end;
  ccx.Close;
  ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
  ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
  ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.clbcodigo=' + Acesso.Usuario.ToString + ' and ccx.ctacodigo=' +
    trmctacodigo.AsString);
  ccx.SQL.add('  and ccxdatafecha is null');
  ccx.SQL.add(' ORDER BY ccx.ccxchave');
  ccx.Open;

  vpCtaCodigo := trmctacodigo.AsString;
  vnome := Self.Name;

  if (ccx.IsEmpty) { and (cfgcfgusacaixaprevenda.AsInteger = 0) } then
  begin

    if ((vnome = 'FprinciVar') { and (cfgcfgusacaixaprevenda.AsInteger = 1) } ) or (vnome = 'FprinciEnt') then
    begin

      if cfgcfgusacaixaprevenda.AsInteger = 1 then
      begin
        vpCaixaAberto := 1;
        ActAbreCaixa.Enabled := False;
        ActFechaCaixa.Enabled := True;
        ActSangria.Enabled := True;
        ActSuprimento.Enabled := True;

        plMensagemPrincipal.Caption := 'Aguardando Cliente';
        plMensagemPrincipal.Visible := True;

      end
      else
      begin
        vpCaixaAberto := 0;
        ActAbreCaixa.Enabled := True;
        ActFechaCaixa.Enabled := False;
        ActSangria.Enabled := False;
        ActSuprimento.Enabled := False;
        plMensagemPrincipal.Caption := 'Caixa Fechado';
        plMensagemPrincipal.Visible := True;

      end;
    end
    else
    begin
      vpCaixaAberto := 0;
      ActAbreCaixa.Enabled := True;
      ActFechaCaixa.Enabled := False;
      ActSangria.Enabled := False;
      ActSuprimento.Enabled := False;
      plMensagemPrincipal.Caption := 'Caixa Fechado';
      plMensagemPrincipal.Visible := True;
    end;
  end
  else
  begin
    vpCaixaAberto := 1;
    ActAbreCaixa.Enabled := False;
    ActFechaCaixa.Enabled := True;
    ActSangria.Enabled := True;
    ActSuprimento.Enabled := True;

    plMensagemPrincipal.Caption := 'Aguardando Cliente';
    plMensagemPrincipal.Visible := True;
  end;
end;

function TFprinciAte.Autorizado(pAction: TAction; pMotivo: String): Boolean;
type
  TAutorizacaoAten = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vactcodigo: string; vmotivo: string; vorcchave: String;
    vTrmCodigo: String): string;
var
  Autoriza: TAutorizacaoAten;
  vlRetorno: string;
  vlActCodigo: Integer;

begin
  Result := True;

  vlActCodigo := pAction.Tag;

  dau.Close;
  dau.Params[0].AsString := pAction.Name;
  dau.Params[1].AsInteger := Acesso.Usuario;
  dau.Open;

  if vlActCodigo > 0 then
    if not dau.Locate('actcodigo;dauativo', VarArrayOf([vlActCodigo, 1]), []) then
    begin
      Result := False;

      if vlPackLia <> 0 then
        try
          @Autoriza := GetProcAddress(vlPackLia, PChar('liberacaoAten'));

          if Assigned(Autoriza) then
          begin
            vlRetorno := Autoriza(Application, Self.Conexao, Acesso.Usuario.ToString, IntToStr(vlActCodigo), pMotivo, vpOrcChave,
              Acesso.Terminal.ToString);

            if (vlRetorno <> '0') and (vlRetorno <> '') then
              // retornou NÃO AUTORIZADO
              Result := True;
          end;
        finally
          // DoUnLoadPackage(Application, vlPackLia);
        end;
    end;
end;

function TFprinciAte.ListaComprovantes: Boolean;
begin
  MostraLista('mrdo', 'tdfcodigo=' + QuotedStr('00'));
end;

function TFprinciAte.ListaNFCE: Boolean;
begin
  MostraLista('mrdo', '');
end;

procedure TFprinciAte.AtribuiTagAcesso;
var
  i: Integer;
begin
  act.Close;
  act.SQL.Clear;
  act.SQL.add('SELECT act.actcodigo, act.actacao');
  act.SQL.add('  FROM mdl');
  act.SQL.add(' INNER JOIN act ON mdl.mdlcodigo = act.mdlcodigo');
  act.SQL.add(' WHERE mdl.mdlnome = ''' + Self.Name + '''');
  act.Open;

  for i := 0 to Self.acoes.ActionCount - 1 do
    if act.Locate('actacao', Self.acoes[i].Name, []) then
      Self.acoes[i].Tag := Self.actactcodigo.AsInteger;
end;

procedure TFprinciAte.CriaAcoesDeAcesso;
var
  i: Integer;
  uqMdl: TUniQuery;
  uqAct: TUniQuery;
  vlMdlCodigo: Integer;
begin
  (*
    *
    * Atualização dos Módulos e Ações do Sistema
    *
  *)
  uqMdl := TUniQuery.Create(Application);
  uqAct := TUniQuery.Create(Application);
  try
    uqMdl.Connection := Conexao;
    uqMdl.SQL.Clear;
    uqMdl.SQL.add('SELECT mdl.mdlcodigo, mdl.mdlidentificacao, mdl.mdlnome, mdl.mdlsubgrupo');
    uqMdl.SQL.add('  FROM mdl');
    uqMdl.SQL.add(' WHERE mdl.mdlnome = :mdlnome');

    uqAct.Connection := Conexao;
    uqAct.SQL.Clear;
    uqAct.SQL.add('SELECT act.actcodigo, act.mdlcodigo, act.actidentificacao, act.actformulario, act.actacao, act.actativa');
    uqAct.SQL.add('  FROM act');
    uqAct.SQL.add(' INNER JOIN mdl ON act.mdlcodigo = mdl.mdlcodigo');
    uqAct.SQL.add(' WHERE mdl.mdlnome = :mdlnome');

    uqMdl.Params[0].AsString := Self.Name;
    uqMdl.Open;

    uqAct.Params[0].AsString := Self.Name;
    uqAct.Open;

    for i := 0 to Self.acoes.ActionCount - 1 do
      if (Self.acoes[i].Enabled) and (Self.acoes[i].Tag > -1) then
      begin

        if not uqMdl.Locate('mdlsubgrupo', Self.acoes[i].Category, []) then
        begin
          uqMdl.Append;
          uqMdl.FieldByName('mdlidentificacao').AsString := Application.Title;
          uqMdl.FieldByName('mdlsubgrupo').AsString := Self.acoes[i].Category;
          uqMdl.FieldByName('mdlnome').AsString := Self.Name;
          uqMdl.Post;

          vlMdlCodigo := uqMdl.Fields[0].AsInteger;

          uqMdl.Refresh;
          uqMdl.Locate('mdlcodigo', vlMdlCodigo, []);
        end
        else
          vlMdlCodigo := uqMdl.Fields[0].AsInteger;

        if uqAct.Locate('actacao', Self.acoes[i].Name, []) then
          uqAct.Edit
        else
          uqAct.Append;

        uqAct.FieldByName('mdlcodigo').AsInteger := vlMdlCodigo;
        uqAct.FieldByName('actidentificacao').AsString := '000 ' + Self.acoes[i].Caption;
        uqAct.FieldByName('actformulario').AsString := Self.Name;
        uqAct.FieldByName('actacao').AsString := Self.acoes[i].Name;
        uqAct.FieldByName('actativa').AsInteger := 1;

        uqAct.Post;
      end;

  finally
    uqMdl.Close;
    uqAct.Close;
    FreeAndNil(uqMdl);
    FreeAndNil(uqAct);
  end;
end;

Procedure TFprinciAte.ImprimirRelatorio(vDataSource: TUniDataSource; vRelatorio: String; vImprimirDireto: Boolean = False);
Begin
  mrfrImprimir(Application, Conexao, vDataSource, vRelatorio, IfThen(vImprimirDireto, tiImprimirDireto, tiImprimir), trmtciporta.AsString);
End;

Function TFprinciAte.BuscaAtendimentos(Modo: Integer): String;
Var
  vlBuscaItens: TBuscaItens;
  vNomeRotina: String;
  vlPackBcd: Cardinal;
  vlRetorno: string;
Begin
  if orc.Active then
    if (orcstocodigo.AsInteger = stoEmDigitacao) and (Modo <> MocMesa) then
    begin
      Application.MessageBox(PChar('Operação não permitida!' + #13 + #13 + 'Conclua o lançamento atual.'), 'Atenção', MB_OK + MB_ICONWARNING);
      exit;
    end;

  case Modo of
    mocOrcamento:
      vNomeRotina := 'BuscaAtdOrc';
    mocCondicional:
      vNomeRotina := 'BuscaAtdCnd';
    mocEntrega:
      vNomeRotina := 'BuscaAtdEnt';
    mocDelivery:
      vNomeRotina := 'BuscaAtdOrc';
    mocOrdemServico:
      vNomeRotina := 'BuscaAtdOse';
    mocAFaturar:
      vNomeRotina := 'BuscaAtdAfa';
    MocMesa:
      vNomeRotina := 'BuscaMesa';
    mocPrisma:
      vNomeRotina := 'BuscaPrisma';
  end;

  vlPackBcd := LoadPackage('modulos\mbat.bpl');
  If vlPackBcd <> 0 Then
    Try
      @vlBuscaItens := GetProcAddress(vlPackBcd, PChar(vNomeRotina));

      If Assigned(vlBuscaItens) Then
        vlRetorno := vlBuscaItens(Application, Conexao, Acesso, Modo, vpOrcChave);

    Finally
      DoUnLoadPackage(Application, vlPackBcd);
    End;

  Result := vlRetorno;
End;

procedure TFprinciAte.atualizaconexao;
begin

  if Conexao.Connected then
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT CURDATE();';
    consulta.Open;
    consulta.Close;
  end;
end;

function SetPCSystemTime(dDateTime: TDateTime): Boolean;
const
  SE_SYSTEMTIME_NAME = 'SeSystemtimePrivilege';
var
  hToken: THandle;
  ReturnLength: DWORD;
  tkp, PrevTokenPriv: TTokenPrivileges;
  luid: TLargeInteger;
  dSysTime: TSystemTime;
begin
  Result := False;
  if (Win32Platform = VER_PLATFORM_WIN32_NT) then
  begin
    if OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then
    begin
      try
        if not LookupPrivilegeValue(nil, SE_SYSTEMTIME_NAME, luid) then
          exit;

        tkp.PrivilegeCount := 1;
        tkp.Privileges[0].luid := luid;
        tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
        if not AdjustTokenPrivileges(hToken, False, tkp, SizeOf(TTokenPrivileges), PrevTokenPriv, ReturnLength) then
          exit;
        if (GetLastError <> ERROR_SUCCESS) then
        begin
          raise Exception.Create(SysErrorMessage(GetLastError));
          exit;
        end;
      finally
        CloseHandle(hToken);
      end;
    end;
  end;
  DateTimeToSystemTime(dDateTime, dSysTime);
  Result := True;
end;

procedure TFprinciAte.relogioTimer(Sender: TObject);
var
  myDate: TDateTime;
  myYear, myMonth, myDay, myHour, myMin, mySec, myMSec: Word;

begin
  try
    verhorario.Close;
    verhorario.Connection := Conexao;
    verhorario.SQL.Text := 'select now() horario';
    verhorario.Open;

    if not verhorario.IsEmpty then
    begin
      myDate := verhorario.FieldByName('horario').AsDateTime;
      DecodeDateTime(myDate, myYear, myMonth, myDay, myHour, myMin, mySec, myMSec);
      // SetPCSystemTime(myDate);
    end;

    lreglogio.Caption := formatfloat('00', myHour) + ':' + formatfloat('00', myMin) + ':' + formatfloat('00', mySec);

    ldia.Caption := hoje(Application, Conexao);

  except

  end;
  if vpVerificaInternet = 5 then
  begin
    if IMenuInfo.Visible then
    begin
      IMenuInfo.Visible := False;
      imaconexao2.Visible := True;
      imaconexao3.Visible := False;
      imaconexao4.Visible := False;
      imaconexao5.Visible := False;
    end
    else if imaconexao2.Visible then
    begin
      IMenuInfo.Visible := False;
      imaconexao2.Visible := False;
      imaconexao3.Visible := True;
      imaconexao4.Visible := False;
      imaconexao5.Visible := False;
    end
    else if imaconexao3.Visible then
    begin
      IMenuInfo.Visible := False;
      imaconexao2.Visible := False;
      imaconexao3.Visible := False;
      imaconexao4.Visible := True;
      imaconexao5.Visible := False;
    end
    else if imaconexao4.Visible then
    begin
      IMenuInfo.Visible := False;
      imaconexao2.Visible := False;
      imaconexao3.Visible := False;
      imaconexao4.Visible := False;
      imaconexao5.Visible := True;
    end
    else if imaconexao5.Visible then
    begin
      IMenuInfo.Visible := True;
      imaconexao2.Visible := False;
      imaconexao3.Visible := False;
      imaconexao4.Visible := False;
      imaconexao5.Visible := False;
    end;

    if Conexao.Server <> '127.0.0.1' then
    begin
      atualizaconexao;
    end;

    vpVerificaInternet := 0;
  end
  else
    vpVerificaInternet := vpVerificaInternet + 1;

end;

procedure TFprinciAte.CancelaItem;
begin
  { }
end;

Procedure TFprinciAte.ConectaBanco;
Var
  Arquini: Tinifile;
  vlNomeBanco: String;
  vlPortaBanco: Integer;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
Begin
  try

    Arquini := Tinifile.Create(Extractfilepath(Application.ExeName) + 'gourmeterp.ini');
    With Arquini Do
    Begin
      vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
      vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
      vlUsuario := ReadString('posi', 'usuario', 'root');
      vlSenha := ReadString('posi', 'senha', 'xda973');
      vlPortaBanco := ReadInteger('posi', 'portabanco', 3306);

      vlMonitor := ReadString('posi', 'monitor', '0');

      Acesso.Terminal := ReadInteger('posi', 'terminal', 0);
    End;
    Arquini.Free;

    (* Configuração para DBMonitor *)

    Conexao.Connected := False;
    Conexao.Database := vlNomeBanco;
    Conexao.Username := 'root';
    Conexao.Password := vlSenha;
    Conexao.Port := vlPortaBanco;
    Conexao.Server := vlServidor;
    Conexao.Connected := True;

    consulta.Close;
    consulta.Connection := Conexao;
    consulta.SQL.Clear;
    consulta.SQL.add('SET @@GLOBAL.sql_mode=' + QuotedStr(''));
    consulta.ExecSQL;

    lbip.Caption := vlServidor;
    lbdados.Caption := Trim(Lowercase(Trim(vlNomeBanco)));

  except
    Mostraerro('A T E N Ç Ã O   -   A T E N Ç Ã O: ' + #13 + #13 + 'Falha de conexão com o SERVIDOR.' + #13 + 'Verifique se o SERVIDOR esta ligado' +
      #13 + 'e se sua rede funcionando !' + #13 + 'Ligue o SERVIDOR e depois lique os TERMINAIS.');

  end;
End;

procedure TFprinciAte.ConexaoAfterDisconnect(Sender: TObject);
begin
  vpTentativasReconexoes := 0;
end;

procedure TFprinciAte.ConexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  while vpTentativasReconexoes < 6 do
  begin
    sleep(1000);
    RetryMode := rmReconnectExecute;
    if Conexao.Connected then
      Break;
    if vpTentativasReconexoes > 5 then
    begin
      Showmessage('Falha de rede, conexão com servidor pedida!');
      Application.Terminate;
    end
    else
    begin
      Showmessage('Tentativa ' + IntToStr(vpTentativasReconexoes) + ' de 6 de reconexão com sistema.' + #13#13 + 'VEREFIQUE SUA REDE!');
      vpTentativasReconexoes := vpTentativasReconexoes + 1;
    end;
  end;

end;

procedure TFprinciAte.DescontoGeral;
begin
  { }
end;

procedure TFprinciAte.DescontoNoItem;
begin
  { }
end;

procedure TFprinciAte.FinalizaVenda;
begin
  { }
end;

procedure TFprinciAte.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := ShuttingDown;
end;

procedure TFprinciAte.FormCreate(Sender: TObject);
begin
  IFundo.Visible := True;
  AjustaaoMonitor;

end;

procedure TFprinciAte.FormShow(Sender: TObject);
begin
  if clbclbcodigo.AsInteger = 1 then
  begin
    IMenuInfo.PopupMenu := PMGerador;
    imaconexao2.PopupMenu := PMGerador;
    imaconexao3.PopupMenu := PMGerador;
    imaconexao4.PopupMenu := PMGerador;
    imaconexao5.PopupMenu := PMGerador;

  end;

  vpPackNFCe := 0;

  // lversai.Caption:=

  vlPackLia := LoadPackage('modulos\mlia.bpl');

  if cfgcfgusanfc.AsInteger = 1 then
    vpPackNFCe := LoadPackage('modulos\mnfegourmet.bpl');

end;

procedure TFprinciAte.Gerador1Click(Sender: TObject);
begin
  mrfrImprimir(Application, Conexao, Dorc, '', tiGerador);
end;

procedure TFprinciAte.GeradorAberturaCCX1Click(Sender: TObject);
begin

  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, ocxAbertura, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.GeradorComprovanteDAV1Click(Sender: TObject);
var
  vDirRelat: String;
begin
  vDirRelat := Extractfilepath(Application.ExeName) + 'relat\ComprovanteDAV.fr3';
  ImprimirComprovantesPDV(Application, Conexao, '', vDirRelat, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.GeradorFechamentoCCX1Click(Sender: TObject);
begin
  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, ocxFechamento, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.GeradorGavetaCCX1Click(Sender: TObject);
begin
  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, ocxGaveta, trmtciporta.AsString, tiImprimirDireto);

end;

procedure TFprinciAte.GeradorSangriaCCX1Click(Sender: TObject);
begin
  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, ocxSangria, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.GeradorSuprimentoCCX1Click(Sender: TObject);
begin
  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, ocxSuprimento, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.GeradorViaAssinatura1Click(Sender: TObject);
var
  vDirRelat: String;
begin
  vDirRelat := Extractfilepath(Application.ExeName) + 'relat\viaassinar.fr3';
  ImprimirComprovantesPDV(Application, Conexao, '', vDirRelat, trmtciporta.AsString, tiGerador);
end;

procedure TFprinciAte.InicializacaoGeral;
Begin
  ConectaBanco;

  (* Realiza validações e identifica se abandona a aplicação *)
  try
    if not Conexao.Connected then
      raise Exception.Create('Falha de conexão.');

    if not ValidaTerminal then
      raise Exception.Create('Terminal inválido.');

    if not LogarSistema then
      raise Exception.Create('Acesso inválido.');

  except
    on e: Exception do
    begin
      Showmessage(e.Message);
      Application.ShowMainForm := False;
      Application.Terminate;
      exit;
    end;
  end;

  (* Abre query com as configurações *)

  if cfg.Active then
    cfg.Close;

  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  fla.Close;
  fla.Params[0].AsInteger := Acesso.Filial;
  fla.Open;

  cfg.Open;

  if Self.cfgcfgmodonfe.AsInteger = 2 then
    lModoNFes.Caption := 'Homologação'
  else
    lModoNFes.Caption := 'Produção';

  lbNomeEmpresa.Caption := flaflasigla.AsString + ' - ' + Trim(Self.cfgcfgidentificacao.AsString);
  lterminal.Caption := Acesso.Terminal.ToString;

  Caption := 'Atendimento - Mizio Sistemas (66) 3544-2765';

  (* Atualiza os direitos de acesso e atribui a ação para Action *)
  CriaAcoesDeAcesso; // Somente habilitada quando for criada nova Action;
  AtribuiTagAcesso;

  Lidentificacao.Caption := flaflasigla.AsString + ' - ' + cfgcfgidentificacao.AsString;

  // vpCtaCodigo := ccxctacodigo.AsString;
End;

procedure TFprinciAte.itoAfterInsert(DataSet: TDataSet);
begin
  itoflacodigo.AsInteger := Acesso.Filial;
end;

procedure TFprinciAte.LimpaAtendimento;
begin
  { }
end;

procedure TFprinciAte.listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  if lito.Active = False then
    exit;
  fixRect := Rect;

  If Odd(Dlito.DataSet.RecNo) Then
    lista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    lista.Canvas.Brush.Color := clwhite;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  ItmPro.Close;
  ItmPro.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  ItmPro.ParamByName('orcchave').AsInteger := orcorcchave.AsInteger;
  ItmPro.ParamByName('procodigo').AsInteger := litoprocodigo.AsInteger;
  ItmPro.Open;

  { Get active record within grids TDataLink. The active record will be
    the current record in the dataset. Check against Row that we are
    trying to Draw, -1 to offset the column headings within grid. }
  with TFriendly(lista) do

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        { set grids canvas to win highlight colour }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
        { now redraw the cell, but highlighted }
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

Function TFprinciAte.LogarSistema: Boolean;
var
  Login: function(pAOwner: TApplication; pConexao: TUniConnection; pTerminal: Integer): Integer;
  vlResult: Integer;
  vlPack: NativeUInt;
begin
  Result := False;

  vlPack := LoadPackage('modulos\macs.bpl');
  if vlPack <> 0 then
    try
      @Login := GetProcAddress(vlPack, PChar('Acesso'));

      if Assigned(Login) then
        vlResult := Login(Application, Conexao, Acesso.Terminal);

    finally
      DoUnLoadPackage(Application, vlPack);
    end;

  if vlResult > 0 then
  begin
    Result := True;
    Self.AcsCodigo := vlResult;
  end;
End;

procedure TFprinciAte.mngeradorClick(Sender: TObject);
begin
  mrfrImprimir(Application, Conexao, Dorc, '', tiGerador);
end;

Procedure TFprinciAte.Mostraerro(Texto: String);
var
  mensa: TLabel;
  topo: TPanel;

Begin

  try
    ferro := TForm.Create(Application);
    ferro.Name := 'ferro';
    ferro.Color := clRed;

    ferro.Font.Size := 25;
    ferro.Font.Color := clYellow;

    topo := TPanel.Create(ferro);
    ferro.Caption := 'Atenção:';
    topo.parent := ferro;
    topo.Name := 'plTopo';
    topo.ParentFont := False;
    topo.Caption := '';
    topo.BevelOuter := bvNone;
    topo.Height := 200;
    topo.Align := altop;
    topo.Color := clRed;

    mensa := TLabel.Create(ferro);
    mensa.parent := ferro;
    mensa.Name := 'plMensaErro';
    mensa.ParentFont := False;

    mensa.Align := alClient;

    mensa.Font.Size := 25;
    mensa.Font.Color := clYellow;
    mensa.Caption := Texto;
    mensa.Color := clRed;

    ferro.WindowState := wsMaximized;
    ferro.OnShow := FormErroShow;
    ferro.OnKeyPress := FerroKeyPress;
    // mensa.OnKeyPress := FerroKeyPress;

    ferro.ShowModal;

  finally
    FreeAndNil(ferro);
  end;

End;

procedure TFprinciAte.FormErroShow(Sender: TObject);
begin
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).ParentFont := False;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Font.Color := clYellow;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Font.Size := 35;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Alignment := taCenter;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Tag := 1;
end;

procedure TFprinciAte.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { será sobrescrito pelos terminais }
end;

procedure TFprinciAte.FerroKeyPress(Sender: TObject; var Key: Char);
Begin
  if (Key = #27) or (Key = #$1B) then
  begin
    Key := #0;
    ferro.Close;
  end;
end;

procedure TFprinciAte.acoesExecute(Action: TBasicAction; var Handled: Boolean);
begin
  if not Autorizado(Action as TAction, '') then
    Handled := True;
end;

procedure TFprinciAte.ActAbreCaixaExecute(Sender: TObject);
var
  vlValorOperacao: string;
begin

  consulta.Close;
  consulta.SQL.Text := 'select ctacodigo from ctr where trmcodigo=' + Self.Acesso.Terminal.ToString;
  consulta.Open;

  vpCtaCodigo := consulta.FieldByName('ctacodigo').AsString;

  if vpCtaCodigo = '' then
  begin
    Application.MessageBox(PChar('Não foi possível abrir o caixa.' + #13 + 'Este terminal não possui uma conta corrente vinculada.'), 'Atenção',
      MB_ICONWARNING + MB_OK);
    exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'SELECT ccx.ccxchave , ccx.ccxdataber , ccx.ccxhoraaber, clb.clbidentificacao FROM ccx ';
  consulta.SQL.add('INNER JOIN clb ON ccx.clbcodigo = clb.clbcodigo ');
  consulta.SQL.add('WHERE ccx.ctacodigo = ' + vpCtaCodigo + ' ');
  consulta.SQL.add('AND ccx.ccxdatafecha IS NULL');
  consulta.Open;

  if not consulta.IsEmpty then
  begin

    { Showmessage('Atenção: ' + #13 + #13 + 'Este terminal já possui um caixa aberto, não pode ser aberto outro caixa ao mesmo tempo!' + #13 + #13 + 'Caixa Aberto de: ' +
      consulta.Fields[3].AsString + #13 + //
      'Data Abertura  : ' + consulta.Fields[1].AsString + #13 + //
      'Hora Abertura  : ' + consulta.Fields[2].AsString);

      exit; }
  end
  else
  begin

    ccx.Close;
    ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
    ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
    ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.clbcodigo=' + Acesso.Usuario.ToString + ' and ccx.ctacodigo=' +
      trmctacodigo.AsString);
    ccx.SQL.add('  and ccxdatafecha is null');
    ccx.SQL.add(' ORDER BY ccx.ccxchave');
    ccx.Open;

  end;

  vlValorOperacao := RegistraOperacaoCaixa(tocAberturaCaixa);

  if (vlValorOperacao = '') then
  begin
    vpCaixaAberto := 0;
  end
  else
  begin
    vpCaixaAberto := 1;
    ActAbreCaixa.Enabled := False;

    AjustaCaixa;

    SalvaSaldoProdutos(ocxAbertura);

    if FileExists(Extractfilepath(Application.ExeName) + 'relat\AberturaCCX.fr3') then
      ImprimeComprovantesCaixa(ocxAbertura);

    Ajustabotoes(False);

  end;
end;

procedure TFprinciAte.ActAbreGavetaExecute(Sender: TObject);
begin

  if IDAV.Visible then
    AbreGavetaNF;

end;

procedure TFprinciAte.ActAFaturarExecute(Sender: TObject);
var
  vDirRelat: String;
  Processa: TProcessaOrc;
  VChaveMes: String;
  vlPackopm: Cardinal;
Begin
  if (ActAFaturar.Enabled) and (ActAFaturar.Visible) then
  begin
    If not orc.Active Then
      exit;

    if lito.IsEmpty then
      exit;

    If (orc.State <> dsEdit) Then
      orc.Edit;

    If vpEtdCodigo = '0' Then
      ActClientes.Execute;

    Mostraclienteselecionado;

    if not VpEtdCancelado then
    begin
      if (Self.vpEtdCodigo = '0') or (Self.vpEtdCodigo = '') then
      begin

        Application.MessageBox(PChar('Operação não permitida!' + #13 + #13 + 'Não é possivel registrar A FATURAR para cliente CONSUMIDOR!'),
          'Atenção', MB_OK + MB_ICONWARNING);
        exit;
      end;
      orcetdcodigo.AsString := vpEtdCodigo;

      vpOrcChave := orcorcchave.AsString;

      orc.Post;

      AtualizaSituacaoItens(vpOrcChave, stoVendido, tdfMovimentoEmAndamento);

      vlPackopm := LoadPackage('modulos\mopm.bpl');
      If vlPackopm <> 0 Then
        Try
          @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

          If Assigned(Processa) Then
          Begin
            VChaveMes := '0';
            VChaveMes := Processa(Application, Conexao, vpOrcChave, Acesso, True);
          End;
        Finally
          DoUnLoadPackage(Application, vlPackopm);
        End;

      if cfgcfgusapdv.AsInteger = 1 then
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\AFaturarDAV.fr3';
        ImprimirComprovantesPDV(Application, Conexao, VChaveMes, vDirRelat, trmtciporta.AsString, tiImprimirDireto);
      end
      else
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\afaturar.fr3';
        if cfgcfgprevisualizarimpressao.AsInteger = 1 then
          ImprimirRelatorio(Dorc, vDirRelat, False)
        else
          ImprimirRelatorio(Dorc, vDirRelat, True);

      end;

      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\notapromissoria.fr3';

      if FileExists(vDirRelat) then
      begin
        if cfgcfgprevisualizarimpressao.AsInteger = 1 then
          ImprimirRelatorio(Dorc, vDirRelat, False)
        else
          ImprimirRelatorio(Dorc, vDirRelat, True);

      end;

      Crianovoorc;

      plMensagemPrincipal.Visible := False;

    end;
  end;
end;

procedure TFprinciAte.ActCancelaItemExecute(Sender: TObject);
begin

  If not orc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  If (Application.MessageBox(PChar('Deseja realmente cancelar o item selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION)
    = IDNO) Then
    exit;

  If (ito.Locate('itochave', litoitochave.AsInteger, [])) Then
  Begin

    if ito.State <> dsEdit then
      ito.Edit;

    immpedido.Close;
    immpedido.SQL.Text := 'select immnumepedido from imm where itochave=' + itoitochave.AsString;
    immpedido.Open;

    if not immpedido.IsEmpty then
    begin
      itoitoitempedido.AsString := immpedido.FieldByName('immnumepedido').AsString;
    end;

    itostocodigo.AsInteger := stoCancelado;
    ito.Post;

    lito.Refresh;

    if lito.IsEmpty then
    begin
      ActLimpaAtendimento.Enabled := True;
      // Força a chamada para Atendimentos em EDIÇÃO
      // ActLimpaAtendimento.Execute;
    end;

    if lito.Active then
      Recalculatotal;
  End;
end;

Procedure TFprinciAte.Recalculatotal;
var
  vlChaveIto: Integer;
  vlBruto: Double;
  vlDesconto: Double;
  vlLiquido: Double;
Begin
  if lito.Active = False then
    exit;

  if Trim(vpEtdCodigo) = '' then
    exit;

  vlChaveIto := litoitochave.AsInteger;

  if vpOrcChave <> '' then
  begin
    ito.Close;
    ito.Params[0].AsInteger := StrToInt(vpOrcChave);
    ito.Params[1].AsInteger := Acesso.Filial;
    ito.Open;
  end;

  If (orc.Active) and (ito.Active) Then
  Begin
    if not ParaFilial then
    begin
      consulta.Close;
      consulta.SQL.Clear;
      consulta.SQL.add('update ito, pro, pun set ');
      consulta.SQL.add('itovalorav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav), ');
      consulta.SQL.add('itototalav= IF(punprecoav>0 and itovalorav=0,punprecoav,(itovalorav))*itoquantidade, ');
      consulta.SQL.add('itosaldoav=(IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade)-itodescontoav, ');
      consulta.SQL.add('itovalorap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap), ');
      consulta.SQL.add('itototalap=IF(punprecoap>0 and itovalorap=0,punprecoap,(itovalorap+itoacrescimoav))*itoquantidade, ');
      consulta.SQL.add('itosaldoap=(IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade)-itodescontoap ');
      consulta.SQL.add('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave=' + vpOrcChave
        + ' and ito.flacodigo=' + Acesso.Filial.ToString);
      consulta.ExecSQL;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Clear;
      consulta.SQL.add('update ito, pro, pun set ');
      consulta.SQL.add('itovalorav=IF(puncusto>0 and itovalorav=0,puncusto,itovalorav), ');
      consulta.SQL.add('itototalav=IF(puncusto>0 and itovalorav=0,puncusto,itovalorav)*itoquantidade, ');
      consulta.SQL.add('itosaldoav=(IF(puncusto>0 and itovalorav=0,puncusto,itovalorav)*itoquantidade)-itodescontoav, ');
      consulta.SQL.add('itovalorap=IF(puncusto>0 and itovalorap=0,puncusto,itovalorap), ');
      consulta.SQL.add('itototalap=IF(puncusto>0 and itovalorap=0,puncusto,itovalorap)*itoquantidade, ');
      consulta.SQL.add('itosaldoap=(IF(puncusto>0 and itovalorap=0,puncusto,itovalorap)*itoquantidade)-itodescontoap ');
      consulta.SQL.add('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave=' + vpOrcChave
        + ' and ito.flacodigo=' + Acesso.Filial.ToString);
      consulta.ExecSQL;
    end;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.add('SELECT SUM(itototalav), SUM(itodescontoav), SUM(itototalap), SUM(itodescontoap), SUM(itoquantidade) ');
    consulta.SQL.add('FROM ito WHERE ito.stocodigo IN (1, 2, 3) AND orcchave = ' + vpOrcChave + ' and ito.flacodigo=' + Acesso.Filial.ToString);
    consulta.Open;

    If (orc.State <> dsEdit) Then
      orc.Edit;

    orcorcgeralav.AsFloat := consulta.Fields[0].AsFloat;

    orcorcdescontoav.AsFloat := consulta.Fields[1].AsFloat;

    orcorcgeralap.AsFloat := consulta.Fields[2].AsFloat;
    orcorcdescontoap.AsFloat := consulta.Fields[3].AsFloat;

    orcorctotalav.AsFloat := orcorcgeralav.AsFloat - orcorcdescontoav.AsFloat;
    orcorctotalap.AsFloat := orcorcgeralap.AsFloat - orcorcdescontoap.AsFloat;
    if orcetdcodigo.AsString = '' then
    begin
      orcetdcodigo.AsString := '0';
    end;
    orc.Post;

    vpQtdItens := consulta.Fields[4].AsInteger;

    consulta.Close;

    if lito.Active then
    begin
      lito.Refresh;
      lito.Locate('itochave', vlChaveIto, []);
    end;
  End;

End;

procedure TFprinciAte.ActClientesExecute(Sender: TObject);
begin
  vpBloqueioTotal := False;
  vpBloqueioParcial := False;

  VpEtdCodigoOrig := vpEtdCodigo;

  vpEtdCodigo := MostraLista('mcli', 'PermiteConsumidor'); // Busca Clientes

  if plDetalhe.Visible = False then
    exit;

  // se mudar de entidade, tirar a referencia ao endereço selecionado
  if vpEtdCodigo <> VpEtdCodigoOrig then
  begin
    if not orc.Active then
      Novoorcamento;

    if orc.State <> dsEdit then
      orc.Edit;

    orcedrcodigo.AsString := '';
  end;

  // Identifica se usuário cancelou a lista de clientes.
  if vpEtdCodigo = '' then
  begin
    VpEtdCancelado := True;
    vpEtdCodigo := VpEtdCodigoOrig;
    if vpEtdCodigo = '' then
      vpEtdCodigo := '0';

    exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'SELECT ets.etdcodigo, ets.tsecodigo FROM ets ';
  consulta.SQL.add('WHERE ets.etdcodigo = ' + vpEtdCodigo + ' ');
  consulta.SQL.add('ORDER BY ets.etscodigo DESC LIMIT 1;');
  consulta.Open;

  if not(consulta.IsEmpty) and not(consulta.Fields[1].AsInteger = tseNormal) then
  begin
    case consulta.Fields[1].AsInteger of
      tseInativo:
        begin
          Application.MessageBox(PChar('Cliente está inativo não pode ser selecionado para venda!!'), 'Atenção', MB_OK + MB_ICONWARNING);

          vpEtdCodigo := VpEtdCodigoOrig;

          if vpEtdCodigo = '' then
            vpEtdCodigo := '0';

          exit;
        end;

      tseBloqueioTotal:
        begin
          if not LiberaBloqueioTotal then
          begin
            vpEtdCodigo := VpEtdCodigoOrig;

            if vpEtdCodigo = '' then
              vpEtdCodigo := '0';
            exit;
          end;

          vpBloqueioTotal := True;
        end;

      tseBloqueioParcial:
        begin
          if not LiberaBloqueioParcial then
          begin
            vpEtdCodigo := VpEtdCodigoOrig;

            if vpEtdCodigo = '' then
              vpEtdCodigo := '0';
            exit;
          end;

          vpBloqueioParcial := True;
        end;
    end;
  end;

  consulta.Close;
  consulta.SQL.Text := 'SELECT etdcodigo, etdidentificacao FROM etd WHERE etdcodigo = ' + vpEtdCodigo;
  consulta.Open;

  // Lidentificacao.Caption := consulta.Fields[1].AsString;

  vpEtdCodigo := consulta.Fields[0].AsString;

  if orc.State <> dsEdit then
    orc.Edit;
  orcetdcodigo.AsString := vpEtdCodigo;

  VpEtdCancelado := False;
  consulta.Close;
end;

procedure TFprinciAte.ActDescontoGeralExecute(Sender: TObject);
begin
  AplicaDescontoGeral;
end;

procedure TFprinciAte.ActDescontoItemExecute(Sender: TObject);
begin
  AplicaDescontoItem;
end;

procedure TFprinciAte.ActFechaCaixaExecute(Sender: TObject);
var
  vlCcxChave: String;
begin
  // if AjusteCaixa('fechamento') <> '' then
  ccx.Close;
  ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
  ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
  ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.clbcodigo=' + Acesso.Usuario.ToString + ' and ccx.ctacodigo=' +
    trmctacodigo.AsString);
  ccx.SQL.add('  and ccxdatafecha is null');
  ccx.SQL.add(' ORDER BY ccx.ccxchave');
  ccx.Open;

  vlCcxChave := ccxccxchave.AsString;

  if (ccxclbcodigo.AsInteger = clbclbcodigo.AsInteger) then
  begin

    if RegistraOperacaoCaixa(tocFechamentoCaixa) <> '' then
    begin
      if vlCcxChave <> '' then
      begin

        ccx.Close;
        ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
        ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
        ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.clbcodigo=' + Acesso.Usuario.ToString + ' and ccx.ctacodigo=' +
          trmctacodigo.AsString);
        ccx.SQL.add('  and ccx.ccxchave=' + vlCcxChave);
        ccx.SQL.add(' ORDER BY ccx.ccxchave');
        ccx.Open;

        if IDAV.Visible then
          ImprimeComprovantesCaixa(ocxFechamento);

        SalvaSaldoProdutos(ocxFechamento);
      end;
      AjustaCaixa;

    end;
    Ajustabotoes(False);
  end
  else
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT ccx.ccxchave , ccx.ccxdataber , ccx.ccxhoraaber, clb.clbidentificacao FROM ccx ';
    consulta.SQL.add('INNER JOIN clb ON ccx.clbcodigo = clb.clbcodigo ');
    consulta.SQL.add('WHERE ccx.ccxdatafecha IS NULL');
    consulta.Open;

    if not consulta.IsEmpty then
    begin

      vlCcxChave := consulta.FieldByName('ccxchave').AsString;

      if vlCcxChave <> '' then
      begin
        if RegistraOperacaoCaixa(tocFechamentoCaixa) <> '' then
        begin
          ccx.Close;
          ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
          ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
          ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.ccxchave=' + vlCcxChave);
          ccx.SQL.add(' ORDER BY ccx.ccxchave');
          ccx.Open;

          if IDAV.Visible then
            ImprimeComprovantesCaixa(ocxFechamento);

          SalvaSaldoProdutos(ocxFechamento);
        end;
        AjustaCaixa;

        Ajustabotoes(False);

      end;

    end;

  end;
end;

procedure TFprinciAte.FinalizaPreVenda;
var
  vlDirRelat: string;
  vlImprimeDireto: Boolean;
begin
  (* ADICIONAR AQUI CONDIÇÃO PARA NÃO PERMITIR VENDER QUANDO ITEM NÃO TIVER SALDO DISPONÍVEL *)

  if not orc.Active then
    exit;

  if lito.IsEmpty then
    exit;

  If (vpEtdCodigo = '0') and (cfgcfgpedeclientevenda.AsInteger = 1) Then
    Self.ActClientes.Execute;

  (* VpEtdCancelado - Identifica se usuário Cancelou lista de clientes *)
  if VpEtdCancelado then
  begin
    VpEtdCancelado := False;
    exit;
  end;

  if vpEtdCodigo <> '0' then
  begin

    if CarregalimiteCliente(StrToInt(vpEtdCodigo)) = 0 then
    begin
      Showmessage('Cliente sem limite definido para venda!');
      VpEtdCancelado := False;
      exit;
    end;
  end;

  if not(orc.State in [dsEdit, dsinsert]) then
    orc.Edit;

  orcorcdataencerr.AsString := hoje(Application, Conexao);
  orcorchoraencerr.AsFloat := StrToDateTime(Agora(Application, Conexao));
  (* Altera somente situação do orçamento *)
  orcstocodigo.AsInteger := stoEmCaixa;
  orctdfcodigo.AsString := tdfRequisitado;
  orcclbencerrou.AsInteger := Acesso.Usuario;
  orc.Post;

  AtualizaSituacaoItens(orcorcchave.AsString, stoEmCaixa, tdfRequisitado);

  vlDirRelat := Extractfilepath(Application.ExeName) + '\relat\PreVenda.fr3';
  vlImprimeDireto := trmtipcodigo.AsInteger in [tipLaserJato, tipMatricial];

  ImprimirRelatorio(Dorc, vlDirRelat, vlImprimeDireto);

  if vpEtdCodigo <> '0' then
  begin
    vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\notapromissoria.fr3';

    if FileExists(vlDirRelat) then
      ImprimirRelatorio(Dorc, vlDirRelat);

  end;

  Crianovoorc;
end;

procedure TFprinciAte.ActFinalizaVendaExecute(Sender: TObject);
var
  vlTdfCodigo: string;
  vlGeraBoleto: Boolean;
  Processa: TProcessaOrc;
  vmeschave: String;
  VRetornoFin: String;
  vlPackopm: Cardinal;
  vlTotal: string;
  vlRetornoIPO: string;
  vlDirRelat: string;
  vlImprimeDireto: Boolean;
  vlImprimiuNFCe: Boolean;
  vlImprimiuNFe: Boolean;

  vlStoCodigoAtual: Integer;

  vlImpreComprovante: Boolean;
  vlImpreNFCe: Boolean;
  arq: String;
  vDirRelat: String;

begin
  { inherited; }

  vlImprimiuNFCe := True;
  vlTdfCodigo := '';
  vlGeraBoleto := False;

  (* ADICIONAR AQUI CONDIÇÃO PARA NÃO PERMITIR VENDER QUANDO ITEM NÃO TIVER SALDO DISPONÍVEL *)

  If not orc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  If (vpEtdCodigo = '0') and (cfgcfgpedeclientevenda.AsInteger = 1) Then
    Self.ActClientes.Execute;

  (* VpEtdCancelado - Identifica se usuário Cancelou lista de clientes *)
  if VpEtdCancelado then
  begin
    VpEtdCancelado := False;
    exit;
  end;

  If (orc.State = dsEdit) Or (orc.State = dsinsert) Then
  begin
    orcorcdataencerr.AsString := hoje(Application, Conexao);
    orcorchoraencerr.AsFloat := StrToDateTime(Agora(Application, Conexao));

    orc.Post;
  end;

  vpOrcChave := Self.orcorcchave.AsString;

  vlPackopm := LoadPackage('modulos\mopm.bpl');
  If vlPackopm <> 0 Then
    Try
      @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

      If Assigned(Processa) Then
      Begin
        vmeschave := '0';
        vmeschave := Processa(Application, Conexao, vpOrcChave, Acesso);
        vpMesChave := vmeschave;
      End;
    Finally
      DoUnLoadPackage(Application, vlPackopm);
    End;

  If (vmeschave <> '0') and (vmeschave <> '') Then
  Begin
    vlStoCodigoAtual := orcstocodigo.AsInteger;


    AtualizaSituacaoItens(vpOrcChave, stoVendido, tdfMovimentoEmAndamento);

    orc.Edit;
    orcstocodigo.AsInteger := stoVendido;
    orc.Post;


    (*
      *  Chama function para registrar os finalizadores
      *  Caso retorno seja em branco = Cancelar sistema deleta registro da tebela mes
    *)

    VRetornoFin := Finaliza(vmeschave);

    (* Significa que usuário abandonou o registro das formas de pagamento *)
    If VRetornoFin = '' Then
    begin
      vpBloqueioTotal := True;
      vpBloqueioParcial := True;

      consulta.Close;
      consulta.SQL.Text := 'delete from mes where meschave=' + vmeschave;
      consulta.ExecSQL;

      (* Devolve situação do orçamento *)
      orc.Edit;
      orcstocodigo.AsInteger := vlStoCodigoAtual;
      orc.Post;

      AtualizaSituacaoItens(vpOrcChave, vlStoCodigoAtual, tdfMovimentoEmAndamento);

      exit;
    end;

    (* Identifica se houve parte de pagamento a prazo *)
    consulta.Close;
    consulta.SQL.Text := 'SELECT rfm.meschave FROM rfm, mfi, mlt, dtl ';
    consulta.SQL.add('WHERE mfi.rfichave = rfm.rfichave ');
    consulta.SQL.add('AND mfi.mfichave = mlt.mfichave ');
    consulta.SQL.add('AND mlt.ltechave = dtl.ltechave ');
    consulta.SQL.add('AND dtl.mdacodigo = 7 ');
    consulta.SQL.add('AND rfm.meschave = ' + vmeschave);
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      orc.Edit;
      orcfopcodigo.AsInteger := 2;
      orc.Post;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes SET tfpcodigo = ' + IntToStr(tfpAPrazo) + ' WHERE meschave = ' + vmeschave;
      consulta.ExecSQL;
    end;


    while True do
    begin
      // 10110

      Imprime(vpOrcChave);

      vlRetornoIPO := vpRetornoIPO;

      (* Identifica se opção selecionada foi DAV *)
      if copy(vlRetornoIPO, 1, 1) = '1' then
        vlTdfCodigo := '00';

      if IDAV.Tag = 1 then
        IF vlTdfCodigo = '00' then
        begin
          vlDirRelat := Extractfilepath(Application.ExeName) + '\relat\comprovante.fr3';
          vlImprimeDireto := trmtipcodigo.AsInteger in [tipLaserJato, tipMatricial];
          ImprimirRelatorio(Dorc, vlDirRelat, vlImprimeDireto);
          IDAV.Tag := 2;
        end;

      (* Identifica se opção selecionada foi ECF *)
      if copy(vlRetornoIPO, 2, 1) = '1' then
        vlTdfCodigo := '2D';

      (* Identifica se opção selecionada foi NFCe *)
      if copy(vlRetornoIPO, 3, 1) = '1' then
        vlTdfCodigo := '65';

      (* Identifica se opção selecionada foi NFE *)
      if copy(vlRetornoIPO, 4, 1) = '1' then
        vlTdfCodigo := '55';

      (* Identifica se opção BOLETO foi selecionada *)
      if copy(vlRetornoIPO, 5, 1) = '1' then
        vlGeraBoleto := True
      else
        vlGeraBoleto := False;

      if Infce.Tag = 1 then
        if vlTdfCodigo = '65' then
        begin
          vlImprimiuNFCe := ModuloNFCe('EmiteNFCe', Acesso, vmeschave, True);
          Infce.Tag := 2;
        end;

      if Infe.Tag = 1 then
        if vlTdfCodigo = '55' then
        begin
          arq := geranomenfe(vmeschave, Acesso.Filial.ToString);
          If arq <> '' Then
          Begin

            vlImprimiuNFe := modulonfe(arq, rnfGerarNFe, vmeschave);
            Infe.Tag := 2;
          End;
        end;

      if Ibol.Tag = 1 then
        if vlGeraBoleto then
        begin
          if ModuloBoleto(vmeschave) then
            Ibol.Tag := 2;
        end
        else
          Ibol.Tag := 2;

      if ((vlImprimiuNFCe) or (Infce.Tag = 2) or (Infe.Tag = 2) or (IDAV.Tag = 2)) and (Ibol.Tag = 2) then
        Break;

    end;

    if vmeschave <> '0' then
    begin
      mdt.Close;
      mdt.ParamByName('meschave').AsString := vmeschave;
      mdt.Open;

      if not mdt.IsEmpty then
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\comprovantetroca.fr3';

        if FileExists(vDirRelat) then
          ImprimirRelatorio(Dorc, vDirRelat);

      end;

    end;

    if cfgcfgformacancelamento.AsInteger = 1 then
    begin
      if (vmeschave <> '0') and (vpEtdCodigo <> '0') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT etdcodigo, sum(rcrsaldo) as rcrsaldo from v_rcr where etdcodigo=' + vpEtdCodigo;
        consulta.Open;

        if (consulta.FieldByName('rcrsaldo').AsCurrency > 0) then
        begin
          { vDirRelat := Extractfilepath(Application.ExeName) + 'relat\contravale.fr3';

            if FileExists(vDirRelat) then
            ImprimirRelatorio(Dorc, vDirRelat)
            else
            Showmessage('Favor solicitar comprovante para Contra Vale!'); }

        end;

      end;
    end;

    If (vpEtdCodigo <> '0') and (orcfopcodigo.AsInteger = 2) then
    begin

      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\notapromissoria.fr3';

      if FileExists(vDirRelat) then
        ImprimirRelatorio(Dorc, vDirRelat);

    end;

    vpMesChave := vmeschave;

    if vpMesChave <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT DISTINCT dtl.dtlvalor,  mdaidentificacao,  rdc.rdccomprovante1via,  rdc.rdccomprovante2via ';
      consulta.SQL.add('FROM dtl, mda, mlt, mfi, rfm, mes, ltr, rdc ');
      consulta.SQL.add('WHERE dtl.mdacodigo = mda.mdacodigo ');
      consulta.SQL.add('AND dtl.dtlchave = ltr.dtlchave ');
      consulta.SQL.add('AND ltr.rdcchave = rdc.rdcchave ');
      consulta.SQL.add('AND mlt.ltechave = dtl.ltechave ');
      consulta.SQL.add('AND mlt.mfichave = mfi.mfichave ');
      consulta.SQL.add('AND mfi.rfichave = rfm.rfichave ');
      consulta.SQL.add('AND rfm.meschave = mes.meschave ');
      consulta.SQL.add('AND mes.meschave = ' + vpMesChave);
      consulta.SQL.add('AND mfi.mfivalor <> 0 ');
      consulta.SQL.add('GROUP BY dtl.mdacodigo');
      consulta.Open;

      if consulta.FieldByName('rdccomprovante1via').AsString <> '' then
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\tefccx1via.fr3';
        ImprimirComprovantesPDV(Application, Conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimir);

        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\tefccx2via.fr3';
        ImprimirComprovantesPDV(Application, Conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimir);

      end;

    end;

    Crianovoorc;

  End;
end;

Function TFprinciAte.geranomenfe(vmeschave: String; vflacodigo: String): String;
Var
  retorno: String;
  vaaaammnfe: String;
  arq: String;
Begin
  retorno := '';
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  consulta.Close;
  consulta.SQL.Text := 'select mesdatanfe,mesregistro, meschavenfe, meschave from mes where meschave=' + vmeschave + ' and flacodigo=' + vflacodigo;
  consulta.Open;

  If (Self.consulta.RecordCount = 1) And (consulta.Fields[0].AsString <> '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[0].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[2].AsString + '-nfe.XML';
    retorno := arq;
  End
  Else If (Self.consulta.RecordCount = 1) And (consulta.Fields[1].AsString <> '') And (consulta.Fields[2].AsString <> '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[1].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[2].AsString + '-nfe.XML';
    retorno := arq;
  End
  Else If (Self.consulta.RecordCount = 1) And (consulta.Fields[1].AsString <> '') And (consulta.Fields[2].AsString = '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[1].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[3].AsString + '-nfe.XML';
    retorno := arq;
  End;

  Result := retorno;
End;

function TFprinciAte.modulonfe(arq: String; Rotina: TRotinasNFe; chave: String): Boolean;
type
  TModuloNFe = function(AOwner: TComponent; Conexao: TUniConnection; varq: string; Vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso;
    vConsultouSefaz: Boolean): Boolean;
var
  modnfe: TModuloNFe;

  ch: string;
  vu: string;
  vpack: Cardinal;
begin
  Result := False;
  vpack := LoadPackage('modulos\mnfegourmet.bpl');
  if vpack <> 0 then
    try
      @modnfe := GetProcAddress(vpack, PChar('ModuloNFe'));
      if Assigned(modnfe) then
      begin
        Result := modnfe(Application, Conexao, arq, chave, Rotina, Acesso, vpConsultouSefaz);
        vpConsultouSefaz := True;
      end;
    finally
      DoUnLoadPackage(Application, vpack);
    end;
End;

function TFprinciAte.ModuloBoleto(vmeschave: String): Boolean;
type
  TGeraBoletoVenda = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; Vusrcodigo, vTrmCodigo: Integer;
    vTitCodigo: Integer): Integer;
  TModuloBoleto = function(AOwner: TComponent; Conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso: TAcesso; vGebCodigo: Integer = 0;
    vBolChave: Integer = 0; vRmbCodigo: Integer = 0): Boolean;
var
  ExecGBV: TGeraBoletoVenda;
  ExecMB: TModuloBoleto;

  vlGebCodigo: Integer;
  vlTitCodigo: Integer;

begin
  try
    vpPackBol := 0;
    if cfgcfgusabol.AsInteger = 1 then
      vpPackBol := LoadPackage('modulos\mbol.bpl')
    else
      exit;

    if vpPackBol = 0 then
      exit;

    try
      @ExecGBV := GetProcAddress(vpPackBol, PChar('GeraBoletoVenda'));

      if not Assigned(ExecGBV) then
        exit;

      consulta.Close;
      consulta.SQL.Text := 'SELECT r.titcodigo FROM rfi r ';
      consulta.SQL.add('JOIN rfm r1 ON r.rfichave = r1.rfichave AND r1.meschave = :meschave ');
      consulta.SQL.add('WHERE r.tfdcodigo = 2 GROUP BY r1.meschave');
      consulta.Params[0].AsString := vmeschave;
      consulta.Open;

      vlTitCodigo := consulta.Fields[0].AsInteger;
      consulta.Close;

      AjustaCarteiraCobranca(vmeschave);

      vlGebCodigo := ExecGBV(Application, Conexao, Self.Acesso, Self.Acesso.Usuario, Acesso.Terminal, vlTitCodigo);
      Result := True;
    except
      on e: Exception do
      begin
        Application.MessageBox(PChar('Falha na inclusão dos Boletos.' + #13 + #13 + 'Utilize o módulo Cobrança Bancária para gerar novamente.'),
          'Atenção', MB_OK + MB_ICONWARNING);

        SalvarLogErro(e.Message, e.StackTrace);
        Result := False;
        exit;
      end;
    end;

    try
      @ExecMB := GetProcAddress(vpPackBol, PChar('ModuloBoleto'));

      if not Assigned(ExecMB) then
        exit;

      ExecMB(Application, Conexao, rblGeracao, Self.Acesso, vlGebCodigo);
      Result := True;
    except
      on e: Exception do
      begin
        Application.MessageBox(PChar('Falha na geração dos boletos.' + #13 + #13 + 'Utilize o módulo Cobrança Bancária para gerar novamente.'),
          'Atenção', MB_OK + MB_ICONWARNING);
        SalvarLogErro(e.Message, e.StackTrace);
        Result := False;
        exit;
      end;
    end;
  finally
    DoUnLoadPackage(Application, vpPackBol);
  end;
end;

procedure TFprinciAte.AjustaCarteiraCobranca(vmeschave: string);
var
  vlCarCodigo: string;
  vlQRfi: TUniQuery;
  vlQCar: TUniQuery;
  vlBcoCodigo: string;

begin

  consulta.Close;
  consulta.SQL.Text := 'select count(carcodigo) from car where cargeraboleto=1';
  consulta.Open;

  if consulta.Fields[0].AsInteger >= 1 then
  begin
    try
      consulta.Close;
      consulta.SQL.Text := 'SELECT r.rfichave FROM rfi r ';
      consulta.SQL.add('JOIN rfm r1 ON r.rfichave = r1.rfichave AND r1.meschave = :meschave ');
      consulta.SQL.add('WHERE r.tfdcodigo = 2');
      consulta.Params[0].AsString := vmeschave;
      consulta.Open;

      vlCarCodigo := SelecionaCarteiraBoleto;

      vlQCar := TUniQuery.Create(Self);
      vlQCar.Connection := Conexao;
      vlQCar.Name := 'vlQCar';
      vlQCar.SQL.Text := 'select bcocodigo from car where carcodigo=' + vlCarCodigo;
      vlQCar.Open;
      vlBcoCodigo := vlQCar.FieldByName('bcocodigo').AsString;
      vlQCar.Close;

      vlQRfi := TUniQuery.Create(Self);
      vlQRfi.Connection := Conexao;
      vlQRfi.Name := 'vlQRfi';

      consulta.Close;
      consulta.SQL.Text := 'SELECT r.rfichave FROM rfi r ';
      consulta.SQL.add('JOIN rfm r1 ON r.rfichave = r1.rfichave AND r1.meschave = :meschave ');
      consulta.SQL.add('WHERE r.tfdcodigo = 2');
      consulta.Params[0].AsString := vmeschave;
      consulta.Open;

      consulta.First;
      while not consulta.Eof do
      begin

        vlQRfi.SQL.Clear;
        vlQRfi.SQL.Text := 'update rfi set bcocodigo=' + QuotedStr(vlBcoCodigo) + ', carcodigo=' + vlCarCodigo + ' where rfichave=' +
          consulta.FieldByName('rfichave').AsString;
        vlQRfi.ExecSQL;
        consulta.Next;
      end;

    finally
      FreeAndNil(vlQCar);
      FreeAndNil(vlQRfi);
    end;

  end
  else
  begin
    try
      consulta.Close;
      consulta.SQL.Text := 'select carcodigo from car where cargeraboleto=1';
      consulta.Open;
      vlCarCodigo := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'SELECT r.rfichave FROM rfi r ';
      consulta.SQL.add('JOIN rfm r1 ON r.rfichave = r1.rfichave AND r1.meschave = :meschave ');
      consulta.SQL.add('WHERE r.tfdcodigo = 2');
      consulta.Params[0].AsString := vmeschave;
      consulta.Open;

      vlQCar := TUniQuery.Create(Self);
      vlQCar.Connection := Conexao;
      vlQCar.Name := 'vlQCar';
      vlQCar.SQL.Text := 'select bcocodigo from car where carcodigo=' + vlCarCodigo;
      vlQCar.Open;
      vlBcoCodigo := vlQCar.FieldByName('bcocodigo').AsString;
      vlQCar.Close;

      vlQRfi := TUniQuery.Create(Self);
      vlQRfi.Connection := Conexao;
      vlQRfi.Name := 'vlQRfi';

      consulta.First;
      while not consulta.Eof do
      begin

        vlQRfi.SQL.Clear;
        vlQRfi.SQL.Text := 'update rfi set bcocodigo=' + QuotedStr(vlBcoCodigo) + ', carcodigo=' + vlCarCodigo + ' where rfichave=' +
          consulta.FieldByName('rfichave').AsString;
        vlQRfi.ExecSQL;
        consulta.Next;
      end;
    finally
      FreeAndNil(vlQCar);
      FreeAndNil(vlQRfi);
    end;
  end;
end;

function TFprinciAte.SelecionaCarteiraBoleto: String;
type
  Tlistacarteirasboletos = function(owner: TApplication; Acesso: TAcesso; zCone: TUniConnection): string;
var
  Seleciona: Tlistacarteirasboletos;
  vlRetorno: string;
  vlActCodigo: Integer;
  vlPack: Cardinal;
begin

  Result := '';

  vlPack := LoadPackage('modulos\mcar.bpl');
  if vlPack <> 0 then
    try
      @Seleciona := GetProcAddress(vlPack, PChar('listacarteirasboletos'));

      if Assigned(Seleciona) then
      begin
        Result := Seleciona(Application, Acesso, Conexao);

      end;
    finally
      DoUnLoadPackage(Application, vlPack);
    end;

end;

function TFprinciAte.ModuloNFCe(vfuncao: string; Acesso: TAcesso; vmeschave: string; vImprimir: Boolean): Boolean;
var
  ModuloNFCe: TModuloNFCe;
  vlRetorno: Boolean;
begin
  Result := False;

  if vpPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vpPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Conexao, vmeschave, vfuncao, Acesso, vImprimir, vpConsultouSefaz, '');
    Result := vlRetorno;
    vpConsultouSefaz := True;
  end;
End;

procedure TFprinciAte.ActImprimeCaixaExecute(Sender: TObject);
begin
  if not ActImprimeCaixa.Enabled then
    exit;

  if ccx.Active then
    ImprimeComprovantesCaixa(ocxFechamento);

  AjustaCaixa;

end;

procedure TFprinciAte.imaconexao5Click(Sender: TObject);
begin
  if plInfoTopo.Visible then
    plInfoTopo.Visible := False
  else
    plInfoTopo.Visible := True;
end;

Function TFprinciAte.Finaliza(Vchave: String): String;
Var
  vlRegistra: TRegistraLoteEnt;

  // vlRegistra: Tregistralotedatagourmet;

  Vpri: String;
  Vjur: String;
  vMulta: String;
  Vdes: String;
  vPodeConvenio: Boolean;

  vlPacklte: Cardinal;

  vlDia: TDate;

Begin

  If not orc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  vlPacklte := LoadPackage('modulos\mlte.bpl');
  If vlPacklte <> 0 Then
    Try
      @vlRegistra := GetProcAddress(vlPacklte, PChar('registraloteent'));;
      If Assigned(vlRegistra) Then
      Begin
        If orcpuocodigo.AsInteger = puoAVista Then
        Begin
          Vpri := BuscaTroca(Self.orcorcgeralav.AsString, ',', '.');
          Vdes := BuscaTroca(Self.orcorcdescontoav.AsString, ',', '.');
        End
        Else
        Begin
          Vpri := BuscaTroca(Self.orcorcgeralap.AsString, ',', '.');
          Vdes := BuscaTroca(Self.orcorcdescontoap.AsString, ',', '.');
        End;
        Vjur := '0';
        vMulta := '0';

        // vlTeclaFinalizador,
        // vpValorFinalizador

        if vpEtdCodigo = '0' then
          vPodeConvenio := False
        else
          vPodeConvenio := True;

        // result := vlRegistra(Application, conexao, Vchave, ACESSO.Terminal.ToString, Vpri, vMulta, Vjur, Vdes, ACESSO, inttostr(tfdVenda),
        // vlDia,vPodeConvenio, vpTeclaFinalizador, vpValorFinalizador, True, StrToInt(vpCtaCodigo), false, True, vpccxchave);

        Result := vlRegistra(Application, Conexao, Vchave, Acesso.Terminal.ToString, Vpri, vMulta, Vjur, Vdes, Acesso, IntToStr(tfdVenda),
          vPodeConvenio, 0, 0, True, StrToInt(vpCtaCodigo), False, False, vpccxchave.ToString);
      End;
    Finally
      DoUnLoadPackage(Application, vlPacklte);
    End;
End;

procedure TFprinciAte.AplicaDescontoGeral;
Var
  Ajustadesconto: Tajustadesconto;
  SVlrDesc: String;
  VRetAjuDesc: String;
  // Recebe retorno da função de ajuste do desconto
  VTotProdutos: Double;
  VTotAcrescimos: Double;

  vlPackDes: Cardinal;
Begin
  If not orc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  VTotProdutos := 0;
  VTotAcrescimos := 0;

  (* Soma o total dos itens sem produtos do tipo Serviço *)
  consulta.Close;
  consulta.SQL.Text :=
    'SELECT SUM(itototalav)+sum((itoacrescimoav/itoquantidade)), SUM(itototalap)+itoacrescimoav , sum((itoacrescimoav/itoquantidade)) FROM ito, pro ';
  consulta.SQL.add('WHERE ito.procodigo = pro.procodigo ');
  consulta.SQL.add('AND ito.stocodigo IN (1, 2, 3) ');

  if cfgcfgdescontonoservico.AsInteger = 0 then
    consulta.SQL.add('AND pro.tpocodigo <> ' + IntToStr(tpoServicos) + ' ');

  consulta.SQL.add('AND ito.orcchave = ' + orcorcchave.AsString);
  consulta.Open;

  VTotAcrescimos := consulta.Fields[2].AsCurrency;

  if (consulta.IsEmpty) and (cfgcfgdescontonoservico.AsInteger = 0) then
  begin
    Showmessage('Este orçamento possui somente itens de Serviço.' + #13 + 'Utilize a função "Ajusta Preço (F5)"!');
    exit;
  end
  else If vpTipoPreco = puoAPrazo Then
    VTotProdutos := consulta.Fields[1].AsFloat
  else
    VTotProdutos := consulta.Fields[0].AsFloat;

  (* Identifica se já foi dado desconto e avisa usuário que o desc. Geral irá substituir os demais *)
  If ((orcpuocodigo.AsInteger = puoAVista) AND (orcorcdescontoav.AsFloat > 0)) or
    ((orcpuocodigo.AsInteger = puoAPrazo) AND (orcorcdescontoap.AsFloat > 0)) Then
    If Application.MessageBox(PChar('Desconto Geral substitui descontos existentes.' + #13 + 'Deseja continuar ?'), 'Atenção',
      MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDNO Then
      exit;

  vlPackDes := LoadPackage('modulos\mdes.bpl');
  If vlPackDes <> 0 Then
    Try

      @Ajustadesconto := GetProcAddress(vlPackDes, PChar('ajustadesconto'));

      If Assigned(Ajustadesconto) Then
      Begin
        If vpTipoPreco = puoAPrazo Then
        Begin
          VRetAjuDesc := Ajustadesconto(Application, Conexao, Floattostr(orcorcdescontoap.AsFloat), '0', Floattostr(VTotProdutos),
            Floattostr(VTotProdutos), 'Geral', Acesso.Usuario.ToString, ldescmaximo.Caption, '1', orcorcchave.AsString);
        End
        Else
        Begin
          VRetAjuDesc := Ajustadesconto(Application, Conexao, Floattostr(orcorcdescontoav.AsFloat), '0', Floattostr(VTotProdutos),
            Floattostr(VTotProdutos), 'Geral', Acesso.Usuario.ToString, ldescmaximo.Caption, '1', orcorcchave.AsString);
        End;
      End;
    Finally
      DoUnLoadPackage(Application, vlPackDes);
    End;

  If ldescmaximo.Caption = '' Then
    ldescmaximo.Caption := '0';

  If copy(VRetAjuDesc, 1, 2) = '0$' Then
    SVlrDesc := '0'
  else
    SVlrDesc := copy(VRetAjuDesc, 1, pos('$', VRetAjuDesc) - 1);

  If Not(SVlrDesc = '') Then
    If vpTipoPreco = puoAPrazo Then
    Begin

      zPCalcDescAP.SQL.Clear;
      zPCalcDescAP.SQL.add('SET @OrcChave = :orcchave;');
      zPCalcDescAP.SQL.add('SET @Desconto = :Desconto;');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('SET @Total = (SELECT ');
      zPCalcDescAP.SQL.add('    SUM(itototalap)');
      zPCalcDescAP.SQL.add('  FROM ito,');
      zPCalcDescAP.SQL.add('       pro');
      zPCalcDescAP.SQL.add('  WHERE ito.procodigo = pro.procodigo');
      zPCalcDescAP.SQL.add('  AND ito.stocodigo NOT IN (8, 88)');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAP.SQL.add('  AND pro.tpocodigo <> 9');

      zPCalcDescAP.SQL.add('  AND orcchave = @OrcChave);');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('UPDATE ito, pro ');
      zPCalcDescAP.SQL.add('SET itodescontoap = ROUND((@Desconto * (itototalap / @Total)), 2),');
      zPCalcDescAP.SQL.add('    ito.itopercdescap = (ito.itodescontoap / ito.itototalap) * 100,');
      zPCalcDescAP.SQL.add('    tdecodigo = 1 ');
      zPCalcDescAP.SQL.add('WHERE ito.procodigo = pro.procodigo ');
      zPCalcDescAP.SQL.add('AND ito.stocodigo NOT IN (8, 88) ');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAP.SQL.add('AND pro.tpocodigo <> 9 ');

      zPCalcDescAP.SQL.add('AND orcchave = @OrcChave;');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('/*Trata Diferença de valor definido para desconto e valor calculado*/');
      zPCalcDescAP.SQL.add('SET @DifDesconto = @Desconto - (SELECT ');
      zPCalcDescAP.SQL.add('    ROUND(SUM(itodescontoap), 2) ');
      zPCalcDescAP.SQL.add('  FROM ito ');
      zPCalcDescAP.SQL.add('  WHERE orcchave = @OrcChave ');
      zPCalcDescAP.SQL.add('  AND ito.stocodigo NOT IN (8, 88));');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('/*Identifica item de maior percentual*/');
      zPCalcDescAP.SQL.add('SET @ChaveMaiorPerc = (SELECT ');
      zPCalcDescAP.SQL.add('    itochave');
      zPCalcDescAP.SQL.add('  FROM ito,');
      zPCalcDescAP.SQL.add('       pro    ');
      zPCalcDescAP.SQL.add('  WHERE ito.procodigo = pro.procodigo ');
      zPCalcDescAP.SQL.add('  AND ito.stocodigo NOT IN (8, 88) ');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAP.SQL.add('  AND pro.tpocodigo <> 9 ');

      zPCalcDescAP.SQL.add('  AND orcchave = @OrcChave ');
      zPCalcDescAP.SQL.add('  ORDER BY (itototalap / @Total) DESC LIMIT 1);');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('');
      zPCalcDescAP.SQL.add('UPDATE ito, pro ');
      zPCalcDescAP.SQL.add('SET itodescontoap = (itodescontoap + @DifDesconto),');
      zPCalcDescAP.SQL.add('    ito.itopercdescap = (ito.itodescontoap / ito.itototalap) * 100 ');
      zPCalcDescAP.SQL.add('WHERE ito.procodigo = pro.procodigo ');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAP.SQL.add('AND pro.tpocodigo <> 9 ');

      zPCalcDescAP.SQL.add('AND itochave = @ChaveMaiorPerc;');

      zPCalcDescAP.ParamByName('orcchave').AsString := orcorcchave.AsString;
      zPCalcDescAP.ParamByName('Desconto').AsString := BuscaTroca(SVlrDesc, ',', '.');
      zPCalcDescAP.Execute;
    End
    Else
    Begin

      zPCalcDescAV.SQL.add(' SET @OrcChave = :orcchave;');
      zPCalcDescAV.SQL.add('SET @Desconto = :Desconto;');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('SET @Total = (SELECT');
      zPCalcDescAV.SQL.add('    SUM(itototalav)');
      zPCalcDescAV.SQL.add('  FROM ito,');
      zPCalcDescAV.SQL.add('       pro');
      zPCalcDescAV.SQL.add('  WHERE ito.procodigo = pro.procodigo ');
      zPCalcDescAV.SQL.add('  AND ito.stocodigo NOT IN (8, 88) ');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAV.SQL.add('  AND pro.tpocodigo <> 9 ');

      zPCalcDescAV.SQL.add('  AND orcchave = @OrcChave);');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('UPDATE ito, pro ');
      zPCalcDescAV.SQL.add('SET itodescontoav = ROUND((@Desconto * (itototalav / @Total)), 2), ');
      zPCalcDescAV.SQL.add('    ito.itopercdescav = (ito.itodescontoav / ito.itototalav) * 100, ');
      zPCalcDescAV.SQL.add('    tdecodigo = 1 ');
      zPCalcDescAV.SQL.add('WHERE ito.procodigo = pro.procodigo ');
      zPCalcDescAV.SQL.add('AND ito.stocodigo NOT IN (8, 88) ');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAV.SQL.add('AND pro.tpocodigo <> 9 ');

      zPCalcDescAV.SQL.add('AND orcchave = @OrcChave;');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('/*Trata Diferença de valor definido para desconto e valor calculado*/');
      zPCalcDescAV.SQL.add('SET @DifDesconto = @Desconto - (SELECT ');
      zPCalcDescAV.SQL.add('    ROUND(SUM(itodescontoav), 2) ');
      zPCalcDescAV.SQL.add('  FROM ito');
      zPCalcDescAV.SQL.add('  WHERE orcchave = @OrcChave');
      zPCalcDescAV.SQL.add('  AND ito.stocodigo NOT IN (8, 88));');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('/*Identifica item de maior percentual*/');
      zPCalcDescAV.SQL.add('SET @ChaveMaiorPerc = (SELECT');
      zPCalcDescAV.SQL.add('    itochave');
      zPCalcDescAV.SQL.add('  FROM ito,');
      zPCalcDescAV.SQL.add('       pro');
      zPCalcDescAV.SQL.add('  WHERE ito.procodigo = pro.procodigo');
      zPCalcDescAV.SQL.add('  AND ito.stocodigo NOT IN (8, 88)');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAV.SQL.add('  AND pro.tpocodigo <> 9');

      zPCalcDescAV.SQL.add('  AND orcchave = @OrcChave');
      zPCalcDescAV.SQL.add('  ORDER BY (itototalav / @Total) DESC LIMIT 1);');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('');
      zPCalcDescAV.SQL.add('UPDATE ito, pro ');
      zPCalcDescAV.SQL.add('SET itodescontoav = (itodescontoav + @DifDesconto), ');
      zPCalcDescAV.SQL.add('    ito.itopercdescav = (ito.itodescontoav / ito.itototalav) * 100 ');
      zPCalcDescAV.SQL.add('WHERE ito.procodigo = pro.procodigo');

      if cfgcfgdescontonoservico.AsInteger = 0 then
        zPCalcDescAV.SQL.add('AND pro.tpocodigo <> 9 ');

      zPCalcDescAV.SQL.add('AND itochave = @ChaveMaiorPerc; ');

      zPCalcDescAV.ParamByName('orcchave').AsString := orcorcchave.AsString;
      zPCalcDescAV.ParamByName('Desconto').AsString := BuscaTroca(SVlrDesc, ',', '.');
      zPCalcDescAV.Execute;
    End;

  orc.Edit;
  orctdecodigo.AsInteger := tdeTotal;
  orc.Post;

  Recalculatotal;
end;

procedure TFprinciAte.AplicaDescontoItem;
Var
  vStrDesconto: String;
  vDesconto: Double;

  vStrTotalLiq: String;
  vTotalLiq: Double;

  vStrPercentual: String;
  vPercentual: Double;

  Ajustadesconto: Tajustadesconto;
  vDescRetorno: String;

  vlPackDes: Cardinal;

Begin
  If not orc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  vDesconto := 0;

  If litoitototal.AsFloat = 0 Then
    exit;

  { if litotpocodigo.AsInteger = 9 then
    begin
    ShowMessage('Este item é do tipo Serviço.' + #13 + 'Utilize a função "Ajusta Preço (F5)"!');
    Exit;
    end; }

  If ito.Active Then
    If ito.State <> dsbrowse Then
      ito.Post;

  ito.Refresh;

  If ito.Locate('itochave', litoitochave.AsInteger, []) Then
  Begin
    try
      vlPackDes := LoadPackage('modulos\mdes.bpl');
      If vlPackDes <> 0 Then
        Try

          @Ajustadesconto := GetProcAddress(vlPackDes, PChar('ajustadesconto'));

          If Assigned(Ajustadesconto) Then
          Begin
            If vpTipoPreco = puoAPrazo Then
              vDescRetorno := Ajustadesconto(Application, Conexao, itoitodescontoap.AsString, itoitopercdescap.AsString,
                Floattostr(itoitovalorap.AsFloat + itoitoacrescimoav.AsFloat), Floattostr(itoitototalap.AsFloat + itoitoacrescimoav.AsFloat),
                'No Item', Acesso.Usuario.ToString, ldescmaximo.Caption, '2', orcorcchave.AsString)
            Else
              vDescRetorno := Ajustadesconto(Application, Conexao, itoitodescontoav.AsString, itoitopercdescav.AsString,
                Floattostr(itoitovalorap.AsFloat + itoitoacrescimoav.AsFloat), Floattostr(itoitototalav.AsFloat + itoitoacrescimoav.AsFloat),
                'No Item', Acesso.Usuario.ToString, ldescmaximo.Caption, '2', orcorcchave.AsString);

            if (copy(vDescRetorno, 1, 1) <> '$') and (vDescRetorno <> '') Then
            begin
              vStrDesconto := copy(vDescRetorno, 1, pos('$', vDescRetorno) - 1);
              vDescRetorno := copy(vDescRetorno, pos('$', vDescRetorno) + 1, 200);
              vStrTotalLiq := copy(vDescRetorno, 1, pos('#', vDescRetorno) - 1);
              vDescRetorno := copy(vDescRetorno, pos('#', vDescRetorno) + 1, 200);
              vStrPercentual := copy(vDescRetorno, 1, pos('@', vDescRetorno) - 1);

              vDesconto := StrToFloat(vStrDesconto);
              vTotalLiq := StrToFloat(vStrTotalLiq);
              vPercentual := StrToFloat(vStrPercentual);
            End
            Else
              vDesconto := 0;

          End;
        Finally
          // DoUnLoadPackage(pack); Gabriel - 15/07/2013 - Está gerando erro no finalizar a venda.
        End;

    finally
      DoUnLoadPackage(Application, vlPackDes);
    end;
    If pos('@', vDescRetorno) > 0 Then
    Begin
      If (ito.Locate('itochave', litoitochave.AsInteger, [])) Then
      Begin
        ito.Edit;

        If orcpuocodigo.AsInteger = puoAVista Then
        begin
          itoitodescontoav.AsFloat := vDesconto;
          itoitopercdescav.AsFloat := vPercentual;
        end
        else
        begin
          itoitodescontoap.AsFloat := vDesconto;
          itoitopercdescap.AsFloat := vPercentual;
        end;

        if vDesconto > 0 then
        begin
          itotdecodigo.AsInteger := tdeIndividual;

          orc.Edit;
          orctdecodigo.AsInteger := tdeIndividual;
          orc.Post;
        end
        else
          itotdecodigo.AsInteger := tdeSemDesconto;

        ito.Post;
      End;

      vpOrcChave := orcorcchave.AsString;
      Recalculatotal;
    End;

  End;
end;

procedure TFprinciAte.ActLiberaBloqParcialExecute(Sender: TObject);
begin
  vpBloqueioLiberado := True;
end;

procedure TFprinciAte.ActLiberaBloqTotalExecute(Sender: TObject);
begin
  vpBloqueioLiberado := True;
end;

procedure TFprinciAte.ActLimpaAtendimentoExecute(Sender: TObject);
begin

  if lito.Active then
  begin
    If Application.MessageBox(PChar('Deseja cancelar a venda ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES Then
    begin

      consulta.Close;
      consulta.SQL.Text := 'UPDATE orc SET stocodigo = 88 WHERE orcchave=' + vpOrcChave;
      consulta.ExecSQL;

      AtualizaSituacaoItens(vpOrcChave, stoCancelado, tdfMovimentoEmAndamento);

      consulta.Close;
      consulta.SQL.Text := 'DELETE FROM uoc WHERE orcchave=' + vpOrcChave;
      consulta.ExecSQL;

      orc.Refresh;
      lito.Refresh;

    end;

  end;

end;

procedure TFprinciAte.ActListaCaixasExecute(Sender: TObject);
var
  vCcxChave: string;
begin
  vCcxChave := MostraLista('mccx', '', '');
  if vCcxChave <> '' then
    ImprimirComprovantesCCX(Application, Conexao, StrToInt(vCcxChave), ocxFechamento, trmtciporta.AsString, tiImprimirDireto);

end;

procedure TFprinciAte.ActProdutosExecute(Sender: TObject);
Var
  vlRetorno: String;
  vlFiltro: String;
Begin
  vlFiltro := '(tpocodigo=0 or tpocodigo=4 or tpocodigo=9)';

  vlRetorno := MostraLista('mpro', vlFiltro);
  If vlRetorno <> '' Then
    If StrToInt(vlRetorno) > 0 Then
      IncluirNovoItem(StrToInt(vlRetorno), 0);
end;

procedure TFprinciAte.ActReimprimeAberturaExecute(Sender: TObject);
begin
  if FileExists(Extractfilepath(Application.ExeName) + 'relat\AberturaCCX.fr3') then
    ImprimeComprovantesCaixa(ocxAbertura);
end;

procedure TFprinciAte.ActReimprimeComprovanteExecute(Sender: TObject);
begin
  ListaComprovantes;
end;

procedure TFprinciAte.ActReimprimeFechamentoExecute(Sender: TObject);
begin
  if FileExists(Extractfilepath(Application.ExeName) + 'relat\FechamentoCCX.fr3') then
    ImprimeComprovantesCaixa(ocxFechamento);
end;

procedure TFprinciAte.ActReimprimeNFCesExecute(Sender: TObject);
begin
  ListaNFCE;
end;

procedure TFprinciAte.ActReimprimeSangriaExecute(Sender: TObject);
begin
  if FileExists(Extractfilepath(Application.ExeName) + 'relat\SangriaCCX.fr3') then
    ImprimeComprovantesCaixa(ocxSangria);

end;

procedure TFprinciAte.ActReimprimeSuprimentoExecute(Sender: TObject);
begin
  if FileExists(Extractfilepath(Application.ExeName) + 'relat\SuprimentoCCX.fr3') then
    ImprimeComprovantesCaixa(ocxSuprimento);
end;

procedure TFprinciAte.ActReimprimeTEFExecute(Sender: TObject);
var
  vDirRelat: String;
begin

  if vpMesChave <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT DISTINCT dtl.dtlvalor,  mdaidentificacao,  rdc.rdccomprovante1via,  rdc.rdccomprovante2via ';
    consulta.SQL.add('FROM dtl, mda, mlt, mfi, rfm, mes, ltr, rdc ');
    consulta.SQL.add('WHERE dtl.mdacodigo = mda.mdacodigo ');
    consulta.SQL.add('AND dtl.dtlchave = ltr.dtlchave ');
    consulta.SQL.add('AND ltr.rdcchave = rdc.rdcchave ');
    consulta.SQL.add('AND mlt.ltechave = dtl.ltechave ');
    consulta.SQL.add('AND mlt.mfichave = mfi.mfichave ');
    consulta.SQL.add('AND mfi.rfichave = rfm.rfichave ');
    consulta.SQL.add('AND rfm.meschave = mes.meschave ');
    consulta.SQL.add('AND mes.meschave = ' + vpMesChave);
    consulta.SQL.add('AND mfi.mfivalor <> 0 ');
    consulta.SQL.add('GROUP BY dtl.mdacodigo');
    consulta.Open;

    if consulta.FieldByName('rdccomprovante1via').AsString <> '' then
    begin
      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\tefccx1via.fr3';
      ImprimirComprovantesPDV(Application, Conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimirDireto);

      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\tefccx2via.fr3';
      ImprimirComprovantesPDV(Application, Conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimirDireto);

    end;

  end;

end;

function TFprinciAte.IncluirNovoItem(Produto, Embalagem: Integer; Variacao: Integer = 0; Quantidade: Double = 0; pcocodigo: Integer = 0): Boolean;
Var
  VProCodigo: Integer;
  VUniCodigo: Integer;
  vItoChave: Integer;

  (* Variáveis para tratar novo item no orçamento *)
  VNovoItem: Boolean;
  VEstoqueDisponivel: Boolean;
  // Recebe retorno que identifica se produto tem saldo disponível
  VQuantidade: Double; // Recebe quantidade para ser lançada no novo item
  VQuantidadeTotal: Double;
  VTextoQuantidade: String;
  // Utilizada quando produto tem saldo positivo menor que um
  VPodeQuantidade: Boolean;
  // Utilizada quando produto tem saldo positivo menor que um
  VMensagem: String; // Utilizada quando produto tem saldo positivo menor que um
  vlValor: Double;
Begin
  Try

    lito.DisableControls;
    Try
      If (Produto <> 0) Then
      Begin
        qpro.Close;
        qpro.Params[0].AsInteger := Produto;
        qpro.Open;

        if qpro.IsEmpty then
          exit;

        // Verifica se o item está inativo e avisa usuário.
        if qprosipcodigo.AsInteger = 2 then
        begin
          Application.MessageBox(PChar('Produto desativado não pode ser vendido.'), 'Produto Inativo', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
          exit;
        end;

        // Identifica se item tem mais de uma unidade de venda
        If (qpro.RecordCount > 1) Then
        begin
          if not(qpro.Locate('puncodigo', Embalagem, [])) then
          begin
            Application.CreateForm(Tlunidades, Lunidades);
            Lunidades.Dqpro.DataSet := qpro;
            if cfgcfgusapdv.AsInteger = 1 then
              Lunidades.lista.Columns[3].Visible := False;

            Lunidades.ShowModal;
          end;
        end;

        VProCodigo := qproprocodigo.AsInteger;
        VUniCodigo := qprounicodigo.AsInteger;

        lista.Visible := True;

        VNovoItem := True;

        try
          If (lito.Active) Then
            if cfgcfgusapdv.AsInteger = 0 then
            begin
              If (lito.Locate('procodigo;unicodigo;stocodigo', VarArrayOf([VProCodigo, VUniCodigo, stoEmDigitacao]), [])) Then
              Begin
                consulta.Close;
                consulta.SQL.Text := 'select probalanca from pro where procodigo=' + IntToStr(VProCodigo) + ' and unicodigo=' + IntToStr(VUniCodigo);
                consulta.Open;
                if consulta.Fields[0].AsString = '0' then
                begin
                  AjustaQuantidade(1, taqSoma);
                  VNovoItem := False;
                end
                else
                begin
                  if trmtciporta.AsString <> '' then
                  begin
                    VNovoItem := True;
                  end;
                end;
                consulta.Close;
              End;
            end;
        except
          on e: Exception do
          begin
            Application.MessageBox(PChar('Erro ao adicionar quantidade ao produto: ' + IntToStr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message),
              'Erro', MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
            SalvarLogErro(e.Message, e.StackTrace);

            lito.EnableControls;
          end;
        end;

        If (VNovoItem) Then
        Begin
          Try

            if vpQuantidade = 0 then
              vpQuantidade := 1;

            VQuantidade := vpQuantidade;
            consulta.Close;
            consulta.SQL.Text := 'select probalanca from pro where procodigo=' + IntToStr(VProCodigo) + ' and unicodigo=' + IntToStr(VUniCodigo);
            consulta.Open;

            // Verifica se produto tem saldo positivo menor que um.
            if (qproprosaldodisp.AsFloat > 0) and (qproprosaldodisp.AsFloat < 1) and (consulta.Fields[0].AsString = '0') then
            begin
              VMensagem := 'Produto possui apenas ' + Format('%2.4n', [qproprosaldodisp.AsFloat]);
              VMensagem := VMensagem + ' de saldo disponível!';
              VMensagem := VMensagem + #13 + #13 + 'Por favor, indique a quantidade a ser vendida a seguir.';

              Application.MessageBox(PChar(VMensagem), PChar('Informação'), MB_OK + MB_ICONINFORMATION);
              VQuantidade := qproprosaldodisp.AsFloat;

              repeat
                VPodeQuantidade := False;
                VTextoQuantidade := '0';

                InputQuery('Quantidade', 'Informe a quantidade:', VTextoQuantidade);

                try
                  VQuantidade := StrToFloat(VTextoQuantidade);
                  if VQuantidade > 0 then
                    VPodeQuantidade := True;
                except
                  VPodeQuantidade := False;
                end;

              until (VPodeQuantidade);
            end;

            // Soma quantidade total do item se tiver lançado no orçamento com outra unidade.
            VQuantidadeTotal := VQuantidade + QuantiTotalItemOrc(VProCodigo, VUniCodigo);

            // Verifica se produto tem saldo suficiente.
            VEstoqueDisponivel := True;

            if cfgcfgcontrolaestoquedisp.AsInteger = 1 then
              VEstoqueDisponivel := PermiteQuantidade(VProCodigo, VUniCodigo, VQuantidadeTotal);

          except
            on e: Exception do
            begin
              Application.MessageBox(PChar('Erro ao verificar quantidade do produto: ' + IntToStr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message),
                'Erro', MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
              SalvarLogErro(e.Message, e.StackTrace);

              lito.EnableControls;
            end;
          end;

          Case VEstoqueDisponivel of
            True:
              try
                // Caso produto tenha saldo disponível item é incluído no orçamento

                if orc.Active = False then
                begin
                  // orc.Params[0].AsInteger:=
                  orc.Params[1].AsInteger := Acesso.Filial;
                  orc.Open;
                end;

                If (orcorcchave.AsInteger = 0) or (orcorcchave.AsString = '') Then
                begin

                  orc.Close;
                  Novoorcamento;
                end;

                If (Not ito.Active) Then
                Begin
                  ito.Params[0].AsInteger := StrToInt(vpOrcChave);
                  ito.Params[1].AsInteger := Acesso.Filial;
                  ito.Open;
                End;

                ito.Append;
                itotdfcodigo.AsString := tdfRequisitado;
                itoflacodigo.AsInteger := Acesso.Filial;
                itotdecodigo.AsInteger := orctdecodigo.AsInteger;
                itoorcchave.AsInteger := orcorcchave.AsInteger;
                itostocodigo.AsInteger := orcstocodigo.AsInteger;
                itoitoitem.AsInteger := lito.RecordCount + 1;

                itoorcchave.AsInteger := orcorcchave.AsInteger;
                itoitodescontoav.AsFloat := 0;
                itoitodescontoap.AsFloat := 0;
                itoprocodigo.AsInteger := VProCodigo;

                consulta.Close;
                consulta.SQL.Text := 'select probalanca, procodigo from pro where procodigo=' + QuotedStr(IntToStr(VProCodigo));
                consulta.Open;

                if (trmtrmbalaporta.AsString <> '') then
                begin

                  if (consulta.FieldByName('probalanca').AsString = '1') then
                  begin
                    if (trmtrmbalaporta.AsString <> '') and (((copy(VCBarra, 1, 1) <> '2') and (Length(VCBarra) = 0)) and
                      (consulta.FieldByName('probalanca').AsString = '1')) or
                      (((copy(VCBarra, 1, 1) <> '2') and (Trim(copy(VCBarra, 1, 1)) <> '') and (consulta.FieldByName('procodigo').AsString = VCBarra)))
                    then
                    begin

                    end;
                  end
                  else
                  begin
                    VQuantidade := vpQuantidade;
                  end;
                end;

                itoitovalorav.AsFloat := qpropunprecoav.AsFloat;

                itoitocontendo.AsFloat := qpropunmultiplicador.AsFloat;
                itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
                itounicodigo.AsInteger := qprounicodigo.AsInteger;

                VUniCodigo := qprounicodigo.AsInteger;

                itoitoquantidade.AsFloat := VQuantidade;

                itoitototalav.AsFloat := itoitoquantidade.AsFloat * itoitovalorav.AsFloat;

                itoitosaldoav.AsFloat := itoitototalav.AsFloat;

                if cfgcfgdoisprecos.AsInteger = 1 then
                begin

                  if ParaFilial then
                    itoitovalorav.AsFloat := qpropuncusto.AsCurrency
                  else
                    itoitovalorav.AsFloat := qpropunprecoav.AsFloat;

                end
                else
                begin
                  itoitovalorap.AsFloat := 0;
                end;

                itoitototalap.AsFloat := itoitoquantidade.AsFloat * itoitovalorap.AsFloat;
                itoitosaldoap.AsFloat := itoitototalap.AsFloat;

                ito.Post;

                vpQuantidade := 1;
                vItoChave := itoitochave.AsInteger;

                lito.Refresh;
                ito.Edit;

                lito.Refresh;

                { *  verifica se nao se trata de PDV, dai localiza o item ja digitado com este codigo * }
                if cfgcfgusapdv.AsInteger = 0 then
                begin
                  lito.Locate('procodigo;unicodigo;stocodigo', VarArrayOf([VProCodigo, VUniCodigo, stoEmDigitacao]), []);
                end;

                (*
                  * Se produto não tem Preço definido
                  * chama função para usuário definir
                *)

                if cfgcfgusapdv.AsInteger = 1 then
                begin
                  lito.Locate('itochave', vItoChave, []);
                end;

                repeat
                  If (litoitovalor.AsFloat = 0) Then
                  begin
                    if litoitochave.AsString <> '' then
                      if litoitochave.AsInteger <> 0 then
                        AjustaPreco(litoitochave.AsInteger);
                  end;

                  if (litoitovalor.AsFloat = 0) then
                    if litoitochave.AsString <> '' then
                      Application.MessageBox(PChar('Valor de venda precisa ser definido!'), 'Atenção', MB_ICONWARNING + MB_OK);
                until (litoitovalor.AsFloat > 0);

                if orctdecodigo.AsInteger = tdeTotal then
                begin
                  Application.MessageBox(PChar('Desconto Geral foi cancelado!'), 'Atenção', MB_ICONWARNING + MB_OK);

                  if orc.State <> dsEdit then
                    orc.Edit;

                  orctdecodigo.AsInteger := tdeSemDesconto;

                  If vpTipoPreco = puoAPrazo Then
                  Begin

                    zPCalcDescAP.ParamByName('orcchave').AsString := orcorcchave.AsString;
                    zPCalcDescAP.ParamByName('Desconto').AsFloat := 0;
                    zPCalcDescAP.Execute;
                  End
                  else
                  begin
                    zPCalcDescAV.ParamByName('orcchave').AsString := orcorcchave.AsString;
                    zPCalcDescAV.ParamByName('Desconto').AsFloat := 0;
                    zPCalcDescAV.Execute;

                  end;

                end;

                {
                  verificar
                  Bquantidade.Visible := True;
                  Bdescontoitem.Visible := True;
                  Bdescontogeral.Visible := True;
                  Bfechamento.Visible := True;
                  Bcancelaitem.Visible := True;
                  Bcondicional.Visible := True;
                  lista.Visible := True;


                }

              except
                on e: Exception do
                begin
                  Application.MessageBox(PChar('Erro ao adicionar o produto: ' + IntToStr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message), 'Erro',
                    MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);

                  SalvarLogErro(e.Message, e.StackTrace);
                  lito.EnableControls;
                end;
              end;
          End;
        End;

        try
          Recalculatotal;
          if cfgcfgusapdv.AsInteger = 0 then
          begin
            lito.Locate('procodigo;unicodigo', VarArrayOf([VProCodigo, VUniCodigo]), []);
          end;
        except
          on e: Exception do
          begin
            Application.MessageBox(PChar('Erro ao recalcular total do produto: ' + IntToStr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message),
              'Erro', MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
            SalvarLogErro(e.Message, e.StackTrace);

            lito.EnableControls;
          end;
        end;

      End;
    Except
      on e: Exception do
      begin
        Application.MessageBox(PChar('Erro ao incluir produto: ' + IntToStr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message), 'Erro',
          MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
        SalvarLogErro(e.Message, e.StackTrace);

        lito.EnableControls;
      end;

    End;
  Finally
    lito.EnableControls;
  End;
  Result := VNovoItem;
End;

procedure TFprinciAte.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;

  vlArquivo := Extractfilepath(Application.ExeName) + 'Erros\Atendimento\' + FormatDateTime('yyyymmddhhnnsszzz',
    StrToDateTime(Agora(Application, Conexao))) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

procedure TFprinciAte.SalvarTextoEmArquivo(Texto: String; Diretorio: String);
var
  MyText: TStringList;
begin
  try
  if not DirectoryExists(ExtractFileDir(Diretorio)) then
    ForceDirectories(ExtractFileDir(Diretorio));

  MyText := TStringList.Create;
  try
    MyText.add(Texto);
    MyText.SaveToFile(Diretorio);
  finally
    MyText.Free
  end;
  except

  end;
end;

procedure TFprinciAte.SetAcsCodigo(const Value: Integer);
begin
  FAcsCodigo := Value;

  consulta.Close;
  consulta.SQL.Text := 'SELECT acs.acschave, acs.clbcodigo, acs.flacodigo FROM acs WHERE acs.acschave = ' + FAcsCodigo.ToString;
  consulta.Open;

  Acesso.IdAcesso := consulta.Fields[0].AsInteger;
  Acesso.Usuario := consulta.Fields[1].AsInteger;
  Acesso.Filial := consulta.Fields[2].AsInteger;

  clb.Close;
  clb.Params[0].AsInteger := Acesso.Usuario;
  clb.Open;

  lcolaborador.Caption := clbclbidentificacao.AsString;
  ldescmaximo.Caption := clbclbdescmaximo.AsString;

  VpDescontoMaximo := clbclbdescmaximo.AsFloat;

  dau.Params[0].AsString := Self.Name;
  dau.Params[1].AsInteger := Acesso.Usuario;
  dau.Open;
end;

procedure TFprinciAte.SetVendedor(const Value: String);
begin
  FVendedor := Value;
end;

function TFprinciAte.ValidaTerminal: Boolean;
begin
  trm.Close;
  trm.Params[0].AsInteger := Acesso.Terminal;
  trm.Open;

  vpCtaCodigo := trmctacodigo.AsString;

  if not trm.IsEmpty then
    Result := True
  else
  begin
    Result := False;
    Application.MessageBox(PChar('Não foi possível abrir o sistema.' + #13 + 'Verifique o cadastro do terminal de número ' + Acesso.Terminal.ToString
      + '.'), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

Procedure TFprinciAte.AjustaPreco(ChaveIto: Integer);
Var
  Dvs: Double;
  vstocodigo: Integer;
Begin
  vstocodigo := itostocodigo.AsInteger;
  Application.CreateForm(Tfajustapreco, fajustapreco);

  ito.Close;
  ito.Params[0].AsInteger := orcorcchave.AsInteger;
  ito.Params[1].AsInteger := Acesso.Filial;
  fajustapreco.DSAjtPreco.DataSet := ito;
  fajustapreco.DbeValorAV.DataField := 'itovalorav';
  fajustapreco.DbeValorAP.DataField := 'itovalorap';

  ito.Open;

  ito.Locate('itochave', ChaveIto, []);

  ito.Edit;

  consulta.Close;
  consulta.SQL.Text := 'select puncusto from pun where puncodigo=' + itopuncodigo.AsString;
  consulta.Open;

  fajustapreco.vCusto := consulta.Fields[0].AsFloat;

  If (cfgcfgdoisprecos.AsInteger = 0) Then
    fajustapreco.vSomenteAVista := True;

  fajustapreco.pnome.Caption := litopronome.AsString;
  if cfgcfgusapdv.AsInteger = 1 then
  begin
    fajustapreco.plcusto.Visible := False;
    fajustapreco.LbAPrazo.Visible := False;
    fajustapreco.DbeValorAP.Visible := False;
  end;

  if fajustapreco.ShowModal = mrok then
  Begin
    FreeAndNil(fajustapreco);
    ito.Post;
    Recalculatotal;
  End
  else
  begin
    FreeAndNil(fajustapreco);
    ito.Cancel;
  end;

End;

Procedure TFprinciAte.Novoorcamento;
Var
  X, i: Integer;
Begin

  Ajustabotoes(True);

  If not(orc.Active) Then
  Begin
    orc.Params[1].AsInteger := Acesso.Filial;
    orc.Open;

    orc.Append;
    orcflacodigo.AsInteger := Acesso.Filial;
    orcetdcodigo.AsInteger := 0;
    orcclbcodigo.AsInteger := Acesso.Usuario;
    orcfopcodigo.AsInteger := 1;
    orctdecodigo.AsInteger := 0;
    orcstocodigo.AsInteger := stoEmDigitacao;
    orcmoccodigo.AsInteger := mocNovoRegistro;
    orcpuocodigo.AsInteger := puoAPrazo;
    orcorcdataabert.AsString := hoje(Application, Conexao);
    orcorchoraabert.AsFloat := StrToDateTime(Agora(Application, Conexao));
    orcorcgeralav.AsFloat := 0;
    orcorcgeralap.AsFloat := 0;
    orcorcdescontoav.AsFloat := 0;
    orcorcdescontoap.AsFloat := 0;
    orcorctotalav.AsFloat := 0;
    orcorctotalap.AsFloat := 0;
    orcorcdestimpre.AsInteger := 1;
    orctrmcodigo.AsString := Acesso.Terminal.ToString;

    orc.Post;
    vpEtdCodigo := '0';
  End;

  vpOrcChave := orcorcchave.AsString;

  lito.Close;
  Ajustasqllito;
  lito.ParamByName('orcchave').AsString := vpOrcChave;
  lito.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  lito.Open;

  orc.Close;
  orc.Params[0].AsString := vpOrcChave;
  orc.Params[1].AsInteger := Acesso.Filial;
  orc.Open;

  orc.Edit;
  Mostraclienteselecionado;

  If (cfgcfgdoisprecos.AsInteger = 1) and (orcpuocodigo.AsInteger = puoAPrazo) Then
  begin
    mPrecoaPrazo.Click;
  end
  Else
  begin
    mPrecoaVista.Click;

    orc.Edit;
    orctfpcodigo.AsInteger := 0; // Vai deixar de ser utilizado aqui.
    orcpuocodigo.AsInteger := puoAVista;
    orc.Post;

    Recalculatotal;

    lito.Refresh;

  end;

End;

procedure TFprinciAte.orcAfterInsert(DataSet: TDataSet);
begin
  orctdecodigo.AsInteger := tdeTotal;
  orcflacodigo.AsInteger := Acesso.Filial;
end;

Procedure TFprinciAte.Mostrapainelcliente;
begin
  { declarado virtual para implmentacao em cada
    vertical }
  Mostrapainelcliente;
end;

Procedure TFprinciAte.Mostraclienteselecionado;
Var
  vlEndereco: Integer;
  vlRetorno: String;
  vlTxtFiltro: String;
Begin
  plMensagemPrincipal.Visible := False;

  If (Not orc.Active) Then
  Begin
    orc.Params[1].AsInteger := Acesso.Filial;
    orc.Open;
    Novoorcamento;

    Infce.Tag := 1;
    Infe.Tag := 1;
    IDAV.Tag := 1;
    Ibol.Tag := 1;

  End;

  orc.Edit;

  vlEndereco := orcedrcodigo.AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'SELECT edr.edrcodigo FROM edr WHERE edr.tedcodigo IN (1, 2,3, 4,5,6) AND edr.etdcodigo = ' + vpEtdCodigo;
  consulta.Open;

  if not consulta.Locate('edrcodigo', vlEndereco, []) then
  begin
    vlEndereco := consulta.Fields[0].AsInteger;

    if consulta.RecordCount > 1 then
    begin
      vlTxtFiltro := 'etdcodigo = ' + vpEtdCodigo;
      vlRetorno := MostraLista('medr', vlTxtFiltro, vpEtdCodigo);

      if vlRetorno <> '' then
        vlEndereco := StrToInt(vlRetorno)
    end;
  end;

  etd.Close;
  etd.Params[0].AsString := vpEtdCodigo;
  etd.Params[1].AsInteger := vlEndereco;
  etd.Open;

  orcetdcodigo.AsString := vpEtdCodigo;
  orcedrcodigo.AsInteger := vlEndereco;
  orcedritem.AsInteger := etdedritem.AsInteger;

  PCPaginas.Visible := True;
  ActClientes.Enabled := True;
  // Lidentificacao.Caption := AnsiUpperCase(etdetdidentificacao.AsString);
End;

function TFprinciAte.PermiteQuantidade(Produto, CodUnidVenda: Integer; Quantidade: Double): Boolean;
var
  vSaldoDisp: Double;
  VMensagem: String;
  vControlaEstoque: Boolean;
  vControlaEstoqueDisp: Boolean;
begin
  with qProSaldo do
  begin
    Close;
    Params[0].AsInteger := Produto;
    Params[1].AsInteger := CodUnidVenda;
    Open;

    vSaldoDisp := FieldByName('prosaldodisp').AsFloat;
    vControlaEstoque := False;
    // vControlaEstoque := FieldByName('proestoque').AsString = '1';
  end;

  vControlaEstoqueDisp := False;
  // vControlaEstoqueDisp := cfgcfgcontrolaestoquedisp.AsInteger = 1;

  if (Quantidade <= vSaldoDisp) or (not vControlaEstoque) or (not vControlaEstoqueDisp) then
    Result := True
  else
  begin
    Result := True;

    if Quantidade > vSaldoDisp then
    begin
      VMensagem := 'Quantidade maior que o disponível em estoque!!' + #13 + #13;
      VMensagem := VMensagem + 'Quantidade: ' + Format('%2.4n', [Quantidade]);
      VMensagem := VMensagem + #13 + 'Disponível: ' + Format('%2.4n', [vSaldoDisp]);

      Application.MessageBox(PChar(VMensagem), 'Atenção', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
    end
    else
      Application.MessageBox(PChar('Quantidade não permitida!!'), 'Atenção', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
  end;
end;

Function TFprinciAte.QuantiTotalItemOrc(Produto, CodUnidVenda: Integer): Double;
Var
  VQuantidade: Double;
begin

  VQuantidade := 0;

  With consulta do
  begin
    if vpOrcChave <> '' then
    begin
      Close;
      SQL.Text := 'SELECT itoquantidade * itocontendo FROM ito ';
      SQL.add('WHERE ito.stocodigo IN (1, 2) ');
      SQL.add('AND procodigo = ' + IntToStr(Produto) + ' ');
      SQL.add('AND unicodigo <> ' + IntToStr(CodUnidVenda) + ' ');
      SQL.add('AND orcchave = ' + vpOrcChave);
      Open;
    end;

    while not Eof do
    begin
      VQuantidade := VQuantidade + Fields[0].AsFloat;
      Next;
    end;

    Close;
  end;

  Result := VQuantidade;
end;

Procedure TFprinciAte.AjustaQuantidade(Quantidade: Double; Tipo: Integer);
Var
  VQuantidade, VQuantidadeTeste: Double;
  VEstoqueDisponivel: Boolean;
Begin
  if not ito.Active then
    exit;

  ito.Refresh;

  If (ito.Locate('itochave', litoitochave.AsInteger, [])) Then
  Begin

    case Tipo of
      taqSoma:
        VQuantidade := itoitoquantidade.AsFloat + Quantidade;
      taqSubtrai:
        VQuantidade := itoitoquantidade.AsFloat - Quantidade;
      taqFinal:
        VQuantidade := Quantidade;
    end;

    if VQuantidade <= 0 then
    begin
      Application.MessageBox(PChar('Quantidade inválida!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      exit;
    end;

    VQuantidadeTeste := (VQuantidade * itoitocontendo.AsFloat);
    VQuantidadeTeste := VQuantidadeTeste + QuantiTotalItemOrc(itoprocodigo.AsInteger, itounicodigo.AsInteger);

    VEstoqueDisponivel := True;

    (* Verifica se não é Devolução de Condicional e se Controla Estoque para validar quantidade *)

    if cfgcfgcontrolaestoquedisp.AsInteger = 1 then
      VEstoqueDisponivel := PermiteQuantidade(itoprocodigo.AsInteger, itounicodigo.AsInteger, VQuantidadeTeste);

    case VEstoqueDisponivel of
      True:
        begin
          ito.Edit;

          itoitoquantidade.AsFloat := VQuantidade;

          if orctdecodigo.AsInteger = tdeTotal then
          begin
            Application.MessageBox(PChar('Desconto Geral foi cancelado!'), 'Atenção', MB_ICONWARNING + MB_OK);

            if orc.State <> dsEdit then
              orc.Edit;

            orctdecodigo.AsInteger := tdeSemDesconto;

            zPCalcDescAV.ParamByName('orcchave').AsString := orcorcchave.AsString;
            zPCalcDescAV.ParamByName('Desconto').AsFloat := 0;
            zPCalcDescAV.Execute;
            if cfgcfgdoisprecos.AsInteger = 1 then
            begin
              zPCalcDescAP.ParamByName('orcchave').AsString := orcorcchave.AsString;
              zPCalcDescAP.ParamByName('Desconto').AsFloat := 0;
              zPCalcDescAP.Execute;

            end;

          end
          else If (itoitodescontoav.AsFloat > 0) Or (itoitodescontoap.AsFloat > 0) Then
          Begin
            pmpveri.Close;
            pmpveri.ParamByName('procodigo').AsInteger := itoprocodigo.AsInteger;
            pmpveri.ParamByName('data').AsDate := StrToDate(hoje(Application, Conexao));
            pmpveri.Open;

            if pmpveri.IsEmpty then
            begin

              Application.MessageBox(PChar('O desconto deste item foi cancelado!'), 'Atenção', MB_ICONWARNING + MB_OK);

              itoitodescontoav.AsFloat := 0;
              itoitodescontoap.AsFloat := 0;
              itoitopercdescav.AsFloat := 0;
              itoitopercdescap.AsFloat := 0;
            end
            else
            begin
              pmp.Close;
              pmp.ParamByName('procodigo').AsString := itoprocodigo.AsString;
              pmp.ParamByName('data').AsDate := StrToDate(hoje(Application, Conexao));
              pmp.Open;

              if not pmp.IsEmpty then
              begin
                itoitodescontoav.AsFloat := (itoitototalap.AsFloat * (pmppmopercentualavista.AsFloat / 100)) * itoitoquantidade.AsFloat;
                itoitodescontoap.AsFloat := (itoitototalap.AsFloat * (pmppmopercentualaprazo.AsFloat / 100)) * itoitoquantidade.AsFloat;
                itoitosaldoav.AsFloat := itoitototalap.AsFloat;
                itopmpchave.AsInteger := pmppmpchave.AsInteger;
              end

            end;
          End;
        end;
    end;

    If itotdecodigo.AsString <> '2' Then
    begin
      if pmpveri.IsEmpty then
      begin
        ito.Edit;
        itoitodescontoav.AsFloat := 0;
        itoitodescontoap.AsFloat := 0;
      end;
    end;

    ito.Post;

    Recalculatotal;

  End;
End;

Function TFprinciAte.MostraLista(pModulo: String; pModoCarga: TModoCarga; pFiltro: string = ''; pChaveMestre: string = ''): string;
{ var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  vlPack: NativeUInt; }
begin
  { Result := '';
    vlPack := LoadPackage('modulos\' + pModulo + '.bpl');
    if vlPack <> 0 then
    try
    @ExecForm := GetProcAddress(vlPack, PChar('formu'));
    if Assigned(ExecForm) then
    begin
    vlCargaFrame := CargaFrameFormu(Application, vlPack, Conexao, Acesso, pFiltro, pChaveMestre, pModoCarga);
    Result := ExecForm(vlCargaFrame);
    end;
    finally
    DoUnLoadPackage(Application, vlPack);
    end; }
End;

procedure TFprinciAte.VerAtualizacao(pacote: string);
type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  pack: Cardinal;
  vlVerificaAtualizacao: TVerificaAtualizacao;
begin
  if not FileExists(Extractfilepath(Application.ExeName) + 'modulos\matz.bpl') then
  begin
    exit;
  end;

  pack := LoadPackage('modulos\matz.bpl');
  if pack <> 0 then
  begin
    try
      @vlVerificaAtualizacao := GetProcAddress(pack, PChar('VerificaAtualizacao'));
      if Assigned(vlVerificaAtualizacao) then
      begin

        if (pacote = 'mcre') or (pacote = 'mcpa') then
          vlVerificaAtualizacao(Application, 'mrfi.bpl', 'modulos', '.bpl');

        if (pacote = 'mbrp') or (pacote = 'mmbrr') then
          vlVerificaAtualizacao(Application, 'mbrf.bpl', 'modulos', '.bpl');

        vlVerificaAtualizacao(Application, pacote + '.bpl', 'modulos', '.bpl');

      end;
    finally
      DoUnLoadPackage(Application, pack);
    end;
  end;

end;

Function TFprinciAte.MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  vlPack: NativeUInt;
begin

  { if InternetAtiva then
    begin
    VerAtualizacao(pModulo);
    end; }

  Result := '';
  vlPack := LoadPackage('modulos\' + pModulo + '.bpl');
  if vlPack <> 0 then
    try
      @ExecForm := GetProcAddress(vlPack, PChar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, vlPack, Conexao, Acesso, pFiltro, pChaveMestre);

        Result := ExecForm(vlCargaFrame);
      end;
    finally

     // DoUnLoadPackage(Application, vlPack);

    end;
End;

procedure TFprinciAte.ActSairExecute(Sender: TObject);
begin
  ShuttingDown := True;

  Close;
end;

procedure TFprinciAte.ActSangriaExecute(Sender: TObject);
var
  vlValorOperacao: string;
begin

  vlValorOperacao := '0';

  vlValorOperacao := RegistraOperacaoCaixa(tocSangriaCaixa);

  if (vlValorOperacao <> '0') and (vlValorOperacao <> '') then
    if FileExists(Extractfilepath(Application.ExeName) + 'relat\SangriaCCX.fr3') then
      ImprimeComprovantesCaixa(ocxSangria);

end;

procedure TFprinciAte.ActSuprimentoExecute(Sender: TObject);
var
  vlValorOperacao: string;
begin
  vlValorOperacao := '0';

  vlValorOperacao := RegistraOperacaoCaixa(tocSuprimentoCaixa);

  if (vlValorOperacao <> '0') and (vlValorOperacao <> '') then
    if FileExists(Extractfilepath(Application.ExeName) + 'relat\SuprimentoCCX.fr3') then
      ImprimeComprovantesCaixa(ocxSuprimento);
end;

Procedure TFprinciAte.AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
begin
  if Situacao = stoEmCaixa then
    exit;

  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.add('UPDATE ito SET ito.tdfcodigo=' + QuotedStr(TipoDocumento) + ' ,ito.stocodigo = ' + IntToStr(Situacao) + ' ');
  consulta.SQL.add('WHERE ito.stocodigo IN (' + IntToStr(stoEmDigitacao) + ', ');
  consulta.SQL.add(IntToStr(stoEmAberto) + ', ');
  consulta.SQL.add(IntToStr(stoEmFechamento) + ',  ');
  consulta.SQL.add(IntToStr(stoVendido) + ') ');
  consulta.SQL.add('AND ito.orcchave=' + ChaveOrc);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'select itochave, itoitempedido  from ito where orcchave=' + ChaveOrc;
  consulta.Open;

  while not consulta.Eof do
  begin

    immpedido.Close;
    immpedido.SQL.Text := 'select immnumepedido from imm where itochave=' + consulta.FieldByName('itochave').AsString;
    immpedido.Open;

    if not immpedido.IsEmpty then
    begin
      consulta.Edit;
      consulta.FieldByName('itoitempedido').AsString := immpedido.FieldByName('immnumepedido').AsString;
      consulta.Post;
    end;

    consulta.Next;
  end;

end;

Procedure TFprinciAte.Ajustabotoes(Situacao: Boolean);
Begin
  { declarodo virtual para implementacao no Vertial }
End;

procedure TFprinciAte.AjustaaoMonitor;
var
  i: Integer;
  p: PPropInfo;
  vlLarguraAnt: Longint;
begin

  { if (Screen.Width <> vpLarguraTela) then
    // aqui faz a escala de todos os componentes do form, o scaled precisa estar true
    ScaleBy(Screen.Width, vpLarguraTela); }

  if vpLarguraTela = 0 then
    vpLarguraTela := screen.Width;

  if vpAlturaTela = 0 then
    vpAlturaTela := screen.Height;

  vlLarguraAnt := screen.Width;
  WindowState := wsMaximized;

  scaled := True;
  if (screen.Width <> vpLarguraTela) then
  begin
    Height := Longint(Height) * Longint(screen.Height) DIV vpAlturaTela;
    Width := Longint(Width) * Longint(screen.Width) DIV vpLarguraTela;
    scaleBy(screen.Width, vpLarguraTela);
  end;

  for i := ComponentCount - 1 downto 0 do
    with Components[i] do
    begin
      p := GetPropInfo(ClassInfo, 'TitleFont');
      if Assigned(p) then
      begin
        Font.Name := 'Tahoma';
        Font.Size := ((vpLarguraTela DIV vlLarguraAnt) * Font.Size) - 5;
      end;

      p := GetPropInfo(ClassInfo, 'Font');
      if Assigned(p) then
      begin
        Font.Name := 'Tahoma';
        Font.Size := (vpLarguraTela DIV vlLarguraAnt) * Font.Size;
      end;
    end;

end;

Procedure TFprinciAte.Crianovoorc;
Begin
  orc.Close;
  lito.Close;
  ito.Close;

  if not cfg.Active then
    cfg.Open;

  cfg.Refresh;

  Ajustabotoes(False);
  Lidentificacao.Caption := Trim(UpperCase(Trim(cfg.Fields[1].AsString)));
  vpTroco := 0;

  Ibol.Tag := 1;

  If (cfgcfgpedeoperador.AsInteger = 1) and (Self.Name <> 'FprinciCax') Then
  begin
    try
      if not Conexao.Connected then
        raise Exception.Create('Falha de conexão.');

      if not ValidaTerminal then
        raise Exception.Create('Terminal inválido.');

      if not LogarSistema then
        raise Exception.Create('Acesso inválido.');
    except
      on e: Exception do
      begin
        Application.ShowMainForm := False;
        Application.Terminate;
        exit;
      end;
    end;
  end;

End;

function TFprinciAte.CarregaAtendimentos: Boolean;
begin

  Infce.Tag := 1;
  Infe.Tag := 1;
  IDAV.Tag := 1;
  Ibol.Tag := 1;

  orc.Close;
  orc.Params[0].AsString := vpOrcChave;
  orc.Params[1].AsInteger := Acesso.Filial;
  orc.Open;

  if (orcstocodigo.AsInteger = stoEmDigitacao) and (orcmoccodigo.AsInteger <> mocDelivery) then
  begin
    Application.MessageBox(PChar('Atendimento Nº ' + vpOrcChave + ' está Em Digitação em outro terminal e não pode ser alterado!!'), 'Atenção',
      MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);

    Crianovoorc;

    exit;
  end;

  orc.Edit;
  orcstocodigo.AsInteger := stoEmDigitacao;
  orc.Post;

  AtualizaSituacaoItens(orcorcchave.AsString, stoEmDigitacao, tdfMovimentoEmAndamento);

  vpEtdCodigo := orcetdcodigo.AsString;

  Novoorcamento;

  Ajustabotoes(True);

  { Lista.Visible := True;
    PnlPronome.Visible := True;
    Ptituloproduto.Visible := True;
    Lpronome.Visible := True;
    Bquantidade.Visible := True;
    Bdescontoitem.Visible := True;
    Bdescontogeral.Visible := True;
    Bfechamento.Visible := True;
    Bcancelaitem.Visible := True; }

  orc.Edit;
  IdentificaVendedor;

  Recalculatotal;

end;

function TFprinciAte.ativaimpressoraNF: Boolean;
var
  i: Integer;
begin

  trm.Close;
  trm.Params[0].AsInteger := Acesso.Terminal;
  // trm.Filter := 'tipcodigo=' + IntToStr(tipTermica48Col);
  // trm.Filtered := True;
  trm.Open;

  if trm.IsEmpty then
    IDAV.Visible := False
  else
    IDAV.Visible := True;

  trm.Filtered := False;
  trm.Refresh;
end;

function TFprinciAte.AbreGavetaNF: Boolean;
var
  i: Integer;
begin

  if trmtrmgaveta.AsInteger = 1 then
  begin
    trm.Close;
    trm.Params[0].AsInteger := Acesso.Terminal;
    // trm.Filter := 'tipcodigo=' + IntToStr(tipTermica48Col);
    // trm.Filtered := True;
    trm.Open;
    i := 0;

    GeradorGavetaCCX1.Click;

  end;
  Result := True;
end;

function TFprinciAte.Imprime(Vchave: String): Boolean;
var
  vlImprimirOrc: Timprimeorc;
  vlPackIpo: Cardinal;

begin
  vlPackIpo := LoadPackage('modulos\mipo.bpl');
  If vlPackIpo <> 0 Then
    Try
      @vlImprimirOrc := GetProcAddress(vlPackIpo, PChar('imprimeorc'));

      If Assigned(vlImprimirOrc) Then
        vpRetornoIPO := vlImprimirOrc(Application, Conexao, Vchave, Acesso.Terminal.ToString, Acesso.Usuario.ToString, BotoesAtivosImpre,0);
    Finally
      DoUnLoadPackage(Application, vlPackIpo);
    End;
end;

function TFprinciAte.ImprimirDAVFR(meschave: string): Boolean;
var
  vDirRelat: String;
begin
  // try
  if not limite.Active then
  begin
    limite.ParamByName('etdcodigo').AsString := vpEtdCodigo;
    limite.Open;

    disponivel.ParamByName('etdcodigo').AsString := vpEtdCodigo;
    disponivel.Open;

  end;
  if limite.Active then
  begin
    if (not limite.IsEmpty) and (limiteetllimitetotal.AsCurrency > 0) and (limiteetdcodigo.AsInteger <> 0) then
    begin
      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\ComprovanteDAV-LIMITE.fr3';
      if not FileExists(vDirRelat) then
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\ComprovanteDAV.fr3';
      end;
    end
    else
    begin
      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\ComprovanteDAV.fr3';
    end;
  end
  else
  begin
    vDirRelat := Extractfilepath(Application.ExeName) + 'relat\ComprovanteDAV.fr3';
  end;

  ImprimirComprovantesPDV(Application, Conexao, meschave, vDirRelat, trmtciporta.AsString, tiImprimirDireto);
  Result := True;

  if (orcfopcodigo.AsInteger = 2) and (cfgcfgviaassinar.AsInteger = 1) then
  begin

    if limite.Active then
    begin
      if not limite.IsEmpty then
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\viaassinar-LIMITE.fr3';
        if not FileExists(vDirRelat) then
        begin
          vDirRelat := Extractfilepath(Application.ExeName) + 'relat\viaassinar.fr3';
        end;
      end
      else
      begin
        vDirRelat := Extractfilepath(Application.ExeName) + 'relat\viaassinar.fr3';
      end;
    end
    else
    begin
      vDirRelat := Extractfilepath(Application.ExeName) + 'relat\viaassinar.fr3';
    end;
    ImprimirComprovantesPDV(Application, Conexao, meschave, vDirRelat, trmtciporta.AsString, tiImprimirDireto);
  end;

  // except
  // Result := False;
  // end;
end;

{$REGION 'CONTROLE DE CAIXAS'}

function TFprinciAte.RegistraOperacaoCaixa(vTocCodigo: Integer): string;
type
  TformuCaixa = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vCtaCodigo: string; vTurno: string; vTrmCodigo: string;
    vOperacao: Integer; vCcxChave: String): string;
var
  RegistraCaixa: TformuCaixa;
  vlRetorno: string;
  vlPackccx: Cardinal;
begin
  Result := '';
  vlPackccx := LoadPackage('modulos\mccx.bpl');
  if vpCtaCodigo = '' then
    vpCtaCodigo := ccxctacodigo.AsString;

  if vlPackccx <> 0 then
    try
      @RegistraCaixa := GetProcAddress(vlPackccx, PChar('formuCaixa'));

      if Assigned(RegistraCaixa) then
      begin
        vlRetorno := RegistraCaixa(Application, Conexao, Acesso, vpCtaCodigo, '1', Acesso.Terminal.ToString, vTocCodigo, ccxccxchave.AsString);
        Result := vlRetorno;
      end;
    finally
      // DoUnLoadPackage(Application, vlPackccx);
    end;
End;

{$ENDREGION}

procedure TFprinciAte.ImprimeComprovantesCaixa(vOperacaoCaixa: Integer);
begin

  ImprimirComprovantesCCX(Application, Conexao, ccxccxchave.AsInteger, vOperacaoCaixa, trmtciporta.AsString, tiImprimirDireto);
end;

function TFprinciAte.LiberaBloqueioParcial: Boolean;
begin
  vpBloqueioLiberado := False;

  Application.MessageBox(PChar('Cliente possui Bloqueio Parcial!!'), 'Atenção', MB_OK + MB_ICONWARNING);
  (* Ação é chamada para pedir liberação do supervisor *)
  // ActLiberaBloqParcial.Execute;

  Result := vpBloqueioLiberado;
end;

function TFprinciAte.LiberaBloqueioTotal: Boolean;
begin
  vpBloqueioLiberado := False;

  if Application.MessageBox(PChar('Cliente possui Bloqueio no cadastro!!' + #13 + 'Liberar venda?'), 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES
  then
    (* Ação é chamada para pedir liberação do supervisor *)
    ActLiberaBloqTotal.Execute;

  Result := vpBloqueioLiberado;
end;

procedure TFprinciAte.IdentificaVendedor;
  function PermiteVendaExterna(pVendedor: String): Boolean;
  var
    qVfe: TUniQuery;
  begin
    qVfe := TUniQuery.Create(Application);
    try
      qVfe.Connection := Conexao;

      qVfe.SQL.Text := 'SELECT vfe.vfecodigo FROM vfe WHERE vfe.vfscodigo = 1 /*Em Aberto*/ AND vfe.clbcodigo = ' + pVendedor;
      qVfe.Open;

      if qVfe.IsEmpty then
      begin
        Result := False;
        Application.MessageBox(PChar('Não existe processo de Venda Fora do Estabelecimento em aberto para esse colaborador.'), 'Atenção',
          MB_OK + MB_ICONWARNING);
      end
      else
        Result := True;
    finally
      qVfe.Free;
    end;
  end;

var
  vlVendedor: String;
begin
  if not(cfgcfgidentificavendedor.AsInteger = 1) and (orcfoacodigo.AsInteger = foaInterno) then
    exit;

  if (cfgcfgidentificavendedor.AsInteger = 0) then
    exit;

  try
    if orcclbvendedor.AsInteger > 0 then
      exit;

    vlVendedor := MostraLista('mclb', 'clbativo = 1 AND (fnccodigo=4 OR fnccodigo=5)', 'Vendedor');

    if vlVendedor = '' then
      repeat
        Application.MessageBox(PChar('É necessário informar o Vendedor!!'), 'Atenção', MB_ICONWARNING + MB_OK);
        vlVendedor := MostraLista('mclb', 'clbativo = 1 AND (fnccodigo=4 OR fnccodigo=5)', 'Vendedor');
      until (vlVendedor <> '');

    if orcfoacodigo.AsInteger = foaInterno then
      orcclbvendedor.AsString := vlVendedor
    else if PermiteVendaExterna(vlVendedor) then
      orcclbvendedor.AsString := vlVendedor
    else
      orcclbvendedor.AsString := '';

  finally
    clb.Close;
    clb.Params[0].AsInteger := orcclbvendedor.AsInteger;
    clb.Open;

    Vendedor := clbclbidentificacao.AsString;
    clb.Close;
  end;
end;

function TFprinciAte.ParaFilial: Boolean;
begin
  consulta.Close;
  consulta.SQL.Text := 'select etdcodigo from fla';
  consulta.Open;
  Result := consulta.Locate('etdcodigo', orcetdcodigo.AsInteger, []);
  consulta.Close;
end;

procedure TFprinciAte.CalculaSaldoVenda2Dias;
var
  R: Integer;
  i: Integer;
  vlSaldo: Double;
  vlSpdChave: Integer;

  vlSaldoDisp: Double;

begin
  inherited;
  try
    itm2.Close;
    itm2.Open;

    consulta.Close;
    consulta.SQL.Text := 'SELECT   spdchave,  spdexercicio,  spddatainicial,  spddatafinal,  spddatabalanco, ';
    consulta.SQL.add('pcccodigo,   spdativo,  spdmotivoinv,  spdvalortotal,  spdarquivo,  spdgeracao,  flacodigo,  spdpasta, ');
    consulta.SQL.add(' spdregistro,  spdenvio FROM spd order by spdchave limit 1');
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlSpdChave := 1;
      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('spdexercicio').AsString := FormatDateTime('yyyy', StrToDate(hoje(Application, Conexao)));
      consulta.FieldByName('spddatainicial').AsFloat := StrToDate(hoje(Application, Conexao));
      consulta.FieldByName('spddatafinal').AsFloat := EndOfTheMonth(consulta.FieldByName('spddatainicial').AsFloat);
      consulta.FieldByName('spddatabalanco').AsFloat := consulta.FieldByName('spddatafinal').AsFloat;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('spdativo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.Post;

    end
    else
    begin
      vlSpdChave := consulta.FieldByName('spdchave').AsInteger;
    end;

    while not itm2.Eof do
    begin

      consulta.Close;
      consulta.SQL.Text := 'SELECT   ivtchave,  spdchave,  procodigo,  pcccodigo,  ivtquantidade,';
      consulta.SQL.add('ivtvalor,   ivttotal,  ivtproprietario,  ivtdescricao,  etdcodigo,  flacodigo, ivtregistro FROM ivt where procodigo=' +
        itm2procodigo.AsString);
      consulta.Open;

      if consulta.IsEmpty then
      begin

        consulta.Append;
        consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
        consulta.FieldByName('procodigo').AsInteger := itm2procodigo.AsInteger;
        consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
        consulta.FieldByName('ivtquantidade').AsInteger := 0;
        consulta.FieldByName('ivtvalor').AsInteger := 0;
        consulta.FieldByName('ivttotal').AsInteger := 0;
        consulta.FieldByName('ivtproprietario').AsInteger := 1;
        consulta.FieldByName('ivtdescricao').AsString := 'Inventário de inclusão do produto';
        consulta.FieldByName('etdcodigo').AsString := '1';
        consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
        consulta.FieldByName('ivtregistro').AsDateTime := StrToDateTime('01/01/2000 00:00:01');
        consulta.Post;
      end;

      consulta.Close;
      consulta.SQL.Text := 'SELECT   ivdchave,  spdchave,  procodigo,  pcccodigo,  ivdquantidade,';
      consulta.SQL.add('ivdvalor,   ivdtotal,  ivdproprietario,  ivddescricao,  etdcodigo,  flacodigo FROM ivd where procodigo=' +
        itm2procodigo.AsString);
      consulta.Open;

      if consulta.IsEmpty then
      begin

        consulta.Append;
        consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
        consulta.FieldByName('procodigo').AsInteger := itm2procodigo.AsInteger;
        consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
        consulta.FieldByName('ivdquantidade').AsInteger := 0;
        consulta.FieldByName('ivdvalor').AsInteger := 0;
        consulta.FieldByName('ivdtotal').AsInteger := 0;
        consulta.FieldByName('ivdproprietario').AsInteger := 1;
        consulta.FieldByName('ivddescricao').AsString := 'Inventário de inclusão do produto';
        consulta.FieldByName('etdcodigo').AsString := '1';
        consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
        consulta.Post;

      end;

      vlSaldo := 0;
      consulta.Close;
      consulta.SQL.Text := 'select calcSaldoProduto(' + itm2procodigo.AsString + ')';
      consulta.Open;
      vlSaldo := consulta.Fields[0].AsFloat;

      vlSaldoDisp := 0;
      consulta.Close;
      consulta.SQL.Text := 'select calcSaldoProdutoDisp(' + itm2procodigo.AsString + ')';
      consulta.Open;
      vlSaldoDisp := consulta.Fields[0].AsFloat;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE pro SET prosaldo = ' + BuscaTroca(Floattostr(vlSaldo), ',', '.') + ', prosaldodisp =  ' +
        BuscaTroca(Floattostr(vlSaldoDisp), ',', '.') + ' where procodigo=' + itm2procodigo.AsString;
      consulta.ExecSQL;

      {
        if cfgcfgproinativsaldozero.AsInteger = 1 then
        begin

        saldo.Close;
        saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm2procodigo.AsString + ', IF((select prosaldo from pro where procodigo=' +
        itm2procodigo.AsString + ')=0,2,1) )';
        saldo.ExecSQL;

        saldo.Close;
        saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm2procodigo.AsString + ', IF((select prosaldodisp from pro where procodigo=' +
        itm2procodigo.AsString + ')=0,2,1) )';
        saldo.ExecSQL;

        end;
      }

      itm2.Next;

    end;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE vrp v SET v.vrpsaldo = calcSaldoVariacao(v.vrpcodigo);';
    consulta.ExecSQL;

  finally

  end;

end;

procedure TFprinciAte.SalvaSaldoProdutos(vTipoMovimento: Integer);
var
  vlclbsalvasaldo: Integer;
  vMostra: TForm;
  vProgresso: TProgressbar;
begin

  consulta.Close;
  consulta.SQL.Text := 'select clbsalvasaldo from clb where clbcodigo=' + Acesso.Usuario.ToString;
  consulta.Open;
  vlclbsalvasaldo := consulta.Fields[0].AsInteger;

  if vlclbsalvasaldo = 1 then
  begin
    try

      // CalculaSaldoVenda2Dias;

      vMostra := TForm.Create(Application);
      vMostra.Position := poScreenCenter;
      vMostra.Width := 250;
      vMostra.Height := 55;
      vMostra.FormStyle := fsStayOnTop;
      vMostra.Caption := 'Processando ...';
      vProgresso := TProgressbar.Create(vMostra);
      vProgresso.parent := vMostra;
      vMostra.BorderStyle := bsSizeable;
      vMostra.BorderIcons := [];
      vMostra.BorderWidth := 4;
      vProgresso.Align := alClient;

      vMostra.Show;
      Application.ProcessMessages;

      scx.Close;
      scx.Connection := Conexao;
      scx.Params[0].AsInteger := ccxccxchave.AsInteger;
      scx.Open;

      { calcsaldoprodisp.Close;
        calcsaldoprodisp.SQL.Text := 'UPDATE pro SET prosaldo = calcSaldoProduto(procodigo), prosaldodisp =  calcSaldoProdutoDisp(procodigo)';
        calcsaldoprodisp.ExecSql;

        calcsaldoprodisp.Close;
        calcsaldoprodisp.SQL.Text := 'UPDATE vrp v SET v.vrpsaldo = calcSaldoVariacao(v.vrpcodigo);';
        calcsaldoprodisp.ExecSql; }

      saldoscx.Close;
      // saldoscx.SQL.Text := 'select procodigo, prosaldodisp, prosaldo from pro where sipcodigo=1 and procodigo IN (SELECT procodigo FROM itm, mes WHERE mes.meschave=itm.meschave AND mesemissao>=DATE_ADD(CURDATE(), INTERVAL -730 DAY) )';
      saldoscx.SQL.Text := 'select procodigo, prosaldodisp, prosaldo from pro where sipcodigo=1';

      saldoscx.Open;

      vProgresso.Max := saldoscx.RecordCount;
      vProgresso.Position := 0;

      while not saldoscx.Eof do
      begin
        vProgresso.Position := vProgresso.Position + 1;
        Application.ProcessMessages;

        if scx.Locate('procodigo', saldoscx.FieldByName('procodigo').AsInteger, []) then
          scx.Edit
        else
          scx.Append;

        scxccxchave.AsInteger := ccxccxchave.AsInteger;
        scxprocodigo.AsInteger := saldoscx.FieldByName('procodigo').AsInteger;

        scxscxsaldofecha.AsFloat := 0;

        if vTipoMovimento = ocxAbertura then
        begin
          scxscxsaldodisp.AsFloat := saldoscx.FieldByName('prosaldodisp').AsFloat;
          scxscxsaldo.AsFloat := saldoscx.FieldByName('prosaldo').AsFloat;
        end
        else if vTipoMovimento = ocxFechamento then
        begin
          scxscxsaldodispfecha.AsFloat := saldoscx.FieldByName('prosaldodisp').AsFloat;
          scxscxsaldofecha.AsFloat := saldoscx.FieldByName('prosaldo').AsFloat;
        end;

        scx.Post;
        saldoscx.Next;
      end;
      Showmessage('Saldo de produtos para este caixa salvos com sucesso!');

    finally
      vMostra.Close;
      FreeAndNil(vMostra)
    end;
  end;

end;

function TFprinciAte.CarregalimiteCliente(vetdcodigo: Integer): Double;
var
  vlLimiteDisponivel: Double;
begin

  if cfg.Active then
    cfg.Close;

  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if cfgcfgcontrolalimite.AsInteger = 0 then
  begin
    if orcorctotalap.AsCurrency = 0 then
      Result := orcorctotalav.AsCurrency
    else
      Result := orcorctotalap.AsCurrency;
    exit;
  end;

  vlLimiteDisponivel := 0;

  limite.Close;
  limite.Params[0].AsInteger := vetdcodigo;
  limite.Open;

  disponivel.Close;
  disponivel.Params[0].AsInteger := vetdcodigo;
  disponivel.Open;

  vlLimiteDisponivel := limiteetllimitetotal.AsCurrency - disponivelrfisaldocapital.AsCurrency;

  if vlLimiteDisponivel > orcorctotalap.AsCurrency then
  begin
    Result := orcorctotalap.AsCurrency;
    exit;
  end;

  if LimiteAutorizado(IntToStr(vetdcodigo), orcorctotalap.AsCurrency, orcorctotalap.AsCurrency, vlLimiteDisponivel, StrToInt(vpOrcChave)) then
  begin
    Result := orcorctotalap.AsCurrency;
  end
  else
    Result := 0;

end;

function TFprinciAte.LimiteAutorizado(vetdcodigo: String; vValorVenda: Double; vlLimiteSolic: Double; vlLimiteDisponivel: Double;
  vpOrcChave: Integer): Boolean;
var
  auto: TAutorizacaoAtenLimite;
  ru: string;
  vactcodigo: string;
  vlPackLia: Cardinal;
begin
  Result := True;

  if cfgcfgcontrolalimite.AsInteger = 1 then
    try

      Application.MessageBox(PChar('Limite de crédito acima do permitido.' + #13 + #13 + 'Limite Disponível: ' + Format('%2.2n', [vlLimiteDisponivel])
        + #13 + 'Valor Solicitado: ' + Format('%2.2n', [vValorVenda])), 'Atenção', MB_ICONWARNING + MB_OK);

      vlPackLia := LoadPackage('modulos\mlia.bpl');
      if vlPackLia <> 0 then
        try
          @auto := GetProcAddress(vlPackLia, PChar('liberacaoAtenLimiteCred'));

          if not Assigned(auto) then
            exit;

          ru := auto(Application, Conexao, Acesso.Usuario.ToString, vlLimiteSolic, IntToStr(vpOrcChave));

          if (ru = '0') or (ru = '') then // retornou NÃO AUTORIZADO
            Result := False;
        finally
          DoUnLoadPackage(Application, vlPackLia);
        end;
    finally
    end;
end;

procedure TFprinciAte.Ajustasqllito;
var
  txt: string;
begin

  if cfgcfgusagou.AsInteger = 1 then
  begin
    if Self.Name = 'FprinciEnt' then
    begin
      lito.SQL.Text := 'SELECT ';
      lito.SQL.add('ito.itochave, ');
      lito.SQL.add('  ito.itoitem, ');
      lito.SQL.add('  ito.itoquantidade, ');
      lito.SQL.add('  ito.procodigo, ');
      lito.SQL.add('  pro.pronome, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itovalorav, ito.itovalorap) AS itovalor, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itototalav, ito.itototalap) AS itototal, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itodescontoav, ito.itodescontoap) AS itodesconto, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itosaldoav, ito.itosaldoap) AS itosaldo, ');
      lito.SQL.add('  pro.prosaldodisp, ');
      lito.SQL.add('  uni.unisimbolo, ');
      lito.SQL.add('  ito.unicodigo, ');
      lito.SQL.add('  ito.orcchave, ');
      lito.SQL.add('  ito.tdecodigo, ');
      lito.SQL.add('  pro.proreferencia, ');
      lito.SQL.add('  ito.itoproservico, ');
      lito.SQL.add('  ito.itoinfadprod, ');
      lito.SQL.add('  pro.tpocodigo, ');
      lito.SQL.add('  ito.itoprocomple, ');
      lito.SQL.add('  pro.propededescrserv, ');
      lito.SQL.add('  pro.propedetecnicoserv, ');
      lito.SQL.add('  ito.vrpcodigo, ');
      lito.SQL.add('  ito.puncodigo, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itovalorav+itoacrescimoav, ito.itovalorap) AS itoacrescimovalor, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itototalav+itoacrescimoav, ito.itototalap) AS itoacrescimototal, ');
      lito.SQL.add('  IF(orc.puocodigo = 0, ito.itosaldoav+itoacrescimoav, ito.itosaldoap) AS itoacrescimosaldo, ');
      lito.SQL.add('  itopercentualcombo, ');
      lito.SQL.add('  pcocodigo ');

      lito.SQL.add('FROM ito, ');
      lito.SQL.add('     pro, ');
      lito.SQL.add('     uni, ');
      lito.SQL.add('     orc ');
      lito.SQL.add('WHERE ito.orcchave = orc.orcchave ');
      lito.SQL.add('AND ito.procodigo = pro.procodigo ');
      lito.SQL.add('AND ito.unicodigo = uni.unicodigo ');
      lito.SQL.add('AND ito.stocodigo IN (1, 2) ');
      lito.SQL.add('AND ito.orcchave = :orcchave ');
      lito.SQL.add('AND ito.flacodigo = :flacodigo ');
      lito.SQL.add('ORDER BY ito.itoitem ');

    end;
  end
  else
  begin

    if Self.Name = 'FprinciVar' then
    begin

      if cfgcfgtipocomissao.AsInteger = 0 then
      begin
        lito.SQL.Text := 'SELECT distinct ';
        lito.SQL.add('i.itochave, ');
        lito.SQL.add('i.itoitem, ');
        lito.SQL.add('i.itoquantidade, ');
        lito.SQL.add('i.procodigo, ');
        lito.SQL.add('/*Identifica o técnico da OS ou utiliza Grade */ ');
        lito.SQL.add('IF(tIoc.clbidentificacao IS NULL, TRIM(CONCAT(p.pronome, ' + QuotedStr(' ') + ', IFNULL(via.viaatributos, ' + QuotedStr('') +
          '))), CONCAT(p.pronome, ' + QuotedStr(' - ') + ', tIoc.clbidentificacao)) AS pronome, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itovalorav, i.itovalorap) AS itovalor, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itototalav, i.itototalap) AS itototal, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itodescontoav, i.itodescontoap) AS itodesconto, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itosaldoav, i.itosaldoap) AS itosaldo, ');
        lito.SQL.add('p.prosaldodisp, ');
        lito.SQL.add('u.unisimbolo, ');
        lito.SQL.add('i.unicodigo, ');
        lito.SQL.add('i.orcchave, ');
        lito.SQL.add('i.tdecodigo, ');
        lito.SQL.add('p.proreferencia, ');
        lito.SQL.add('i.itoproservico, ');
        lito.SQL.add('i.itoinfadprod, ');
        lito.SQL.add('p.tpocodigo, ');
        lito.SQL.add('i.itoprocomple, ');
        lito.SQL.add('p.propededescrserv, ');
        lito.SQL.add('p.propedetecnicoserv, ');
        lito.SQL.add('i.vrpcodigo, ');
        lito.SQL.add('i.pmpchave, ');
        lito.SQL.add('  itopercentualcombo, ');
        lito.SQL.add('  pcocodigo ');
        lito.SQL.add('FROM ito i ');
        lito.SQL.add('  JOIN pro p ');
        lito.SQL.add('    ON i.procodigo = p.procodigo ');
        lito.SQL.add('  JOIN uni u ');
        lito.SQL.add('    ON i.unicodigo = u.unicodigo ');
        lito.SQL.add('  JOIN orc o ');
        lito.SQL.add('    ON i.orcchave = o.orcchave ');
        lito.SQL.add('  LEFT JOIN (SELECT ');
        lito.SQL.add('      ioc.itochave, ');
        lito.SQL.add('      clb.clbidentificacao, ');
        lito.SQL.add('      ioc.flacodigo ');
        lito.SQL.add('    FROM ioc, ');
        lito.SQL.add('         clb ');
        lito.SQL.add('    WHERE clb.clbcodigo = ioc.clbcodigo and clb.flacodigo=:flacodigo and clb.fnccodigo in (4) ) tIoc ');
        lito.SQL.add(' ');
        lito.SQL.add('    ON tIoc.itochave = i.itochave and tIoc.flacodigo=i.flacodigo ');
        lito.SQL.add('  LEFT JOIN (SELECT ');
        lito.SQL.add('      via.vrpcodigo, ');
        lito.SQL.add('      CONVERT(GROUP_CONCAT(iat.iatidentificacao ORDER BY via.viacodigo SEPARATOR ' + QuotedStr(' ') +
          '), char(40) charset latin1) AS viaatributos ');
        lito.SQL.add('    FROM via ');
        lito.SQL.add('      JOIN iat ');
        lito.SQL.add('        ON via.iatcodigo = iat.iatcodigo ');
        lito.SQL.add('    GROUP BY via.vrpcodigo) via ');
        lito.SQL.add('    ON via.vrpcodigo = i.vrpcodigo ');
        lito.SQL.add('WHERE i.stocodigo IN (1, 2) ');
        lito.SQL.add('AND i.orcchave = :orcchave ');
        lito.SQL.add('AND i.flacodigo = :flacodigo ');
        lito.SQL.add(' ');
        lito.SQL.add('ORDER BY i.itoitem ');

      end
      else if cfgcfgtipocomissao.AsInteger = 1 then
      begin

        lito.SQL.Text := 'SELECT distinct ';
        lito.SQL.add('i.itochave, ');
        lito.SQL.add('i.itoitem, ');
        lito.SQL.add('i.itoquantidade, ');
        lito.SQL.add('i.procodigo, ');
        lito.SQL.add('p.pronome AS pronome, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itovalorav, i.itovalorap) AS itovalor, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itototalav, i.itototalap) AS itototal, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itodescontoav, i.itodescontoap) AS itodesconto, ');
        lito.SQL.add('IF(o.puocodigo = 0, i.itosaldoav, i.itosaldoap) AS itosaldo, ');
        lito.SQL.add('p.prosaldodisp, ');
        lito.SQL.add('u.unisimbolo, ');
        lito.SQL.add('i.unicodigo, ');
        lito.SQL.add('i.orcchave, ');
        lito.SQL.add('i.tdecodigo, ');
        lito.SQL.add('p.proreferencia, ');
        lito.SQL.add('i.itoproservico, ');
        lito.SQL.add('i.itoinfadprod, ');
        lito.SQL.add('p.tpocodigo, ');
        lito.SQL.add('i.itoprocomple, ');
        lito.SQL.add('p.propededescrserv, ');
        lito.SQL.add('p.propedetecnicoserv, ');
        lito.SQL.add('i.vrpcodigo, ');
        lito.SQL.add('i.pmpchave, ');
        lito.SQL.add('  itopercentualcombo, ');
        lito.SQL.add('  pcocodigo ');
        lito.SQL.add('FROM ito i ');
        lito.SQL.add('  JOIN pro p ');
        lito.SQL.add('    ON i.procodigo = p.procodigo ');
        lito.SQL.add('  JOIN uni u ');
        lito.SQL.add('    ON i.unicodigo = u.unicodigo ');
        lito.SQL.add('  JOIN orc o ');
        lito.SQL.add('    ON i.orcchave = o.orcchave ');
        lito.SQL.add(' ');
        lito.SQL.add('  LEFT JOIN (SELECT ');
        lito.SQL.add('      via.vrpcodigo, ');
        lito.SQL.add('      CONVERT(GROUP_CONCAT(iat.iatidentificacao ORDER BY via.viacodigo SEPARATOR ' + QuotedStr(' ') +
          '), char(40) charset latin1) AS viaatributos ');
        lito.SQL.add('    FROM via ');
        lito.SQL.add('      JOIN iat ');
        lito.SQL.add('        ON via.iatcodigo = iat.iatcodigo ');
        lito.SQL.add('    GROUP BY via.vrpcodigo) via ');
        lito.SQL.add('    ON via.vrpcodigo = i.vrpcodigo ');
        lito.SQL.add('WHERE i.stocodigo IN (1, 2) ');
        lito.SQL.add('AND i.orcchave = :orcchave ');
        lito.SQL.add('AND i.flacodigo = :flacodigo ');
        lito.SQL.add(' ');
        lito.SQL.add('ORDER BY i.itoitem ');

      end;
    end;

  end;
  txt := lito.SQL.Text;
end;

end.
