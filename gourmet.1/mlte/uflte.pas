unit uflte;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ExtCtrls, ACBrBase, ACBrExtenso,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB,dialogs,
  DBAccess, Uni, MemDS, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Controls,
  Vcl.Buttons, ufuncoes, System.Math, System.Types,
  Vcl.Graphics, Winapi.Messages, System.DateUtils, System.Variants,
  uPegaBase, VirtualTable, Vcl.ImgList, PngImageList, jpeg;

type
  Tflte = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    consulta: tuniquery;
    lte: tuniquery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    Dlte: tunidatasource;
    dtl: tuniquery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    Ddtl: tunidatasource;
    tmp: TVirtualTable;
    Dtmp: tunidatasource;
    plvalores: TPanel;
    PlTitulo: TPanel;
    rfi: tuniquery;
    mfi: tuniquery;
    mlt: tuniquery;
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
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    mes: tuniquery;
    mesetdcodigo: TIntegerField;
    cfg: tuniquery;
    cco: tuniquery;
    clt: tuniquery;
    cltcltchave: TIntegerField;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccoccovencimento: TDateField;
    ccoccoemissao: TDateField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoextenso: TStringField;
    ccoccoconciliado: TIntegerField;
    cfgcfgusacre: TIntegerField;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    che: tuniquery;
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
    ffd: tuniquery;
    ffdffdcodigo: TIntegerField;
    ffdmdacodigo: TIntegerField;
    ffdtfdcodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    rfm: tuniquery;
    rfmrfmchave: TIntegerField;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    mesmeschave: TIntegerField;
    mda: tuniquery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    ltcschcodigo: TIntegerField;
    cfgcfgctacaixa: TIntegerField;
    ccoetdcodigo: TIntegerField;
    ccoccofavorecido: TStringField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    cfgctadtmovi: TDateField;
    tit: tuniquery;
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
    plDinheiro: TPanel;
    pltitulomodalidades: TPanel;
    plcartaocredito: TPanel;
    plcartaodebito: TPanel;
    plconvenio: TPanel;
    plchequesterceiros: TPanel;
    plchequesproprios: TPanel;
    pltroco: TPanel;
    plteclas: TPanel;
    plF2: TPanel;
    plF3: TPanel;
    plF4: TPanel;
    plF5: TPanel;
    plF6: TPanel;
    plF7: TPanel;
    plPix: TPanel;
    Panel18: TPanel;
    tmpmdaDinheiro: TFloatField;
    tmpmdaChequeProprio: TFloatField;
    tmpmdaChequeTerceiros: TFloatField;
    tmpmdaCartaoDebito: TFloatField;
    tmpmdaCartaoCredito: TFloatField;
    tmpmdaPix: TFloatField;
    tmpmdaConvenio: TFloatField;
    tmpmdaAFaturar: TFloatField;
    tmpmdaTrocoDinheiro: TFloatField;
    tmpmdaTrocoChequeProprio: TFloatField;
    tmpmdaTrocoChequeTerceiros: TFloatField;
    edmdaDinheiro: TDBEdit;
    tmptroco: TFloatField;
    edmdaConvenio: TDBEdit;
    edmdaCartaoDebito: TDBEdit;
    edmdaCartaoCredito: TDBEdit;
    edmdaChequeTerceiros: TDBEdit;
    edmdaChequeProprio: TDBEdit;
    edmdaPix: TDBEdit;
    edfaltatroco: TDBEdit;
    btcartaodebito: TBitBtn;
    btcartaocredito: TBitBtn;
    btchequeterceiros: TBitBtn;
    btchequeproprios: TBitBtn;
    AcoesLote: TActionList;
    ActDinheiro: TAction;
    ActTrocoDinheiro: TAction;
    ActConvenio: TAction;
    ActCartaoDebito: TAction;
    ActCartaoCredito: TAction;
    ActChequeTerceiros: TAction;
    ActChequeProprios: TAction;
    ActTrocoChequeTerceiros: TAction;
    ActTrocoChequeProprios: TAction;
    ActPix: TAction;
    plTrocos: TPanel;
    plmdatroco33: TPanel;
    plF11: TPanel;
    edmdaTrocoChequeProprio: TDBEdit;
    bttrocochequeproprios: TBitBtn;
    plmdatroco22: TPanel;
    plF10: TPanel;
    edmdaTrocoChequeTerceiros: TDBEdit;
    bttrocochequeterceiros: TBitBtn;
    plmdatroco11: TPanel;
    plF9: TPanel;
    edmdaTrocoDinheiro: TDBEdit;
    plmdatrocotit: TPanel;
    plteclastroco: TPanel;
    ACBrExtenso: TACBrExtenso;
    rfititcodigo: TIntegerField;
    PlMulta: TPanel;
    lltemulta: TLabel;
    ltemulta: TDBEdit;
    lteltemulta: TFloatField;
    cfgcfgdatapadrao: TDateField;
    adc: tuniquery;
    adcadccodigo: TIntegerField;
    cfgcfgusaadc: TIntegerField;
    tfd: tuniquery;
    tfdtfdcodigo: TIntegerField;
    tfdtfdidentificacao: TStringField;
    ativar: TTimer;
    IdentificaBaixa: tuniquery;
    ccov: tuniquery;
    cltv: tuniquery;
    mdatfdcodigo: TIntegerField;
    ltetr: tuniquery;
    ltetrltechave: TIntegerField;
    ltetrtfdcodigo: TIntegerField;
    ltetrltedata: TDateField;
    ltetrlteprincipal: TFloatField;
    ltetrltemulta: TFloatField;
    ltetrltejuros: TFloatField;
    ltetrltedesconto: TFloatField;
    ltetrltetotal: TFloatField;
    ltetrlteextenso: TStringField;
    dtltr: tuniquery;
    dtltrdtlchave: TIntegerField;
    dtltrltechave: TIntegerField;
    dtltrcedcodigo: TIntegerField;
    dtltrdtlvalor: TFloatField;
    dtltrmdacodigo: TIntegerField;
    tmpmdaCredito: TFloatField;
    plcreditos: TPanel;
    Panel2: TPanel;
    edmdaCredito: TDBEdit;
    btcreditos: TBitBtn;
    ActCreditos: TAction;
    let: tuniquery;
    lcv: tuniquery;
    lcvlcvchave: TIntegerField;
    lcvltechave: TIntegerField;
    lcvmcrchave: TIntegerField;
    lcvmcrvalor: TFloatField;
    vlet: tuniquery;
    vletletchave: TIntegerField;
    vletltechave: TIntegerField;
    vletetdcodigo: TIntegerField;
    rcr: tuniquery;

    cfgcfgusactb: TIntegerField;
    ccd: tuniquery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    lteclbcodigo: TIntegerField;
    ltectacodigo: TIntegerField;
    lteltetroco: TFloatField;
    dtldtlvalorinfo: TFloatField;
    mesflacodigo: TIntegerField;
    pltrocadevolucao: TPanel;
    Panel3: TPanel;
    edmdaTrocaDevolucao: TDBEdit;
    btrocadevolucao: TBitBtn;
    ActTrocaDevolucao: TAction;
    tmpmdatrocadevolucao: TFloatField;
    tmpmdaDoacao: TFloatField;
    pldoacao: TPanel;
    Panel4: TPanel;
    edmdaDoacao: TDBEdit;
    btdoacao: TBitBtn;
    ActDoacao: TAction;
    idt: tuniquery;
    idtidtchave: TIntegerField;
    idtmdtchave: TIntegerField;
    idtitmchave: TIntegerField;
    idtmeschave: TIntegerField;
    idtflacodigo: TIntegerField;
    idtidtquantidade: TFloatField;
    idtidtmotivo: TStringField;
    idtunicodigo: TIntegerField;
    idtidtvalor: TFloatField;
    idtidtdesconto: TFloatField;
    idtidttotal: TFloatField;
    cfgcfgtrocadevolucao: TIntegerField;
    plvale: TPanel;
    Panel5: TPanel;
    edmdaVale: TDBEdit;
    tmpmdaVale: TFloatField;
    ActVale: TAction;
    rfmflacodigo: TIntegerField;
    mfiflacodigo: TIntegerField;
    mltflacodigo: TIntegerField;
    lteflacodigo: TIntegerField;
    ltetrflacodigo: TIntegerField;
    dtlflacodigo: TIntegerField;
    ccoflacodigo: TIntegerField;
    dtltrflacodigo: TIntegerField;
    tmpmdaTrocoVale: TFloatField;
    plmdatroco77: TPanel;
    Panel6: TPanel;
    edmdaTrocovale: TDBEdit;
    bttrocovale: TBitBtn;
    ActTrocoVale: TAction;
    adcadcliquidaautomatico: TIntegerField;
    cfgcfgsalvatroco: TIntegerField;
    limite: tuniquery;
    limiteetdcodigo: TIntegerField;
    limiteetllimitetotal: TFloatField;
    disponivel: tuniquery;
    disponivelrfisaldocapital: TFloatField;
    plcontroleLimite: TPanel;
    pltitlimitetotal: TPanel;
    pltitlimitedisponivel: TPanel;
    pllimitedisponivel: TPanel;
    pllimitetotal: TPanel;
    cfgcfgcontrolalimite: TIntegerField;
    plaFaturar: TPanel;
    Panel7: TPanel;
    edmdaAFaturar: TDBEdit;
    btafaturar: TBitBtn;
    tmpmdaOnline: TFloatField;
    cfgcfgusagarantia: TIntegerField;
    plContraVale: TPanel;
    plValorContraVale: TPanel;
    Panel1: TPanel;
    ajulte: tuniquery;
    limiteetldescontopadrao: TFloatField;
    cfgcfgusacaixaprevenda: TIntegerField;
    ets: tuniquery;
    etsetscodigo: TIntegerField;
    etstsecodigo: TIntegerField;
    etsetdcodigo: TIntegerField;
    etsetsdata: TDateField;
    etsetshistorico: TStringField;
    etstseidentificacao: TStringField;
    mdt: tuniquery;
    mdtmdtchave: TIntegerField;
    mdtmeschaveorigem: TIntegerField;
    mdtmeschavedestino: TIntegerField;
    itm: tuniquery;
    saldo: tuniquery;
    cfgcfgctbusaccg: TIntegerField;
    mcg: tuniquery;
    mcgccgcodigo: TIntegerField;
    mcgmcgchave: TIntegerField;
    mcgmcgvalor: TFloatField;
    mcgmcgdata: TDateField;
    mcgmcgtabela: TStringField;
    mcgmcgchaveorigem: TIntegerField;
    mcgmcgsituacao: TIntegerField;
    mcgclbcodigo: TIntegerField;
    mcgmcgregistro: TDateTimeField;
    mcgrfi: tuniquery;
    mcgrfirfichave: TIntegerField;
    mcgrfimfivalor: TFloatField;
    mcgrficcgcodigo: TIntegerField;
    qryveri: tuniquery;
    mcgmcgcompetencia: TStringField;
    mcgrfimcgcompetencia: TStringField;
    rfirdcnrauto: TStringField;
    ActAFaturar: TAction;
    lteccxchave: TIntegerField;
    dtldtlregistro: TDateTimeField;
    dtlccxchave: TIntegerField;
    cfgcfgmgoufinalizadelivery: TIntegerField;
    cfgcfgmgouctadelivery: TIntegerField;
    rdc: tuniquery;
    ltr: tuniquery;
    Panel8: TPanel;
    plid: TPanel;
    PlQtdRecno: TPanel;
    dtlmes: tuniquery;
    dtlmesccxchave: TIntegerField;
    cfgcfgctacodigopix: TIntegerField;
    edr: TUniQuery;
    etf: TUniQuery;
    dtlrdcnrauto: TStringField;
    edmdaOnline: TDBEdit;
    ActOnline: TAction;
    cltdtlchave: TIntegerField;
    adcctacodigo: TIntegerField;
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
    orcorchoraencerr: TTimeField;
    orcclbcaixa: TIntegerField;
    orcclbvendedor: TIntegerField;
    orceqpcodigo: TIntegerField;
    orcfoacodigo: TIntegerField;
    orctdfcodigo: TStringField;
    orcflacodigo: TIntegerField;
    orcclbencerrou: TIntegerField;
    orcorcdataentrega: TDateField;
    orcorchoraentrega: TTimeField;
    orcedrcodigoentrega: TIntegerField;
    orcmdacodigo: TIntegerField;
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
    litopropededescrserv: TIntegerField;
    litopropedetecnicoserv: TIntegerField;
    litovrpcodigo: TIntegerField;
    litoitoacrescimovalor: TFloatField;
    litoitoacrescimototal: TFloatField;
    litoitoacrescimosaldo: TFloatField;
    litoitopercentualcombo: TFloatField;
    cfgcfgdescontonoservico: TIntegerField;
    zPCalcDescAV: TUniSQL;
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
    itovrpcodigo: TIntegerField;
    itotdfcodigo: TStringField;
    itoflacodigo: TIntegerField;
    itopmpchave: TIntegerField;
    itoitoacrescimoav: TFloatField;
    itoclbatendente: TIntegerField;
    itoitoitempedido: TStringField;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure aosair(Sender: TObject);
    procedure ltejurosExit(Sender: TObject);
    procedure ltedescontoExit(Sender: TObject);
    procedure ActCartaoCreditoExecute(Sender: TObject);
    procedure ActChequePropriosExecute(Sender: TObject);
    procedure ActChequeTerceirosExecute(Sender: TObject);
    procedure ActDinheiroExecute(Sender: TObject);
    procedure ActConvenioExecute(Sender: TObject);
    procedure ActCartaoDebitoExecute(Sender: TObject);
    procedure ActPixExecute(Sender: TObject);
    procedure ActTrocoDinheiroExecute(Sender: TObject);
    procedure ActTrocoChequeTerceirosExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tmpAfterInsert(DataSet: TDataSet);
    procedure bfecharClick(Sender: TObject);
    procedure ativarTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActTrocoChequePropriosExecute(Sender: TObject);
    procedure ActCreditosExecute(Sender: TObject);
    procedure ccoAfterPost(DataSet: TDataSet);
    procedure ActTrocaDevolucaoExecute(Sender: TObject);
    procedure ActDoacaoExecute(Sender: TObject);
    procedure ActValeExecute(Sender: TObject);
    procedure dtlBeforePost(DataSet: TDataSet);
    procedure ActTrocoValeExecute(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure ActOnlineExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private


    Acesso: TAcesso;
    vOperacaoTEF: TOperacaoTEF;
    pack: Cardinal;
    // vclbcodigo: string;
    vTipoControle: Integer;

    vretornoch: string;
    vretornocc: string;
    vretornoap: string;
    vRetorno: string;

    // vtrmcodigo: string;
    vlteprincipal: string;
    vltemulta: String;
    vltejuros: string;
    vltedesconto: string;

    VpTfdCodigo: Integer;
    vpCtaCodigo: String;
    vpFlaCodigo: String;
    vpMdtChave: String;

    VtocCodigo: Integer;
    vpEtdCodigo: Integer;
    vpVendaEtdCodigo: Integer;

    Fzcone: tuniconnection;
    FDataAtual: TDate;
    FContaCaixa: Integer;
    procedure ajustaaltura;
    procedure definirconexao;
    procedure ajustapaineis;
    function registracheques(vchave: string; vvalor: string): string;
    function registracartoes(vchave: string; vvalor: string): string;
    function registraconvenio(vmeschave: string; vvalor: string; vafaturar: boolean = false): string;
    procedure recalculatotais;
    function somatrocos: Currency;
    function somavalores: Currency;
    procedure registradtl;
    procedure removedtlzerado;
    function AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao: TDate; vtitvctoinicial: TDate;
      vtfdcodigo: Integer; vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia: Double;
      vtitvalomulta: Double; vtitpercmesmora: Double; vtitvalodesc: Double; vtitpercmulta: Double; vtitpercmesmulta: Double; vbcocodigo: String;
      vcarcodigo: Integer; vtitdiasmulta: Integer; vtitdiasdesc: Integer): Integer;

    procedure VendaAVistas(vtotrfichtr: Double; vtotrfiditr: Double; vtotrfiav: Double; vtotrfichpr: Double);

    procedure ExecutaAcao(Sender: TObject);
    procedure ProcessaTeclasAtalho(vmdacodigo: Integer);
    procedure Pagamento;
    procedure Recebimento;
    function RegistraCCO(vdtlchave: string; vvalor: Double; vTroco: Double; VpTfdCodigo: Integer; vCtaCodigo: string = '0'; vmdacodigo: Integer = 0;
      vdoacao: Integer = 0): string;
    procedure RegistraCartao(vdtlchave: String; vTotal: Double);
    function AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double; vrdcnrauto: string = ''): Integer;
    function confirmaregistrolte: boolean;
    procedure ZeraTrocos;
    function SelecionaConta: string;
    procedure IdentificarBaixa(vLteChave: string);
    function mostralistacreditos(modulo: string; vusuario: string; vfiltro: string; vmodo: string; vtnccodigo: string; vrcrcodigo: string): string;
    function RegistraCredito(vdtlchave: string; vTotal: Double; vtnccodigo: string): string;
    procedure RegistraCCOChequesManual(pCCoChave: String; pDtlChave: String; pSomenteCheque: boolean);
    procedure SetDataAtual(const Value: TDate);
    function GetHoraAtual: TTime;

    function RegistraTrocaDevolucao(vdtlchave: string; vTotal: Double; vtnccodigo: string): string;
    function mostralistatrocadevolucaos(pModulo: string; pFiltro: string): string;
    function CarregalimiteCliente(vetdcodigo: Integer): Double;
    function LimiteAutorizado(vetdcodigo: String; vValorVenda: Double; vlLimiteSolic: Double; vlLimiteDisponivel: Double;
      vpOrcChave: Integer): boolean;
    Function CreditarValor(vdtlchave: string; vmeacodigo: String; vtnccodigo: String): string;
    function mostralista(pModulo, pFiltro: string): string;
    procedure RegistraOnLine(vdtlchave: String; vTotal: Double; vOriodigo:String);
    procedure AplicaDescontoGeral;
    procedure Recalculatotal;
  public
    { Public declarations }
    vpOrcChave:String;

    vpMdaAnterior: TStringList;
    vpOriCosdigo: string;
    vpCcxchave: Integer;
    vEtdCredito: Integer;
    vpTncCodigo: string;
    vpCcoChave: string;
    vpTctCodigo: Integer; // Tipo de Conta
    vpCtaTerminal: string;
    vpCtaUtilizada: Integer;
    vpLtechave: string;
    vpLteMcgchave: string;
    vpEtlDescontoPadrao: Double;

    vchave: string;
    vpMesChave: String;

    VpPodeConvenio: boolean;
    VpPodeDoacao: boolean;
    VpPodeCartoes: boolean;
    VpComplemento: boolean;
    VpPodeGarantia: boolean;
    VpPodeTroca: boolean;
    VpCheque: boolean;

    vcedcodigo: Integer;

    vpTeclaFinalizador: Integer;
    vpValorFinalizador: Double;
    vpClbCodigo: String;

    vpDinheiro: Double;
    vpDoacao: Double;
    vpGarantia: Double;
    vpAFaturar: Double;
    vpVale: Double;

    vpConvenio: Double;
    vpCartaoDebito: Double;
    vpCartaoCredito: Double;
    vpChequeTerceiros: Double;
    vpChequeProprio: Double;
    vpPix: Double;
    vpTrocaDevolucao: Double;

    vpTotDinTroco: Double;
    vpTotChPropTroco: Double;
    vpTotChequeTroco: Double;
    vpTotValeTroco: Double;
    vpTotCreditos: Double;

    procedure IniciaProcesso;
    function registrachequesproprios(vchave, vvalor: string): string;
    function selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
    procedure VerificaPaineis;
    procedure VerificaPaineisTrocos;
  published
    property ZCone: tuniconnection read Fzcone write Fzcone;
    property DataAtual: TDate read FDataAtual write SetDataAtual;
    property HoraAtual: TTime read GetHoraAtual;

    property ContaCaixa: Integer read FContaCaixa write FContaCaixa;
  end;

  TAutorizacaoAtenLimite = function(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vLimiteSolic: Double; vorcchave: String): string;

  TSelecionaCheques = function(AOwner: TComponent; Conexao: tuniconnection; vdtlchave: string; vvalor: string; vschcodigo: Integer;
    vCtaCodigo: string = ''): string;

  TRegistraConvenio = function(AOwner: TComponent; Conexao: tuniconnection; vTotal: string; vchave: string; ltechave: String; parcelas: string;
     situacao: string; Acesso: TAcesso; vmechave: Integer = 0 ;vDadosParcelas: string = ''): string;




  TRegistraCartoes = function(AOwner: TComponent; Conexao: tuniconnection; vTotal: string; vdtlchave: string): string;

  TRegistraCartoesTEF = function(AOwner: TComponent; Conexao: tuniconnection; vTotal: string; vdtlchave: string; vOperacaoTEF: TOperacaoTEF): string;

  TSelecionaConta = function(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string): string;

  TFormuSelecionaCreditos = function(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string;
    vfiltro: string; vmodo: string; vtnccodigo: string; vrcrcodigo: string; vvalor: string; vLote: string): string;

var
  flte: Tflte;

implementation

uses
  System.AnsiStrings, System.SysUtils;

{$R *.dfm}

function registralote(AOwner: TComponent; Conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vPodeCartoes: boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: boolean = True;
  vControleEntrega: boolean = false): string;

begin
  flte := Tflte.Create(AOwner);

  try

    flte.ZCone := Conexao;
    flte.consulta.Connection := flte.ZCone;

    (* Definição da data atual. *)
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'SELECT cfgdatapadrao FROM cfg;';
    flte.consulta.Open;

    flte.DataAtual := flte.consulta.Fields[0].AsDateTime;
    flte.consulta.Close;

    flte.Acesso := Acesso;
    flte.Acesso.Usuario := Acesso.Usuario;
    flte.vlteprincipal := principal;
    flte.vltemulta := multa;
    flte.vltejuros := juros;
    flte.vltedesconto := desconto;
    flte.Acesso.Terminal := StrToInt(vtrmcodigo);
    flte.VpPodeCartoes := vPodeCartoes;

    flte.vpTeclaFinalizador := vTeclaFinalizador;
    flte.vpValorFinalizador := RoundTo(vValorFinalizador, -2);

    flte.VpPodeConvenio := vPodeConvenio;
    flte.VpPodeTroca := vPodeTrocaDoacao;
    flte.VpTfdCodigo := StrToInt(vmodo);

    flte.cfg.Close;
    flte.cfg.Connection := flte.ZCone;
    flte.cfg.Params[0].AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

    if flte.cfgcfgctacodigopix.AsInteger = 0 then
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
        flte.cfg.Post;
      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
        flte.consulta.Open;
        if not flte.consulta.IsEmpty then
        begin
          flte.cfg.Edit;
          flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
          flte.cfg.Post;
        end;

      end;

      flte.cfg.Close;
      flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
      flte.cfg.Open;

    end;

    if flte.cfgcfgmgoufinalizadelivery.AsInteger = 1 then
    begin

      flte.ContaCaixa := pCtaCaixa;
      flte.vpCtaUtilizada := flte.ContaCaixa;

    end
    else
    begin
      if vControleEntrega then
      begin
        flte.vpCtaUtilizada := flte.cfgcfgmgouctadelivery.AsInteger;
        flte.ContaCaixa := pCtaCaixa;
      end
      else
      begin

        flte.ContaCaixa := pCtaCaixa;
        flte.vpCtaUtilizada := flte.ContaCaixa;
      end;
    end;

    if flte.cfgcfgtrocadevolucao.AsInteger = 1 then
    begin
      if (flte.VpTfdCodigo = tfdContaCorrente) or (flte.VpTfdCodigo = tfdRenegociacao) or (flte.VpTfdCodigo = tfdTesouraria) then
      begin
        flte.VpPodeDoacao := false;
        flte.VpPodeTroca := false;
      end
      else
      begin
        flte.VpPodeDoacao := True;
        flte.VpPodeTroca := True;

      end;
    end
    else
    begin
      // flte.VpPodeDoacao := false;
      flte.VpPodeTroca := false;

    end;

    flte.vchave := vchave;
    flte.vpTncCodigo := '';

    flte.ContaCaixa := pCtaCaixa;

    if (flte.VpTfdCodigo = tfdVenda) then
      flte.vpMesChave := vchave
    else
      flte.vpMesChave := '';

    if (flte.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
    begin
      flte.vpCcoChave := vchave;
    end
    else
    begin
      flte.vpCcoChave := '0';
    end;

    if (flte.VpTfdCodigo IN [tfdCredito, tfdVerba]) then
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.let.Connection := flte.ZCone;
        flte.let.Close;
        flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo  FROM let,v_rcr  ';
        flte.let.SQL.Add('where v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
        flte.let.SQL.Add('and v_rcr.ltechave=' + flte.vchave);
        flte.let.Open;

        if not flte.let.IsEmpty then
        begin
          flte.vpLtechave := flte.let.FieldByName('ltechave').AsString;
          flte.vpEtdCodigo := flte.let.FieldByName('etdcodigo').AsInteger;
          flte.vpTncCodigo := flte.let.FieldByName('tnccodigo').AsString;
        end;
      end;

    end
    else if (flte.VpTfdCodigo IN [tfdVenda]) then
    begin

      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select etdcodigo from mes where meschave=' + flte.vchave;
      flte.consulta.Open;

      flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

    end
    else
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from let where ltechave=' + flte.vchave;
        flte.consulta.Open;

      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vchave;
        flte.consulta.Open;

      end;
      if not flte.consulta.IsEmpty then
      begin
        flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

      end
      else
      begin
        if (flte.vpCcoChave <> '') and (flte.vpCcoChave <> '0') then
        begin
          flte.consulta.Close;
          flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vpCcoChave;
          flte.consulta.Open;

          if not flte.consulta.IsEmpty then
          begin

            flte.let.Connection := flte.ZCone;
            flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;
            flte.let.Close;
            flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo FROM let,v_rcr  ';
            flte.let.SQL.Add('where  v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
            flte.let.SQL.Add('and let.etdcodigo=' + IntToStr(flte.vpEtdCodigo));
            flte.let.Open;

          end
          else
          begin
            flte.vpEtdCodigo := 0;
          end;

        end
        else
        begin
          flte.vpEtdCodigo := 0;

        end;
      end;
    end;

    if (flte.VpTfdCodigo IN [tfdVenda]) then
    begin

      flte.dtlmes.Close;
      flte.dtlmes.Connection := flte.ZCone;
      flte.dtlmes.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
      flte.dtlmes.ParamByName('meschave').AsString := flte.vchave;
      flte.dtlmes.Open;
      if not flte.dtlmes.IsEmpty then
      begin
        flte.vpCcxchave := flte.dtlmes.Fields[0].AsInteger;
      end
      else
      begin
        flte.vpCcxchave := 0;
      end;

    end
    else
    begin

      flte.consulta.Close;
      flte.consulta.SQL.Text := 'SELECT ccxchave FROM ccx  WHERE  ccx.clbcodigo=' + Acesso.Usuario.ToString +
        ' AND ccx.ccxdatafecha is NULL order by ccxchave desc limit 1';
      flte.consulta.Open;

      if not flte.consulta.IsEmpty then
      begin
        flte.vpCcxchave := flte.consulta.FieldByName('ccxchave').AsInteger;
      end
      else
      begin
        flte.vpCcxchave := 0;
      end;

    end;

    { * flte.consulta.Close;
      flte.consulta.SQL.Text := 'SELECT ccxchave FROM ccx  WHERE (ccx.trmcodigo=' + vtrmcodigo + ' OR  ccx.trmcodigo IS null ) and ccx.clbcodigo=' + Acesso.Usuario.ToString +
      ' AND ccx.ccxdatafecha is NULL order by ccxchave desc limit 1';
      flte.consulta.Open;* }

    if flte.vpMesChave<>'' then
    begin
      flte.mes.Close;
      flte.mes.Connection := flte.ZCone;
      flte.mes.ParamByName('meschave').AsString:=flte.vpMesChave;
      flte.mes.Open;
     end;

    if not flte.mes.IsEmpty then
    begin
      flte.vpEtdCodigo := flte.mes.FieldByName('etdcodigo').AsInteger;
      flte.vpVendaEtdCodigo:= flte.mes.FieldByName('etdcodigo').AsInteger;
    end;


    flte.IniciaProcesso;

    if flte.vpCcoChave = '0' then
    begin
      if (flte.vretornocc <> '00000000') and (flte.vretornocc <> '') then
        Result := flte.vretornoch + '00000000' + '00000999'
      else
        Result := flte.vretornoch + flte.vretornocc + flte.vretornoap;
    end
    else
      Result := Trim(flte.vRetorno);

  finally
    FreeAndNil(flte);
  end;
end;

function registraloteent(AOwner: TComponent; Conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vPodeCartoes: boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: boolean = True; vPodeCheque: boolean = false;
  vCcxChave: string = ''): string;
begin
  flte := Tflte.Create(AOwner);

  try

    flte.ZCone := Conexao;
    flte.consulta.Connection := flte.ZCone;

    (* Definição da data atual. *)
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'SELECT cfgdatapadrao FROM cfg;';
    flte.consulta.Open;

    flte.DataAtual := flte.consulta.Fields[0].AsDateTime;
    flte.consulta.Close;
    flte.Acesso := Acesso;
    flte.Acesso.Usuario := Acesso.Usuario;
    flte.vlteprincipal := principal;
    flte.vltemulta := multa;
    flte.vltejuros := juros;
    flte.vltedesconto := desconto;
    flte.Acesso.Terminal := StrToInt(vtrmcodigo);
    flte.VpPodeCartoes := vPodeCartoes;

    flte.vpTeclaFinalizador := vTeclaFinalizador;
    flte.vpValorFinalizador := RoundTo(vValorFinalizador, -2);

    flte.VpPodeConvenio := vPodeConvenio;
    flte.VpCheque := vPodeCheque;
    flte.VpPodeTroca := vPodeTrocaDoacao;
    flte.VpTfdCodigo := StrToInt(vmodo);
    if vCcxChave <> '' then
    begin
      try
        flte.vpCcxchave := vCcxChave.ToInteger;
      except
      end;
    end;

    if flte.cfgcfgtrocadevolucao.AsInteger = 1 then
    begin
      if (flte.VpTfdCodigo = tfdContaCorrente) or (flte.VpTfdCodigo = tfdRenegociacao) or (flte.VpTfdCodigo = tfdTesouraria) then
      begin
        flte.VpPodeDoacao := false;
        flte.VpPodeTroca := false;
      end
      else
      begin
        flte.VpPodeDoacao := True;
        flte.VpPodeTroca := True;

      end;

    end
    else
    begin
      flte.VpPodeTroca := false;

    end;
    if flte.VpCheque then
    begin
      flte.plchequesterceiros.Visible := True;
      flte.ActChequeTerceiros.Enabled := True;

    end
    else
    begin
      flte.plchequesterceiros.Visible := false;
      flte.ActChequeTerceiros.Enabled := false;

    end;
    flte.vchave := vchave;
    flte.vpTncCodigo := '';
    if flte.cfgcfgmgouctadelivery.AsInteger <> 0 then
    begin
      flte.vpCtaUtilizada := flte.cfgcfgmgouctadelivery.AsInteger;
    end
    else
    begin
      flte.vpCtaUtilizada := flte.cfgcfgctacaixa.AsInteger;
    end;

    flte.ContaCaixa := pCtaCaixa;

    if (flte.VpTfdCodigo = tfdVenda) then
      flte.vpMesChave := vchave
    else
      flte.vpMesChave := '';

    if (flte.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
    begin
      flte.vpCcoChave := vchave;
    end
    else
    begin
      flte.vpCcoChave := '0';
    end;

    if (flte.VpTfdCodigo IN [tfdCredito, tfdVerba]) then
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.let.Connection := flte.ZCone;
        flte.let.Close;
        flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo  FROM let,v_rcr  ';
        flte.let.SQL.Add('where v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
        flte.let.SQL.Add('and v_rcr.ltechave=' + flte.vchave);
        flte.let.Open;

        if not flte.let.IsEmpty then
        begin
          flte.vpLtechave := flte.let.FieldByName('ltechave').AsString;
          flte.vpEtdCodigo := flte.let.FieldByName('etdcodigo').AsInteger;
          flte.vpTncCodigo := flte.let.FieldByName('tnccodigo').AsString;
        end;
      end;

    end
    else if (flte.VpTfdCodigo IN [tfdVenda]) then
    begin

      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select etdcodigo from mes where meschave=' + flte.vchave;
      flte.consulta.Open;

      flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

    end
    else
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from let where ltechave=' + flte.vchave;
        flte.consulta.Open;

      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vchave;
        flte.consulta.Open;

      end;
      if not flte.consulta.IsEmpty then
      begin
        flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

      end
      else
      begin
        if (flte.vpCcoChave <> '') and (flte.vpCcoChave <> '0') then
        begin
          flte.consulta.Close;
          flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vpCcoChave;
          flte.consulta.Open;

          if not flte.consulta.IsEmpty then
          begin

            flte.let.Connection := flte.ZCone;
            flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;
            flte.let.Close;
            flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo FROM let,v_rcr  ';
            flte.let.SQL.Add('where  v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
            flte.let.SQL.Add('and let.etdcodigo=' + IntToStr(flte.vpEtdCodigo));
            flte.let.Open;

          end
          else
          begin
            flte.vpEtdCodigo := 0;
          end;

        end
        else
        begin
          flte.vpEtdCodigo := 0;

        end;
      end;
    end;

    flte.IniciaProcesso;

    if flte.vpCcoChave = '0' then
    begin
      if (flte.vretornocc <> '00000000') and (flte.vretornocc <> '') then
        Result := flte.vretornoch + '00000000' + '00000999'
      else
        Result := flte.vretornoch + flte.vretornocc + flte.vretornoap;
    end
    else
      Result := Trim(flte.vRetorno);

  finally
    FreeAndNil(flte);
  end;
end;

function registralotedatagourmet(AOwner: TComponent; Conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; Acesso: TAcesso; vmodo: string; vDia: TDate; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vPodeCartoes: boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: boolean = True;
  vControleEntrega: boolean = false; vCcxChave: Integer = 0;vEtdCodigo: Integer = 0; vComplemento:Boolean=false ): string;
var
  vloricodigo: string;
begin

  flte := Tflte.Create(AOwner);

  try

    flte.ZCone := Conexao;
    flte.consulta.Connection := flte.ZCone;

    (* Definição da data atual. *)
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'SELECT cfgdatapadrao FROM cfg;';
    flte.consulta.Open;
    flte.vpCcxchave := vCcxChave;
    flte.vpVendaEtdCodigo:=vEtdCodigo;

    flte.DataAtual := vDia;
    flte.consulta.Close;
    flte.Acesso := Acesso;
    flte.Acesso.Usuario := Acesso.Usuario;
    flte.vlteprincipal := principal;
    flte.vltemulta := multa;
    flte.vltejuros := juros;
    flte.vltedesconto := desconto;
    flte.Acesso.Terminal := StrToInt(vtrmcodigo);
    flte.VpPodeCartoes := vPodeCartoes;
    flte.VpComplemento := vComplemento;

    flte.vpTeclaFinalizador := vTeclaFinalizador;
    flte.vpValorFinalizador := RoundTo(vValorFinalizador, -2);

    flte.VpPodeConvenio := vPodeConvenio;
    flte.VpPodeTroca := vPodeTrocaDoacao;
    flte.VpTfdCodigo := StrToInt(vmodo);
    flte.vchave := vchave;
    flte.consulta.close;

    if flte.vchave<>'' then
    begin
      flte.consulta.Close;
      flte.consulta.sql.Text:='select orcchave from mor where meschave='+flte.vchave;
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.vpOrcChave:=flte.consulta.FieldByName('orcchave').AsString;
      end;
    end;


    flte.vpTncCodigo := '';

    flte.cfg.Close;
    flte.cfg.Connection := flte.ZCone;
    flte.cfg.Params[0].AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

    if flte.cfgcfgctacodigopix.AsInteger = 0 then
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
        flte.cfg.Post;
      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
        flte.consulta.Open;
        if not flte.consulta.IsEmpty then
        begin
          flte.cfg.Edit;
          flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
          flte.cfg.Post;
        end;

      end;

      flte.cfg.Close;
      flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
      flte.cfg.Open;

    end;

    if vControleEntrega then
    begin
      flte.vpCtaUtilizada := flte.cfgcfgmgouctadelivery.AsInteger;
    end
    else
    begin
      flte.vpCtaUtilizada := flte.cfgcfgctacaixa.AsInteger;
    end;

    flte.ContaCaixa := pCtaCaixa;

    if flte.cfgcfgtrocadevolucao.AsInteger = 1 then
    begin

      if (flte.VpTfdCodigo = tfdContaCorrente) or (flte.VpTfdCodigo = tfdRenegociacao) or (flte.VpTfdCodigo = tfdTesouraria) or
        (flte.VpTfdCodigo = tfdRecebimentos) or (flte.VpTfdCodigo = tfdPagamentos) then
      begin
        flte.VpPodeDoacao := false;
        flte.VpPodeTroca := false;
      end
      else
      begin
        flte.VpPodeDoacao := True;
        flte.VpPodeTroca := True;

      end;
    end
    else
    begin
      flte.VpPodeTroca := false;
    end;

    if (flte.VpTfdCodigo = tfdVenda) then
      flte.vpMesChave := vchave
    else
      flte.vpMesChave := '';

    if (flte.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
    begin
      flte.vpCcoChave := vchave;
    end
    else
    begin
      flte.vpCcoChave := '0';
    end;

    if (flte.VpTfdCodigo IN [tfdCredito, tfdVerba]) then
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.let.Connection := flte.ZCone;
        flte.let.Close;
        flte.let.Close;
        flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo  FROM let,v_rcr  ';
        flte.let.SQL.Add('where v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
        flte.let.SQL.Add('and v_rcr.ltechave=' + flte.vchave);
        flte.let.Open;

        if not flte.let.IsEmpty then
        begin
          flte.vpLtechave := flte.let.FieldByName('ltechave').AsString;
          flte.vpEtdCodigo := flte.let.FieldByName('etdcodigo').AsInteger;
          flte.vpTncCodigo := flte.let.FieldByName('tnccodigo').AsString;
        end;
      end;

    end
    else if (flte.VpTfdCodigo IN [tfdVenda]) then
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') then
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo, oricodigo from mes where meschave=' + flte.vchave;
        flte.consulta.Open;

        flte.vpOriCosdigo := Trim(flte.consulta.Fields[1].AsString);
        if (flte.vpOriCosdigo <> '0') and (flte.vpOriCosdigo <> '') then
        begin
          flte.consulta.Close;
          flte.consulta.SQL.Text := 'select etdcodigo, oricodigo from ori where oricodigo=' + flte.vpOriCosdigo;
          flte.consulta.Open;

          flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

        end
        else
        begin
          flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;
        end;
      end;

    end
    else
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from let where ltechave=' + flte.vchave;
        flte.consulta.Open;

      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vchave;
        flte.consulta.Open;

      end;
      if not flte.consulta.IsEmpty then
      begin
        flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

      end
      else
      begin
        if (flte.vpCcoChave <> '') and (flte.vpCcoChave <> '0') then
        begin
          flte.consulta.Close;
          flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vpCcoChave;
          flte.consulta.Open;

          if not flte.consulta.IsEmpty then
          begin

            flte.let.Connection := flte.ZCone;
            flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;
            flte.let.Close;
            flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo FROM let,v_rcr  ';
            flte.let.SQL.Add('where  v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
            flte.let.SQL.Add('and let.etdcodigo=' + IntToStr(flte.vpEtdCodigo));
            flte.let.Open;

          end
          else
          begin
            flte.vpEtdCodigo := 0;
          end;

        end
        else
        begin
          flte.vpEtdCodigo := 0;

        end;
      end;
    end;

    flte.IniciaProcesso;

    if flte.vpCcoChave = '0' then
      Result := flte.vretornoch + flte.vretornocc + flte.vretornoap
    else
      Result := Trim(flte.vRetorno);

  finally
    FreeAndNil(flte);
  end;

end;

function registralotedata(AOwner: TComponent; Conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; Acesso: TAcesso; vmodo: string; vDia: TDate; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vPodeCartoes: boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: boolean = True;
  vControleEntrega: boolean = false; vCcxChave: Integer = 0): string;
begin

  flte := Tflte.Create(AOwner);

  try

    flte.ZCone := Conexao;
    flte.consulta.Connection := flte.ZCone;

    (* Definição da data atual. *)
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'SELECT cfgdatapadrao FROM cfg;';
    flte.consulta.Open;

    flte.DataAtual := vDia;
    flte.consulta.Close;

    flte.vpCcxchave := vCcxChave;

    flte.Acesso := Acesso;
    flte.Acesso.Usuario := Acesso.Usuario;
    flte.vlteprincipal := principal;
    flte.vltemulta := multa;
    flte.vltejuros := juros;
    flte.vltedesconto := desconto;
    flte.Acesso.Terminal := StrToInt(vtrmcodigo);
    flte.VpPodeCartoes := vPodeCartoes;

    flte.vpTeclaFinalizador := vTeclaFinalizador;
    flte.vpValorFinalizador := RoundTo(vValorFinalizador, -2);

    flte.VpPodeConvenio := vPodeConvenio;
    flte.VpPodeTroca := vPodeTrocaDoacao;
    flte.VpTfdCodigo := StrToInt(vmodo);
    flte.vchave := vchave;
    flte.vpTncCodigo := '';

    flte.cfg.Close;
    flte.cfg.Connection := flte.ZCone;
    flte.cfg.Params[0].AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

    if flte.cfgcfgctacodigopix.AsInteger = 0 then
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
        flte.cfg.Post;
      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
        flte.consulta.Open;
        if not flte.consulta.IsEmpty then
        begin
          flte.cfg.Edit;
          flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
          flte.cfg.Post;
        end;

      end;

      flte.cfg.Close;
      flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
      flte.cfg.Open;

    end;

    if vControleEntrega then
    begin
      flte.vpCtaUtilizada := flte.cfgcfgmgouctadelivery.AsInteger;
    end
    else
    begin
      flte.vpCtaUtilizada := flte.cfgcfgctacaixa.AsInteger;
    end;

    flte.ContaCaixa := pCtaCaixa;

    if flte.cfgcfgtrocadevolucao.AsInteger = 1 then
    begin

      if (flte.VpTfdCodigo = tfdContaCorrente) or (flte.VpTfdCodigo = tfdRenegociacao) or (flte.VpTfdCodigo = tfdTesouraria) or
        (flte.VpTfdCodigo = tfdRecebimentos) or (flte.VpTfdCodigo = tfdPagamentos) then
      begin
        flte.VpPodeDoacao := false;
        flte.VpPodeTroca := false;
      end
      else
      begin
        flte.VpPodeDoacao := True;
        flte.VpPodeTroca := True;

      end;
    end
    else
    begin
      flte.VpPodeTroca := false;
    end;

    if (flte.VpTfdCodigo = tfdVenda) then
      flte.vpMesChave := vchave
    else
      flte.vpMesChave := '';

    if (flte.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
    begin
      flte.vpCcoChave := vchave;
    end
    else
    begin
      flte.vpCcoChave := '0';
    end;

    if (flte.VpTfdCodigo IN [tfdCredito, tfdVerba]) then
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.let.Connection := flte.ZCone;
        flte.let.Close;
        flte.let.Close;
        flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo  FROM let,v_rcr  ';
        flte.let.SQL.Add('where v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
        flte.let.SQL.Add('and v_rcr.ltechave=' + flte.vchave);
        flte.let.Open;

        if not flte.let.IsEmpty then
        begin
          flte.vpLtechave := flte.let.FieldByName('ltechave').AsString;
          flte.vpEtdCodigo := flte.let.FieldByName('etdcodigo').AsInteger;
          flte.vpTncCodigo := flte.let.FieldByName('tnccodigo').AsString;
        end;
      end;

    end
    else if (flte.VpTfdCodigo IN [tfdVenda]) then
    begin

      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select etdcodigo from mes where meschave=' + flte.vchave;
      flte.consulta.Open;

      flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

    end
    else
    begin
      if (flte.vchave <> '') and (flte.vchave <> '0') and (flte.vpCcoChave = '0') then
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from let where ltechave=' + flte.vchave;
        flte.consulta.Open;

      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vchave;
        flte.consulta.Open;

      end;
      if not flte.consulta.IsEmpty then
      begin
        flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;

      end
      else
      begin
        if (flte.vpCcoChave <> '') and (flte.vpCcoChave <> '0') then
        begin
          flte.consulta.Close;
          flte.consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + flte.vpCcoChave;
          flte.consulta.Open;

          if not flte.consulta.IsEmpty then
          begin

            flte.let.Connection := flte.ZCone;
            flte.vpEtdCodigo := flte.consulta.Fields[0].AsInteger;
            flte.let.Close;
            flte.let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,v_rcr.tnccodigo FROM let,v_rcr  ';
            flte.let.SQL.Add('where  v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
            flte.let.SQL.Add('and let.etdcodigo=' + IntToStr(flte.vpEtdCodigo));
            flte.let.Open;

          end
          else
          begin
            flte.vpEtdCodigo := 0;
          end;

        end
        else
        begin
          flte.vpEtdCodigo := 0;

        end;
      end;
    end;

    flte.IniciaProcesso;

    if flte.vpCcoChave = '0' then
      Result := flte.vretornoch + flte.vretornocc + flte.vretornoap
    else
      Result := Trim(flte.vRetorno);

  finally
    FreeAndNil(flte);
  end;

end;

{ * criado para tratar registro do atendimento para restaurantes * }
function registraloteres(AOwner: TComponent; Conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string;
  juros: string; desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0;
  vValorFinalizador: Double = 0; vDinheiro: Double = 0; vConvenio: Double = 0; vCartaoDebito: Double = 0; vCartaoCredito: Double = 0;
  vChequeTerceiros: Double = 0; vChequeProprio: Double = 0; vPix: Double = 0; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: boolean = True): string;

var
  vlPrincipal: Double;

begin
  try
    flte := Tflte.Create(AOwner);
    flte.ZCone := Conexao;
    flte.consulta.Connection := flte.ZCone;

    (* Definição da data atual. *)
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'SELECT cfgdatapadrao FROM cfg;';
    flte.consulta.Open;

    flte.DataAtual := flte.consulta.Fields[0].AsDateTime;
    flte.consulta.Close;

    flte.VpPodeCartoes := True;
    flte.Acesso := Acesso;
    vlPrincipal := StrToFloat(BuscaTroca(principal, '.', ','));

    flte.vlteprincipal := FloatToStr(vlPrincipal - (vDinheiro + vConvenio + vCartaoDebito + vCartaoCredito + vChequeTerceiros +
      vChequeProprio + vPix));
    flte.vltemulta := multa;
    flte.vltejuros := juros;
    flte.vltedesconto := desconto;
    flte.Acesso.Terminal := StrToInt(vtrmcodigo);
    flte.ltedesconto.ReadOnly := false;

    flte.vpDinheiro := vDinheiro;
    flte.vpConvenio := vConvenio;
    flte.vpCartaoDebito := vCartaoDebito;
    flte.vpCartaoCredito := vCartaoCredito;
    flte.vpChequeTerceiros := vChequeTerceiros;
    flte.vpChequeProprio := vChequeProprio;
    flte.vpPix := vPix;

    flte.vpTeclaFinalizador := vTeclaFinalizador;
    flte.vpValorFinalizador := RoundTo(vValorFinalizador, -2);

    flte.VpPodeConvenio := vPodeConvenio;
    flte.VpPodeTroca := vPodeTrocaDoacao;
    flte.VpTfdCodigo := StrToInt(vmodo);

    flte.ContaCaixa := pCtaCaixa;

    flte.vchave := vchave;

    if (flte.VpTfdCodigo = tfdVenda) then
      flte.vpMesChave := vchave
    else
      flte.vpMesChave := '';

    if (flte.VpTfdCodigo IN [tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito]) then
      flte.vpCcoChave := vchave
    else
      flte.vpCcoChave := '0';

    flte.IniciaProcesso;

    if flte.vpCcoChave = '0' then
      Result := flte.vretornoch + flte.vretornocc + flte.vretornoap
    else
      Result := Trim(flte.vRetorno);

  finally
    FreeAndNil(flte);
  end;
end;

exports registralote, registraloteres, registralotedata, registraloteent, registralotedatagourmet;


function GuidCreate: string;
begin
 Result := TGUID.NewGuid.ToString();
end;

procedure Tflte.registradtl;
var
  i: Integer;
  vmdatr: Integer;
  vnomecampo: string;
begin

  mda.Close;
  // mda.Params[0].AsInteger := VpTfdCodigo;
  mda.Open;

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Params[1].AsInteger := Acesso.Filial;
  dtl.Open;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;

  for i := 0 to Self.tmp.FieldCount - 1 do
  begin
    vmdatr := Self.tmp.Fields[i].Tag;
    vnomecampo := Self.tmp.Fields[i].FieldName;

    (* Se localiza modalidade e valor é maior que zero registra o detalhe *)
    if (mda.Locate('mdacodigo', vmdatr, [])) and (Self.tmp.FieldByName(vnomecampo).AsFloat > 0) and (vmdatr <> 0) then
    begin

      if not(dtl.Locate('mdacodigo', vmdatr, [])) then
        dtl.Append
      else
        dtl.Edit;

      dtldtlvalorinfo.AsFloat := Self.tmp.FieldByName(vnomecampo).AsFloat;
      dtlltechave.AsInteger := Self.lteltechave.AsInteger;

      if Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0 then
        dtlcedcodigo.AsInteger := 0;

      if (Pos('mda', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) and ((Pos('troco', LowerCase(Self.tmp.Fields[i].FieldName)) = 0)) then
        dtlcedcodigo.AsInteger := 1;

      if (Pos('mdatroco', LowerCase(Self.tmp.Fields[i].FieldName)) > 0) then
        dtlcedcodigo.AsInteger := 0;

      dtlmdacodigo.AsInteger := vmdatr;

      dtldtlvalor.AsFloat := Self.tmp.Fields[i].AsFloat;
      dtlflacodigo.AsInteger := Acesso.Filial;

      dtldtlregistro.AsString := agora(application, ZCone);

      if (flte.VpTfdCodigo = tfdContaCorrente) then
        dtlccxchave.AsInteger := 0
      else
        dtlccxchave.AsInteger := vpCcxchave;

      dtlrdcnrauto.AsString:=GuidCreate;
      dtl.Post;

      if (dtlmdacodigo.AsInteger=mdapix) or (dtlmdacodigo.AsInteger=mdaCartaoDebito) or (dtlmdacodigo.AsInteger=mdaCartaoCredito) then
      begin

        rdc.Close;
        rdc.Open;
        rdc.Append;
        rdc.FieldByName('rdcvalor').AsFloat := dtldtlvalor.AsFloat;
        rdc.FieldByName('rdcvalorope').AsFloat := 0;
        rdc.FieldByName('rdcsituacao').AsFloat := 0;
        rdc.FieldByName('rdcdata').AsString := hoje(application, ZCone);
        rdc.FieldByName('adccodigo').AsFloat := 1;
        rdc.FieldByName('rdcparcelas').AsFloat := 1;
        rdc.FieldByName('tescodigo').AsFloat := 0;
        rdc.FieldByName('bdccodigo').AsFloat := 1;
        rdc.FieldByName('rdcnrauto').AsString := dtlrdcnrauto.AsString;
        rdc.FieldByName('dtlchave').AsString := dtldtlchave.AsString;
        rdc.Post;

        ltr.Close;
        ltr.ParamByName('dtlchave').AsString := dtldtlchave.AsString;
        ltr.Open;

        if ltr.IsEmpty then
        begin

          ltr.Append;
          ltr.FieldByName('rdcchave').AsInteger := rdc.FieldByName('rdcchave').AsInteger;
          ltr.FieldByName('dtlchave').AsString := dtldtlchave.AsString;
          ltr.Post;
        end;

      end;







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

  if vpValorFinalizador <> 0 then
    if ((edfaltatroco.Field.AsFloat > 0) or (vpTotCreditos > 0)) and ((plmdatroco11.Visible) or (plmdatroco22.Visible) or (plmdatroco33.Visible) or
      (plmdatroco77.Visible)) then
      if (edfaltatroco.Field.AsFloat <> (tmpmdaTrocoDinheiro.AsFloat + tmpmdaTrocoChequeProprio.AsFloat + tmpmdaTrocoChequeTerceiros.AsFloat +
        tmpmdaTrocoVale.AsFloat)) then
      begin
        ActTrocoDinheiro.Execute;

        if bconfirma.Enabled then
          if Self.Visible then
            bconfirma.SetFocus;
      end;
end;

procedure Tflte.recalculatotais;
var
  i: Integer;
  npan: string;
  vDifeTotais: Double;
  vDifeTotComTroco: Double;
  vSituacao: boolean;
begin
  if tmp.State <> dsEdit then
    tmp.Edit;

  if vTipoControle > 0 then
  begin
    lte.Edit;
    ltetotal.Field.AsCurrency := Self.lteprincipal.Field.AsFloat + ltemulta.Field.AsCurrency + ltejuros.Field.AsCurrency -
      ltedesconto.Field.AsCurrency;

    vDifeTotais := somavalores - ltetotal.Field.AsCurrency;
    if vDifeTotais < 0.01 then
      vDifeTotais := 0;

    vDifeTotComTroco := (somavalores - somatrocos) - ltetotal.Field.AsCurrency;

    if vDifeTotComTroco < 0.01 then
      vDifeTotComTroco := 0;

    if vDifeTotComTroco < 0 then
      if CompareValue(vDifeTotComTroco, vDifeTotais) = LessThanValue then
      begin
        ZeraTrocos;
        vDifeTotais := ltetotal.Field.AsCurrency - (somavalores - somatrocos);
        vDifeTotComTroco := ltetotal.Field.AsCurrency - (somavalores - somatrocos);
      end;

    tmp.FieldByName('troco').AsCurrency := ((somavalores) - ltetotal.Field.AsCurrency);

    case CompareValue(tmp.FieldByName('troco').AsCurrency, 0) of
      (* Trata painéis quando FALTA definição de valores *)
      LessThanValue:
        begin
          (Self.FindComponent('pltroco') as TPanel).Caption := 'Falta R$';
          (Self.FindComponent('pltroco') as TPanel).Visible := True;
          (Self.FindComponent('pltroco') as TPanel).Color := clred;
          vSituacao := false;

        end;

      (* Trata painéis quando valor está fechado *)
      EqualsValue:
        vSituacao := false;

      (* Trata painéis quando valor definido está maior - TROCO *)
      GreaterThanValue:
        begin
          (Self.FindComponent('pltroco') as TPanel).Caption := 'Troco R$';
          (Self.FindComponent('pltroco') as TPanel).Color := clnavy;;
          vSituacao := True;

          if vpValorFinalizador > 0 then
            bconfirma.Enabled := True;
        end;
    end;

    mda.First;
    while not mda.Eof do
    begin
      npan := 'plmdatroco' + FormatFloat('00', Self.mdamdacodigo.AsInteger);

      if Self.FindComponent(npan) <> nil then
        if Self.FindComponent(npan) is TPanel then
          (Self.FindComponent(npan) as TPanel).Visible := vSituacao;
      mda.Next;
    end;
    (Self.FindComponent('plTrocos') as TPanel).Visible := vSituacao;
    VerificaPaineisTrocos;

    if vDifeTotComTroco = 0 then
      bconfirma.Enabled := True
    else
      bconfirma.Enabled := false;

    application.ProcessMessages;

    if Self.Visible then
      if bconfirma.Enabled then
        bconfirma.SetFocus;
  end
  else
  begin

    if Self.vcedcodigo = cedDebito then
    begin
      (Self.FindComponent('pltroco') as TPanel).Visible := false;
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
      ltejuros.ReadOnly := false;
      ltedesconto.ReadOnly := false;

      if tmp.FieldByName('troco').AsCurrency = 0 then
      begin
        (Self.FindComponent('plTrocos') as TPanel).Visible := false;
        VerificaPaineisTrocos;

        bconfirma.Enabled := True;
        mda.First;
        while not mda.Eof do
        begin
          npan := 'plmdatroco' + FormatFloat('00', Self.mdamdacodigo.AsInteger);

          if Self.FindComponent(npan) <> nil then
            if Self.FindComponent(npan) is TPanel then
              (Self.FindComponent(npan) as TPanel).Visible := false;
          mda.Next;
        end;
        plTrocos.Visible := false;

      end;

    end;

    Self.ajustaaltura;
    application.ProcessMessages;

    if bconfirma.Enabled then
    begin
      if Self.Visible then
        bconfirma.SetFocus;
    end;
  end;
end;

function Tflte.somavalores: Currency;
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

procedure Tflte.tmpAfterInsert(DataSet: TDataSet);
begin
  tmpmdaDinheiro.AsCurrency := 0;
  tmpmdaChequeProprio.AsCurrency := 0;
  tmpmdaChequeTerceiros.AsCurrency := 0;
  tmpmdaCartaoDebito.AsCurrency := 0;
  tmpmdaCartaoCredito.AsCurrency := 0;
  tmpmdaPix.AsCurrency := 0;
  tmpmdaConvenio.AsCurrency := 0;
  tmpmdaAFaturar.AsCurrency := 0;
  tmpmdaCredito.AsCurrency := 0;
  tmpmdatrocadevolucao.AsCurrency := 0;
  tmpmdaDoacao.AsCurrency := 0;
  tmpmdaOnLine.AsCurrency := 0;
  tmpmdaVale.AsCurrency := 0;
  tmpmdaTrocoDinheiro.AsCurrency := 0;
  tmpmdaTrocoChequeProprio.AsCurrency := 0;
  tmpmdaTrocoChequeTerceiros.AsCurrency := 0;
  tmpmdaTrocoVale.AsCurrency := 0;
  tmptroco.AsCurrency := 0;

end;

function Tflte.somatrocos: Currency;
var
  i: Integer;
  vnomecampo: string;
  vTroco: Double;
begin
  vTroco := 0;
  for i := 0 to tmp.Fields.Count - 1 do
  begin
    vnomecampo := LowerCase(tmp.Fields[i].FieldName);
    if (Pos('mdatroco', vnomecampo) > 0) then
    begin
      vTroco := vTroco + tmp.Fields[i].AsCurrency;
    end;
  end;
  Result := vTroco;
end;

procedure Tflte.FormActivate(Sender: TObject);
begin
  top := 10;
end;

procedure Tflte.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Sender is TDBEdit) then
    if (TDBEdit(Sender).Field.DataType = ftFloat) or (TDBEdit(Sender).Field.DataType = ftCurrency) then
    begin
      if Key = '.' then
        Key := ',';

      if Key = ',' then
        if AnsiPos(',', TDBEdit(Sender).EditText) > 0 then
          Key := #0;

      if Key = '-' then
        Key := #0;

      if Key = '+' then
        Key := #0;
    end;

  if Key = ';' then
    Key := #0;

  if Key = '\' then
    Key := #0;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    bcancela.Click;
  end;
end;

procedure Tflte.FormShow(Sender: TObject);
var
  vLteChave: string;
begin

  ajustaaltura;

  if plDinheiro.Visible then
    edmdaDinheiro.SetFocus;

  if tmp.FieldByName('troco').AsCurrency <> 0 then
    if plTrocos.Visible then
      if edmdaTrocoDinheiro.Visible then
        edmdaTrocoDinheiro.SetFocus;

end;

function Tflte.GetHoraAtual: TTime;
var
  qHora: tuniquery;
begin
  qHora := tuniquery.Create(application);
  try
    qHora.Connection := ZCone;
    qHora.SQL.Text := 'SELECT CURRENT_TIME();';
    qHora.Open;

    Result := qHora.Fields[0].AsDateTime;
  finally
    qHora.Free;
  end;
end;

procedure Tflte.ltedescontoExit(Sender: TObject);
begin
  recalculatotais;
end;

procedure Tflte.ltejurosExit(Sender: TObject);
begin
  recalculatotais;
end;

{$REGION 'Chamada das Acões'}

procedure Tflte.ExecutaAcao(Sender: TObject);
var
  vmdacodigo: Integer;
  retorno: string;
  vdtlvalor: string;
  vschcodigo: Integer;
  vnomecampo: string;
  i: Integer;
  vlSaldoGeral: Double;
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
      vschcodigo := schPendente;

    if vdtlvalor = '' then
      vdtlvalor := '0';

    // processa valores na tabela tmp que precisam de modulos especiais
    case vmdacodigo of
      mdaCartaoCredito:
        begin
          vdtlvalor := edmdaCartaoCredito.Field.AsString;
          retorno := registracartoes(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaCartaoCredito';
          if retorno <> '' then
            vretornocc := FormatFloat('00000000', (StrToFloat(retorno) * 100))
          else
          begin
            if Self.psituacao.Caption = 'Incluindo' then
            begin

              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
              consulta.ExecSQL;

            end;
          end;

        end;
      mdaCartaoDebito:
        begin
          vdtlvalor := edmdaCartaoDebito.Field.AsString;
          retorno := registracartoes(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaCartaoDebito';
          if retorno <> '' then
            vretornocc := FormatFloat('00000000', (StrToFloat(retorno) * 100))
          else
          begin
            if Self.psituacao.Caption = 'Incluindo' then
            begin

              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
              consulta.ExecSQL;
            end;

          end;
        end;
      mdaCredito:
        begin
          vdtlvalor := edmdaCredito.Field.AsString;
          RegistraCredito(Self.dtldtlchave.AsString, StrToFloat(vdtlvalor), '1');
          vnomecampo := 'mdaCredito';
        end;
      mdaTrocaDevolucao:
        begin
          vdtlvalor := edmdaTrocaDevolucao.Field.AsString;
          RegistraTrocaDevolucao(Self.dtldtlchave.AsString, StrToFloat(vdtlvalor), '1');
          vnomecampo := 'mdaTrocaDevolucao';
        end;
      mdaDoacao:
        begin
          vdtlvalor := edmdaDoacao.Field.AsString;
          vnomecampo := 'mdaDoacao';
        end;
      mdaAFaturar:
        begin
          vdtlvalor := edmdaAFaturar.Field.AsString;
          vnomecampo := 'mdaAFaturar';
        end;

      mdaVale:
        begin
          vdtlvalor := edmdaVale.Field.AsString;
          vnomecampo := 'mdaVale';
        end;

      mdaTrocoChequeTerceiros:
        begin
          vdtlvalor := edmdaChequeTerceiros.Field.AsString;
          retorno := selecionachequesterceiro(Self.dtldtlchave.AsString, vschcodigo);
          vnomecampo := 'mdaTrocoChequeTerceiros';
        end;
      mdaTrocoChequeProprio:
        begin
          vdtlvalor := edmdaTrocoChequeProprio.Field.AsString;
          retorno := registrachequesproprios(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaTrocoChequeProprio';
        end;

      mdaTrocoVale:
        begin
          vdtlvalor := edmdaTrocovale.Field.AsString;
          CreditarValor(Self.dtldtlchave.AsString, '2', '1')
          // criar retorno := registrachequesproprios(Self.dtldtlchave.AsString, vdtlvalor);
          // RegistraCredito(Self.dtldtlchave.AsString, StrToFloat(vdtlvalor), '1');

        end;

      mdaChequeProprio:
        begin
          vlSaldoGeral := lteltetotal.AsFloat;
          for i := 0 to 8 do
            vlSaldoGeral := vlSaldoGeral - tmp.Fields[i].AsFloat;

          vdtlvalor := FloatToStr((edmdaChequeProprio.Field.AsFloat) + vlSaldoGeral);

          retorno := registrachequesproprios(Self.dtldtlchave.AsString, vdtlvalor);
          vnomecampo := 'mdaChequeProprio';
        end;
      mdaChequeTerceiros:
        begin
          if VpTfdCodigo = tfdContaCorrente then
          begin

            if (VtocCodigo = tocResgate) or (vcedcodigo = cedCredito) or (vpTncCodigo <> '') then
            begin
              vlSaldoGeral := lteltetotal.AsFloat;
              for i := 0 to 8 do
                vlSaldoGeral := vlSaldoGeral - tmp.Fields[i].AsFloat;

              vdtlvalor := FloatToStr((edmdaChequeTerceiros.Field.AsFloat) + vlSaldoGeral);

              retorno := registracheques(Self.dtldtlchave.AsString, vdtlvalor);
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
                vlSaldoGeral := lteltetotal.AsFloat;
                for i := 0 to 8 do
                  vlSaldoGeral := vlSaldoGeral - tmp.Fields[i].AsFloat;

                vdtlvalor := FloatToStr((edmdaChequeTerceiros.Field.AsFloat) + vlSaldoGeral);

                retorno := registracheques(Self.dtldtlchave.AsString, vdtlvalor);
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
    begin
      tmp.Post;

      (* Atualiza o valor atual da modalidade na dtl *)
      if dtl.Active then
      begin
        if (dtl.Locate('mdacodigo', tmp.FieldByName(vnomecampo).Tag, [])) then
          dtl.Edit;

        dtldtlvalor.AsFloat := Self.tmp.FieldByName(vnomecampo).AsFloat;
        dtlflacodigo.AsInteger := Acesso.Filial;
        dtldtlregistro.AsString := agora(application, ZCone);

        if (flte.VpTfdCodigo = tfdContaCorrente) then
          dtlccxchave.AsInteger := 0
        else
          dtlccxchave.AsInteger := vpCcxchave;

        dtl.Post;
      end;
    end;

    (* Trata abandono dos módulos externos = Cartões, Cheques *)
    if retorno = '0' then
      registradtl;
  end;

  recalculatotais;
end;



procedure Tflte.ActAFaturarExecute(Sender: TObject);
begin
  ExecutaAcao(Sender);
end;

procedure Tflte.ActCartaoCreditoExecute(Sender: TObject);
begin
  if not plcartaocredito.Visible then
    Exit;
  vpTeclaFinalizador := 114;
  btcartaocredito.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActCartaoDebitoExecute(Sender: TObject);
begin

  if not plcartaodebito.Visible then
    Exit;

  vpTeclaFinalizador := 115;
  btcartaodebito.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActChequePropriosExecute(Sender: TObject);
begin
  if not plchequesproprios.Visible then
    Exit;

  btchequeproprios.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActChequeTerceirosExecute(Sender: TObject);
begin
  if not plchequesterceiros.Visible then
    Exit;

  btchequeterceiros.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActConvenioExecute(Sender: TObject);
begin
  if not plconvenio.Visible then
    Exit;

  edmdaConvenio.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActCreditosExecute(Sender: TObject);
var
  vlRcrChave: string;
begin
  if not plcreditos.Visible then
    Exit;

  lcv.Close;
  lcv.Params[0].AsString := lteltechave.AsString;
  lcv.Open;

  lcv.First;
  while not lcv.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT mce.rcrchave FROM mce, mcr WHERE mce.mcechave=mcr.mcechave and ltechave=' + lteltechave.AsString;
    consulta.Open;

    { consulta.Close;
      consulta.SQL.Text := 'select rcrchave from mcr where ltechave=' + lteltechave.AsString;
      consulta.Open; }

    vlRcrChave := consulta.Fields[0].AsString;
    if vlRcrChave <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update rcr set tsccodigo=1 where rcrchave=' + vlRcrChave;
      consulta.ExecSQL;

    end;
    lcv.Next;
  end;

  { * disvicula  credito ou verba do lote * }
  consulta.Close;
  consulta.SQL.Text := 'delete from lcv where ltechave=' + lteltechave.AsString;
  consulta.ExecSQL;

  { * disvicula  credito ou verba do motivo * }
  consulta.Close;
  consulta.SQL.Text := 'delete from mce where ltechave=' + lteltechave.AsString;
  consulta.ExecSQL;

  btcreditos.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActDinheiroExecute(Sender: TObject);
begin
  ExecutaAcao(Sender);
end;

procedure Tflte.ActDoacaoExecute(Sender: TObject);
begin
  if not pldoacao.Visible then
    Exit;

  btdoacao.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActOnlineExecute(Sender: TObject);
begin

  vpTeclaFinalizador := 122;
  edmdaOnline.SetFocus;
  ExecutaAcao(Sender);


end;

procedure Tflte.ActTrocaDevolucaoExecute(Sender: TObject);
begin
  if not pltrocadevolucao.Visible then
    Exit;

  btrocadevolucao.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActTrocoChequePropriosExecute(Sender: TObject);
begin
  if not plTrocos.Visible then
    Exit;

  if not plmdatroco22.Visible then
    Exit;

  edmdaTrocoChequeProprio.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActTrocoChequeTerceirosExecute(Sender: TObject);
begin
  if not plTrocos.Visible then
    Exit;

  if not plmdatroco33.Visible then
    Exit;

  edmdaTrocoChequeTerceiros.SetFocus;
  ExecutaAcao(Sender);
end;

procedure Tflte.ActTrocoDinheiroExecute(Sender: TObject);
begin
  if not Self.Visible then
    Exit;

  if not plTrocos.Visible then
    Exit;

  if not plmdatroco11.Visible then
    Exit;

  edmdaTrocoDinheiro.SetFocus;

  ExecutaAcao(Sender);
end;

procedure Tflte.ActTrocoValeExecute(Sender: TObject);
begin
  if not Self.Visible then
    Exit;

  if not plTrocos.Visible then
    Exit;

  if not plmdatroco77.Visible then
    Exit;

  edmdaTrocovale.SetFocus;

  ExecutaAcao(Sender);

end;

procedure Tflte.ActValeExecute(Sender: TObject);
begin
  if not plvale.Visible then
    Exit;

  ExecutaAcao(Sender);
end;

procedure Tflte.ActPixExecute(Sender: TObject);
begin
  if not plPix.Visible then
    Exit;

  edmdaPix.SetFocus;
  ExecutaAcao(Sender);
end;

{$ENDREGION}

procedure Tflte.bcancelaClick(Sender: TObject);
var
  vlRcrChave: string;
  vlLteChave: string;
  vlMdtchave: string;
  vlDtlChave: string;
  i: Integer;

  vlCartaoCredito: string;
  vlCartaoDebito: string;
  vlDinheiro: string;
  vlPIX: string;
  vlGarantia: string;

  vlConvenio: string;
  vlDoacao: string;
  vlAFaturar: string;
  vlChequeTerceiros: string;
  vlVale: string;

  vlMdaCodigo: String;
  vlDtlValor: string;

begin
  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vRetorno := '';

  vlCartaoCredito := '';
  vlCartaoDebito := '';
  vlDinheiro := '';
  vlPIX := '';
  vlConvenio := '';
  vlDoacao := '';
  vlAFaturar := '';
  vlChequeTerceiros := '';

  if vpMdaAnterior = nil then
    vpMdaAnterior := TStringList.Create;

  for i := 0 to vpMdaAnterior.Count - 1 do
  begin

    vlMdaCodigo := Trim(copy(vpMdaAnterior[i], 1, Pos('_', vpMdaAnterior[i]) - 1));
    vlDtlValor := Trim(copy(vpMdaAnterior[i], Pos('_', vpMdaAnterior[i]) + 1, 20));

    if vlMdaCodigo = IntToStr(mdaCartaoCredito) then
    begin
      vlCartaoCredito := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaCartaoDebito) then
    begin
      vlCartaoDebito := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaPIX) then
    begin
      vlPIX := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaOnLine) then
    begin
      vlGarantia := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaDinheiro) then
    begin
      vlDinheiro := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaConvenio) then
    begin
      vlConvenio := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaDoacao) then
    begin
      vlDoacao := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaAFaturar) then
    begin
      vlAFaturar := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaChequeTerceiros) then
    begin
      vlChequeTerceiros := vlDtlValor;
    end;

    if vlMdaCodigo = IntToStr(mdaVale) then
    begin
      vlVale := vlDtlValor;
    end;

  end;

  if Self.psituacao.Caption = 'Alterando' then
  begin

    if (edmdaVale.Field.AsString <> '') and (edmdaVale.Field.AsString <> '0') and (edmdaVale.Field.AsString <> '0,00') and
      (edmdaVale.Field.AsString <> vlVale) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaVale);
      consulta.ExecSQL;
    end;

    if (edmdaCartaoCredito.Field.AsString <> '') and (edmdaCartaoCredito.Field.AsString <> '0') and (edmdaCartaoCredito.Field.AsString <> '0,00') and
      (edmdaCartaoCredito.Field.AsString <> vlCartaoCredito) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
      consulta.ExecSQL;
    end;

    if (edmdaCartaoDebito.Field.AsString <> '') and (edmdaCartaoDebito.Field.AsString <> '0') and (edmdaCartaoDebito.Field.AsString <> '0,00') and
      (edmdaCartaoDebito.Field.AsString <> vlCartaoDebito) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
      consulta.ExecSQL;
    end;

    if (edmdaPix.Field.AsString <> '') and (edmdaPix.Field.AsString <> '0') and (edmdaPix.Field.AsString <> '0,00') and
      (edmdaPix.Field.AsString <> vlPIX) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaDinheiro);
      consulta.ExecSQL;
    end;

    if (edmdaOnline.Field.AsString <> '') and (edmdaOnline.Field.AsString <> '0') and (edmdaOnline.Field.AsString <> '0,00') and
      (edmdaOnline.Field.AsString <> vlGarantia) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaOnLine);
      consulta.ExecSQL;
    end;


    if (edmdaDinheiro.Field.AsString <> '') and (edmdaDinheiro.Field.AsString <> '0') and (edmdaDinheiro.Field.AsString <> '0,00') and
      (edmdaDinheiro.Field.AsString <> vlDinheiro) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaDinheiro);
      consulta.ExecSQL;
    end;

    if (edmdaConvenio.Field.AsString <> '') and (edmdaConvenio.Field.AsString <> '0') and (edmdaConvenio.Field.AsString <> '0,00') and
      (edmdaConvenio.Field.AsString <> vlConvenio) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaConvenio);
      consulta.ExecSQL;
    end;

    if (edmdaDoacao.Field.AsString <> '') and (edmdaDoacao.Field.AsString <> '0') and (edmdaDoacao.Field.AsString <> '0,00') and
      (edmdaDoacao.Field.AsString <> vlDoacao) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaDoacao);
      consulta.ExecSQL;
    end;

    if (edmdaAFaturar.Field.AsString <> '') and (edmdaAFaturar.Field.AsString <> '0') and (edmdaAFaturar.Field.AsString <> '0,00') and
      (edmdaAFaturar.Field.AsString <> vlAFaturar) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaAFaturar);
      consulta.ExecSQL;
    end;

    if (edmdaChequeTerceiros.Field.AsString <> '') and (edmdaChequeTerceiros.Field.AsString <> '0') and
      (edmdaChequeTerceiros.Field.AsString <> '0,00') and (edmdaChequeTerceiros.Field.AsString <> vlChequeTerceiros) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaChequeTerceiros);
      consulta.ExecSQL;
    end;

    consulta.Close;
    consulta.SQL.Text := 'select dtlchave,mdacodigo, dtlvalor from dtl where ltechave=' + lteltechave.AsString;
    consulta.Open;

    while not consulta.Eof do
    begin

      if Pos(consulta.FieldByName('mdacodigo').AsString + '_', vpMdaAnterior.Text) = 0 then
      begin
        consulta.Delete;
      end
      else
      begin

        consulta.Next;

      end;

    end;

    for i := 0 to vpMdaAnterior.Count - 1 do
    begin

      vlMdaCodigo := Trim(copy(vpMdaAnterior[i], 1, Pos('_', vpMdaAnterior[i]) - 1));
      vlDtlValor := Trim(copy(vpMdaAnterior[i], Pos('_', vpMdaAnterior[i]) + 1, 20));

    end;

    consulta.Close;
    consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and dtlvalor=0';
    consulta.ExecSQL;

  end
  else
  begin

    (* Deleta registros de cartões quando usuário abandona Lote *)
    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM ltr, rdc ';
    consulta.SQL.Add('USING ltr ');
    consulta.SQL.Add('INNER JOIN rdc ON ltr.rdcchave = rdc.rdcchave ');
    consulta.SQL.Add('INNER JOIN adc ON rdc.adccodigo = adc.adccodigo ');
    consulta.SQL.Add('INNER JOIN dtl ON ltr.dtlchave = dtl.dtlchave ');
    consulta.SQL.Add('WHERE dtl.ltechave = ' + lteltechave.AsString);
    consulta.ExecSQL;

    { * Verifica se foi selecionado chaquee de terceiros e volta para posição anterior * }

    consulta.Close;
    consulta.SQL.Text := 'select dtlchave from dtl where ltechave=' + lteltechave.AsString;
    consulta.Open;
    while not consulta.Eof do
    begin

      ltc.Close;
      ltc.SQL.Text := 'delete from  ltc WHERE schcodigo<>1 and ltc.dtlchave = ' + consulta.FieldByName('dtlchave').AsString;
      ltc.ExecSQL;

      consulta.Next;
    end;

    { * Verifica se foi utilizado créditos e volta eles ao estado de aberto * }

    lcv.Close;
    lcv.Params[0].AsString := lteltechave.AsString;
    lcv.Open;

    lcv.First;
    while not lcv.Eof do
    begin
      rcr.Close;
      rcr.SQL.Text := 'SELECT mce.rcrchave FROM mce, mcr WHERE mce.mcechave=mcr.mcechave and ltechave=' + lteltechave.AsString;
      rcr.Open;

      { consulta.Close;
        consulta.SQL.Text := 'select rcrchave from mcr where ltechave=' + lteltechave.AsString;
        consulta.Open; }

      while not rcr.Eof do
      begin
        vlRcrChave := rcr.Fields[0].AsString;
        if vlRcrChave <> '' then
        begin
          consulta.Close;
          consulta.SQL.Text := 'update rcr set tsccodigo=1 where rcrchave=' + vlRcrChave;
          consulta.ExecSQL;

        end;
        rcr.Next;
      end;
      lcv.Next;
    end;

    if idt.Active then
    begin
      vlMdtchave := idtmdtchave.AsString;
      consulta.Close;
      consulta.SQL.Text := 'delete from mdt where mdtchave=' + vlMdtchave;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'delete from idt where mdtchave=' + vlMdtchave;
      consulta.ExecSQL;

    end;

    if (Self.psituacao.Caption = 'Incluindo') then
      lte.Delete;

    // flte.zcone.Rollback;

  end;
  flte.vretornoch := '';
  flte.vretornocc := '';
  flte.vretornoap := '';

  if cfgcfgusacaixaprevenda.AsInteger = 1 then
    if ZCone.Transactions[0].Active then
      Self.ZCone.Rollback;

  modalresult := mrcancel;
end;

procedure Tflte.ccoAfterPost(DataSet: TDataSet);
begin
  // vpCtaUtilizada := ccoctacodigo.AsInteger;
end;

function Tflte.confirmaregistrolte: boolean;
var
  i: Integer;
  vTotAVista: Double;
  vTotAPrazo: Double;
  vTotAFaturar: Double;

  vmdatr: Integer;

  vTotDin: Double;
  vTotDoacao: Double;
  vTotOnline: Double;
  vTotVale: Double;

  vTotTrocoVale: Double;
  vDtlChaveTrocoVale: String;

  vTotTrocaDevolucao: Double;

  vTotCarDeb: Double;
  vTotCarCred: Double;
  vTotConvenio: Double;
  vTotCheque: Double;
  vTotChProp: Double;
  vTotPix: Double;


  vTotCredito: Double;

  vTotDinTroco: Double;
  vTotChPropTroco: Double;
  vTotChequeTroco: Double;
  vTotValeTroco: Double;

  vDtlChaveDin: string;
  vDtlChaveDinTr: string;
  vdtlchavech: string;
  vdtlchavechtr: string;
  vDtlChaveDoacao: string;
  vDtlChaveGarantia: string;
  vDtlChaveAFaturar: string;
  vDtlChaveVale: string;

  vDtlChaveDevolucaoTroca: string;

  vdtlchavechTerc: string;
  vdtlchavechTercTr: string;
  vdtlchavechValeTr: string;

  vdtlchavecc: string;
  vdtlchavecd: string;
  vdtlchavevb: string;
  vDtlChavePIX: string;
  vDtlChaveConvenio: string;
  vDtlChaveCredito: string;

  vTotRegistraCCO: Double;

  vTotalTroco: Double;
  vTotalRegistrado: Double;

  vlCcoChave: string;
  vlTitDoacao: String;

  vlRetorno: String;

  vlConferenciaCartao: Double;
begin
  Result := false;
  vpCtaCodigo := '';

  case VpTfdCodigo of
    tfdRecebimentos, tfdPagamentos, { tfdContaCorrente, } tfdCredito, tfdVerba:
      begin

        vTotRegistraCCO := Self.tmpmdaOnline.AsFloat+  Self.tmpmdaDinheiro.AsFloat + Self.tmpmdaPix.AsFloat + Self.tmpmdaChequeTerceiros.AsFloat;
        if (VpTfdCodigo in [tfdCredito, tfdVerba]) and (vpCtaCodigo = '') and (vpEtdCodigo <> 0) then
        begin
          vpCtaCodigo := SelecionaConta;
          if vpCtaCodigo = '' then
            Exit;
        end;

        // vpCtaCodigo := '';
        if vTotRegistraCCO > 0 then
        begin
          if (VpTfdCodigo in [tfdRecebimentos, tfdPagamentos]) then
            if (ContaCaixa = 0) then
              vpCtaCodigo := SelecionaConta
            else
              vpCtaCodigo := IntToStr(ContaCaixa);

          if vpCtaCodigo = '' then
            Exit;
        end;
      end;
  end;

  cfg.Close;
  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if flte.cfgcfgctacodigopix.AsInteger = 0 then
  begin
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
    flte.consulta.Open;
    if not flte.consulta.IsEmpty then
    begin
      flte.cfg.Edit;
      flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
      flte.cfg.Post;
    end
    else
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
        flte.cfg.Post;
      end;

    end;

    flte.cfg.Close;
    flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

  end;

  mda.Close;
  // mda.Params[0].AsInteger := VpTfdCodigo;
  mda.Open;

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Params[1].AsInteger := Acesso.Filial;
  dtl.Open;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;

  vTotalTroco := 0;
  vTotalRegistrado := 0;

  vTotalTroco := vpTotDinTroco + vpTotChPropTroco + vpTotChequeTroco;

  for i := 0 to Self.tmp.FieldCount - 1 do
  begin
    vmdatr := Self.tmp.Fields[i].Tag;

    if mda.Locate('mdacodigo', vmdatr, []) then
      if Self.tmp.Fields[i].AsFloat > 0 then
      begin

        if (vTotalRegistrado + Self.tmp.Fields[i].AsFloat) > vTotalTroco then
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

          dtldtlvalor.AsFloat := Self.tmp.Fields[i].AsFloat - vTotalTroco;
          dtlflacodigo.AsInteger := Acesso.Filial;
          dtldtlregistro.AsString := agora(application, ZCone);
          if (flte.VpTfdCodigo = tfdContaCorrente) then
            dtlccxchave.AsInteger := 0
          else
            dtlccxchave.AsInteger := vpCcxchave;

          dtl.Post;

        end;

        vTotalRegistrado := vTotalRegistrado + Self.tmp.Fields[i].AsFloat;

      end;
  end;

  vTotDin := 0;
  vTotDoacao := 0;
  vTotOnLine := 0;
  vTotAFaturar := 0;
  vTotVale := 0;

  vTotTrocaDevolucao := 0;

  vTotCarDeb := 0;
  vTotCarCred := 0;
  vTotConvenio := 0;
  vTotCheque := 0;
  vTotChProp := 0;
  vTotPix := 0;
  vTotCredito := 0;

  vTotDinTroco := 0;
  vTotChPropTroco := 0;
  vTotChequeTroco := 0;
  vTotValeTroco := 0;

  vTotalTroco := 0;

  dtl.First;
  while not dtl.Eof do
  begin
    if mda.Locate('mdacodigo', Self.dtlmdacodigo.AsInteger, []) then
    begin

      if (mdamdacodigo.AsInteger IN [mdaDinheiro, mdaTrocoDinheiro]) then
        // dinheiro
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

      if mdamdacodigo.AsInteger = mdaPIX then // Via Banco
      begin
        vTotPix := vTotPix + Self.dtldtlvalor.AsFloat;
        vDtlChavePIX := Self.dtldtlchave.AsString;

      end;

      if mdamdacodigo.AsInteger = mdaOnLine then // Via online
      begin
        vTotOnline := vTotOnline + Self.dtldtlvalor.AsFloat;
        vDtlChaveGarantia := Self.dtldtlchave.AsString;
      end;


      if mdamdacodigo.AsInteger = mdaDoacao then // Convenio
      begin
        vTotDoacao := vTotDoacao + Self.dtldtlvalor.AsFloat;
        vDtlChaveDoacao := Self.dtldtlchave.AsString;
      end;


      if mdamdacodigo.AsInteger = mdaConvenio then // Convenio
      begin
        vTotConvenio := vTotConvenio + Self.dtldtlvalor.AsFloat;
        vDtlChaveConvenio := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaCredito then // creditos
      begin
        vTotCredito := vTotCredito + Self.dtldtlvalor.AsFloat;
        vDtlChaveCredito := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaDoacao then // doacao
      begin
        vTotDoacao := vTotDoacao + Self.dtldtlvalor.AsFloat;
        vDtlChaveDoacao := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaAFaturar then // Garantia
      begin
        vTotAFaturar := vTotAFaturar + Self.dtldtlvalor.AsFloat;
        vDtlChaveAFaturar := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaVale then // vale
      begin
        vTotVale := vTotVale + Self.dtldtlvalor.AsFloat;
        vDtlChaveVale := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaTrocaDevolucao then // trocadevolucacao
      begin
        vTotTrocaDevolucao := vTotTrocaDevolucao + Self.dtldtlvalor.AsFloat;
        vDtlChaveDevolucaoTroca := Self.dtldtlchave.AsString;
      end;

      if mdamdacodigo.AsInteger = mdaTrocoVale then // trocovale
      begin
        vTotTrocoVale := vTotTrocoVale + Self.dtldtlvalor.AsFloat;
        vDtlChaveTrocoVale := Self.dtldtlchave.AsString;
      end;

      // registro de cheques
      if (mdamdacodigo.AsInteger = mdaChequeProprio) then // cheques
      begin
        vTotChProp := vTotChProp + Self.dtldtlvalor.AsFloat;
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
          vTotChequeTroco := vTotChequeTroco + Self.dtldtlvalor.AsFloat;
          // a débito
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
        vTotAPrazo := vTotAPrazo + Self.dtldtlvalor.AsFloat;
        // soma para total a prazo
      end;

    end;
    dtl.Next;
  end;

  // ligaçao dos cheques ao lote

  dtl.First;
  while not dtl.Eof do
  begin
    // if vTotCheque = 0 then

    if mda.Locate('mdacodigo', Self.dtlmdacodigo.AsInteger, []) then
      if (mdamdacodigo.AsInteger IN [mdaTrocoChequeProprio, mdaTrocoChequeTerceiros]) then // cheques
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
        if ((vTotChequeTroco + vTotDinTroco + vTotAVista + vTotCheque) > 0)

        then
          VendaAVistas(vTotChequeTroco, vTotDinTroco, vTotAVista, vTotCheque);

        if vTotChPropTroco > 0 then
        begin

          if vTotChPropTroco > 0 then
          begin

            if StrToInt(vdtlchavechtr) <> 0 then
            begin

              consulta.Close;
              consulta.SQL.Text := 'SELECT tch.tchcodigo,  chevalor,  chenumero,  tch.ctacodigo FROM dtl,  ltc,  che,  tch ';
              consulta.SQL.Add('WHERE dtl.cedcodigo = 0 AND che.tchcodigo = tch.tchcodigo AND dtl.dtlchave = ' + vdtlchavechtr +
                ' AND dtl.mdacodigo IN (22) ');
              consulta.SQL.Add('AND dtl.dtlchave = ltc.dtlchave AND ltc.chechave = che.chechave');
              consulta.Open;
              if not consulta.IsEmpty then
              begin

                RegistraCCO(vdtlchavechtr, vTotChPropTroco, consulta.Fields[3].AsInteger, VpTfdCodigo);
              end;

            end;
          end;

        end;



        vTotRegistraCCO := vTotDin+ vTotOnline + vTotPix  + vTotCheque + vTotChProp;
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

            if vTotPix > 0 then
            begin
              vlCcoChave := RegistraCCO('', vTotPix, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, cfgcfgctacodigopix.AsString, mdaPIX);
            end;

            if vTotOnline > 0 then
            begin
              vlCcoChave := RegistraCCO('', vTotOnline, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, cfgcfgctacodigopix.AsString, mdaOnLine);
            end;


            if vTotRegistraCCO - (vTotPix+vTotOnline) > 0 then
            begin
              vlCcoChave := RegistraCCO('', vTotRegistraCCO - vTotPix, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, ContaCaixa.ToString);
            end;

          end;

        end;

        if vTotDoacao > 0 then
        begin

          if pos('balcao', lowercase(application.ExeName))>0 then
            vpValorFinalizador:=vTotDoacao;

          if vpValorFinalizador > 0 then
          begin
            RegistraCCO('', 0, vTotDoacao, VpTfdCodigo, '0', 0, 1);
          end;
          RegistraCCO('', 0, vTotDoacao, VpTfdCodigo, '0', 0, 1);

          if pos('balcao', lowercase(application.ExeName))>0 then
            vpValorFinalizador:=0;

        end;


        if vTotCarDeb > 0 then
        begin
          vlConferenciaCartao := 0;
          if vdtlchavecd <> '' then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select sum(rdc.rdcvalor) rdcvalor  FROM rdc, ltr, adc WHERE ltr.rdcchave = rdc.rdcchave ';
            consulta.SQL.Add(' AND adc.adccodigo = rdc.adccodigo AND ltr.dtlchave = ' + vdtlchavecd);
            consulta.Open;
            vlConferenciaCartao := consulta.FieldByName('rdcvalor').AsCurrency;
          end;

          // Criado processo para salvar  os detalhes dos cartão de débito - 14/10/2020 - Francielle
          ltr.Close;
          ltr.ParamByName('dtlchave').AsString := vdtlchavecd;
          ltr.Open;


          if ltr.IsEmpty then
          begin
            rdc.Close;
            rdc.Open;
            rdc.Append;
            rdc.FieldByName('rdcvalor').AsFloat := vTotCarDeb;
            rdc.FieldByName('rdcvalorope').AsFloat := 0;
            rdc.FieldByName('rdcsituacao').AsFloat := 0;
            rdc.FieldByName('rdcdata').AsString := hoje(application, ZCone);
            rdc.FieldByName('adccodigo').AsFloat := 1;
            rdc.FieldByName('rdcparcelas').AsFloat := 1;
            rdc.FieldByName('tescodigo').AsFloat := 0;
            rdc.FieldByName('bdccodigo').AsFloat := 1;
            rdc.FieldByName('dtlchave').AsString := vdtlchavecd;
            rdc.Post;
            ltr.Append;
            ltr.FieldByName('rdcchave').AsInteger := rdc.FieldByName('rdcchave').AsInteger;
            ltr.FieldByName('dtlchave').AsString := vdtlchavecd;
            ltr.Post;

          end;
          if (Self.cfgcfgusaadc.AsInteger = 2) then
          begin
            if { (vpValorFinalizador > 0) and } (vlConferenciaCartao = 0) then
              vlRetorno := registracartoes(vdtlchavecd, FloatToStr(vTotCarDeb));

            if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vlConferenciaCartao <> 0) then
              RegistraCartao(vdtlchavecd, vTotCarDeb);

          end
          else
          begin

            RegistraCartao(vdtlchavecd, vTotCarDeb);
          end;

          if (Self.cfgcfgusaadc.AsInteger = 1) and (vpTeclaFinalizador <> 0) then
          begin
            vlRetorno := FloatToStr(vpValorFinalizador);
            vTotCarDeb := vpValorFinalizador;
          end;

          if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vretornocc <> '') then
            vretornocc := FormatFloat('00000000', (vTotCarDeb * 100))
          else
          begin
            vretornocc := '00000000';

            if cfgcfgusaadc.AsInteger = 2 then
            begin
              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
              consulta.ExecSQL;
            end;

          end;

        end;

        if vTotCarCred > 0 then
        begin

          vlConferenciaCartao := 0;
          if vdtlchavecc <> '' then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select sum(rdc.rdcvalor) rdcvalor  FROM rdc, ltr, adc WHERE ltr.rdcchave = rdc.rdcchave ';
            consulta.SQL.Add(' AND adc.adccodigo = rdc.adccodigo AND ltr.dtlchave = ' + vdtlchavecc);
            consulta.Open;
            vlConferenciaCartao := consulta.FieldByName('rdcvalor').AsCurrency;
          end;
          // Criado processo para salvar  os detalhes dos cartão de crédito - 14/10/2020 - Francielle
          ltr.Close;
          ltr.ParamByName('dtlchave').AsString := vdtlchavecc;
          ltr.Open;

          if ltr.IsEmpty then

          begin
            rdc.Close;
            rdc.Open;
            rdc.Append;
            rdc.FieldByName('rdcvalor').AsFloat := vTotCarCred;
            rdc.FieldByName('rdcvalorope').AsFloat := 0;
            rdc.FieldByName('rdcsituacao').AsFloat := 0;
            rdc.FieldByName('rdcdata').AsString := hoje(application, ZCone);
            rdc.FieldByName('adccodigo').AsFloat := 1;
            rdc.FieldByName('rdcparcelas').AsFloat := 1;
            rdc.FieldByName('tescodigo').AsFloat := 0;
            rdc.FieldByName('bdccodigo').AsFloat := 1;
            rdc.FieldByName('dtlchave').AsString := vdtlchavecc;
            rdc.Post;
            ltr.Append;
            ltr.FieldByName('rdcchave').AsInteger := rdc.FieldByName('rdcchave').AsInteger;
            ltr.FieldByName('dtlchave').AsString := vdtlchavecc;
            ltr.Post;

          end;
          if (Self.cfgcfgusaadc.AsInteger = 2) then
          begin
            if (vpValorFinalizador > 0) and (vlConferenciaCartao = 0) then
              vlRetorno := registracartoes(vdtlchavecc, FloatToStr(vTotCarCred));

            if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vlConferenciaCartao <> 0) then
              RegistraCartao(vdtlchavecc, vTotCarCred);

          end
          else
          begin

            RegistraCartao(vdtlchavecc, vTotCarCred);
          end;

          if (Self.cfgcfgusaadc.AsInteger = 1) and (vpTeclaFinalizador <> 0) then
          begin
            vlRetorno := FloatToStr(vpValorFinalizador);
            vTotCarCred := vpValorFinalizador;
          end;

          if (vlRetorno <> '0') and (vlRetorno <> '') or (vretornocc <> '') then
            vretornocc := FormatFloat('00000000', (vTotCarCred * 100))
          else
          begin
            if cfgcfgusaadc.AsInteger = 2 then
            begin
              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
              consulta.ExecSQL;
            end;

            vretornocc := '00000000';
          end;
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

        vTotRegistraCCO := vTotDin + vTotPix + vTotCheque + vTotChProp;
        if vTotRegistraCCO > 0 then
        begin
          { *tratativa diferenciada para cheque ser registrado no valor total* }
          if vTotCheque > 0 then
          begin
            if vpCtaCodigo <> '' then
            begin
              vlCcoChave := RegistraCCO('', vTotRegistraCCO,
                { vTotChequeTroco + vTotChPropTroco } 0, VpTfdCodigo, vpCtaCodigo);

              { * envia o valor 0 para ser identificado como um registro de troco para cheques* }
              vlCcoChave := RegistraCCO('', 0, vTotDinTroco, VpTfdCodigo);
              // vlCcoChave := RegistraCCO('', vTotDin, vTotDinTroco, VpTfdCodigo, vpCtaCodigo);
            end;
          end
          else
          begin

            if vpCtaCodigo <> '' then
            begin
              if vTotPix > 0 then
              begin
                vlCcoChave := RegistraCCO(vDtlChavePIX, vTotPix, 0, VpTfdCodigo, cfgcfgctacodigopix.AsString, mdaPIX, 0);

              end;

              vlCcoChave := RegistraCCO(vDtlChaveDin, vTotRegistraCCO - vTotPix,
                { vTotDinTroco + } vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);

            end;
          end;
        end;

        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, vTotChequeTroco, VpTfdCodigo, '0', mdaTrocoChequeProprio);
        end;

        if vTotChequeTroco > 0 then
        begin

          vlCcoChave := RegistraCCO('', 0, vTotChequeTroco, VpTfdCodigo, vpCtaCodigo, mdaTrocoChequeTerceiros);
          consulta.Close;
          consulta.SQL.Text := 'delete from dtl where dtlchave=' + vdtlchavechTercTr;
          consulta.ExecSQL;
        end;
      {
        if vTotCarDeb > 0 then
          RegistraCartao(vdtlchavecd, vTotCarDeb);

        if vTotCarCred > 0 then
          RegistraCartao(vdtlchavecc, vTotCarCred);
         }


         // daniel 27/01/2025 ajuste para recebimentos de convenio via tef;

         if vTotCarDeb > 0 then
        begin
          vlConferenciaCartao := 0;


          if vdtlchavecd <> '' then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select sum(rdc.rdcvalor) rdcvalor  FROM rdc, ltr, adc WHERE ltr.rdcchave = rdc.rdcchave ';
            consulta.SQL.Add(' AND adc.adccodigo = rdc.adccodigo AND ltr.dtlchave = ' + vdtlchavecd);
            consulta.Open;
            vlConferenciaCartao := consulta.FieldByName('rdcvalor').AsCurrency;
          end;

          // Criado processo para salvar  os detalhes dos cartão de débito - 14/10/2020 - Francielle
          ltr.Close;
          ltr.ParamByName('dtlchave').AsString := vdtlchavecd;
          ltr.Open;

          if vTotCarDeb > 0 then
          begin
            adc.Close;
            adc.Open;

            vlCcoChave := RegistraCCO(vdtlchavecd, vTotCarDeb, 0, VpTfdCodigo, adc.FieldByName('ctacodigo').AsString, mdaCartaoDebito);
          end;



          if ltr.IsEmpty then
          begin
            rdc.Close;
            rdc.Open;
            rdc.Append;
            rdc.FieldByName('rdcvalor').AsFloat := vTotCarDeb;
            rdc.FieldByName('rdcvalorope').AsFloat := 0;
            rdc.FieldByName('rdcsituacao').AsFloat := 0;
            rdc.FieldByName('rdcdata').AsString := hoje(application, ZCone);
            rdc.FieldByName('adccodigo').AsFloat := 1;
            rdc.FieldByName('rdcparcelas').AsFloat := 1;
            rdc.FieldByName('tescodigo').AsFloat := 0;
            rdc.FieldByName('bdccodigo').AsFloat := 1;
            rdc.FieldByName('dtlchave').AsString := vdtlchavecd;

            rdc.Post;
            ltr.Append;
            ltr.FieldByName('rdcchave').AsInteger := rdc.FieldByName('rdcchave').AsInteger;
            ltr.FieldByName('dtlchave').AsString := vdtlchavecd;
            ltr.Post;

          end;

         //     if (Self.cfgcfgusaadc.AsInteger = 2) then
         //     begin
         //       if { (vpValorFinalizador > 0) and } (vlConferenciaCartao = 0) then
         //         vlRetorno := registracartoes(vdtlchavecd, FloatToStr(vTotCarDeb));
         //
         //       if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vlConferenciaCartao <> 0) then
          //        RegistraCartao(vdtlchavecd, vTotCarDeb);

          //    end
          //    else
          //    begin
          //
           //     RegistraCartao(vdtlchavecd, vTotCarDeb);
           //   end;

          if (Self.cfgcfgusaadc.AsInteger = 1) and (vpTeclaFinalizador <> 0) then
          begin
            vlRetorno := FloatToStr(vpValorFinalizador);
            vTotCarDeb := vpValorFinalizador;
          end;

          if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vretornocc <> '') then
            vretornocc := FormatFloat('00000000', (vTotCarDeb * 100))
          else
          begin
            vretornocc := '00000000';

            if cfgcfgusaadc.AsInteger = 2 then
            begin
              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
              consulta.ExecSQL;
            end;

          end;

        end;

        if vTotCarCred > 0 then
        begin

          vlConferenciaCartao := 0;
          if vdtlchavecc <> '' then
          begin
            consulta.Close;
            consulta.SQL.Text := 'select sum(rdc.rdcvalor) rdcvalor  FROM rdc, ltr, adc WHERE ltr.rdcchave = rdc.rdcchave ';
            consulta.SQL.Add(' AND adc.adccodigo = rdc.adccodigo AND ltr.dtlchave = ' + vdtlchavecc);
            consulta.Open;
            vlConferenciaCartao := consulta.FieldByName('rdcvalor').AsCurrency;
          end;
          // Criado processo para salvar  os detalhes dos cartão de crédito - 14/10/2020 - Francielle
          ltr.Close;
          ltr.ParamByName('dtlchave').AsString := vdtlchavecc;
          ltr.Open;


          if vTotCarCred > 0 then
          begin
            adc.Close;
            adc.Open;

             vlCcoChave := RegistraCCO(vdtlchavecc, vTotCarCred, 0, VpTfdCodigo, adc.FieldByName('ctacodigo').AsString, mdaCartaoCredito);
          end;

          if ltr.IsEmpty then

          begin
            rdc.Close;
            rdc.Open;
            rdc.Append;
            rdc.FieldByName('rdcvalor').AsFloat := vTotCarCred;
            rdc.FieldByName('rdcvalorope').AsFloat := 0;
            rdc.FieldByName('rdcsituacao').AsFloat := 0;
            rdc.FieldByName('rdcdata').AsString := hoje(application, ZCone);
            rdc.FieldByName('adccodigo').AsFloat := 1;
            rdc.FieldByName('rdcparcelas').AsFloat := 1;
            rdc.FieldByName('tescodigo').AsFloat := 0;
            rdc.FieldByName('bdccodigo').AsFloat := 1;
            rdc.FieldByName('dtlchave').AsString := vdtlchavecc;
            rdc.Post;
            ltr.Append;
            ltr.FieldByName('rdcchave').AsInteger := rdc.FieldByName('rdcchave').AsInteger;
            ltr.FieldByName('dtlchave').AsString := vdtlchavecc;
            ltr.Post;

          end;


          //  if (Self.cfgcfgusaadc.AsInteger = 2) then
          //  begin
          //    if (vpValorFinalizador > 0) and (vlConferenciaCartao = 0) then
          //      vlRetorno := registracartoes(vdtlchavecc, FloatToStr(vTotCarCred));

          //    if ((vlRetorno <> '0') and (vlRetorno <> '')) or (vlConferenciaCartao <> 0) then
          //      RegistraCartao(vdtlchavecc, vTotCarCred);

          //  end
          //  else
          //  begin

          //    RegistraCartao(vdtlchavecc, vTotCarCred);
          //  end;

          if (Self.cfgcfgusaadc.AsInteger = 1) and (vpTeclaFinalizador <> 0) then
          begin
            vlRetorno := FloatToStr(vpValorFinalizador);
            vTotCarCred := vpValorFinalizador;
          end;

          if (vlRetorno <> '0') and (vlRetorno <> '') or (vretornocc <> '') then
            vretornocc := FormatFloat('00000000', (vTotCarCred * 100))
          else
          begin
            if cfgcfgusaadc.AsInteger = 2 then
            begin
              consulta.Close;
              consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
              consulta.ExecSQL;
            end;

            vretornocc := '00000000';
          end;
        end;




      end;

    tfdPagamentos:
      begin

        vTotRegistraCCO := vTotDin + vTotPix;
        if vTotRegistraCCO > 0 then
        begin

          // RegistraCCO('', vTotRegistraCCO, vTotDinTroco + vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);

          { *tratativa diferenciada para cheque ser registrado no valor total* }
          if vTotCheque > 0 then
          begin
            if vpCtaCodigo <> '' then
            begin

              vlCcoChave := RegistraCCO('', vTotRegistraCCO + vTotCheque, vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);
              { * envia o valor 0 para ser identificado como um registro de troco para cheques* }
              vlCcoChave := RegistraCCO('', 0, 0 { vTotDinTroco } , VpTfdCodigo, vpCtaCodigo);
            end;
          end
          else
          begin
            if vpCtaCodigo <> '' then
            begin
              vlCcoChave := RegistraCCO('', vTotRegistraCCO,
                { vTotDinTroco + } vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);
            end;
          end;

        end;

        (* Cheque Próprio *)
        if vTotChProp > 0 then
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChProp, 0, VpTfdCodigo);

        (* Cheque de Terceiros *)
        { if vTotCheque > 0 then
          vlCcoChave := RegistraCCO('', vTotCheque, 0, VpTfdCodigo); }

        if vTotChPropTroco > 0 then
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo);

        if vTotCarDeb > 0 then
          RegistraCartao(vdtlchavecd, vTotCarDeb);

        if vTotCarCred > 0 then
          RegistraCartao(vdtlchavecc, vTotCarCred);
      end;

    tfdCredito:
      begin
        vTotRegistraCCO := vTotDin + vTotPix;
        if vTotRegistraCCO > 0 then
        begin
          vlCcoChave := RegistraCCO(vDtlChaveDin, vTotRegistraCCO,
            { vTotDinTroco + } vTotChequeTroco + vTotChPropTroco, VpTfdCodigo, vpCtaCodigo);
        end;

        vTotRegistraCCO := vTotCheque + vTotChProp;
        if vTotRegistraCCO > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavechTerc, vTotRegistraCCO, 0, VpTfdCodigo, vpCtaCodigo);
        end;
        if vTotChPropTroco > 0 then
        begin
          vlCcoChave := RegistraCCO(vdtlchavech, vTotChPropTroco, 0, VpTfdCodigo, vpCtaCodigo);
        end;

        { if vTotCheque > 0 then
          begin
          consulta.Close;
          consulta.sql.Text:='update cco set ccovalor='+BuscaTroca(floattostr(vTotCheque),',','.')+' where ccochave='+vpCcoChave;
          consulta.ExecSQL;
          end;

          if vTotDin > 0 then
          vlCcoChave := RegistraCCO('', vTotDin, 0, VpTfdCodigo); }

      end;

    tfdContaCorrente:
      begin

        if (vTotDin + vTotPix) > 0 then
        begin
          if dtl.Locate('mdacodigo', mdaDinheiro, []) then
          begin
            { ccd.Open;
              ccd.Append;
              ccddtlchave.AsInteger := dtldtlchave.AsInteger;
              ccdccochave.AsString := vpCcoChave;
              ccd.Post; }

            (* Atualiza valor do cco pois pode ter registro de Cheque Próprio junto *)
            if vTotCheque > 0 then
            begin
              cco.Close;
              cco.Params[0].AsString := vpCcoChave;
              cco.Params[1].AsInteger := Acesso.Filial;
              cco.Open;

              cco.Edit;
              ccoccovalor.AsFloat := vTotDin + vTotCheque;
              // dtldtlvalor.AsFloat;
              ccoflacodigo.AsInteger := Acesso.Filial;
              cco.Post;
            end;
          end;
        end;

        if vTotCheque > 0 then
          if dtl.Locate('mdacodigo', mdaChequeProprio, []) then
            RegistraCCOChequesManual(vpCcoChave, dtldtlchave.AsString, vTotDin = 0);
      end;
  end;

  if (VpTfdCodigo = tfdPagamentos) then
  begin
    // VendaAPrazo(vdtlchavecc, vTotChTroco, vPodeCarCred, vTotDinTroco);
  end
  else
  begin
    if vpValorFinalizador = 0 then
    begin
      vretornoch := '00000000';
      vretornocc := '00000000';
    end;
  end;

  if (VpTfdCodigo <> tfdRecebimentos) and (VpTfdCodigo <> tfdPagamentos) then
  begin

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

      vRetorno := format('%12.2f', [Self.somavalores]);
    end;

  end
  else
  begin
    vRetorno := format('%12.2f', [Self.somavalores]);
  end;
  // registro do movimento financeiro do convenio
  if (vTotAPrazo > 0)  then
  begin

    if flte.vpMesChave<>'' then
    begin
      flte.mes.Close;
      flte.mes.Connection := flte.ZCone;
      flte.mes.ParamByName('meschave').AsString:=flte.vpMesChave;
      flte.mes.Open;
     end;

    if not flte.mes.IsEmpty then
    begin
      flte.vpEtdCodigo := flte.mes.FieldByName('etdcodigo').AsInteger;
      flte.vpVendaEtdCodigo:= flte.mes.FieldByName('etdcodigo').AsInteger;
    end;


    if vpVendaEtdCodigo<>0 then
      vpEtdCodigo:=vpVendaEtdCodigo
    else
      vpEtdCodigo:=strtoint(mostralista('mcli',''));


    etf.close;
    etf.SQL.Text:='select etftelefone from etf where etdcodigo='+vpEtdCodigo.ToString+
                  ' and ttfcodigo in (1,3,7,8,9) limit 1';
    etf.Open;

    edr.close;
    edr.SQL.Text:='select edrcodigo, edritem from edr where etdcodigo='+vpEtdCodigo.ToString+
                  ' and tedcodigo in (1,8) limit 1';
    edr.Open;

    consulta.Close;
    consulta.sql.Text:='update orc,mor set orctelefone='+QuotedStr(etf.FieldByName('etftelefone').AsString) +', orc.edritem:='+edr.FieldByName('edritem').AsString+
    ', orc.edrcodigo='+edr.FieldByName('edrcodigo').AsString+',  orc.etdcodigo='+vpEtdCodigo.ToString+' where orc.orcchave=mor.orcchave and mor.meschave='+vchave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.sql.Text:='update mes,mor set mes.edritem:='+edr.FieldByName('edritem').AsString+
    ', mes.etdcodigo='+vpEtdCodigo.ToString+' where mes.meschave=mor.meschave and mor.meschave='+vchave;
    consulta.ExecSQL;

    vpValorFinalizador:=edmdaConvenio.Field.AsCurrency;

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

  vTotAFaturar:= vpAFaturar;

  if (vTotAFaturar > 0) then
  begin

    vpValorFinalizador:=vTotAFaturar;

    if vpVendaEtdCodigo<>0 then
    vpEtdCodigo:=vpVendaEtdCodigo;

 {   else
    vpEtdCodigo:=strtoint(mostralista('mcli',''))}

    etf.close;
    etf.SQL.Text:='select etftelefone from etf where etdcodigo='+vpEtdCodigo.ToString+
                  ' and ttfcodigo in (1,3,7,8,9) limit 1';
    etf.Open;

    edr.close;
    edr.SQL.Text:='select edrcodigo, edritem from edr where etdcodigo='+vpEtdCodigo.ToString+
                  ' and tedcodigo in (1,8) limit 1';
    edr.Open;

    consulta.Close;
    consulta.sql.Text:='update orc,mor set orctelefone='+QuotedStr(etf.FieldByName('etftelefone').AsString) +', orc.edritem:='+edr.FieldByName('edritem').AsString+
    ', orc.edrcodigo='+edr.FieldByName('edrcodigo').AsString+',  orc.etdcodigo='+vpEtdCodigo.ToString+' where orc.orcchave=mor.orcchave and mor.meschave='+vchave;
    consulta.ExecSQL;


    consulta.Close;

    consulta.sql.Text:='update mes,mor set mes.tdfcodigo='+QuotedStr('AF')+ ', mes.edritem:='+edr.FieldByName('edritem').AsString+
    ', mes.etdcodigo='+vpEtdCodigo.ToString+' where mes.meschave=mor.meschave and mor.meschave='+vchave;
    consulta.ExecSQL;

    vpValorFinalizador:=edmdaAFaturar.Field.AsCurrency;


    dtl.Close;
    dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
    dtl.Params[1].AsInteger := Acesso.Filial;
    dtl.Open;

    if not(dtl.Locate('mdacodigo', mdaAFaturar, [])) then
      dtl.Append
    else
      dtl.Edit;

    dtldtlvalorinfo.AsFloat := vTotAFaturar;
    dtlltechave.AsInteger := Self.lteltechave.AsInteger;
    dtlcedcodigo.AsInteger := 1;
    dtlmdacodigo.AsInteger := mdaAFaturar;
    dtldtlvalor.AsFloat := vTotAFaturar;
    dtlflacodigo.AsInteger := Acesso.Filial;
    dtldtlregistro.AsString := agora(application, ZCone);

    if (flte.VpTfdCodigo = tfdContaCorrente) then
      dtlccxchave.AsInteger := 0
    else
      dtlccxchave.AsInteger := vpCcxchave;

    dtl.Post;

   // registraconvenio(vchave, BuscaTroca(FloatToStr(vTotAFaturar), ',', '.'), True);
  end;

  if (vTotAPrazo > 0) then
  begin
    if (StrToInt(vretornoap) > 0) then
    begin
      Result := True;

    end
    else
    begin
      if cfgcfgusacre.AsInteger = 1 then
      begin
        if Self.psituacao.Caption = 'Incluindo' then
        begin
          dtl.Close;
          dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
          dtl.Params[1].AsInteger := Acesso.Filial;
          dtl.Open;

          // exclui detalhe que é convenio, pois foi cancelada a tela de definicao de parcelas
          if dtl.Locate('dtlchave', vDtlChaveConvenio, []) then
            dtl.Delete;

        end;
      end
      else
      begin
        removedtlzerado;
        Result := True;
      end;
    end;
  end
  else
  begin
    removedtlzerado;
    Result := True;
  end;

  vTotalTroco := vTotDinTroco + vTotChPropTroco + vTotChequeTroco + vTotValeTroco;

end;

function Tflte.RegistraTrocaDevolucao(vdtlchave: string; vTotal: Double; vtnccodigo: string): string;
var
  vlRetorno: string;
  vlTotalTrocaDevolucao: Double;
begin

  vlRetorno := '';
  vlRetorno := mostralistatrocadevolucaos('mtdv', '');

  if vlRetorno = '' then
  begin
    if tmp.State <> dsEdit then
      tmp.Edit;

    Self.tmpmdatrocadevolucao.AsFloat := 0;

  end
  else
  begin
    idt.Close;
    idt.Params[0].AsString := vlRetorno;
    idt.Open;
    vlTotalTrocaDevolucao := 0;
    while not idt.Eof do
    begin

      vlTotalTrocaDevolucao := vlTotalTrocaDevolucao + idtidttotal.AsCurrency;
      idt.Next;

    end;
    if tmp.State <> dsEdit then
      tmp.Edit;

    Self.tmpmdatrocadevolucao.AsFloat := vlTotalTrocaDevolucao;

  end;

end;

function Tflte.RegistraCredito(vdtlchave: string; vTotal: Double; vtnccodigo: string): string;
var
  vlRetorno: string;
  vlTotalMcr: Double;
begin
  vlRetorno := '';
  vlRetorno := mostralistacreditos('mscr', Acesso.Usuario.ToString, FloatToStr(vTotal), '1', vtnccodigo, '0');
  if vlRetorno = '' then
  begin
    if tmp.State <> dsEdit then
      tmp.Edit;

    Self.tmpmdaCredito.AsFloat := 0;

  end
  else
  begin
    lcv.Close;
    lcv.Params[0].AsString := lteltechave.AsString;
    lcv.Open;
    vlTotalMcr := 0;
    while not lcv.Eof do
    begin

      vlTotalMcr := vlTotalMcr + lcvmcrvalor.AsCurrency;
      lcv.Next;

    end;
    if tmp.State <> dsEdit then
      tmp.Edit;

    Self.tmpmdaCredito.AsFloat := vlTotalMcr;

  end;

end;

procedure Tflte.bconfirmaClick(Sender: TObject);
var
  vlcedcodigo: Integer;
  vlPcgCodigo: String;
  vlPhgCodigo: string;
  vlCcoValor: string;
  vlTocCodigo: Integer;
  i: Integer;
  vlOrcchave: Integer;
  vlLimDisp: Double;
  vlFechar: boolean;
begin
  try
    bconfirma.Enabled := false;

    vlFechar := false;

    if StrToFloat(edfaltatroco.Text) < 0 then
    begin
      bconfirma.Enabled := false;

      vlFechar := false;
      Exit;
    end;


    if vchave <> '' then
    begin
      vlOrcchave := StrToInt(vchave);
    end;
    if (plcontroleLimite.Visible) and (edmdaConvenio.Field.AsCurrency > 0) then
    begin

      try
        vlLimDisp := StrToCurr(StringReplace(pllimitedisponivel.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]));

        if (vlLimDisp - edmdaConvenio.Field.AsCurrency) < 0 then
        begin
          consulta.Close;
          consulta.SQL.Text := 'select orcchave from mor where meschave=' + flte.vchave;
          consulta.Open;
          vlOrcchave := consulta.FieldByName('orcchave').AsInteger;
          if LimiteAutorizado(IntToStr(vpEtdCodigo), edmdaConvenio.Field.AsFloat, vlLimDisp, vlLimDisp, vlOrcchave) = false then
            Exit;

        end;

      except
        if LimiteAutorizado(IntToStr(vpEtdCodigo), edmdaConvenio.Field.AsFloat, 0, 0, vlOrcchave) = false then
          Exit;

      end;

    end;

    if Self.psituacao.Caption = 'Alterando' then
    begin

      if (edmdaPix.Field.AsString = '') or (edmdaPix.Field.AsString = '0') or (edmdaPix.Field.AsString = '0,00') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaPIX);
        consulta.ExecSQL;
      end;

      if (edmdaPix.Field.AsString = '') or (edmdaPix.Field.AsString = '0') or (edmdaPix.Field.AsString = '0,00') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaPIX);
        consulta.ExecSQL;
      end;

      if (edmdaConvenio.Field.AsString = '') or (edmdaConvenio.Field.AsString = '0') or (edmdaConvenio.Field.AsString = '0,00') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaConvenio);
        consulta.ExecSQL;
      end;

      if (edmdaCartaoCredito.Field.AsString = '') or (edmdaCartaoCredito.Field.AsString = '0') or (edmdaCartaoCredito.Field.AsString = '0,00') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
        consulta.ExecSQL;
      end;

      if (edmdaCartaoDebito.Field.AsString = '') or (edmdaCartaoDebito.Field.AsString = '0') or (edmdaCartaoDebito.Field.AsString = '0,00') then
      begin

        consulta.Close;
        consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
        consulta.ExecSQL;
      end;

    end;

    vpTotDinTroco := Self.tmpmdaTrocoDinheiro.AsFloat;
    vpTotChPropTroco := Self.tmpmdaTrocoChequeProprio.AsFloat;
    vpChequeTerceiros := Self.tmpmdaTrocoChequeTerceiros.AsFloat;
    vpAFaturar := self.tmpmdaAFaturar.AsCurrency;

    if lte.State = dsBrowse then
      lte.Edit;

    ltelteprincipal.AsFloat := ltelteprincipal.AsFloat + (vpDinheiro + vpCartaoDebito + vpCartaoCredito + vpChequeProprio + vpChequeTerceiros +
      vpConvenio);

    lteltetotal.AsFloat := ltelteprincipal.AsFloat + lteltemulta.AsFloat + lteltejuros.AsFloat - lteltedesconto.AsFloat;

    lteclbcodigo.AsInteger := Acesso.Usuario;

    (* Armazena o troco da Operação *)
    lteltetroco.AsFloat := tmpmdaTrocoDinheiro.AsFloat;

    lteflacodigo.AsInteger := Acesso.Filial;
    if (flte.VpTfdCodigo = tfdContaCorrente) then
      lteccxchave.AsInteger := 0
    else

      lteccxchave.AsInteger := vpCcxchave;
    if vpCtaUtilizada <> 0 then
    begin
      ltectacodigo.AsInteger := vpCtaUtilizada;
    end;

    if (ContaCaixa > 0) and (VpTfdCodigo = tfdRecebimentos) then
    begin
      ltectacodigo.AsInteger := ContaCaixa;
    end;

    lte.Post;

    if tmp.State = dsBrowse then
      tmp.Edit;

    tmpmdaTrocoDinheiro.AsFloat := 0;

    dtl.Close;
    dtl.Params[0].AsInteger := lteltechave.AsInteger;
    dtl.Params[1].AsInteger := Acesso.Filial;
    dtl.Open;

    (* Deleta da "dtl" modalidades que o usuário zerou *)
    for i := 0 to 8 do
    begin
      if tmp.Fields[i].AsFloat = 0 then
        if (dtl.Locate('mdacodigo', tmp.Fields[i].Tag, [])) then
          dtl.Delete;
    end;
    if cfgcfgsalvatroco.AsInteger = 0 then
    begin
      if (dtl.Locate('mdacodigo', tmp.FieldByName('mdaTrocoDinheiro').Tag, [])) then
        dtl.Delete;
    end;

    vlFechar := confirmaregistrolte;

    if not(lte.State in [dsEdit, dsInactive]) then
      lte.Edit;

    (* Define a conta corrente da movimentação *)
    if vpCtaUtilizada > 0 then
    begin
      ltectacodigo.AsInteger := vpCtaUtilizada
    end
    else if ContaCaixa > 0 then
    begin
      ltectacodigo.AsInteger := ContaCaixa
    end
    else if (vpCcoChave <> '') and (vpCcoChave <> '0') then
    begin

      consulta.Close;
      consulta.SQL.Text := 'SELECT ctacodigo FROM cco WHERE ccochave = ' + vpCcoChave;
      consulta.Open;

      ltectacodigo.AsInteger := consulta.Fields[0].AsInteger;

    end
    else
    begin
      ltectacodigo.AsInteger := cfgcfgctacaixa.AsInteger;
    end;

    lteflacodigo.AsInteger := Acesso.Filial;
    if (flte.VpTfdCodigo = tfdContaCorrente) then
      lteccxchave.AsInteger := 0
    else
      lteccxchave.AsInteger := vpCcxchave;
    if vpCtaUtilizada > 0 then
    begin
      ltectacodigo.AsInteger := vpCtaUtilizada;
    end;

    if (ContaCaixa > 0) and (VpTfdCodigo = tfdRecebimentos) then
    begin
      ltectacodigo.AsInteger := ContaCaixa;
    end;

    lte.Post;
    // venda deve ajustar situação do produtos após devoluição
    if VpTfdCodigo = tfdVenda then
    begin

      vpAFaturar := edmdaAFaturar.Field.AsCurrency;

      if (vpAFaturar > 0) then
      begin

        dtl.Close;
        dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
        dtl.Params[1].AsInteger := Acesso.Filial;
        dtl.Open;

        if not(dtl.Locate('mdacodigo', mdaAFaturar, [])) then
          dtl.Append
        else
          dtl.Edit;

        dtldtlvalorinfo.AsFloat := vpAFaturar;
        dtlltechave.AsInteger := Self.lteltechave.AsInteger;
        dtlcedcodigo.AsInteger := 1;
        dtlmdacodigo.AsInteger := mdaAFaturar;
        dtldtlvalor.AsFloat := vpAFaturar;
        dtlflacodigo.AsInteger := Acesso.Filial;
        dtldtlregistro.AsString := agora(application, ZCone);
        if (flte.VpTfdCodigo = tfdContaCorrente) then
          dtlccxchave.AsInteger := 0
        else
          dtlccxchave.AsInteger := vpCcxchave;

        dtl.Post;
        vpValorFinalizador:= vpAFaturar;
       // registraconvenio(vchave, BuscaTroca(FloatToStr(vpAFaturar), ',', '.'), True);
      end;

      if not idt.IsEmpty then
      begin

        mdt.Close;
        mdt.ParamByName('mdtchave').AsString := idtmdtchave.AsString;
        mdt.Open;
        while not mdt.Eof do
        begin

          // item de orgem da troca
          itm.Close;
          itm.SQL.Text := 'select procodigo from itm where meschave=' + mdtmeschaveorigem.AsString;
          itm.Open;
          itm.First;

          while not itm.Eof do
          begin
            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm.FieldByName('procodigo').AsString + ', IF((select prosaldo from pro where procodigo='
              + itm.FieldByName('procodigo').AsString + ')=0,2,1) )';
            saldo.ExecSQL;

            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm.FieldByName('procodigo').AsString +
              ', IF((select prosaldodisp from pro where procodigo=' + itm.FieldByName('procodigo').AsString + ')=0,2,1) )';
            saldo.ExecSQL;

            itm.Next;
          end;

          // item de orgem da troca
          itm.Close;
          itm.SQL.Text := 'select procodigo from itm where meschave=' + mdtmeschavedestino.AsString;
          itm.Open;
          itm.First;

          while not itm.Eof do
          begin
            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm.FieldByName('procodigo').AsString + ', IF((select prosaldo from pro where procodigo='
              + itm.FieldByName('procodigo').AsString + ')=0,2,1) )';
            saldo.ExecSQL;

            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itm.FieldByName('procodigo').AsString +
              ', IF((select prosaldodisp from pro where procodigo=' + itm.FieldByName('procodigo').AsString + ')=0,2,1) )';
            saldo.ExecSQL;

            itm.Next;
          end;

          mdt.Next;
        end;

      end;
    end;

    if vRetorno <> '' then
    begin
      if (cfgcfgusactb.AsInteger = 1) then
      begin
        case VpTfdCodigo of
          tfdContaCorrente:
            begin
              consulta.Close;
              consulta.SQL.Text :=
                'select cedcodigo,cta.flacodigo, pcgcodigo, ccovalor, phgcodigo, toccodigo from cco,cta where cco.ctacodigo=cta.ctacodigo and ccochave='
                + vpCcoChave;
              consulta.Open;
              vlcedcodigo := consulta.Fields[0].AsInteger;
              vpFlaCodigo := consulta.Fields[1].AsString;
              vlPcgCodigo := consulta.Fields[2].AsString;
              vlCcoValor := consulta.Fields[3].AsString;
              vlPhgCodigo := consulta.Fields[4].AsString;
              vlTocCodigo := consulta.Fields[5].AsInteger;
            end;
          tfdVenda:
            begin
              { if Contabilizar(Self.lteltechave.AsString, 1, vpMesChave, 'ContabilizacaoVenda') = False then
                begin
                vRetorno := '';
                end; }
            end;
        end;
      end
      else if (cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
      begin
        case VpTfdCodigo of
          tfdPagamentos:
            begin
              mcgrfi.Close;
              mcgrfi.ParamByName('ltechave').AsString := vpLteMcgchave;
              mcgrfi.Open;
              mcg.Open;

              while not mcgrfi.Eof do
              begin

                mcg.Append;

                mcgccgcodigo.AsInteger := mcgrficcgcodigo.AsInteger;
                mcgmcgvalor.AsCurrency := mcgrfimfivalor.AsCurrency;
                mcgmcgdata.AsString := hoje(application, ZCone);
                mcgmcgtabela.AsString := 'cco';
                mcgmcgchaveorigem.AsString := vpCcoChave;
                mcgmcgsituacao.AsInteger := 0;
                mcgclbcodigo.AsInteger := Acesso.Usuario;
                mcgmcgregistro.AsString := agora(application, ZCone);
                mcgmcgcompetencia.AsString := mcgrfimcgcompetencia.AsString;

                mcg.Post;

                mcgrfi.Next;
              end;

            end;
        end;
      end;

    end;

    removedtlzerado;

  finally
    if vlFechar then
    begin
      Close;
    end
    else
      bconfirma.Enabled := True;

  end;
end;


procedure Tflte.RegistraOnLine(vdtlchave: String; vTotal: Double; vOriodigo:String);
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


  consulta.Close;
  consulta.SQL.Text := ' SELECT etdcodigo FROM ori where oricodigo='+vOriodigo;
  consulta.Open;

    vlEtdCodigo := Self.consulta.Fields[0].AsInteger;

    vlValorCartao := vpValorFinalizador;
    vlRdcData := DataAtual + 30;
    vlValorCartao := vpValorFinalizador;
    vlNrAuto := '';
    vlQtdParcelas := 1;

    vlTitCodigo := 0;
    vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao, vlQtdParcelas,
      0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

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



procedure Tflte.RegistraCartao(vdtlchave: String; vTotal: Double);
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

    if not consulta.IsEmpty then
    begin
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
        vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao,
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
      if edmdaCartaoDebito.Field.AsFloat <> 0 then
      begin
        vlValorCartao := edmdaCartaoDebito.Field.AsFloat;
        vlVlrParcela := edmdaCartaoDebito.Field.AsFloat;
        vlMdaCodigo := mdaCartaoDebito;
        vlRdcData := DataAtual + 3;

        vlNrAuto := '';
        vlQtdParcelas := 1;

        vlTitCodigo := 0;
        vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao,
          vlQtdParcelas, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);
        i := 1;
        AjustaRfi(IntToStr(vlTitCodigo), IncDay(vlRdcData, IfThen(vlMdaCodigo = mdaCartaoDebito, 1, (30 * i))), i, vlVlrParcela);

      end;

      if edmdaCartaoCredito.Field.AsFloat <> 0 then
      begin
        vlValorCartao := edmdaCartaoCredito.Field.AsFloat;
        vlVlrParcela := edmdaCartaoCredito.Field.AsFloat;
        vlMdaCodigo := mdaCartaoCredito;
        vlRdcData := DataAtual + 30;

        vlNrAuto := '';
        vlQtdParcelas := 1;

        vlTitCodigo := 0;
        vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao,
          vlQtdParcelas, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

        i := 1;
        AjustaRfi(IntToStr(vlTitCodigo), IncDay(vlRdcData, IfThen(vlMdaCodigo = mdaCartaoDebito, 1, (30 * i))), i, vlVlrParcela);

      end;

    end;

  end
  else
  begin

    consulta.Close;
    consulta.SQL.Text := ' SELECT adc.etdcodigo FROM adc ';
    consulta.Open;

    vlEtdCodigo := Self.consulta.Fields[0].AsInteger;
    vlValorCartao := vpValorFinalizador;
    vlRdcData := DataAtual + 30;
    vlValorCartao := vpValorFinalizador;
    vlNrAuto := '';
    vlQtdParcelas := 1;

    vlTitCodigo := 0;
    vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao, vlQtdParcelas,
      0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

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

procedure Tflte.bfecharClick(Sender: TObject);
begin
  { * remove log de registros de Creditos e Verbas * }

  consulta.Close;
  consulta.SQL.Text := 'delete from mce where ltechave=' + Self.lteltechave.AsString;
  consulta.ExecSQL;

  if Self.psituacao.Caption = 'Incluindo' then
  begin

    if (edmdaCartaoCredito.Field.AsString = '') or (edmdaCartaoCredito.Field.AsString = '0') or (edmdaCartaoCredito.Field.AsString = '0,00') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
      consulta.ExecSQL;
    end;

    if (edmdaCartaoDebito.Field.AsString = '') or (edmdaCartaoDebito.Field.AsString = '0') or (edmdaCartaoDebito.Field.AsString = '0,00') then
    begin

      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
      consulta.ExecSQL;
    end;

  end
  else if Self.psituacao.Caption = 'Alterando' then
  begin

    if (edmdaCartaoCredito.Field.AsString <> '') and (edmdaCartaoCredito.Field.AsString <> '0') and (edmdaCartaoCredito.Field.AsString <> '0,00') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoCredito);
      consulta.ExecSQL;
    end;

    if (edmdaCartaoDebito.Field.AsString <> '') and (edmdaCartaoDebito.Field.AsString <> '0') and (edmdaCartaoDebito.Field.AsString = '0,00') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from dtl where ltechave=' + lteltechave.AsString + ' and mdacodigo=' + IntToStr(mdaCartaoDebito);
      consulta.ExecSQL;
    end;

  end;

  if tmp.State <> dsEdit then
    tmp.Edit;

  tmpmdaDinheiro.AsCurrency := 0;
  tmpmdaDoacao.AsCurrency := 0;
  tmpmdaVale.AsCurrency := 0;
  tmpmdatrocadevolucao.AsCurrency := 0;
  tmpmdaChequeProprio.AsCurrency := 0;
  tmpmdaChequeTerceiros.AsCurrency := 0;
  tmpmdaCartaoDebito.AsCurrency := 0;
  tmpmdaCartaoCredito.AsCurrency := 0;
  tmpmdaPix.AsCurrency := 0;
  tmpmdaConvenio.AsCurrency := 0;
  tmpmdaAFaturar.AsCurrency := 0;
  tmpmdaCredito.AsCurrency := 0;

  tmpmdaTrocoDinheiro.AsCurrency := 0;
  tmpmdaTrocoChequeProprio.AsCurrency := 0;
  tmpmdaTrocoChequeTerceiros.AsCurrency := 0;
  tmptroco.AsCurrency := 0;

  if (tmp.State IN [dsEdit, dsInsert]) then
    tmp.Post;

  registradtl;
  Self.ajustaaltura;

  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vRetorno := '';
  { Tarefa: 2009 }
  bconfirma.Enabled := false;
  { Tarefa: 2009 }


  vpAFaturar:=0;
end;

procedure Tflte.Button1Click(Sender: TObject);
begin
    AplicaDescontoGeral;
end;

procedure Tflte.Pagamento;
begin
  { }
end;

procedure Tflte.Recebimento;
begin
  { }
end;

function Tflte.AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double; vrdcnrauto: string = ''): Integer;
begin

  if vtitcodigo <> '' then
  begin

    if (vpCcoChave = '0') or (vpCcoChave = '') then
    begin
      mes.Close;
      mes.Params[0].AsString := Self.vchave;
      mes.Params[1].AsInteger := Acesso.Filial;
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

      qryveri.Close;
      qryveri.SQL.Text := 'select rfichave from rfi where  ' + 'rfinumero=' + QuotedStr(tittitnumero.AsString + '-' + IntToStr(vParcela)) +
        ' and etdcodigo=' + IntToStr(titetdcodigo.AsInteger) + ' and rfivencimento=' + QuotedStr(ajustadata(datetostr(vVencimento))) +

        ' and rfiemissao=' + QuotedStr(ajustadata(datetostr(tittitemissao.AsFloat))) + ' and rfivalor=' + BuscaTroca(FloatToStr(vvalor), ',', '.');
      qryveri.Open;

      if not qryveri.IsEmpty then
      begin
        Result := qryveri.FieldByName('rfichave').AsInteger;
        Exit;
      end;

      rfi.Close;
      rfi.ParamByName('titcodigo').AsString := vtitcodigo;
      rfi.Open;

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
      rfirdcnrauto.AsString := vrdcnrauto;
      rfi.Post;

      if VpTfdCodigo = tfdVenda then
      begin
        rfm.Close;
        rfm.ParamByName('rfichave').AsInteger := Self.rfirfichave.AsInteger;
        rfm.Open;

        rfm.Append;
        rfmrfichave.AsInteger := Self.rfirfichave.AsInteger-1;
        rfmflacodigo.AsInteger := Acesso.Filial;
        rfmmeschave.AsString := vchave;
        rfm.Post;
      end;

      // registro
      mfi.Close;
      mfi.ParamByName('rfichave').AsInteger := Self.rfirfichave.AsInteger;
      mfi.Open;

      mfi.Append;
      mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
      mfitmfcodigo.AsInteger := tmfAReceber;
      mfimoecodigo.AsInteger := 1;
      mfimfivalor.AsFloat := rfirfivalor.AsFloat;
      mfimfidata.AsFloat := DataAtual;
      mfimfihistorico.AsString := '';
      mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
      mfimfiparcela.AsInteger := 0;
      mfi.Post;

      mlt.Close;
      mlt.ParamByName('mfichave').AsInteger := Self.mfimfichave.AsInteger;
      mlt.Open;

      mlt.Append;
      mltmfichave.AsInteger := Self.mfimfichave.AsInteger;
      mltltechave.AsInteger := Self.lteltechave.AsInteger;
      mltflacodigo.AsInteger := Acesso.Filial;
      mlt.Post;

      if adcadcliquidaautomatico.AsInteger = 1 then
      begin

        mfi.Append;
        mfirfichave.AsInteger := rfirfichave.AsInteger;
        mfitmfcodigo.AsInteger := tmfRecebimento;
        mfimoecodigo.AsInteger := 1;
        mfimfivalor.AsCurrency := rfirfivalor.AsCurrency;
        mfimfidata.AsFloat := rfirfivencimento.AsFloat;
        mfimfihistorico.AsString := 'Liquidação Automática';
        mfimfivalorori.AsCurrency := rfirfivalor.AsCurrency;
        mfimfiparcela.AsInteger := 1;

        mfi.Post;

        rfi.Edit;
        rfisrfcodigo.AsInteger := srfQuitado;
        rfi.Post;

      end;

      consulta.Close;
      consulta.SQL.Text := 'select CalcMovimentoFinanceiro(:rfichave)';
      consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'select CalcRegistroFinanceiro(:rfichave)';
      consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
      consulta.ExecSQL;

      Result := rfirfichave.AsInteger;
    end;

  end;
end;

function Tflte.AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao: TDate; vtitvctoinicial: TDate;
  vtfdcodigo: Integer; vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia: Double;
  vtitvalomulta: Double; vtitpercmesmora: Double; vtitvalodesc: Double; vtitpercmulta: Double; vtitpercmesmulta: Double; vbcocodigo: String;
  vcarcodigo: Integer; vtitdiasmulta: Integer; vtitdiasdesc: Integer): Integer;

begin

  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo, tit.titvalor, tit.titnumero, tit.titemissao, ';
  tit.SQL.Add('tit.titvalorparcela, tit.titparcelas, tit.titvctoinicial, tit.tfdcodigo, tit.srfcodigo,');
  tit.SQL.Add('tit.tficodigo, tit.tithora, tit.clbcodigo, tit.tithistorico, tit.flacodigo, tit.bcocodigo,');
  tit.SQL.Add('tit.carcodigo, tit.titprevisao, tit.moecodigo, tit.titmoradia, tit.titdiasmulta, tit.titvalomulta,');
  tit.SQL.Add('tit.titpercmesmora, tit.titvalodesc, tit.titdiasdesc, tit.titpercmulta ');
  tit.SQL.Add('FROM tit ');

  qryveri.Close;
  qryveri.SQL.Text := 'select titcodigo from tit where  ' + 'titnumero=' + QuotedStr(vtitnumero) + ' and etdcodigo=' + IntToStr(vetdcodigo) +
    ' and titvctoinicial=' + QuotedStr(ajustadata(datetostr(vtitvctoinicial))) + ' and titemissao=' + QuotedStr(ajustadata(datetostr(vtitemissao))) +
    ' and titvalorparcela=' + BuscaTroca(FloatToStr(vtitvalorparcela), ',', '.');
  qryveri.Open;

  if not qryveri.IsEmpty then
  begin
    Result := qryveri.FieldByName('titcodigo').AsInteger;
    Exit;
  end;

  if (vtitcodigo <> '') and (vtitcodigo <> '0') then
  begin
    tit.SQL.Add('WHERE tit.titcodigo=' + vtitcodigo);
    tit.Open;
    tit.Edit;
  end
  else
  begin
    tit.SQL.Add('limit 0');
    tit.Open;
    tit.Append;
  end;

  tittithora.AsFloat := HoraAtual;
  titclbcodigo.AsInteger := Acesso.Usuario;
  tittitprevisao.AsInteger := 0;

  titflacodigo.AsInteger := Acesso.Filial;

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

procedure Tflte.removedtlzerado;
begin
  if psituacao.Caption = 'Incluindo' then
  begin
    dtl.Close;
    dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
    dtl.Params[1].AsInteger := Acesso.Filial;
    dtl.Open;
    while not dtl.Eof do
    begin
      if (Self.dtldtlvalor.AsFloat = 0) or (dtlmdacodigo.AsInteger = 0) then
        dtl.Delete
      else
        dtl.Next;
    end;
  end;

end;

procedure Tflte.ajustapaineis;
var
  plinfo: TPanel;

  btsele: TSpeedButton;
  dbvalor: TDBEdit;

  vfiltromda: string;
  vfiltrocar: string;

  vnomecampo: string;

begin
  try

    vpTctCodigo := 0;

    if (Self.vpCcoChave <> '') and (vpCcoChave <> '0') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select tctcodigo,toccodigo,cco.cedcodigo from cta, cco where cta.ctacodigo=cco.ctacodigo and ccochave=' + Self.vpCcoChave;
      consulta.Open;

      vpTctCodigo := Self.consulta.Fields[0].AsInteger;
      VtocCodigo := Self.consulta.Fields[1].AsInteger;
      vcedcodigo := Self.consulta.Fields[2].AsInteger;
      consulta.Close;
    end;

    if VtocCodigo = tocTransferencia then
      plvalores.Visible := false
    else if VtocCodigo = tocResgate then
      plvalores.Visible := True
    else
      plvalores.Visible := True;

    mda.Close;
    // mda.Params[0].AsInteger := VpTfdCodigo;
    // mda.Filtered := False;

    vfiltromda := '';

    if not VpPodeDoacao then
    begin
      vfiltromda := 'mda.mdacodigo <> ' + IntToStr(mdaDoacao) + ' AND ';
    end;

    if not VpPodeTroca then
    begin
      vfiltromda := 'mda.mdacodigo <> ' + IntToStr(mdaTrocaDevolucao) + ' AND ';
    end;

    if not VpPodeConvenio then
    begin
      vfiltromda := 'mda.mdacodigo <> ' + IntToStr(mdaConvenio) + ' AND ';
    end;

    vfiltrocar := '';

    if not VpPodeCartoes then
    begin
      vfiltrocar := ' (mda.mdacodigo <> ' + IntToStr(mdaCartaoDebito) + ') and (mda.mdacodigo<>' + IntToStr(mdaCartaoCredito) + ') and ';
    end;

    if vpTctCodigo <> 0 then
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

      case vpTctCodigo of
        tctContaBancaria:
          vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaChequeTerceiros) + ' or mda.mdacodigo = ' + IntToStr(mdaChequeProprio) +
            ' or mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ') and ';
        tctContaCaixa:
          vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaChequeTerceiros) + ' or mda.mdacodigo = ' + IntToStr(mdaVerba) +
            ' or mda.mdacodigo = ' + IntToStr(mdaCredito) + ' or mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ' or  mda.mdacodigo = ' +
            IntToStr(mdaChequeTerceiros) + ' or  mda.mdacodigo = ' + IntToStr(mdaTrocoDinheiro) + ' or  mda.mdacodigo = ' +
            IntToStr(mdaTrocoChequeProprio) + ' or  mda.mdacodigo = ' + IntToStr(mdaTrocoChequeTerceiros) + ') and ';
      else
        vfiltromda := vfiltromda + ' (mda.mdacodigo = ' + IntToStr(mdaDinheiro) + ') and ';
      end;

    end;

    case (Self.VpTfdCodigo) of
      tfdContaCorrente, tfdBancariaDebito, tfdBancariaCredito, tfdTesouraria:
        begin
          PlValor.Visible := false;
          plJuros.Visible := false;
          PlMulta.Visible := false;
          PlDesconto.Visible := false;
          plliquido.Visible := True;
          plvalores.Height := 100;
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
            plvalores.Height := 210;
          end;
        end;
    else
      begin
        PlValor.Visible := True;
        if Self.VpTfdCodigo = tfdVenda then
        begin
          PlMulta.Visible := false;
          plJuros.Visible := false;
          plvalores.Height := 170;
        end
        else
        begin
          PlMulta.Visible := True;
          plJuros.Visible := True;
          plvalores.Height := 210;
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
      plchequesproprios.Visible := false;
      // plPix.Visible := false;
    end;

    Self.Width := 470;

    // tmp.CreateDataSet;
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
    cfg.Params[0].AsInteger := Acesso.Filial;
    cfg.Open;

    if flte.cfgcfgctacodigopix.AsInteger = 0 then
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
        flte.cfg.Post;
      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
        flte.consulta.Open;
        if not flte.consulta.IsEmpty then
        begin
          flte.cfg.Edit;
          flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
          flte.cfg.Post;
        end;

      end;

      flte.cfg.Close;
      flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
      flte.cfg.Open;

    end;

    if cfgcfgusagarantia.AsInteger = 1 then
      VpPodeGarantia := True
    else
      VpPodeGarantia := false;

    if (Self.cfgcfgusaadc.AsInteger in [1, 2]) then
    begin
      adc.Close;
      adc.Open;

      if adc.IsEmpty then
      begin
        Self.plcartaocredito.Visible := false;
        Self.plcartaodebito.Visible := false;
      end;
    end;

    if not VpPodeCartoes then
    begin
      Self.plcartaocredito.Visible := false;
      Self.plcartaodebito.Visible := false;
    end;

    { if not VpPodeDoacao then
      begin
      Self.pldoacao.Visible := false;
      ActDoacao.Enabled := false;
      end; }

    Self.pldoacao.Visible := false;
    ActDoacao.Enabled := false;

    Self.plaFaturar.Visible := false;
    ActAFaturar.Enabled := false;

    if not VpPodeTroca then
    begin
      Self.pltrocadevolucao.Visible := false;
      ActTrocaDevolucao.Enabled := false;
    end;

    if cfgcfgusacre.AsInteger = 1 then
    begin
      if (vpCcoChave = '0') or (vpCcoChave = '') then
      begin
        mes.Close;
        mes.Params[0].AsString := Self.vchave;
        mes.Params[1].AsInteger := Acesso.Filial;
        mes.Open;
      end;

      if not VpPodeConvenio then
      begin
        Self.plconvenio.Visible := false;
        ActConvenio.Enabled := false;
      end;
    end
    else
    begin
      plconvenio.Caption := 'Venda Identificada R$';
      Self.plconvenio.Visible := True;
    end;

    VerificaPaineis;

    Self.plcreditos.Visible := false;

    if let.Active then
      if not let.IsEmpty then
      begin
        if vpTncCodigo <> '' then
          Self.plchequesproprios.Visible := false
        else if VpTfdCodigo <> tfdPagamentos then
        begin
          consulta.Close;
          consulta.SQL.Text := 'SELECT etdcodigo, sum(rcrsaldo) as rcrsaldo from v_rcr where etdcodigo=' + IntToStr(vpEtdCodigo);
          consulta.Open;
          if not consulta.IsEmpty then
          begin
            btcreditos.Caption := 'Vale / Crédito R$ ' + FormatFloat('###,##0.00', consulta.FieldByName('rcrsaldo').AsFloat);
            vpTotCreditos := consulta.FieldByName('rcrsaldo').AsFloat;
          end;

          Self.plcreditos.Visible := True;
        end;
      end;

    { if vpTctCodigo = tctContaBancaria then
      plchequesterceiros.Visible := false; }

    if cfgcfgusaadc.AsInteger in [0, 1] then
    begin

      edmdaCartaoDebito.ReadOnly := false;
      edmdaCartaoCredito.ReadOnly := false;

    end;
    Self.ajustaaltura;

  finally
  end;
end;

procedure Tflte.aosair(Sender: TObject);
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

procedure Tflte.ativarTimer(Sender: TObject);
begin
  ativar.Enabled := false;

  // Perform(WM_NEXTDLGCTL, 0, 0);

end;

{$REGION 'Chama Bpls'}

function Tflte.registracheques(vchave: string; vvalor: string): string;
type
  TRegistraCheques = function(AOwner: TComponent; Conexao: tuniconnection; vusrcodigo: String; vTotal: string; vdtlchave: string;
    vetdcodigo: String = ''): string;
var
  registra: TRegistraCheques;
  vlEtdCodigo: string;
begin

  vlEtdCodigo := '';

  if vpEtdCodigo <> 0 then
    vlEtdCodigo := IntToStr(vpEtdCodigo);

  pack := LoadPackage('modulos\mche.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('RegistraCheques'));

      if Assigned(registra) then
        Result := registra(application, ZCone, Acesso.Usuario.ToString, vvalor, vchave, vlEtdCodigo);

    finally
      // DoUnLoadPackage(Application,pack);
    end;
end;

function Tflte.SelecionaConta: string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
begin

  pack := LoadPackage('modulos\mcta.bpl');
  if pack <> 0 then
    try
      @ExecForm := GetProcAddress(pack, PChar('formu'));

      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(application, pack, ZCone, Acesso, 'ctaativa=1', '', modoPesquisa);
        Result := ExecForm(vlCargaFrame);
      end;

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tflte.SetDataAtual(const Value: TDate);
begin
  FDataAtual := Value;
end;

function Tflte.selecionachequesterceiro(vchave: string; vschcodigo: Integer): string;
var
  seleciona: TSelecionaCheques;
  vlCtaCodigo: string;
begin

  pack := LoadPackage('modulos\msch.bpl');
  if pack <> 0 then
    try
      @seleciona := GetProcAddress(pack, PChar('selecionacheques'));
      vlCtaCodigo := '';
      if vpCcoChave <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select ctacodigo from cco where ccochave=' + vpCcoChave;
        consulta.Open;
        vlCtaCodigo := consulta.Fields[0].AsString;
      end
      else if ContaCaixa > 0 then
        vlCtaCodigo := IntToStr(ContaCaixa);

      if Assigned(seleciona) then
        Result := seleciona(application, ZCone, vchave, tmp.FieldByName('troco').AsString, vschcodigo, vlCtaCodigo);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tflte.ZeraTrocos;
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

procedure Tflte.VerificaPaineisTrocos;

begin

  ffd.Close;
  ffd.Params[0].AsInteger := VpTfdCodigo;
  ffd.Open;

  if (ffd.Locate('mdacodigo', 11, [])) and (VpTfdCodigo <> tfdContaCorrente) then
    plmdatroco11.Visible := True
  else
    plmdatroco11.Visible := false;

  if (ffd.Locate('mdacodigo', 22, [])) and (VpTfdCodigo <> tfdContaCorrente) then
    plmdatroco22.Visible := True
  else
    plmdatroco22.Visible := false;

  if (ffd.Locate('mdacodigo', 33, [])) and (VpTfdCodigo <> tfdContaCorrente) then
    plmdatroco33.Visible := True
  else
    plmdatroco33.Visible := false;

  if (ffd.Locate('mdacodigo', 77, [])) and (VpTfdCodigo <> tfdContaCorrente) then
    plmdatroco77.Visible := True
  else
    plmdatroco77.Visible := false;

  if (plmdatroco11.Visible = false) and (plmdatroco22.Visible = false) and (plmdatroco33.Visible = false) and (plmdatroco77.Visible = false) then
  begin
    plmdatrocotit.Visible := false;
  end;

  Self.ajustaaltura;

end;

procedure Tflte.VerificaPaineis;
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
          (Self.Components[i] as TPanel).Visible := false;

  { *  verifica se é um registro de uma conta corrente e se o tipo é bancaria, se
    não for oculta emissao de cheque proprio * }
  if (Self.vpCcoChave <> '') and (Self.vpCcoChave <> '0') then
    if vpTctCodigo <> tctContaBancaria then
      plchequesproprios.Visible := false;

  if (VtocCodigo = tocResgate) and (vcedcodigo = cedDebito) then
  begin
    plchequesproprios.Visible := false;
    plDinheiro.Visible := false;

  end;

  if (VtocCodigo = tocResgate) and (vcedcodigo = cedCredito) then
  begin
    plchequesproprios.Visible := false;
  end;

end;

procedure Tflte.ProcessaTeclasAtalho(vmdacodigo: Integer);
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
        // if (edmdaCartaoDebito.Field.AsString = '') or (edmdaCartaoDebito.Field.AsString = '0,00') or (edmdaCartaoDebito.Field.AsString = '0') then
        if Self.edfaltatroco.Field.AsFloat < 0 then
          edmdaCartaoDebito.Field.AsFloat := edmdaCartaoDebito.Field.AsFloat + (Self.edfaltatroco.Field.AsFloat * -1);
      end;
    mdaCartaoCredito:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        // if (edmdaCartaoCredito.Field.AsString = '') or (edmdaCartaoCredito.Field.AsString = '0,00') or (edmdaCartaoCredito.Field.AsString = '0') then
        if Self.edfaltatroco.Field.AsFloat < 0 then
          edmdaCartaoCredito.Field.AsFloat := edmdaCartaoCredito.Field.AsFloat + (Self.edfaltatroco.Field.AsFloat * -1);
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

    mdaTrocoDinheiro:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        // if (edmdaTrocoDinheiro.Field.AsString = '') or (edmdaTrocoDinheiro.Field.AsString = '0,00') or (edmdaTrocoDinheiro.Field.AsString = '0') then
        if Self.edfaltatroco.Field.AsFloat > 0 then
          edmdaTrocoDinheiro.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat);

      end;
    mdaTrocoVale:
      begin
        if Self.edfaltatroco.Field.AsFloat > 0 then
          edmdaTrocovale.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat);

      end;

    mdaTrocoChequeTerceiros:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaTrocoChequeTerceiros.Field.AsString = '') or (edmdaTrocoChequeTerceiros.Field.AsString = '0,00') or
          (edmdaTrocoChequeTerceiros.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat > 0 then
            edmdaTrocoChequeTerceiros.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat);
      end;
    mdaTrocoChequeProprio:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaTrocoChequeProprio.Field.AsString = '') or (edmdaTrocoChequeProprio.Field.AsString = '0,00') or
          (edmdaTrocoChequeProprio.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat > 0 then
            edmdaTrocoChequeProprio.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat);
      end;

    mdaPIX:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaPix.Field.AsString = '') or (edmdaPix.Field.AsString = '0,00') or (edmdaPix.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaPix.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaOnline:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaOnline.Field.AsString = '') or (edmdaOnline.Field.AsString = '0,00') or (edmdaOnline.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaOnline.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;


    mdaCredito:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaCredito.Field.AsString = '') or (edmdaCredito.Field.AsString = '0,00') or (edmdaCredito.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
          begin
            edmdaCredito.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
          end;

        if (vpTotCreditos - edmdaCredito.Field.AsFloat) > 0 then
          edmdaTrocovale.Field.AsFloat := vpTotCreditos - edmdaCredito.Field.AsFloat;

      end;

    mdaTrocaDevolucao:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaTrocaDevolucao.Field.AsString = '') or (edmdaTrocaDevolucao.Field.AsString = '0,00') or (edmdaTrocaDevolucao.Field.AsString = '0')
        then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaTrocaDevolucao.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaDoacao:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaDoacao.Field.AsString = '') or (edmdaDoacao.Field.AsString = '0,00') or (edmdaDoacao.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaDoacao.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;
    mdaAFaturar:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaAFaturar.Field.AsString = '') or (edmdaAFaturar.Field.AsString = '0,00') or (edmdaAFaturar.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaAFaturar.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

    mdaVale:
      begin
        // se valor da modalidade esta em branco ou zero, e o valor do falta ainda tem valor, transfere para ele o valor
        if (edmdaVale.Field.AsString = '') or (edmdaVale.Field.AsString = '0,00') or (edmdaVale.Field.AsString = '0') then
          if Self.edfaltatroco.Field.AsFloat < 0 then
            edmdaVale.Field.AsFloat := (Self.edfaltatroco.Field.AsFloat * -1);
      end;

  end;

end;

function Tflte.CreditarValor(vdtlchave: string; vmeacodigo: String; vtnccodigo: String): string;
type

  TCreditar = function(AOwner: TComponent; Conexao: tuniconnection; vLteChave: string; vmotivo: string; vusrcodigo: string; vmeschave: string;
    vmeacodigo: string; vtnccodigo: string; vdtlchave: string): string;

var
  registra: TCreditar;
begin
  pack := LoadPackage('modulos\merf.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('Creditar'));

      if not Assigned(registra) then
        Exit;

      Result := registra(application, ZCone, vpLtechave, '', Acesso.Usuario.ToString, vpMesChave, vmeacodigo, vtnccodigo, vdtlchave);

    finally
      // DoUnLoadPackage(pack);
    end;

end;

function Tflte.registrachequesproprios(vchave: string; vvalor: string): string;
type
  TRegistraChequesProprios = function(AOwner: TComponent; Conexao: tuniconnection; vusrcodigo: String; vTotal: string; vdtlchave: string;
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

      Result := registra(application, ZCone, Acesso.Usuario.ToString, vvalor, vchave, vlCtaCodigo);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

function Tflte.mostralista(pModulo: string; pFiltro: string): string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
begin
  Result := '';
  pack := LoadPackage('modulos\' + pModulo + '.bpl');
  if pack <> 0 then
    try
      @ExecForm := GetProcAddress(pack, PChar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(application, pack, ZCone, Acesso, pFiltro);
        Result := ExecForm(vlCargaFrame);

      end;
    finally
      // DoUnLoadPackage(application,pack);
    end;
end;


function Tflte.mostralistatrocadevolucaos(pModulo: string; pFiltro: string): string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
begin
  Result := '';
  pack := LoadPackage('modulos\' + pModulo + '.bpl');
  if pack <> 0 then
    try
      @ExecForm := GetProcAddress(pack, PChar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(application, pack, ZCone, Acesso, pFiltro);
        Result := ExecForm(vlCargaFrame);
        vpMdtChave := Result;
      end;
    finally
      // DoUnLoadPackage(application,pack);
    end;
end;

function Tflte.mostralistacreditos(modulo: string; vusuario: string; vfiltro: string; vmodo: string; vtnccodigo: string; vrcrcodigo: string): string;
var
  execf: TFormuSelecionaCreditos;

  ch: string;
  vu: string;
begin
  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @execf := GetProcAddress(pack, PChar('FormuSelecionaCreditos'));
      if Assigned(execf) then
      begin
        vu := vusuario;
        ch := execf(application, Self.ZCone, vu, 1, '', vfiltro, vmodo, vtnccodigo, vrcrcodigo, tmpmdaCredito.AsString, lteltechave.AsString);
        Result := ch;
      end;
    finally
      if modulo <> 'mpeg' then
        // DoUnLoadPackage(Application, pack);
    end;
end;

function Tflte.registracartoes(vchave: string; vvalor: string): string;
var
  registra: TRegistraCartoes;
  vorcchave: string;
  vConfiguracoesTEF: TConfiguracoesTEF;
  registraTEF: TRegistraCartoesTEF;
  vlRdc: tuniquery;
  vlEfetuaTEF: boolean;
begin
  cfg.Close;
  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if flte.cfgcfgctacodigopix.AsInteger = 0 then
  begin
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
    flte.consulta.Open;
    if not flte.consulta.IsEmpty then
    begin
      flte.cfg.Edit;
      flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
      flte.cfg.Post;
    end
    else
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
        flte.cfg.Post;
      end;

    end;

    flte.cfg.Close;
    flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

  end;

  if (Self.cfgcfgusaadc.AsInteger = 2) then
  begin

    pack := LoadPackage('modulos\mrdc.bpl');
    if pack <> 0 then
      try

        vConfiguracoesTEF := CarregaConfiguracoesTEF(vConfiguracoesTEF);
        if vConfiguracoesTEF.NumeroTerminalTEF <> '' then
        begin
          vlEfetuaTEF := True;
          if vpMesChave <> '' then
          begin

            vlRdc := tuniquery.Create(application);
            vlRdc.Connection := ZCone;

            vlRdc.SQL.Text := 'SELECT DISTINCT ';
            vlRdc.SQL.Add(' rdc.rdccomprovante1via,');
            vlRdc.SQL.Add('   rdc.rdccomprovante2via');
            vlRdc.SQL.Add(' FROM dtl,');
            vlRdc.SQL.Add('      mda,');
            vlRdc.SQL.Add('      mlt,');
            vlRdc.SQL.Add('      mfi,');
            vlRdc.SQL.Add('      rfm,');
            vlRdc.SQL.Add('      mes,');
            vlRdc.SQL.Add('      ltr,');
            vlRdc.SQL.Add('      rdc,');
            vlRdc.SQL.Add('      mor ');
            vlRdc.SQL.Add(' WHERE dtl.mdacodigo = mda.mdacodigo');
            vlRdc.SQL.Add(' AND dtl.dtlchave = ltr.dtlchave');
            vlRdc.SQL.Add(' AND ltr.rdcchave = rdc.rdcchave');
            vlRdc.SQL.Add(' AND mlt.ltechave = dtl.ltechave');
            vlRdc.SQL.Add(' AND mlt.mfichave = mfi.mfichave');
            vlRdc.SQL.Add(' AND mfi.rfichave = rfm.rfichave');
            vlRdc.SQL.Add(' AND rfm.meschave = mes.meschave');
            vlRdc.SQL.Add(' AND mes.meschave = mor.meschave');
            vlRdc.SQL.Add(' AND mor.meschave = ' + vpMesChave);
            vlRdc.SQL.Add(' AND mfi.mfivalor <> 0');
            vlRdc.SQL.Add(' GROUP BY dtl.mdacodigo');
            vlRdc.Open;
            if vlRdc.FieldByName('rdccomprovante1via').AsString <> '' then
            begin
              vlEfetuaTEF := false;
            end;

          end;

          if vlEfetuaTEF then
          begin
            @registraTEF := GetProcAddress(pack, PChar('RegistraCartoesTEF'));

            if Assigned(registra) then
            begin
              vOperacaoTEF.Valor := vvalor.ToExtended;
              vOperacaoTEF.Modalidade := '02';
              vOperacaoTEF.Identificacao := vchave;
              vOperacaoTEF.QuantidadeParcela := '1';
              vOperacaoTEF.QuantidadeParcela := '1';
              // DmPedido.QryPedidoParcelacond_pagto_QTD_PARCELA.AsString;
              vOperacaoTEF.TipoFinanciador := '0'; // parcelado a vista
              vOperacaoTEF.TipoCartao := '0'; // Cartão chipado

              case vpTeclaFinalizador of
                114:
                  begin
                    vOperacaoTEF.TipoOperacao := '1';
                  end;

                115:
                  begin
                    vOperacaoTEF.TipoOperacao := '0';

                  end;
              end;

              Result := registraTEF(application, ZCone, vvalor, vchave, vOperacaoTEF)
            end;
          end
          else
            Result := vOperacaoTEF.Valor.ToString;

        end
        else
        begin

          @registra := GetProcAddress(pack, PChar('RegistraCartoes'));

          if Assigned(registra) then
            Result := registra(application, ZCone, vvalor, vchave);

        end;

      finally
        // DoUnLoadPackage(pack);
      end;

  end;
end;

function Tflte.registraconvenio(vmeschave: string; vvalor: string; vafaturar: boolean = false): string;
var
  registra: TRegistraConvenio;
  vorcchave: string;
begin
  if VpTfdCodigo = tfdRenegociacao then
    Exit;


  pack := LoadPackage('modulos\mdfc.bpl');
  if pack <> 0 then
    try

      if vpValorFinalizador <> 0 then
        @registra := GetProcAddress(pack, PChar('registraconvenioauto'))
      else
        @registra := GetProcAddress(pack, PChar('registraconvenio'));

      if Assigned(registra) then
        Result := registra(application, ZCone, vvalor, vmeschave, lteltechave.AsString, '0', 'Incluindo', Acesso,vmeschave.ToInteger,'' );

    finally
      // DoUnLoadPackage(pack);
    end;
end;

{$ENDREGION}

function Tflte.RegistraCCO(vdtlchave: string; vvalor: Double; vTroco: Double; VpTfdCodigo: Integer; vCtaCodigo: string = '0'; vmdacodigo: Integer = 0;
  vdoacao: Integer = 0): string;
var
  vlRetorno: string;
begin

  cfg.Open;
  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if flte.cfgcfgctacodigopix.AsInteger = 0 then
  begin
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
    flte.consulta.Open;
    if not flte.consulta.IsEmpty then
    begin
      flte.cfg.Edit;
      flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
      flte.cfg.Post;
    end
    else
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
        flte.cfg.Post;
      end;

    end;

    flte.cfg.Close;
    flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

  end;

  cco.Params[1].AsInteger := Acesso.Filial;
  cco.Open;

  if vdtlchave <> '' then
  begin
    (* Identifica Cheque Próprio *)
    consulta.Close;
    consulta.SQL.Text := 'SELECT  tch.ctacodigo,  che.chechave,  che.chevalor, che.chevencimento, che.chenumero FROM ltc ';
    consulta.SQL.Add('INNER JOIN che ON ltc.chechave = che.chechave ');
    consulta.SQL.Add('INNER JOIN tch ON tch.tchcodigo = che.tchcodigo ');
    consulta.SQL.Add('WHERE ltc.dtlchave = ' + vdtlchave + ' ');
    consulta.Open;

    consulta.First;

    cco.Close;
    cco.Params[0].AsInteger := consulta.Fields[0].AsInteger;
    cco.Params[1].AsInteger := Acesso.Filial;
    cco.Open;

    while not consulta.Eof do
    begin
      cco.Append;
      ccoctacodigo.AsInteger := consulta.Fields[0].AsInteger;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := cedDebito;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := tfiCheque;
      ccoccoemissao.AsFloat := DataAtual;
      ccoccovencimento.AsFloat := consulta.Fields[3].AsFloat;
      ccocconumero.AsString := 'Ch.Nr.: ' + consulta.Fields[4].AsString;

      ccoccohistorico.AsString := 'Cheque Emitido';

      ccoccovalor.AsFloat := consulta.Fields[2].AsFloat;
      ccoetdcodigo.AsInteger := 0;
      ccoccofavorecido.AsString := '';
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := DataAtual;
      ccoccohoraregistro.AsFloat := HoraAtual;
      ccoccoconciliado.AsInteger := senNao;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      ccoflacodigo.AsInteger := Acesso.Filial;

      if vmdacodigo = mdaPIX then
      begin
        if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
        begin
          ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
        end;
      end;

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
      cltdtlchave.asstring :=vdtlchave;
      clt.Post;

      IdentificarBaixa(Self.lteltechave.AsString);

      consulta.Next;
    end;

    consulta.Close;

    if (vTroco > 0) and (vCtaCodigo <> '0') then
    begin
      cco.Append;
      if vCtaCodigo <> '0' then
        ccoctacodigo.AsString := vCtaCodigo
      else
        ccoctacodigo.AsString := Self.vpCtaTerminal;

      ccotoccodigo.AsInteger := tocNormal;
      ccocedcodigo.AsInteger := cedDebito;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := tfiOutros;
      ccoccoemissao.AsFloat := DataAtual;
      ccoccovencimento.AsFloat := DataAtual;
      ccocconumero.AsString := '';
      ccoccohistorico.AsString := '';
      ccoccovalor.AsFloat := vvalor;
      ccoetdcodigo.AsInteger := 0;
      ccoccofavorecido.AsString := '';
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := DataAtual;
      ccoccohoraregistro.AsFloat := HoraAtual;
      ccoccoconciliado.AsInteger := senNao;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      Self.ccoccochaveorig.AsString := vpCcoChave;
      ccoflacodigo.AsInteger := Acesso.Filial;
      if vmdacodigo = mdaPIX then
      begin
        if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
        begin
          ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
        end;
      end;

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
      cltdtlchave.asstring :=vdtlchave;
      clt.Post;

      IdentificarBaixa(Self.lteltechave.AsString);
    end
    else if (vTroco = 0) and (vCtaCodigo <> '0') and (vpEtdCodigo <> 0) then
    begin
      { * registro de adiantameto de clientes * }

      cco.Append;
      ccoctacodigo.AsString := vCtaCodigo;
      if vpTncCodigo = '1' then
      begin
        ccotoccodigo.AsInteger := tocCredito;
        ccocedcodigo.AsInteger := cedCredito;
      end
      else
      begin
        ccotoccodigo.AsInteger := tocVerba;
        ccocedcodigo.AsInteger := cedDebito;
      end;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := tfiOutros;
      ccoccoemissao.AsFloat := DataAtual;
      ccoccovencimento.AsFloat := DataAtual;

      ccocconumero.AsString := '';

      ccoccohistorico.AsString := 'Crédito - Adiantamento de Cliente';
      ccoccovalor.AsFloat := vvalor;
      ccoetdcodigo.AsInteger := vpEtdCodigo;

      consulta.Close;
      consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + IntToStr(vpEtdCodigo);
      consulta.Open;

      ccoccofavorecido.AsString := consulta.Fields[0].AsString;
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccodatamov.AsFloat := Self.cfgctadtmovi.AsFloat;
      ccoccodataregistro.AsFloat := DataAtual;
      ccoccohoraregistro.AsFloat := HoraAtual;
      ccoccoconciliado.AsInteger := senNao;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      Self.ccoccochaveorig.AsString := vpCcoChave;
      ccoflacodigo.AsInteger := Acesso.Filial;
      if vmdacodigo = mdaPIX then
      begin
        if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
        begin
          ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
        end;
      end;

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
      cltdtlchave.asstring :=vdtlchave;
      clt.Post;

    end;
  end
  else
  begin
    if vvalor = 0 then
    begin
      if vdoacao = 1 then
      begin

        ltetr.Open;
        ltetr.Append;
        ltetrtfdcodigo.AsInteger := VpTfdCodigo;
        ltetrltedata.AsFloat := DataAtual;
        ltetrlteprincipal.AsFloat := vTroco;
        ltetrltejuros.AsFloat := 0;
        ltetrltemulta.AsFloat := 0;
        ltetrltedesconto.AsFloat := 0;
        ltetrltetotal.AsFloat := vTroco;
        ltetrflacodigo.AsInteger := Acesso.Filial;
        ltetr.Post;

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
        ccocedcodigo.AsInteger := cedCredito;

        ccoclbcodigo.AsInteger := Acesso.Usuario;
        ccotficodigo.AsInteger := tfiOutros;
        ccoccoemissao.AsFloat := DataAtual;
        ccoccovencimento.AsFloat := DataAtual;
        ccocconumero.AsString := '';

        if not tfd.Active then
          tfd.Open;

        if tfd.Locate('tfdcodigo', VpTfdCodigo, []) then
        begin
          ccoccohistorico.AsString := 'Troco ' + Self.tfdtfdidentificacao.AsString;
        end;

        if VpTfdCodigo = tfdVenda then
        begin
          if vdoacao = 1 then
            ccoccohistorico.AsString := 'Doação Venda Nr.: ' + mesmeschave.AsString
          else
            ccoccohistorico.AsString := 'Troco Venda Nr.: ' + mesmeschave.AsString;
        end;

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
        ccoccodataregistro.AsFloat := DataAtual;
        ccoccohoraregistro.AsFloat := HoraAtual;
        ccoccoconciliado.AsInteger := senSim;
        ccomoecodigo.AsInteger := 1;
        ACBrExtenso.Valor := ccoccovalor.AsFloat;
        ccoccoextenso.AsString := ACBrExtenso.Texto;
        ccoflacodigo.AsInteger := Acesso.Filial;
        if vmdacodigo = mdaPIX then
        begin
          if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
          begin
            ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
          end;
        end;

        cco.Post;
        vpCcoChave := ccoccochave.AsString;
        dtltr.Close;
        dtltr.Open;
        dtltr.Append;
        dtltrltechave.AsInteger := ltetrltechave.AsInteger;
        dtltrcedcodigo.AsInteger := cedDebito;
        dtltrdtlvalor.AsFloat := ccoccovalor.AsFloat;
        dtltrmdacodigo.AsInteger := mdaDoacao;
        dtltrflacodigo.AsInteger := Acesso.Filial;
        dtltr.Post;

        vlRetorno := Self.ccoccochave.AsString;
        vpCcoChave := Self.ccoccochave.AsString;
        clt.Close;
        clt.Params[0].AsString := vpCcoChave;
        clt.Params[1].AsInteger := ltetrltechave.AsInteger;
        clt.Open;

        if clt.IsEmpty then
          clt.Append
        else
          clt.Edit;

        cltccochave.AsString := Self.vpCcoChave;
        cltltechave.AsInteger := ltetrltechave.AsInteger;
        cltdtlchave.asstring :=dtltrdtlchave.AsString;
        clt.Post;

        if vmdacodigo = mdaTrocoChequeTerceiros then
        begin
          dtl.First;
          while not dtl.Eof do
          begin

            if (dtlmdacodigo.AsInteger = mdaTrocoChequeTerceiros) and (dtlcedcodigo.AsInteger = 0) then
            begin
              consulta.Close;
              consulta.SQL.Text := 'update ltc set dtlchave=' + dtltrdtlchave.AsString + ' where dtlchave=' + dtldtlchave.AsString;
              consulta.ExecSQL;

            end;

            dtl.Next;
          end;

        end;

        IdentificarBaixa(Self.lteltechave.AsString);

      end;
      if vTroco > 0 then
      begin
        ltetr.Open;
        ltetr.Append;
        ltetrtfdcodigo.AsInteger := VpTfdCodigo;
        ltetrltedata.AsFloat := DataAtual;
        ltetrlteprincipal.AsFloat := vTroco;
        ltetrltejuros.AsFloat := 0;
        ltetrltemulta.AsFloat := 0;
        ltetrltedesconto.AsFloat := 0;
        ltetrltetotal.AsFloat := vTroco;
        ltetrflacodigo.AsInteger := Acesso.Filial;

        ltetr.Post;

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

        ccoclbcodigo.AsInteger := Acesso.Usuario;
        ccotficodigo.AsInteger := tfiOutros;
        ccoccoemissao.AsFloat := DataAtual;
        ccoccovencimento.AsFloat := DataAtual;
        ccocconumero.AsString := '';

        if not tfd.Active then
          tfd.Open;

        if tfd.Locate('tfdcodigo', VpTfdCodigo, []) then
        begin
          ccoccohistorico.AsString := 'Troco ' + Self.tfdtfdidentificacao.AsString;
        end;

        if VpTfdCodigo = tfdVenda then
        begin
          if vdoacao = 1 then
            ccoccohistorico.AsString := 'Doação Venda Nr.: ' + mesmeschave.AsString
          else
            ccoccohistorico.AsString := 'Troco Venda Nr.: ' + mesmeschave.AsString;
        end;

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
        ccoccodataregistro.AsFloat := DataAtual;
        ccoccohoraregistro.AsFloat := HoraAtual;
        ccoccoconciliado.AsInteger := senNao;
        ccomoecodigo.AsInteger := 1;
        ACBrExtenso.Valor := ccoccovalor.AsFloat;
        ccoccoextenso.AsString := ACBrExtenso.Texto;
        ccoflacodigo.AsInteger := Acesso.Filial;
        if vmdacodigo = mdaPIX then
        begin
          if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
          begin
            ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
          end;
        end;

        cco.Post;
        vpCcoChave := ccoccochave.AsString;

        if vmdacodigo <> 0 then
        begin
          dtltr.Close;
          dtltr.Open;
          dtltr.Append;
          dtltrltechave.AsInteger := ltetrltechave.AsInteger;
          dtltrcedcodigo.AsInteger := cedDebito;
          dtltrdtlvalor.AsFloat := ccoccovalor.AsFloat;
          dtltrmdacodigo.AsInteger := vmdacodigo;
          dtltrflacodigo.AsInteger := Acesso.Filial;
          dtltr.Post;
        end;

        vlRetorno := Self.ccoccochave.AsString;
        vpCcoChave := Self.ccoccochave.AsString;
        clt.Close;
        clt.Params[0].AsString := vpCcoChave;
        clt.Params[1].AsInteger := ltetrltechave.AsInteger;
        clt.Open;

        if clt.IsEmpty then
          clt.Append
        else
          clt.Edit;

        cltccochave.AsString := Self.vpCcoChave;
        cltltechave.AsInteger := ltetrltechave.AsInteger;
        cltdtlchave.asstring :=dtltrdtlchave.AsString;
        clt.Post;

        if vmdacodigo = mdaTrocoChequeTerceiros then
        begin
          dtl.First;
          while not dtl.Eof do
          begin

            if (dtlmdacodigo.AsInteger = mdaTrocoChequeTerceiros) and (dtlcedcodigo.AsInteger = 0) then
            begin
              consulta.Close;
              consulta.SQL.Text := 'update ltc set dtlchave=' + dtltrdtlchave.AsString + ' where dtlchave=' + dtldtlchave.AsString;
              consulta.ExecSQL;

            end;

            dtl.Next;
          end;

        end;

        IdentificarBaixa(Self.lteltechave.AsString);
      end;
    end
    else
    begin
      if mesmeschave.AsString<>'' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select ccochave from cco where ccohistorico=' + QuotedStr('Venda Nr.: ' + mesmeschave.AsString);
        consulta.Open;

        if not consulta.IsEmpty then
          Exit;

      end;
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
      if (VpTfdCodigo = tfdPagamentos) then
      begin
        ccocedcodigo.AsInteger := cedDebito;
      end
      else
      begin
        if vmdacodigo = mdaTrocoChequeProprio then
          ccocedcodigo.AsInteger := cedDebito
        else
          ccocedcodigo.AsInteger := cedCredito;
      end;

      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := tfiOutros;
      ccoccoemissao.AsFloat := DataAtual;
      ccoccovencimento.AsFloat := DataAtual;
      ccocconumero.AsString := '';

      if not tfd.Active then
        tfd.Open;

      if tfd.Locate('tfdcodigo', VpTfdCodigo, []) then
        ccoccohistorico.AsString := Self.tfdtfdidentificacao.AsString;

      if VpTfdCodigo = tfdVenda then
        ccoccohistorico.AsString := 'Venda Nr.: ' + mesmeschave.AsString;

      ccoccovalor.AsFloat := vvalor { - vTroco };
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
      ccoccodataregistro.AsFloat := DataAtual;
      ccoccohoraregistro.AsFloat := HoraAtual;
      ccoccoconciliado.AsInteger := senNao;
      ccomoecodigo.AsInteger := 1;
      ACBrExtenso.Valor := ccoccovalor.AsFloat;
      ccoccoextenso.AsString := ACBrExtenso.Texto;
      ccoflacodigo.AsInteger := Acesso.Filial;

      consulta.Close;
      if vdtlchave <> '' then
      begin

        consulta.SQL.Text := 'SELECT  ctacodigo FROM clt,  dtl,     ltc,     che,     cco ';
        consulta.SQL.Add(' WHERE clt.ccochave = cco.ccochave AND che.chechave = ltc.chechave ');
        consulta.SQL.Add('AND dtl.dtlchave = ltc.dtlchave ');
        consulta.SQL.Add('AND dtl.ltechave = clt.ltechave ');
        consulta.SQL.Add('AND dtl.cedcodigo = 0 ');
        consulta.SQL.Add('AND clt.ltechave = ' + Self.lteltechave.AsString);
        consulta.SQL.Add('GROUP BY ctacodigo');
        consulta.Open;
      end;

      if consulta.Active then
        if not consulta.IsEmpty then
        begin
          if vdtlchave <> '' then
          begin
            ccoctacodigo.AsString := consulta.FieldByName('ctacodigo').AsString;
          end;
        end;
      consulta.Close;
      if vmdacodigo = mdaTrocoChequeProprio then
      begin

        consulta.SQL.Text := ' SELECT distinct tch.ctacodigo FROM che, tch, clt, ltc ,cco, dtl ';
        consulta.SQL.Add(' WHERE che.tchcodigo=tch.tchcodigo ');
        consulta.SQL.Add(' AND clt.ccochave = cco.ccochave AND che.chechave = ltc.chechave ');
        consulta.SQL.Add(' AND dtl.dtlchave = ltc.dtlchave ');
        consulta.SQL.Add(' AND dtl.ltechave = clt.ltechave ');
        consulta.SQL.Add(' AND clt.ltechave = ' + Self.lteltechave.AsString);
        consulta.Open;
        ccocedcodigo.AsInteger := 0;
        if not consulta.IsEmpty then
          ccoctacodigo.AsString := consulta.FieldByName('ctacodigo').AsString;

      end;

      if vmdacodigo = mdaPIX then
      begin
        if (cfgcfgctacodigopix.AsString <> '') and (cfgcfgctacodigopix.AsString <> '0') then
        begin
          ccoctacodigo.AsInteger := cfgcfgctacodigopix.AsInteger;
        end;
      end;

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
      cltdtlchave.asstring := vdtlchave;
      clt.Post;
    end;
  end;
  Result := vlRetorno;
end;

procedure Tflte.VendaAVistas(vtotrfichtr: Double; vtotrfiditr: Double; vtotrfiav: Double; vtotrfichpr: Double);
var
  vtitcodigo: Integer;
begin
  cfg.Close;
  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if flte.cfgcfgctacodigopix.AsInteger = 0 then
  begin
    flte.consulta.Close;
    flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
    flte.consulta.Open;
    if not flte.consulta.IsEmpty then
    begin
      flte.cfg.Edit;
      flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
      flte.cfg.Post;
    end
    else
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
        flte.cfg.Post;
      end;

    end;

    flte.cfg.Close;
    flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
    flte.cfg.Open;

  end;

  if (vpCcoChave = '0') or (vpCcoChave = '') then
  begin
    mes.Close;
    mes.Params[0].AsString := Self.vchave;
    mes.Params[1].AsInteger := Acesso.Filial;
    mes.Open;
  end;

  vtitcodigo := AjustaTit('', Self.mesetdcodigo.AsInteger, 'Venda a Vista ' + mesmeschave.AsString, vtotrfiav - (vtotrfiditr + vtotrfichtr),
    DataAtual, DataAtual, tfdVenda, tfiOutros, '', vtotrfiav - (vtotrfiditr + vtotrfichtr { + vtotrfichpr } ), 1, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

  qryveri.Close;
  qryveri.SQL.Text := 'select rfichave from rfi where  ' + 'rfinumero=' + QuotedStr('Venda a Vista ' + mesmeschave.AsString) + ' and etdcodigo=' +
    IntToStr(Self.mesetdcodigo.AsInteger) + ' and rfivencimento=' + QuotedStr(ajustadata(datetostr(DataAtual))) + ' and rfiemissao=' +
    QuotedStr(ajustadata(datetostr(DataAtual))) + ' and rfivalor=' + BuscaTroca(FloatToStr(vtotrfiav - (vtotrfiditr + vtotrfichtr)), ',', '.');
  qryveri.Open;

  if not qryveri.IsEmpty then
  begin

    Exit;
  end;

  rfi.Open;
  rfi.Append;
  rfietdcodigo.AsInteger := Self.mesetdcodigo.AsInteger;
  rfitfdcodigo.AsInteger := VpTfdCodigo;
  rfiflacodigo.AsInteger := Acesso.Filial;
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
  rfmflacodigo.AsInteger := Acesso.Filial;
  rfm.Post;

  // registro
  mfi.Open;
  mfi.Append;
  mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfAReceber;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsFloat := rfirfivalor.AsFloat;
  mfimfidata.AsFloat := DataAtual;
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
  mfimfiparcela.AsInteger := 0;
  mfiflacodigo.AsInteger := Acesso.Filial;
  mfi.Post;

  // quitacao
  mfi.Open;
  mfi.Append;
  mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfRecebimento;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsFloat := rfirfivalor.AsFloat;
  mfimfidata.AsFloat := DataAtual;
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
  mfimfiparcela.AsInteger := 0;
  mfiflacodigo.AsInteger := Acesso.Filial;
  mfi.Post;

  mlt.Open;
  mlt.Append;
  mltmfichave.AsInteger := Self.mfimfichave.AsInteger;
  mltltechave.AsInteger := Self.lteltechave.AsInteger;
  mltflacodigo.AsInteger := Acesso.Filial;
  mlt.Post;

  consulta.Close;
  consulta.SQL.Text := 'select CalcMovimentoFinanceiro(:rfichave)';
  consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'select CalcRegistroFinanceiro(:rfichave)';
  consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
  consulta.ExecSQL;

end;

procedure Tflte.ajustaaltura;
var
  i: Integer;
  valtura: Integer;
  valturatroco: Integer;
  vnomepanel: string;
begin
  valtura := 0;
  valturatroco := 0;

  // ajusta a altura dos trocos primeiro
  if plmdatroco11.Visible then
    valturatroco := valturatroco + plmdatroco11.Height;

  if plmdatroco22.Visible then
    valturatroco := valturatroco + plmdatroco22.Height;

  if plmdatroco33.Visible then
    valturatroco := valturatroco + plmdatroco33.Height;

  if plmdatroco77.Visible then
    valturatroco := valturatroco + plmdatroco77.Height;

  plTrocos.Height := valturatroco + 30;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      valtura := valtura + (Self.Components[i] as TPanel).Height;

  // Self.Height := valtura + 5;

  valturatroco := valtura + 5; // Self.Height;

  valtura := 0;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      if (Self.Components[i] as TPanel).Visible then
        if (Self.Components[i] as TPanel).Parent = Self then
        begin
          valtura := valtura + (Self.Components[i] as TPanel).Height;
          vnomepanel := (Self.Components[i] as TPanel).Name;
        end;
  plcontroleLimite.Visible := false;

  Self.Height := valtura + 105;
  if plconvenio.Visible then
  begin
    if cfgcfgcontrolalimite.AsInteger = 1 then
    begin
      if vpEtdCodigo <> 0 then
      begin
        plcontroleLimite.Visible := True;
        CarregalimiteCliente(vpEtdCodigo);
      end;
    end
    else
    begin
      ets.Close;
      ets.ParamByName('etdcodigo').AsInteger := vpEtdCodigo;
      ets.Open;

      if not ets.IsEmpty then
      begin
        if etstsecodigo.AsInteger = 1 then
        begin
          plcontroleLimite.Visible := True;
          pllimitedisponivel.Visible := True;
          pllimitedisponivel.Caption := etstseidentificacao.AsString;
          pllimitedisponivel.Font.Color := clred;
          application.ProcessMessages;

        end;
      end;
    end;

  end;

  if ((vpTotCreditos - edmdaCredito.Field.AsCurrency) > 0) and (edmdaCredito.Field.AsCurrency <> 0) then
  begin
    plContraVale.Visible := True;
    plValorContraVale.Caption := FormatFloat('##,###,##0.00', vpTotCreditos - edmdaCredito.Field.AsCurrency);
  end
  else
  begin
    plContraVale.Visible := false;
    plValorContraVale.Caption := '0,00';

  end;

end;

procedure Tflte.definirconexao;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is tuniquery then
      (Self.Components[i] as tuniquery).Connection := ZCone;
end;

procedure Tflte.dtlBeforePost(DataSet: TDataSet);
begin

  if dtlmdacodigo.AsInteger = 0 then
    DataSet.Cancel;

end;

procedure Tflte.IniciaProcesso;
var
  vLteChave: string;
begin

  vretornoap := '';
  vretornoch := '';
  vretornocc := '';
  vRetorno := '';

  vLteChave := '';

  definirconexao;

  if (vpCcoChave <> '') and (vpCcoChave <> '0') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select ltechave,toccodigo from clt,cco where clt.ccochave=cco.ccochave and clt.ccochave=' + vpCcoChave;
    consulta.Open;
    if (consulta.Fields[0].AsString <> '') and (consulta.Fields[0].AsString <> '0') then
    begin
      vLteChave := consulta.Fields[0].AsString;
    end
    else
    begin
      vLteChave := '0';
    end;
  end
  else
  begin
    if (VpTfdCodigo in [tfdRecebimentos, tfdPagamentos, tfdContaCorrente, tfdTesouraria, tfdRenegociacao, tfdCredito, tfdVerba]) then
    begin

      vLteChave := vchave;
    end
    else
    begin
      if vchave <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT  mlt.ltechave FROM rfm ';
        consulta.SQL.Add('INNER JOIN mfi  ON rfm.rfichave = mfi.rfichave ');
        consulta.SQL.Add('INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
        consulta.SQL.Add('WHERE rfm.meschave=' + vchave);
        consulta.Open;
        vLteChave := consulta.Fields[0].AsString;

        if vLteChave <> '' then
        begin

          consulta.Close;
          consulta.SQL.Text := 'SELECT  mdacodigo, dtlvalor from dtl ';
          consulta.SQL.Add('WHERE dtl.ltechave=' + vLteChave);
          consulta.Open;

          vpMdaAnterior := TStringList.Create;
          vpMdaAnterior.Clear;
          consulta.First;
          while not consulta.Eof do
          begin
            vpMdaAnterior.Add(consulta.FieldByName('mdacodigo').AsString + '_' + consulta.FieldByName('dtlvalor').AsString);

            consulta.Next;
          end;

        end;
      end;
    end;
  end;

  consulta.Close;
  consulta.SQL.Text := 'select ctacodigo from ctr where trmcodigo=' + Acesso.Terminal.ToString;
  consulta.Open;
  if not consulta.IsEmpty then
    vpCtaTerminal := Self.consulta.Fields[0].AsString
  else
  begin
    cfg.Close;
    cfg.Params[0].AsInteger := Acesso.Filial;
    cfg.Open;

    if flte.cfgcfgctacodigopix.AsInteger = 0 then
    begin
      flte.consulta.Close;
      flte.consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
      flte.consulta.Open;
      if not flte.consulta.IsEmpty then
      begin
        flte.cfg.Edit;
        flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('ctacodigo').AsInteger;
        flte.cfg.Post;
      end
      else
      begin
        flte.consulta.Close;
        flte.consulta.SQL.Text := 'select cfgctacaixa from cfg';
        flte.consulta.Open;
        if not flte.consulta.IsEmpty then
        begin
          flte.cfg.Edit;
          flte.cfgcfgctacodigopix.AsInteger := flte.consulta.FieldByName('cfgctacaixa').AsInteger;
          flte.cfg.Post;
        end;

      end;

      flte.cfg.Close;
      flte.cfg.ParamByName('flacodigo').AsInteger := flte.Acesso.Filial;
      flte.cfg.Open;

    end;

    vpCtaTerminal := Self.cfgcfgctacaixa.AsString;
  end;

  lte.Close;
  if vLteChave <> '' then
  begin
    lte.SQL.Text :=
      'SELECT ltechave, tfdcodigo, ltedata, lteprincipal, ltemulta, ltejuros, ltedesconto, ltetotal, lteextenso, clbcodigo, ctacodigo, ltetroco,flacodigo, ccxchave ';
    lte.SQL.Add('FROM lte WHERE ltechave = ' + vLteChave);
  end;
  lte.Open;


  if (vLteChave = '') or (vLteChave = '0') or ( flte.VpComplemento) then
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
  lteltedata.AsFloat := DataAtual;
  ltelteprincipal.AsString := BuscaTroca(Self.vlteprincipal, '.', ',');
  lteltejuros.AsString := BuscaTroca(Self.vltejuros, '.', ',');
  lteltemulta.AsString := BuscaTroca(Self.vltemulta, '.', ',');
  lteltedesconto.AsString := BuscaTroca(Self.vltedesconto, '.', ',');
  lteltetotal.AsFloat := ltelteprincipal.AsFloat - lteltedesconto.AsFloat + lteltemulta.AsFloat + lteltejuros.AsFloat;
  lteflacodigo.AsInteger := Acesso.Filial;

  if (flte.VpTfdCodigo = tfdContaCorrente) then
    lteccxchave.AsInteger := 0
  else
    lteccxchave.AsInteger := vpCcxchave;

  if vpCtaUtilizada = 0 then
  begin
    ltectacodigo.AsString := '';
  end
  else
  begin

    ltectacodigo.AsInteger := vpCtaUtilizada;
  end;

  if (ContaCaixa > 0) and (VpTfdCodigo = tfdRecebimentos) then
  begin
    ltectacodigo.AsInteger := ContaCaixa
  end;

  lte.Post;

  vLteChave := Self.lteltechave.AsString;
  vpLteMcgchave := vLteChave;

  if (vpCcoChave <> '') and (vpCcoChave <> '0') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo from cco where ccochave=' + vpCcoChave;
    consulta.Open;

    vpEtdCodigo := consulta.Fields[0].AsInteger;
    consulta.Close;

    let.Close;
    let.SQL.Text := 'SELECT let.letchave, v_rcr.ltechave, v_rcr.etdcodigo,v_rcr.tnccodigo FROM let,v_rcr  ';
    let.SQL.Add('where  v_rcr.etdcodigo=let.etdcodigo and v_rcr.ltechave=let.ltechave and v_rcr.rcrsaldo>0 ');
    let.SQL.Add('and v_rcr.etdcodigo=' + IntToStr(vpEtdCodigo));
    let.Open;

    vlet.Close;
    vlet.Params[0].AsString := lteltechave.AsString;
    vlet.Params[1].AsInteger := vpEtdCodigo;
    vlet.Open;

    if not vlet.Locate('etdcodigo;ltechave', VarArrayOf([vpEtdCodigo, lteltechave.AsInteger]), []) then
    begin
      if vpEtdCodigo <> 0 then
      begin
        vlet.Append;
        vletltechave.AsInteger := lteltechave.AsInteger;
        vletetdcodigo.AsInteger := vpEtdCodigo;
        vlet.Post;
      end;
    end;

  end
  else
  begin
    if (VpTfdCodigo = tfdRecebimentos) or (VpTfdCodigo = tfdVenda) then
    begin
      if vpEtdCodigo <> 0 then
      begin
        let.Close;
        let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,1 as tnccodigo FROM let  ';
        let.SQL.Add('where ');
        let.SQL.Add('let.etdcodigo=' + IntToStr(vpEtdCodigo));
        let.Open;
      end;

    end
    else
    begin
      let.Close;
      let.SQL.Text := 'SELECT let.letchave, let.ltechave, let.etdcodigo,2 as tnccodigo FROM let  ';
      let.SQL.Add('where ');
      let.SQL.Add('let.etdcodigo=' + IntToStr(vpEtdCodigo));
      let.Open;

    end;

    vlet.Close;
    vlet.Params[0].AsString := lteltechave.AsString;
    vlet.Params[1].AsInteger := vpEtdCodigo;
    vlet.Open;

    if not vlet.Locate('etdcodigo;ltechave', VarArrayOf([vpEtdCodigo, lteltechave.AsInteger]), []) then
    begin
      if vpEtdCodigo <> 0 then
      begin
        vlet.Append;
        vletltechave.AsInteger := lteltechave.AsInteger;
        vletetdcodigo.AsInteger := vpEtdCodigo;
        vlet.Post;
      end;
    end;
  end;

  lte.Close;
  lte.SQL.Text :=
    'SELECT ltechave, tfdcodigo, ltedata, lteprincipal, ltemulta, ltejuros, ltedesconto, ltetotal, lteextenso, clbcodigo, ctacodigo, ltetroco,flacodigo,ccxchave ';
  lte.SQL.Add('FROM lte WHERE ltechave = ' + vLteChave);
  lte.Open;

  dtl.Close;
  dtl.Params[0].AsInteger := Self.lteltechave.AsInteger;
  dtl.Params[1].AsInteger := Acesso.Filial;
  dtl.Open;

  if ((lteprincipal.Field.AsFloat + ltemulta.Field.AsFloat + ltejuros.Field.AsFloat) > 0) then
  begin
    PlValor.Visible := True;
    lteprincipal.Visible := True;
    vTipoControle := 1;
  end
  else
  begin
    PlValor.Visible := false;
    lteprincipal.Visible := false;
    vTipoControle := 0;
  end;

  ajustapaineis;

  (* Verifica não é finalizador de PDV e chama o Show da tela *)

  if (vpValorFinalizador = 0) and (StrToFloat(flte.vltedesconto) < flte.ltelteprincipal.AsFloat) then
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
      119:
        begin
          edmdaPix.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaPix);
        end;

      120:
        begin
          edmdaConvenio.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaConvenio);
        end;

      121:
        begin
          edmdaAFaturar.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaAFaturar);
        end;

      122:
        begin
          edmdaOnLine.Field.AsFloat := vpValorFinalizador;
          aosair(edmdaOnLine);
        end;


    end;

    (* Identifica se tem DIFERENÇA para acertar e da ShowModal *)
    if tmp.FieldByName('troco').AsCurrency > 0.01 then
    begin
      if not Self.Visible then
      begin
        Self.ShowModal;
        Exit;
      end;
    end;
  end;
end;

procedure Tflte.IdentificarBaixa(vLteChave: string);
var
  vCcoChave: String;
  vFavorecido: String;
  vHistorico: String;

begin

  cltv.Close;
  cltv.SQL.Text := 'select ccochave from clt where ltechave=' + vLteChave;
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
    IdentificaBaixa.SQL.Add('WHERE mlt.ltechave=' + vLteChave);
    IdentificaBaixa.Open;

    if not IdentificaBaixa.IsEmpty then
    begin
      if vpEtdCodigo = 0 then
      begin
        IdentificaBaixa.Fields[2].AsInteger;
      end;
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
        // ccov.Fields[0].AsString :=IdentificaBaixa.Fields[2].AsString;

        if (ccov.Fields[0].AsString <> '0') and (LowerCase(ccov.Fields[1].AsString) = 'consumidor') then
        begin
          ccov.Fields[1].AsString := IdentificaBaixa.Fields[3].AsString;

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

        ccov.Fields[1].AsString := copy(vFavorecido, 1, Length(vFavorecido) - 1);
        ccov.Fields[2].AsString := copy(vHistorico, 1, Length(vHistorico) - 1);
        ccov.Post;

        ccov.Next;
      end;
    end;
    cltv.Next;
  end;
  ccov.Close;
end;

procedure Tflte.RegistraCCOChequesManual(pCCoChave: String; pDtlChave: String; pSomenteCheque: boolean);
var
  qChe: tuniquery;
  qCCoNovo: tuniquery;
  i: Integer;
  vlCcoChave: String;
begin
  qChe := tuniquery.Create(Self);
  qCCoNovo := tuniquery.Create(Self);

  try
    qCCoNovo.Connection := ZCone;
    qCCoNovo.SQL.Text := cco.SQL.Text;
    qCCoNovo.Open;

    qChe.Connection := ZCone;

    qChe.SQL.Text := 'SELECT tch.ctacodigo, che.chechave, che.chevalor, che.chevencimento, che.chenumero FROM ltc ';
    qChe.SQL.Add('INNER JOIN che ON ltc.chechave = che.chechave ');
    qChe.SQL.Add('INNER JOIN tch ON tch.tchcodigo = che.tchcodigo ');
    qChe.SQL.Add('WHERE ltc.dtlchave = ' + pDtlChave);
    qChe.Open;

    qChe.First;

    clt.Open;
    ccd.Open;

    cco.Close;
    cco.Params[0].AsString := pCCoChave;
    cco.Params[1].AsInteger := Acesso.Filial;
    cco.Open;

    if pSomenteCheque then
    begin
      cco.Edit;
      ccoccovalor.AsFloat := qChe.FieldByName('chevalor').AsFloat;
      ccoccovencimento.AsFloat := qChe.FieldByName('chevencimento').AsFloat;
      ccoflacodigo.AsInteger := Acesso.Filial;
      cco.Post;

      qChe.Next;
    end;

    while not qChe.Eof do
    begin
      qCCoNovo.Append;

      for i := 1 to cco.FieldCount - 1 do
        qCCoNovo.Fields[i].AsString := cco.Fields[i].AsString;

      qCCoNovo.FieldByName('ccovalor').AsFloat := qChe.FieldByName('chevalor').AsFloat;
      qCCoNovo.FieldByName('ccovencimento').AsFloat := qChe.FieldByName('chevencimento').AsFloat;
      qCCoNovo.Post;

      vlCcoChave := qCCoNovo.FieldByName('ccochave').AsString;

      clt.Append;
      cltccochave.AsString := vlCcoChave;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.Post;

      { ccd.Append;
        ccddtlchave.AsString := pDtlChave;
        ccdccochave.AsString := vlCcoChave;
        ccd.Post; }

      qChe.Next;
    end;

  finally
    qChe.Free;
    qCCoNovo.Free;

    clt.Close;
    ccd.Close;
    cco.Close;
  end;
end;

function Tflte.CarregalimiteCliente(vetdcodigo: Integer): Double;
begin
  if cfgcfgcontrolalimite.AsInteger = 1 then
  begin
    limite.Close;
    limite.Params[0].AsInteger := vetdcodigo;
    limite.Open;
    pllimitetotal.Caption := FormatFloat('##,###,##0.00', limiteetllimitetotal.AsFloat);

    vpEtlDescontoPadrao := limiteetldescontopadrao.AsFloat;

    disponivel.Close;
    disponivel.Params[0].AsInteger := vetdcodigo;
    disponivel.Open;
    pllimitedisponivel.Caption := FormatFloat('##,###,##0.00', limiteetllimitetotal.AsFloat - disponivelrfisaldocapital.AsCurrency);

  end;

  ets.Close;
  ets.ParamByName('etdcodigo').AsInteger := vetdcodigo;
  ets.Open;

  if not ets.IsEmpty then
  begin
    if etstsecodigo.AsInteger = 2 then
    begin
      pllimitedisponivel.Caption := etstseidentificacao.AsString;
      pllimitedisponivel.Font.Color := clred;
      application.ProcessMessages;

    end;
  end;

end;

function Tflte.LimiteAutorizado(vetdcodigo: String; vValorVenda: Double; vlLimiteSolic: Double; vlLimiteDisponivel: Double;
  vpOrcChave: Integer): boolean;
var
  auto: TAutorizacaoAtenLimite;
  ru: string;
  vactcodigo: string;
  vlPackLia: Cardinal;
begin
  Result := True;

  application.MessageBox(PChar('Autorização de venda.' + #13 + #13 + 'Limite Disponível: ' + format('%2.2n', [vlLimiteDisponivel]) + #13 +
    'Valor Solicitado: ' + format('%2.2n', [vValorVenda])), 'Atenção', MB_ICONWARNING + MB_OK);

  vlPackLia := LoadPackage('modulos\mlia.bpl');
  if vlPackLia <> 0 then
    try
      @auto := GetProcAddress(vlPackLia, PChar('liberacaoAtenLimiteCred'));

      if not Assigned(auto) then
        Exit;

      ru := auto(application, ZCone, Acesso.Usuario.ToString, vlLimiteSolic, IntToStr(vpOrcChave));

      if (ru = '0') or (ru = '') then // retornou NÃO AUTORIZADO
        Result := false;
    finally
      // DoUnLoadPackage(Application, vlPackLia);
    end;
end;





procedure Tflte.AplicaDescontoGeral;
type
  Tajustadesconto = Function(AOwner: TComponent; Conexao: TUniConnection; vDesconto, vPercentual, vValor, Vbruto, Vtipo, Vusrcodigo, Vpermax: String;
    vtdecodigo: String; vorcchave: String = ''; vmeschave: String = ''): String;

Var
  Ajustadesconto: Tajustadesconto;
  SVlrDesc: String;
  VRetAjuDesc: String;
  // Recebe retorno da função de ajuste do desconto
  VTotProdutos: Double;
  VTotAcrescimos: Double;

  vlPackDes: Cardinal;
Begin

  orc.Close;
  orc.Params[0].AsString := vporcchave;
  orc.Params[1].AsInteger := Acesso.Filial;
  orc.Open;



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
  end;

  VTotProdutos := consulta.Fields[0].AsFloat;

  (* Identifica se já foi dado desconto e avisa usuário que o desc. Geral irá substituir os demais *)
  If ((orcpuocodigo.AsInteger = puoAVista) AND (orcorcdescontoav.AsFloat > 0)) or
    ((orcpuocodigo.AsInteger = puoAPrazo) AND (orcorcdescontoap.AsFloat > 0)) Then

  vlPackDes := LoadPackage('modulos\mdes.bpl');
  If vlPackDes <> 0 Then
    Try

      @Ajustadesconto := GetProcAddress(vlPackDes, PChar('ajustadesconto'));

      If Assigned(Ajustadesconto) Then
      Begin
          VRetAjuDesc := Ajustadesconto(Application, zcone, Floattostr(orcorcdescontoav.AsFloat), '0', Floattostr(VTotProdutos),
            Floattostr(VTotProdutos), 'Geral', Acesso.Usuario.ToString, '100', '1', orcorcchave.AsString);
      End;
    Finally
      DoUnLoadPackage(Application, vlPackDes);
    End;


  If copy(VRetAjuDesc, 1, 2) = '0$' Then
    SVlrDesc := '0'
  else
    SVlrDesc := copy(VRetAjuDesc, 1, pos('$', VRetAjuDesc) - 1);

  If Not(SVlrDesc = '') Then
  begin
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

  end;
  orc.Edit;
  orctdecodigo.AsInteger := tdeTotal;
  orc.Post;

  Recalculatotal;
end;


Procedure Tflte.Recalculatotal;
var
  vlChaveIto: Integer;
  vlBruto: Double;
  vlDesconto: Double;
  vlLiquido: Double;
Begin
  if lito.Active = False then
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


    consulta.Close;

    if lito.Active then
    begin
      lito.Refresh;
      lito.Locate('itochave', vlChaveIto, []);
    end;
  End;

End;




end.
