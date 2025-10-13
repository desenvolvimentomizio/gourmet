unit ufopm;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Controls, Vcl.Dialogs, System.Classes, System.SysUtils, uFuncoes,
  uPegaBase;

type
  Tfopm = class(TForm)
    PlTitulo: TPanel;
    plid: TPanel;
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    PlInfo: TPanel;
    consulta: tuniquery;
    orc: tuniquery;
    cfg: tuniquery;
    mes: tuniquery;
    ito: tuniquery;
    itm: tuniquery;
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
    itoitochave: TIntegerField;
    itoorcchave: TIntegerField;
    itoprocodigo: TIntegerField;
    itoitovalorav: TFloatField;
    itoitovalorap: TFloatField;
    itoitototalav: TFloatField;
    itoitototalap: TFloatField;
    itoitosaldoav: TFloatField;
    itoitosaldoap: TFloatField;
    itoitoquantidade: TFloatField;
    itoitodescontoav: TFloatField;
    itoitodescontoap: TFloatField;
    itounicodigo: TIntegerField;
    itopuncodigo: TIntegerField;
    itotdecodigo: TIntegerField;
    itostocodigo: TIntegerField;
    itoitoitem: TIntegerField;
    itoitopercdescav: TFloatField;
    mesmeschave: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mestoecodigo: TIntegerField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    mestfpcodigo: TIntegerField;
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
    mesclbcodigo: TIntegerField;
    mestrmcodigo: TIntegerField;
    mesmesprotocolo: TStringField;
    mestrfcodigo: TStringField;
    mestemcodigo: TIntegerField;
    cfgcfgserienfe: TStringField;
    orctrmcodigo: TIntegerField;
    mor: tuniquery;
    mororcchave: TIntegerField;
    mormeschave: TIntegerField;
    finalizador: TTimer;
    itl: tuniquery;
    itlclbcodigo: TIntegerField;
    itlitmchave: TIntegerField;
    itlitlpercentual: TFloatField;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmcstcodigo: TStringField;
    itmprocodigoori: TStringField;
    itmpronomeori: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmprogtin: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmtipodesc: TIntegerField;
    itoitopercdescap: TFloatField;
    itoitoprocomple: TStringField;
    itoitogint: TStringField;
    cfgcfgpccvenda: TStringField;
    orcpuocodigo: TIntegerField;
    tof: tuniquery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    tom: tuniquery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    itmitminfadprod: TStringField;
    itoitoinfadprod: TStringField;
    itoitoproservico: TStringField;
    itmitmproservico: TStringField;
    itoitocontendo: TFloatField;
    orcedritem: TIntegerField;
    mesedritem: TIntegerField;
    cfgufscodigo: TStringField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgtoemesfora: TIntegerField;
    cfgcfgtoemesinte: TIntegerField;
    vor: tuniquery;
    vme: tuniquery;
    vororcchave: TIntegerField;
    vorveicodigo: TIntegerField;
    vmevmecodigo: TIntegerField;
    vmeveicodigo: TIntegerField;
    vmemeschave: TIntegerField;
    mesmesservicos: TFloatField;
    mesmesprodutos: TFloatField;
    itotpocodigo: TIntegerField;
    itovrpcodigo: TIntegerField;
    imv: tuniquery;
    imvimvchave: TIntegerField;
    imvitmchave: TIntegerField;
    imvvrpcodigo: TIntegerField;
    imvimvquantidade: TFloatField;
    orcclbvendedor: TIntegerField;
    mesclbvendedor: TIntegerField;
    ioc: tuniquery;
    imc: tuniquery;
    iociocchave: TIntegerField;
    iocclbcodigo: TIntegerField;
    iocitochave: TIntegerField;
    iociocpercentual: TFloatField;
    imcimcchave: TIntegerField;
    imcclbcodigo: TIntegerField;
    imcitmchave: TIntegerField;
    imcimcpercentual: TFloatField;
    meseqpcodigo: TIntegerField;
    orceqpcodigo: TIntegerField;
    orctdfcodigo: TStringField;
    mesflacodigo: TIntegerField;
    itmflacodigo: TIntegerField;
    orcflacodigo: TIntegerField;
    cfgcfgtoetransflainte: TIntegerField;
    cfgcfgtoetransflafora: TIntegerField;
    iocflacodigo: TIntegerField;
    imcflacodigo: TIntegerField;
    morflacodigo: TIntegerField;
    orcdel: tuniquery;
    orcdelorcchave: TIntegerField;
    orcdeletdcodigo: TIntegerField;
    orcdelclbcodigo: TIntegerField;
    orcdelfopcodigo: TIntegerField;
    orcdeltdecodigo: TIntegerField;
    orcdelstocodigo: TIntegerField;
    orcdelmoccodigo: TIntegerField;
    orcdelorcdataabert: TDateField;
    orcdelorchoraabert: TTimeField;
    orcdelorcdataencerr: TDateField;
    orcdelorcgeralav: TFloatField;
    orcdelorcgeralap: TFloatField;
    orcdelorcdescontoav: TFloatField;
    orcdelorcdescontoap: TFloatField;
    orcdelorctotalav: TFloatField;
    orcdelorctotalap: TFloatField;
    orcdelorcobs: TStringField;
    orcdelorcdestimpre: TIntegerField;
    orcdelorcnome: TStringField;
    orcdelorcendereco: TStringField;
    orcdelorctelefone: TStringField;
    orcdelorcdescrpagto: TStringField;
    orcdelorcextenso: TStringField;
    orcdelorcnomeretirou: TStringField;
    orcdeltfpcodigo: TIntegerField;
    orcdelorcpercdescav: TFloatField;
    orcdelorcpercdescap: TFloatField;
    orcdeltrmcodigo: TIntegerField;
    orcdelpuocodigo: TIntegerField;
    orcdeledritem: TIntegerField;
    orcdelclbvendedor: TIntegerField;
    orcdeleqpcodigo: TIntegerField;
    orcdeltdfcodigo: TStringField;
    orcdelflacodigo: TIntegerField;
    itodel: tuniquery;
    itodelitochave: TIntegerField;
    itodelorcchave: TIntegerField;
    itodelprocodigo: TIntegerField;
    itodelitovalorav: TFloatField;
    itodelitovalorap: TFloatField;
    itodelitototalav: TFloatField;
    itodelitototalap: TFloatField;
    itodelitosaldoav: TFloatField;
    itodelitosaldoap: TFloatField;
    itodelitoquantidade: TFloatField;
    itodelitodescontoav: TFloatField;
    itodelitodescontoap: TFloatField;
    itodelunicodigo: TIntegerField;
    itodelpuncodigo: TIntegerField;
    itodeltdecodigo: TIntegerField;
    itodelstocodigo: TIntegerField;
    itodelitoitem: TIntegerField;
    itodelitopercdescav: TFloatField;
    itodelitopercdescap: TFloatField;
    itodelitoprocomple: TStringField;
    itodelitogint: TStringField;
    itodelitoproservico: TStringField;
    itodelitoinfadprod: TStringField;
    itodelitocontendo: TFloatField;
    itodeltpocodigo: TIntegerField;
    itodelvrpcodigo: TIntegerField;
    mesfopcodigo: TIntegerField;
    mesmesinclusao: TDateTimeField;
    tit: tuniquery;
    rfi: tuniquery;
    rfm: tuniquery;
    lte: tuniquery;
    dtl: tuniquery;
    cco: tuniquery;
    clt: tuniquery;
    rfmrfmchave: TIntegerField;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    rfmflacodigo: TIntegerField;
    rfirfichave: TIntegerField;
    rfititcodigo: TIntegerField;
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
    rfirfidatamulta: TDateField;
    rfirfivalomulta: TFloatField;
    rfirfivalodesc: TFloatField;
    rfirfidatadesc: TDateField;
    rfirfipercmulta: TFloatField;
    rfirfidtultbaixa: TDateField;
    rfirfidtprevisao: TDateField;
    rfirfisituacao: TIntegerField;
    rfitngcodigo: TIntegerField;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittfdcodigo: TIntegerField;
    titflacodigo: TIntegerField;
    tittficodigo: TIntegerField;
    titbcocodigo: TStringField;
    titcarcodigo: TIntegerField;
    tittitemissao: TDateField;
    tittithora: TTimeField;
    titclbcodigo: TIntegerField;
    tittitparcelas: TIntegerField;
    tittitvctoinicial: TDateField;
    tittitnumero: TStringField;
    tittitvalorparcela: TFloatField;
    tittitvalor: TFloatField;
    tittithistorico: TStringField;
    titsrfcodigo: TIntegerField;
    tittitmoradia: TFloatField;
    tittitpercmesmora: TFloatField;
    tittitrepetir: TIntegerField;
    tittitprevisao: TIntegerField;
    titmoecodigo: TIntegerField;
    tittitdiasdesc: TIntegerField;
    tittitvalodesc: TFloatField;
    tittitdiasmulta: TIntegerField;
    tittitpercmulta: TFloatField;
    tittitvalomulta: TFloatField;
    tittngcodigo: TIntegerField;
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
    lteltesituacao: TIntegerField;
    lteflacodigo: TIntegerField;
    lteclbcodigo: TIntegerField;
    ltectacodigo: TIntegerField;
    ltelteregistro: TDateTimeField;
    lteltetroco: TFloatField;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalorinfo: TFloatField;
    dtlflacodigo: TIntegerField;
    cltcltchave: TIntegerField;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccofavorecido: TStringField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccophgcodigo: TIntegerField;
    ccoflacodigo: TIntegerField;
    ccoccoregistro: TIntegerField;
    sbv: tuniquery;
    sbvsbvchave: TIntegerField;
    sbvitmchave: TIntegerField;
    sbvsbrcodigo: TIntegerField;
    sbvsbvobs: TStringField;
    sbvsbvitem: TIntegerField;
    sbi: tuniquery;
    sbisbichave: TIntegerField;
    sbiitochave: TIntegerField;
    sbisbrcodigo: TIntegerField;
    sbisbiobs: TStringField;
    sbisbiitem: TIntegerField;
    sbvitochave: TIntegerField;
    itmitochave: TIntegerField;
    mfi: tuniquery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    mfiflacodigo: TIntegerField;
    mfimfisituacao: TIntegerField;
    mlt: tuniquery;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    mltflacodigo: TIntegerField;
    cfgcfgproinativsaldozero: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    icm: tuniquery;
    icmicmcodigo: TStringField;
    icmicmaliquotas: TStringField;
    itmitmpercreducaobaseicm: TFloatField;
    orcorcretorno: TDateTimeField;
    orcorcliberadoentrega: TDateTimeField;
    mesmesretorno: TDateTimeField;
    mesmesliberadoentrega: TDateTimeField;
    itopmpchave: TIntegerField;
    itmpmpchave: TIntegerField;
    saldo: tuniquery;
    cfgcfgusapdv: TIntegerField;
    clb: tuniquery;
    imm: tuniquery;
    immetdcodigoent: TIntegerField;
    cen: tuniquery;
    cencenchave: TIntegerField;
    cenclbcodigo: TIntegerField;
    cenetdcodigo: TIntegerField;
    clbclbcodigo: TIntegerField;
    clbfnccodigo: TIntegerField;
    clbclbdescmaximo: TFloatField;
    clbclbsenha: TStringField;
    clbclbativo: TStringField;
    clbclbidentificacao: TStringField;
    clbclbsuper: TIntegerField;
    clbclbpercdispmulta: TFloatField;
    clbclbpercdispmora: TFloatField;
    clbclbpercdescrfi: TFloatField;
    clbclbliberacredito: TIntegerField;
    clbclbatualizador: TIntegerField;
    clbclbperccomissao: TFloatField;
    clbclbsalvaima: TIntegerField;
    clbclbsalvasaldo: TIntegerField;
    clbflacodigo: TIntegerField;
    clbclbsiphost: TStringField;
    clbclbsipsenha: TStringField;
    clbclbsipusuario: TStringField;
    clbclbsipramal: TStringField;
    clbetdcodigo: TIntegerField;
    clbclbcodigobio: TStringField;
    clbclbrelogio: TIntegerField;
    clbcen: tuniquery;
    clbcenclbcodigo: TIntegerField;
    clbcenfnccodigo: TIntegerField;
    clbcenclbdescmaximo: TFloatField;
    clbcenclbsenha: TStringField;
    clbcenclbativo: TStringField;
    clbcenclbidentificacao: TStringField;
    clbcenclbsuper: TIntegerField;
    clbcenclbpercdispmulta: TFloatField;
    clbcenclbpercdispmora: TFloatField;
    clbcenclbpercdescrfi: TFloatField;
    clbcenclbliberacredito: TIntegerField;
    clbcenclbatualizador: TIntegerField;
    clbcenclbperccomissao: TFloatField;
    clbcenclbsalvaima: TIntegerField;
    clbcenclbsalvasaldo: TIntegerField;
    clbcenflacodigo: TIntegerField;
    clbcenclbsiphost: TStringField;
    clbcenclbsipsenha: TStringField;
    clbcenclbsipusuario: TStringField;
    clbcenclbsipramal: TStringField;
    clbcenetdcodigo: TIntegerField;
    clbcenclbcodigobio: TStringField;
    clbcenclbrelogio: TIntegerField;
    etdcen: tuniquery;
    etdcenetdidentificacao: TStringField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toecstcodigo: TStringField;
    toecsicodigo: TStringField;
    toecspcodigo: TStringField;
    toecfgpercentualpis: TFloatField;
    toecsfcodigo: TStringField;
    toecfgpercentualcofins: TFloatField;
    mesmestelefone: TStringField;
    sbibprchave: TIntegerField;
    sbvbprchave: TIntegerField;
    isi: tuniquery;
    isiisichave: TIntegerField;
    isisbichave: TIntegerField;
    isitsicodigo: TIntegerField;
    isiprocodigo: TIntegerField;
    isiisitipo: TIntegerField;
    isiitochave: TIntegerField;
    isiisiitem: TIntegerField;
    isiisiquantidade: TIntegerField;
    isv: tuniquery;
    isvisvchave: TIntegerField;
    isvsbvchave: TIntegerField;
    isvtsicodigo: TIntegerField;
    isvprocodigo: TIntegerField;
    isvisvtipo: TIntegerField;
    isvitochave: TIntegerField;
    isvitmchave: TIntegerField;
    isvisvitem: TIntegerField;
    isvisvquantidade: TIntegerField;
    itoitoacrescimoav: TCurrencyField;
    orcoricodigo: TIntegerField;
    mesoricodigo: TIntegerField;
    mesclbcodigoent: TIntegerField;
    orcclbentregador: TIntegerField;
    itmitmtempoentrega: TTimeField;
    itmitmtempoproducao: TTimeField;
    itotempoemproducao: TStringField;
    itotempoementrega: TStringField;
    imp: tuniquery;
    impimpchave: TIntegerField;
    impclbcodigo: TIntegerField;
    impitmchave: TIntegerField;
    impitochave: TIntegerField;
    impimpinicio: TDateTimeField;
    impimpfinal: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure finalizadorTimer(Sender: TObject);
  private
    { Private declarations }
    Fzcone: TUniConnection;
    vpToeCodigo: Integer;
    vpUsuario: String;
    function ProcessaVenda(chave: string): string;
    procedure DefineOperacao;
    function ParaFilial: Boolean;
    function CarregaVenda(pOrcChave: string; pOrcDelChave: string): string;
    function FinalizaVenda(chave: string): string;
    function AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
    function AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao, vtitvctoinicial: TDate; vtfdcodigo, vtficodigo: Integer;
      vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia, vtitvalomulta, vtitpercmesmora, vtitvalodesc, vtitpercmulta, vtitpercmesmulta: Double;
      vbcocodigo: String; vcarcodigo, vtitdiasmulta, vtitdiasdesc: Integer): Integer;
  protected

    Acesso: TAcesso;

  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vOrcchave: string;
    vretorno: string;
    vmeschave: string;
    VAFaturar: Boolean;
  end;

var
  fopm: Tfopm;

implementation

{$R *.dfm}

function ProcessaOrc(AOwner: TComponent; Conexao: TUniConnection; pChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;
Var
  i: Integer;
Begin
  Application.CreateForm(Tfopm, fopm);
  try

    fopm.zcone := Conexao;
    fopm.vOrcchave := pChave;
    fopm.Acesso := pAcesso;
    fopm.VAFaturar := AFaturar;

    fopm.vmeschave := fopm.ProcessaVenda(fopm.vOrcchave);

    fopm.vretorno := fopm.vmeschave;
    Result := fopm.vretorno;
  finally
    fopm.Free;
  end;
End;

function FinalizaOrc(AOwner: TComponent; Conexao: TUniConnection; pChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;
Var
  i: Integer;
Begin
  Application.CreateForm(Tfopm, fopm);
  try

    fopm.zcone := Conexao;
    fopm.vOrcchave := pChave;
    fopm.Acesso := pAcesso;
    fopm.VAFaturar := AFaturar;

    fopm.vmeschave := fopm.FinalizaVenda(fopm.vOrcchave);

    fopm.vretorno := fopm.vmeschave;
    Result := fopm.vretorno;
  finally
    fopm.Free;
  end;
End;

function CarregaOrc(AOwner: TComponent; Conexao: TUniConnection; pOrcChave: string; pOrcDelChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;
Var
  i: Integer;
Begin
  Application.CreateForm(Tfopm, fopm);
  try
    fopm.zcone := Conexao;
    fopm.vOrcchave := pOrcChave;
    fopm.Acesso := pAcesso;
    fopm.VAFaturar := AFaturar;

    fopm.vOrcchave := fopm.CarregaVenda(pOrcChave, pOrcDelChave);

    fopm.vretorno := fopm.vOrcchave;
    Result := fopm.vretorno;
  finally
    fopm.Free;
  end;
End;

exports ProcessaOrc, CarregaOrc, FinalizaOrc;

procedure Tfopm.finalizadorTimer(Sender: TObject);
begin
  Close;
end;

procedure Tfopm.FormShow(Sender: TObject);
var
  vlArquivo: String;
begin
  vlArquivo := ExtractFilePath(Application.ExeName) + 'mopm.bpl';
  // Self.PlInfo.Caption := GetAppVersionStr(vlArquivo);

  Self.vmeschave := ProcessaVenda(Self.vOrcchave);

  finalizador.Enabled := True;
end;

function Tfopm.FinalizaVenda(chave: string): string;
var
  i: Integer;
  VTotServicos: Double;
  VTotProdutos: Double;
  vlTpocodigo: String;
  vlRfiChave: string;
  vlTitCodigo: Integer;

begin

  Result := '';
  vmeschave := '';

  try
    For i := 0 To Self.ComponentCount - 1 Do
      If Self.Components[i] Is tuniquery Then
        (Self.Components[i] As tuniquery).Connection := zcone;

    // zcone.StartTransaction;
    try

      rfm.Close;
      rfm.ParamByName('meschave').AsString := chave;
      rfm.Open;

      vlRfiChave := rfmrfichave.AsString;

      if rfm.IsEmpty then
      begin
        tit.Close;
        tit.Open;
        vlTitCodigo := 0;

        // verificar   vlTitCodigo := AjustaTit('', vlEtdCodigo, vlNrAuto, vlValorCartao, DataAtual, vlRdcData, tfdReceber, tfiCartao, '', vlValorCartao, vlQtdParcelas, 0, 0, 0, 0, 0, 0, '000', 1, 0, 0);

        If rfisrfcodigo.AsInteger = srfEmAberto Then
        Begin
          rfi.Close;
          rfi.ParamByName('rfichave').AsString := vlRfiChave;
          rfi.Open;

          if vlRfiChave <> '0' then
          begin
            rfi.edit;
            rfisrfcodigo.AsInteger := srfQuitado;
            // verificar       rfirfidtultbaixa.AsFloat := strtodate(vdatabx);
            rfi.post;

            lte.Append;
            // verificar       lteltedata.AsString := vdatabx;
            // verificar       ltelteprincipal.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
            // verificar       lteltejuros.AsCurrency := strtofloat(voblvalorjuros) + strtofloat(voblmulta);
            // verificar       lteltedesconto.AsString := voblvalordesc;
            lteltetotal.AsCurrency := ltelteprincipal.AsCurrency + lteltejuros.AsCurrency - lteltedesconto.AsCurrency;
            ltelteextenso.AsString := '';
            lteltehistorico.AsString := 'Recebimento via retorno cobrança';
            lteltemulta.AsFloat := 0;
            lteltesituacao.AsInteger := 0;
            lteflacodigo.AsInteger := Acesso.Filial;
            lteclbcodigo.AsInteger := Acesso.Usuario;
            // verificar       ltectacodigo.AsString := carctacodigo.AsString;
            ltelteregistro.AsString := agora(Application, zcone);
            lteltetroco.AsFloat := 0;
            lte.post;

            dtl.Append;
            dtlltechave.AsInteger := lteltechave.AsInteger;
            dtlcedcodigo.AsInteger := 1;
            dtldtlvalor.AsCurrency := lteltetotal.AsCurrency;
            dtlmdacodigo.AsInteger := mdaDinheiro;
            dtldtlvalorinfo.AsCurrency := lteltetotal.AsCurrency;
            dtl.post;

            // valor principal
            mfi.Append;
            mfirfichave.AsString := vlRfiChave;
            mfitmfcodigo.AsInteger := tmfRecebimento;
            mfimoecodigo.AsInteger := 1;
            // verificar       mfimfivalor.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
            // verificar       mfimfidata.AsString := vdatabx;
            mfimfihistorico.AsString := 'Recebimento Valor principal';
            // verificar       mfimfivalorori.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
            mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
            mfiflacodigo.AsInteger := Acesso.Filial;
            mfimfisituacao.AsInteger := 0;
            mfi.post;

            mlt.Append;
            mltmfichave.AsInteger := mfimfichave.AsInteger;
            mltltechave.AsInteger := lteltechave.AsInteger;
            mltflacodigo.AsInteger := Acesso.Filial;
            mlt.post;

            // desconto concedido

            { if (voblvalorjuros <> '') and (voblvalorjuros <> '0') then
              begin
              mfi.Append;
              mfirfichave.AsString := vlRfiChave;
              mfitmfcodigo.AsInteger := tmfRecebimentoJuros;
              mfimoecodigo.AsInteger := 1;
              mfimfivalor.AsCurrency := strtofloat(voblvalorjuros) + strtofloat(voblmulta);
              mfimfidata.AsString := vdatabx;
              mfimfihistorico.AsString := 'Desconto Concedido';
              mfimfivalorori.AsString := voblvalorjuros;
              mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
              mfiflacodigo.AsInteger := Acesso.Filial;
              mfimfisituacao.AsInteger := 0;
              mfi.post;

              mlt.Append;
              mltmfichave.AsInteger := mfimfichave.AsInteger;
              mltltechave.AsInteger := lteltechave.AsInteger;
              mltflacodigo.AsInteger := Acesso.Filial;
              mlt.post;
              end; }

            // desconto concedido
            { if (voblvalordesc <> '') and (voblvalordesc <> '0') then
              begin
              mfi.Append;
              mfirfichave.AsString := vlRfiChave;
              mfitmfcodigo.AsInteger := tmfDescontoaDebito;
              mfimoecodigo.AsInteger := 1;
              mfimfivalor.AsString := voblvalordesc;
              mfimfidata.AsString := vdatabx;
              mfimfihistorico.AsString := 'Desconto Concedido';
              mfimfivalorori.AsString := voblvalordesc;
              mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
              mfiflacodigo.AsInteger := Acesso.Filial;
              mfimfisituacao.AsInteger := 0;
              mfi.post;

              mlt.Append;
              mltmfichave.AsInteger := mfimfichave.AsInteger;
              mltltechave.AsInteger := lteltechave.AsInteger;
              mltflacodigo.AsInteger := Acesso.Filial;
              mlt.post;

              end; }

            cco.Append;
            // verificar       ccoctacodigo.AsString := carctacodigo.AsString;
            // verificar       ccoccoemissao.AsString := vdatabx;
            // verificar       ccoccovencimento.AsString := vdatabx;
            ccotoccodigo.AsInteger := tocNormal;
            ccocedcodigo.AsInteger := cedcredito;
            ccoclbcodigo.AsInteger := Acesso.Usuario;
            ccotficodigo.AsInteger := tfiOutros;
            ccomoecodigo.AsInteger := 1;
            ccocconumero.AsString := '';
            ccoccohistorico.AsString := 'Recebimento via retorno cobrança';
            ccoccovalor.AsCurrency := lteltetotal.AsCurrency;
            ccoccochaveorig.AsInteger := 0;
            ccoccochavedest.AsInteger := 0;
            ccoccoconciliado.AsInteger := 1;
            ccoccoextenso.AsString := '';
            ccoetdcodigo.AsInteger := rfietdcodigo.AsInteger;
            ccoccodatamov.AsString := hoje(Application, zcone);
            ccoccodataregistro.AsString := hoje(Application, zcone);
            ccoccohoraregistro.AsDateTime := Now;
            ccoccofavorecido.AsString := '';
            // verificar       ccophgcodigo.AsInteger := cfgphgbaixa.AsInteger;
            ccoflacodigo.AsInteger := Acesso.Filial;
            cco.post;

            clt.Append;
            cltccochave.AsInteger := ccoccochave.AsInteger;
            cltltechave.AsInteger := lteltechave.AsInteger;
            clt.post;

            consulta.SQL.Text := 'select CalcMovimentoFinanceiro(' + rfirfichave.AsString + ')';
            consulta.ExecSQL;

            consulta.SQL.Text := 'select CalcRegistroFinanceiro(' + rfirfichave.AsString + ')';
            consulta.ExecSQL;

          end;
        End;

      end;

      { if zcone.TransactionCount > 0 then
        if zcone.Transactions[0].Active then
        zcone.Commit; }
      Result := Self.vmeschave;
    except
      on e: Exception do
      begin
        { if zcone.TransactionCount > 0 then
          if zcone.Transactions[0].Active then
          zcone.Rollback; }

        MessageDlg('Erro finaliza venda: ' + #13 + e.Message, mtError, [mbOK], 0);
        SalvarTextoEmArquivo('Mensagem: ' + e.Message + #13 + #13 + e.StackTrace, ExtractFilePath(Application.ExeName) + 'Erros\Atendimento\' + FormatDateTime('ddmmyyhhnnsszzz',
          Now()) + '.txt');

        Exit;
      end;
    end;

  finally

  end;

end;

function Tfopm.AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
begin

  { if (vpCcoChave = '0') or (vpCcoChave = '') then
    begin
    mes.Close;
    mes.Params[0].AsString := Self.vchave;
    mes.Params[1].AsInteger := Acesso.Filial;
    mes.Open;
    end; }

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
    rfi.post;

    { if VpTfdCodigo = tfdVenda then
      begin
      rfm.Open;
      rfm.Append;
      rfmrfichave.AsInteger := Self.rfirfichave.AsInteger;
      rfmflacodigo.AsInteger := Acesso.Filial;
      rfmmeschave.AsString := vchave;
      rfm.post;
      end; }

    // registro
    mfi.Open;
    mfi.Append;
    mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
    mfitmfcodigo.AsInteger := tmfAReceber;
    mfimoecodigo.AsInteger := 1;
    mfimfivalor.AsFloat := rfirfivalor.AsFloat;
    // verificar   mfimfidata.AsFloat := DataAtual;
    mfimfihistorico.AsString := '';
    mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
    mfimfiparcela.AsInteger := 0;
    mfi.post;

    mlt.Open;
    mlt.Append;
    mltmfichave.AsInteger := Self.mfimfichave.AsInteger;
    mltltechave.AsInteger := Self.lteltechave.AsInteger;
    mltflacodigo.AsInteger := Acesso.Filial;
    mlt.post;

    Result := rfirfichave.AsInteger;
  end;

end;

function Tfopm.AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao: TDate; vtitvctoinicial: TDate; vtfdcodigo: Integer;
  vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia: Double; vtitvalomulta: Double; vtitpercmesmora: Double;
  vtitvalodesc: Double; vtitpercmulta: Double; vtitpercmesmulta: Double; vbcocodigo: String; vcarcodigo: Integer; vtitdiasmulta: Integer; vtitdiasdesc: Integer): Integer;

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
    tit.edit;
  end
  else
  begin
    tit.SQL.Add('limit 1');
    tit.Open;
    tit.Append;
  end;

  // verificar  tittithora.AsFloat := HoraAtual;
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
  tit.post;

  Result := tittitcodigo.AsInteger;
end;

function Tfopm.ProcessaVenda(chave: string): string;
var
  i: Integer;
  VTotServicos: Double;
  VTotProdutos: Double;
  vlTpocodigo: String;
  vlUfsCodigo: String;

  vlbicm: Double;
  vlicm: Double;

  vlipi: Double;
  vlpis: Double;
  vlcofins: Double;
  vlcofinss: Double;
  vlacrescimoav: Double;

begin

  Result := '';
  vmeschave := '';

  try
    For i := 0 To Self.ComponentCount - 1 Do
      If Self.Components[i] Is tuniquery Then
        (Self.Components[i] As tuniquery).Connection := zcone;

    // zcone.StartTransaction;

    try

      orc.Close;
      orc.Params[0].AsString := Self.vOrcchave;
      orc.Params[1].AsInteger := Acesso.Filial;
      orc.Open;

      cfg.Open;

      if orc.IsEmpty then
        raise Exception.Create('Número de atendimento não localizado.');

      (*
        *Identifica duplicidade de venda
      *)
      mor.Close;
      mor.Params[0].AsInteger := orcorcchave.AsInteger;
      mor.Open;

      mor.First;
      while not mor.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'DELETE FROM mes WHERE mes.meschave = ' + mormeschave.AsString;
        consulta.ExecSQL;

        mor.Next;
      end;

      mor.Close;

      (*
        *Inicia Processamento da Venda
      *)
      mes.Open;
      mes.Append;
      mesetdcodigo.AsInteger := Self.orcetdcodigo.AsInteger;
      mesclbcodigo.AsInteger := Self.orcclbcodigo.AsInteger;

      if Self.orcclbvendedor.AsInteger > 0 then
        mesclbvendedor.AsInteger := Self.orcclbvendedor.AsInteger
      else
        mesclbvendedor.AsInteger := Self.orcclbcodigo.AsInteger;

      if orcmoccodigo.AsInteger = mocDelivery then
      begin
        mesmesemissao.AsFloat := orcorcdataabert.AsFloat;
        mesmesregistro.AsFloat := orcorcdataabert.AsFloat;
      end
      else
      begin
        mesmesemissao.AsFloat := Date;
        mesmesregistro.AsFloat := Date;
      end;

      if VAFaturar then
        mestdfcodigo.AsString := tdfMovimentoAFaturar
      else
        mestdfcodigo.AsString := tdfMovimentoEmAndamento;

      messdecodigo.AsString := '00';
      mesmesserie.AsString := Self.cfgcfgserienfe.AsString;
      mesmesnumero.AsString := '0';
      mesfopcodigo.AsString := orcfopcodigo.AsString;

      mesedritem.AsInteger := orcedritem.AsInteger;

      consulta.Close;
      consulta.SQL.Text := 'SELECT ufscodigo FROM edr WHERE edr.etdcodigo=' + mesetdcodigo.AsString + ' and edritem=' + mesedritem.AsString;
      consulta.Open;

      if consulta.IsEmpty then
        vlUfsCodigo := consulta.Fields[0].AsString
      else
      begin
        if consulta.Fields[0].AsString <> '' then
        begin
          vlUfsCodigo := consulta.Fields[0].AsString;
        end
        else
        begin
          vlUfsCodigo := cfgufscodigo.AsString;
        end;
      end;

      if vlUfsCodigo = cfgufscodigo.AsString then
      begin
        if ParaFilial then
          mestoecodigo.AsInteger := cfgcfgtoetransflainte.AsInteger
        else
          mestoecodigo.AsInteger := cfgcfgtoemesinte.AsInteger;
      end
      else
      begin
        if ParaFilial then
          mestoecodigo.AsInteger := cfgcfgtoetransflafora.AsInteger
        else
          mestoecodigo.AsInteger := cfgcfgtoemesfora.AsInteger;
      end;

      consulta.Close;

      { * calcular separado o valor de produtos e serviços * }
      VTotServicos := 0;
      VTotProdutos := 0;
      vlacrescimoav := 0;

      ito.Close;
      ito.Params[0].AsString := Self.vOrcchave;
      ito.Params[1].AsInteger := Acesso.Filial;

      ito.Open;

      while not ito.Eof do
      begin

        if Self.orcpuocodigo.AsInteger = puoAVista then // foi fechado a vista
        begin
          if itotpocodigo.AsInteger = 9 then
            VTotServicos := VTotServicos + Self.itoitosaldoav.AsFloat
          else
          begin
            VTotProdutos := VTotProdutos + Self.itoitosaldoav.AsFloat;
            vlacrescimoav := vlacrescimoav + Self.itoitoacrescimoav.AsCurrency;
          end;
        end
        else
        begin
          if itotpocodigo.AsInteger = 9 then
            VTotServicos := VTotServicos + Self.itoitosaldoap.AsFloat
          else
          begin
            VTotProdutos := VTotProdutos + Self.itoitosaldoap.AsFloat;
            vlacrescimoav := vlacrescimoav + Self.itoitoacrescimoav.AsCurrency;
          end;

        end;
        ito.Next;
      end;

      if Self.orcpuocodigo.AsInteger = puoAVista then // foi fechado a vista
      begin
        mesmesservicos.AsFloat := VTotServicos;
        mesmesprodutos.AsFloat := VTotProdutos + vlacrescimoav;

        mesmestotal.AsFloat := Self.orcorctotalav.AsFloat + vlacrescimoav;
        mesmesdesconto.AsFloat := Self.orcorcdescontoav.AsFloat;
        mesmesvalor.AsFloat := Self.orcorcgeralav.AsFloat + vlacrescimoav;
      end
      else
      begin
        mesmesservicos.AsFloat := VTotServicos;
        mesmesprodutos.AsFloat := VTotProdutos + vlacrescimoav;

        mesmestotal.AsFloat := Self.orcorctotalap.AsFloat + vlacrescimoav;
        mesmesdesconto.AsFloat := Self.orcorcdescontoap.AsFloat;
        mesmesvalor.AsFloat := Self.orcorcgeralap.AsFloat + vlacrescimoav;
      end;

      mestfpcodigo.AsInteger := tfpAVista;
      mesrefcodigo.AsInteger := 0;
      mesmesfrete.AsFloat := 0;
      mesmesseguro.AsFloat := 0;
      mesmesoutras.AsFloat := 0;

      mesmesbicm.AsFloat := 0;
      mesmesicm.AsFloat := 0;
      mesmesipi.AsFloat := 0;
      mesmespis.AsFloat := 0;

      mesmescofins.AsFloat := 0;
      mesmespiss.AsFloat := 0;
      mesmescofinss.AsFloat := 0;
      mestrmcodigo.AsInteger := Self.orctrmcodigo.AsInteger;
      mesmesprotocolo.AsString := '';
      mestrfcodigo.AsInteger := 0;
      mestemcodigo.AsInteger := 1;

      mesmesbicms.AsFloat := 0;
      mesmesicms.AsFloat := 0;

      (* Equipamento de OS *)
      if orceqpcodigo.AsInteger > 0 then
        meseqpcodigo.AsInteger := orceqpcodigo.AsInteger;

      mesflacodigo.AsInteger := Acesso.Filial;

      if orcmoccodigo.AsInteger = mocDelivery then
      begin
        mesmesinclusao.AsString := orcorcdataabert.AsString + ' ' + orcorchoraabert.AsString;
      end
      else
      begin
        mesmesinclusao.AsString := agora(Application, zcone);
      end;
      mesmestelefone.AsString := orcorctelefone.AsString;
      mesoricodigo.AsString := orcoricodigo.AsString;
      mesclbcodigoent.AsString := orcclbentregador.AsString;
      mes.post;

      { * Ajusta orçamento para movimento em andamento apos venda ser processada * }
      orc.edit;
      orctdfcodigo.AsString := tdfMovimentoEmAndamento;
      orcorcdataencerr.AsString := hoje(Application, zcone);
      orcorchoraabert.AsFloat := Now;
      orc.post;

      consulta.Close;
      consulta.SQL.Text := 'update ito set tdfcodigo=' + QuotedStr(tdfMovimentoEmAndamento) + ' where orcchave=' + orcorcchave.AsString;
      consulta.ExecSQL;
      { ** }

      vmeschave := Self.mesmeschave.AsString;
      fopm.vretorno := vmeschave;
      vpToeCodigo := Self.mestoecodigo.AsInteger;
      // mes.Close;

      (* Vínculo Venda -> Orçamento *)
      mor.Open;
      mor.Append;
      mororcchave.AsString := Self.vOrcchave;
      mormeschave.AsString := vmeschave;
      morflacodigo.AsInteger := Acesso.Filial;
      mor.post;
      mor.Close;

      if orcorcobs.AsString <> '' then
      begin
        tom.Open;
        tof.Open;

        tof.Append;
        toftofidentificacao.AsString := orcorcobs.AsString;
        tof.post;

        tom.Append;
        tomtofcodigo.AsInteger := toftofcodigo.AsInteger;
        tommeschave.AsString := vmeschave;
        tom.post;

        tof.Close;
        tom.Close;
      end;

      (*
        * Itens da Venda
      *)

      vlbicm := 0;
      vlicm := 0;

      vlipi := 0;
      vlpis := 0;
      vlcofins := 0;
      vlcofinss := 0;

      itm.Close;
      itm.FilterSQL := 'meschave=' + vmeschave;
      itm.Filtered := True;
      itm.Open;

      ito.Close;
      ito.Params[0].AsString := Self.vOrcchave;
      ito.Params[1].AsInteger := Acesso.Filial;
      ito.Open;
      itl.Open;

      while not ito.Eof do
      begin
        itm.Append;
        itmmeschave.AsString := vmeschave;
        itmitmitem.AsInteger := Self.itoitoitem.AsInteger;
        itmprocodigo.AsInteger := Self.itoprocodigo.AsInteger;

        itmitmquantidade.AsFloat := Self.itoitoquantidade.AsFloat;

        if Self.orcpuocodigo.AsInteger = puoAVista then
        begin

          itmitmdesconto.AsFloat := Self.itoitodescontoav.AsFloat;
          itmitmtotal.AsFloat := Self.itoitototalav.AsFloat + itoitoacrescimoav.AsCurrency;
          itmitmvalor.AsFloat := itmitmtotal.AsFloat / Self.itoitoquantidade.AsFloat;
        end
        else
        begin

          itmitmdesconto.AsFloat := Self.itoitodescontoap.AsFloat;
          itmitmtotal.AsFloat := Self.itoitototalap.AsFloat + itoitoacrescimoav.AsCurrency;
          itmitmvalor.AsFloat := itmitmtotal.AsFloat / Self.itoitoquantidade.AsFloat;
        end;

        consulta.Close;
        consulta.SQL.Text := 'select tpocodigo from pro where procodigo=' + Self.itoprocodigo.AsString;
        consulta.Open;

        vlTpocodigo := consulta.FieldByName('tpocodigo').AsString;

        consulta.Close;
        consulta.SQL.Text := 'SELECT cfocfop FROM toe,otp WHERE toe.toecodigo=' + IntToStr(vpToeCodigo) + ' AND otp.toecodigo=toe.toecodigo and otp.tpocodigo=' + vlTpocodigo;
        consulta.Open;

        itmtoecodigo.AsInteger := vpToeCodigo;
        itmcfocfopdestinacao.AsString := Self.consulta.FieldByName('cfocfop').AsString;
        itmcfocfop.AsString := Self.consulta.FieldByName('cfocfop').AsString;
        consulta.Close;

        consulta.Close;
        consulta.SQL.Text := 'select  icmcodigo,  propercreducaobaseicm from pro where procodigo=' + Self.itoprocodigo.AsString;
        consulta.Open;

        toe.Close;
        toe.ParamByName('toecodigo').AsInteger := itmtoecodigo.AsInteger;
        toe.Open;

        if cfgcrtcodigo.AsInteger = 3 then // não é simples nem mei
        begin
          // pis
          itmcspcodigo.AsString := toe.FieldByName('cspcodigo').AsString;
          itmitmbpis.AsFloat := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
          itmitmaliqpis.AsFloat := toe.FieldByName('cfgpercentualpis').AsFloat;
          itmitmpis.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) * (toe.FieldByName('cfgpercentualpis').AsFloat / 100);
          itmitmquantpis.AsFloat := 0;
          itmitmaliqpisvalor.AsFloat := 0;
          // cofins
          itmcsfcodigo.AsString := toe.FieldByName('csfcodigo').AsString;
          itmitmbcofins.AsFloat := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;
          itmitmaliqcofins.AsFloat := toe.FieldByName('cfgpercentualcofins').AsFloat;
          itmitmcofins.AsFloat := ((itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency) * (toe.FieldByName('cfgpercentualcofins').AsFloat / 100);
          itmitmquantcofins.AsFloat := 0;
          itmitmaliqcofinsvalor.AsFloat := 0;
          // ipi
          itmcsicodigo.AsString := toe.FieldByName('csicodigo').AsString;
          itmitmapuipi.AsInteger := 1;
          itmitmbipi.AsFloat := 0;
          itmitmaliqipi.AsFloat := 0;
          itmitmipi.AsFloat := 0;

          // icm
          itmcstcodigo.AsString := toe.FieldByName('cstcodigo').AsString;
          itmicmcodigo.AsString := consulta.FieldByName('icmcodigo').AsString;
          icm.Close;
          icm.ParamByName('icmcodigo').AsString := itmicmcodigo.AsString;
          icm.Open;

          If (icm.FieldByName('icmaliquotas').AsFloat = 0.01) or (icm.FieldByName('icmaliquotas').AsFloat = 0) Then
          Begin
            itmitmbicm.AsFloat := 0;
            itmitmaliqicm.AsFloat := 0;
            itmitmicm.AsFloat := 0;

            itmitmbicms.AsFloat := 0;
            itmitmaliqicms.AsFloat := 0;
            itmitmicms.AsFloat := 0;

          End
          Else
          Begin

            itmitmbicm.AsCurrency := (itmitmvalor.AsCurrency * itmitmquantidade.AsFloat) - itmitmdesconto.AsCurrency;

            if consulta.FieldByName('propercreducaobaseicm').AsFloat <> 0 then
            begin
              itmitmpercreducaobaseicm.AsFloat := consulta.FieldByName('propercreducaobaseicm').AsFloat;
              itmitmbicm.AsCurrency := itmitmbicm.AsCurrency - (itmitmbicm.AsCurrency * (consulta.FieldByName('propercreducaobaseicm').AsFloat / 100));
            end;

            itmitmaliqicm.AsCurrency := Self.itmitmicm.AsFloat;
            itmitmicm.AsCurrency := itmitmbicm.AsCurrency * (icm.FieldByName('icmaliquotas').AsFloat / 100);

            itmitmbicms.AsFloat := 0;
            itmitmaliqicms.AsFloat := 0;
            itmitmicms.AsFloat := 0;

          End;

        end
        else
        begin
          // ipi
          itmcsicodigo.AsString := toe.FieldByName('csicodigo').AsString;
          itmitmapuipi.AsInteger := 1;
          itmitmbipi.AsFloat := 0;
          itmitmaliqipi.AsFloat := 0;
          itmitmipi.AsFloat := 0;

          // pis
          itmcspcodigo.AsString := toe.FieldByName('cspcodigo').AsString;
          itmitmbpis.AsFloat := 0;
          itmitmaliqpis.AsFloat := 0;
          itmitmpis.AsFloat := 0;
          itmitmquantpis.AsFloat := 0;
          itmitmaliqpisvalor.AsFloat := 0;
          // cofins
          itmcsfcodigo.AsString := toe.FieldByName('csfcodigo').AsString;
          itmitmbcofins.AsFloat := 0;
          itmitmaliqcofins.AsFloat := 0;
          itmitmquantcofins.AsFloat := 0;
          itmitmaliqcofinsvalor.AsFloat := 0;
          itmitmcofins.AsFloat := 0;

          // icm
          itmcstcodigo.AsString := toe.FieldByName('cstcodigo').AsString;
          itmicmcodigo.AsString := consulta.FieldByName('icmcodigo').AsString;
          itmitmbicm.AsFloat := 0;
          itmitmaliqicm.AsFloat := 0;
          itmitmicm.AsFloat := 0;
          // icm st
          itmitmbicms.AsFloat := 0;
          itmitmaliqicms.AsFloat := 0;
          itmitmicms.AsFloat := 0;

        end;

        // acumadores do mes
        vlbicm := vlbicm + itmitmbicm.AsCurrency;
        vlicm := vlicm + itmitmicm.AsCurrency;
        vlipi := vlipi + itmitmipi.AsCurrency;
        vlpis := vlpis + itmitmpis.AsCurrency;
        vlcofins := vlcofins + itmitmcofins.AsCurrency;

        itmitmdesccomple.AsString := Self.itoitoprocomple.AsString;
        itmitmmovifisico.AsInteger := 0;

        itmpcccodigo.AsString := Self.cfgcfgpccvenda.AsString;

        itmunicodigo.AsInteger := Self.itounicodigo.AsInteger;
        itmpuncodigo.AsInteger := Self.itopuncodigo.AsInteger;

        consulta.Close;
        consulta.SQL.Text := 'SELECT unicodigobase FROM pun WHERE puncodigo=' + itmpuncodigo.AsString;
        consulta.Open;

        itmunicodigobase.AsInteger := consulta.Fields[0].AsInteger;
        consulta.Close;

        itmitmcontendo.AsFloat := itoitocontendo.AsFloat;

        itmprogtin.AsString := Self.itoitogint.AsString;

        itmitmoutras.AsFloat := 0;
        itmitmseguro.AsFloat := 0;
        itmitmfrete.AsFloat := 0;
        itmitmcusto.AsFloat := 0;

        itmitmtipodesc.AsInteger := Self.itotdecodigo.AsInteger;
        itmitminfadprod.AsString := itoitoinfadprod.AsString;
        itmitmproservico.AsString := itoitoproservico.AsString;
        itmflacodigo.AsInteger := Acesso.Filial;
        itmitochave.AsInteger := itoitochave.AsInteger;
        itmpmpchave.AsInteger := itopmpchave.AsInteger;

        if copy(itotempoemproducao.AsString, 1, 1) = '-' then
        begin
          if strtoint(copy(itotempoemproducao.AsString, 2, 2)) > 23 then
            itmitmtempoproducao.AsString := '23:59:00'
          else
            itmitmtempoproducao.AsString := trim(copy(itotempoemproducao.AsString, 2, 10));
        end
        else
        begin
          if strtoint(copy(itotempoemproducao.AsString, 1, 2)) > 23 then
            itmitmtempoproducao.AsString := '23:59:00'
          else
            itmitmtempoproducao.AsString := itotempoemproducao.AsString;
        end;

        if copy(itotempoementrega.AsString, 1, 1) = '-' then
        begin
         if strtoint(copy(itotempoementrega.AsString,2,2))>23 then
          itmitmtempoentrega.AsString := '23:59:00'
         else
          itmitmtempoentrega.AsString := trim(copy(itotempoementrega.AsString, 2, 10));
        end
        else
        begin
         if strtoint(copy(itotempoementrega.AsString,1,2))>23 then
          itmitmtempoentrega.AsString := '23:59:00'
         else
          itmitmtempoentrega.AsString := itotempoementrega.AsString;
        end;

        itm.post;

        imp.Close;
        imp.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
        imp.Open;

        if not imp.IsEmpty then
        begin
          imp.edit;
          impitmchave.AsInteger := itmitmchave.AsInteger;
          imp.post;
        end;

        sbi.Close;
        sbi.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
        sbi.Open;

        if not sbi.IsEmpty then
        begin
          sbv.Open;
          sbi.First;
          while not sbi.Eof do
          begin
            sbv.Append;
            sbvitmchave.AsInteger := itmitmchave.AsInteger;
            sbvitochave.AsInteger := sbvitochave.AsInteger;
            sbvsbrcodigo.AsInteger := sbisbrcodigo.AsInteger;
            sbvsbvobs.AsString := sbisbiobs.AsString;
            sbvsbvitem.AsString := sbisbiitem.AsString;
            sbvbprchave.AsString := sbibprchave.AsString;
            sbv.post;

            isi.Close;
            isi.ParamByName('sbichave').AsInteger := sbisbichave.AsInteger;
            isi.Open;

            isv.Open;
            while not isi.Eof do
            begin

              isv.Append;
              isvsbvchave.AsInteger := sbvsbvchave.AsInteger;
              isvtsicodigo.AsInteger := isitsicodigo.AsInteger;
              isvprocodigo.AsInteger := isiprocodigo.AsInteger;
              isvisvtipo.AsInteger := isiisitipo.AsInteger;
              isvitochave.AsInteger := isiitochave.AsInteger;
              isvitmchave.AsInteger := itmitmchave.AsInteger;
              isvisvitem.AsInteger := isiisiitem.AsInteger;
              isvisvquantidade.AsInteger := isiisiquantidade.AsInteger;

              isv.post;
              isi.Next;
            end;

            sbi.Next;
          end;
        end;

        (* Verifica se produto possui variação e salva a movimentação desta *)
        if itovrpcodigo.AsInteger > 0 then
        begin
          if not imv.Active then
            imv.Open;
          imv.Append;
          imvitmchave.AsInteger := itmitmchave.AsInteger;
          imvvrpcodigo.AsInteger := itovrpcodigo.AsInteger;
          imvimvquantidade.AsFloat := itmitmquantidade.AsFloat;
          imv.post;
        end;

        (* Processa o Colaborador e percentual de comissão do item *)

        if orcmoccodigo.AsInteger = 7 then
        begin

          imm.Close;
          imm.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
          imm.Open;

          while not imm.Eof do
          begin

            if immetdcodigoent.AsInteger <> 0 then
            begin
              cen.Close;
              cen.ParamByName('etdcodigo').AsInteger := immetdcodigoent.AsInteger;
              cen.Open;

              if cen.IsEmpty then
              begin

                etdcen.Close;
                etdcen.ParamByName('etdcodigo').AsInteger := immetdcodigoent.AsInteger;
                etdcen.Open;

                if not clbcen.Active then
                begin
                  clbcen.Open;
                end;

                clbcen.Append;

                clbcenfnccodigo.AsInteger := 1;
                clbcenclbdescmaximo.AsFloat := 0;
                clbcenclbsenha.AsString := '1234';
                clbcenclbativo.AsInteger := 1;
                clbcenclbidentificacao.AsString := etdcenetdidentificacao.AsString;
                clbcenclbsuper.AsInteger := 0;
                clbcenclbpercdispmulta.AsInteger := 0;
                clbcenclbpercdispmora.AsInteger := 0;
                clbcenclbpercdescrfi.AsInteger := 0;
                clbcenclbliberacredito.AsInteger := 0;
                clbcenclbatualizador.AsInteger := 0;
                clbcenclbperccomissao.AsInteger := 0;
                clbcenclbsalvaima.AsInteger := 0;
                clbcenclbsalvasaldo.AsInteger := 0;
                clbcenflacodigo.AsInteger := Acesso.Filial;
                clbcen.post;

                cen.Append;
                cenclbcodigo.AsInteger := clbcenclbcodigo.AsInteger;
                cenetdcodigo.AsInteger := immetdcodigoent.AsInteger;
                cen.post;

                cen.Close;
                cen.ParamByName('etdcodigo').AsInteger := immetdcodigoent.AsInteger;
                cen.Open;

              end;

              if not imc.Active then
                imc.Open;

              imc.Append;
              imcclbcodigo.AsInteger := cenclbcodigo.AsInteger;
              imcitmchave.AsInteger := itmitmchave.AsInteger;
              imcimcpercentual.AsFloat := 100;
              imcflacodigo.AsInteger := Acesso.Filial;
              imc.post;

            end;

            imm.Next;
          end;

        end
        else
        begin

          ioc.Close;
          ioc.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
          ioc.Open;

          while not ioc.Eof do
          begin

            if iocclbcodigo.AsInteger <> 0 then
            begin

              if not imc.Active then
                imc.Open;

              imc.Append;
              imcclbcodigo.AsInteger := iocclbcodigo.AsInteger;
              imcitmchave.AsInteger := itmitmchave.AsInteger;
              imcimcpercentual.AsFloat := iociocpercentual.AsFloat;
              imcflacodigo.AsInteger := Acesso.Filial;
              imc.post;
            end;

            ioc.Next;
          end;

        end;

        itl.Open;
        itl.Append;
        itlclbcodigo.AsInteger := Self.orcclbcodigo.AsInteger;
        itlitmchave.AsInteger := Self.itmitmchave.AsInteger;
        itlitlpercentual.AsFloat := 100;
        itl.post;
        itl.Close;

        ito.Next;
      end;

      // atualzia todas da venda
      mes.edit;
      mesmesbicm.AsCurrency := vlbicm;
      mesmesicm.AsCurrency := vlicm;
      mesmesipi.AsCurrency := vlipi;
      mesmespis.AsCurrency := vlpis;
      mesmescofins.AsCurrency := vlcofins;
      mesmesretorno.AsString := orcorcretorno.AsString;
      mesmesliberadoentrega.AsString := orcorcliberadoentrega.AsString;
      mesmestelefone.AsString := orcorctelefone.AsString;
      mesoricodigo.AsString := orcoricodigo.AsString;
      mesclbcodigoent.AsString := orcclbentregador.AsString;
      mes.post;

      Result := Self.vmeschave;

      (* Veículos do Atendimento *)
      vor.Close;
      vor.Params[0].AsInteger := orcorcchave.AsInteger;
      vor.Open;

      if not vor.IsEmpty then
      begin
        vme.Open;
        vme.Append;
        vmeveicodigo.AsInteger := vorveicodigo.AsInteger;
        vmemeschave.AsString := vmeschave;
        vme.post;
        vme.Close;
      end;

      if cfgcfgdefinetoeatendimento.AsInteger = 1 then
        DefineOperacao;

      // zcone.Commit;

      if cfgcfgproinativsaldozero.AsInteger = 1 then
      begin

        ito.First;
        while not ito.Eof do
        begin

          if itostocodigo.AsInteger <> 88 then
          begin

            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itoprocodigo.AsString + ', IF((select prosaldo from pro where procodigo=' + itoprocodigo.AsString + ')=0,2,1) )';
            saldo.ExecSQL;

            saldo.Close;
            saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itoprocodigo.AsString + ', IF((select prosaldodisp from pro where procodigo=' + itoprocodigo.AsString + ')=0,2,1) )';
            saldo.ExecSQL;

          end;
          ito.Next;
        end;

      end
      else
      begin
        ito.First;
        while not ito.Eof do
        begin
          if itostocodigo.AsInteger <> 88 then
          begin

            if clbclbsalvasaldo.AsInteger = 1 then
            begin

              saldo.Close;
              saldo.SQL.Text := 'select procodigo, prosaldo, prosaldodisp,proestoque from pro where procodigo=' + itoprocodigo.AsString + ' and unicodigo=' + itounicodigo.AsString;
              saldo.Open;

              if saldo.FieldByName('proestoque').AsInteger = 1 then
              begin
                saldo.edit;
                saldo.FieldByName('prosaldodisp').AsFloat := saldo.FieldByName('prosaldodisp').AsFloat - itoitoquantidade.AsFloat;
                saldo.post;
              end;
            end;

          end;
          ito.Next;
        end;
      end;

      Result := Self.vmeschave;
    except
      on e: Exception do
      begin
        { if zcone.TransactionCount > 0 then
          zcone.Rollback; }

        MessageDlg('Erro finaliza venda: ' + #13 + e.Message, mtError, [mbOK], 0);
        SalvarTextoEmArquivo('Mensagem: ' + e.Message + #13 + #13 + e.StackTrace, ExtractFilePath(Application.ExeName) + 'Erros\Atendimento\' + FormatDateTime('ddmmyyhhnnsszzz',
          Now()) + '.txt');

        Exit;
      end;
    end;

  finally

    itm.Close;
    ito.Close;
    itl.Close;

    vor.Close;
    orc.Close;
    cfg.Close;

  end;
end;

function Tfopm.CarregaVenda(pOrcChave: string; pOrcDelChave: string): string;
var
  i: Integer;
  VTotServicos: Double;
  VTotProdutos: Double;

begin

  Result := '';
  vmeschave := '';
  Result := '';

  try
    For i := 0 To Self.ComponentCount - 1 Do
      If Self.Components[i] Is tuniquery Then
        (Self.Components[i] As tuniquery).Connection := zcone;

    // zcone.StartTransaction;

    try

      orc.Close;
      orc.Params[0].AsString := pOrcChave;
      orc.Params[1].AsInteger := Acesso.Filial;
      orc.Open;

      orcdel.Close;
      orcdel.Params[0].AsString := pOrcDelChave;
      orcdel.Params[1].AsInteger := Acesso.Filial;
      orcdel.Open;

      if orcdel.IsEmpty then
      begin
        { if zcone.TransactionCount > 0 then
          zcone.Rollback; }
        Result := '';
        Exit;
      end;

      cfg.Open;

      if orc.IsEmpty then
        raise Exception.Create('Número de atendimento não localizado.');

      ito.Close;
      ito.Params[0].AsString := pOrcChave;
      ito.Params[1].AsInteger := Acesso.Filial;
      ito.Open;

      itodel.Close;
      itodel.Params[0].AsString := pOrcDelChave;
      itodel.Params[1].AsInteger := Acesso.Filial;
      itodel.Open;

      itodel.First;
      while not itodel.Eof do
      begin

        ito.Append;
        for i := 1 to ito.FieldCount - 1 do
        begin
          ito.Fields[i].AsString := itodel.Fields[i].AsString
        end;
        itoorcchave.AsInteger := orcorcchave.AsInteger;
        itostocodigo.AsInteger := stoEmDigitacao;
        ito.post;

        itodel.Next;

      end;

      Result := pOrcDelChave;

      { * Ajusta orçamento para movimento em andamento apos venda ser processada * }
      orc.edit;
      orctdfcodigo.AsString := tdfMovimentoEmAndamento;
      orc.post;

      consulta.Close;
      consulta.SQL.Text := 'update ito set tdfcodigo=' + QuotedStr(tdfMovimentoEmAndamento) + ' where orcchave=' + orcorcchave.AsString;
      consulta.ExecSQL;
      { ** }

      // zcone.Commit;

    except
      on e: Exception do
      begin
        { if zcone.TransactionCount > 0 then
          zcone.Rollback; }

        MessageDlg('Erro finaliza venda: ' + #13 + e.Message, mtError, [mbOK], 0);
        SalvarTextoEmArquivo('Mensagem: ' + e.Message + #13 + #13 + e.StackTrace, ExtractFilePath(Application.ExeName) + 'Erros\Atendimento\' + FormatDateTime('ddmmyyhhnnsszzz',
          Now()) + '.txt');

        Exit;
      end;
    end;

  finally

    ito.Close;
    itodel.Close;

    orc.Close;
    orcdel.Close;

    cfg.Close;

  end;
end;

procedure Tfopm.DefineOperacao;
var
  ExecForm: function(AOwner: TComponent; Conexao: TUniConnection; pAcesso: TAcesso; pMesChave: Integer): string;
  vlPack: NativeUInt;
Begin
  vlPack := LoadPackage('modulos\mdov.bpl');
  If vlPack <> 0 Then
    try
      @ExecForm := GetProcAddress(vlPack, PChar('formu'));

      if Assigned(ExecForm) then
        ExecForm(Application, zcone, Acesso, strtoint(vmeschave));
    finally
      DoUnLoadPackage(Application, vlPack);
    end;
end;

function Tfopm.ParaFilial: Boolean;
begin
  consulta.Close;
  consulta.SQL.Text := 'select etdcodigo from fla where flacodigo<>' + Acesso.Filial.ToString;
  consulta.Open;
  Result := consulta.Locate('etdcodigo', orcetdcodigo.AsInteger, []);
  consulta.Close;
end;

end.
