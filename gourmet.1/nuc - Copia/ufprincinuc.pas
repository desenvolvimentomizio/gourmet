unit ufprincinuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls,
  dbxjson, System.JSON, System.Generics.Collections, MemDS, DBAccess, Uni,
  UniProvider, MySQLUniProvider, Vcl.ComCtrls, System.Math, DASQLMonitor,
  UniSQLMonitor, IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze, inifiles,
  Vcl.Grids, Vcl.DBGrids, Vcl.Themes;

type

  TGroupBox = class(Vcl.StdCtrls.TGroupBox)
    // declare this before of your form definitiondirei
  public
    procedure Paint; override;
  end;

  /// <summary> Record para armazenar os dados de Acesso para compartilhar pelo sistema.</summary>
  TAcesso = record
    IdAcesso: Integer;
    usuario: Integer;
    Filial: Integer;
    Terminal: Integer;
    // Versao: String;
  end;



  // registra pedido  unico
  // ---registra produdos unico
  // -------registros varios
  // -----------conjuntos varios
  // ---------------produtos varios

  TConjuntosProduto = class
  private
    Ftitulo: string;
    Fsku: string;
    Fvalor: string;
    Fquantidade: string;
  protected

  public

    property titulo: string read Ftitulo write Ftitulo;
    property sku: string read Fsku write Fsku;
    property valor: string read Fvalor write Fvalor;
    property quantidade: string read Fquantidade write Fquantidade;
  private
  end;

  TConjuntosProdutos = class
  private
    Ftitulo: string;
    Fsku: string;
    Fvalor: string;
    Fquantidade: string;
    FConjuntosProduto: TObjectList<TConjuntosProduto>;

  protected

  public

    // vpConjuntosProduto: TConjuntosProduto;
    constructor Create;
    property titulo: string read Ftitulo write Ftitulo;
    property sku: string read Fsku write Fsku;
    property valor: string read Fvalor write Fvalor;
    property quantidade: string read Fquantidade write Fquantidade;
    property ListaConjuntosProdutos: TObjectList<TConjuntosProduto> read FConjuntosProduto write FConjuntosProduto;

  end;

  TConjuntos = class
  private
    Ftitulo: string;
    Fsku: string;
    Fvalor: string;
    Fquantidade: string;
    FListaProdutos: TObjectList<TConjuntosProdutos>;
    { private declarations }
  protected
    { protected declarations }
    procedure AdicionarConjuntosProdutos(vJsonConjuntosProdutos: TJSONArray; vConjuntosProdutos: TConjuntosProdutos);
  public
    { public declarations }

    constructor Create;
    property titulo: string read Ftitulo write Ftitulo;
    property sku: string read Fsku write Fsku;
    property valor: string read Fvalor write Fvalor;
    property quantidade: string read Fquantidade write Fquantidade;
    property ListaProdutos: TObjectList<TConjuntosProdutos> read FListaProdutos write FListaProdutos;

    { published declarations }

  end;

  TRegistros = class
  private
    Ftitulo: string;
    Fsku: string;
    Fvalor: string;
    Fquantidade: string;
    fObservacao: string;

    FConjuntos: TObjectList<TConjuntos>;
  protected
    { protected declarations }

    function AdicionarConjuntos(vJsonConjuntos: TJSONArray; vConjuntos: TConjuntos): TObjectList<TConjuntos>;

  public
    // vpConjuntos: TConjuntos;

    constructor Create;
    property titulo: string read Ftitulo write Ftitulo;
    property sku: string read Fsku write Fsku;
    property valor: string read Fvalor write Fvalor;
    property quantidade: string read Fquantidade write Fquantidade;
    property Observacao: string read fObservacao write fObservacao;
    property ListaConjuntos: TObjectList<TConjuntos> read FConjuntos write FConjuntos;

    { published declarations }

  end;

  TPedido = class
  private
    fbairro: string;
    fcep: string;
    fcodigo_pedido: string;
    fcomplemento: string;
    fcreated_at: string;
    fendereco: string;
    fcodigo_metodopagamento: string;
    fmetodopagamento: string;
    fnomecompleto: string;
    fnumero: string;
    fnumerocelular: string;
    fobservacao_motivo: string;
    fsubtotal: string;
    fdesconto: string;
    ftotal: string;
    fmetodopagamento_descrito: string;
    fobservacoes: string;
    fcodigo_bairro: string;
    fentrega: string;
    ftipopedido: string;

    fregistros: TObjectList<TRegistros>;
  protected
    procedure AdicionarRegistros(vJsonRegistros: TJSONArray);
  public

    property bairro: string read fbairro write fbairro;
    property cep: string read fcep write fcep;
    property codigo_pedido: string read fcodigo_pedido write fcodigo_pedido;
    property complemento: string read fcomplemento write fcomplemento;
    property created_at: string read fcreated_at write fcreated_at;
    property endereco: string read fendereco write fendereco;
    property codigo_metodopagamento: string read fcodigo_metodopagamento write fcodigo_metodopagamento;
    property metodopagamento: string read fmetodopagamento write fmetodopagamento;
    property nomecompleto: string read fnomecompleto write fnomecompleto;
    property numero: string read fnumero write fnumero;
    property numerocelular: string read fnumerocelular write fnumerocelular;
    property observacao_motivo: string read fobservacao_motivo write fobservacao_motivo;
    property subtotal: string read fsubtotal write fsubtotal;
    property desconto: string read fdesconto write fdesconto;
    property total: string read ftotal write ftotal;
    property metodopagamento_descrito: string read fmetodopagamento_descrito write fmetodopagamento_descrito;
    property observacoes: string read fobservacoes write fobservacoes;
    property codigo_bairro: string read fcodigo_bairro write fcodigo_bairro;
    property entrega: string read fentrega write fentrega;
    property tipopedido: string read ftipopedido write ftipopedido;

    property ListaRegistros: TObjectList<TRegistros> read fregistros write fregistros;

  end;

  TProdutos = class
  private
    Fpontuacao: string;
    Fcupom: string;
    Ftotal_sub: string;
    Ftotal_pedido: string;
    Ftotal_desconto: string;
    Ftotal_itens: string;
    Ftotal_quantidade: string;
    fregistros: TObjectList<TRegistros>;
  protected
    { protected declarations }
    // procedure AdicionarRegistro(vJsonRegistros: TJSONArray; vRegistros: TRegistros);
    function AdicionarRegistro(vJsonRegistros: TJSONArray; vRegistros: TRegistros): TObjectList<TRegistros>;
  public
    // vpConjuntos: TConjuntos;
    property ListaRegistros: TObjectList<TRegistros> read fregistros write fregistros;

    { published declarations }

  end;

type
  Tfprincinuc = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    TProcessar: TTimer;
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
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
    orcnuc: TUniQuery;
    orcnucorcchave: TIntegerField;
    orcnucetdcodigo: TIntegerField;
    orcnucclbcodigo: TIntegerField;
    orcnucfopcodigo: TIntegerField;
    orcnuctdecodigo: TIntegerField;
    orcnucstocodigo: TIntegerField;
    orcnucmoccodigo: TIntegerField;
    orcnucorcdataabert: TDateField;
    orcnucorchoraabert: TTimeField;
    orcnucorcdataencerr: TDateField;
    orcnucorcgeralav: TFloatField;
    orcnucorcgeralap: TFloatField;
    orcnucorcdescontoav: TFloatField;
    orcnucorcdescontoap: TFloatField;
    orcnucorctotalav: TFloatField;
    orcnucorctotalap: TFloatField;
    orcnucorcobs: TStringField;
    orcnucorcdestimpre: TIntegerField;
    orcnucorcnome: TStringField;
    orcnucorcendereco: TStringField;
    orcnucorctelefone: TStringField;
    orcnucorcdescrpagto: TStringField;
    orcnucorcextenso: TStringField;
    orcnucorcnomeretirou: TStringField;
    orcnuctfpcodigo: TIntegerField;
    orcnucorcpercdescav: TFloatField;
    orcnuctrmcodigo: TIntegerField;
    orcnucpuocodigo: TIntegerField;
    orcnucedritem: TIntegerField;
    orcnucedrcodigo: TIntegerField;
    orcnucorchoraencerr: TTimeField;
    orcnucclbcaixa: TIntegerField;
    orcnucclbvendedor: TIntegerField;
    orcnuceqpcodigo: TIntegerField;
    orcnucfoacodigo: TIntegerField;
    orcnuctdfcodigo: TStringField;
    orcnucflacodigo: TIntegerField;
    orcnucclbencerrou: TIntegerField;
    orcnucorcdataentrega: TDateField;
    orcnucorchoraentrega: TTimeField;
    orcnucedrcodigoentrega: TIntegerField;
    orcnucorcvias: TIntegerField;
    orcnucoricodigo: TIntegerField;
    orcnucpdscodigo: TIntegerField;
    orcnucmdacodigo: TIntegerField;
    orcnucorcnumeropedido: TStringField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
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
    litopuncodigo: TIntegerField;
    litoitoacrescimovalor: TFloatField;
    litoitoacrescimototal: TFloatField;
    litoitoacrescimosaldo: TFloatField;
    consulta: TUniQuery;
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
    itoitoobs: TStringField;
    itoitounidades: TIntegerField;
    itoitoacrescimoav: TFloatField;
    cfg: TUniQuery;
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
    cfgcfgusapdv: TIntegerField;
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
    cfgcfgusacondiconsumidor: TIntegerField;
    cfgcfgviaassinar: TIntegerField;
    cfgcfgusaadc: TIntegerField;
    cfgcfgusacre: TIntegerField;
    cfgcfgdigitosbalanca: TIntegerField;
    cfgcfgcontrolalimite: TIntegerField;
    cfgcfgidentificatecnico: TIntegerField;
    cfgcfgusacaixaprevenda: TIntegerField;
    cfgcfgusache: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    cfgcfgajustaperccomissao: TIntegerField;
    cfgcfgusabol: TIntegerField;
    cfgcfgusavendaforaestab: TIntegerField;
    cfgcfgdescontonoservico: TIntegerField;
    cfgcfgformapagamento: TIntegerField;
    cfgcfgformacancelamento: TIntegerField;
    cfgcfgmgoucobraentrega: TIntegerField;
    cfgcfggouentregafutura: TIntegerField;
    cfgcfgarredondapeso: TIntegerField;
    cfgcfgusaafaturar: TIntegerField;
    cfgcfgusagou: TIntegerField;
    cfgcfgproinativsaldozero: TIntegerField;
    cfgcfgprevisualizarimpressao: TIntegerField;
    cfgcfgmgouviasorcdelivery: TIntegerField;
    cfgcfgmgoufinalizadelivery: TIntegerField;
    cfgcfgmgouctadelivery: TIntegerField;
    cfgcfgmgoucontrolaentrega: TIntegerField;
    verificacadastro: TUniQuery;
    verificacadastroetdcodigo: TIntegerField;
    verificacadastroetdidentificacao: TStringField;
    verificacadastroedrcodigo: TIntegerField;
    verificacadastroedrrua: TStringField;
    verificacadastroedrnumero: TStringField;
    verificacadastroetfcodigo: TIntegerField;
    verificacadastroetftelefone: TStringField;
    verificacadastroedrbairro: TStringField;
    isiimp: TUniQuery;
    isiimpisichave: TIntegerField;
    isiimpsbichave: TIntegerField;
    isiimptsicodigo: TIntegerField;
    isiimpprocodigo: TIntegerField;
    isiimpisitipo: TIntegerField;
    isiimpitochave: TIntegerField;
    isiimpisiitem: TIntegerField;
    isiimpisiquantidade: TIntegerField;
    isiimpisiacrescimo: TFloatField;
    proimp: TUniQuery;
    proimpprocodigo: TIntegerField;
    proimppronome: TStringField;
    proimptpoidentificacao: TStringField;
    proimpmaridentificacao: TStringField;
    proimpgrpidentificacao: TStringField;
    proimpicmaliquotas: TStringField;
    proimpproncm: TStringField;
    proimpprosaldo: TFloatField;
    proimpprosaldodisp: TFloatField;
    proimpsipcodigo: TIntegerField;
    proimpproobs: TStringField;
    proimpproreferencia: TStringField;
    proimpunisimbolo: TStringField;
    proimppunprecoav: TFloatField;
    proimppunprecoap: TFloatField;
    proimptpocodigo: TIntegerField;
    proimpproanpcodigo: TIntegerField;
    proimpenpcodigo: TIntegerField;
    proimpenpendereco: TStringField;
    proimppropedecomple: TIntegerField;
    proimpcpbcodbalanca: TIntegerField;
    proimpgracodigo: TIntegerField;
    proimpdpridentificacao: TStringField;
    proimpproconsolidado: TIntegerField;
    proimppunpercav: TFloatField;
    proimppunpercap: TFloatField;
    proimppuncusto: TFloatField;
    proimpgrpcodigo: TIntegerField;
    proimpcstcodigo: TStringField;
    proimpprocest: TStringField;
    proimppuncodigo: TIntegerField;
    etdimp: TUniQuery;
    etdimpetdcodigo: TIntegerField;
    etdimpetdidentificacao: TStringField;
    etdimpetdapelido: TStringField;
    etdimpetddeletar: TIntegerField;
    etdimptpecodigo: TIntegerField;
    etdimpetddatacad: TDateField;
    etdimpetddataalt: TDateField;
    etdimpetddoc1: TStringField;
    etdimptsecodigo: TIntegerField;
    etdimpetdcarga: TIntegerField;
    etdimpetdativo: TIntegerField;
    etdimpetddescsituacao: TStringField;
    etdimpetdsped: TIntegerField;
    etdimpetdobs: TStringField;
    etdimpetdsuframa: TStringField;
    etdimptcbcodigo: TIntegerField;
    etdimpetdnfemodelos: TStringField;
    etdimpgrtcodigo: TIntegerField;
    etdimpatvcodigo: TIntegerField;
    etdimpjsncodigo: TIntegerField;
    etdimpetdpedidoobrigatorio: TIntegerField;
    etdimpetdregime: TIntegerField;
    edrimp: TUniQuery;
    edrimpedrcodigo: TIntegerField;
    edrimptedcodigo: TIntegerField;
    edrimpetdcodigo: TIntegerField;
    edrimpedrrua: TStringField;
    edrimpedrnumero: TStringField;
    edrimpedrcxpostal: TStringField;
    edrimpedrcomple: TStringField;
    edrimpedrbairro: TStringField;
    edrimpcddcodigo: TStringField;
    edrimpedrinscest: TStringField;
    edrimpedrcep: TStringField;
    edrimpedrinsestst: TStringField;
    edrimpufscodigo: TStringField;
    edrimpedrobs: TStringField;
    edrimpedrinscmun: TStringField;
    edrimpedritem: TIntegerField;
    edrimpedrnomefazenda: TStringField;
    edrimpedrrazaofazenda: TStringField;
    edrimpedrativo: TIntegerField;
    edrimpjsncodigo: TIntegerField;
    etvimp: TUniQuery;
    etvimpetvcodigo: TIntegerField;
    etvimpetdcodigo: TIntegerField;
    etvimptvicodigo: TIntegerField;
    etvimppcgcodigo: TIntegerField;
    etfimp: TUniQuery;
    etfimpetfcodigo: TIntegerField;
    etfimpetdcodigo: TIntegerField;
    etfimpttfcodigo: TIntegerField;
    etfimpetftelefone: TStringField;
    etfimpetfcontato: TStringField;
    etfimpetfdepartamento: TStringField;
    etfimpetfativo: TIntegerField;
    etfimpjsncodigo: TIntegerField;
    etfimpetfsenha: TStringField;
    etfimpetfpontuacao: TIntegerField;
    baiimp: TUniQuery;
    baiimpbaicodigo: TIntegerField;
    baiimpbaiidentificacao: TStringField;
    baiimpprocodigo: TIntegerField;
    adiimp: TUniQuery;
    adiimpprocodigo: TIntegerField;
    adiimppronome: TStringField;
    adiimppunprecoav: TFloatField;
    adiimpgrpcodigo: TIntegerField;
    adiimptpocodigo: TIntegerField;
    adiimpsipcodigo: TIntegerField;
    vch: TUniQuery;
    vchvchchave: TIntegerField;
    vchvchdataemissao: TDateField;
    vchvchsituacao: TIntegerField;
    vchvchvoucher: TStringField;
    vchvchtipo: TIntegerField;
    vchvchmodouso: TIntegerField;
    vchvchdatavalidade: TDateField;
    vchvchvalor: TFloatField;
    vchvchpercentual: TFloatField;
    vchetdcodigo: TIntegerField;
    vchvchdatauso: TDateField;
    vchprocodigo: TIntegerField;
    vchpuncodigo: TIntegerField;
    vchvchetdemissor: TIntegerField;
    ovc: TUniQuery;
    ovcovcchave: TIntegerField;
    ovcorcchave: TIntegerField;
    ovcvchchave: TIntegerField;
    ovcitochave: TIntegerField;
    sbr: TUniQuery;
    sbrsbrcodigo: TIntegerField;
    sbrsbridentificacao: TStringField;
    sbrprocodigo: TIntegerField;
    sbi: TUniQuery;
    sbisbichave: TIntegerField;
    sbiitochave: TIntegerField;
    sbisbrcodigo: TIntegerField;
    sbisbiobs: TStringField;
    sbisbiitem: TIntegerField;
    nuk: TUniQuery;
    nuknukchave: TIntegerField;
    nuknukpedido: TIntegerField;
    nukorcchave: TIntegerField;
    nuknukstatus: TIntegerField;
    nuknukjson: TBlobField;
    nuknukjsondetalhes: TBlobField;
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
    qprogracodigo: TIntegerField;
    qpropuncusto: TFloatField;
    qprosfnquantidade: TFloatField;
    qprogrpcodigo: TIntegerField;
    qsbi: TUniQuery;
    qsbr: TUniQuery;
    qsbrsbrqtd: TIntegerField;
    bri: TUniQuery;
    bribrichave: TIntegerField;
    briitochave: TIntegerField;
    bribrdcodigo: TIntegerField;
    brg: TUniQuery;
    brgbrdcodigo: TIntegerField;
    brgbrdidentificacao: TStringField;
    brggrpcodigo: TIntegerField;
    brgbrichave: TIntegerField;
    brgitochave: TIntegerField;
    brgbriincluir: TIntegerField;
    tsi: TUniQuery;
    tsitsicodigo: TIntegerField;
    tsitsiidentificacao: TStringField;
    immimp: TUniQuery;
    immimpimmchave: TIntegerField;
    immimpimmhoraimprimir: TDateTimeField;
    immimpimmtemporetardo: TIntegerField;
    immimpimmmodoimpressao: TIntegerField;
    immimpimmnumepedido: TIntegerField;
    immimpcznchave: TIntegerField;
    imm: TUniQuery;
    immimmchave: TIntegerField;
    immitochave: TIntegerField;
    immtcicodigo: TIntegerField;
    immimmmodo: TIntegerField;
    immimmhoraimprimir: TDateTimeField;
    immimmtemporetardo: TIntegerField;
    immimmnumepedido: TIntegerField;
    immimmhorapedido: TDateTimeField;
    immcznchave: TIntegerField;
    immclbcodigo: TIntegerField;
    immpdscodigo: TIntegerField;
    Dpro: TDataSource;
    zPCalcDescAP: TUniSQL;
    zPCalcDescAV: TUniSQL;
    bgr: TUniQuery;
    bgrbrdcodigo: TIntegerField;
    qProSaldo: TUniQuery;
    qProSaldoprocodigo: TIntegerField;
    qProSaldoprosaldodisp: TFloatField;
    qProSaldopunmultiplicador: TFloatField;
    qProSaldoproestoque: TStringField;
    ioc: TUniQuery;
    iocclbcodigo: TIntegerField;
    iocitochave: TIntegerField;
    iociocpercentual: TFloatField;
    adiimppuncodigo: TIntegerField;
    isa: TUniQuery;
    bgrpuncodigo: TIntegerField;
    bribriincluir: TIntegerField;
    sbrpro: TUniQuery;
    sbrprosbrcodigo: TIntegerField;
    sbrprosbridentificacao: TStringField;
    sbrproprocodigo: TIntegerField;
    pbri: TUniQuery;
    UniSQLMonitor: TUniSQLMonitor;
    IdAntiFreeze1: TIdAntiFreeze;
    nucmda: TUniQuery;
    nucmdacodigo_metodopagamento: TIntegerField;
    nucmdamdacodgo: TIntegerField;
    nuctpo: TUniQuery;
    nuctponuctpocodigo: TIntegerField;
    nuctponuctpoidentificacao: TStringField;
    nucmdanucmdaidentificacao: TStringField;
    adiimppro: TUniQuery;
    adiimpproprocodigo: TIntegerField;
    adiimppropuncodigo: TIntegerField;
    adiimppropronome: TStringField;
    adiimppropunprecoav: TFloatField;
    adiimpprogrpcodigo: TIntegerField;
    adiimpprotpocodigo: TIntegerField;
    adiimpprosipcodigo: TIntegerField;
    pltopo: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    plConsultaPedidos: TPanel;
    GroupBox3: TGroupBox;
    plQtdPedidosdoDia: TPanel;
    plPedidos: TPanel;
    GroupBox4: TGroupBox;
    plEtdIdentificacao: TPanel;
    TmTempo: TTimer;
    tmInicializar: TTimer;
    plRodaPe: TPanel;
    plipbanco: TPanel;
    plNomeBanco: TPanel;
    nuctponuctpoprocesso: TStringField;
    nukrecebidos: TFDMemTable;
    nukrecebidosnomecompleto: TStringField;
    nukrecebidoscodigo_pedido: TStringField;
    nukrecebidoscreated_ad: TDateTimeField;
    nukrecebidostotal: TFloatField;
    Dnukrecebidos: TDataSource;
    GroupBox5: TGroupBox;
    DBGnukrecebidos: TDBGrid;
    mostra: TProgressBar;
    nukprocessados: TUniQuery;
    Button2: TButton;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    Dnukprocessados: TDataSource;
    GroupBox7: TGroupBox;
    plCozinha: TPanel;
    nukprocessadosetdidentificacao: TStringField;
    nukprocessadosnukpedido: TIntegerField;
    nukprocessadosorcdataabert: TDateField;
    nukprocessadosorchoraabert: TTimeField;
    nukprocessadosorctotalav: TFloatField;
    nukprocessadoscznchave: TIntegerField;
    nukprocessadosimmnumepedido: TIntegerField;
    erros: TMemo;
    adigrp: TUniQuery;
    isi: TUniQuery;
    isiisichave: TIntegerField;
    isisbichave: TIntegerField;
    isitsicodigo: TIntegerField;
    isiprocodigo: TIntegerField;
    isiisitipo: TIntegerField;
    isipronome: TStringField;
    isitsiidentificacao: TStringField;
    isipunprecoav: TFloatField;
    isiisiquantidade: TIntegerField;
    GroupBox8: TGroupBox;
    plTempoConsulta: TPanel;
    UniQuery1: TUniQuery;
    nukcznchave: TIntegerField;
    nukrecebidoscznchave: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure itoAfterInsert(DataSet: TDataSet);
    procedure tmInicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TmTempoTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nukBeforePost(DataSet: TDataSet);
    procedure nukAfterInsert(DataSet: TDataSet);

  private

    vPetdcodigo: string;
    vPedrcodigo: string;
    vpTipoPreco: Integer;
    function IncluirNovoItemImportado(Produto, Embalagem: Integer; Variacao: Integer = 0; quantidade: Double = 0; vlBordas: string = ''; vObsItem: string = '';
      vValorUnitario: Double = 0): Integer;

    procedure CarregaPedido(vPedido: TJSONObject; vpedidos: TPedido);
    procedure CarregaProdutos(vProdutos: TJSONObject; vProdutosPedido: TProdutos);
    procedure processapedido;
    procedure Novoorcamento(vdataAbertura: string; vhoraAbertura: string);
    procedure Ajustasqllito;
    procedure recalculaTotal;
    procedure Recalculatotalgeral;
    procedure MontaTextoPedido;
    procedure ProcessarPedido;
    procedure ProcessaItens;

    function AjustaNumeroItem: Integer;
    procedure SelecionaSabor(vSbrCodigo: string; vlNomeTit: string; vTipo: Integer = 0);
    function QuantiTotalItemOrc(Produto, CodUnidVenda: Integer): Double;
    function PermiteQuantidade(Produto, CodUnidVenda: Integer; quantidade: Double): Boolean;
    procedure SalvaColabItem(vItoChave: Integer);
    procedure CriaPedidoGourmet;

    procedure RegistraSabor(vItoChave, vSbrCodigo: Integer);
    procedure RegistraAdicionais(vItoChave: Integer; vproCodigo: Integer; vQuantidade: Double = 1; vvalor: Double = 0);
    procedure CarregaSabores(vproCodigo: string);
    procedure RegistraBorda(vItoChave, vbrdCodigo: Integer);
    procedure FinalizarProcessoImportacao;
    procedure AjustaSituacaoito(vstocodigo, vOrcChave: string);
    procedure IncluiValorEntrega(vlEtdCodigo, vlEdrCodigo: string);
    procedure AjustaHoraImprimir(vOrcChave: string);
    procedure AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
    procedure SalvaColabItens(clbcodigo: string);
    function ProcessaVendas(vOrcChave: string; vAFaturar: Boolean = False): string;
    function Finaliza(Vchave: String): String;
    procedure RegistraAdicionaisGrp(vItoChave: Integer; vproCodigo: Integer; vQuantidade: Double = 1);
    function ConectaBanco: Boolean;
    procedure ConsultaPedidos;
    function verificainteger(pTexto: string): Boolean;
    procedure ProcessaListaPedidos(pListaPedidos: TStringList);
    procedure AplicaDescontoGeral(pDesconto: string);
    procedure ConsultaPortalNUC;
    procedure AtualizarLista;

    { Private declarations }
  public
    vpContaTempo: Integer;
    vpStringListPedidos: TStringList;
    vpFinalizar: string;
    vpValorFinalizador: Double;
    vpTeclaFinalizador: Integer;
    vpImmNumePedido: String;
    vpQuantidade: Double;
    vpItoUnidades: Integer;
    vpCznChave: string;
    { Public declarations }
    vpPedido: TPedido;
    vpProdutosPedido: TProdutos;
    vpRegistros: TRegistros;
    vpListaRegistros: TObjectList<TRegistros>;

    vpConjuntos: TConjuntos;
    vpOrcChave: string;
    vpTotalAcrescimoav: Double;
    vplValorLiquidoOp: Double;

    vpNrPedidoNuc: string;

    vPetdidentificacao: string;

    vPedrrua: string;
    vPedrnumero: string;
    vPetfcodigo: string;
    vPetftelefone: string;
    vPedrbairro: string;
    vpEdrComplemento: string;
    vpHoraPedido: string;
    vpDataPedido: string;
    vpRetiraBalcao: string;

  end;

  TProcessaOrc = function(AOwner: TComponent; Conexao: TUniConnection; pChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;
  Tregistralotedatagourmet = function(AOwner: TComponent; Conexao: TUniConnection; Vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vDia: TDate; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: Boolean = False; vCcxChave: Integer = 0): string;

var
  fprincinuc: Tfprincinuc;

const
  JsonUt8 = '"\u041f\u043e\u0438\u0441\u043a \u043f\u043e \u0444\u0430\u043c\u0438\u043b\u0438\u0438, \u0438\u043c\u0435\u043d\u0438 (\u043e\u0442\u0447\u0435\u0441\u0442\u0432\u0443"';

const
  URL_PEDIDOS = 'https://nucserver.com.br/api-painel/pedidos';

  URL_DETALHES_PEDIDO = 'https://nucserver.com.br/api-painel/pedidos/detalhes/sistema/';
  TOKEN_NUK = 'Bearer cycH9CgJneM3k'; // Kuskão
  USUARIO_CARDAPIODIGITAL = 'CARDAPIO';

implementation

{$R *.dfm}

procedure MainForm(AOwner: TApplication);
begin
  fprincinuc := Tfprincinuc.Create(AOwner);
end;

exports MainForm;

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
        Font.Size := 10;
        Font.Style := [fsbold];
        H := TextHeight('0');
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        // Now using the Windows.DrawText
        DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
        if Tag > 0 then
          Font.Color := clsilver; // background color of the caption

        Brush.Color := Color; // background color of the caption
        DrawText(Handle, PChar(Text), Length(Text), R, Flags);
      end;
    end
    else
      inherited;
    // if the control is not themed then use the original paint method.
  end;
end;

procedure TrimAppMemorySize;
var
  MainHandle: thandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;

function RemoveAspas(vtexto: string): string;
begin
  result := StringReplace(vtexto, '"', '', [rfReplaceAll, rfIgnoreCase]);
  result := StringReplace(result, 'null', '', [rfReplaceAll, rfIgnoreCase]);
end;

function RemoverAcento(Key: Char): Char;
begin
  if (CharInset('e', ['é', 'è', 'ê'])) then
  begin
    result := 'e';
  end
  else if (CharInset('E', ['É', 'È', 'Ê'])) then
  begin
    result := 'E';
  end
  else if (CharInset('a', ['á', 'à', 'ã', 'â'])) then
  begin
    result := 'a';
  end
  else if (CharInset('A', ['Á', 'À', 'Ã', 'Â'])) then
  begin
    result := 'A';
  end
  else if (CharInset('i', ['í', 'ì', 'Í', 'Ì', 'î', 'Î'])) then
  begin
    result := 'i';
  end
  else if (CharInset('I', ['Í', 'Ì', 'Î'])) then
  begin
    result := 'I';
  end
  else if (CharInset('o', ['ó', 'ò', 'õ', 'ô'])) then
  begin
    result := 'O';
  end
  else if (CharInset('O', ['Ó', 'Ò', 'Õ', 'Ô'])) then
  begin
    result := 'O';
  end
  else if (CharInset('u', ['ú', 'ù'])) then
  begin
    result := 'u';
  end
  else if (CharInset('U', ['Ú', 'Ù'])) then
  begin
    result := 'U';
  end
  else if (CharInset('c', ['ç'])) then
  begin
    result := 'c';
  end
  else if (CharInset('Ç', ['Ç'])) then
  begin
    result := 'C';
  end
  else if (CharInset('E', ['&'])) then
  begin
    result := 'E';
  end
  else if (CharInset('R', ['°', 'ª'])) then
  begin
    result := 'R';
  end

  else
    result := Key;
end;

function semacento(Texto: string): string;

Var
  S: String;
  i: Integer;
begin
  for i := 1 to Length(Texto) do
  begin
    S := S + RemoverAcento(Texto[i]);;
  end;
  result := S;
end;

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

Function BuscaTroca(Text, Busca, Troca: String): String;

Var
  n: Integer;
Begin

  For n := 1 To Length(Text) Do
  Begin
    If Copy(Text, n, 1) = Busca Then
    Begin
      Delete(Text, n, 1);
      Insert(Troca, Text, n);
    End;
  End;

  result := Text;
End;

constructor TRegistros.Create;
begin
  inherited;
  FConjuntos := TObjectList<TConjuntos>.Create;
end;

function replaceAll(vjson: string; vorigem: string; vletra: string): string;
var
  vlLetraAcentuada: string;
begin
  vlLetraAcentuada := StringReplace(vjson, vorigem, vletra, [rfReplaceAll, rfIgnoreCase]);
  result := vlLetraAcentuada
end;

function json_utf8_ansi(vjson: string): string;
var
  vlJSON: string;
begin
  try
    vlJSON := replaceAll(vjson, '\u00c0', 'À');
    vlJSON := replaceAll(vjson, '\u00c1', 'Á');
    vlJSON := replaceAll(vjson, '\u00c2', 'Â');
    vlJSON := replaceAll(vjson, '\u00c3', 'Ã');
    vlJSON := replaceAll(vjson, '\u00c4', 'Ä');
    vlJSON := replaceAll(vjson, '\u00c5', 'Å');
    vlJSON := replaceAll(vjson, '\u00c6', 'Æ');
    vlJSON := replaceAll(vjson, '\u00c7', 'Ç');
    vlJSON := replaceAll(vjson, '\u00c8', 'È');
    vlJSON := replaceAll(vjson, '\u00c9', 'É');
    vlJSON := replaceAll(vjson, '\u00ca', 'Ê');
    vlJSON := replaceAll(vjson, '\u00cb', 'Ë');
    vlJSON := replaceAll(vjson, '\u00cc', 'Ì');
    vlJSON := replaceAll(vjson, '\u00cd', 'Í');
    vlJSON := replaceAll(vjson, '\u00ce', 'Î');
    vlJSON := replaceAll(vjson, '\u00cf', 'Ï');
    vlJSON := replaceAll(vjson, '\u00d1', 'Ñ');
    vlJSON := replaceAll(vjson, '\u00d2', 'Ò');
    vlJSON := replaceAll(vjson, '\u00d3', 'Ó');
    vlJSON := replaceAll(vjson, '\u00d4', 'Ô');
    vlJSON := replaceAll(vjson, '\u00d5', 'Õ');
    vlJSON := replaceAll(vjson, '\u00d6', 'Ö');
    vlJSON := replaceAll(vjson, '\u00d8', 'Ø');
    vlJSON := replaceAll(vjson, '\u00d9', 'Ù');
    vlJSON := replaceAll(vjson, '\u00da', 'Ú');
    vlJSON := replaceAll(vjson, '\u00db', 'Û');
    vlJSON := replaceAll(vjson, '\u00dc', 'Ü');
    vlJSON := replaceAll(vjson, '\u00dd', 'Ý');
    vlJSON := replaceAll(vjson, '\u00df', 'ß');
    vlJSON := replaceAll(vjson, '\u00e0', 'à');
    vlJSON := replaceAll(vjson, '\u00e1', 'á');
    vlJSON := replaceAll(vjson, '\u00e2', 'â');
    vlJSON := replaceAll(vjson, '\u00e3', 'ã');
    vlJSON := replaceAll(vjson, '\u00e4', 'ä');
    vlJSON := replaceAll(vjson, '\u00e5', 'å');
    vlJSON := replaceAll(vjson, '\u00e6', 'æ');
    vlJSON := replaceAll(vjson, '\u00e7', 'ç');
    vlJSON := replaceAll(vjson, '\u00e8', 'è');
    vlJSON := replaceAll(vjson, '\u00e9', 'é');
    vlJSON := replaceAll(vjson, '\u00ea', 'ê');
    vlJSON := replaceAll(vjson, '\u00eb', 'ë');
    vlJSON := replaceAll(vjson, '\u00ec', 'ì');
    vlJSON := replaceAll(vjson, '\u00ed', 'í');
    vlJSON := replaceAll(vjson, '\u00ee', 'î');
    vlJSON := replaceAll(vjson, '\u00ef', 'ï');
    vlJSON := replaceAll(vjson, '\u00f0', 'ð');
    vlJSON := replaceAll(vjson, '\u00f1', 'ñ');
    vlJSON := replaceAll(vjson, '\u00f2', 'ò');
    vlJSON := replaceAll(vjson, '\u00f3', 'ó');
    vlJSON := replaceAll(vjson, '\u00f4', 'ô');
    vlJSON := replaceAll(vjson, '\u00f5', 'õ');
    vlJSON := replaceAll(vjson, '\u00f6', 'ö');
    vlJSON := replaceAll(vjson, '\u00f8', 'ø');
    vlJSON := replaceAll(vjson, '\u00f9', 'ù');
    vlJSON := replaceAll(vjson, '\u00fa', 'ú');
    vlJSON := replaceAll(vjson, '\u00fb', 'û');
    vlJSON := replaceAll(vjson, '\u00fc', 'ü');
    vlJSON := replaceAll(vjson, '\u00fd', 'ý');
    vlJSON := replaceAll(vjson, '\u00ff', 'ÿ');

    vlJSON := vjson.trim();

  finally
    result := vlJSON;
  end;
end;


// registra pedido  unico
// ---registra produdos unico
// -------registros varios
// -----------conjuntos varios
// ---------------produtos varios

{ TConjuntos }

procedure TConjuntos.AdicionarConjuntosProdutos(vJsonConjuntosProdutos: TJSONArray; vConjuntosProdutos: TConjuntosProdutos);
var
  i: Integer;

  vJSONObjectProduto: TJSONValue;
  vJSONItem: TJSONObject;
  vJSONPair: TJSONPair;
  vConjuntosProduto: TConjuntosProduto;

begin

  for i := 0 to vJsonConjuntosProdutos.Count - 1 do
  begin

    vJSONObjectProduto := TJSONObject.ParseJSONValue(vJsonConjuntosProdutos.Items[i].ToString, False);
    vJSONItem := vJSONObjectProduto as TJSONObject;

    vConjuntosProduto := TConjuntosProduto.Create;

    vJSONPair := vJSONItem.Get('titulo');
    if vJSONPair <> nil then
      vConjuntosProduto.Ftitulo := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('sku');
    if vJSONPair <> nil then
      vConjuntosProduto.Fsku := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('valor');
    if vJSONPair <> nil then
      vConjuntosProduto.Fvalor := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('quantidade');
    if vJSONPair <> nil then
      vConjuntosProduto.Fquantidade := RemoveAspas(vJSONPair.JsonValue.ToString);

    vConjuntosProdutos.ListaConjuntosProdutos.Add(vConjuntosProduto);

    ListaProdutos.Add(vConjuntosProdutos);

  end;

end;

function TRegistros.AdicionarConjuntos(vJsonConjuntos: TJSONArray; vConjuntos: TConjuntos): TObjectList<TConjuntos>;
var
  i: Integer;
  vlQtdConjuntos: Integer;
  vliQtd: Integer;

  vJSONObjectConjunto: TJSONValue;

  vJSONItem: TJSONObject;
  vJSONPair: TJSONPair;

  vJSONObjectConjuntosProdutos: TJSONArray;
  vlConjuntosProdutos: TConjuntosProdutos;

  vlListaConjuntos: TObjectList<TConjuntos>;

  n: string;
begin

  vlListaConjuntos := TObjectList<TConjuntos>.Create;

  for i := 0 to vJsonConjuntos.Count - 1 do
  begin

    vJSONObjectConjunto := TJSONObject.ParseJSONValue(vJsonConjuntos.Items[i].ToString, False);
    vJSONItem := vJSONObjectConjunto as TJSONObject;

    vJSONPair := vJSONItem.Get('titulo');
    if vJSONPair <> nil then
      vConjuntos.Ftitulo := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('sku');
    if vJSONPair <> nil then
      vConjuntos.Fsku := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('valor');
    if vJSONPair <> nil then
      vConjuntos.Fvalor := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('quantidade');
    if vJSONPair <> nil then
      vConjuntos.Fquantidade := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONObjectConjuntosProdutos := vJsonConjuntos.Items[i].GetValue<TJSONArray>('produtos');

    vlConjuntosProdutos := TConjuntosProdutos.Create;

    n := vJSONObjectConjuntosProdutos.ToString;

    vConjuntos.AdicionarConjuntosProdutos(vJSONObjectConjuntosProdutos, vlConjuntosProdutos);

    vlListaConjuntos.Add(TConjuntos.Create);
    vlListaConjuntos[i].Ftitulo := vConjuntos.Ftitulo;
    vlListaConjuntos[i].Fvalor := vConjuntos.Fvalor;
    vlListaConjuntos[i].Fquantidade := vConjuntos.Fquantidade;
    vlListaConjuntos[i].FListaProdutos.AddRange(vlConjuntosProdutos);

    vlQtdConjuntos := vConjuntos.FListaProdutos.Count - 1;

    for vliQtd := 0 to vlQtdConjuntos do
    begin

      // vlListaConjuntos[I].FListaProdutos.Add(vConjuntos.FListaProdutos[vliQtd].FConjuntosProduto );
    end;

  end;

  result := vlListaConjuntos;

end;

function TProdutos.AdicionarRegistro(vJsonRegistros: TJSONArray; vRegistros: TRegistros): TObjectList<TRegistros>;
var
  i: Integer;

  vJSONObjectRegistro: TJSONValue;

  vJSONItem: TJSONObject;
  vJSONPair: TJSONPair;
  vJSONObjectConjuntos: TJSONArray;
  n: string;
  vlListaRegistros: TObjectList<TRegistros>;

  vlConjuntos: TConjuntos;
  vcConjuntos: TObjectList<TConjuntos>;

begin
  vlListaRegistros := TObjectList<TRegistros>.Create;

  for i := 0 to vJsonRegistros.Count - 1 do
  begin

    vJSONObjectRegistro := TJSONObject.ParseJSONValue(vJsonRegistros.Items[i].ToString, False);
    vJSONItem := vJSONObjectRegistro as TJSONObject;

    vJSONPair := vJSONItem.Get('titulo');
    if vJSONPair <> nil then
      vRegistros.Ftitulo := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('sku');
    if vJSONPair <> nil then
      vRegistros.Fsku := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('valor');
    if vJSONPair <> nil then
      vRegistros.Fvalor := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('quantidade');
    if vJSONPair <> nil then
      vRegistros.Fquantidade := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vJSONItem.Get('observacao');
    if vJSONPair <> nil then
      vRegistros.fObservacao := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONObjectConjuntos := vJsonRegistros.Items[i].GetValue<TJSONArray>('conjuntos');
    n := vJSONObjectConjuntos.ToString;
    vlConjuntos := TConjuntos.Create;

    vcConjuntos := TObjectList<TConjuntos>.Create;
    vcConjuntos := vRegistros.AdicionarConjuntos(vJSONObjectConjuntos, vlConjuntos);

    vlListaRegistros.Add(TRegistros.Create);
    vlListaRegistros[i].Ftitulo := vRegistros.titulo;
    vlListaRegistros[i].Fsku := vRegistros.sku;
    vlListaRegistros[i].Fvalor := vRegistros.valor;
    vlListaRegistros[i].Fquantidade := vRegistros.quantidade;
    vlListaRegistros[i].fObservacao := vRegistros.Observacao;

    vlListaRegistros[i].FConjuntos.AddRange(vcConjuntos);

  end;

  result := vlListaRegistros;

end;

procedure Tfprincinuc.CarregaProdutos(vProdutos: TJSONObject; vProdutosPedido: TProdutos);
var
  vJSONPair: TJSONPair;
  vJSONObjectRegistros: TJSONArray;
  // n: string;
  // i: Integer;
  // vlQtdRegistros: Integer;

  // vJSONObjectRegistro: TJSONValue;
  // vJSONItem: TJSONObject;

begin

  vJSONPair := vProdutos.Get('pontuacao');
  if vJSONPair <> nil then
    vProdutosPedido.Fpontuacao := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('cupom');
  if vJSONPair <> nil then
    vProdutosPedido.Fcupom := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('total_sub');
  if vJSONPair <> nil then
    vProdutosPedido.Ftotal_sub := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('total_pedido');
  if vJSONPair <> nil then
    vProdutosPedido.Ftotal_pedido := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('total_desconto');
  if vJSONPair <> nil then
    vProdutosPedido.Ftotal_desconto := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('total_itens');
  if vJSONPair <> nil then
    vProdutosPedido.Ftotal_itens := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONPair := vProdutos.Get('total_quantidade');
  if vJSONPair <> nil then
    vProdutosPedido.Ftotal_quantidade := RemoveAspas(vJSONPair.JsonValue.ToString);

  vJSONObjectRegistros := vProdutos.GetValue('registros') as TJSONArray;

  vpRegistros := TRegistros.Create;

  vpListaRegistros := vProdutosPedido.AdicionarRegistro(vJSONObjectRegistros, vpRegistros);

  // vlQtdRegistros := vpListaRegistros.Count - 1;

  // n := vJSONObjectRegistros.ToString;

end;

procedure Tfprincinuc.itoAfterInsert(DataSet: TDataSet);
begin
  itoflacodigo.AsInteger := 1;
end;

procedure Tfprincinuc.CarregaPedido(vPedido: TJSONObject; vpedidos: TPedido);
var
  vJSONPair: TJSONPair;
  // vlRegistrosJson: TJSONArray;
  vlRegistros: TRegistros;
  vJSONObjectProdutos: TJSONObject;
  n: string;
  i: Integer;
begin

  if vPedido <> nil then
  begin
    n := vPedido.ToString;

    vJSONPair := vPedido.Get('datahora_enviado');
    if vJSONPair <> nil then
      vpDataPedido := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('bairro');
    if vJSONPair <> nil then
      vpedidos.bairro := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('cep');
    if vJSONPair <> nil then
      vpedidos.cep := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('codigo_pedido');
    if vJSONPair <> nil then
      vpedidos.codigo_pedido := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('complemento');
    if vJSONPair <> nil then
      vpedidos.complemento := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('created_at');
    if vJSONPair <> nil then
      vpedidos.created_at := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('endereco');
    if vJSONPair <> nil then
      vpedidos.endereco := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('codigo_metodopagamento');
    if vJSONPair <> nil then
      vpedidos.codigo_metodopagamento := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('metodopagamento');
    if vJSONPair <> nil then
      vpedidos.metodopagamento := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('nomecompleto');
    if vJSONPair <> nil then
      vpedidos.nomecompleto := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('numero');
    if vJSONPair <> nil then
      vpedidos.numero := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('numerocelular');
    if vJSONPair <> nil then
      vpedidos.numerocelular := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('observacao_motivo');
    if vJSONPair <> nil then
      vpedidos.observacao_motivo := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('subtotal');
    if vJSONPair <> nil then
      vpedidos.subtotal := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('desconto');
    if vJSONPair <> nil then
      vpedidos.desconto := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('total');
    if vJSONPair <> nil then
    begin

      vpedidos.total := RemoveAspas(vJSONPair.JsonValue.ToString);
      vpedidos.total := StringReplace(vpedidos.total, ',', '', [rfReplaceAll, rfIgnoreCase]);
      vpedidos.total := StringReplace(vpedidos.total, '.', ',', [rfReplaceAll, rfIgnoreCase]);

    end;

    vJSONPair := vPedido.Get('metodopagamento_descrito');
    if vJSONPair <> nil then
      vpedidos.metodopagamento_descrito := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('observacoes');
    if vJSONPair <> nil then
      vpedidos.observacoes := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('tipopedido');
    if vJSONPair <> nil then
      vpedidos.tipopedido := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('entrega');
    if vJSONPair <> nil then
      vpedidos.entrega := RemoveAspas(vJSONPair.JsonValue.ToString);

    vJSONPair := vPedido.Get('codigo_bairro');
    if vJSONPair <> nil then
      vpedidos.codigo_bairro := RemoveAspas(vJSONPair.JsonValue.ToString);

    if not nukrecebidos.Active then
      nukrecebidos.Open;

    if not nukrecebidos.Locate('codigo_pedido', vpedidos.codigo_pedido, []) then
    begin

      nukrecebidos.Append;
      nukrecebidoscodigo_pedido.AsString := vpedidos.codigo_pedido;
      nukrecebidosnomecompleto.AsString := vpedidos.nomecompleto;
      nukrecebidoscreated_ad.AsString := vpedidos.created_at;
      nukrecebidoscznchave.AsString := vpCznChave;
      nukrecebidostotal.AsString := vpedidos.total;
      nukrecebidos.Post;

    end;

  end;
end;

function Tfprincinuc.ConectaBanco: Boolean;
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
  result := False;
  // try
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vlUsuario := ReadString('posi', 'usuario', 'root');
    vlSenha := ReadString('posi', 'senha', 'xda973');
    vlPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

    if vlNomeBanco = 'sulani' then
      vlSenha := 'riticami';

  End;
  arquini.Free;

  (* Configuração para DBMonitor *)
  if vlMonitor = '1' then
    UniSQLMonitor.Active := True
  else
    UniSQLMonitor.Active := False;

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';

  if lowercase(vlTipoBanco) = 'postgresql' then
    Conexao.ProviderName := 'PostgreSQL';

  Conexao.Connected := False;
  Conexao.Database := vlNomeBanco;
  Conexao.Username := vlUsuario;
  Conexao.Password := vlSenha;
  Conexao.Port := StrToInt(vlPortaBanco);
  Conexao.Server := vlServidor;

  Conexao.Connected := True;

  result := Conexao.Connected;

  if result then
  begin
    plNomeBanco.Caption := vlNomeBanco;
    plipbanco.Caption := vlServidor;

  end
  else
  begin
    plNomeBanco.Caption := '';
    plipbanco.Caption := '';

  end;

End;

function Tfprincinuc.verificainteger(pTexto: string): Boolean;
var
  S: String;
  iValue, iCode: Integer;
begin

  S := pTexto;
  val(S, iValue, iCode);

  if iCode = 0 then
    result := True
  else
    result := False;

end;

procedure Tfprincinuc.ProcessaListaPedidos(pListaPedidos: TStringList);
var
  i: Integer;
  vlIdPedidos: Integer;
  vJSONString: string;
  vJSONScenario: TJSONValue;
  vJSONObject: TJSONObject;
  vlJsonDetalhePedido: string;
  vJSONPair: TJSONPair;
  vlStatusPedido: string;
  vJSONPedido: TJSONObject;
  vJSONObjectProdutos: TJSONObject;
  n: string;
begin

  try

    if pListaPedidos.Count > 0 then
    begin

      mostra.Max := pListaPedidos.Count - 1;
      mostra.Position := 0;
      Application.ProcessMessages;

      for i := 0 to pListaPedidos.Count - 1 do
      begin

        vlIdPedidos := pListaPedidos.Strings[i].ToInteger;
        mostra.Position := mostra.Position + 1;
        Application.ProcessMessages;

        nuk.Close;
        nuk.ParamByName('cznchave').AsString := vpCznChave;
        nuk.Open;

        if not nuk.Locate('nukpedido', vlIdPedidos, []) then
        begin
          try
            RESTRequest1.Client.BaseURL := 'https://nucserver.com.br/api-painel/pedidos/detalhes/sistema/' + inttostr(vlIdPedidos);
            RESTRequest1.Execute;

          except
            on E: Exception do
            begin
              TmTempo.Enabled := True;

              erros.Lines.Add('PEDIDO: ' + inttostr(vlIdPedidos) + 'ERRO DE CONSULTA NO SERVIDOR NUC ' + datetimetostr(now()) + ' ' + E.Message);
              exit;
            end;
          end;

          vJSONString := json_utf8_ansi(RESTResponse1.JSONText);
          vJSONScenario := TJSONObject.ParseJSONValue(vJSONString, False);
          if vJSONScenario <> nil then
          begin
            try
              vJSONObject := vJSONScenario as TJSONObject;
              vlJsonDetalhePedido := vJSONObject.ToString;
              vJSONPair := vJSONObject.Get('status');
              if vJSONPair <> nil then
              begin
                vlStatusPedido := RemoveAspas(vJSONPair.JsonValue.ToString);
              end;

              if vlStatusPedido = 'true' then
              begin

                nuk.Close;
                nuk.ParamByName('cznchave').AsString := vpCznChave;
                nuk.Open;

                if not nuk.Locate('nukpedido', vlIdPedidos, []) then
                begin
                  try
                    nuk.Append;
                    nuknukpedido.AsInteger := vlIdPedidos;
                    nuknukjsondetalhes.AsString := vlJsonDetalhePedido;
                    nukcznchave.AsString := vpCznChave;
                    nuk.Post;

                    // carrega o cabeçalho do pedido
                    vJSONPedido := vJSONObject.GetValue('pedido') as TJSONObject;
                    vpPedido := TPedido.Create;
                    CarregaPedido(vJSONPedido, vpPedido);

                    // carrega os itens do pedido
                    vJSONObjectProdutos := vJSONObject.GetValue('produtos') as TJSONObject;
                    n := vJSONObjectProdutos.ToString;
                    vpProdutosPedido := TProdutos.Create;
                    CarregaProdutos(vJSONObjectProdutos, vpProdutosPedido);
                    processapedido;
                    vpPedido.Free;
                  except
                    on E: Exception do
                    begin
                      TmTempo.Enabled := True;

                      erros.Lines.Add('PEDIDO: ' + inttostr(vlIdPedidos) + 'JÁ REGISTRADO ' + datetimetostr(now()) + ' ' + E.Message);
                      exit;
                    end;

                  end;
                end;
              end;
            finally
              vJSONScenario.Free;
            end;
          end;
        end;
      end;
    end
    else
    begin
      mostra.Max := 0;
      mostra.Position := 0;
      Application.ProcessMessages;

    end;
  finally
    vpStringListPedidos.Clear;
    TmTempo.Enabled := True;
  end;

end;

procedure Tfprincinuc.ConsultaPedidos;
var
  vJSONString: string;

  vJSONScenario: TJSONValue;
  vJSONObject: TJSONObject;
  vlJsonPedido: string;
  vlQtdPedidos: Integer;
  vlQtdPedido: Integer;

  vJSONListaPedidos: TJSONArray;

  vlJSONObject: TJSONObject;
  vJSONPair: TJSONPair;

  // n: string;
  // x: Integer;

  vlNumeroPedido: string;

begin
  vlQtdPedido := 0;
  TmTempo.Enabled := False;

  vlQtdPedidos := 0;
  try
    RESTRequest1.Client.BaseURL := 'https://nucserver.com.br/api-painel/pedidos';
    RESTRequest1.Execute;
  except
    on E: Exception do
    begin
      TmTempo.Enabled := True;
      sleep(3000);
      erros.Lines.Add('ERRO DE CONSULTA NO SERVIDOR NUC ' + datetimetostr(now()) + ' ' + E.Message);
      exit;
    end;
  end;

  vJSONString := json_utf8_ansi(RESTResponse1.JSONText);
  vJSONScenario := TJSONObject.ParseJSONValue(vJSONString, False);

  if vJSONScenario <> nil then
  begin

    vJSONObject := vJSONScenario as TJSONObject;

    vlJsonPedido := vJSONObject.ToString;

    vJSONListaPedidos := vJSONObject.GetValue<TJSONArray>('pedidos') as TJSONArray;

    vlQtdPedidos := vJSONListaPedidos.Count - 1;

    if vlQtdPedidos >= 0 then
    begin
      plPedidos.Caption := formatfloat('000', vlQtdPedidos+1);

      mostra.Max := vlQtdPedidos;
      mostra.Position := 0;

      erros.Lines.Add('Todos Pedidos: ' +vJSONListaPedidos.Count.ToString);

      for vlQtdPedido := 0 to vlQtdPedidos do
      begin
        mostra.Position := vlQtdPedido;

        vlJSONObject := vJSONListaPedidos.Items[vlQtdPedido] as TJSONObject;

        vJSONPair := vlJSONObject.Get('codigo_pedido');
        if vJSONPair <> nil then
        begin
          vlNumeroPedido := RemoveAspas(vJSONPair.JsonValue.ToString);

          if pos(vlNumeroPedido, vpStringListPedidos.Text) = 0 then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
            consulta.Open;

            if consulta.IsEmpty then
            begin
              vpCznChave := '';
            end
            else
            begin
              vpCznChave := consulta.Fields[0].AsString;
            end;

            nuk.Close;
            nuk.ParamByName('cznchave').AsString := vpCznChave;
            nuk.Open;

            if not nuk.Locate('nukpedido', vlNumeroPedido, []) then
            begin

              if not nukprocessados.Locate('nukpedido', vlNumeroPedido, []) then
              begin
                vpStringListPedidos.Add(vlNumeroPedido);
              end;

            end;
          end;

        end;

      end;

      if vpStringListPedidos.Count > 0 then
      begin
        TmTempo.Enabled := False;
        ProcessaListaPedidos(vpStringListPedidos);
        TmTempo.Enabled := True;
      end
      else
      begin
        TmTempo.Enabled := True;
      end;

    end
    else
    begin
      plPedidos.Caption := '000';
      TmTempo.Enabled := True;
    end;

  end
  else
  begin
    TmTempo.Enabled := True;
  end;

end;

procedure Tfprincinuc.Button2Click(Sender: TObject);
var
  vlJSONString: string;

  vlJSONScenario: TJSONValue;
  vlJSONObject: TJSONObject;

  vlJsonPedido: TJSONObject;
  vlJSONObjectProdutos: TJSONObject;
  n: string;

  vlStatusPedido: string;

  vlIdPedidos: Integer;

  vlJSONPair: TJSONPair;

  i: Integer;

  vlJsonDetalhePedido: string;

begin
  erros.Lines.Add('inicia  ' + datetimetostr(now()));
  mostra.Max := 0;
  mostra.Position := 0;

  nuk.Close;
  nuk.ParamByName('cznchave').AsString := vpCznChave;
  nuk.Open;
  for i := 234885 to 235200 do
  begin
    sleep(3000);
    vlIdPedidos := i;
    mostra.Position := mostra.Position + 1;

    Application.ProcessMessages;

    if not nuk.Locate('nukpedido', vlIdPedidos, []) then
    begin
      erros.Lines.Add('inicia geral ' + datetimetostr(now()));
      RESTRequest1.Client.BaseURL := 'https://nucserver.com.br/api-painel/pedidos/detalhes/sistema/' + inttostr(vlIdPedidos);

      RESTRequest1.Execute;
      vlJSONString := json_utf8_ansi(RESTResponse1.JSONText);
      erros.Lines.Add('consultou o portal  ' + datetimetostr(now()));
      vlJSONScenario := TJSONObject.ParseJSONValue(vlJSONString, False);
      if vlJSONScenario <> nil then
      begin
        try
          vlJSONObject := vlJSONScenario as TJSONObject;
          vlJsonDetalhePedido := vlJSONObject.ToString;

          vlJSONPair := vlJSONObject.Get('status');
          if vlJSONPair <> nil then
          begin
            vlStatusPedido := RemoveAspas(vlJSONPair.JsonValue.ToString);
            erros.Lines.Add(inttostr(vlIdPedidos));
          end;

          if vlStatusPedido = 'true' then
          begin

            nuk.Append;
            nuknukpedido.AsInteger := vlIdPedidos;
            nuknukjsondetalhes.AsString := vlJsonDetalhePedido;
            nukcznchave.AsString := vpCznChave;
            nuk.Post;

            // carrega o cabeçalho do pedido
            vlJsonPedido := vlJSONObject.GetValue('pedido') as TJSONObject;

            vpPedido := TPedido.Create;

            CarregaPedido(vlJsonPedido, vpPedido);

            // carrega os itens do pedido
            vlJSONObjectProdutos := vlJSONObject.GetValue('produtos') as TJSONObject;
            n := vlJSONObjectProdutos.ToString;

            vpProdutosPedido := TProdutos.Create;

            CarregaProdutos(vlJSONObjectProdutos, vpProdutosPedido);
            erros.Lines.Add(' ************************ Inicia processamento' + datetimetostr(now()));
            processapedido;
            TrimAppMemorySize;
            erros.Lines.Add(' ************************ Fim do processamento  ' + datetimetostr(now()));
            Application.ProcessMessages;

            vpPedido.Free;
          end;
        finally
          vlJSONScenario.Free;
        end;

      end;
    end;

  end;
end;

constructor TConjuntos.Create;
begin
  inherited;
  FListaProdutos := TObjectList<TConjuntosProdutos>.Create;
end;

{ TConjuntosProdutos }

constructor TConjuntosProdutos.Create;
begin
  FConjuntosProduto := TObjectList<TConjuntosProduto>.Create;
end;

procedure Tfprincinuc.Ajustasqllito;
var
  txt: string;
begin

  lito.SQL.Text := 'SELECT ';
  lito.SQL.Add('ito.itochave, ');
  lito.SQL.Add('  ito.itoitem, ');
  lito.SQL.Add('  ito.itoquantidade, ');
  lito.SQL.Add('  ito.procodigo, ');
  lito.SQL.Add('  pro.pronome, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itovalorav, ito.itovalorap) AS itovalor, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itototalav, ito.itototalap) AS itototal, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itodescontoav, ito.itodescontoap) AS itodesconto, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itosaldoav, ito.itosaldoap) AS itosaldo, ');
  lito.SQL.Add('  pro.prosaldodisp, ');
  lito.SQL.Add('  uni.unisimbolo, ');
  lito.SQL.Add('  ito.unicodigo, ');
  lito.SQL.Add('  ito.orcchave, ');
  lito.SQL.Add('  ito.tdecodigo, ');
  lito.SQL.Add('  pro.proreferencia, ');
  lito.SQL.Add('  ito.itoproservico, ');
  lito.SQL.Add('  ito.itoinfadprod, ');
  lito.SQL.Add('  pro.tpocodigo, ');
  lito.SQL.Add('  ito.itoprocomple, ');
  lito.SQL.Add('  pro.propededescrserv, ');
  lito.SQL.Add('  pro.propedetecnicoserv, ');
  lito.SQL.Add('  ito.vrpcodigo, ');
  lito.SQL.Add('  ito.puncodigo, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itovalorav+itoacrescimoav, ito.itovalorap) AS itoacrescimovalor, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itototalav+itoacrescimoav, ito.itototalap) AS itoacrescimototal, ');
  lito.SQL.Add('  IF(orc.puocodigo = 0, ito.itosaldoav+itoacrescimoav, ito.itosaldoap) AS itoacrescimosaldo ');

  lito.SQL.Add('FROM ito, ');
  lito.SQL.Add('     pro, ');
  lito.SQL.Add('     uni, ');
  lito.SQL.Add('     orc ');
  lito.SQL.Add('WHERE ito.orcchave = orc.orcchave ');
  lito.SQL.Add('AND ito.procodigo = pro.procodigo ');
  lito.SQL.Add('AND ito.unicodigo = uni.unicodigo ');
  lito.SQL.Add('AND ito.stocodigo IN (1, 2) ');
  lito.SQL.Add('AND ito.orcchave = :orcchave ');
  lito.SQL.Add('AND ito.flacodigo = :flacodigo ');
  lito.SQL.Add('ORDER BY ito.itoitem ');

  txt := lito.SQL.Text;
end;

Procedure Tfprincinuc.Recalculatotalgeral;
var
  vlChaveIto: Integer;
  vlBruto: Double;
  vlDesconto: Double;
  vlLiquido: Double;
Begin
  if lito.Active = False then
    exit;

  if trim(vPetdcodigo) = '' then
    exit;

  vlChaveIto := litoitochave.AsInteger;

  if vpOrcChave <> '' then
  begin
    ito.Close;
    ito.Params[0].AsInteger := StrToInt(vpOrcChave);
    ito.Params[1].AsInteger := 1;
    ito.Open;
  end;

  If (orcnuc.Active) and (ito.Active) Then
  Begin

    vlBruto := orcnucorctotalav.AsFloat;
    vlDesconto := orcnucorcdescontoav.AsFloat;
    vlLiquido := orcnucorcgeralav.AsFloat;

    if (vpPedido.desconto <> '') and (lito.Active) then
    begin
      AplicaDescontoGeral(vpPedido.desconto);
    end;

    { consulta.Close;
      consulta.SQL.Text := 'update ito, orc set itodescontoav=' + StringReplace(orcnucorcdescontoav.AsString, ',', '.', []) +
      '*((itovalorav*itoquantidade)/orcgeralav) WHERE ito.orcchave=orc.orcchave and orc.orcchave=' + vpOrcChave;
      consulta.ExecSQL; }

    consulta.Close;
    consulta.SQL.Text := 'update ito, orc set itosaldoav=itototalav-itodescontoav WHERE ito.orcchave=orc.orcchave and orc.orcchave=' + vpOrcChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('update ito, pro, pun set ');
    consulta.SQL.Add('itovalorav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav), ');
    consulta.SQL.Add('itototalav= IF(punprecoav>0 and itovalorav=0,punprecoav,(itovalorav))*itoquantidade, ');
    consulta.SQL.Add('itosaldoav=(IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade)-itodescontoav, ');
    consulta.SQL.Add('itovalorap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap), ');
    consulta.SQL.Add('itototalap=IF(punprecoap>0 and itovalorap=0,punprecoap,(itovalorap+itoacrescimoav))*itoquantidade, ');
    consulta.SQL.Add('itosaldoap=(IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade)-itodescontoap ');
    consulta.SQL.Add('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave=' + vpOrcChave + ' and ito.flacodigo=' + '1');
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('SELECT SUM(itototalav), SUM(itodescontoav), SUM(itototalap), SUM(itodescontoap), SUM(itoquantidade) ');
    consulta.SQL.Add('FROM ito WHERE ito.stocodigo IN (1, 2, 3) AND orcchave = ' + vpOrcChave + ' and ito.flacodigo=' + '1');
    consulta.Open;

    If (orcnuc.State <> dsEdit) Then
      orcnuc.Edit;

    orcnucorcgeralav.AsFloat := consulta.Fields[0].AsFloat;
    orcnucorcdescontoav.AsFloat := consulta.Fields[1].AsFloat;

    orcnucorcgeralap.AsFloat := consulta.Fields[2].AsFloat;
    orcnucorcdescontoap.AsFloat := consulta.Fields[3].AsFloat;

    if (orcnucorcgeralav.AsFloat = 0) and (orcnucorcdescontoav.AsFloat > 0) then
    begin
      orcnucorcgeralav.AsFloat := orcnucorcdescontoav.AsFloat;
    end;

    // orcnucorctotalav.AsFloat := orcnucorcgeralav.AsFloat - orcnucorcdescontoav.AsFloat;
    // orcnucorctotalap.AsFloat := orcnucorcgeralap.AsFloat - orcnucorcdescontoap.AsFloat;
    orcnucfoacodigo.AsInteger := 2;

    orcnuc.Post;

    consulta.Close;

    if lito.Active then
    begin
      lito.Refresh;
      lito.Locate('itochave', vlChaveIto, []);
    end;
  End;

End;

procedure Tfprincinuc.recalculaTotal;
begin
  Recalculatotalgeral;
end;

Procedure Tfprincinuc.Novoorcamento(vdataAbertura: string; vhoraAbertura: string);
Begin

  clb.Close;
  clb.Open;

  If not(orcnuc.Active) Then
  Begin
    orcnuc.Params[1].AsInteger := 1;
    orcnuc.Open;
  end;

  orcnuc.Append;
  orcnucflacodigo.AsInteger := 1;
  orcnucetdcodigo.AsInteger := 0;
  orcnucclbcodigo.AsInteger := clbclbcodigo.AsInteger;
  orcnucfopcodigo.AsInteger := 1;
  orcnuctdecodigo.AsInteger := 0;
  orcnucstocodigo.AsInteger := 1;
  orcnucmoccodigo.AsInteger := 0;
  orcnucpuocodigo.AsInteger := 0;
  orcnucorcdataabert.AsString := vdataAbertura;
  orcnucorchoraabert.AsString := vhoraAbertura;
  orcnucorcgeralav.AsFloat := 0;
  orcnucorcgeralap.AsFloat := 0;
  orcnucorcdescontoav.AsFloat := 0;
  orcnucorcdescontoap.AsFloat := 0;
  orcnucorctotalav.AsFloat := 0;
  orcnucorctotalap.AsFloat := 0;
  orcnucorcdestimpre.AsInteger := 1;
  orcnuctrmcodigo.AsString := '1';
  orcnucfoacodigo.AsInteger := 2;
  orcnucorcnumeropedido.AsString := nuknukpedido.AsString;
  orcnuc.Post;
  vPetdcodigo := '0';

  vpOrcChave := orcnucorcchave.AsString;

  nuk.Edit;
  nukorcchave.AsString := vpOrcChave;
  nukcznchave.AsString := vpCznChave;
  nuk.Post;

  lito.Close;

  Ajustasqllito;

  lito.ParamByName('orcchave').AsString := vpOrcChave;
  lito.ParamByName('flacodigo').AsInteger := 1;
  lito.Open;

  orcnuc.Close;
  orcnuc.Params[0].AsString := vpOrcChave;
  orcnuc.Params[1].AsInteger := 1;
  orcnuc.Open;

  orcnuc.Edit;
  orcnuctfpcodigo.AsInteger := 0; // Vai deixar de ser utilizado aqui.
  orcnucpuocodigo.AsInteger := 0;
  orcnuc.Post;

  recalculaTotal;

  lito.Refresh;

End;

procedure Tfprincinuc.nukAfterInsert(DataSet: TDataSet);
begin
    nukcznchave.AsString := vpCznChave;
end;

procedure Tfprincinuc.nukBeforePost(DataSet: TDataSet);
begin
  nukcznchave.AsString := vpCznChave;
end;

procedure Tfprincinuc.MontaTextoPedido;
var
  i: Integer;

  vNome1: string;
  vNome2: string;
  vNome3: string;
  VNome: string;
  vltotal: Double;
  vlTotalBordas: Double;
  vlQtdBordas: Integer;

  vlAdicional: Double;

  vlBordas: Double;
  vlValorUnit: Double;
  vlValorTotalItem: Double;

  vlCobraAdicional: Integer;
  vlEndereco: Integer;

begin
  erros.Lines.Add('inicia monta texto  ' + datetimetostr(now()));
  vlEndereco := orcnucedrcodigo.AsInteger;

  etd.Close;
  etd.Params[0].AsString := vPetdcodigo;
  etd.Params[1].AsInteger := vlEndereco;
  etd.Open;

  recalculaTotal;

  vltotal := 0;
  vlTotalBordas := 0;
  vpTotalAcrescimoav := 0;
  vlValorTotalItem := 0;

  lito.First;

  vlBordas := 0;
  vlAdicional := 0;

  while not lito.Eof do
  begin
    vlBordas := 0;
    vlAdicional := 0;

    pbri.Close;
    pbri.Params[0].AsInteger := litoitochave.AsInteger;
    pbri.Open;

    if pbri.IsEmpty then
    begin
      vlTotalBordas := 0;
      vlTotalBordas := 0;
      vlBordas := 0;
    end;
    vlQtdBordas := 0;

    VNome := litopronome.AsString;

    vlCobraAdicional := 0;

    consulta.Close;
    consulta.SQL.Text := 'select sbrcobraadicional from sbr where procodigo=' + litoprocodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      vlCobraAdicional := consulta.Fields[0].AsInteger;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select sbrcobraadicional from sbr,grp where sbr.grpcodigo=grp.grpcodigo  and grp.grpcodigo=(select grpcodigo from pro where procodigo=' +
        litoprocodigo.AsString + ' LIMIT 1)';
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlCobraAdicional := consulta.Fields[0].AsInteger;
      end;

    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT uni.uninome, pun.punprecoav FROM pun, uni, pro ';
    consulta.SQL.Add('WHERE pro.procodigo = pun.procodigo  ');
    consulta.SQL.Add('AND uni.unicodigo = pun.unicodigo AND puncodigo = ' + litopuncodigo.AsString + ' ');
    consulta.SQL.Add('AND pun.unicodigo <> pro.unicodigo');
    consulta.Open;

    if consulta.IsEmpty then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT uni.uninome, pun.punprecoav FROM pun, uni, pro ';
      consulta.SQL.Add('WHERE pro.procodigo = pun.procodigo  ');
      consulta.SQL.Add('AND uni.unicodigo = pun.unicodigo AND puncodigo = ' + litopuncodigo.AsString + ' ');
      consulta.Open;

    end;

    if not consulta.IsEmpty then
      VNome := VNome + ' ' + consulta.Fields[0].AsString;

    vlValorUnit := consulta.Fields[1].AsCurrency;

    sbi.Close;
    sbi.Params[0].AsInteger := Self.litoitochave.AsInteger;
    sbi.Open;

    if not sbi.IsEmpty then
    begin
      vlAdicional := 0;
      while not sbi.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'select sbridentificacao from sbr where sbrcodigo=' + sbisbrcodigo.AsString;
        consulta.Open;

        while not consulta.Eof do
        begin
          if consulta.Fields[0].AsString <> VNome then
          begin
            isi.Close;
            isi.Params[0].AsInteger := sbisbichave.AsInteger;
            isi.Open;
          end;

          while not isi.Eof do
          begin
            if isiisitipo.AsInteger = 1 then
            begin
              if (isitsicodigo.AsInteger <> 1) AND (vlCobraAdicional <> 0) then
              begin
                vlAdicional := vlAdicional + (isipunprecoav.AsCurrency * isiisiquantidade.AsInteger);
              end;

            end;
            isi.Next;
          end;

          consulta.Next;
        end;

        sbi.Next;
      end;

      pbri.Close;
      pbri.Params[0].AsInteger := litoitochave.AsInteger;
      pbri.Open;

      if pbri.IsEmpty then
      begin
        vlTotalBordas := 0;
      end;

      vlQtdBordas := 0;

      pbri.First;
      while not pbri.Eof do
      begin
        vlQtdBordas := vlQtdBordas + 1;
        pbri.Next;
      end;

      pbri.First;
      while not pbri.Eof do
      begin
        vlBordas := vlBordas + ((pbri.FieldByName('punprecoav').AsCurrency / vlQtdBordas) * litoitoquantidade.AsFloat);
        pbri.Next;
      end;
      vlTotalBordas := vlTotalBordas + vlBordas;

    end
    else
    begin

      pbri.Close;
      pbri.Params[0].AsInteger := litoitochave.AsInteger;
      pbri.Open;

      if pbri.IsEmpty then
      begin
        vlTotalBordas := 0;
        vlTotalBordas := 0;
        vlBordas := 0;
      end;
      vlQtdBordas := 0;
      pbri.First;
      while not pbri.Eof do
      begin
        vlQtdBordas := vlQtdBordas + 1;
        pbri.Next;
      end;

      pbri.First;
      while not pbri.Eof do
      begin
        vlBordas := vlBordas + ((pbri.FieldByName('punprecoav').AsCurrency / vlQtdBordas) * litoitoquantidade.AsFloat);
        pbri.Next;
      end;
      vlTotalBordas := vlTotalBordas + vlBordas;
    end;

    vlValorTotalItem := vlBordas + ((vlValorUnit) * litoitoquantidade.AsFloat) - litoitodesconto.AsCurrency;

    if vlAdicional > 0 then
    begin
      vltotal := vltotal + vlBordas + ((vlValorUnit + ((vlAdicional / litoitoquantidade.AsFloat))) * litoitoquantidade.AsFloat) - litoitodesconto.AsCurrency;
    end
    else
    begin
      vltotal := vltotal + vlBordas + (vlValorUnit * litoitoquantidade.AsFloat) - litoitodesconto.AsCurrency;
    end;

    lito.Next;

  end;
  if (vlAdicional > 0) or (vlBordas > 0) then

  begin

    consulta.Close;
    consulta.SQL.Text := 'update ito set itoacrescimoav=' + BuscaTroca(Floattostr((vlAdicional) + vlBordas), ',', '.') + ' where itochave=' + litoitochave.AsString;
    consulta.ExecSQL;

    vpTotalAcrescimoav := vpTotalAcrescimoav + vlAdicional + vlBordas;
  end;
  vlAdicional := 0;

  lito.Next;

  vplValorLiquidoOp := vltotal;
  // recalculaTotal;
  erros.Lines.Add('finaliza monta texto  ' + datetimetostr(now()));

end;

procedure Tfprincinuc.RegistraAdicionaisGrp(vItoChave: Integer; vproCodigo: Integer; vQuantidade: Double = 1);
var
  vlsbiItem: Integer;
  vlisiItem: Integer;
  vlprocodigo: Integer;
  vlsbrcodigo: Integer;
begin
  erros.Lines.Add('inicia adicnonal do grupo  ' + datetimetostr(now()));

  consulta.Close;
  consulta.SQL.Text := 'select procodigo from ito where itochave=' + vItoChave.ToString;
  consulta.Open;
  vlprocodigo := consulta.FieldByName('procodigo').AsInteger;
  consulta.Close;

  sbrpro.Close;
  sbrpro.ParamByName('procodigo').AsInteger := vlprocodigo;
  sbrpro.Open;

  adiimppro.Close;
  adiimppro.ParamByName('procodigo').AsInteger := vproCodigo;
  adiimppro.Open;

  vlsbiItem := sbi.RecordCount + 1;

  vlsbrcodigo := 0;
  if sbrprosbrcodigo.AsInteger = 0 then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select sbrcodigo from sbi where itochave=' + vItoChave.ToString;
    consulta.Open;
    vlsbrcodigo := consulta.FieldByName('sbrcodigo').AsInteger;

  end;

  if (sbrprosbrcodigo.AsInteger <> 0) or (vlsbrcodigo <> 0) then
  begin

    sbi.Close;
    sbi.ParamByName('itochave').AsInteger := vItoChave;
    sbi.Open;

    sbi.Append;
    sbiitochave.AsInteger := vItoChave;
    if sbrprosbrcodigo.AsInteger <> 0 then
    begin
      sbisbrcodigo.AsInteger := sbrprosbrcodigo.AsInteger;
    end
    else if vlsbrcodigo <> 0 then
    begin
      sbisbrcodigo.AsInteger := vlsbrcodigo;
    end;

    sbisbiobs.AsString := '';
    sbisbiitem.AsInteger := vlsbiItem;
    sbi.Post;

    isiimp.Close;
    isiimp.ParamByName('sbichave').AsInteger := sbisbichave.AsInteger;
    isiimp.Open;
    vlisiItem := isiimp.RecordCount + 1;

    isiimp.Append;
    isiimpsbichave.AsInteger := sbisbichave.AsInteger;
    isiimptsicodigo.AsInteger := 3;
    isiimpprocodigo.AsInteger := vproCodigo;

    isiimpisitipo.AsInteger := 1;
    isiimpitochave.AsInteger := vItoChave;
    isiimpisiitem.AsInteger := vlisiItem;
    isiimpisiquantidade.AsFloat := vQuantidade;
    isiimpisiacrescimo.AsFloat := 0;

    isiimp.Post;

  end;
  erros.Lines.Add('finaliza adicnonal do grupo  ' + datetimetostr(now()));

end;

procedure Tfprincinuc.RegistraAdicionais(vItoChave: Integer; vproCodigo: Integer; vQuantidade: Double = 1; vvalor: Double = 0);
var
  vlsbiItem: Integer;
  vlisiItem: Integer;

  vlprocodigo: Integer;
  vlgrpcodigo: Integer;

begin
  erros.Lines.Add('inicia adicnonal ' + datetimetostr(now()));

  consulta.Close;
  consulta.SQL.Text := 'select procodigo from ito where itochave=' + vItoChave.ToString;
  consulta.Open;
  vlprocodigo := consulta.FieldByName('procodigo').AsInteger;
  consulta.Close;

  sbrpro.Close;
  sbrpro.ParamByName('procodigo').AsInteger := vlprocodigo;
  sbrpro.Open;

  if sbrpro.Locate('procodigo', proimpprocodigo.AsInteger, []) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select ito.procodigo, grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vItoChave.ToString;
    consulta.Open;
    vlprocodigo := consulta.FieldByName('procodigo').AsInteger;
    vlgrpcodigo := consulta.FieldByName('grpcodigo').AsInteger;

    adiimp.Close;
    adiimp.ParamByName('grpcodigo').AsInteger := proimpgrpcodigo.AsInteger;
    adiimp.Open;
    consulta.Close;

    adiimppro.Close;
    adiimppro.ParamByName('procodigo').AsInteger := vlprocodigo;
    adiimppro.Open;

    sbr.Close;
    sbr.ParamByName('grpcodigo').AsInteger := vlgrpcodigo;
    sbr.Open;

    vlsbiItem := sbi.RecordCount + 1;

    if adiimp.Locate('procodigo', vproCodigo, []) then
    begin
      { if adiimppro.Locate('procodigo', vproCodigo, []) then
        begin }

      sbi.Close;
      sbi.ParamByName('itochave').AsInteger := vItoChave;
      sbi.Open;

      sbi.Append;
      sbiitochave.AsInteger := vItoChave;
      sbisbrcodigo.AsInteger := sbrprosbrcodigo.AsInteger;
      sbisbiobs.AsString := '';
      sbisbiitem.AsInteger := vlsbiItem;
      sbi.Post;

      isiimp.Close;
      isiimp.ParamByName('sbichave').AsInteger := sbisbichave.AsInteger;
      isiimp.Open;
      vlisiItem := isiimp.RecordCount + 1;

      isiimp.Append;

      isiimpsbichave.AsInteger := sbisbichave.AsInteger;
      isiimptsicodigo.AsInteger := 3;
      isiimpprocodigo.AsInteger := vproCodigo;
      isiimpisitipo.AsInteger := 1;
      isiimpitochave.AsInteger := vItoChave;
      isiimpisiitem.AsInteger := vlisiItem;
      isiimpisiquantidade.AsFloat := vQuantidade;
      isiimpisiacrescimo.AsFloat := vvalor;

      isiimp.Post;

      { end; }
    end;
  end;
  erros.Lines.Add('final adicnonal  ' + datetimetostr(now()));

end;

{
  procedure Tfprincinuc.RegistraAdicionais(vItoChave: Integer; vproCodigo: Integer; vQuantidade: Double = 1);
  var
  vlsbiItem: Integer;
  vlisiItem: Integer;

  vlprocodigo: Integer;
  vlgrpcodigo: Integer;

  begin

  consulta.Close;
  consulta.SQL.Text := 'select ito.procodigo, grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vItoChave.ToString;
  consulta.Open;
  vlprocodigo := consulta.FieldByName('procodigo').AsInteger;
  vlgrpcodigo := consulta.FieldByName('grpcodigo').AsInteger;

  consulta.Close;

  adiimppro.Close;
  adiimppro.ParamByName('procodigo').AsInteger := vlprocodigo;
  adiimppro.Open;

  sbr.Close;
  sbr.ParamByName('grpcodigo').AsInteger := vlgrpcodigo;
  sbr.Open;

  vlsbiItem := sbi.RecordCount + 1;

  if adiimppro.Locate('procodigo', vproCodigo, []) then
  begin

  sbi.Close;
  sbi.ParamByName('itochave').AsInteger := vItoChave;
  sbi.Open;

  sbi.Append;
  sbiitochave.AsInteger := vItoChave;
  sbisbrcodigo.AsInteger := sbrsbrcodigo.AsInteger;
  sbisbiobs.AsString := '';
  sbisbiitem.AsInteger := vlsbiItem;
  sbi.Post;

  isiimp.Close;
  isiimp.ParamByName('sbichave').AsInteger := sbisbichave.AsInteger;
  isiimp.Open;
  vlisiItem := isiimp.RecordCount + 1;

  isiimp.Append;

  isiimpsbichave.AsInteger := sbisbichave.AsInteger;
  isiimptsicodigo.AsInteger := 3;
  isiimpprocodigo.AsInteger := adiimppro.FieldByName('procodigo').AsInteger;
  isiimpisitipo.AsInteger := 1;
  isiimpitochave.AsInteger := vItoChave;
  isiimpisiitem.AsInteger := vlisiItem;
  isiimpisiquantidade.AsFloat := vQuantidade;
  isiimpisiacrescimo.AsFloat := 0;

  isiimp.Post;

  end;

  end;
}

procedure Tfprincinuc.CarregaSabores(vproCodigo: string);
begin
  // ingredientes
  isa.Connection := Conexao;
  isa.SQL.Text := 'SELECT   sbrcodigo,  isa.procodigo,  pronome ';
  isa.SQL.Add('FROM isa, pro WHERE pro.procodigo = isa.procodigo ');
  isa.SQL.Add('AND isa.sbrcodigo = (SELECT sbrcodigo FROM sbr ');
  isa.SQL.Add('WHERE sbrcodigo =' + vproCodigo + ')');
  isa.Open;
end;

procedure Tfprincinuc.RegistraBorda(vItoChave: Integer; vbrdCodigo: Integer);
var
  vlgrpcodigo: Integer;

begin
  erros.Lines.Add('inicia borda  ' + datetimetostr(now()));

  consulta.Close;
  consulta.SQL.Text := 'select pro.grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vItoChave.ToString;
  consulta.Open;
  vlgrpcodigo := consulta.FieldByName('grpcodigo').AsInteger;
  consulta.Close;

  bgr.Close;
  bgr.Params[0].AsInteger := vlgrpcodigo;
  // bgr.FilterSQL := 'pun.puncodigo=' + vbrdCodigo.ToString;
  bgr.Open;

  if bgr.Locate('puncodigo', vbrdCodigo, []) then
  begin

    bri.Close;
    bri.Params[0].AsInteger := vItoChave;
    bri.Params[1].AsInteger := bgrbrdcodigo.AsInteger;
    bri.Open;

    if bri.IsEmpty then
      bri.Append
    else
      bri.Edit;

    briitochave.AsInteger := vItoChave;
    bribrdcodigo.AsInteger := bgrbrdcodigo.AsInteger;
    bribriincluir.AsInteger := 1;

    bri.Post;
  end;
  erros.Lines.Add('finaliza borda  ' + datetimetostr(now()));

end;

procedure Tfprincinuc.RegistraSabor(vItoChave: Integer; vSbrCodigo: Integer);
var
  vlsbiItem: Integer;
  vlisiItem: Integer;

  vlgrpcodigo: Integer;

begin
  erros.Lines.Add('inicia sabor  ' + datetimetostr(now()));

  consulta.Close;
  consulta.SQL.Text := 'select pro.grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vItoChave.ToString;
  consulta.Open;
  vlgrpcodigo := consulta.FieldByName('grpcodigo').AsInteger;
  consulta.Close;

  sbr.Close;
  sbr.ParamByName('grpcodigo').AsInteger := vlgrpcodigo;
  sbr.Open;

  vlsbiItem := sbi.RecordCount + 1;

  if sbr.Locate('sbrcodigo', vSbrCodigo, []) then
  begin

    sbi.Close;
    sbi.ParamByName('itochave').AsInteger := vItoChave;
    sbi.Open;

    sbi.Append;
    sbiitochave.AsInteger := vItoChave;
    sbisbrcodigo.AsInteger := sbrsbrcodigo.AsInteger;
    sbisbiobs.AsString := '';
    sbisbiitem.AsInteger := vlsbiItem;
    sbi.Post;

    CarregaSabores(vSbrCodigo.ToString);

    isa.First;
    while not isa.Eof do
    begin

      isiimp.Close;
      isiimp.ParamByName('sbichave').AsInteger := sbisbichave.AsInteger;
      isiimp.Open;

      vlisiItem := isiimp.RecordCount + 1;

      isiimp.Append;
      isiimpsbichave.AsInteger := sbisbichave.AsInteger;
      isiimptsicodigo.AsInteger := 3;
      isiimpprocodigo.AsInteger := isa.FieldByName('procodigo').AsInteger;
      isiimpisitipo.AsInteger := 0;
      isiimpitochave.AsInteger := vItoChave;
      isiimpisiitem.AsInteger := vlisiItem;
      isiimpisiquantidade.AsInteger := 1;
      isiimpisiacrescimo.AsFloat := 0;

      isiimp.Post;

      isa.Next;
    end;
  end;
  erros.Lines.Add('finaliza borda  ' + datetimetostr(now()));

end;

procedure Tfprincinuc.ProcessaItens;
var
  i, a, n: Integer;
  vlLinha: string;
  vlTipoLinha: string;
  vlTexto: string;
  vlGrupo: string;

  vlProduto: string;
  vlProdutoObs: string;
  vlTamanho: string;
  vlItemValor: string;
  vlBorda: string;
  vlQuantidade: string;
  vlBordas: string;
  vlObsItem: string;
  vlNomeAdicional: string;
  vlValorAdicional: string;
  vlItoChave: Integer;
  vlsbiItem: Integer;
  vlisiItem: Integer;
  vlLinhaAdicional: string;
  vlProdutoValor: string;

  vlQtdTotRegistros: Integer;
  vliRegistro: Integer;

  vlItemRegistro: TRegistros;
  vlRegistroTitulo: string;

  vlQtdTotConjuntos: Integer;
  vliConjunto: Integer;

  vlItemConjuntos: TConjuntos;
  vlItemConjunto: TConjuntosProduto;

  vlConjuntoTitulo: string;

  vlItemProduto: TConjuntosProdutos;
  vlRegistro: TRegistros;

  vlQtdTotProdutos: Integer;
  vliProduto: Integer;

  x: string;
  k: Integer;

  vlPunCodigo: string;
  ProcessoIdentificado: Boolean;

  vlTemSabores: Boolean; // pizza
  vlTemBordas: Boolean; // pizza
  vlTemTamanhos: Boolean; // pizza
  vlTemAdicionais: Boolean; // pizza

  vlTemSabor: Boolean; // LANCHES, SUCOS
  vlTemAdicional: Boolean; // LANCHES, SUCOS , AÇAI , ALACARTE
  vlTemTamanho: Boolean; // AÇAI, SUCOS, A LACARTE

  vlAdicionaisdoGrupo: Boolean;

  vlTipoConjunto: string;

  vlgrpcodigo: string;

begin
  erros.Lines.Add('inicia itens cadastro   ' + datetimetostr(now()));

  vlItoChave := 0;

  proimp.Close;
  proimp.Open;


  // registra pedido  unico
  // ---registra produdos unico

  // -------registros varios
  // -----------conjuntos varios
  // ---------------produtos varios

  vlQtdTotRegistros := vpListaRegistros.Count - 1;

  for vliRegistro := 0 to vlQtdTotRegistros do
  begin
    erros.Lines.Add('inicia itens   ' + datetimetostr(now()));

    vlRegistro := (vpListaRegistros[vliRegistro] as TRegistros);

    vlRegistroTitulo := vlRegistro.titulo;

    vlQuantidade := RemoveAspas(vlRegistro.quantidade);
    vlQuantidade := StringReplace(vlQuantidade, ',', '', [rfReplaceAll, rfIgnoreCase]);
    vlQuantidade := StringReplace(vlQuantidade, '.', ',', [rfReplaceAll, rfIgnoreCase]);

    vlPunCodigo := RemoveAspas(vlRegistro.Fsku);

    if (vlPunCodigo = '0') or (vlPunCodigo = '') then // tem conjuntos internos
    begin

      vlQtdTotConjuntos := (vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos.Count - 1;

      if vlQtdTotConjuntos = -1 then
      begin

      end;

      for vliConjunto := 0 to vlQtdTotConjuntos do
      begin

        vlItemConjuntos := ((vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos[vliConjunto] as TConjuntos);

        x := vlItemConjuntos.Ftitulo;
        vlPunCodigo := RemoveAspas(vlItemConjuntos.Fsku);

        if (vlPunCodigo = '') or (vlPunCodigo = '0') then
        begin

          vlQtdTotProdutos := vlItemConjuntos.FListaProdutos.Count - 1;

          x := vlItemConjuntos.Ftitulo;
          vlPunCodigo := RemoveAspas(vlItemConjuntos.Fsku);

          if vlQtdTotConjuntos > -1 then
          begin

            if (vlPunCodigo = '') or (vlPunCodigo = '0') then
            begin

              for vliProduto := 0 to vlQtdTotProdutos do
              begin
                vlItemProduto := vlItemConjuntos.FListaProdutos.Items[vliProduto] as TConjuntosProdutos;

                vlPunCodigo := RemoveAspas(vlItemProduto.Fsku);
                if (vlPunCodigo = '') or (vlPunCodigo = '0') then
                begin

                  x := vlItemProduto.Ftitulo;

                  n := vlItemProduto.FConjuntosProduto.Count - 1;

                  for k := 0 to n do
                  begin

                    vlItemConjunto := vlItemProduto.FConjuntosProduto.Items[k] as TConjuntosProduto;

                    x := vlItemConjunto.Ftitulo;

                    vlPunCodigo := RemoveAspas(vlItemConjunto.Fsku);

                    vlAdicionaisdoGrupo := False;
                    vlItemValor := '0';
                    if (proimp.Locate('puncodigo', vlPunCodigo, [])) and (nuctpo.Locate('nuctpoidentificacao', vlItemConjuntos.Ftitulo, [locaseinsensitive]) = False) then
                    begin

                      if vlQuantidade = '1' then
                      begin

                        vlQuantidade := RemoveAspas(vlItemConjunto.Fquantidade);
                        vlQuantidade := StringReplace(vlQuantidade, ',', '', [rfReplaceAll, rfIgnoreCase]);
                        vlQuantidade := StringReplace(vlQuantidade, '.', ',', [rfReplaceAll, rfIgnoreCase]);
                      end;

                      vlItemValor := RemoveAspas(vlItemConjunto.Fvalor);
                      vlItemValor := StringReplace(vlItemValor, ',', '', [rfReplaceAll, rfIgnoreCase]);
                      vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

                      vlObsItem := vlRegistro.Observacao;
                      erros.Lines.Add('inicia gravaçao item   ' + datetimetostr(now()));

                      vlItoChave := IncluirNovoItemImportado(proimpprocodigo.AsInteger, proimppuncodigo.AsInteger, -1, strtofloat(vlQuantidade), vlBordas, vlObsItem,
                        strtofloat(vlItemValor));
                      erros.Lines.Add('finaliza gravaçao item  ' + datetimetostr(now()));

                    end
                    else
                    begin

                      consulta.Close;
                      consulta.SQL.Text := 'select pro.grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vlItoChave.ToString;
                      consulta.Open;
                      vlgrpcodigo := consulta.FieldByName('grpcodigo').AsString;
                      consulta.Close;

                      adigrp.Close;
                      adigrp.ParamByName('grpcodigo').AsString := vlgrpcodigo;
                      adigrp.Open;

                      if adigrp.Locate('procodigo', vlPunCodigo, []) then
                      begin
                        vlAdicionaisdoGrupo := True;
                      end;

                      if nuctpo.Locate('nuctpocodigo', vlPunCodigo, []) then
                      begin
                        ProcessoIdentificado := True;
                        erros.Lines.Add('Sem código do SKU, -  ' + vlItemConjuntos.Ftitulo);
                      end
                      else if nuctpo.Locate('nuctpoidentificacao', vlItemConjuntos.Ftitulo, [locaseinsensitive]) then
                      begin
                        vlTipoConjunto := uppercase(nuctponuctpoprocesso.AsString);
                      end
                      else
                      begin
                        erros.Lines.Add('Verificar -  ' + vlItemConjuntos.Ftitulo);
                        vlTipoConjunto := '';
                      end;

                      vlItemValor := vlItemConjunto.valor;
                      vlItemValor := RemoveAspas(vlItemValor);
                      vlItemValor := StringReplace(vlItemValor, ',', '', []);
                      vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

                      if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'adicionais') or ((vlTipoConjunto = 'ADICIONAL')) then
                      begin

                        if vlPunCodigo = '' then
                        begin
                          erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                        end
                        else
                        begin
                          if vlAdicionaisdoGrupo then
                          begin
                            RegistraAdicionaisGrp(vlItoChave, StrToInt(vlPunCodigo), strtofloat(vlQuantidade));

                          end
                          else
                          begin
                            RegistraAdicionais(vlItoChave, StrToInt(vlPunCodigo), strtofloat(vlQuantidade), vlItemValor.ToDouble);
                          end;
                        end;
                      end
                      else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'escolha os sabores') or ((vlTipoConjunto = 'SABORES')) then
                      begin
                        if vlPunCodigo = '' then
                        begin
                          erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                        end
                        else
                        begin
                          RegistraSabor(vlItoChave, StrToInt(vlPunCodigo));
                        end;
                      end

                      else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'escolha o sabor') or ((vlTipoConjunto = 'SABORES')) then
                      begin
                        if vlPunCodigo = '' then
                        begin
                          erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                        end
                        else
                        begin
                          RegistraSabor(vlItoChave, StrToInt(vlPunCodigo));
                        end;
                      end

                      else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'borda recheada') OR ((vlTipoConjunto = 'BORDAS')) then
                      begin
                        if vlPunCodigo = '' then
                        begin
                          erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                        end
                        else
                        begin
                          RegistraBorda(vlItoChave, StrToInt(vlPunCodigo));
                        end;
                      end
                      else
                      begin
                        erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');

                      end;

                    end;
                  end;

                end
                else
                begin
                  if proimp.Locate('puncodigo', vlPunCodigo, []) then
                  begin

                    vlQuantidade := RemoveAspas(vlItemProduto.Fquantidade);
                    vlItemValor := RemoveAspas(vlItemProduto.Fvalor);
                    vlItemValor := StringReplace(vlItemValor, ',', '', [rfReplaceAll, rfIgnoreCase]);
                    vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

                  end;

                end;

              end;
            end;
          end
          else
          begin
            if proimp.Locate('puncodigo', vlPunCodigo, []) then
            begin

              vlQuantidade := RemoveAspas(vlItemConjuntos.Fquantidade);
              vlItemValor := RemoveAspas(vlItemConjuntos.Fvalor);
              vlItemValor := StringReplace(vlItemValor, ',', '', [rfReplaceAll, rfIgnoreCase]);
              vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

            end;
          end;

        end
        else
        begin

          if proimp.Locate('puncodigo', vlPunCodigo, []) then
          begin

            vlQuantidade := RemoveAspas(vlItemConjuntos.Fquantidade);
            vlItemValor := RemoveAspas(vlItemConjuntos.Fvalor);
            vlItemValor := StringReplace(vlItemValor, ',', '', [rfReplaceAll, rfIgnoreCase]);
            vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

          end;
        end;
      end;

    end
    else
    begin

      if (proimp.Locate('puncodigo', vlPunCodigo, [])) then
      begin

        vlQuantidade := RemoveAspas(vlRegistro.Fquantidade);
        vlItemValor := RemoveAspas(vlRegistro.Fvalor);
        vlItemValor := StringReplace(vlItemValor, ',', '', []);
        vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

        vlObsItem := vlRegistro.Observacao;

        vlQtdTotConjuntos := (vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos.Count - 1;

        vlItoChave := IncluirNovoItemImportado(proimpprocodigo.AsInteger, proimppuncodigo.AsInteger, -1, strtofloat(vlQuantidade), vlBordas, vlObsItem, strtofloat(vlItemValor));

        // MontaTextoPedido;

        vlQtdTotConjuntos := (vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos.Count - 1;

        if vlQtdTotConjuntos > -1 then
        begin

          for vliConjunto := 0 to vlQtdTotConjuntos do
          begin
            vlItemConjuntos := ((vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos[vliConjunto] as TConjuntos);

            x := vlItemConjuntos.Ftitulo;
            vlPunCodigo := RemoveAspas(vlItemConjuntos.Fsku);

          end;

          if vlItoChave > -1 then
          begin

            consulta.Close;
            consulta.SQL.Text := 'select pro.grpcodigo from ito,pro where ito.procodigo=pro.procodigo and itochave=' + vlItoChave.ToString;
            consulta.Open;
            vlgrpcodigo := consulta.FieldByName('grpcodigo').AsString;
            consulta.Close;

            adigrp.Close;
            adigrp.ParamByName('grpcodigo').AsString := vlgrpcodigo;
            adigrp.Open;

            if adigrp.Locate('procodigo', vlPunCodigo, []) then
            begin
              vlAdicionaisdoGrupo := True;
            end;

            for vliConjunto := 0 to vlQtdTotConjuntos do
            begin

              vlItemConjuntos := ((vpListaRegistros.Items[vliRegistro] as TRegistros).FConjuntos[vliConjunto] as TConjuntos);

              if nuctpo.Locate('nuctpocodigo', vlPunCodigo, []) then
              begin
                ProcessoIdentificado := True;
                vlTipoConjunto := uppercase(nuctponuctpoprocesso.AsString);
              end
              else if nuctpo.Locate('nuctpoidentificacao', vlItemConjuntos.titulo, [locaseinsensitive]) then
              begin
                vlTipoConjunto := uppercase(nuctponuctpoprocesso.AsString);
                erros.Lines.Add('SEM SKU -  ' + vlItemConjuntos.Ftitulo);
              end
              else
              begin
                vlTipoConjunto := '';
                erros.Lines.Add('Verificar -  ' + vlItemConjuntos.Ftitulo);
              end;

              x := vlItemConjuntos.Ftitulo;

              vlQtdTotProdutos := vlItemConjuntos.FListaProdutos.Count - 1;

              for vliProduto := 0 to vlQtdTotProdutos do
              begin
                vlItemProduto := vlItemConjuntos.FListaProdutos.Items[vliProduto] as TConjuntosProdutos;

                x := vlItemProduto.Ftitulo;

                n := vlItemProduto.FConjuntosProduto.Count - 1;

                for k := 0 to n do
                begin

                  vlItemConjunto := vlItemProduto.FConjuntosProduto.Items[k] as TConjuntosProduto;

                  x := vlItemConjunto.titulo;
                  vlPunCodigo := RemoveAspas(vlItemConjunto.Fsku);

                  { if nuctpo.Locate('nuctpocodigo', vlPunCodigo, []) then
                    begin
                    ProcessoIdentificado := True;
                    vlTipoConjunto := uppercase(nuctponuctpoprocesso.AsString);
                    end
                    else if nuctpo.Locate('nuctpoidentificacao', vlItemConjuntos.titulo, [locaseinsensitive]) then
                    begin
                    vlTipoConjunto := uppercase(nuctponuctpoprocesso.AsString);
                    erros.Lines.Add('SEM SKU -  ' + vlItemConjuntos.Ftitulo);
                    end
                    else
                    begin
                    vlTipoConjunto := '';
                    erros.Lines.Add('Verificar -  ' + vlItemConjuntos.Ftitulo);
                    end; }




                  // nuctpo.Locate('nuctpocodigo', vlPunCodigo, []);

                  vlItemValor := vlItemConjunto.valor;
                  vlItemValor := RemoveAspas(vlItemValor);
                  vlItemValor := StringReplace(vlItemValor, ',', '', []);
                  vlItemValor := StringReplace(vlItemValor, '.', ',', [rfReplaceAll, rfIgnoreCase]);

                  if vlQuantidade = '' then
                  begin

                    vlQuantidade := RemoveAspas(vlItemConjunto.Fquantidade);
                    vlQuantidade := StringReplace(vlQuantidade, ',', '', [rfReplaceAll, rfIgnoreCase]);
                    vlQuantidade := StringReplace(vlQuantidade, '.', ',', [rfReplaceAll, rfIgnoreCase]);
                  end;

                  if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'escolha o sabor') or ((vlTipoConjunto = 'SABORES')) then
                  begin
                    if vlPunCodigo = '' then
                    begin
                      erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                    end
                    else
                    begin
                      RegistraSabor(vlItoChave, StrToInt(vlPunCodigo));
                    end;
                  end
                  else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'escolha os sabores') or ((vlTipoConjunto = 'SABORES')) then
                  begin
                    if vlPunCodigo = '' then
                    begin
                      erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                    end
                    else
                    begin
                      RegistraSabor(vlItoChave, StrToInt(vlPunCodigo));
                    end;
                  end
                  else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'borda recheada') OR ((vlTipoConjunto = 'BORDAS')) then
                  begin
                    if vlPunCodigo = '' then
                    begin
                      erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                    end
                    else
                    begin
                      RegistraBorda(vlItoChave, StrToInt(vlPunCodigo));
                    end;
                  end
                  else if (lowercase(RemoveAspas(vlItemConjuntos.Ftitulo)) = 'adicionais') or ((vlTipoConjunto = 'ADICIONAL')) then
                  begin

                    if vlPunCodigo = '' then
                    begin
                      erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                    end
                    else
                    begin
                      if vlAdicionaisdoGrupo then
                      begin
                        RegistraAdicionaisGrp(vlItoChave, StrToInt(vlPunCodigo), strtofloat(vlQuantidade));

                      end
                      else
                      begin
                        RegistraAdicionais(vlItoChave, StrToInt(vlPunCodigo), strtofloat(vlQuantidade), vlItemValor.ToDouble);
                      end;
                    end;
                  end
                  else
                  begin
                    erros.Lines.Add(vlItemConjunto.Ftitulo + ' sem sku');
                  end;



                  // MontaTextoPedido;

                end;

              end;

            end;
          end;
        end;

      end;

    end;

    MontaTextoPedido;

  end;

end;

procedure Tfprincinuc.FinalizarProcessoImportacao;
var
  vlCcxChave: string;
  vlMeschave: string;
  vlOriCodigo: string;
  vlEtdOrigem: string;
begin

  // ActFinalizaVenda.Execute;
  consulta.Close;
  consulta.SQL.Text := 'SELECT ccx.ccxchave ' + '  FROM ccx,ctr ' + '  WHERE ctr.ctacodigo=ccx.ctacodigo and  ccx.clbcodigo = ' + inttostr(clbclbcodigo.AsInteger) +
    ' AND ccx.ccxdatafecha IS null ' + ' ORDER BY ccx.ccxchave DESC LIMIT 1';

  consulta.Open;

  vlCcxChave := consulta.Fields[0].AsString;

  if vlCcxChave = '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT ccx.ccxchave ' + '  FROM ccx,ctr ' + '  WHERE ctr.ctacodigo=ccx.ctacodigo and ' + '  ccx.ccxdatafecha IS null ' +
      ' ORDER BY ccx.ccxchave DESC LIMIT 1';

    consulta.Open;

    vlCcxChave := consulta.Fields[0].AsString;

  end;

  if vlCcxChave <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'update orc set ccxchave=' + vlCcxChave + ', stocodigo=' + inttostr(3) + ' where orcchave=' + vpOrcChave;
    consulta.ExecSQL;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update ito set stocodigo=' + inttostr(3) + ' where orcchave=' + vpOrcChave + ' and stocodigo<>88';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'update imm set cznchave=' + vpCznChave + ' where itochave in (select itochave from ito where stocodigo=' + inttostr(3) + ' and orcchave=' + vpOrcChave +
    ' and stocodigo<>88)';
  consulta.ExecSQL;

  orcnuc.Edit;
  orcnucstocodigo.AsInteger := 3;
  orcnucpdscodigo.AsInteger := 2;
  orcnucoricodigo.AsString := '7';
  orcnuc.Post;
  { if vpTeclaFinalizador = 121 then
    vlMeschave := ProcessaVendas(vpOrcChave, True)
    else
    vlMeschave := ProcessaVendas(vpOrcChave, false);

    orc.Edit;
    orcstocodigo.AsInteger := 3;
    orcpdscodigo.AsInteger := 2;
    orcoricodigo.AsString := '8';
    orc.Post;

    AtualizaSituacaoItens(vpOrcChave, 3, '00');

    Finaliza(vlMeschave); }

  if vpTeclaFinalizador = 120 then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select oricodigo from mes where meschave=' + vlMeschave;
    consulta.Open;

    vlOriCodigo := trim(consulta.FieldByName('oricodigo').AsString);

    if (vlOriCodigo <> '0') and (vlOriCodigo <> '') then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo from ori where oricodigo=' + vlOriCodigo;
      consulta.Open;

      vlEtdOrigem := trim(consulta.FieldByName('etdcodigo').AsString);

      if (vlEtdOrigem <> '0') and (vlEtdOrigem <> '') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update tit, rfi, rfm set tit.etdcodigo=' + vlEtdOrigem + ' where tit.titcodigo=rfi.titcodigo and rfi.rfichave=rfm.rfichave and rfm.meschave=' +
          vlMeschave;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update rfi, rfm set rfi.etdcodigo=' + vlEtdOrigem + ' where rfi.rfichave=rfm.rfichave and rfm.meschave=' + vlMeschave;
        consulta.ExecSQL;

      end;

    end;

  end;

end;

procedure Tfprincinuc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tfprincinuc.FormShow(Sender: TObject);
begin
  tmInicializar.Enabled := True;

end;

procedure Tfprincinuc.IncluiValorEntrega(vlEtdCodigo, vlEdrCodigo: string);
var
  qIto: TUniQuery;
  vlItoChave: Integer;
  qImm: TUniQuery;
  vlTcicodigo: String;

begin

  if (vlEdrCodigo <> '') and (vlEtdCodigo <> '') then
  begin

    if lito.Active then
    begin

      if litoorcchave.AsString <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from ito where procodigo in (select procodigo from bai) and orcchave=' + litoorcchave.AsString;
        consulta.ExecSQL;
      end;
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT pun.punprecoav, bai.procodigo, bai.baiidentificacao, pun.puncodigo,pun.unicodigo, ';
    consulta.SQL.Add('edr.etdcodigo, edr.edritem FROM bai ');
    consulta.SQL.Add('INNER JOIN pro ON bai.procodigo = pro.procodigo ');
    consulta.SQL.Add('INNER JOIN pun ON pun.procodigo = pro.procodigo ');
    consulta.SQL.Add('RIGHT OUTER JOIN edr ON upper(edr.edrbairro) = upper(bai.baiidentificacao) ');
    consulta.SQL.Add('where edr.etdcodigo=' + vlEtdCodigo + ' and edr.edrcodigo=' + vlEdrCodigo);
    consulta.Open;

    if consulta.IsEmpty then
      exit;

    if consulta.FieldByName('procodigo').AsString = '' then
      exit;

    try
      qIto := TUniQuery.Create(Self);
      qIto.Name := 'qIto' + vlEtdCodigo;
      qIto.Connection := Conexao;
      qIto.SQL.Text := 'SELECT itochave, orcchave, procodigo, puncodigo, unicodigo, stocodigo, ';
      qIto.SQL.Add('tdecodigo, itoquantidade, itovalorav, itodescontoav, itototalav, itosaldoav, ');
      qIto.SQL.Add('itovalorap, itodescontoap, itototalap, itosaldoap, itocontendo,  itoproservico, ');
      qIto.SQL.Add('itoprocomple, itodataalter, itoitem, itogint, itopercdescap,  itopercdescav, ');
      qIto.SQL.Add(' itoinfadprod, itoquanticondi, itoquantidevolcondi, vrpcodigo FROM ito limit 0');
      qIto.Open;
      qIto.Append;

      qIto.FieldByName('orcchave').AsString := litoorcchave.AsString;
      qIto.FieldByName('procodigo').AsString := consulta.FieldByName('procodigo').AsString;
      qIto.FieldByName('puncodigo').AsString := consulta.FieldByName('puncodigo').AsString;
      qIto.FieldByName('unicodigo').AsString := consulta.FieldByName('unicodigo').AsString;
      qIto.FieldByName('stocodigo').AsString := '1';
      qIto.FieldByName('tdecodigo').AsString := '0';
      qIto.FieldByName('itoquantidade').AsString := '1';
      qIto.FieldByName('itovalorav').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itodescontoav').AsString := '0';
      qIto.FieldByName('itototalav').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itosaldoav').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itovalorap').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itodescontoap').AsString := '0';
      qIto.FieldByName('itototalap').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itosaldoap').AsString := consulta.FieldByName('punprecoav').AsString;
      qIto.FieldByName('itocontendo').AsString := '1';
      qIto.FieldByName('itoproservico').AsString := '';
      qIto.FieldByName('itoprocomple').AsString := '';
      qIto.FieldByName('itoitem').AsString := '0';
      qIto.FieldByName('itopercdescap').AsString := '0';
      qIto.FieldByName('itopercdescav').AsString := '0';
      qIto.FieldByName('itoquanticondi').AsString := '0';
      qIto.FieldByName('itoquantidevolcondi').AsString := '0';

      qIto.Post;
      vlItoChave := qIto.FieldByName('itochave').AsInteger;

      consulta.Close;
      consulta.SQL.Text := 'SELECT gri.tcicodigo, gri.griminuretardo FROM gri ';
      consulta.SQL.Add('inner JOIN pro ON gri.grpcodigo = pro.grpcodigo ');
      consulta.SQL.Add('and pro.procodigo=' + qIto.FieldByName('procodigo').AsString);
      consulta.Open;
      vlTcicodigo := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := ' insert into imm (immchave, itochave, immmodo, immhorapedido, cznchave, clbcodigo,tcicodigo, immnumepedido ) values (@chave,  ' + inttostr(vlItoChave) +
        ',9,now(),' + vpCznChave + ',' + clbclbcodigo.AsString + ',' + vlTcicodigo + ',' + vpImmNumePedido + ')';
      consulta.ExecSQL;

      recalculaTotal;

    finally
      freeandnil(qIto);
    end;

  end
  else
  begin

  end;
end;

procedure Tfprincinuc.AjustaSituacaoito(vstocodigo: string; vOrcChave: string);
begin

  consulta.Close;
  consulta.SQL.Text := 'update ito set stocodigo=' + vstocodigo + ' where orcchave=' + vOrcChave + ' and stocodigo<>88';
  consulta.ExecSQL;
end;

procedure Tfprincinuc.AjustaHoraImprimir(vOrcChave: string);
var
  vlItoChave: string;
  vlAgoraServer: string;
  vlprocodigo: string;
  vlMaiorTempo: Integer;
  vlSegundos: Integer;
  vlhoraImprimir: Tdatetime;
  vlshoraImprimir: String;
begin

  immimp.Close;
  immimp.Params[0].AsString := vpImmNumePedido;
  immimp.Params[1].AsString := vpCznChave;
  immimp.Open;

  while not immimp.Eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'select procodigo from ito, imm where imm.itochave=ito.itochave and imm.immchave=' + immimpimmchave.AsString;
    consulta.Open;
    vlprocodigo := consulta.Fields[0].AsString;

    immimp.Edit;

    consulta.Close;
    consulta.SQL.Text := 'SELECT gri.tcicodigo, gri.griminuretardo FROM gri ';
    consulta.SQL.Add('INNER JOIN pro ON gri.grpcodigo = pro.grpcodigo');
    consulta.SQL.Add(' and pro.procodigo=' + vlprocodigo);
    consulta.Open;

    vlAgoraServer := datetimetostr(now());
    immimpimmtemporetardo.AsInteger := consulta.Fields[1].AsInteger;

    try

      immimpimmhoraimprimir.AsString := datetimetostr(strtodatetime(vlAgoraServer));

    except
      immimpimmhoraimprimir.AsString := datetimetostr(strtodatetime(vlAgoraServer));
    end;

    immimp.Post;

    immimp.Next;
  end;
  vlMaiorTempo := 0;

end;

Procedure Tfprincinuc.AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
begin
  if Situacao = 4 then
    exit;

  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.Add('UPDATE ito SET ito.tdfcodigo=' + QuotedStr(TipoDocumento) + ' ,ito.stocodigo = ' + inttostr(Situacao) + ' ');
  consulta.SQL.Add('WHERE ito.stocodigo IN (' + inttostr(1) + ', ');
  consulta.SQL.Add(inttostr(2) + ', ');
  consulta.SQL.Add(inttostr(5) + ',  ');
  consulta.SQL.Add(inttostr(3) + ') ');
  consulta.SQL.Add('AND ito.orcchave=' + ChaveOrc);
  consulta.ExecSQL;
end;

function Tfprincinuc.ProcessaVendas(vOrcChave: string; vAFaturar: Boolean = False): string;
var
  Processa: TProcessaOrc;
  vlPackopm: cardinal;
  vmeschave: String;
  vlOrcchave: string;
  Acesso: TAcesso;
begin

  // ACESSO.IdAcesso:=
  Acesso.usuario := clbclbcodigo.AsInteger;
  Acesso.Filial := 1;
  Acesso.Terminal := 1;

  vmeschave := '';
  vlOrcchave := vOrcChave;

  vlPackopm := LoadPackage('modulos\mopm.bpl');
  If vlPackopm <> 0 Then
    Try
      @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

      If Assigned(Processa) Then
      Begin
        vmeschave := '0';
        vmeschave := Processa(Application, Conexao, vlOrcchave, Acesso, vAFaturar);
      End;
    Finally
      // DoUnLoadPackage(Pack);
    End;

  If (vmeschave <> '0') and (vmeschave <> '') Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update orc set stocodigo=' + inttostr(3) + ' where orcchave=' + vlOrcchave;
    consulta.ExecSQL;

    AtualizaSituacaoItens(vlOrcchave, 3, '00');

  End;

  result := vmeschave;

end;

Procedure Tfprincinuc.SalvaColabItens(clbcodigo: string);
Begin
  If Not ioc.Active Then
    ioc.Open;

  lito.DisableControls;
  lito.First;

  While Not lito.Eof Do
  Begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT clbcodigo, clbidentificacao, clbperccomissao FROM clb WHERE  fnccodigo in (4,5) and clbcodigo = ' + clbcodigo;
    consulta.Open;

    if not consulta.IsEmpty then
    begin

      ioc.Append;
      iocclbcodigo.AsString := clbcodigo;
      iocitochave.AsInteger := litoitochave.AsInteger;
      iociocpercentual.AsFloat := 100;
      ioc.Post;
    end;

    lito.Next;
  End;
  lito.First;
  lito.EnableControls;
End;

Function Tfprincinuc.Finaliza(Vchave: String): String;
Var
  vlRegistra: Tregistralotedatagourmet;

  Vpri: String;
  Vjur: String;
  vMulta: String;
  Vdes: String;
  vPodeConvenio: Boolean;

  // vConfiguracoesTEF: TConfiguracoesTEF;

  vlPacklte: cardinal;
  vlTotalBruto: Double;

  vlCcxChave: Integer;
  vldia: TDate;
  vlTeclaFinalizador: Integer;
  vlValorFinalizador: Double;
  vlCtaCodigo: string;
  Acesso: TAcesso;

Begin
  Acesso.usuario := clbclbcodigo.AsInteger;
  Acesso.Filial := 1;
  Acesso.Terminal := 1;

  If not orcnuc.Active Then
    exit;

  if lito.IsEmpty then
    exit;



  // VpEtdCancelado - Identifica se usuário Cancelou lista de clientes

  vlPacklte := LoadPackage('modulos\mlte.bpl');

  If vlPacklte <> 0 Then
    Try
      @vlRegistra := GetProcAddress(vlPacklte, PChar('registralotedatagourmet'));
      If Assigned(vlRegistra) Then
      Begin
        vlTotalBruto := Self.orcnucorcgeralav.AsCurrency; // + vpTotalAcrescimoav;
        Vpri := BuscaTroca(Floattostr(vlTotalBruto), ',', '.');
        Vdes := BuscaTroca(Self.orcnucorcdescontoav.AsString, ',', '.');
        Vjur := '0';
        vMulta := '0';

        if vPetdcodigo = '0' then
          vPodeConvenio := False
        else
          vPodeConvenio := True;

        vlCtaCodigo := cfgcfgmgouctadelivery.AsString;

        consulta.Close;
        consulta.SQL.Text := 'SELECT ccx.ccxchave , ccx.ccxdataber , ccx.ccxhoraaber, clb.clbidentificacao FROM ccx ';
        consulta.SQL.Add('INNER JOIN clb ON ccx.clbcodigo = clb.clbcodigo ');
        consulta.SQL.Add('WHERE ccx.ctacodigo = ' + vlCtaCodigo + ' ');
        consulta.SQL.Add('AND ccx.ccxdatafecha IS NULL order by ccxchave desc limit 1');
        consulta.Open;

        vlCcxChave := consulta.FieldByName('ccxchave').AsInteger;

        vldia := strtodate(Copy(vpPedido.created_at, 1, 9));

        consulta.Close;
        consulta.SQL.Text := 'select etdcodigo, orcgeralav, orcdescontoav, orctotalav, clbentregador, orcobs from orc where orcchave=' + vpOrcChave;
        consulta.Open;

        vlTeclaFinalizador := 0;
        if not consulta.IsEmpty then
        begin

          if pos(uppercase('Dinheiro'), uppercase(consulta.FieldByName('orcobs').AsString)) > 0 then
          begin
            vlTeclaFinalizador := 117; // F6
          end
          else if pos(uppercase('Levar máquina de Cartão - DÉBITO'), uppercase(consulta.FieldByName('orcobs').AsString)) > 0 then
          begin
            vlTeclaFinalizador := 115; // F4
          end
          else if pos(uppercase('Levar máquina de Cartão - CRÉDITO'), uppercase(consulta.FieldByName('orcobs').AsString)) > 0 then
          begin
            vlTeclaFinalizador := 114; // F3
          end
          else if pos(uppercase('Vai Assinar'), uppercase(consulta.FieldByName('orcobs').AsString)) > 0 then
          begin
            vlTeclaFinalizador := 120; // F9
          end
          else if pos(uppercase('A Faturar'), uppercase(consulta.FieldByName('orcobs').AsString)) > 0 then
          begin
            vlTeclaFinalizador := 121
          end;
        end;

        if (Vpri = '0') and (Vdes > '0') then
        begin
          Vpri := Vdes;
        end;

        result := vlRegistra(Application, Conexao, Vchave, '1', Vpri, vMulta, Vjur, Vdes, Acesso, inttostr(32), vldia, vPodeConvenio, vlTeclaFinalizador, vpValorFinalizador, True,
          StrToInt(vlCtaCodigo), False, True, vlCcxChave);

      End;
    Finally
      UnLoadPackage(vlPacklte);
    End;

End;

procedure Tfprincinuc.ProcessarPedido;
var
  i: Integer;
  vlLinha: string;
  vlSubtotal: string;
  vlTaxaEntrega: string;
  vlDesconto: string;
  vlVoucherDesconto: string;
  vlVoucher: string;
  vltotal: string;
  vlTipoFinalizador: string;
  VlTroco: string;
  vlMeschave: string;

  vlFormaPagto: string;
  vlTrocoPara: string;
  vlHora: string;
  vlCcxChave: string;
  vlOriCodigo: string;
  vlEtdOrigem: string;
  vlEtddoc1: string;
  vlOrcobs: string;
  vledrreferencia: string;
  x: string;
  vliCPF: Integer;
  vliRetira: Integer;

  vlQtdTotRegistros: Integer;

begin

  proimp.Close;
  proimp.Open;

  vpNrPedidoNuc := '';
  vPetdcodigo := '';
  vPetdidentificacao := '';
  vPedrcodigo := '';
  vPedrrua := '';
  vPedrnumero := '';
  vPetfcodigo := '';
  vPetftelefone := '';
  vPedrbairro := '';
  vpEdrComplemento := '';
  vpHoraPedido := '';

  vlMeschave := '';
  vlDesconto := '';
  vlFormaPagto := '';
  vlTrocoPara := '';
  vlHora := '';
  vlCcxChave := '';
  vlOriCodigo := '';
  vlEtddoc1 := '';
  vlOrcobs := '';
  vledrreferencia := '';
  vlDesconto := '0';
  vliCPF := 0;
  vliRetira := 0;
  i := 0;

  erros.Lines.Add('verifica cadastro cliente  ' + datetimetostr(now()));

  if pos(uppercase(semacento('CPF NA NOTA:')), uppercase(vpPedido.observacoes)) > 0 then
  begin
    vliCPF := i;
  end;

  if pos(uppercase(semacento('r')), uppercase(vpPedido.tipopedido)) > 0 then
  begin
    vliRetira := 1;
  end
  else
  begin
    vliRetira := 0;
  end;

  vpNrPedidoNuc := vpPedido.codigo_pedido;
  vlTaxaEntrega := vpPedido.entrega;
  // vledrreferencia := vpPedido.complemento;

  vPetdidentificacao := vpPedido.nomecompleto;
  vPetftelefone := vpPedido.numerocelular;

  if vliRetira > 0 then
  begin

    vPedrrua := cfgedrrua.AsString;
    vPedrnumero := cfgedrnumero.AsString;
    vPedrbairro := cfgedrbairro.AsString;

    vpRetiraBalcao := '1';

  end
  else
  begin

    vPedrrua := vpPedido.endereco;
    vPedrnumero := vpPedido.numero;
    vpRetiraBalcao := '0';
    vPedrbairro := vpPedido.bairro;
    vpEdrComplemento := vpPedido.complemento;
  end;

  verificacadastro.Close;
  verificacadastro.ParamByName('etdidentificacao').AsString := semacento(vPetdidentificacao);
  verificacadastro.ParamByName('edrrua').AsString := semacento(vPedrrua);
  verificacadastro.ParamByName('edrnumero').AsString := semacento(vPedrnumero);
  verificacadastro.ParamByName('etftelefone').AsString := semacento(vPetftelefone);
  verificacadastro.ParamByName('edrbairro').AsString := semacento(vPedrbairro);
  verificacadastro.Open;

  if verificacadastro.IsEmpty then
  begin
    etdimp.Open;
    etdimp.Append;

    etdimpetdidentificacao.AsString := vPetdidentificacao;
    etdimpetdapelido.AsString := vPetdidentificacao;
    etdimpetddeletar.AsInteger := 0;
    etdimptpecodigo.AsInteger := 1;
    etdimpetddatacad.AsFloat := strtodate(vpDataPedido);
    etdimpetddataalt.AsFloat := strtodate(vpDataPedido);
    if vlEtddoc1 <> '' then
    begin
      etdimpetddoc1.AsString := vlEtddoc1;
    end
    else
    begin
      etdimpetddoc1.AsString := '0';
    end;
    etdimptsecodigo.AsInteger := 2;
    etdimpetdcarga.AsInteger := 1;
    etdimpetdativo.AsInteger := 1;
    etdimpetdsped.AsInteger := 0;
    etdimptcbcodigo.AsInteger := 3;
    etdimpetdnfemodelos.AsInteger := 99;
    etdimpgrtcodigo.AsInteger := 1;
    etdimpatvcodigo.AsInteger := 0;
    etdimpetdregime.AsInteger := 1;
    etdimp.Post;

    vPetdcodigo := etdimpetdcodigo.AsString;

    etvimp.Close;
    etvimp.Open;
    etvimp.Append;
    etvimpetdcodigo.AsString := vPetdcodigo;
    etvimptvicodigo.AsInteger := 1;
    etvimp.Post;

    edrimp.Close;
    edrimp.Open;
    edrimp.Append;
    edrimptedcodigo.AsInteger := 1;
    edrimpetdcodigo.AsString := vPetdcodigo;
    edrimpedrrua.AsString := vPedrrua;
    edrimpedrnumero.AsString := vPedrnumero;
    edrimpedrcomple.AsString := vpEdrComplemento;
    edrimpedrbairro.AsString := vPedrbairro;
    edrimpcddcodigo.AsString := '5107925';
    edrimpedrinscest.AsString := '';
    edrimpedrcep.AsString := '78890-000';
    edrimpedrinsestst.AsString := '';
    edrimpufscodigo.AsString := '51';
    edrimpedrobs.AsString := vledrreferencia;
    edrimpedrinscmun.AsString := '';
    edrimpedritem.AsInteger := 1;
    edrimpedrnomefazenda.AsString := '';
    edrimpedrrazaofazenda.AsString := '';
    edrimpedrativo.AsInteger := 1;
    edrimp.Post;

    etfimp.Close;
    etfimp.Open;
    etfimp.Append;

    etfimpetdcodigo.AsString := vPetdcodigo;
    etfimpttfcodigo.AsInteger := 1;
    etfimpetftelefone.AsString := vPetftelefone;
    etfimpetfativo.AsInteger := 1;
    etfimp.Post;

    vPetdcodigo := etdimpetdcodigo.AsString;
    vPedrcodigo := edrimpedrcodigo.AsString;
    vPetfcodigo := etfimpetfcodigo.AsString;

  end
  else
  begin
    vPetdcodigo := verificacadastroetdcodigo.AsString;
    vPedrcodigo := verificacadastroedrcodigo.AsString;
    vPetfcodigo := verificacadastroetfcodigo.AsString;
  end;

  vlSubtotal := vpPedido.subtotal;
  vlDesconto := vpPedido.desconto;

  if orcnuc.State = dsbrowse then
  begin
    orcnuc.Edit;
  end;

  etd.Close;
  etd.Params[0].AsString := vPetdcodigo;
  etd.Params[1].AsString := vPedrcodigo;
  etd.Open;

  orcnucetdcodigo.AsString := vPetdcodigo;
  orcnucedrcodigo.AsString := vPedrcodigo;
  orcnucedritem.AsInteger := etdedritem.AsInteger;
  orcnucorctelefone.AsString := vPetftelefone;

  if orcnuc.State <> dsbrowse then
  begin
    orcnuc.Post;
  end;

  if orcnuc.State = dsbrowse then
  begin
    orcnuc.Edit;
  end;

  erros.Lines.Add('conclui cadastro cliente  ' + datetimetostr(now()));


  // vlVoucherDesconto := vppedido.desconto;

  // itens do pedido
  ProcessaItens;

  CriaPedidoGourmet;

  if vlVoucherDesconto <> '' then
  begin

    vch.Close;
    vch.ParamByName('vchvoucher').AsString := vlVoucherDesconto;
    vch.FilterSQL := 'etdcodigo=' + vPetdcodigo;
    vch.Open;

    orcnuc.Edit;
    orcnucoricodigo.AsString := '7'; // 7 nuc
    orcnuc.Post;

    consulta.Close;
    consulta.SQL.Text := 'select oricodigo from orc where orcchave=' + orcnucorcchave.AsString;
    consulta.Open;

    vlOriCodigo := trim(consulta.FieldByName('oricodigo').AsString);

    if (vlOriCodigo <> '0') and (vlOriCodigo <> '') then
    begin

      vch.Append;

      vchvchdataemissao.AsFloat := orcnucorcdataabert.AsFloat;
      vchvchvoucher.AsString := vlVoucherDesconto;
      vchvchdatavalidade.AsFloat := orcnucorcdataabert.AsFloat;
      vchvchvalor.AsCurrency := strtocurr(vlDesconto);
      vchvchpercentual.AsFloat := 0;
      vchetdcodigo.AsString := vPetdcodigo;
      vchprocodigo.AsString := '';
      vchpuncodigo.AsString := '';
      vchvchtipo.AsInteger := 2;
      vchvchmodouso.AsInteger := 2;

      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo from ori where oricodigo=' + vlOriCodigo;
      consulta.Open;

      vlEtdOrigem := trim(consulta.FieldByName('etdcodigo').AsString);

      vchvchetdemissor.AsString := vlEtdOrigem;

      vch.Post;

      ovc.Close;
      ovc.ParamByName('orcchave').AsString := orcnucorcchave.AsString;
      ovc.Open;

      ovc.Append;
      ovcorcchave.AsString := orcnucorcchave.AsString;
      ovcvchchave.AsString := vchvchchave.AsString;
      ovcitochave.AsString := '';
      ovc.Post;

      consulta.Close;
      consulta.SQL.Text := 'update ito, orc set itodescontoav=' + StringReplace(vlDesconto, ',', '.', []) +
        '*((itovalorav*itoquantidade)/orcgeralav) WHERE ito.orcchave=orc.orcchave and orc.orcchave=' + orcnucorcchave.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update ito, orc set itosaldoav=itototalav-itodescontoav WHERE ito.orcchave=orc.orcchave and orc.orcchave=' + orcnucorcchave.AsString;
      consulta.ExecSQL;

    end;
  end;

  if orcnuc.State <> dsEdit then
  begin
    orcnuc.Edit;
    orcnucstocodigo.AsInteger := 2;

    if vliCPF <> 0 then
    begin
      orcnucorcobs.AsString := vlTipoFinalizador + #13 + '>> LEVAR NOTA FISCAL <<';
    end
    else
    begin
      orcnucorcobs.AsString := vlTipoFinalizador;
    end;
    orcnucorcnumeropedido.AsString := vpNrPedidoNuc;

  end;

  if (cfgcfgmgoucobraentrega.AsInteger = 1) and (vpRetiraBalcao = '0') then
  begin
    if (vlTaxaEntrega <> '0,00') and (vlTaxaEntrega <> '') and (vlTaxaEntrega <> '0') then
    begin

      baiimp.Close;
      baiimp.Open;

      if not baiimp.Locate('baiidentificacao', uppercase(vPedrbairro), []) then
      begin

        consulta.Close;
        consulta.SQL.Text := 'SELECT bai.procodigo FROM bai, pro,pun WHERE pro.procodigo = pun.puncodigo AND pro.unicodigo = pun.unicodigo and punprecoav=' +
          StringReplace(vlTaxaEntrega, ',', '.', [rfReplaceAll, rfIgnoreCase]) + ' limit 1';
        consulta.Open;
        if consulta.FieldByName('procodigo').AsString <> '' then
        begin
          baiimp.Append;
          baiimpbaiidentificacao.AsString := uppercase(vPedrbairro);
          baiimpprocodigo.AsInteger := consulta.FieldByName('procodigo').AsInteger;
          baiimp.Post;
        end;
      end;

      IncluiValorEntrega(vPetdcodigo, vPedrcodigo);
    end;
  end;

  if orcnuc.State = dsEdit then
  begin
    orcnuc.Post;
  end;

  AjustaSituacaoito(orcnucstocodigo.AsString, orcnucorcchave.AsString);

  if orcnuc.State <> dsEdit then
  begin
    orcnuc.Edit;
  end;

  Self.orcnucstocodigo.AsInteger := 2;

  if vpRetiraBalcao = '1' then
    Self.orcnucmoccodigo.AsInteger := 10
  else
    Self.orcnucmoccodigo.AsInteger := 7;

  AjustaHoraImprimir(vpOrcChave);

  AtualizaSituacaoItens(vpOrcChave, 3, '00');

  SalvaColabItens(clbclbcodigo.AsString);

  orcnucetdcodigo.AsString := vPetdcodigo;
  orcnucstocodigo.AsInteger := 3;

  orcnucpdscodigo.AsInteger := 2;
  orcnucoricodigo.AsString := '7';

  vlDesconto := StringReplace(vlDesconto, ',', '', [rfReplaceAll, rfIgnoreCase]);

  vlDesconto := StringReplace(vlDesconto, '.', ',', [rfReplaceAll, rfIgnoreCase]);

  orcnucorcdescontoav.AsCurrency := strtocurr(vlDesconto);

  orcnucorcgeralav.AsCurrency := vplValorLiquidoOp + strtofloat(vlDesconto);
  orcnucorctotalav.AsCurrency := vplValorLiquidoOp;
  orcnucorcobs.AsString := orcnucorcobs.AsString + ' ' + #13 + vpEdrComplemento + #13 + vlOrcobs;

  orcnuc.Post;

  vpFinalizar := '1';

  vlTipoFinalizador := vpPedido.fcodigo_metodopagamento;

  nucmda.Close;
  nucmda.Open;
  nucmda.Locate('codigo_metodopagamento', vlTipoFinalizador, []);

  vlFormaPagto := nucmdamdacodgo.AsString;
  if orcnuc.State <> dsEdit then
  begin
    orcnuc.Edit;
  end;

  case StrToInt(vlFormaPagto) of
    1:
      begin
        if VlTroco <> '' then
        begin
          orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + VlTroco;
        end
        else
        begin
          orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + 'Em Dinheiro';
        end;
        vpValorFinalizador := vplValorLiquidoOp;
        vpTeclaFinalizador := 117; // F6
      end;
    5:
      begin
        orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + 'Levar máquina de Cartão - DÉBITO';
        vpValorFinalizador := vplValorLiquidoOp;
        vpTeclaFinalizador := 115; // F4

      end;

    4:
      begin
        orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + 'Levar máquina de Cartão - CRÉDITO';
        vpValorFinalizador := vplValorLiquidoOp;
        vpTeclaFinalizador := 114; // F3

      end;
    7:
      begin
        orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + 'Vai Assinar';
        vpValorFinalizador := vplValorLiquidoOp;
        vpTeclaFinalizador := 120; // F9
      end;
    9:
      begin
        orcnucorcobs.AsString := orcnucorcobs.AsString + #13 + 'A Faturar';
        vpValorFinalizador := vplValorLiquidoOp;
        vpTeclaFinalizador := 121; // F10

      end;
  end;

  Self.orcnucstocodigo.AsInteger := 2;
  if orcnuc.State = dsEdit then
  begin
    orcnuc.Post;
  end;

  if vpFinalizar = '1' then
  begin

    // ActFinalizaVenda.Execute;
    consulta.Close;
    consulta.SQL.Text := 'SELECT ccx.ccxchave ' + '  FROM ccx,ctr ' + '  WHERE ctr.ctacodigo=ccx.ctacodigo and ctr.trmcodigo=' + '1' + ' and ccx.clbcodigo = ' +
      inttostr(clbclbcodigo.AsInteger) + ' AND ccx.ccxdatafecha IS null ' + ' ORDER BY ccx.ccxchave DESC LIMIT 1';

    consulta.Open;

    vlCcxChave := consulta.Fields[0].AsString;

    if vlCcxChave = '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT ccx.ccxchave ' + '  FROM ccx,ctr ' + '  WHERE ctr.ctacodigo=ccx.ctacodigo and ctr.trmcodigo=' + '1' + ' and  ccx.ccxdatafecha IS null ' +
        ' ORDER BY ccx.ccxchave DESC LIMIT 1';

      consulta.Open;

      vlCcxChave := consulta.Fields[0].AsString;

    end;

    if vlCcxChave <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update orc set ccxchave=' + vlCcxChave + ', stocodigo=' + inttostr(3) + ' where orcchave=' + vpOrcChave;
      consulta.ExecSQL;
    end;

    consulta.Close;
    consulta.SQL.Text := 'update ito set stocodigo=' + inttostr(3) + ' where orcchave=' + vpOrcChave + ' and stocodigo<>88';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update imm set cznchave=' + vpCznChave + ' where itochave in (select itochave from ito where stocodigo=' + inttostr(3) + ' and orcchave=' + vpOrcChave +
      ' and stocodigo<>88)';
    consulta.ExecSQL;

    if vpTeclaFinalizador = 121 then
      vlMeschave := ProcessaVendas(vpOrcChave, True)
    else
      vlMeschave := ProcessaVendas(vpOrcChave, False);

    orcnuc.Edit;
    orcnucstocodigo.AsInteger := 3;
    orcnucpdscodigo.AsInteger := 2;
    orcnucoricodigo.AsString := '8';
    orcnuc.Post;

    AtualizaSituacaoItens(vpOrcChave, 3, '00');

    Finaliza(vlMeschave);

    FinalizarProcessoImportacao;

    if nukrecebidos.Locate('codigo_pedido', orcnucorcnumeropedido.AsString, []) then
    begin
      nukrecebidos.Delete;
    end;

  end;
end;

procedure Tfprincinuc.AplicaDescontoGeral(pDesconto: string);
Var
  SVlrDesc: String;

  // Recebe retorno da função de ajuste do desconto
  VTotProdutos: Double;
  VTotAcrescimos: Double;

  vlPackDes: cardinal;
Begin
  If not orcnuc.Active Then
    exit;

  if lito.IsEmpty then
    exit;

  VTotProdutos := 0;
  VTotAcrescimos := 0;

  (* Soma o total dos itens sem produtos do tipo Serviço *)
  consulta.Close;
  consulta.SQL.Text := 'SELECT SUM(itototalav)+sum((itoacrescimoav/itoquantidade)), SUM(itototalap)+itoacrescimoav , sum((itoacrescimoav/itoquantidade)) FROM ito, pro ';
  consulta.SQL.Add('WHERE ito.procodigo = pro.procodigo ');
  consulta.SQL.Add('AND ito.stocodigo IN (1, 2, 3) ');

  consulta.SQL.Add('AND ito.orcchave = ' + orcnucorcchave.AsString);
  consulta.Open;

  VTotAcrescimos := consulta.Fields[2].AsCurrency;

  VTotProdutos := consulta.Fields[0].AsFloat;

  SVlrDesc := pDesconto;

  zPCalcDescAV.SQL.Add(' SET @OrcChave = :orcchave;');
  zPCalcDescAV.SQL.Add('SET @Desconto = :Desconto;');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('SET @Total = (SELECT');
  zPCalcDescAV.SQL.Add('    SUM(itototalav)');
  zPCalcDescAV.SQL.Add('  FROM ito,');
  zPCalcDescAV.SQL.Add('       pro');
  zPCalcDescAV.SQL.Add('  WHERE ito.procodigo = pro.procodigo ');
  zPCalcDescAV.SQL.Add('  AND ito.stocodigo NOT IN (8, 88) ');

  zPCalcDescAV.SQL.Add('  AND orcchave = @OrcChave);');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('UPDATE ito, pro ');
  zPCalcDescAV.SQL.Add('SET itodescontoav = ROUND((@Desconto * (itototalav / @Total)), 2), ');
  zPCalcDescAV.SQL.Add('    ito.itopercdescav = (ito.itodescontoav / ito.itototalav) * 100, ');
  zPCalcDescAV.SQL.Add('    tdecodigo = 1 ');
  zPCalcDescAV.SQL.Add('WHERE ito.procodigo = pro.procodigo ');
  zPCalcDescAV.SQL.Add('AND ito.stocodigo NOT IN (8, 88) ');

  zPCalcDescAV.SQL.Add('AND orcchave = @OrcChave;');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('/*Trata Diferença de valor definido para desconto e valor calculado*/');
  zPCalcDescAV.SQL.Add('SET @DifDesconto = @Desconto - (SELECT ');
  zPCalcDescAV.SQL.Add('    ROUND(SUM(itodescontoav), 2) ');
  zPCalcDescAV.SQL.Add('  FROM ito');
  zPCalcDescAV.SQL.Add('  WHERE orcchave = @OrcChave');
  zPCalcDescAV.SQL.Add('  AND ito.stocodigo NOT IN (8, 88));');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('/*Identifica item de maior percentual*/');
  zPCalcDescAV.SQL.Add('SET @ChaveMaiorPerc = (SELECT');
  zPCalcDescAV.SQL.Add('    itochave');
  zPCalcDescAV.SQL.Add('  FROM ito,');
  zPCalcDescAV.SQL.Add('       pro');
  zPCalcDescAV.SQL.Add('  WHERE ito.procodigo = pro.procodigo');
  zPCalcDescAV.SQL.Add('  AND ito.stocodigo NOT IN (8, 88)');

  zPCalcDescAV.SQL.Add('  AND orcchave = @OrcChave');
  zPCalcDescAV.SQL.Add('  ORDER BY (itototalav / @Total) DESC LIMIT 1);');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('');
  zPCalcDescAV.SQL.Add('UPDATE ito, pro ');
  zPCalcDescAV.SQL.Add('SET itodescontoav = (itodescontoav + @DifDesconto), ');
  zPCalcDescAV.SQL.Add('    ito.itopercdescav = (ito.itodescontoav / ito.itototalav) * 100 ');
  zPCalcDescAV.SQL.Add('WHERE ito.procodigo = pro.procodigo');

  zPCalcDescAV.SQL.Add('AND itochave = @ChaveMaiorPerc; ');

  zPCalcDescAV.ParamByName('orcchave').AsString := orcnucorcchave.AsString;
  zPCalcDescAV.ParamByName('Desconto').AsString := BuscaTroca(SVlrDesc, ',', '.');
  zPCalcDescAV.Execute;

  orcnuc.Edit;
  orcnuctdecodigo.AsInteger := 1;
  orcnuc.Post;

end;

procedure Tfprincinuc.processapedido;
var
  vldata: string;
  vlHora: string;
begin
  inherited;

  vPetdcodigo := '0';
  vPedrcodigo := '0';
  vpTipoPreco := 0;

  vldata := trim(Copy(vpPedido.created_at, 1, 10));
  vlHora := trim(Copy(vpPedido.created_at, 12, 9));

  vpHoraPedido := vlHora;
  vpDataPedido := vldata;
  erros.Lines.Add('abre orçamento   ' + datetimetostr(now()));
  Novoorcamento(vldata, vlHora);;
  erros.Lines.Add('orçamento aberto  ' + datetimetostr(now()));

  ProcessarPedido;

end;

{ TPedido }

procedure TPedido.AdicionarRegistros(vJsonRegistros: TJSONArray);
var
  i: Integer;

  vJSONObjectRegistro: TJSONValue;
  vJSONItem: TJSONObject;
  vJSONPair: TJSONPair;
  vJSONObjectConjuntos: TJSONArray;
  vlRegistros: TRegistros;

  n: string;
begin
  try

    vlRegistros := TRegistros.Create;
    for i := 0 to vJsonRegistros.Count - 1 do
    begin

      vJSONObjectRegistro := TJSONObject.ParseJSONValue(vJsonRegistros.Items[i].ToString, False);
      vJSONItem := vJSONObjectRegistro as TJSONObject;

      vJSONPair := vJSONItem.Get('titulo');
      if vJSONPair <> nil then
        vlRegistros.Ftitulo := RemoveAspas(vJSONPair.JsonValue.ToString);

      vJSONPair := vJSONItem.Get('sku');
      if vJSONPair <> nil then
        vlRegistros.Fsku := RemoveAspas(vJSONPair.JsonValue.ToString);

      vJSONPair := vJSONItem.Get('valor');
      if vJSONPair <> nil then
        vlRegistros.Fvalor := RemoveAspas(vJSONPair.JsonValue.ToString);

      vJSONPair := vJSONItem.Get('quantidade');
      if vJSONPair <> nil then
        vlRegistros.Fquantidade := RemoveAspas(vJSONPair.JsonValue.ToString);

      vJSONObjectConjuntos := vJsonRegistros.Items[i].GetValue<TJSONArray>('conjuntos');
      n := vJSONObjectConjuntos.ToString;

      ListaRegistros.Add(vlRegistros);

    end;

  finally
    vJSONObjectRegistro.Free;
    vJSONItem.Free;
    vJSONPair.Free;
    vJSONObjectConjuntos.Free;
  end;
end;

procedure Tfprincinuc.SelecionaSabor(vSbrCodigo: string; vlNomeTit: string; vTipo: Integer = 0);
var
  // vlNomePnl: string;
  vlsbrcodigo: string;
  i, x: Integer;
  qsbi: TUniQuery;
  qsbr: TUniQuery;

begin
  try

    vlsbrcodigo := vSbrCodigo;

    qsbr := TUniQuery.Create(Self);
    qsbr.Name := 'qSbr' + vlsbrcodigo;
    qsbr.Connection := Conexao;
    qsbr.Close;
    qsbr.SQL.Text := 'select grpcodigo from sbr where sbrcodigo=' + vlsbrcodigo;
    qsbr.Open;

    qsbi := TUniQuery.Create(Self);
    qsbi.Name := 'qSbi' + vlsbrcodigo;
    qsbi.Connection := Conexao;
    qsbi.Close;

    qsbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
    qsbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
    qsbi.SQL.Add('INNER JOIN sbr ON sbi.sbrcodigo = sbi.sbrcodigo ');
    qsbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + itoitochave.AsString + ' and ');
    qsbi.SQL.Add('sbi.sbrcodigo=' + vlsbrcodigo + ' ');
    qsbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
    qsbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

    qsbi.Open;

    if qsbi.IsEmpty then
    begin
      i := 1;
    end
    else
    begin
      if qsbr.FieldByName('grpcodigo').AsString = '' then
        i := 1
      else
        i := qsbi.RecordCount + 1;
    end;

    for x := 1 to i do
    begin

      qsbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
      qsbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
      qsbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + itoitochave.AsString + ' and ');
      qsbi.SQL.Add('sbi.sbrcodigo=' + vlsbrcodigo + ' and ');
      qsbi.SQL.Add('sbi.sbiitem=' + inttostr(x) + ' ');
      qsbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
      qsbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

      qsbi.Open;

      if qsbi.IsEmpty then
      begin
        sbi.Append;
        sbi.FieldByName('sbiitem').AsInteger := x;
        sbi.FieldByName('sbrcodigo').AsString := vlsbrcodigo;
      end
      else
      begin
        sbi.Edit;
      end;

      sbi.FieldByName('itochave').AsString := itoitochave.AsString;

      sbi.Post;

    end;
  finally
    qsbr.Close;
    qsbi.Close;
    freeandnil(qsbi);
    freeandnil(qsbr);
  end;
end;

procedure Tfprincinuc.tmInicializarTimer(Sender: TObject);
begin

  tmInicializar.Enabled := False;

  if ConectaBanco then
  begin

    proimp.Close;
    proimp.Open;

    nuctpo.Close;
    nuctpo.Open;

    nucmda.Close;
    nucmda.Open;

    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger := 1;
    cfg.Open;

    plEtdIdentificacao.Caption := cfgcfgidentificacao.AsString;
    vpStringListPedidos := TStringList.Create;

    consulta.Close;
    consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    consulta.Open;
    vpCznChave := consulta.FieldByName('cznchave').AsString;
    consulta.Close;

    if vpCznChave <> '' then
    begin
      plCozinha.Caption := formatfloat('000000', vpCznChave.ToInteger);
    end;

    nuk.Close;
    nuk.ParamByName('cznchave').AsString := vpCznChave;
    nuk.Open;

    nukprocessados.Close;
    nukprocessados.ParamByName('cznchave').AsString := vpCznChave;
    nukprocessados.Open;

    vpContaTempo := 0;
    TmTempo.Enabled := True;

  end;

end;

procedure Tfprincinuc.AtualizarLista;
begin

  consulta.Close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;

  if consulta.IsEmpty then
  begin
    vpCznChave := '';
  end
  else
  begin
    vpCznChave := consulta.Fields[0].AsString;
  end;

  if vpCznChave <> '' then
  begin

    nuk.Close;
    nuk.ParamByName('cznchave').AsString := vpCznChave;
    nuk.Open;

    nukprocessados.Close;
    nukprocessados.ParamByName('cznchave').AsString := vpCznChave;
    nukprocessados.Open;

    plCozinha.Caption := formatfloat('000000', vpCznChave.ToInteger);

    plQtdPedidosdoDia.Caption := formatfloat('0000', nukprocessados.RecordCount);

  end;

  ConsultaPedidos;

end;

procedure Tfprincinuc.TmTempoTimer(Sender: TObject);
begin

  vpContaTempo := vpContaTempo + 1;
  plConsultaPedidos.Caption := timetostr(now());
  ConsultaPortalNUC;
  Application.ProcessMessages;

end;

procedure Tfprincinuc.ConsultaPortalNUC;
var
  vlTempoNovaConsulta: Integer;
begin
  vlTempoNovaConsulta := 30;

  if vpContaTempo >= vlTempoNovaConsulta then
  begin

    plTempoConsulta.Caption := inttostr(vpContaTempo) + ' de ' + vlTempoNovaConsulta.ToString;
    Application.ProcessMessages;
    AtualizarLista;
    vpContaTempo := 0;
    if nukprocessados.Active then
    begin
      nukprocessados.First;
    end;

  end
  else
  begin
    mostra.Max := 0;
    mostra.Position := 0;

    plTempoConsulta.Caption := inttostr(vpContaTempo) + ' de ' + vlTempoNovaConsulta.ToString;
    Application.ProcessMessages;

  end;

end;

Function Tfprincinuc.QuantiTotalItemOrc(Produto, CodUnidVenda: Integer): Double;
Var
  vQuantidade: Double;
begin

  vQuantidade := 0;

  With consulta do
  begin
    if vpOrcChave <> '' then
    begin
      Close;
      SQL.Text := 'SELECT itoquantidade * itocontendo FROM ito ';
      SQL.Add('WHERE ito.stocodigo IN (1, 2) ');
      SQL.Add('AND procodigo = ' + inttostr(Produto) + ' ');
      SQL.Add('AND unicodigo <> ' + inttostr(CodUnidVenda) + ' ');
      SQL.Add('AND orcchave = ' + vpOrcChave);
      Open;
    end;

    while not Eof do
    begin
      vQuantidade := vQuantidade + Fields[0].AsFloat;
      Next;
    end;

    Close;
  end;

  result := vQuantidade;
end;

function Tfprincinuc.PermiteQuantidade(Produto, CodUnidVenda: Integer; quantidade: Double): Boolean;
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
    vControlaEstoque := FieldByName('proestoque').AsString = '1';
  end;

  vControlaEstoqueDisp := cfgcfgcontrolaestoquedisp.AsInteger = 1;

  if (quantidade <= vSaldoDisp) or (not vControlaEstoque) or (not vControlaEstoqueDisp) then
    result := True
  else
  begin
    result := True;

    if quantidade > vSaldoDisp then
    begin
      VMensagem := 'Quantidade maior que o disponível em estoque!!' + #13 + #13;
      VMensagem := VMensagem + 'Quantidade: ' + Format('%2.4n', [quantidade]);
      VMensagem := VMensagem + #13 + 'Disponível: ' + Format('%2.4n', [vSaldoDisp]);

      Application.MessageBox(PChar(VMensagem), 'Atenção', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
    end
    else
      Application.MessageBox(PChar('Quantidade não permitida!!'), 'Atenção', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
  end;
end;

procedure Tfprincinuc.SalvaColabItem(vItoChave: Integer);
var
  vlColaborador: String;
  vlTpoCodigo: Integer;
begin

  consulta.Close;
  consulta.SQL.Text := 'select tpocodigo from pro,ito where  pro.procodigo=ito.procodigo and ito.itochave=' + inttostr(vItoChave);
  consulta.Open;

  vlTpoCodigo := consulta.FieldByName('tpocodigo').AsInteger;

  if (cfgcfgidentificatecnico.AsInteger = 1) and (vlTpoCodigo <> 9) then
    exit;

  if cfgcfgtipocomissao.AsInteger = 0 then
  begin

    If Not ioc.Active Then
      ioc.Open;

    (* Identifica se tem Vendedor definido, se não tem define o Operador como Colaborador principal. *)
    vlColaborador := IfThen(IsZero(orcnucclbvendedor.AsInteger), orcnucclbcodigo.AsInteger, orcnucclbvendedor.AsInteger).ToString;

    consulta.Close;
    consulta.SQL.Text := 'SELECT clbperccomissao FROM clb WHERE fnccodigo in (4,5) and clbcodigo = ' + vlColaborador;
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      ioc.Append;
      iocclbcodigo.AsString := vlColaborador;
      iocitochave.AsInteger := vItoChave;
      iociocpercentual.AsFloat := consulta.Fields[0].AsFloat;
      ioc.Post;
    end;
  end
  else if cfgcfgtipocomissao.AsInteger = 1 then
  begin

  end;
end;

procedure Tfprincinuc.CriaPedidoGourmet;

begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT cfgmgoupedidelivery FROM cfgmgou ';
  consulta.Open;

  consulta.Edit;
  consulta.FieldByName('cfgmgoupedidelivery').AsInteger := consulta.FieldByName('cfgmgoupedidelivery').AsInteger + 1;
  consulta.Post;

  vpImmNumePedido := inttostr(consulta.Fields[0].AsInteger + 1000);

  consulta.Close;
  consulta.SQL.Text := 'update imm set immnumepedido=' + vpImmNumePedido + ' where imm.itochave in (select itochave from ito where orcchave=' + orcnucorcchave.AsString + ')';
  consulta.ExecSQL;

end;

function Tfprincinuc.IncluirNovoItemImportado(Produto, Embalagem: Integer; Variacao: Integer = 0; quantidade: Double = 0; vlBordas: string = ''; vObsItem: string = '';
  vValorUnitario: Double = 0): Integer;
Var
  vproCodigo: Integer;
  VUniCodigo: Integer;
  vItoChave: Integer;

  (* Variáveis para tratar novo item no orçamento *)
  VNovoItem: Boolean;
  VEstoqueDisponivel: Boolean; // Recebe retorno que identifica se produto tem saldo disponível
  vQuantidade: Double; // Recebe quantidade para ser lançada no novo item
  VQuantidadeTotal: Double;
  VTextoQuantidade: String; // Utilizada quando produto tem saldo positivo menor que um
  VPodeQuantidade: Boolean; // Utilizada quando produto tem saldo positivo menor que um
  VMensagem: String; // Utilizada quando produto tem saldo positivo menor que um

Begin
  Try
    vItoChave := -1;
    vproCodigo := 0;
    vQuantidade := 0;
    VEstoqueDisponivel := True;
    result := -1;
    consulta.Close;
    consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vpCznChave := '0';

    end
    else
    begin
      vpCznChave := consulta.Fields[0].AsString;
    end;

    lito.DisableControls;
    Try
      If (Produto <> 0) Then
      Begin
        qpro.Close;
        qpro.FilterSQL := '';
        qpro.Params[0].AsInteger := Produto;
        qpro.Open;

        if qpro.IsEmpty then
          exit;

        qsbi.Close;
        qsbi.Params[0].AsInteger := Produto;
        qsbi.Open;

        qsbr.Close;
        qsbr.Params[0].AsInteger := Produto;
        qsbr.Open;

        // Verifica se o item está inativo e avisa usuário.
        if qprosipcodigo.AsInteger = 2 then
        begin
          Application.MessageBox(PChar('Produto desativado não pode ser vendido.'), 'Produto Inativo', MB_OK + MB_DEFBUTTON1 + MB_ICONWARNING);
          exit;
        end;

        // Identifica se item tem mais de uma unidade de venda
        If (qpro.RecordCount > 1) or (qsbrsbrqtd.AsInteger > 0) or (qsbi.RecordCount > 0) Then
        begin
          qpro.FilterSQL := 'puncodigo=' + Embalagem.ToString;
        end
        else
        begin
          qpro.FilterSQL := '';
        end;
        if (qpro.Locate('puncodigo', Embalagem, [])) then
        begin

          // vpItoUnidades:= Embalagem;
          ito.Close;

          If (Not ito.Active) Then
          Begin
            ito.Params[0].AsInteger := StrToInt(vpOrcChave);
            ito.Open;
          End;
          qpro.First;

          ito.Append;
          itotdecodigo.AsInteger := orcnuctdecodigo.AsInteger;
          itoorcchave.AsInteger := orcnucorcchave.AsInteger;
          itostocodigo.AsInteger := orcnucstocodigo.AsInteger;
          itoitoitem.AsInteger := AjustaNumeroItem + 1;
          itoitodescontoav.AsFloat := 0;
          itoitodescontoap.AsFloat := 0;
          itoprocodigo.AsInteger := Produto;
          itoitounidades.AsInteger := vpItoUnidades;
          itoitoobs.AsString := vObsItem;
          vpItoUnidades := 0;

          itoitovalorav.AsFloat := 0;

          itoitocontendo.AsFloat := qpropunmultiplicador.AsFloat;
          itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
          itounicodigo.AsInteger := qprounicodigo.AsInteger;

          if quantidade <> 0 then
            itoitoquantidade.AsFloat := quantidade
          else if vpQuantidade <> 0 then
            itoitoquantidade.AsFloat := vpQuantidade

          else
            itoitoquantidade.AsFloat := 1;

          itoitototalav.AsFloat := 0;

          itoitosaldoav.AsFloat := 0;

          itoitovalorap.AsFloat := 0;

          itoitototalap.AsFloat := 0;
          itoitosaldoap.AsFloat := 0;

          ito.Post;
          vItoChave := Self.itoitochave.AsInteger;

          sbr.Close;
          sbr.Params[0].AsInteger := Self.qprogrpcodigo.AsInteger;
          sbr.Open;

          sbi.Close;
          sbi.Params[0].AsInteger := vItoChave;
          sbi.Open;

          if sbr.Locate('procodigo', itoprocodigo.AsInteger, []) then
          begin
            SelecionaSabor(sbrsbrcodigo.AsString, sbrsbridentificacao.AsString, 1);
          end;

          bgr.Close;
          bgr.FilterSQL := '';
          bgr.Filter := '';
          bgr.Params[0].AsInteger := Self.qprogrpcodigo.AsInteger;
          bgr.Open;

          bgr.First;
          while not bgr.Eof do
          begin

            bri.Close;
            bri.Params[0].AsInteger := vItoChave;
            bri.Params[1].AsInteger := bgrbrdcodigo.AsInteger;
            bri.Open;

            if bri.IsEmpty then
              bri.Append
            else
              bri.Edit;

            briitochave.AsInteger := vItoChave;
            bribrdcodigo.AsInteger := bgrbrdcodigo.AsInteger;
            bri.Post;

            bgr.Next;

          end;

          tsi.Close;
          tsi.Open;

          { INICIO visualicao de bordas }

          consulta.Close;
          consulta.SQL.Text := 'select grpcodigo from brg where grpcodigo=' + qprogrpcodigo.AsString;
          consulta.Open;

          if ito.Locate('itochave', vItoChave, []) then
          begin

            vQuantidade := Self.itoitoquantidade.AsFloat;
            lito.Close;
            lito.ParamByName('orcchave').AsString := vpOrcChave;
            lito.ParamByName('flacodigo').AsInteger := 1;
            lito.Open;
            recalculaTotal;
          end;


          // end;
          // freeandnil(Lunidadesent);

        end;

        vproCodigo := qproprocodigo.AsInteger;
        VUniCodigo := qprounicodigo.AsInteger;

        VNovoItem := True;

        If (VNovoItem) Then
        Begin
          Try

            if vpQuantidade <> 0 then
              vQuantidade := vpQuantidade
            else if vQuantidade = 0 then
            begin
              if quantidade = 0 then
                vQuantidade := 1
              else
                vQuantidade := quantidade;

            end;

            vpQuantidade := 0;

            // Verifica se produto tem saldo positivo menor que um.
            if (qproprosaldodisp.AsFloat > 0) and (qproprosaldodisp.AsFloat < 1) then
            begin
              VMensagem := 'Produto possui apenas ' + Format('%2.4n', [qproprosaldodisp.AsFloat]);
              VMensagem := VMensagem + ' de saldo disponível!';
              VMensagem := VMensagem + #13 + #13 + 'Por favor, indique a quantidade a ser vendida a seguir.';

              Application.MessageBox(PChar(VMensagem), PChar('Informação'), MB_OK + MB_ICONINFORMATION);
              vQuantidade := qproprosaldodisp.AsFloat;

              repeat
                VPodeQuantidade := False;
                VTextoQuantidade := '0';

                InputQuery('Quantidade', 'Informe a quantidade:', VTextoQuantidade);

                try
                  vQuantidade := strtofloat(VTextoQuantidade);
                  if vQuantidade > 0 then
                    VPodeQuantidade := True;
                except
                  VPodeQuantidade := False;
                end;

              until (VPodeQuantidade);
            end;

            // Soma quantidade total do item se tiver lançado no orçamento com outra unidade.
            VQuantidadeTotal := vQuantidade + QuantiTotalItemOrc(vproCodigo, VUniCodigo);

            // Verifica se produto tem saldo suficiente.
            VEstoqueDisponivel := PermiteQuantidade(vproCodigo, VUniCodigo, VQuantidadeTotal);

          except
            on E: Exception do
            begin
              Application.MessageBox(PChar('Erro ao verificar quantidade do produto: ' + inttostr(vproCodigo) + #13 + #13 + 'Mensagem: ' + E.Message), 'Erro',
                MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);

              lito.EnableControls;
            end;
          end;

          Case VEstoqueDisponivel of
            True:
              begin

                If (Not ito.Active) Then
                Begin
                  ito.Params[0].AsInteger := StrToInt(vpOrcChave);
                  ito.Open;
                End;
                if ito.Locate('itochave', vItoChave, []) then
                  ito.Edit
                else
                  ito.Append;

                itotdecodigo.AsInteger := orcnuctdecodigo.AsInteger;
                // itoorcchave.AsInteger := orcorcchave.AsInteger;
                // itostocodigo.AsInteger := orcstocodigo.AsInteger;
                if ito.State = dsinsert then
                begin
                  itoitoitem.AsInteger := AjustaNumeroItem + 1;
                end;
                itoitodescontoav.AsFloat := 0;
                itoitodescontoap.AsFloat := 0;
                // itoprocodigo.AsInteger := vproCodigo;

                // itoitovalorav.AsFloat := qpropunprecoav.AsFloat;

                // itoitocontendo.AsFloat := qpropunmultiplicador.AsFloat;
                // itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
                // itounicodigo.AsInteger := qprounicodigo.AsInteger;

                VUniCodigo := qprounicodigo.AsInteger;
                { if VQuantidade <> 1 then
                  begin }
                itoitoquantidade.AsFloat := vQuantidade;
                { end
                  else
                  begin
                  if Quantidade <> 0 then
                  itoitoquantidade.AsFloat := Quantidade
                  else
                  itoitoquantidade.AsFloat := VQuantidade;

                  end; }

                if (ito.State = dsinsert) or (ito.State = dsEdit) then
                begin
                  itoitototalav.AsFloat := itoitoquantidade.AsFloat * itoitovalorav.AsFloat;

                  itoitosaldoav.AsFloat := itoitototalav.AsFloat;

                  if Self.cfgcfgdoisprecos.AsInteger = 1 then
                    itoitovalorap.AsFloat := qpropunprecoap.AsFloat
                  else
                    itoitovalorap.AsFloat := 0;

                  itoitototalap.AsFloat := itoitoquantidade.AsFloat * itoitovalorap.AsFloat;
                  itoitosaldoap.AsFloat := itoitototalap.AsFloat;
                end;

                itoitounidades.AsInteger := vpItoUnidades;

                if Variacao > 0 then
                  itovrpcodigo.AsInteger := Variacao;

                ito.Post;

                vItoChave := Self.itoitochave.AsInteger;

                // gera informação para impressora
                imm.Close;
                imm.Params[0].AsString := vpImmNumePedido;
                imm.Params[1].AsInteger := vItoChave;
                imm.Open;

                if imm.IsEmpty then
                  imm.Append
                else
                  imm.Edit;
                immitochave.AsInteger := vItoChave;

                consulta.Close;
                consulta.SQL.Text := 'SELECT gri.tcicodigo, gri.griminuretardo FROM gri ';
                consulta.SQL.Add('INNER JOIN pro ON gri.grpcodigo = pro.grpcodigo');
                consulta.SQL.Add(' and pro.procodigo=' + itoprocodigo.AsString);
                consulta.Open;

                if consulta.Fields[0].AsString <> '' then
                begin
                  immtcicodigo.AsInteger := consulta.Fields[0].AsInteger;

                  immimmtemporetardo.AsInteger := consulta.Fields[1].AsInteger;
                end
                else
                begin
                  erros.Lines.Add('Falha do produto: ' + itoprocodigo.AsString);
                end;
                immimmmodo.AsInteger := 0;

                // immimmhoraimprimir.AsString := agora(Application, conexao);
                immimmnumepedido.AsString := vpImmNumePedido;
                immcznchave.AsString := vpCznChave;
                immimmhorapedido.AsString := datetimetostr(now());
                immclbcodigo.AsInteger := clbclbcodigo.AsInteger;
                immpdscodigo.AsInteger := 2;
                imm.Post;

                lito.Refresh;
                lito.Locate('itochave', vItoChave, []);
                ito.Edit;

                (* Identifica o Colaborador Responsável pelo Atendimento *)
                SalvaColabItem(vItoChave);

                lito.Refresh;
                lito.Locate('itochave', vItoChave, []);

                (*
                  * Se produto não tem Preço definido
                  * chama função para usuário definir
                *)

                { if (litoitovalor.AsFloat = 0) then
                  begin

                  Application.MessageBox(PChar('Valor de venda precisa ser definido!'), 'Atenção', MB_ICONWARNING + MB_OK);
                  end;

                  if orcnuctdecodigo.AsInteger = 1 then
                  begin
                  Application.MessageBox(PChar('Desconto Geral foi cancelado!'), 'Atenção', MB_ICONWARNING + MB_OK);

                  if orcnuc.State <> dsEdit then
                  orcnuc.Edit;

                  orcnuctdecodigo.AsInteger := 0;

                  zPCalcDescAV.ParamByName('orcchave').AsString := orcnucorcchave.AsString;
                  zPCalcDescAV.ParamByName('Desconto').AsFloat := 0;
                  zPCalcDescAV.Execute;

                  end; }

              end;
          End;

        End;
        result := itoitochave.AsInteger;

        // MontaTextoPedido;
        try
          // recalculaTotal;

          lito.Locate('procodigo;unicodigo', VarArrayOf([vproCodigo, VUniCodigo]), []);

        except
          on E: Exception do
          begin
            Application.MessageBox(PChar('Erro ao recalcular total do produto: ' + inttostr(vproCodigo) + #13 + #13 + 'Mensagem: ' + E.Message), 'Erro',
              MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);

            lito.EnableControls;
          end;
        end;

        recalculaTotal;
      End;
    Except
      on E: Exception do
      begin
        result := -1;
        Application.MessageBox(PChar('Erro ao incluir produto: ' + inttostr(vproCodigo) + #13 + #13 + 'Mensagem: ' + E.Message), 'Erro', MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);

        lito.EnableControls;
      end;

    End;

  Finally
    qpro.Close;
    lito.EnableControls;
  End;
End;

function Tfprincinuc.AjustaNumeroItem: Integer;
var
  VlNumeroItem: Integer;
begin
  lito.DisableControls;
  lito.First;
  VlNumeroItem := 0;
  while not lito.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'select procodigo from ito where ito.procodigo=' + litoprocodigo.AsString + ' and ito.orcchave=' + litoorcchave.AsString +
      ' and ito.procodigo not in (select procodigo from bai) ';
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      VlNumeroItem := VlNumeroItem + 1;
    end;

    lito.Next;
  end;

  lito.EnableControls;

  result := VlNumeroItem;
end;

end.
