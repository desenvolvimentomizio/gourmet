// classe de compra para importação dos XMLS de NFE recebidas
unit ufcpr;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Graphics, Vcl.Dialogs, System.SysUtils,
  Vcl.Grids, System.DateUtils, uFuncoes, uBuscaProduto, uPegaBase,
  System.ImageList, ACBrBase, ACBrDFe, ACBrNFe, ACBrDFeSSL, pcnConversao, pcnConversaoNFe,
;

type
  // formulário de compra
  Tfcpr = class(Tfrmbase)
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgprouso: TIntegerField;
    Dcfg: tunidatasource;
    buscapro: tuniquery;
    Dbuscapro: tunidatasource;
    probusca: tuniquery;
    probuscaprocodigo: TIntegerField;
    probuscapronome: TStringField;
    Dvitm: tunidatasource;
    itm: tuniquery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
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
    itmtoeidentificacao: TStringField;
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
    itmunisimbolo: TStringField;
    itmpuncodigo: TIntegerField;
    itmpunidentificacao: TStringField;
    itmprogtin: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmunisimbolobase: TStringField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    Detd: tunidatasource;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetdapelido: TStringField;
    etdetddeletar: TIntegerField;
    etdtpecodigo: TIntegerField;
    etdetddatacad: TDateField;
    etdetddataalt: TDateField;
    etdetddoc1: TStringField;
    etv: tuniquery;
    etvetvcodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    ete: tuniquery;
    eteetecodigo: TIntegerField;
    eteetdcodigo: TIntegerField;
    eteeteemail: TStringField;
    eteetecontato: TStringField;
    eteetedepartamento: TStringField;
    edr: tuniquery;
    edredrcodigo: TIntegerField;
    edrtedcodigo: TIntegerField;
    edretdcodigo: TIntegerField;
    edredrrua: TStringField;
    edredrnumero: TStringField;
    edredrcxpostal: TStringField;
    edredrcomple: TStringField;
    edredrbairro: TStringField;
    edrcddcodigo: TStringField;
    edredrinscest: TStringField;
    edredrcep: TStringField;
    etf: tuniquery;
    etfetfcodigo: TIntegerField;
    etfetdcodigo: TIntegerField;
    etfttfcodigo: TIntegerField;
    etfetftelefone: TStringField;
    etfetfcontato: TStringField;
    etfetfdepartamento: TStringField;
    mfi: tuniquery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    pun: tuniquery;
    punpuncodigo: TIntegerField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    punpunidentificacao: TStringField;
    pununicodigobase: TIntegerField;
    punpunmultiplicador: TFloatField;
    punpunquantidade: TFloatField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpuncusto: TFloatField;
    punpunmargem: TFloatField;
    punpunpesobruto: TFloatField;
    punpunpesoliq: TFloatField;
    pundgrcodigo: TIntegerField;
    punpunbarra: TStringField;
    puntuncodigo: TIntegerField;
    icm: tuniquery;
    icmicmcodigo: TStringField;
    icmicmaliquotas: TStringField;
    Uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    uniuninome: TStringField;
    spd: tuniquery;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspdativo: TIntegerField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    tdf: tuniquery;
    tdftdfcodigo: TStringField;
    tdftdfidentificacao: TStringField;
    ufs: tuniquery;
    ufsufssigla: TStringField;
    ufstedcodigo: TIntegerField;
    ufsetdcodigo: TIntegerField;
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfidentificacao: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registromeschavenfe: TStringField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificacao: TStringField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromestotal: TFloatField;
    registromesfrete: TFloatField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    registromespis: TFloatField;
    registromescofins: TFloatField;
    registromespiss: TFloatField;
    registromescofinss: TFloatField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    acoes: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    Label1: TLabel;
    meschave: TDBEdit;
    Label10: TLabel;
    meschavenfe: TDBEdit;
    btnimportarnfe: TButton;
    Label6: TLabel;
    etdcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    mesemissao: TDBEdit;
    Label4: TLabel;
    mesregistro: TDBEdit;
    Label9: TLabel;
    messerie: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    toecodigo: TDBEdit;
    ufssiglaetd_old: TDBText;
    ufssiglacfg: TDBText;
    PlResumo: TPanel;
    PlLinha1: TPanel;
    GBBaseICM: TGroupBox;
    mesbicm: TDBEdit;
    GBValorICM: TGroupBox;
    mesicm: TDBEdit;
    GBBaseICMST: TGroupBox;
    mesbicms: TDBEdit;
    GBValorICMST: TGroupBox;
    mesicms: TDBEdit;
    GBTotalBruto: TGroupBox;
    mesvalor: TDBEdit;
    Panel1: TPanel;
    GBDesconto: TGroupBox;
    mesdesconto: TDBEdit;
    GBFrete: TGroupBox;
    mesfrete: TDBEdit;
    GBSeguro: TGroupBox;
    messeguro: TDBEdit;
    GBOutras: TGroupBox;
    mesoutras: TDBEdit;
    GBIPI: TGroupBox;
    mesipi: TDBEdit;
    GBTotalLiquido: TGroupBox;
    mestotal: TDBEdit;
    ufssiglaetd: TLabel;
    mesnumero: TDBEdit;
    dtm: tuniquery;
    dtmdtmchave: TIntegerField;
    dtmdtmplaca: TStringField;
    dtmdtmvolumes: TFloatField;
    dtmdtmpesobruto: TFloatField;
    dtmdtmpesoliq: TFloatField;
    dtmmeschave: TIntegerField;
    dtmetdcodigo: TIntegerField;
    dtmufscodigo: TStringField;
    procodigo: TDBEdit;
    registrorefcodigo: TIntegerField;
    ref: tuniquery;
    refrefcodigo: TIntegerField;
    refrefidentificacao: TStringField;
    registrorefidentificacao: TStringField;
    Label8: TLabel;
    refcodigo: TDBEdit;
    tfp: tuniquery;
    tfptfpidentificacao: TStringField;
    registrotfpidentificacao: TStringField;
    Label11: TLabel;
    tfpcodigo: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    bvalidar: TButton;
    registrotrfcodigo: TStringField;
    registrotemcodigo: TIntegerField;
    tom: tuniquery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    tomtofidentificacao: TStringField;
    tof: tuniquery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    PlDetalhe: TPanel;
    PlItens: TPanel;
    PlObs: TPanel;
    PlObsdetalhe: TPanel;
    GroupBox1: TGroupBox;
    tomobs: TDBMemo;
    GBObs: TGroupBox;
    listaobs: TDBGrid;
    listaitens: TDBGrid;
    ActObsIncluir: TAction;
    ActObsAlterar: TAction;
    ActObsExcluir: TAction;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    tomtomobs: TStringField;
    Dtom: tunidatasource;
    vtoecodigo: TDBEdit;
    cfgcfgnumecertif: TStringField;
    cfgcfgserienfe: TStringField;
    toetoeorigem: TStringField;
    toettecodigo: TIntegerField;
    toettmcodigo: TIntegerField;
    toettocodigo: TIntegerField;
    Dufs: tunidatasource;
    tfptfpcodigo: TIntegerField;
    registrotdfcodigo: TStringField;
    registrotfpcodigo: TIntegerField;
    edrufscodigo: TStringField;
    chavenfe: TEdit;
    Bevel1: TBevel;
    Label14: TLabel;
    etvetddoc1: TStringField;
    registroetddoc1: TStringField;
    DataSource1: tunidatasource;
    Label15: TLabel;
    plinsc: TPanel;
    pletddoc1: TPanel;
    pletdidentificacao: TPanel;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    PlTedcodigo: TPanel;
    punpununitrib: TIntegerField;
    punpunqtdtrib: TFloatField;
    ConsultaPun: tuniquery;
    DeletaRFI: tuniquery;
    tdfcodigo: TDBEdit;
    cfgcfgcadastrapro: TIntegerField;
    registromesreclassicacao: TIntegerField;
    lbmesreclassicacao: TLabel;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenmesreclassificacao: TStringField;
    mesreclassicacao: TDBEdit;
    mes: tuniquery;
    mesmeschave: TIntegerField;
    mesmesxml: TBlobField;
    registroflacodigo: TIntegerField;
    registromesoutroscustos: TFloatField;
    GroupBox2: TGroupBox;
    mesoutroscustos: TDBEdit;
    itmitmoutroscustos: TFloatField;
    mesxml: tuniquery;
    mesxmlmeschave: TIntegerField;
    mesxmlmesarqxml: TBlobField;
    mesxmlflacodigo: TIntegerField;
    spdspddatabalanco: TDateField;
    spdpcccodigo: TStringField;
    ACBrNFe: TACBrNFe;
    cfgnfe: tuniquery;
    cfgnfecfgcodigo: TIntegerField;
    cfgnfecfgmensagempdv: TStringField;
    cfgnfecfgtrmimpfis1: TIntegerField;
    cfgnfecfgtrmimpfis2: TIntegerField;
    cfgnfecfgtrmtef1: TIntegerField;
    cfgnfecfgtrmtef2: TIntegerField;
    cfgnfecfgimpnfe1: TIntegerField;
    cfgnfecfgimpnfe2: TIntegerField;
    cfgnfecfgimpnfc1: TIntegerField;
    cfgnfecfgimpnfc2: TIntegerField;
    cfgnfecfgimpnfc3: TIntegerField;
    cfgnfecfgservarqnfes: TStringField;
    cfgnfecfgnumecertif: TStringField;
    cfgnfecfgsenhacertificado: TStringField;
    cfgnfecfgetdempresa: TIntegerField;
    cfgnfecfgprouso: TIntegerField;
    cfgnfecfgtoeusofora: TIntegerField;
    cfgnfecfgtoeusointe: TIntegerField;
    cfgnfecfgtoecuffora: TIntegerField;
    cfgnfecfgtoecufinte: TIntegerField;
    cfgnfecfgviasnfe: TIntegerField;
    cfgnfecfgnumeronfe: TIntegerField;
    cfgnfecfgserienfe: TStringField;
    cfgnfecfgobs1: TIntegerField;
    cfgnfecfgobs2: TIntegerField;
    cfgnfecfgobs3: TIntegerField;
    cfgnfecfgobs4: TIntegerField;
    cfgnfecfgdescrinfe: TIntegerField;
    cfgnfecfgemailnfe: TStringField;
    cfgnfecfgemailservidornfe: TStringField;
    cfgnfecfgemailsenhanfe: TStringField;
    cfgnfecfgmailportnfe: TStringField;
    cfgnfecfgemailusatls: TIntegerField;
    cfgnfecrtcodigo: TIntegerField;
    cfgnfecfgcstterceiros: TStringField;
    cfgnfeetdapelido: TStringField;
    cfgnfeetdidentificacao: TStringField;
    cfgnfeetddoc1: TStringField;
    cfgnfeufscodigo: TStringField;
    cfgnfecddcodigo: TStringField;
    cfgnfeedrinscest: TStringField;
    cfgnfeedrrua: TStringField;
    cfgnfeedrnumero: TStringField;
    cfgnfeedrbairro: TStringField;
    cfgnfeedrcep: TStringField;
    cfgnfecddnome: TStringField;
    cfgnfeufssigla: TStringField;
    cfgnfeetftelefone: TStringField;
    cfgnfectdboxedominio: TStringField;
    cfgnfecfgmodonfe: TIntegerField;
    cfgnfecfgversao: TStringField;
    cfgnfecfgcestativo: TIntegerField;
    cfgnfecfgtextoemail: TStringField;
    cfgnfecfgcertificadoa1: TBlobField;
    cfgnfecfgsenhacertificadoa1: TStringField;
    cfgcfgcertificadoa1: TBlobField;
    cfgcfgsenhacertificadoa1: TStringField;
    cfgcfgajustacusto: TIntegerField;
    saldo: tuniquery;
    cfgcfgproinativsaldozero: TIntegerField;
    clb: TUniQuery;
    clbclbsalvasaldo: TIntegerField;
    dfe: TUniQuery;
    cfgcfgimpfatura: TIntegerField;
    dfedfenfexml: TBlobField;
    procedure itmAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure listaitensColEnter(Sender: TObject);
    procedure listaitensColExit(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaitensEnter(Sender: TObject);
    procedure listaitensKeyPress(Sender: TObject; var Key: Char);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure mescalculatotal(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
    procedure toecodigoExit(Sender: TObject);
    procedure etdcodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure itmBeforeDelete(DataSet: TDataSet);
    procedure btnimportarnfeClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pfrAfterInsert(DataSet: TDataSet);
    procedure listaitensKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure verificadataaogetart(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure mesregistroExit(Sender: TObject);
    procedure listaitensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure listaitensMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure chavenfeKeyPress(Sender: TObject; var Key: Char);
    procedure chavenfeChange(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);

  private
    { Private declarations }
    vpFiltroToe: String;
    // variavel para o nome do arquivo xml da nota gerada
    arqxml: String;
    frncod: Integer;
    trscod: Integer;
    vpToeAtual: string;
    // retorna o csf do item da nota
    function codigocsf(item: Integer): String;
    // retorna o csi do item da nota
    function codigocsi(item: Integer): String;
    // retorna o csp do item da nota
    function codigocsp(item: Integer): String;
    // retorna o cst do item da nota
    function codigocst(item: Integer): String;
    // verifica o tipo de operação e ajusta os campos
    procedure VerificaToe;
    function impnfe(chave: String): Boolean;
    procedure impitensnfe(chave: String);
    procedure AtualizaCFOP;
    procedure AtualizaProduto;
    procedure BuscaOperacao;
    procedure BuscaProduto;
    procedure VerificaAtualizaPun;
    procedure AjustaGridItens;
    procedure VerificaAtualizaCusto;
    procedure RecuperaXML(vChave: string);
    function LerConfiguracao: Boolean;
    function AddAllFilesInDir(const vDir: string; vNomeArquivo: String): string;
    procedure CalcularSaldo(vProcodigo: String);

  public
    { Public declarations }
    // setado como true e a nota for de importação pelo XML
    vimpnf: Boolean;

  end;

  TImpNfe = function(AOwner: TComponent; conexao: tuniconnection; Acesso: TAcesso; vChave: string; vmodo:boolean): string;
  Trecuperaxml = function(AOwner: TComponent; vChave: string; vLicencaDLL: String; vLicencaCaptcha: String; vCertificado: String): string;
  TDistribuicaoDFe = function(AOwner: TComponent; vacesso: TAcesso; vconexao: tuniconnection; vAcbrNfe: TACBrNFe; vChave: string): string;

var
  fcpr: Tfcpr;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '02.04.08.001-02';

  // Fim ID do Módulo fracpr

implementation

{$R *.dfm}

type
  TFriendly = class(TCustomGrid);

type
  TFixaDBGrid = class(TDBGrid);

Procedure Tfcpr.impitensnfe(chave: String);
var
  impnfe: TImpNfe;

  ch: string;
  vu: string;
  vPack: Cardinal;
begin
  vPack := LoadPackage('modulos\minfe.bpl');
  if vPack <> 0 then
    try
      @impnfe := GetProcAddress(vPack, PChar('impitensnfe'));
      if Assigned(impnfe) then
      begin
        ch := impnfe(Application, Self.zcone, Acesso, chave, false);
        if ch <> '' then
        begin

          Self.registro.Close;
          Self.registro.Params[0].AsString := ch;
          Self.registro.Open;

          Self.Uni.Close;
          Self.Uni.Open;

          Self.itm.Close;
          Self.itm.Params[0].AsInteger := Self.registromeschave.AsInteger;
          Self.itm.Open;

          Self.tom.Close;
          Self.tom.Open;

          if Self.registro.State <> dsBrowse then
            Self.registro.Cancel;

          Self.registro.Edit;
        end;

      end;
    finally
      DoUnLoadPackage(vPack);
    end;
End;

function Tfcpr.impnfe(chave: String): Boolean;
var
  impnfe: TImpNfe;

  ch: string;
  vu: string;
  vPack: Cardinal;
begin
  Result := True;
  vPack := LoadPackage('modulos\minfe.bpl');
  if vPack <> 0 then
    try
      @impnfe := GetProcAddress(vPack, PChar('impnfe'));
      if Assigned(impnfe) then
      begin
        ch := impnfe(Application, Self.zcone, Acesso, chave, false);
        if ch <> '' then
        begin

          Self.bvalidar.Visible := True;
          Self.bvalidar.Enabled := True;

          if Self.registro.State <> dsBrowse then
            Self.registro.Cancel;

          Self.registro.Close;
          Self.registro.Params[0].AsString := ch;
          Self.registro.Open;
          Self.registro.Edit;

          Self.toecodigo.Field.AsString := '';

          toecodigo.SetFocus;
          Result := True;
        end
        else
          Result := False;
      end;
    finally
      try
        // DoUnLoadPackage(vPack);
      except

      end;
    end;
End;

procedure Tfcpr.bcancelaClick(Sender: TObject);
begin
  (* Trata o cancelamento de Inclusão para poder deletar as parcelas geradas na importação *)
  if Self.Situacao = 'Incluindo' then
  begin
    If Application.MessageBox(PChar('Deseja realmente abandonar a inclusão do registro ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      If Not registro.IsEmpty Then
      begin
        DeletaRFI.Params[0].AsInteger := registromeschave.AsInteger;
        DeletaRFI.ExecSQL;
        DSRegistro.DataSet.Delete;
      end;

      Self.ModalResult := mrCancel;
    end
    else
      Self.ActiveControl := ActiveControlCancela;
  end
  else
    inherited;

end;

procedure Tfcpr.bconfirmaClick(Sender: TObject);
var
  pode: Boolean;
  vlArquivoNFe, vlNovoArquivoNFe: String;
  Confirma: Integer;
begin
  registroflacodigo.AsInteger := Acesso.Filial;
  itm.DisableControls;
  itm.First;
  while not itm.Eof do
  begin
    if itmpronome.AsString = '' then
    begin
      Application.MessageBox(PChar('Verifique, um ou mais Produtos são inválidos!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      listaitens.SetFocus;
      itm.EnableControls;
      Exit;
    end;

    if itmtoeidentificacao.AsString = '' then
    begin
      Application.MessageBox(PChar('Verifique, uma ou mais Operações são inválidas!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      listaitens.SetFocus;
      itm.EnableControls;
      Exit;
    end;

    VerificaAtualizaPun;

    if Self.itmitmcontendo.AsFloat <= 0 then
    begin
      Application.MessageBox(PChar('Coluna Contendo não pode ser menor ou igual a zero!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      listaitens.SetFocus;
      itm.EnableControls;
      Exit;
    end;
    if cfgcfgajustacusto.AsInteger = 1 then
    begin
      (* Atualiza custo após passar pelas validações *)
      VerificaAtualizaCusto;
    end;





    itm.Next;
  end;
  itm.EnableControls;


  pode := True;
  itm.First;
  While Not itm.Eof Do
  Begin
    (* GABRIEL - VERIFICAR ISSO AQUI *)
    If (Self.itmtoecodigo.AsInteger = Self.cfgcfgtoeusointe.AsInteger) Or (Self.itmtoecodigo.AsInteger = Self.cfgcfgtoeusofora.AsInteger) Then
    Begin
      itm.Edit;

      consulta.Close;
      consulta.SQL.Text := 'SELECT toecfopsaida FROM toe WHERE toecodigo = ' + Self.itmtoecodigo.AsString;
      consulta.Open;

      Self.itmcfocfopdestinacao.AsString := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'SELECT unicodigo FROM uni WHERE UPPER(unisimbolo) = ''UN''';
      consulta.Open;

      itmunicodigo.AsInteger := Self.consulta.Fields[0].AsInteger;

      itm.Post;
    End;





    itm.Next;
  End;

  Inherited;

  (* Confirma se retorno do Inherited está OK e move arquivo XML para pasta do mês de registro *)
  if not(ModalResult = mrOk) then
    Exit;

  mesxml.Close;
  mesxml.Params[0].AsInteger := registromeschave.AsInteger;
  mesxml.Params[1].AsInteger := Acesso.Filial;
  mesxml.Open;

  if not mesxml.IsEmpty then
  begin
    mesxml.Edit;
    mesxmlmesarqxml.LoadFromFile(ExtractFilePath(Application.ExeName) + 'xml-recebidos\' + chavenfe.Text + '.xml');
    mesxml.Post;
  end;

  vlArquivoNFe := ExtractFilePath(Application.ExeName) + 'xml-recebidos\' + chavenfe.Text + '.xml';
  vlNovoArquivoNFe := ExtractFilePath(Application.ExeName) + 'xml-recebidos\' + FormatDateTime('yyyymm', registromesregistro.AsFloat) + '\' + chavenfe.Text + '.xml';

  if not DirectoryExists(ExtractFileDir(vlNovoArquivoNFe)) then
    ForceDirectories(ExtractFileDir(vlNovoArquivoNFe));

  MoveFile(PChar(vlArquivoNFe), PChar(vlNovoArquivoNFe));

  (* Adicionar aqui verificação de existência itens de grade *)
  consulta.Close;
  consulta.SQL.Text := 'SELECT itm.itmchave FROM itm ';
  consulta.SQL.Add('JOIN pro ON itm.procodigo = pro.procodigo ');
  consulta.SQL.Add('WHERE IFNULL(pro.gracodigo, 0) > 0 ');
  consulta.SQL.Add('AND itm.meschave = ' + registromeschave.AsString);
  consulta.Open;

  if not consulta.IsEmpty then
    MostraFormu('mimv', Self.registromeschave.AsString, '');

  if (psituacao.Caption = 'Incluindo') and (registrotfpcodigo.AsInteger = 1) then
  begin
  if cfgcfgimpfatura.AsInteger = 1 then
  begin
    Confirma := Application.MessageBox(PChar('Ajustar registros de Contas a Pagar desta Fatura ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);
  end
  else
  begin
     Confirma := IDNO;
  end;
  end
  else
    Confirma := IDNO;

  If (Confirma = IDYES) Then
  Begin
    MostraFormu('mcpa', '', '', 'RegistraCPA', registromeschave.AsString);
  End;


  clb.Close;
  clb.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;
  clb.Open;


  itm.First;

  while not itm.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'update pro set sipcodigo=1 where procodigo=' + itmprocodigo.AsString;
    consulta.ExecSQL;

    {
    if cfgcfgproinativsaldozero.AsInteger = 1 then
    begin
      saldo.Close;
      saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itmprocodigo.AsString + ', IF((select prosaldo from pro where procodigo=' + itmprocodigo.AsString + ')=0,2,1) )';
      saldo.ExecSQL;

      saldo.Close;
      saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + itmprocodigo.AsString + ', IF((select prosaldodisp from pro where procodigo=' + itmprocodigo.AsString + ')=0,2,1) )';
      saldo.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update pro set sipcodigo=1 where procodigo=' + itmprocodigo.AsString;
      consulta.ExecSQL;
    end;
    }
    itm.Next;
  end;

end;

procedure Tfcpr.CalcularSaldo(vProcodigo: String);

var
  r: Integer;
  i: Integer;
  vlSaldo: Double;
  vlSpdChave: Integer;

  vlSaldoDisp: Double;

begin
  inherited;
  try
    consulta.Close;
    consulta.SQL.Text := 'SELECT   spdchave,  spdexercicio,  spddatainicial,  spddatafinal,  spddatabalanco, ';
    consulta.SQL.Add('pcccodigo,   spdativo,  spdmotivoinv,  spdvalortotal,  spdarquivo,  spdgeracao,  flacodigo,  spdpasta, ');
    consulta.SQL.Add(' spdregistro,  spdenvio FROM spd order by spdchave limit 1');
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlSpdChave := 1;
      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('spdexercicio').AsString := FormatDateTime('yyyy', StrToDate(hoje(Application, zcone)));
      consulta.FieldByName('spddatainicial').AsFloat := StrToDate(hoje(Application, zcone));
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

    consulta.Close;
    consulta.SQL.Text := 'SELECT   ivtchave,  spdchave,  procodigo,  pcccodigo,  ivtquantidade,';
    consulta.SQL.Add('ivtvalor,   ivttotal,  ivtproprietario,  ivtdescricao,  etdcodigo,  flacodigo, ivtregistro FROM ivt where procodigo=' + vProcodigo);
    consulta.Open;

    if consulta.IsEmpty then
    begin

      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('procodigo').AsString := vProcodigo;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('ivtquantidade').AsInteger := 0;
      consulta.FieldByName('ivtvalor').AsInteger := 0;
      consulta.FieldByName('ivttotal').AsInteger := 0;
      consulta.FieldByName('ivtproprietario').AsInteger := 1;
      consulta.FieldByName('ivtdescricao').AsString := 'Inventário de inclusão do produto';
      consulta.FieldByName('etdcodigo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.FieldByName('ivtregistro').AsDatetime := strtodatetime('01/01/2000 00:00:01');
      consulta.Post;
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT   ivdchave,  spdchave,  procodigo,  pcccodigo,  ivdquantidade,';
    consulta.SQL.Add('ivdvalor,   ivdtotal,  ivdproprietario,  ivddescricao,  etdcodigo,  flacodigo FROM ivd where procodigo=' + vProcodigo);
    consulta.Open;

    if consulta.IsEmpty then
    begin

      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('procodigo').AsString := vProcodigo;
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
    consulta.SQL.Text := 'select calcSaldoProduto(' + vProcodigo + ')';
    consulta.Open;
    vlSaldo := consulta.Fields[0].AsFloat;

    vlSaldoDisp := 0;
    consulta.Close;
    consulta.SQL.Text := 'select calcSaldoProdutoDisp(' + vProcodigo + ')';
    consulta.Open;
    vlSaldoDisp := consulta.Fields[0].AsFloat;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE pro SET prosaldo = ' + buscatroca(floattostr(vlSaldo), ',', '.') + ', prosaldodisp =  ' + buscatroca(floattostr(vlSaldoDisp), ',', '.') +
      ' where procodigo=' + vProcodigo;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE vrp v SET v.vrpsaldo = calcSaldoVariacao(v.vrpcodigo);';
    consulta.ExecSQL;

  finally
  end;
end;

procedure Tfcpr.VerificaAtualizaCusto;
var
  vdivi: Double;
  vlCusto: Double;
  vlPunCodigo: string;
begin
  if itmprocodigo.AsInteger <> cfgcfgprouso.AsInteger then
  begin

    vdivi := 0;
    if itm.State <> dsedit then
      itm.Edit;

    if pununicodigobase.AsString <> Self.itmunicodigo.AsString then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select punmultiplicador,puncodigo from pun where pun.procodigo=' + Self.itmprocodigo.AsString + ' and pun.unicodigo=' + pununicodigobase.AsString;
      consulta.Open;

      vdivi := consulta.Fields[0].AsFloat;
      vlPunCodigo := consulta.Fields[1].AsString;

    end
    else
      vlPunCodigo := itmpuncodigo.AsString;

    vlCusto := 0;
    vlCusto := (itmitmvalor.AsFloat - (itmitmdesconto.AsFloat / itmitmquantidade.AsFloat));
    vlCusto := vlCusto + (itmitmfrete.AsFloat / itmitmquantidade.AsFloat);
    vlCusto := vlCusto + (itmitmoutras.AsFloat / itmitmquantidade.AsFloat);
    vlCusto := vlCusto + (itmitmseguro.AsFloat / itmitmquantidade.AsFloat);
    vlCusto := vlCusto + (itmitmicms.AsFloat / itmitmquantidade.AsFloat);
    vlCusto := vlCusto + (itmitmipi.AsFloat / itmitmquantidade.AsFloat);
    vlCusto := vlCusto + (itmitmoutroscustos.AsCurrency / itmitmquantidade.AsFloat);
    vlCusto := vlCusto / itmitmcontendo.AsFloat;
    vlCusto := TBRound(vlCusto, 3);

    itmitmcusto.AsFloat := vlCusto;

    if vdivi > 0 then
      itmitmcusto.AsFloat := itmitmcusto.AsFloat / vdivi;

    itm.Post;

    (*
      * Gabriel - 09/11/2015 - Organização da rotina que atualiza o custo
      * sem interferir nas validações do contendo
    *)

    { * INICIO  - Daniel 29/12/2014
      Ajuste de preço de custo para
      todas uniodades do produto deste pun* }

    pun.Close;
    pun.ParamByName('puncodigo').AsString := vlPunCodigo;
    pun.Open;

    pun.First;
    while not pun.Eof do
    begin

      if cfgcfgajustacusto.AsInteger = 1 then
      begin

        pun.Edit;
        punpuncusto.AsFloat := itmitmcusto.AsFloat * Self.punpunmultiplicador.AsFloat;
        pun.Post;
      end;

      pun.Next;
    end;

    { * FINAL  - Daniel 29/12/2014 }

  end;
end;

procedure procurar(diretorio, pesquisa: string; listaRetorno: TStringList);
var
  f: TSearchRec;
  r: Integer;
begin
  if diretorio[length(diretorio)] <> '\' then
    diretorio := diretorio + '\';

  if not DirectoryExists(diretorio) then
    Exit;

  r := FindFirst(diretorio + pesquisa, faAnyFile, f);
  while (r = 0) do
  begin

    // if (f.Name = '.') or (f.Name = '..') then
    // Continue;

    if f.Attr = fadirectory then
      procurar(diretorio + f.Name, pesquisa, listaRetorno)
    else
    begin
      listaRetorno.Add(diretorio + f.Name);
    end;

    r := FindNext(f);
  end;

end;

function FindDocs(const Root: string; vArquivo: string): string;
var
  SearchRec: TSearchRec;
  Folders: array of string;
  Folder: string;
  i: Integer;
  Last: Integer;
begin
  SetLength(Folders, 1);
  Folders[0] := Root;
  i := 0;
  while (i < length(Folders)) do
  begin
    Folder := IncludeTrailingBackslash(Folders[i]);
    Inc(i);
    { Collect child folders first. }
    if (FindFirst(Folder + '*.*', fadirectory, SearchRec) = 0) then
    begin
      repeat
        if not((SearchRec.Name = '.') or (SearchRec.Name = '..')) then
        begin
          Last := length(Folders);
          SetLength(Folders, Succ(Last));
          Folders[Last] := Folder + SearchRec.Name;
        end;
      until (FindNext(SearchRec) <> 0);
      FindClose(SearchRec);
    end;
    { Collect files next. }
    if (FindFirst(Folder + '*.*', faAnyFile - fadirectory, SearchRec) = 0) then
    begin
      repeat
        if not((SearchRec.Attr and fadirectory) = fadirectory) then
        begin
          if vArquivo = SearchRec.Name then
            Result := Folder + SearchRec.Name;
        end;
      until (FindNext(SearchRec) <> 0);
      FindClose(SearchRec);
    end;
  end;
end;

function Tfcpr.AddAllFilesInDir(const vDir: string; vNomeArquivo: String): string;
var
  SR: TSearchRec;
begin
  Result := '';
  if FindFirst(IncludeTrailingBackslash(vDir) + '*.*', faAnyFile or fadirectory, SR) = 0 then
    try
      repeat
        if (SR.Attr and fadirectory) = 0 then
        begin
          if SR.Name = vNomeArquivo then
            Result := SR.Name;
        end
        else if (SR.Name <> '.') and (SR.Name <> vNomeArquivo) then
          AddAllFilesInDir(IncludeTrailingBackslash(vDir) + SR.Name, vNomeArquivo); // recursive call!
      until FindNext(SR) <> 0;
    finally
      FindClose(SR);
    end;
end;

procedure Tfcpr.btnimportarnfeClick(Sender: TObject);
var
  vlChave: string;
  vlDiretorio: String;
  vlArquivo: String;
  vlParaReclassificar: Integer;

  listaRetorno: TStringList;
begin




listaRetorno := TStringList.Create();

  if mesreclassicacao.Visible then
    vlParaReclassificar := mesreclassicacao.Field.AsInteger;

  inherited;

  vlChave := Trim(SomenteNumeros(chavenfe.Text));

  if vlChave = '' then
  begin
    Application.MessageBox(PChar('Por favor, informe a Chave de Acesso da NFe!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    chavenfe.SetFocus;
    Exit;
  end;

  if length(vlChave) <> 44 then
  begin
    Application.MessageBox(PChar('Chave de Acesso da NFe deve conter 44 digitos!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    chavenfe.SetFocus;
    Exit;
  end;

  vlDiretorio := ExtractFilePath(Application.ExeName) + 'xml-recebidos';

  if not DirectoryExists(vlDiretorio) then
    ForceDirectories(vlDiretorio);

  vlArquivo := vlDiretorio + '\' + vlChave + '.xml';

  dfe.Close;
  dfe.ParamByName('dfechaveacesso').AsString := vlChave;
  dfe.Open;

  if not dfe.IsEmpty then
  begin
    if dfedfenfexml.AsString <> '' then
    begin
      dfedfenfexml.SaveToFile(vlDiretorio + '\' + vlChave + '.xml');
    end;
  end;

  dfe.Close;

  if not fileexists(vlArquivo) then
  begin
    vlArquivo := vlDiretorio + '\' + vlChave + '-nfe.xml';

    if not fileexists(vlArquivo) then
    begin
      ShowMessage('Arquivo não localizado:' + vlArquivo);
      Exit;
    end
    else
    begin

      RenameFile(vlDiretorio + '\' + vlChave + '-nfe.xml', vlDiretorio + '\' + vlChave + '.xml');

    end;
  end;
  vimpnf := True;

  if Self.impnfe(vlChave) = False then
  begin
    chavenfe.SetFocus;
    Exit;
  end;


  if etdcodigo.Field.AsString <> '' then
  begin
    btnimportarnfe.Enabled := False;
    tdfcodigo.Color := $FFD8B0;
    mesemissao.Color := $FFD8B0;
    messerie.Color := $FFD8B0;
    mesnumero.Color := $FFD8B0;
    refcodigo.Color := $FFD8B0;
    tfpcodigo.Color := $FFD8B0;
    etdcodigo.Color := $FFD8B0;

    tdfcodigo.ReadOnly := True;
    mesemissao.ReadOnly := True;
    messerie.ReadOnly := True;
    mesnumero.ReadOnly := True;
    refcodigo.ReadOnly := True;
    tfpcodigo.ReadOnly := True;
    etdcodigo.ReadOnly := True;

    tdfcodigo.tabstop := False;
    mesemissao.tabstop := False;
    messerie.tabstop := False;
    mesnumero.tabstop := False;
    refcodigo.tabstop := False;
    tfpcodigo.tabstop := False;
    etdcodigo.tabstop := False;

    consulta.Close;
    consulta.SQL.Text := 'SELECT edrinscest FROM edr WHERE etdcodigo = ' + Self.etdcodigo.Field.AsString + ' AND tedcodigo = 1';
    consulta.Open;

    if consulta.RecordCount = 1 then
    begin
      plinsc.Caption := consulta.Fields[0].AsString;
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT etddoc1, etdidentificacao, tpecodigo FROM etd WHERE etdcodigo = ' + Self.etdcodigo.Field.AsString;
    consulta.Open;

    if consulta.RecordCount = 1 then
    begin
      pletddoc1.Caption := consulta.Fields[0].AsString;
      pletdidentificacao.Caption := consulta.Fields[1].AsString;
      PlTedcodigo.Caption := consulta.Fields[2].AsString;

      if mesreclassicacao.Visible then
        mesreclassicacao.Field.AsInteger := vlParaReclassificar;

    end;
  end
  else
    btnimportarnfe.Enabled := True;
  { cria importador }
end;

procedure Tfcpr.bvalidarClick(Sender: TObject);
begin
  inherited;

  If Self.registro.State = dsBrowse Then
    Self.registro.Edit;

  spd.Close;
  spd.Open;

  if Self.registro.State <> dsBrowse then
    Self.registro.Post;

  If Self.registrotemcodigo.AsInteger = 3 Then
  Begin
    bconfirma.Enabled := False;
    Self.impitensnfe(chavenfe.Text);
  End;

  bconfirma.Enabled := True;

  pro.Close;
  Uni.Close;

  pro.Open;
  Uni.Open;

  itm.Close;

  if not itm.Active then
  begin
    itm.Params[0].AsInteger := registromeschave.AsInteger;
    itm.Open;
  end;
  itm.First;
  listaitens.SetFocus;
  listaitens.SelectedIndex := 5;
  Self.bvalidar.Visible := False;
  Self.chavenfe.Enabled := False;
  Self.btnimportarnfe.Enabled := False;
end;

procedure Tfcpr.itmAfterInsert(DataSet: TDataSet);
begin
  inherited;

  itmpcccodigo.AsString := '1.07.00.97.00';
  itmpuncodigo.AsInteger := 0;
end;

procedure Tfcpr.itmBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure Tfcpr.listaitensColEnter(Sender: TObject);
Var
  qtcols: Integer;
Begin
  Inherited;

  try
    itm.Refresh;
  except
  end;

  If (listaitens.SelectedIndex = 7) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT tpocodigo FROM pro WHERE procodigo = ' + Self.itmprocodigo.AsString;
    consulta.Open;

    If Not consulta.IsEmpty Then
    Begin
      if Self.consulta.Fields[0].AsInteger = 7 then
      begin
        if itm.State = dsBrowse then
          itm.Edit;

        if Self.itmprocodigo.AsInteger = cfgcfgprouso.AsInteger then
        begin
          If ufssiglaetd_old.Field.AsString = ufssiglacfg.Field.AsString Then
            Self.itmtoecodigo.AsInteger := cfgcfgtoeusointe.AsInteger
          else
            Self.itmtoecodigo.AsInteger := cfgcfgtoeusofora.AsInteger;
        end;

      end;
    End;
  end;

  (*
    * Trata Produto
  *)

  If (listaitens.SelectedIndex = 6) then
    if (Self.itmpronome.AsString = '') Then
    begin
      BuscaProduto;
      listaitens.SetFocus;
    end
    else
      AtualizaProduto;

  (*
    * Trata Operação
  *)
  If (listaitens.SelectedIndex = 8) then
    if (itmtoeidentificacao.AsString = '') then
    begin
      BuscaOperacao;
      listaitens.SetFocus;
    end
    else
      AtualizaCFOP;

  if (Self.itmitmcontendo.AsFloat <= 0) AND (listaitens.SelectedIndex = 14) then
  begin
    itm.Edit;
    listaitens.SelectedIndex := 13;
  end
  else
  begin
    qtcols := listaitens.Columns.Count - 1;
    if listaitens.SelectedIndex = qtcols then
    begin
      if itm.State <> dsedit then
        itm.Edit;

      if Self.itmitmcontendo.AsFloat <= 0 then
      begin
        itm.Edit;
        listaitens.SelectedIndex := 13;
      end
      else
      begin
        itm.Post;

        if itm.RecNo = itm.RecordCount then
        begin
          bconfirma.SetFocus;
          Exit;
        end;

        listaitens.SelectedIndex := 5;
        itm.Next;
      end;
    end;
  end;

  if listaitens.Columns[listaitens.SelectedIndex].ReadOnly then
    listaitens.SelectedIndex := listaitens.SelectedIndex + 1;
end;

procedure Tfcpr.listaitensColExit(Sender: TObject);
Var
  vunicodigobase: Integer;
  vunisimbolo: String;
  xprocodigo: string;
  vtpocodigo: Integer;
  vlPunCodigo: string;
  X: string;
Begin
  Inherited;

  If (listaitens.SelectedIndex = 5) And (itmprocodigo.AsInteger = 0) Then
  Begin
    BuscaProduto;
    listaitens.SetFocus;
  End;

  if itmprocodigo.AsString = '' then
    itmprocodigo.AsInteger := 0;

  if (listaitens.SelectedIndex = 7) then
    if (itmtoecodigo.AsString = '') Then
    begin
      BuscaOperacao;
      listaitens.SetFocus;
    end
    else
      AtualizaCFOP;

  (*
    *
    *** Trata OnExit da coluna Contendo *** - NÃO MEXI AQUI AINDA - Gabriel - 2014-02-03
    *
  *)

  If (listaitens.SelectedIndex = 13) Then
    if Self.itmitmcontendo.AsFloat > 0 then
    begin
      VerificaAtualizaPun;

      if Self.itmitmcontendo.AsFloat <= 0 then
      begin
        ShowMessage('Por favor, informe a quantidade para esta embalagem!');
        listaitens.SelectedIndex := 13;
      end;
    end
    else
    begin

      X := Self.itmprocodigo.AsString;

      consulta.Close;
      consulta.SQL.Text := 'select punmultiplicador,unicodigobase from pun where procodigo=' + X + ' and unicodigo=' + Self.itmunicodigo.AsString;
      consulta.Open;

      if Self.consulta.Fields[0].AsFloat <= 0 then
      begin
        ShowMessage('Por favor, informe a quantidade para esta embalagem!');

        listaitens.SelectedIndex := 13;
      end
      else
      begin
        if consulta.RecordCount = 1 then
        begin
          if Self.itm.State = dsBrowse then
            Self.itm.Edit;

          // Self.itmitmcontendo.AsFloat := Self.consulta.Fields[0].AsFloat;
          Self.itmunicodigobase.AsInteger := Self.consulta.Fields[1].AsInteger;

          Self.itm.Post;
        end;

        If Self.itmprocodigo.AsInteger <> 0 Then
        Begin
          consulta.Close;
          consulta.SQL.Text := 'select unicodigo, tpocodigo from pro where procodigo=' + Self.itmprocodigo.AsString;
          consulta.Open;

          If Not consulta.IsEmpty Then
          Begin
            If itm.State = dsBrowse Then
              itm.Edit;

            itmunicodigobase.AsInteger := Self.consulta.Fields[0].AsInteger;
            vtpocodigo := Self.consulta.Fields[1].AsInteger;

            if vtpocodigo = 7 then
            begin
              if Self.itmprocodigo.AsInteger = cfgcfgprouso.AsInteger then
              begin

                If ufssiglaetd_old.Field.AsString = ufssiglacfg.Field.AsString Then
                  Self.itmtoecodigo.AsInteger := cfgcfgtoeusointe.AsInteger
                else
                  Self.itmtoecodigo.AsInteger := cfgcfgtoeusofora.AsInteger;
              end;
            end;

            consulta.Close;
            consulta.SQL.Text := 'SELECT puncodigo, punmultiplicador, tuncodigo, punidentificacao, unicodigo FROM pun WHERE ';
            consulta.SQL.Add('unicodigo = ' + Self.itmunicodigo.AsString + ' AND ');
            consulta.SQL.Add('procodigo = ' + Self.itmprocodigo.AsString);
            consulta.Open;

            If Not consulta.IsEmpty Then
            Begin
              vlPunCodigo := Self.ConsultaPun.Fields[0].AsString;

              if Self.itmitmcontendo.AsFloat > 0 then
              begin
                If itm.State = dsBrowse Then
                  itm.Edit;

                Self.itmpuncodigo.AsInteger := Self.consulta.Fields[0].AsInteger;
                if (itmunicodigobase.AsInteger = Self.consulta.Fields[4].AsInteger) then
                begin

                  { if (Self.itmitmcontendo.AsFloat <> Self.consulta.Fields[1].AsFloat) then
                    ShowMessage('7481 - Atenção: Não é possível alterar o contendo da unidade base do produto!')
                    else
                    begin
                    consulta.Edit;
                    if consulta.Fields[2].AsInteger = 0 then
                    consulta.Fields[2].AsInteger := 9;

                    consulta.Fields[3].AsString := Self.itmitmcontendo.AsString + 'x' + Self.itmunisimbolobase.AsString;
                    consulta.Fields[1].AsFloat := Self.itmitmcontendo.AsFloat;
                    consulta.Post;
                    end; }

                end;
                // itmitmcontendo.AsFloat := { self.itmitmquantidade.AsFloat * } Self.consulta.Fields[1].AsFloat;

                itm.Post;

                { * alteracao para salvar o preco de custo no pun a cada importacao * }

                consulta.Close;
                consulta.SQL.Text := 'select ttecodigo from toe where toecodigo=' + Self.itmtoecodigo.AsString;
                consulta.Open;
                if Self.consulta.Fields[0].AsInteger = tteEntrada then
                begin

                  pun.Close;
                  pun.ParamByName('puncodigo').AsString := vlPunCodigo;
                  { pun.Filter := 'puncodigo=' + vlPunCodigo;
                    pun.Filtered := True; }
                  pun.Open;

                  if cfgcfgajustacusto.AsInteger = 1 then
                  begin
                    pun.Edit;
                    punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
                    pun.Post;
                  end;

                  { pun.Close;
                    pun.Filter := '';
                    pun.Filtered := False;
                    pun.Open; }

                end;
              end;
            End
            Else
            Begin
              if Self.itmitmcontendo.AsFloat > 0 then
              begin
                If Not pun.Active Then
                  pun.Open;

                consulta.Close;
                consulta.SQL.Text := 'select unicodigo from pro where procodigo=' + Self.itmprocodigo.AsString;
                consulta.Open;
                vunicodigobase := Self.consulta.Fields[0].AsInteger;

                pun.Append;
                punprocodigo.AsInteger := Self.itmprocodigo.AsInteger;
                pununicodigo.AsInteger := Self.itmunicodigo.AsInteger;
                punpunmultiplicador.AsFloat := Self.itmitmcontendo.AsFloat;
                punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
                punpunquantidade.AsFloat := 0;
                punpunprecoav.AsFloat := 0;
                punpunprecoap.AsFloat := 0;
                punpunmargem.AsFloat := 0;
                punpunpesobruto.AsFloat := 0;

                puntuncodigo.AsInteger := 0;

                punpunpesoliq.AsFloat := 0;
                pundgrcodigo.AsInteger := 1;
                pununicodigobase.AsInteger := vunicodigobase;

                punpunbarra.AsString := GeraProdutoBarra(Application, Self.itmprocodigo.AsInteger, pununicodigo.AsInteger);

                consulta.Close;
                consulta.SQL.Text := 'SELECT unisimbolo, pro.unicodigo FROM uni, pro WHERE ';
                consulta.SQL.Add('pro.unicodigo = uni.unicodigo AND ');
                consulta.SQL.Add('pro.procodigo = ' + Self.itmprocodigo.AsString);
                consulta.Open;

                vunisimbolo := consulta.Fields[0].AsString;
                punpunidentificacao.AsString := punpunmultiplicador.AsString + 'x' + vunisimbolo;

                pun.Post;

                { * ajusta preco de custo do pun da unidade base * }

                consulta.Close;
                consulta.SQL.Text := 'select ttecodigo from toe where toecodigo=' + Self.itmtoecodigo.AsString;
                consulta.Open;
                if Self.consulta.Fields[0].AsInteger = tteEntrada then
                begin
                  ConsultaPun.Close;
                  ConsultaPun.ParamByName('unicodigo').AsInteger := Self.itmunicodigobase.AsInteger;
                  ConsultaPun.ParamByName('procodigo').AsInteger := Self.itmprocodigo.AsInteger;
                  ConsultaPun.Open;

                  vlPunCodigo := Self.ConsultaPun.Fields[0].AsString;

                  pun.Close;
                  pun.ParamByName('puncodigo').AsString := vlPunCodigo;
                  { pun.Filter := 'puncodigo=' + vlPunCodigo;
                    pun.Filtered := True; }
                  pun.Open;

                  if cfgcfgajustacusto.AsInteger = 1 then
                  begin

                    pun.Edit;
                    punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
                    pun.Post;
                  end;

                  { pun.Close;
                    pun.Filter := '';
                    pun.Filtered := False;
                    pun.Open; }
                end;

                If itm.State = dsBrowse Then
                  itm.Edit;

                Self.itmpuncodigo.AsInteger := punpuncodigo.AsInteger;
              end;
            End;
          End;
        End;
      end;
    end;
end;

procedure Tfcpr.VerificaAtualizaPun;
var
  vlPunCodigo: string;
  vunisimbolo: string;
  vunicodigobase: Integer;
  vtpocodigo: Integer;
begin
  If Self.itmprocodigo.AsInteger <> 0 Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'select unicodigo, tpocodigo from pro where procodigo=' + Self.itmprocodigo.AsString;
    consulta.Open;

    If Not consulta.IsEmpty Then
    Begin
      If itm.State = dsBrowse Then
        itm.Edit;

      itmunicodigobase.AsInteger := Self.consulta.Fields[0].AsInteger;
      vtpocodigo := Self.consulta.Fields[1].AsInteger;

      if vtpocodigo = 7 then
      begin
        if Self.itmprocodigo.AsInteger = cfgcfgprouso.AsInteger then
        begin
          If ufssiglaetd_old.Field.AsString = ufssiglacfg.Field.AsString Then
            Self.itmtoecodigo.AsInteger := cfgcfgtoeusointe.AsInteger
          else
            Self.itmtoecodigo.AsInteger := cfgcfgtoeusofora.AsInteger;
        end;
      end;

      ConsultaPun.Close;
      ConsultaPun.ParamByName('unicodigo').AsInteger := Self.itmunicodigo.AsInteger;
      ConsultaPun.ParamByName('procodigo').AsInteger := Self.itmprocodigo.AsInteger;
      ConsultaPun.Open;

      If Not ConsultaPun.IsEmpty Then
      Begin
        vlPunCodigo := Self.ConsultaPun.Fields[0].AsString;

        (* Atualiza o Contendo caso este não esteja preenchido *)
        if Self.itmitmcontendo.AsFloat = 0 then
        begin
          itm.Edit;
          itmitmcontendo.AsFloat := ConsultaPun.FieldByName('punmultiplicador').AsFloat;
          itm.Post;
        end;

        if Self.itmitmcontendo.AsFloat > 0 then
        begin
          If itm.State = dsBrowse Then
            itm.Edit;

          Self.itmpuncodigo.AsInteger := ConsultaPun.FieldByName('puncodigo').AsInteger;

          (*
            * Identifica se CONTENDO foi modificado e se alteração é possível *
          *)
          if (itmitmcontendo.AsFloat <> ConsultaPun.FieldByName('punmultiplicador').AsFloat) then
          begin

            consulta.Close;
            consulta.SQL.Text := 'SELECT itm.itmchave FROM itm WHERE itm.puncodigo = :puncodigo AND itm.meschave <> :meschave;';
            consulta.Params[0].AsInteger := ConsultaPun.FieldByName('puncodigo').AsInteger;
            consulta.Params[1].AsInteger := itmmeschave.AsInteger;
            consulta.Open;

            { if (itmunicodigobase.AsInteger <> ConsultaPun.FieldByName('unicodigo').AsInteger) then
              begin
              ConsultaPun.Edit;
              if ConsultaPun.FieldByName('tuncodigo').AsInteger = 0 then
              ConsultaPun.FieldByName('tuncodigo').AsInteger := 9;

              ConsultaPun.FieldByName('punidentificacao').AsString := Self.itmitmcontendo.AsString + 'x' + Self.itmunisimbolobase.AsString;
              ConsultaPun.FieldByName('punmultiplicador').AsFloat := Self.itmitmcontendo.AsFloat;
              ConsultaPun.Post;

              end; }

            consulta.Close;
            consulta.SQL.Text := 'SELECT itm.itmitem FROM itm WHERE itm.puncodigo = :puncodigo AND itm.itmchave <> :itmchave AND itm.meschave = :meschave;';
            consulta.Params[0].AsInteger := ConsultaPun.FieldByName('puncodigo').AsInteger;
            consulta.Params[1].AsInteger := itmitmchave.AsInteger;
            consulta.Params[2].AsInteger := itmmeschave.AsInteger;
            consulta.Open;

          end;
          // Self.itmitmcontendo.AsFloat := ConsultaPun.FieldByName('punmultiplicador').AsFloat;
          itm.Post;
          consulta.Close;
          consulta.SQL.Text := 'select ttecodigo from toe where toecodigo=' + Self.itmtoecodigo.AsString;
          consulta.Open;
          if Self.consulta.Fields[0].AsInteger = tteEntrada then
          begin

            pun.Close;
            pun.ParamByName('puncodigo').AsString := vlPunCodigo;
            { pun.Filter := 'puncodigo=' + vlPunCodigo;
              pun.Filtered := True; }
            pun.Open;

            if cfgcfgajustacusto.AsInteger = 1 then
            begin

              pun.Edit;
              punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
              pun.Post;
            end;

            { pun.Close;
              pun.Filter := '';
              pun.Filtered := False;
              pun.Open; }
          end;
        end;
      End
      Else
      Begin
        If Not pun.Active Then
          pun.Open;

        consulta.Close;
        consulta.SQL.Text := 'select unicodigo from pro where procodigo=' + Self.itmprocodigo.AsString;
        consulta.Open;
        vunicodigobase := Self.consulta.Fields[0].AsInteger;

        if Self.itmitmcontendo.AsFloat > 0 then
        begin
          pun.Append;
          punprocodigo.AsInteger := Self.itmprocodigo.AsInteger;
          pununicodigo.AsInteger := Self.itmunicodigo.AsInteger;
          punpunmultiplicador.AsFloat := Self.itmitmcontendo.AsFloat;
          punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
          punpunquantidade.AsFloat := 0;
          punpunprecoav.AsFloat := 0;
          punpunprecoap.AsFloat := 0;
          punpunmargem.AsFloat := 0;
          punpunpesobruto.AsFloat := 0;

          puntuncodigo.AsInteger := 0;

          punpunpesoliq.AsFloat := 0;
          pundgrcodigo.AsInteger := 1;
          pununicodigobase.AsInteger := vunicodigobase;

          punpunbarra.AsString := GeraProdutoBarra(Application, Self.itmprocodigo.AsInteger, pununicodigo.AsInteger);

          consulta.Close;
          consulta.SQL.Text := 'SELECT unisimbolo, pro.unicodigo, pro.prounitrib, pro.proqtdtrib FROM uni, pro WHERE ';
          consulta.SQL.Add('pro.unicodigo = uni.unicodigo AND ');
          consulta.SQL.Add('pro.procodigo = ' + Self.itmprocodigo.AsString);
          consulta.Open;

          vunisimbolo := consulta.Fields[0].AsString;
          punpunidentificacao.AsString := punpunmultiplicador.AsString + 'x' + vunisimbolo;

          if itmunicodigo.AsInteger = consulta.Fields[1].AsInteger then
          begin
            if consulta.Fields[2].AsInteger = 0 then
              punpununitrib.AsInteger := consulta.Fields[1].AsInteger
            else
              punpununitrib.AsInteger := consulta.Fields[2].AsInteger;

            punpunqtdtrib.AsFloat := consulta.Fields[3].AsFloat;
          end
          else
          begin
            if consulta.Fields[2].AsInteger = 0 then
              punpununitrib.AsInteger := consulta.Fields[1].AsInteger
            else
              punpununitrib.AsInteger := consulta.Fields[2].AsInteger;
            punpunqtdtrib.AsFloat := consulta.Fields[3].AsFloat * punpunmultiplicador.AsFloat;
          end;

          pun.Post;

          { * ajusta preco de custo do pun da unidade base * }
          consulta.Close;
          consulta.SQL.Text := 'select ttecodigo from toe where toecodigo=' + Self.itmtoecodigo.AsString;
          consulta.Open;
          if Self.consulta.Fields[0].AsInteger = tteEntrada then
          begin
            ConsultaPun.Close;
            ConsultaPun.ParamByName('unicodigo').AsInteger := Self.itmunicodigobase.AsInteger;
            ConsultaPun.ParamByName('procodigo').AsInteger := Self.itmprocodigo.AsInteger;
            ConsultaPun.Open;

            vlPunCodigo := Self.ConsultaPun.Fields[0].AsString;

            pun.Close;
            pun.ParamByName('puncodigo').AsString := vlPunCodigo;
            { pun.Filter := 'puncodigo=' + vlPunCodigo;
              pun.Filtered := True; }
            pun.Open;

            if cfgcfgajustacusto.AsInteger = 1 then
            begin

              pun.Edit;
              punpuncusto.AsFloat := Self.itmitmvalor.AsFloat;
              pun.Post;
            end;

            { pun.Close;
              pun.Filter := '';
              pun.Filtered := False;
              pun.Open; }

          end;
          If itm.State = dsBrowse Then
            itm.Edit;

          Self.itmpuncodigo.AsInteger := punpuncodigo.AsInteger;
        end;
      End;
    End;
  End;
end;

procedure Tfcpr.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  If Odd(Dvitm.DataSet.RecNo) Then
  Begin
    If Column.ReadOnly Then
      listaitens.Canvas.Brush.Color := clBtnFace
    Else
      listaitens.Canvas.Brush.Color := PEG_COR_BASE;
  End
  Else
  Begin
    If Column.ReadOnly Then
      listaitens.Canvas.Brush.Color := clBtnFace
    Else
      listaitens.Canvas.Brush.Color := CLWHITE;
  End;

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

procedure Tfcpr.listaitensEnter(Sender: TObject);
begin
  inherited;
  if itm.Active then
    itm.First;
end;

procedure Tfcpr.listaitensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  // Cancela a inclusão de nova linha
  if (Key = VK_DOWN) then
    if itm.RecordCount = itm.RecNo then
      Key := 0;

  { if (Key in [VK_DOWN, VK_UP]) then
    begin
    try
    itm.Refresh;
    except
    end;

    (*
    * Trata Produto
    *)

    if (Self.itmpronome.AsString = '') Then
    begin
    Key := 0;
    BuscaProduto;
    listaitens.SetFocus;
    end
    else
    AtualizaProduto;

    (*
    * Trata Operação
    *)

    if (itmtoeidentificacao.AsString = '') then
    begin
    Key := 0;
    BuscaOperacao;
    listaitens.SetFocus;
    end
    else
    AtualizaCFOP;
    end; }
end;

procedure Tfcpr.listaitensKeyPress(Sender: TObject; var Key: Char);
var
  vColIndex, vColCount: Integer;
begin
  If Key = ';' Then
    Key := #0;

  If Key = '\' Then
    Key := #0;

  If Key = #13 Then
  Begin
    If (Sender Is TDBGrid) Then
    Begin
      Key := #0;
      (Sender As TDBGrid).SelectedIndex := (Sender As TDBGrid).SelectedIndex + 1;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tfcpr.listaitensKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  l: Word;
Begin
  Inherited;

  If ((Shift = [ssCtrl]) And (Key = 46)) Then
    Abort;

  l := Key;

  If Key = 40 Then
  Begin
    If itm.State = dsInsert Then
    Begin
      Key := 0;
      itm.Cancel;
    End;
  End;
end;

procedure Tfcpr.listaitensMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  BeginDrag(False);
  inherited;
end;

procedure Tfcpr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrosdecodigo.AsString := '00';
  registromesvalor.AsFloat := 0;
  registromesdesconto.AsFloat := 0;
  registromestotal.AsFloat := 0;
  registromesfrete.AsFloat := 0;
  registromesseguro.AsFloat := 0;
  registromesoutras.AsFloat := 0;
  registromesbicm.AsFloat := 0;
  registromesicm.AsFloat := 0;
  registromesbicms.AsFloat := 0;
  registromesicms.AsFloat := 0;
  registromesipi.AsFloat := 0;
  registromespis.AsFloat := 0;
  registromescofins.AsFloat := 0;
  registromespiss.AsFloat := 0;
  registromescofinss.AsFloat := 0;
  registrorefcodigo.AsInteger := 1;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotrmcodigo.AsInteger := Acesso.Terminal;
  registromesregistro.AsFloat := Date;
  registroflacodigo.AsInteger := Acesso.Filial;

end;

procedure Tfcpr.toecodigoEnter(Sender: TObject);
begin
  inherited;
  // vpToeAtual := toecodigo.Field.AsString;
  // toeorigem 1 2 ou 3 são para entradas

  // 1 e 5 dentro do estado
  // 2 2 6 para fora do estado

  ufs.Close;
  ufs.Params[0].AsString := Self.etdcodigo.Field.AsString;
  ufs.Open;

  // vpToeAtual := toecodigo.Field.AsString;
  // toeorigem 1 2 ou 3 são para entradas

  // 1 e 5 dentro do estado
  // 2 2 6 para fora do estado

  If Trim(Self.ufssiglacfg.Field.AsString) = Trim(Self.ufssiglaetd_old.Field.AsString) Then
  Begin
    // dentro do estado
    if Self.etdcodigo.Field.AsInteger = Self.cfgcfgetdempresa.AsInteger then
    begin
      vpFiltroToe := ' toeorigem=''1'' and ttmcodigo=0 and ttecodigo=0';
      Self.tdfcodigo.Field.AsString := '00';
    end
    else
    begin
      if PlTedcodigo.Caption = '1' then // se pessoa fisica, só nota propria
        vpFiltroToe := ' toeorigem=''1'' and ttmcodigo=0 and ttecodigo=0'
      else // se pessoa juridica ou agricultor, só nota de terceiros
        vpFiltroToe := ' toeorigem=''1'' and ttmcodigo=1 and ttecodigo=0';
    end;
  End
  Else
  Begin
    // fora do estado
    if Self.etdcodigo.Field.AsInteger = Self.cfgcfgetdempresa.AsInteger then
    begin
      vpFiltroToe := ' toeorigem=''2'' and ttmcodigo=0 and ttecodigo=0';
    end
    else
    begin
      if PlTedcodigo.Caption = '1' then // se pessoa fisica, só nota propria
        vpFiltroToe := ' toeorigem=''2'' and ttmcodigo=0 and ttecodigo=0'
      else // se pessoa juridica ou agricultor, só nota de terceiros
        vpFiltroToe := ' toeorigem=''2'' and ttmcodigo=1 and ttecodigo=0';
    end;
  End;

  Self.txtFiltro := vpFiltroToe;
  toe.Filter := vpFiltroToe;
  toe.Filtered := True;
end;

procedure Tfcpr.toecodigoExit(Sender: TObject);
begin
  inherited;

  VerificaToe;
  validasaida(Sender);
  Self.bvalidar.Enabled := True;

end;

procedure Tfcpr.verificadataaogetart(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  { força herança }
  inherited;

end;

procedure Tfcpr.VerificaToe;
begin
  if (vpToeAtual <> toecodigo.Field.AsString) and (toecodigo.Field.AsString <> '') then
  begin
    vpToeAtual := toecodigo.Field.AsString;

    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + Self.toecodigo.Field.AsString;
    consulta.Open;

    if not itm.Active then
      itm.Open;

    if not itm.IsEmpty then
      if Application.MessageBox(PChar('Você realmente deseja alterar a Operação de todos os produtos?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDYES then
      begin
        itm.DisableControls;
        itm.First;
        while not itm.Eof do
        begin
          itm.Edit;
          itmtoecodigo.AsInteger := Self.toecodigo.Field.AsInteger;
          itmcfocfopdestinacao.AsString := Self.consulta.FieldByName('toecfopsaida').AsString;
          itm.Post;

          itm.Next;
        end;

        itm.First;
        itm.EnableControls;
      end;

    if Self.FindComponent('ltdfcodigo') <> nil then
      (Self.FindComponent('ltdfcodigo') as TDBText).Field.Value := '';

    if refcodigo.Field.AsString = '' then
      if Self.FindComponent('lrefcodigo') <> nil then
        (Self.FindComponent('lrefcodigo') as TDBText).Field.Value := '';

    if tfpcodigo.Field.AsString = '' then
      if Self.FindComponent('ltfpcodigo') <> nil then
        (Self.FindComponent('ltfpcodigo') as TDBText).Field.Value := '';
  end;

  if mesnumero.Field.AsString = '' then
    mesnumero.Field.AsString := '0';

  if Self.toecodigo.Field.AsString <> '' then
  begin
    mesbicm.Color := $FFD8B0;
    mesicm.Color := $FFD8B0;
    mesbicms.Color := $FFD8B0;
    mesicms.Color := $FFD8B0;
    mesvalor.Color := $FFD8B0;
    mesipi.Color := $FFD8B0;
    mestotal.Color := $FFD8B0;

    refcodigo.tabstop := False;
    refcodigo.Color := $FFD8B0;

    tfpcodigo.tabstop := False;
    tfpcodigo.Color := $FFD8B0;

    mesdesconto.tabstop := False;
    mesfrete.tabstop := False;
    messeguro.tabstop := False;
    mesoutras.tabstop := False;

    mesdesconto.Color := $FFD8B0;
    mesfrete.Color := $FFD8B0;
    messeguro.Color := $FFD8B0;
    mesoutras.Color := $FFD8B0;

    mesbicm.tabstop := False;
    mesicm.tabstop := False;
    mesbicms.tabstop := False;
    mesicms.tabstop := False;
    mesvalor.tabstop := False;
    mesdesconto.tabstop := False;
    mesfrete.tabstop := False;
    messeguro.tabstop := False;
    mesoutras.tabstop := False;
    mesipi.tabstop := False;
    mestotal.tabstop := False;
    mesnumero.ReadOnly := True;
    mesnumero.tabstop := False;
    messerie.ReadOnly := True;
    messerie.tabstop := False;

    if Self.vimpnf = False then // vimpnf, significa que é uma nota importada e não lançada manual.
      mesemissao.Field.AsFloat := Date;

    if cfgcfgnumecertif.AsString <> '' then
    begin
      tdfcodigo.Field.AsString := '55';
      tdfcodigo.ReadOnly := True;
      tdfcodigo.tabstop := False;
    end;
  end;
end;

Procedure Tfcpr.mescalculatotal(Sender: TObject);
Begin
  Inherited;
  If (registro.State = dsInsert) Or (registro.State = dsedit) Then
  Begin

    Try
      If Self.mesvalor.Field.AsString = '' Then
        Self.mesvalor.Field.AsString := '0';

      If Self.mesdesconto.Field.AsString = '' Then
        Self.mesdesconto.Field.AsString := '0';

      If Self.mesfrete.Field.AsString = '' Then
        Self.mesfrete.Field.AsString := '0';

      If Self.messeguro.Field.AsString = '' Then
        Self.messeguro.Field.AsString := '0';

      If Self.mesoutras.Field.AsString = '' Then
        Self.mesoutras.Field.AsString := '0';

      if Self.vimpnf = False then
      begin
        Self.mestotal.Field.AsFloat := Self.mesvalor.Field.AsFloat - Self.mesdesconto.Field.AsFloat + Self.mesfrete.Field.AsFloat + Self.mesicms.Field.AsFloat +
          Self.messeguro.Field.AsFloat + Self.mesipi.Field.AsFloat + Self.mesoutras.Field.AsFloat;
      end;
    Except
    End;
  End;
End;

procedure Tfcpr.mesregistroExit(Sender: TObject);
begin
  validasaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if mesregistro.Field.AsString = '' then
    Exit;

  if mesregistro.Field.AsFloat < mesemissao.Field.AsFloat then
  begin
    ShowMessage('ATENÇÃO, Data de registro deve ser maior que data de emissão');
    mesregistro.SetFocus;
    Exit;
  end;
  spd.Close;
  spd.Open;

  if not DateInRange(Self.registromesregistro.AsFloat, Self.spdspddatainicial.AsFloat, Self.spdspddatafinal.AsFloat) then
  begin
    ShowMessage('ATENÇÃO, Data de entrada fora do período ativo do Sistema' + #13 + 'Período ativo: ' + Self.spdspddatainicial.AsString + ' até ' +
      Self.spdspddatafinal.AsString + '.');
    Self.mesregistro.SetFocus;
  end;
end;

procedure Tfcpr.pfrAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.pfrpfrnomeform.AsString := Self.Name;
end;

Function Tfcpr.codigocst(item: Integer): String;
Begin
End;

procedure Tfcpr.etdcodigoExit(Sender: TObject);
begin
  inherited;
  Self.validasaida(Sender);
  ufs.Close;
  ufs.Params[0].AsInteger := Self.etdcodigo.Field.AsInteger;
  ufs.Open;
end;

procedure Tfcpr.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Self.salvacolunas(listaitens);
  inherited;
end;

procedure Tfcpr.FormCreate(Sender: TObject);
begin
  inherited;
  (*
    * Altera o Options do DBGrid dos Itens para não permitir mover as colunas de lugar
    * mas permitindo redimensionar a largura das colunas
  *)
  with TFriendly(listaitens) do
    Options := Options - [goColMoving];
end;

procedure Tfcpr.FormShow(Sender: TObject);
var
  i: Integer;
begin
  IdModulo := vPlIdMd;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is tuniquery then
      (Self.Components[i] as tuniquery).Connection := zcone;

  cfg.Open;

  if cfgcfgcadastrapro.AsInteger = 1 then
  begin
    mesreclassicacao.Enabled := True;
    mesreclassicacao.Visible := True;
    lbmesreclassicacao.Visible := True;
  end
  else
  begin
    mesreclassicacao.Enabled := False;
    mesreclassicacao.Visible := False;
    lbmesreclassicacao.Visible := False;
  end;

  inherited;

  Self.carregacolunas(listaitens);
  AjustaGridItens;

  PlResumo.Height := 40;
  listaitens.ReadOnly := False;
  TFixaDBGrid(listaitens).FixedCols := 3;
end;

Function Tfcpr.codigocsi(item: Integer): String;
Begin
End;

Function Tfcpr.codigocsp(item: Integer): String;
Begin
End;

procedure Tfcpr.chavenfeChange(Sender: TObject);
begin
  inherited;
  chavenfe.Text := SomenteNumeros(chavenfe.Text);
end;

procedure Tfcpr.chavenfeKeyPress(Sender: TObject; var Key: Char);
begin
  Self.FormKeyPress(Sender, Key);
  if not(Key in [#0, #13, #8, #3, #$16, '0' .. '9']) then
    Key := #0;
end;

Function Tfcpr.codigocsf(item: Integer): String;
Begin
End;

procedure Tfcpr.BuscaProduto;
var
  vProcodigo: String;
begin
  vProcodigo := MostraLista('mpro', '');

  if vProcodigo <> '' then
  begin
    itm.Edit;
    itmprocodigo.AsString := vProcodigo;
    AtualizaProduto;
  end;
end;

procedure Tfcpr.AtualizaProduto;
begin
  If itm.State = dsBrowse Then
    itm.Edit;

  pro.Refresh; // Atualiza a query para listar novos produtos cadastrados

  consulta.Close;
  consulta.SQL.Text := 'SELECT punmultiplicador, unicodigobase FROM pun WHERE ';
  consulta.SQL.Add('procodigo = ' + Self.itmprocodigo.AsString + ' AND ');
  consulta.SQL.Add('unicodigo = ' + Self.itmunicodigo.AsString);
  consulta.Open;

  if consulta.RecordCount = 1 then
  begin
    Self.itmitmcontendo.AsFloat := Self.consulta.Fields[0].AsFloat;
    Self.itmunicodigobase.AsInteger := Self.consulta.Fields[1].AsInteger;
  end;
  itm.Post;
end;

procedure Tfcpr.BuscaOperacao;
var
  vtoecodigo: String;
begin
  vtoecodigo := MostraLista('mtoe', vpFiltroToe);

  if vtoecodigo <> '' then
  begin
    itm.Edit;
    itmtoecodigo.AsString := vtoecodigo;
    AtualizaCFOP;
  end;
end;

procedure Tfcpr.AjustaGridItens;
var
  i: Integer;
begin
  for i := 0 to listaitens.Columns.Count - 1 do
    case i of
      0 .. 4, 6, 8 .. 12, 14:
        listaitens.Columns[i].ReadOnly := True;
    end;
end;

procedure Tfcpr.AtualizaCFOP;
begin
  If itm.State = dsBrowse Then
    itm.Edit;

  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + itmtoecodigo.AsString;
  consulta.Open;
  itmcfocfopdestinacao.AsString := consulta.Fields[0].AsString;
  itm.Post;
end;

procedure Tfcpr.RecuperaXML(vChave: string);
var
  RecuperaXML: Trecuperaxml;
  DistribuicaoDFe: TDistribuicaoDFe;
  vPack: Cardinal;
  vlLicencaDLL: string;
  vlLicencaCaptcha: string;
  vlCertificado: string;

begin

  if fileexists(ExtractFilePath(Application.ExeName) + 'modulos\mdxm.bpl') then
    vPack := LoadPackage('modulos\mdxm.bpl');
  if vPack <> 0 then
    try

      @DistribuicaoDFe := GetProcAddress(vPack, PChar('DistribuicaoDFe'));

      if Assigned(DistribuicaoDFe) then
      begin
        LerConfiguracao;
        DistribuicaoDFe(Application, Acesso, zcone, ACBrNFe, vChave);

      end;

    finally
      DoUnLoadPackage(vPack);
    end;

end;

function Tfcpr.LerConfiguracao: Boolean;
Var
  IniFile: String;

  ok: Boolean;
  StreamMemo: TMemoryStream;
Begin
  // ACBrNFe.SSL.DescarregarCertificado;
  if not cfgnfe.Active then
  begin
    cfgnfe.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    cfgnfe.Open;

  end;

  Result := True;
  ACBrNFe.Configuracoes.WebServices.ResourceName := 'ACBrNFeServicos';
  ACBrNFe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'schemas';
  ACBrNFe.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName) + 'schemas\ACBrNFeServicos.ini';

  if cfgnfecfgcertificadoa1.AsString <> '' then
  begin
    ACBrNFe.Configuracoes.Certificados.dadosPFX := cfgnfecfgcertificadoa1.AsString;
    ACBrNFe.Configuracoes.Certificados.Senha := cfgnfecfgsenhacertificadoa1.AsString;
  end
  else
    ACBrNFe.Configuracoes.Certificados.NumeroSerie := cfgnfecfgnumecertif.AsString;

  if length(cfgnfecfgsenhacertificado.AsString) > 0 then
    ACBrNFe.Configuracoes.Certificados.Senha := cfgnfecfgsenhacertificado.AsString;

  ACBrNFe.Configuracoes.Arquivos.DownloadDFe.PathDownload := ExtractFilePath(Application.ExeName) + 'xml-recebidos';

  ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrNFe.Configuracoes.Geral.Salvar := True;
  ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;

  ACBrNFe.Configuracoes.WebServices.UF := UpperCase(cfgufssigla.AsString);

  if cfgnfecfgmodonfe.AsInteger = 2 then
    ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;

  if cfgnfecfgmodonfe.AsInteger = 1 then
    ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;

  if (Trim(cfgcfgcertificadoa1.AsString) <> '') and (cfgcfgsenhacertificadoa1.AsString <> '') then
  begin

    ACBrNFe.Configuracoes.Geral.SSLLib := libOpenSSL;
    ACBrNFe.Configuracoes.Geral.SSLCryptLib := cryOpenSSL;
    ACBrNFe.Configuracoes.Geral.SSLHttpLib := httpOpenSSL;
    ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsXmlSec;

  end
  else
  begin

    { ACBrNFe.Configuracoes.Geral.SSLLib :=  libWinCrypt;
      ACBrNFE.Configuracoes.Geral.SSLCryptLib  := cryWinCrypt;
      ACBrNFE.Configuracoes.Geral.SSLHttpLib   := httpWinHttp;
      ACBrNFE.Configuracoes.Geral.SSLXmlSignLib:= xsMsXml; }

    ACBrNFe.Configuracoes.Geral.SSLLib := libWinCrypt;
    // ACBrNFe.Configuracoes.Geral.SSLLib := libWinCrypt;
    // ACBrNFe.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
    // ACBrNFe.Configuracoes.Geral.SSLHttpLib := httpWinINet;
    // ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsMsXml;

    { ACBrNFe.Configuracoes.Geral.SSLLib := libCapicom;
      ACBrNFe.Configuracoes.Geral.SSLCryptLib := cryCapicom;
      ACBrNFe.Configuracoes.Geral.SSLHttpLib := httpWinINet;
      ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsMsXmlCapicom; }

  end;
  ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsXmlSec;
  ACBrNFe.Configuracoes.Geral.FormatoAlerta := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
  ACBrNFe.Configuracoes.Geral.ValidarDigest := False;
  ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;
  ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr000;
  ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet := 2000;
  ACBrNFe.Configuracoes.WebServices.Tentativas := 2;
  ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
  ACBrNFe.Configuracoes.WebServices.QuebradeLinha := '|';

  ACBrNFe.SSL.CarregarCertificadoSeNecessario;

End;

end.
