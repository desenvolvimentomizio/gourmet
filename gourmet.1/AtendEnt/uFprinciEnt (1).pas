unit uFprinciEnt;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFprinciAte, DBAccess, Uni, Data.DB, Vcl.Menus, System.Actions,
  Vcl.ActnList, MemDS, Vcl.ExtCtrls, UniProvider, MySQLUniProvider, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, ufuncoes,
  Vcl.Buttons, Vcl.Themes, System.MaskUtils, StrUtils, uPegaBase,
  System.Diagnostics, DateUtils, frxClass, frxExportImage, Vcl.Mask, DASQLMonitor, UniSQLMonitor,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  frxDACComponents, frxUniDACComponents, VirtualDataSet, VirtualTable;

type
  TGroupBox = class(Vcl.StdCtrls.TGroupBox) // declare this before of your form definition
  public
    procedure Paint; override;
  end;

type
  TFprinciEnt = class(TFprinciAte)
    ActQuantidade: TAction;
    ActAbreVenda: TAction;
    PlDadosAtend: TPanel;
    LbVendedor: TLabel;
    LbOrcChave: TLabel;
    LbQtdItens: TLabel;
    SBSair: TSpeedButton;
    SBAbreVenda: TSpeedButton;
    SBCancelaItem: TSpeedButton;
    SBLimpaAtendimento: TSpeedButton;
    SBDescontoGeral: TSpeedButton;
    SBDescontoItem: TSpeedButton;
    SBFinalizaVenda: TSpeedButton;
    SBClientes: TSpeedButton;
    SBProdutos: TSpeedButton;
    SBQuantidade: TSpeedButton;
    SBAbreCaixa: TSpeedButton;
    SBFechaCaixa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    qprosfnquantidade: TFloatField;
    sbr: TUniQuery;
    sbrsbrcodigo: TIntegerField;
    sbrsbridentificacao: TStringField;
    sbrprocodigo: TIntegerField;
    sbi: TUniQuery;
    sbisbichave: TIntegerField;
    sbiitochave: TIntegerField;
    sbisbrcodigo: TIntegerField;
    sbisbiobs: TStringField;
    isi: TUniQuery;
    isiisichave: TIntegerField;
    isisbichave: TIntegerField;
    isitsicodigo: TIntegerField;
    tsi: TUniQuery;
    tsitsicodigo: TIntegerField;
    tsitsiidentificacao: TStringField;
    litopuncodigo: TIntegerField;
    isiprocodigo: TIntegerField;
    DataSource1: TDataSource;
    sbGrupos: TScrollBox;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    sbListaProdutos: TScrollBox;
    pro: TUniQuery;
    qprogrpcodigo: TIntegerField;
    plBotoesPedido: TPanel;
    btAlteraPedido: TBitBtn;
    btVerPedido: TBitBtn;
    isiisitipo: TIntegerField;
    isipronome: TStringField;
    isitsiidentificacao: TStringField;
    plPedido: TPanel;
    pedido: TRichEdit;
    PedidoRodaPe: TRichEdit;
    ActPedido: TAction;
    SBConfirmaPedido: TSpeedButton;
    PedidoCabecalho: TRichEdit;
    plIdentificaPedido: TPanel;
    imm: TUniQuery;
    immimmchave: TIntegerField;
    immitochave: TIntegerField;
    immtcicodigo: TIntegerField;
    immimmmodo: TIntegerField;
    immimmhoraimprimir: TDateTimeField;
    plImp: TPanel;
    brg: TUniQuery;
    brgbrdcodigo: TIntegerField;
    brgbrdidentificacao: TStringField;
    bri: TUniQuery;
    bribrichave: TIntegerField;
    briitochave: TIntegerField;
    bribrdcodigo: TIntegerField;
    ActClientesSimplificado: TAction;
    SpeedButton2: TSpeedButton;
    bgr: TUniQuery;
    bgrbrdcodigo: TIntegerField;
    brggrpcodigo: TIntegerField;
    brgbrichave: TIntegerField;
    brgitochave: TIntegerField;
    brgbriincluir: TIntegerField;
    plGrpTituloCardapio: TPanel;
    plTituloCardapio: TPanel;
    plGrpPesquisa: TPanel;
    btLimpaBuscaCardapio: TSpeedButton;
    edBuscaCardapio: TEdit;
    plBotaoVoltarCardapio: TPanel;
    qsbi: TUniQuery;
    isipunprecoav: TFloatField;
    pbri: TUniQuery;
    plRodapeEsquerda: TPanel;
    plRecebeDados: TPanel;
    plCodigo: TPanel;
    plTituloCodigo: TPanel;
    cdbarra: TEdit;
    bMaisItens: TBitBtn;
    Dpro: TDataSource;
    immimmtemporetardo: TIntegerField;
    immimp: TUniQuery;
    immimpimmchave: TIntegerField;
    immimpimmhoraimprimir: TDateTimeField;
    immimpimmtemporetardo: TIntegerField;
    immimpimmmodoimpressao: TIntegerField;
    immimmnumepedido: TIntegerField;
    immimpimmnumepedido: TIntegerField;
    immcznchave: TIntegerField;
    immimpcznchave: TIntegerField;
    immimmhorapedido: TDateTimeField;
    gri: TUniQuery;
    frxBMPExport: TfrxBMPExport;
    DBGridPro: TDBGrid;
    plDetalheProduto: TPanel;
    plPrecoProduto: TPanel;
    dpun: TUniDataSource;
    pun: TUniQuery;
    DBGridPun: TDBGrid;
    punpuncodigo: TIntegerField;
    punprocodigo: TIntegerField;
    punpunprecoav: TFloatField;
    pununisimbolo: TStringField;
    plIngridientesPro: TPanel;
    Panel3: TPanel;
    mmIngredientes: TMemo;
    isa: TUniQuery;
    btSelecionar: TButton;
    DBGridGrp: TDBGrid;
    dgrp: TUniDataSource;
    plQuantidadePro: TPanel;
    plTituloQuantidadePro: TPanel;
    btMais: TButton;
    btMenos: TButton;
    edQtdaPro: TMaskEdit;
    itoitoobs: TStringField;
    cfgcfgmgoucobraentrega: TIntegerField;
    ActVerEntregas: TAction;
    SpeedButton3: TSpeedButton;
    cfgcfggouentregafutura: TIntegerField;
    sbVerpedidos: TSpeedButton;
    ActVerPedidos: TAction;
    orcorcvias: TIntegerField;
    itoitounidades: TIntegerField;
    ActImprime: TAction;
    ActCarregaPedido: TAction;
    spCarregaPedido: TSpeedButton;
    btalteraritem: TButton;
    sbisbiitem: TIntegerField;
    plUnidades: TPanel;
    edQtdaUni: TEdit;
    immclbcodigo: TIntegerField;
    isiisiquantidade: TIntegerField;
    relgri: TUniQuery;
    gritcicodigo: TIntegerField;
    gritciporta: TStringField;
    grimitidentificacao: TStringField;
    grigripedidoaux: TIntegerField;
    relgrirelarquivo: TBlobField;
    cfgcfgmgouviasorcdelivery: TIntegerField;
    plDireitaDetalhe: TPanel;
    listaasair: TUniQuery;
    PanelJaSairam: TPanel;
    PanelNaoSairam: TPanel;
    PanelTopoSituacaoEntregas: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DataSourcelistaasair: TDataSource;
    listaOrcs: TDBGrid;
    listaasairorcchave: TIntegerField;
    listaasairorcdataabert: TDateField;
    listaasairorchoraabert: TTimeField;
    listaasairorcdataencerr: TDateField;
    listaasairorchoraencerr: TTimeField;
    listaasairorcdataentrega: TDateField;
    listaasairorchoraentrega: TTimeField;
    listaasairetdcodigo: TIntegerField;
    listaasairetdidentificacao: TStringField;
    listaasairorcgeral: TFloatField;
    listaasairorcdesconto: TFloatField;
    listaasairorctotal: TFloatField;
    listaasairclbidentificacao: TStringField;
    listaasairorcobs: TStringField;
    listaasairorcnome: TStringField;
    listaasairorcendereco: TStringField;
    listaasairorctelefone: TStringField;
    listaasairpuocodigo: TIntegerField;
    listaasairedrbairro: TStringField;
    listaasairedrendereco: TStringField;
    listaasairpdghoraentrega: TStringField;
    listaasairorcdescrpagto: TStringField;
    listaasairpdgnumero: TStringField;
    listaasairetdidentificacaoent: TStringField;
    listaasairmarca: TIntegerField;
    LabelQtdPedidosaSair: TLabel;
    LabelQtdPedidosJaSaiu: TLabel;
    listajasaiu: TUniQuery;
    DataSourcelistajasaiu: TDataSource;
    listaOrcsSaiu: TDBGrid;
    qsbr: TUniQuery;
    qsbrsbrqtd: TIntegerField;
    ajustaadicionais: TUniQuery;
    plrodapeDireitaDetalhe: TPanel;
    SpeedButton4: TSpeedButton;
    frxUniDACComponents1: TfrxUniDACComponents;
    ingredientes: TUniQuery;
    sabores: TUniQuery;
    saboressbrcodigo: TIntegerField;
    saboressbridentificacao: TStringField;
    saboresprocodigo: TIntegerField;
    saboresisaingredientes: TStringField;
    vch: TUniQuery;
    ovc: TUniQuery;
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
    ovcorcchave: TIntegerField;
    ovcovcchave: TIntegerField;
    ovcvchchave: TIntegerField;
    ovcitochave: TIntegerField;
    vchprocodigo: TIntegerField;
    vchpuncodigo: TIntegerField;
    cfgcfgmgoufinalizadelivery: TIntegerField;
    cfgcfgmgouctadelivery: TIntegerField;
    orcoricodigo: TIntegerField;
    immpdscodigo: TIntegerField;
    orcpdscodigo: TIntegerField;
    listajasaiuorcchave: TIntegerField;
    listajasaiuorcdataabert: TDateField;
    listajasaiuorchoraabert: TTimeField;
    listajasaiuorcdataencerr: TDateField;
    listajasaiuorchoraencerr: TTimeField;
    listajasaiuetdcodigo: TIntegerField;
    listajasaiuetdidentificacao: TStringField;
    listajasaiuclbidentificacao: TStringField;
    listajasaiuorcgeral: TFloatField;
    listajasaiuorcdesconto: TFloatField;
    listajasaiuorctotal: TFloatField;
    listajasaiuorcobs: TStringField;
    listajasaiuorcdescrpagto: TStringField;
    listajasaiuorcnome: TStringField;
    listajasaiuorcendereco: TStringField;
    listajasaiuorctelefone: TStringField;
    listajasaiupuocodigo: TIntegerField;
    listajasaiuedrbairro: TStringField;
    listajasaiuedrendereco: TStringField;
    listajasaiupdghoraentrega: TStringField;
    listajasaiupdgnumero: TStringField;
    listajasaiuetdidentificacaoent: TStringField;
    listajasaiuorcretorno: TStringField;
    listajasaiutempoemproducao: TStringField;
    listajasaiutempoementrega: TStringField;
    listajasaiumoccodigo: TIntegerField;
    listajasaiupdsidentificacao: TStringField;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActQuantidadeExecute(Sender: TObject);
    procedure ActAbreVendaExecute(Sender: TObject);
    procedure ActLimpaAtendimentoExecute(Sender: TObject);
    procedure ActCancelaItemExecute(Sender: TObject);
    procedure ActClientesExecute(Sender: TObject);
    procedure ActProdutosExecute(Sender: TObject);
    procedure cdbarraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdbarraKeyPress(Sender: TObject; var Key: Char);
    procedure listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActFinalizaVendaExecute(Sender: TObject);
    procedure DlitoDataChange(Sender: TObject; Field: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure listaDblClick(Sender: TObject);
    procedure btAlteraPedidoClick(Sender: TObject);
    procedure btVerPedidoClick(Sender: TObject);
    procedure ActPedidoExecute(Sender: TObject);
    procedure ActClientesSimplificadoExecute(Sender: TObject);
    procedure edBuscaCardapioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btLimpaBuscaCardapioClick(Sender: TObject);
    procedure plBotaoVoltarCardapioClick(Sender: TObject);
    procedure DproDataChange(Sender: TObject; Field: TField);
    procedure btSelecionarClick(Sender: TObject);
    procedure DBGridGrpDblClick(Sender: TObject);
    procedure btMaisClick(Sender: TObject);
    procedure btMenosClick(Sender: TObject);
    procedure DBGridProDblClick(Sender: TObject);
    procedure DBGridProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridGrpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridPunKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure orcAfterInsert(DataSet: TDataSet);
    procedure ActVerEntregasExecute(Sender: TObject);
    procedure ActVerPedidosExecute(Sender: TObject);
    procedure dpunDataChange(Sender: TObject; Field: TField);
    procedure edQtdaUniChange(Sender: TObject);
    procedure btMenosUniClick(Sender: TObject);
    procedure btMaisUniClick(Sender: TObject);
    procedure ActImprimeExecute(Sender: TObject);
    procedure ActCarregaPedidoExecute(Sender: TObject);
    procedure btalteraritemClick(Sender: TObject);
    procedure ActDescontoItemExecute(Sender: TObject);
    procedure ActDescontoGeralExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure listaOrcsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure listaOrcsSaiuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DataSourcelistaasairDataChange(Sender: TObject; Field: TField);
    procedure DataSourcelistajasaiuDataChange(Sender: TObject; Field: TField);
    procedure listaOrcsTitleClick(Column: TColumn);
    procedure listaOrcsSaiuTitleClick(Column: TColumn);
    procedure saboresCalcFields(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
  private
    procedure AjustaConfigVeiculosEquipamentos;
    procedure Ajustabotoes(Situacao: Boolean);
    procedure AtualizaStatusAtend;
    procedure recalculaTotal;
    function IncluirNovoItem(Produto, Embalagem: Integer; Variacao: Integer = 0; Quantidade: Double = 0): Boolean; Override;
    procedure Crianovoorc;
    procedure Mostraclienteselecionado;
    procedure Mostrapainelcliente;
    procedure MontaBotoesGrupos;
    procedure MontaBotoesProdutos(vGrpCodigo: Integer; vGrpIdentificacao: string);
    procedure MontaBotoesProdutosNova(vGrpCodigo: Integer; vGrpIdentificacao: string);
    procedure btMostraProdutosGrupoclick(Sender: TObject);
    procedure btSelecionaProdutoClick(Sender: TObject);
    procedure btVoltaParaGruposClick(Sender: TObject);
    procedure MontaTextoPedido;
    procedure CriaPedidoGourmet;
    procedure AjustaHoraImprimir(vOrcchave: string);
    function CarregaFrame(pacote: string; destino: TPanel; conexao: tuniconnection): thandle;
    procedure VoltaCardapio;
    procedure MostraTodosProdutos;
    procedure IncluiValorEntrega(vlEtdCodigo, vlEdrCodigo: string);
    function GetBotoesAtivosImpre: String; override;
    procedure MostraComplementoProduto(vItoChave: Integer);
    procedure AtualizaListasdePedidos;
    function AjustaNumeroItem: Integer;
    function ProcessaVendas(vOrcchave: string; vAFaturar: Boolean = false): string;
    function Finaliza(Vchave: String): String;

    { Private declarations }

  public
    { Public declarations }
    vpItoUnidades: Integer;
    vpCznChave: string;
    vpTelCodigo: String;
    vpImmNumePedido: string;
    vpImprimiuECF: Boolean;
    vpImprimiuDAV: Boolean;
    vpImprimiuNFCe: Boolean;
    vpImprimiuNFE: Boolean;

    vpGrpCodigo: Integer;
    vpFinalizar: string;
    vpRetiraBalcao: string;
    vplValorLiquidoOp: Double;
    vpOrcChaveReimprime: string;

    vpTeclaFinalizador: Integer;
    vpValorFinalizador: Double;
    vpTotalAcrescimoav: Double;

  end;

  TMoniImp = function(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vCznChave: string): TFrame;

var
  FprinciEnt: TFprinciEnt;

implementation

{$R *.dfm}

uses uBuscaProduto, ulunidadesent, uforcfpagtoent, ufivlinhacomplpro,
  ufpedidos, ufunidades, ufListaItens;

(* Chamada exportada para carga da BPL *)
procedure MainForm(AOwner: TApplication);
begin
  FprinciEnt := TFprinciEnt.Create(AOwner);
end;

exports MainForm;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid)
  published
    property DefaultRowHeight;
  end;

  TCellGrid = class(TCustomGrid);

  { hifenizar }

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
    Font := Self.Font;

    if ThemeControl(Self) then
    begin
      if Text <> '' then
      begin
        GetTextExtentPoint32(Handle, PChar(Text), length(Text), Size);
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
        DrawText(Handle, PChar(Text), length(Text), R, Flags or DT_CALCRECT);
        if Tag > 0 then
          Font.Color := clwhite; // background color of the caption

        Brush.Color := Color; // background color of the caption
        DrawText(Handle, PChar(Text), length(Text), R, Flags);
      end;
    end
    else
      inherited; // if the control is not themed then use the original paint method.
  end;
end;

procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, PChar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW, nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

function TFprinciEnt.AjustaNumeroItem: Integer;
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

function TFprinciEnt.IncluirNovoItem(Produto, Embalagem: Integer; Variacao: Integer = 0; Quantidade: Double = 0): Boolean;
Var
  VProCodigo: Integer;
  VUniCodigo: Integer;
  vItoChave: Integer;

  (* Variáveis para tratar novo item no orçamento *)
  VNovoItem: Boolean;
  VEstoqueDisponivel: Boolean; // Recebe retorno que identifica se produto tem saldo disponível
  VQuantidade: Double; // Recebe quantidade para ser lançada no novo item
  VQuantidadeTotal: Double;
  VTextoQuantidade: String; // Utilizada quando produto tem saldo positivo menor que um
  VPodeQuantidade: Boolean; // Utilizada quando produto tem saldo positivo menor que um
  VMensagem: String; // Utilizada quando produto tem saldo positivo menor que um

  vlTecnico: String; // Identifica o técnico resposável pelo serviço
  vlVariacao: String;
Begin
  Try

    consulta.Close;
    consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    consulta.Open;

    if consulta.IsEmpty then
    begin
      ShowMessage('Atenção:' + #13 + #13 + 'A Cozinha não esta aberta, solicite a abertura da Cozinha!');
      Application.Terminate;
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
        qpro.Params[0].AsInteger := Produto;
        qpro.Open;

        if qpro.IsEmpty then
          Exit;

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
          Exit;
        end;

        // Identifica se item tem mais de uma unidade de venda
        If (qpro.RecordCount > 1) or (qsbrsbrqtd.AsInteger > 0) or (qsbi.RecordCount > 0) Then
          if (qpro.Locate('puncodigo', Embalagem, [])) then
          begin

            If (Not Ito.Active) Then
            Begin
              Ito.Params[0].AsInteger := StrToInt(vpOrcChave);
              Ito.Open;
            End;
            qpro.First;

            Ito.Append;
            itotdecodigo.AsInteger := orctdecodigo.AsInteger;
            itoorcchave.AsInteger := orcorcchave.AsInteger;
            itostocodigo.AsInteger := Orcstocodigo.AsInteger;
            itoitoitem.AsInteger := AjustaNumeroItem + 1;
            itoitodescontoav.AsFloat := 0;
            itoitodescontoap.AsFloat := 0;
            itoprocodigo.AsInteger := Produto;
            itoitounidades.AsInteger := vpItoUnidades;
            vpItoUnidades := 0;

            itoitovalorav.AsFloat := 0;

            itoitocontendo.AsFloat := qpropunmultiplicador.AsFloat;
            itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
            itounicodigo.AsInteger := qprounicodigo.AsInteger;
            VUniCodigo := 1;

            if Quantidade <> 0 then
              itoitoquantidade.AsFloat := Quantidade
            else if vpQuantidade <> 0 then
              itoitoquantidade.AsFloat := vpQuantidade

            else
              itoitoquantidade.AsFloat := 1;

            itoitototalav.AsFloat := 0;

            itoitosaldoav.AsFloat := 0;

            itoitovalorap.AsFloat := 0;

            itoitototalap.AsFloat := 0;
            itoitosaldoap.AsFloat := 0;

            Ito.Post;
            vItoChave := Self.itoitochave.AsInteger;

            Application.CreateForm(Tlunidadesent, Lunidadesent);

            If (qsbi.RecordCount > 0) Then
              Lunidadesent.vpTipoLista := 'Ingredientes'
            else
              Lunidadesent.vpTipoLista := 'Sabores';

            Lunidadesent.psituacao.Caption := 'Incluindo';
            Lunidadesent.vpOrcChave := Self.vpOrcChave;

            Lunidadesent.Dqpro.DataSet := qpro;

            sbr.Close;
            sbr.Params[0].AsInteger := Self.qprogrpcodigo.AsInteger;
            sbr.Open;

            sbi.Close;
            sbi.Params[0].AsInteger := vItoChave;
            sbi.Open;

            bgr.Close;
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

            Lunidadesent.Dsbr.DataSet := sbr;
            Lunidadesent.Dsbi.DataSet := sbi;
            Lunidadesent.Dtsi.DataSet := tsi;
            Lunidadesent.Dbri.DataSet := bri;

            { INICIO visualicao de bordas }

            consulta.Close;
            consulta.SQL.Text := 'select grpcodigo from brg where grpcodigo=' + qprogrpcodigo.AsString;
            consulta.Open;

            if not consulta.IsEmpty then
            begin

              brg.Close;
              brg.Params[0].AsInteger := Self.qprogrpcodigo.AsInteger;
              brg.Params[1].AsInteger := vItoChave;
              brg.Open;

              Lunidadesent.Dbrg.DataSet := brg;

              if not brg.IsEmpty then
                Lunidadesent.plBordas.Visible := true;

              { FINAL visualicao de bordas }

            end
            else
            begin
              Lunidadesent.plBordas.Visible := false;
            end;
            Lunidadesent.zcone := conexao;
            Lunidadesent.vpItoChave := inttostr(vItoChave);
            Lunidadesent.plProNome.Caption := qpropronome.AsString;
            Lunidadesent.vpUsrCodigo := ACESSO.Usuario.ToString;
            Lunidadesent.vpPunCodigo := inttostr(Embalagem);

            if Lunidadesent.ShowModal = mrcancel then
            begin
              Ito.Delete;
              freeandnil(Lunidadesent);
              btVerPedido.Click;
              Exit;
            end
            else
            begin
              if Ito.Locate('itochave', vItoChave, []) then
              begin

                VQuantidade := Self.itoitoquantidade.AsFloat;
                lito.Close;
                lito.ParamByName('orcchave').AsString := vpOrcChave;
                lito.ParamByName('flacodigo').AsInteger := ACESSO.Filial;
                lito.Open;
                recalculaTotal;
              end;
              btVerPedido.Click;

            end;
            freeandnil(Lunidadesent);
          end;

        (* Identifica se o produto possui Grade e se Variação não foi localizada *)
        if (qprogracodigo.AsInteger > 0) and (Variacao <= 0) then
        begin
          vlVariacao := MostraLista('mvrp', ACESSO.Usuario.ToString, inttostr(Produto));

          if vlVariacao = '' then
            Exit;

          Variacao := StrToInt(vlVariacao);
        end;

        VProCodigo := qproprocodigo.AsInteger;
        VUniCodigo := qprounicodigo.AsInteger;

        lista.Visible := true;
        plDireitaDetalhe.Visible := true;

        VNovoItem := true;

        If (VNovoItem) Then
        Begin
          Try

            if vpQuantidade <> 0 then
              VQuantidade := vpQuantidade
            else if VQuantidade = 0 then
            begin
              if Quantidade = 0 then
                VQuantidade := 1
              else
                VQuantidade := Quantidade;

            end;

            vpQuantidade := 0;

            // Verifica se produto tem saldo positivo menor que um.
            if (qproprosaldodisp.AsFloat > 0) and (qproprosaldodisp.AsFloat < 1) then
            begin
              VMensagem := 'Produto possui apenas ' + Format('%2.4n', [qproprosaldodisp.AsFloat]);
              VMensagem := VMensagem + ' de saldo disponível!';
              VMensagem := VMensagem + #13 + #13 + 'Por favor, indique a quantidade a ser vendida a seguir.';

              Application.MessageBox(PChar(VMensagem), PChar('Informação'), MB_OK + MB_ICONINFORMATION);
              VQuantidade := qproprosaldodisp.AsFloat;

              repeat
                VPodeQuantidade := false;
                VTextoQuantidade := '0';

                InputQuery('Quantidade', 'Informe a quantidade:', VTextoQuantidade);

                try
                  VQuantidade := StrToFloat(VTextoQuantidade);
                  if VQuantidade > 0 then
                    VPodeQuantidade := true;
                except
                  VPodeQuantidade := false;
                end;

              until (VPodeQuantidade);
            end;

            // Soma quantidade total do item se tiver lançado no orçamento com outra unidade.
            VQuantidadeTotal := VQuantidade + QuantiTotalItemOrc(VProCodigo, VUniCodigo);

            // Verifica se produto tem saldo suficiente.
            VEstoqueDisponivel := PermiteQuantidade(VProCodigo, VUniCodigo, VQuantidadeTotal);

          except
            on e: Exception do
            begin
              Application.MessageBox(PChar('Erro ao verificar quantidade do produto: ' + inttostr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message), 'Erro',
                MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);

              SalvarLogErro(e.Message, e.StackTrace);

              lito.EnableControls;
            end;
          end;

          Case VEstoqueDisponivel of
            true:
              begin

                If (Not Ito.Active) Then
                Begin
                  Ito.Params[0].AsInteger := StrToInt(vpOrcChave);
                  Ito.Open;
                End;
                if Ito.Locate('itochave', vItoChave, []) then
                  Ito.Edit
                else
                  Ito.Append;

                itotdecodigo.AsInteger := orctdecodigo.AsInteger;
                itoorcchave.AsInteger := orcorcchave.AsInteger;
                itostocodigo.AsInteger := Orcstocodigo.AsInteger;
                if Ito.State = dsinsert then
                begin
                  itoitoitem.AsInteger := AjustaNumeroItem + 1;
                end;
                itoitodescontoav.AsFloat := 0;
                itoitodescontoap.AsFloat := 0;
                itoprocodigo.AsInteger := VProCodigo;

                itoitovalorav.AsFloat := qpropunprecoav.AsFloat;

                itoitocontendo.AsFloat := qpropunmultiplicador.AsFloat;
                itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
                itounicodigo.AsInteger := qprounicodigo.AsInteger;

                VUniCodigo := qprounicodigo.AsInteger;
                { if VQuantidade <> 1 then
                  begin }
                itoitoquantidade.AsFloat := VQuantidade;
                { end
                  else
                  begin
                  if Quantidade <> 0 then
                  itoitoquantidade.AsFloat := Quantidade
                  else
                  itoitoquantidade.AsFloat := VQuantidade;

                  end; }

                if Ito.State = dsinsert then
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

                Ito.Post;

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

                immtcicodigo.AsInteger := consulta.Fields[0].AsInteger;
                immimmtemporetardo.AsInteger := consulta.Fields[1].AsInteger;
                immimmmodo.AsInteger := 0;

                // immimmhoraimprimir.AsString := agora(Application, conexao);
                immimmnumepedido.AsString := vpImmNumePedido;
                immcznchave.AsString := vpCznChave;
                immimmhorapedido.AsString := agora(Application, conexao);
                immclbcodigo.AsInteger := ACESSO.Usuario;
                immpdscodigo.AsInteger := 2;
                imm.Post;

                lito.Refresh;
                lito.Locate('itochave', vItoChave, []);
                Ito.Edit;

                (* Identifica se tem COMPLEMENTO NA DESCRICAO *)
                If (qpropropedecomple.AsInteger = 1) Then
                  MostraComplementoProduto(vItoChave);

                (* Identifica o Colaborador Responsável pelo Atendimento *)
                SalvaColabItem(vItoChave);

                lito.Refresh;
                lito.Locate('itochave', vItoChave, []);

                (*
                  * Se produto não tem Preço definido
                  * chama função para usuário definir
                *)
                repeat
                  If (litoitovalor.AsFloat = 0) Then
                    AjustaPreco(vItoChave);

                  if (litoitovalor.AsFloat = 0) then
                    Application.MessageBox(PChar('Valor de venda precisa ser definido!'), 'Atenção', MB_ICONWARNING + MB_OK);
                until (litoitovalor.AsFloat > 0);

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
                end;

              end;
          End;

        End;
        MontaTextoPedido;
        try
          // recalculaTotal;

          if Variacao > 0 then
            lito.Locate('procodigo;unicodigo;vrpcodigo', VarArrayOf([VProCodigo, VUniCodigo, Variacao]), [])
          else
            lito.Locate('procodigo;unicodigo', VarArrayOf([VProCodigo, VUniCodigo]), []);
        except
          on e: Exception do
          begin
            Application.MessageBox(PChar('Erro ao recalcular total do produto: ' + inttostr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message), 'Erro',
              MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
            SalvarLogErro(e.Message, e.StackTrace);

            lito.EnableControls;
          end;
        end;
        recalculaTotal;
      End;
    Except
      on e: Exception do
      begin
        Application.MessageBox(PChar('Erro ao incluir produto: ' + inttostr(VProCodigo) + #13 + #13 + 'Mensagem: ' + e.Message), 'Erro', MB_OK + MB_DEFBUTTON1 + MB_ICONERROR);
        SalvarLogErro(e.Message, e.StackTrace);

        lito.EnableControls;
      end;

    End;
  Finally
    qpro.Close;
    lito.EnableControls;
  End;
End;

procedure TFprinciEnt.listaDblClick(Sender: TObject);
var
  vlItoChave: Integer;
  vlProCodigo: Integer;
  vlPunCodigo: Integer;
begin
  inherited;

  vlItoChave := Self.Litoitochave.AsInteger;
  vlProCodigo := Self.litoprocodigo.AsInteger;
  if Ito.Locate('itochave', Litoitochave.AsInteger, []) then
  begin
    vlPunCodigo := Self.itopuncodigo.AsInteger;

  end;
  qpro.Close;
  qpro.Params[0].AsInteger := vlProCodigo;
  qpro.Open;

  sbr.Close;
  sbr.Params[0].AsInteger := Self.qprogrpcodigo.AsInteger;
  sbr.Open;

  { if not sbr.IsEmpty then
    begin }

  try
    Application.CreateForm(Tlunidadesent, Lunidadesent);
    Lunidadesent.vpOrcChave := Self.vpOrcChave;
    Lunidadesent.Dqpro.DataSet := qpro;
    Lunidadesent.vpPunCodigo := inttostr(vlPunCodigo);

    Lunidadesent.Dqpro.DataSet.Locate('puncodigo', Lunidadesent.vpPunCodigo, []);

    sbi.Close;
    sbi.Params[0].AsInteger := vlItoChave;
    sbi.Open;

    tsi.Close;
    tsi.Open;

    Lunidadesent.Dsbr.DataSet := sbr;
    Lunidadesent.Dsbi.DataSet := sbi;
    Lunidadesent.Dtsi.DataSet := tsi;
    Lunidadesent.Disi.DataSet := isi;
    Lunidadesent.Dbri.DataSet := bri;

    consulta.Close;
    consulta.SQL.Text := 'select procodigo from bpr where procodigo=' + qproprocodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin

      { INICIO visualicao de bordas }
      brg.Close;
      brg.Params[0].AsInteger := vlItoChave;
      brg.Params[1].AsInteger := Self.qprogrpcodigo.AsInteger;
      brg.Open;

      Lunidadesent.Dbrg.DataSet := brg;

      if not brg.IsEmpty then
        Lunidadesent.plBordas.Visible := true;

      { FINAL visualicao de bordas }

    end
    else
    begin
      Lunidadesent.plBordas.Visible := false;

    end;
    Lunidadesent.zcone := conexao;
    Lunidadesent.vpItoChave := inttostr(vlItoChave);
    Lunidadesent.plProNome.Caption := qpropronome.AsString;
    Lunidadesent.vpUsrCodigo := ACESSO.Usuario.ToString;

    Lunidadesent.AjustaBotaoUnidades;
    Lunidadesent.plUnidades.Visible := false;
    Lunidadesent.psituacao.Caption := 'Alterando';

    qsbi.Close;
    qsbi.Params[0].AsInteger := vlProCodigo;
    qsbi.Open;

    If (qsbi.RecordCount > 0) Then
      Lunidadesent.vpTipoLista := 'Ingredientes'
    else
      Lunidadesent.vpTipoLista := 'Sabores';

    Lunidadesent.ShowModal;

    If (Not Ito.Active) Then
    Begin
      Ito.Params[0].AsInteger := StrToInt(vpOrcChave);
      Ito.Open;
    End;

    if Ito.Locate('itochave', Litoitochave.AsInteger, []) then
    begin
      Self.Ito.Edit;
      Self.itounicodigo.AsInteger := qprounicodigo.AsInteger;
      Self.itopuncodigo.AsInteger := qpropuncodigo.AsInteger;
      Self.Ito.Post;
    end;
    btVerPedido.Click;
    vpQuantidade := 1;

  finally
    freeandnil(Lunidadesent);
  end;
  { end; }
end;

procedure TFprinciEnt.listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;

begin
  if lito.Active = false then
    Exit;
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

  with TFriendly(lista) do
  begin
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure TFprinciEnt.listaOrcsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  vpOrcChaveReimprime := DataSourcelistaasair.DataSet.FieldByName('orcchave').AsString;
end;

procedure TFprinciEnt.listaOrcsTitleClick(Column: TColumn);
begin
  inherited;
  listaasair.IndexFieldNames := Column.FieldName;
end;

procedure TFprinciEnt.Crianovoorc;
begin
  inherited Crianovoorc;
  Vendedor := '';
  plPedido.Visible := false;
  PedidoCabecalho.Lines.Clear;
  pedido.Lines.Clear;
  PedidoRodaPe.Lines.Clear;
  Ajustabotoes(false);

end;

procedure TFprinciEnt.CriaPedidoGourmet;

begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT cfgmgoupedidelivery FROM cfgmgou ';
  consulta.Open;

  consulta.Edit;
  consulta.FieldByName('cfgmgoupedidelivery').AsInteger := consulta.FieldByName('cfgmgoupedidelivery').AsInteger + 1;
  consulta.Post;

  vpImmNumePedido := consulta.Fields[0].AsString;

  consulta.Close;
  consulta.SQL.Text := 'update imm set immnumepedido=' + vpImmNumePedido + ' where imm.itochave in (select itochave from ito where orcchave=' + orcorcchave.AsString + ')';
  consulta.ExecSQL;

end;

procedure TFprinciEnt.DataSourcelistaasairDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  vpOrcChaveReimprime := DataSourcelistaasair.DataSet.FieldByName('orcchave').AsString;
end;

procedure TFprinciEnt.DataSourcelistajasaiuDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  vpOrcChaveReimprime := DataSourcelistajasaiu.DataSet.FieldByName('orcchave').AsString;
end;

procedure TFprinciEnt.listaOrcsSaiuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  vpOrcChaveReimprime := DataSourcelistajasaiu.DataSet.FieldByName('orcchave').AsString;

end;

procedure TFprinciEnt.listaOrcsSaiuTitleClick(Column: TColumn);
begin
  inherited;
  listajasaiu.IndexFieldNames := Column.FieldName;
end;

procedure TFprinciEnt.DBGridGrpDblClick(Sender: TObject);
var
  vGrpCodigo: Integer;
begin
  pro.FilterSQL := '';
  vGrpCodigo := grpgrpcodigo.AsInteger;
  vpGrpCodigo := vGrpCodigo;
  plTituloCardapio.Caption := inttostr(grp.RecordCount) + ' ' + grpgrpidentificacao.AsString;
  sbGrupos.Visible := false;
  plBotaoVoltarCardapio.Visible := true;
  MontaBotoesProdutosNova(vGrpCodigo, grpgrpidentificacao.AsString);
  edBuscaCardapio.SetFocus;

end;

procedure TFprinciEnt.DBGridGrpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFprinciEnt.DBGridProDblClick(Sender: TObject);
begin

  if (pun.RecordCount = 1) and (isa.IsEmpty) then
  begin
    if edQtdaPro.Text = '' then
      edQtdaPro.Text := '1';

    // btSelecionar.Click;
  end;

  inherited;
end;

procedure TFprinciEnt.DBGridProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFprinciEnt.DBGridPunKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure TFprinciEnt.DlitoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Dlito.DataSet.IsEmpty then
    Exit;

end;

procedure TFprinciEnt.DproDataChange(Sender: TObject; Field: TField);
var
  vlLinha: string;
begin
  inherited;
  if not pro.Active then
    Exit;

  if pro.FieldByName('procodigo').AsString = '' then
    Exit;

  pun.Connection := conexao;
  pun.Close;
  pun.SQL.Text := 'SELECT  puncodigo, procodigo, punprecoav, unisimbolo';
  pun.SQL.Add('FROM pun , uni WHERE pun.tuncodigo<>0 and uni.unicodigo=pun.unicodigo and procodigo=' + pro.FieldByName('procodigo').AsString);
  pun.SQL.Add('and procodigo NOT IN (SELECT  procodigo FROM sfn) ');
  pun.Open;

  if not pun.IsEmpty then // preço para produtos com Tamanhos
  begin
    pun.Close;
    pun.SQL.Text := 'SELECT  puncodigo, procodigo, punprecoav, unisimbolo ';
    pun.SQL.Add('FROM pun , uni WHERE pun.tuncodigo<>0 and uni.unicodigo=pun.unicodigo and procodigo=' + pro.FieldByName('procodigo').AsString);
    pun.SQL.Add('and procodigo NOT IN (SELECT  procodigo FROM sfn) ');
    pun.Open;

  end
  else // preço para produtos com sabores
  begin

    pun.Close;
    pun.SQL.Text := 'SELECT  puncodigo, procodigo, punprecoav, unisimbolo ';
    pun.SQL.Add('FROM pun, uni WHERE pun.tuncodigo<>0 and uni.unicodigo=pun.unicodigo and pun.puncodigo=' + pro.FieldByName('puncodigo').AsString + ' and procodigo=' +
      pro.FieldByName('procodigo').AsString);
    pun.SQL.Add('and procodigo IN (SELECT  procodigo FROM sfn) ');
    pun.Open;
  end;

  // ingredientes
  isa.Connection := conexao;
  isa.SQL.Text := 'SELECT   sbrcodigo,  isa.procodigo,  pronome ';
  isa.SQL.Add('FROM isa, pro WHERE pro.procodigo = isa.procodigo ');
  isa.SQL.Add('AND isa.sbrcodigo = (SELECT sbrcodigo FROM sbr ');
  isa.SQL.Add('WHERE procodigo =' + pro.FieldByName('procodigo').AsString + ')');
  isa.Open;

  if not isa.IsEmpty then
  begin

    isa.First;
    while not isa.Eof do
    begin
      vlLinha := vlLinha + UpperNome(isa.FieldByName('pronome').AsString) + ', ';
      isa.Next;
    end;
    vlLinha := Copy(vlLinha, 1, length(vlLinha) - 2);
    mmIngredientes.ReadOnly := false;
    mmIngredientes.Lines.Text := vlLinha;
    mmIngredientes.ReadOnly := true;

  end
  else
  begin
    mmIngredientes.ReadOnly := false;
    mmIngredientes.Lines.Text := '';
    mmIngredientes.ReadOnly := true;
  end;

  if (pun.RecordCount = 1) then
  begin
    if not plQuantidadePro.Visible then
    begin
      plQuantidadePro.Visible := true;
      edQtdaPro.Text := '1';
    end
    else
    begin
      if edQtdaPro.Text = '' then
        edQtdaPro.Text := '1';
    end;
  end
  else
    plQuantidadePro.Visible := false;

  DBGridPun.Width := DBGridPun.Width + 1;
  DBGridPun.Width := DBGridPun.Width - 1;

  ShowScrollbar(DBGridPun.Handle, SB_VERT, true)

end;

procedure TFprinciEnt.dpunDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uppercase(Self.pununisimbolo.AsString) = 'KG' then
  begin
    plUnidades.Visible := true;
    edQtdaPro.EditMask := '';
    btMais.Visible := false;
    btMenos.Visible := false;

    consulta.Close;
    consulta.SQL.Text := 'select cpbuniadesporkg from cpb where procodigo=' + pro.FieldByName('procodigo').AsString;
    consulta.Open;

    if (consulta.FieldByName('cpbuniadesporkg').AsInteger = 0) or (consulta.FieldByName('cpbuniadesporkg').AsInteger = 1) then
    begin
      plTituloQuantidadePro.Caption := 'Quantidade';
      plUnidades.Visible := false;
    end
    else
    begin
      plTituloQuantidadePro.Caption := consulta.FieldByName('cpbuniadesporkg').AsString + ' por KG';
      plUnidades.Visible := true;
    end;

  end
  else
  begin
    btMais.Visible := true;
    btMenos.Visible := true;
    plUnidades.Visible := false;
    edQtdaPro.EditMask := '999;0';
  end;
end;

procedure TFprinciEnt.MostraTodosProdutos;
var
  i: Integer;
begin
  inherited;
  for i := 0 to sbListaProdutos.ComponentCount - 1 do
  begin
    if (sbListaProdutos.Components[i] is TLabel) then
      (((sbListaProdutos.Components[i] as TLabel).Parent as TPanel).Parent as TPanel).Visible := true;
  end;
end;

procedure TFprinciEnt.orcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  orcfoacodigo.AsInteger := 2;
  orcorcvias.AsInteger := 1;
  orcoricodigo.AsInteger := OriDelivery;

end;

procedure TFprinciEnt.VoltaCardapio;
begin
  plRodapeLista.Width := 300;
  sbGrupos.Visible := true;
  sbListaProdutos.Visible := false;
  plTituloCardapio.Caption := 'Cardápio';
  edBuscaCardapio.Text := '';
  plBotaoVoltarCardapio.Visible := false;
  edBuscaCardapio.SetFocus;
  edQtdaPro.Text := '';
end;

procedure TFprinciEnt.edBuscaCardapioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i, X: Integer;
begin
  inherited;

  if sbGrupos.Visible then
  begin
    pro.FilterSQL := '';
    X := 0;
    if edBuscaCardapio.Text = '' then
    begin

      grp.First;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select grpcodigo from grp where upper(grpidentificacao) like ' + chr(39) + '%' + trim(uppercase(trim(edBuscaCardapio.Text))) + '%' + chr(39);
      consulta.Open;
      grp.Locate('grpcodigo', consulta.FieldByName('grpcodigo').AsString, []);
      if Key = 13 then
      begin
        DBGridGrpDblClick(DBGridGrp);
        edBuscaCardapio.Text := '';
      end;

    end;
  end
  else if sbListaProdutos.Visible then
  begin

    X := 0;
    if edBuscaCardapio.Text = '' then
    begin
      pro.FilterSQL := '';
      pro.First;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select procodigo from pro where pro.tpocodigo=0 AND  grpcodigo=' + inttostr(vpGrpCodigo) + ' and upper(pronome) like ' + chr(39) + '%' +
        uppercase(trim(edBuscaCardapio.Text)) + '%' + chr(39);
      consulta.Open;

      pro.FilterSQL := 'upper(pronome) like ' + chr(39) + '%' + trim(uppercase(trim(edBuscaCardapio.Text))) + '%' + chr(39);

      // pro.Locate('procodigo', consulta.FieldByName('procodigo').AsInteger, []);

      if Key = 13 then
      begin
        DBGridProDblClick(DBGridPro);
        edBuscaCardapio.Text := '';
      end;

      if Key = 40 then
      begin
        Key := 0;
        pro.Next;
      end;
      if Key = 38 then
      begin
        Key := 0;
        pro.Prior;
      end;

    end;

  end;
end;

procedure TFprinciEnt.edQtdaUniChange(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select cpbuniadesporkg from cpb where procodigo=' + pro.FieldByName('procodigo').AsString;
  consulta.Open;

  if (consulta.FieldByName('cpbuniadesporkg').AsInteger = 0) or (consulta.FieldByName('cpbuniadesporkg').AsInteger = 1) then
    plTituloQuantidadePro.Caption := 'Quantidade'
  else
  begin
    plTituloQuantidadePro.Caption := consulta.FieldByName('cpbuniadesporkg').AsString + ' por KG';

    try
      edQtdaPro.Text := Floattostr((1 / consulta.FieldByName('cpbuniadesporkg').AsFloat) * StrToInt((edQtdaUni.Text)));
    except
      edQtdaPro.Text := '1';
    end;
  end;

end;

Procedure TFprinciEnt.Mostraclienteselecionado;
Begin

  // Mostrapainelcliente;
End;

Procedure TFprinciEnt.Mostrapainelcliente;
Var
  vlMoastraLista: TMostraLista;
  vlEndereco: Integer;
  vlRetonro: String;
  vlTxtFiltro: String;
  vlPackEnd: cardinal;
Begin

  plMensagemPrincipal.Visible := false;

  orc.Edit;

  consulta.Close;
  consulta.SQL.Text := 'select edrcodigo from edr where etdcodigo=' + VpEtdCodigo;
  consulta.Open;

  if (orcedrcodigo.AsString = '')
  { * OS  23382
    Daniel 12/09/2014 Verificado na base do cliente que estava ficando 0 (zero) como padrao para o erd* }
    or (orcedrcodigo.AsString = '0')
  { * OS  23382 * }
  then
  begin
    if consulta.RecordCount > 1 then
    begin
      vlPackEnd := LoadPackage('modulos\medr.bpl');
      If vlPackEnd <> 0 Then
        Try
          @vlMoastraLista := GetProcAddress(vlPackEnd, PChar('formu'));

          If Assigned(vlMoastraLista) Then
          Begin
            vlTxtFiltro := ' etdcodigo=' + VpEtdCodigo;
            vlRetonro := vlMoastraLista(Application, conexao, ACESSO.Usuario.ToString, 1, 'moduloedr', vlTxtFiltro, '');
          End;
        Finally
          DoUnLoadPackage(Application, vlPackEnd);
        End;

      if vlRetonro <> '' then
        vlEndereco := StrToInt(vlRetonro)

    end
    else
      vlEndereco := consulta.Fields[0].AsInteger;
  end
  else
  begin
    vlEndereco := orcedrcodigo.AsInteger;
  end;

  Etd.Close;
  Etd.Params[0].AsString := VpEtdCodigo;
  Etd.Params[1].AsInteger := vlEndereco;
  Etd.Open;

  Orcetdcodigo.AsString := VpEtdCodigo;
  orcedrcodigo.AsInteger := vlEndereco;
  orcedritem.AsInteger := etdedritem.AsInteger;

  PCpaginas.Visible := true;
  ActClientes.Enabled := true;
  Lidentificacao.Caption := AnsiUpperCase(etdetdidentificacao.AsString);
End;

procedure TFprinciEnt.plBotaoVoltarCardapioClick(Sender: TObject);
begin
  inherited;
  VoltaCardapio;
end;

procedure TFprinciEnt.recalculaTotal;
var
  vlBruto: Double;
  vlDesconto: Double;
  vlLiquido: Double;
begin
  inherited recalculaTotal;
  vlBruto := 0;
  vlDesconto := 0;
  vlLiquido := 0;

  If vpTipoPreco = puoAPrazo Then
  begin
    vlBruto := orcorcgeralap.AsFloat;
    vlDesconto := orcorcdescontoap.AsFloat;
    vlLiquido := orcorctotalap.AsFloat;

  end
  else
  begin
    vlBruto := orcorcgeralav.AsFloat;
    vlDesconto := orcorcdescontoav.AsFloat;
    vlLiquido := orcorctotalav.AsFloat;
  end;

  LbQtdItens.Caption := 'Itens: ' + inttostr(vpQtdItens);

  // MontaTextoPedido;

end;

procedure TFprinciEnt.saboresCalcFields(DataSet: TDataSet);
var
  vlLinha: string;
begin
  inherited;
  if FprinciEnt.sabores.Active then
  begin
    FprinciEnt.ingredientes.Close;
    FprinciEnt.ingredientes.SQL.Text := 'select isa.sbrcodigo, isa.procodigo, pro.pronome from isa,pro WHERE ';
    FprinciEnt.ingredientes.SQL.Add(' isa.senadicionavel=0 and  pro.sipcodigo=1 and isa.sipcodigo=1 and isa.procodigo=pro.procodigo and sbrcodigo=' + saboressbrcodigo.AsString);
    FprinciEnt.ingredientes.Open;
    vlLinha := '';

    FprinciEnt.ingredientes.First;
    while not FprinciEnt.ingredientes.Eof do
    begin
      vlLinha := vlLinha + UpperNome(FprinciEnt.ingredientes.FieldByName('pronome').AsString) + ', ';
      FprinciEnt.ingredientes.Next;
    end;
    vlLinha := Copy(vlLinha, 1, length(vlLinha) - 2);

    FprinciEnt.saboresisaingredientes.AsString := vlLinha;
  end;
end;

procedure TFprinciEnt.SpeedButton4Click(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
  vDirRelat: string;
begin

  inherited;

  if vpOrcChaveReimprime <> '' then
  BEGIN
    frxUniDACComponents1.DefaultDatabase := conexao;

    vlNomeArq := ExtractFilePath(Application.ExeName) + 'Report\comprovanteDelivery.fr3';

    if not FileExists(vlNomeArq) then
    begin
      ShowMessage('Arquivo nao localizado: ' + vlNomeArq);
      Exit;
    end;

    // relatorio.LoadFromFile(vlNomeArq);

    consulta.Close;
    consulta.SQL.Text := 'select orcvias from orc where orcchave=' + vpOrcChaveReimprime;
    consulta.Open;

    vDirRelat := ExtractFilePath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3';

    ImprimirComprovantesOrc(Application, conexao, vpOrcChaveReimprime, vDirRelat, trmtciporta.AsString, tiImprimir);

  END;

end;

procedure TFprinciEnt.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AtualizaListasdePedidos;
end;

procedure TFprinciEnt.FormCreate(Sender: TObject);
begin
  inherited;

  vpLarguraTela := 1920;
  vpAlturaTela := 1080;

  inherited;

  // cria um mutex usando um nome único
  CreateMutex(nil, false, 'mizioVarejo.OnlyOne');

  // verifica se houve erro na criação
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    MessageBox(0, 'Este programa já está sendo executado', 'Aviso', MB_ICONSTOP);
    Halt(0); // cancela execução
  end;

  if FileExists(ExtractFilePath(Application.ExeName) + 'logo.png') then
  begin
    IFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'logo.png');
  end;

  InicializacaoGeral;

  Ajustabotoes(false);

  Trm.Close;
  Trm.Params[0].AsString := ACESSO.Terminal.ToString;
  Trm.Open;

  If Trm.RecordCount = 0 Then
  Begin
    ShowMessage('Este terminal não esta cadastrado no sistema, verifique!');
    Application.Terminate;
  End
  Else
  Begin

    WindowState := WsMaximized;

    { if not Ajustausuario then VERIFICAR
      Exit; }

    ativaimpressoraNF;

    if not IDAV.Visible then
      If FileExists(ExtractFilePath(Application.ExeName) + 'relat\comprovante.fr3') Then
        IDAV.Visible := true;

    if cfgcfgusanfc.AsInteger = 1 then
      Infce.Visible := true;

    ajustaCaixa;
    ActFechaCaixa.Visible := false;

    lterminal.Caption := ACESSO.Terminal.ToString;

    Ajustabotoes(false);
    TFriendly(lista).DefaultRowHeight := 50;

    consulta.Close;
    consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    consulta.Open;

    if consulta.IsEmpty then
    begin
      ShowMessage('Atenção:' + #13 + #13 + 'A Cozinha não esta aberta, solicite a abertura da Cozinha!');
      Application.Terminate;
    end
    else
    begin
      vpCznChave := consulta.Fields[0].AsString;
    end;

  End;

  if FileExists(ExtractFilePath(Application.ExeName) + 'modulos\mmoniimpnet.bpl') then
  begin
    CarregaFrame('mmoniimpnet', plImp, Self.conexao);
  end;

end;

procedure TFprinciEnt.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Tecla: Integer;
  VCdBarra: String;
  VQuantidade: Double;
Begin
  VCdBarra := (FindComponent('Cdbarra') as TEdit).Text;
  (FindComponent('Cdbarra') as TEdit).Text := '';

  Tecla := Key;
  Key := 0;

  // Identifica se tem combinação de tecla com Ctrl;
  If Shift = [ssCtrl] Then
  Begin
    Case Tecla Of
      (* I - CANCELAMENTO DE ITEM *)
      73:
        ActCancelaItem.Execute;

      (* U - LIMPA ATENDIMENTO *)
      85:
        ActLimpaAtendimento.Execute;

      (* D - DESCONTO NO ITEM *)
      68:
        ActDescontoItem.Execute;

      (* G - DESCONTO GERAL *)
      71:
        ActDescontoGeral.Execute;

    Else
      begin
        (FindComponent('Cdbarra') as TEdit).Text := VCdBarra;
        (FindComponent('Cdbarra') as TEdit).SelStart := length((FindComponent('Cdbarra') as TEdit).Text);
        // DEVOLVE POSIÇÃO DO CURSOR PARA O FIM
        Key := Tecla;
      end;
    End;

  End
  Else
  Begin
    if plMensagemPrincipal.Visible then
      Case Tecla Of

        (* F2 - INICIA VENDA *)
        113:
          ActAbreVenda.Execute;
      else
        begin
          Key := Tecla;
          Exit;
        end;
      End;

    Case Tecla Of
      (* SETA PARA CIMA *)
      38:
        if lito.Active then
          Dlito.DataSet.Prior;

      (* SETA PARA BAIXO *)
      40:
        if lito.Active then
          Dlito.DataSet.Next;

      (* F4 - AJUSTA QUANTIDADE *)
      115:
        ActQuantidade.Execute;

      (* F6 -  FINALIZAR VENDA *)
      117:
        ActFinalizaVenda.Execute;

      (* F7 - BUSCA CLIENTES *)
      118:
        ActClientes.Execute;

      (* F8 - PRODUTOS *)
      119:
        ActProdutos.Execute;

      (* F9 - A FATURAR *)
      120:
        if ActAFaturar.Visible then
          ActAFaturar.Execute;

      (* NENHUMA DAS OPÇÕES DEVOLVE VALOR DAS TECLAS *)
    Else
      begin
        (FindComponent('Cdbarra') as TEdit).Text := VCdBarra;
        (FindComponent('Cdbarra') as TEdit).SelStart := length((FindComponent('Cdbarra') as TEdit).Text);
        // DEVOLVE POSIÇÃO DO CURSOR PARA O FIM
        Key := Tecla;
      end;
    End;
  End;

end;

function TFprinciEnt.CarregaFrame(pacote: string; destino: TPanel; conexao: tuniconnection): thandle;
var
  exec: TMoniImp;
  frame: TFrame;
  pack: cardinal;
  retor: cardinal;
begin
  pack := LoadPackage('modulos\' + pacote + '.bpl');
  if pack <> 0 then
  begin
    @exec := GetProcAddress(pack, PChar('MoniImp'));
    if Assigned(exec) then
    begin
      destino.Visible := true;

      if exec(Application, destino, conexao, vpCznChave) <> nil then
      begin
        retor := pack;
      end
      else
      begin
        retor := 0;
      end;

    end;
  end;
  result := retor;
end;

procedure TFprinciEnt.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];
  AjustaConfigVeiculosEquipamentos;
  GBSalvar.Visible := true;
  IDAV.Visible := true;
  Infce.Visible := true;
  Infe.Visible := true;
  vpItoUnidades := 0;
  AtualizaListasdePedidos;
  label1.caption:= GetAppVersionStr(Application.ExeName);

end;

procedure TFprinciEnt.AjustaConfigVeiculosEquipamentos;
begin
end;

procedure TFprinciEnt.ActAbreVendaExecute(Sender: TObject);
begin
  inherited;
  vpOrcChaveReimprime := '';

  AtualizaListasdePedidos;

  Infce.Tag := 1;
  Infe.Tag := 1;
  IDAV.Tag := 1;

  VpEtdCodigo := '0';
  vpEdrCodigo := '0';

  plMensagemPrincipal.Visible := false;

  vpTipoPreco := puoAVista;
  Novoorcamento;
  MontaBotoesGrupos;

  Ajustabotoes(true);

  cdbarra.Text := '';
  cdbarra.SetFocus;

  AdjustColumnWidths(lista);

  if orc.State = dsbrowse then
    orc.Edit;

  Etd.Close;
  Etd.Params[0].AsString := VpEtdCodigo;
  Etd.Params[1].AsString := vpEdrCodigo;
  Etd.Open;

  Orcetdcodigo.AsString := VpEtdCodigo;
  orcedrcodigo.AsString := vpEdrCodigo;
  orcedritem.AsInteger := etdedritem.AsInteger;

  PCpaginas.Visible := true;
  ActClientes.Enabled := true;
  Lidentificacao.Caption := AnsiUpperCase(etdetdidentificacao.AsString);

  MontaTextoPedido;

  // CriaPedidoGourmet;

  btVerPedido.Click;

  edBuscaCardapio.SetFocus;

end;

procedure TFprinciEnt.MontaBotoesProdutos(vGrpCodigo: Integer; vGrpIdentificacao: string);
var
  i, v, u: Integer;
  plProduto: TPanel;
  plTitProduto: TPanel;
  plTexto: TLabel;

  mmIngre: TMemo;

  plValor: TPanel;
  plQtdPre: TPanel;

  vlUnicodigo: string;
  vlSabores: String;

  qIsa: TUniQuery;
  qPun: TUniQuery;
  qSfn: TUniQuery;

  vlLinha: string;
  vlTipo: string;
  vlPunCodigo: string;

begin

  try
    sbListaProdutos.Width := 620;
    sbListaProdutos.Visible := true;
    plRodapeLista.Width := 620;

    for i := 0 to sbListaProdutos.ComponentCount - 1 do
    begin
      sbListaProdutos.Components[0].Destroy;
      if sbListaProdutos.ComponentCount = 0 then
        break;
    end;

    pro.Close;
    consulta.Close;
    consulta.SQL.Text := 'SELECT grp.grpcodigo, sfn.sfnquantidade, pro.procodigo ';
    consulta.SQL.Add('FROM pro INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo ');
    consulta.SQL.Add('INNER JOIN sfn ON sfn.procodigo = pro.procodigo ');
    consulta.SQL.Add('where grp.grpcodigo=' + inttostr(vGrpCodigo));
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlTipo := 'Sabores';

      pro.SQL.Text := 'SELECT pro.procodigo, pronome ';
      pro.SQL.Add('FROM pro ');
      pro.SQL.Add('WHERE pro.tpocodigo = 0 ');
      pro.SQL.Add('and pro.grpcodigo=:grpcodigo ');
      pro.SQL.Add('order by pro.pronome ');

    end
    else
    begin
      vlTipo := 'Tamanhos';

      pro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo, ';
      pro.SQL.Add('concat(pro.pronome,' + chr(39) + ' ' + chr(39) + ',if(upper(uni.uninome)=' + chr(39) + 'UNIDADE' + chr(39) + ',' + chr(39) + chr(39) +
        ',uni.uninome)) as pronome, ');
      pro.SQL.Add('pun.punprecoav, pro.unicodigo as unipro, pun.unicodigo as unipun ');
      pro.SQL.Add('FROM pun ');
      pro.SQL.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo ');
      pro.SQL.Add('INNER JOIN uni ON pun.unicodigo = uni.unicodigo ');
      pro.SQL.Add('WHERE pro.tpocodigo = 0 ');
      pro.SQL.Add('and pro.grpcodigo=:grpcodigo ');
      pro.SQL.Add('order by pro.pronome, uni.uninome ');

    end;

    pro.Params[0].AsInteger := vGrpCodigo;
    pro.Open;

    if not pro.IsEmpty then
    begin

      sbListaProdutos.Visible := true;
      pro.First;

      while not pro.Eof do
      begin
        if vlTipo = 'Tamanhos' then
        begin
          vlPunCodigo := '_' + pro.FieldByName('puncodigo').AsString;
        end
        else
        begin
          vlPunCodigo := '';
        end;

        plProduto := TPanel.Create(sbListaProdutos);
        plProduto.Parent := sbListaProdutos;
        plProduto.Height := 45;
        plProduto.Name := 'plProduto' + pro.FieldByName('procodigo').AsString + ifthen(vlTipo = 'Tamanhos', vlPunCodigo, '');
        plProduto.Align := alBottom;
        plProduto.ParentBackground := false;
        plProduto.ParentFont := false;
        plProduto.Font.Size := 12;
        plProduto.Font.Style := [fsBold];
        plProduto.Font.Name := 'Tahoma';

        plProduto.BorderWidth := 4;
        plProduto.Alignment := taLeftJustify;
        plProduto.Tag := pro.FieldByName('procodigo').AsInteger;
        plProduto.Align := alTop;
        plProduto.Color := clwhite;
        plProduto.Caption := '';
        plProduto.BevelOuter := bvRaised;

        plTitProduto := TPanel.Create(sbListaProdutos);
        plTitProduto.Parent := plProduto;
        plTitProduto.Align := alTop;
        plTitProduto.Name := 'tiProduto' + pro.FieldByName('procodigo').AsString + ifthen(vlTipo = 'Tamanhos', vlPunCodigo, '');
        plTitProduto.Caption := '';
        plTitProduto.Tag := pro.FieldByName('procodigo').AsInteger;
        plTitProduto.Height := 30;
        plTitProduto.BevelOuter := bvNone;
        // plTitProduto.OnClick := btSelecionaProdutoClick;

        plTexto := TLabel.Create(sbListaProdutos);
        plTexto.Caption := buscatroca(Copy(UpperNome(pro.FieldByName('pronome').AsString), 1, 50) + #13 + #10 + Copy(UpperNome(pro.FieldByName('pronome').AsString), 51, 100),
          'Unidade', '');
        plTexto.Parent := plTitProduto;
        plTexto.ParentFont := false;
        plTexto.Name := 'btProduto' + pro.FieldByName('procodigo').AsString + ifthen(vlTipo = 'Tamanhos', vlPunCodigo, '');
        plTexto.Font.Size := 13;
        plTexto.Font.Style := [fsBold];
        plTexto.Font.Name := 'Tahoma';
        plTexto.Align := alclient;
        plTexto.Font.Color := $00C08000;
        // plTexto.OnClick := btSelecionaProdutoClick;

        qPun := TUniQuery.Create(plProduto);
        qPun.Name := 'qPun' + plProduto.Name;
        qPun.Connection := conexao;
        qPun.SQL.Text := 'SELECT  puncodigo, procodigo, punprecoav ';
        qPun.SQL.Add('FROM pun WHERE pun.tuncodigo<>0 and procodigo=' + pro.FieldByName('procodigo').AsString);
        qPun.SQL.Add('and procodigo NOT IN (SELECT  procodigo FROM sfn) ');
        qPun.Open;

        if not qPun.IsEmpty then // preço para produtos com Tamanhos
        begin

          qPun.First;
          while not qPun.Eof do
          begin
            plQtdPre := TPanel.Create(plProduto);
            plQtdPre.Parent := plTitProduto;
            plQtdPre.Tag := pro.FieldByName('procodigo').AsInteger;
            plQtdPre.OnClick := btSelecionaProdutoClick;
            plQtdPre.BevelOuter := bvRaised;
            plQtdPre.Width := 115;
            plQtdPre.Name := 'plQtdPre' + pro.FieldByName('procodigo').AsString + '_' + qPun.FieldByName('puncodigo').AsString;
            plQtdPre.Caption := vlSabores + Format('%10s', [formatfloat('##,##0.00', qPun.FieldByName('punprecoav').AsFloat)]);
            plQtdPre.BorderStyle := bsNone;
            plQtdPre.Alignment := taRightJustify;
            plQtdPre.Align := alRight;
            plQtdPre.BorderWidth := 3;
            plQtdPre.Font.Name := 'Tahoma';
            plQtdPre.Color := $00C08000;
            plQtdPre.ParentBackground := false;
            plQtdPre.ParentFont := false;
            plQtdPre.Font.Color := clwhite;

            plQtdPre.Font.Size := 14;

            qPun.Next;
          end;
        end
        else // preço para produtos com sabores
        begin

          plQtdPre := TPanel.Create(plProduto);
          plQtdPre.Parent := plTitProduto;
          plQtdPre.Tag := pro.FieldByName('procodigo').AsInteger;
          plQtdPre.OnClick := btSelecionaProdutoClick;
          plQtdPre.BevelOuter := bvRaised;
          plQtdPre.BorderWidth := 3;

          plQtdPre.Width := 145;
          vlSabores := '';
          consulta.Close;
          consulta.SQL.Text := 'select unicodigo from pun where puncodigo=' + pro.FieldByName('puncodigo').AsString;
          consulta.Open;

          if not consulta.IsEmpty then
          begin
            vlUnicodigo := '';
            vlUnicodigo := consulta.Fields[0].AsString;

            if vlUnicodigo <> '' then
            begin
              consulta.Close;
              consulta.SQL.Text := 'SELECT sfn.sfnquantidade FROM sfn  WHERE sfn.procodigo =' + pro.FieldByName('procodigo').AsString + ' and ';
              consulta.SQL.Add(' sfn.unicodigo =' + vlUnicodigo);
              consulta.Open;

              if not consulta.IsEmpty then
              begin
                if consulta.Fields[0].AsInteger > 0 then
                  vlSabores := 'Sb: ' + consulta.Fields[0].AsString;

              end;

            end;

          end;

          plQtdPre.Name := 'plQtdPre' + pro.FieldByName('procodigo').AsString + vlPunCodigo;
          plQtdPre.Caption := vlSabores + Format('%10s', [formatfloat('##,##0.00', pro.FieldByName('punprecoav').AsFloat)]);
          plQtdPre.BorderStyle := bsNone;
          plQtdPre.Alignment := taRightJustify;
          plQtdPre.Align := alRight;
          plQtdPre.Font.Name := 'Tahoma';
          plQtdPre.Font.Size := 14;
          plQtdPre.Color := $00C08000;
          plQtdPre.ParentBackground := false;
          plQtdPre.ParentFont := false;
          plQtdPre.Font.Color := clwhite;

          // preço para produtos com sabores

        end;

        qIsa := TUniQuery.Create(plProduto);
        qIsa.Name := 'qIsa' + plProduto.Name;
        qIsa.Connection := conexao;
        qIsa.SQL.Text := 'SELECT   sbrcodigo,  isa.procodigo,  pronome ';
        qIsa.SQL.Add('FROM isa, pro WHERE pro.procodigo = isa.procodigo ');
        qIsa.SQL.Add('AND isa.sbrcodigo = (SELECT sbrcodigo FROM sbr ');
        qIsa.SQL.Add('WHERE procodigo =' + pro.FieldByName('procodigo').AsString + ')');
        qIsa.Open;
        if not qIsa.IsEmpty then
        begin
          mmIngre := TMemo.Create(plProduto);
          mmIngre.Parent := plProduto;
          mmIngre.Name := 'mmProduto' + pro.FieldByName('procodigo').AsString + ifthen(vlTipo = 'Tamanhos', vlPunCodigo, '');
          mmIngre.ReadOnly := true;

          qIsa.First;
          while not qIsa.Eof do
          begin
            vlLinha := vlLinha + UpperNome(qIsa.FieldByName('pronome').AsString) + ', ';
            qIsa.Next;
          end;
          vlLinha := Copy(vlLinha, 1, length(vlLinha) - 2);

          mmIngre.Lines.Text := vlLinha;

          v := length(trim(vlLinha));

          if v <= 60 then
          begin
            v := 1;
          end
          else if (v >= 61) and (v < 120) then
          begin
            v := 2;
          end
          else if (v >= 121) and (v < 180) then
          begin
            v := 3;
          end
          else if (v >= 181) and (v < 240) then
          begin
            v := 4;
          end
          else
            v := 5;

          mmIngre.Height := v * 25;
          mmIngre.Font.Name := 'Tahoma';
          mmIngre.ParentFont := false;
          mmIngre.Font.Size := 12;
          mmIngre.Font.Style := [];
          mmIngre.Align := alBottom;
          mmIngre.Hint := UpperNome(pro.FieldByName('pronome').AsString);
          mmIngre.Font.Color := clNavy;
          mmIngre.BorderStyle := bsNone;
          mmIngre.BevelInner := bvNone;
          mmIngre.BevelOuter := bvNone;
          mmIngre.WordWrap := true;

          u := 0;
          for i := 0 to plProduto.ComponentCount - 1 do
          begin
            if plProduto.Components[i] is TPanel then
              u := u + (plProduto.Components[i] as TPanel).Height;

            if plProduto.Components[i] is TLabel then
              u := u + (plProduto.Components[i] as TLabel).Height;

            if plProduto.Components[i] is TMemo then
              u := u + (plProduto.Components[i] as TMemo).Height;

          end;
          plProduto.Height := u + 5;
          vlLinha := '';
          plProduto.Align := alBottom;
          plProduto.Align := alTop;

        end;
        pro.Next;

      end;

    end;

  finally
  end;
end;

procedure TFprinciEnt.MontaBotoesProdutosNova(vGrpCodigo: Integer; vGrpIdentificacao: string);
var
  i, v, u: Integer;
  plProduto: TPanel;
  plTitProduto: TPanel;
  plTexto: TLabel;

  mmIngre: TMemo;

  plValor: TPanel;
  plQtdPre: TPanel;

  vlUnicodigo: string;
  vlSabores: String;

  qIsa: TUniQuery;
  qPun: TUniQuery;
  qSfn: TUniQuery;

  vlLinha: string;
  vlTipo: string;
  vlPunCodigo: string;

begin

  try
    sbListaProdutos.Width := 620;
    sbListaProdutos.Visible := true;
    plRodapeLista.Width := 620;

    for i := 0 to sbListaProdutos.ComponentCount - 1 do
    begin
      sbListaProdutos.Components[0].Destroy;
      if sbListaProdutos.ComponentCount = 0 then
        break;
    end;

    pro.Close;
    consulta.Close;
    consulta.SQL.Text := 'SELECT grp.grpcodigo, sfn.sfnquantidade, pro.procodigo ';
    consulta.SQL.Add('FROM pro INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo ');
    consulta.SQL.Add('INNER JOIN sfn ON sfn.procodigo = pro.procodigo ');
    consulta.SQL.Add('where pro.sipcodigo=1 and grp.grpcodigo=' + inttostr(vGrpCodigo));
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlTipo := 'Sabores';

      { pro.SQL.Text := 'SELECT pro.procodigo, pronome, ';
        pro.SQL.Add('(SELECT sbr.sbrordem from sbr WHERE sbr.procodigo=pro.procodigo) as ordem ');
        pro.SQL.Add('FROM pro ');
        pro.SQL.Add('WHERE pro.tpocodigo = 0 ');
        pro.SQL.Add('and pro.grpcodigo=:grpcodigo ');
        pro.SQL.Add('order by ordem '); }

      pro.SQL.Text := ' SELECT pro.procodigo, pronome, ';
      pro.SQL.Add
        (' IF((SELECT sbr.sbrordem FROM sbr WHERE sbr.procodigo = pro.procodigo limit 1) IS NULL, (SELECT gop.gopordem FROM gop  WHERE gop.procodigo = pro.procodigo limit 1), (SELECT sbr.sbrordem FROM sbr WHERE sbr.procodigo = pro.procodigo limit 1)  ) AS ordem ');
      pro.SQL.Add('FROM pro WHERE pro.sipcodigo=1 and pro.tpocodigo = 0 AND pro.grpcodigo=:grpcodigo ORDER BY ordem ');

    end
    else
    begin
      vlTipo := 'Tamanhos';

      pro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo, ';
      pro.SQL.Add('concat(pro.pronome,' + chr(39) + ' ' + chr(39) + ',if(upper(uni.uninome)=' + chr(39) + 'UNIDADE' + chr(39) + ',' + chr(39) + chr(39) +
        ',uni.uninome)) as pronome, ');
      pro.SQL.Add('pun.punprecoav, pro.unicodigo as unipro, pun.unicodigo as unipun, ');
      pro.SQL.Add('(SELECT sfn.sfnordem FROM sfn WHERE sfn.unicodigo=pun.unicodigo limit 1) as ordem ');
      pro.SQL.Add('FROM pun ');
      pro.SQL.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo and pro.sipcodigo=1 ');
      pro.SQL.Add('INNER JOIN uni ON pun.unicodigo = uni.unicodigo ');
      pro.SQL.Add('WHERE pro.tpocodigo = 0 ');
      pro.SQL.Add('and pro.grpcodigo=:grpcodigo ');
      pro.SQL.Add('order by ordem ');

    end;

    pro.Params[0].AsInteger := vGrpCodigo;
    pro.Open;
    DataSource1.DataSet := pro;
    DBGridPro.Columns[0].Width := 450;
    DBGridPro.Columns[0].FieldName := 'pronome';
    DBGridPro.Columns[0].Title.Caption := 'Identificação';

    if not pro.IsEmpty then
    begin

      sbListaProdutos.Visible := true;
      pro.First;

    end;

  finally

  end;
end;

procedure TFprinciEnt.btVoltaParaGruposClick(Sender: TObject);
begin
  // sbGrupos.Visible := true;
  // MontaBotoesGrupos;
end;

procedure TFprinciEnt.btSelecionaProdutoClick(Sender: TObject);
var
  VProCodigo: Integer;

  vEmbalagem: Integer;
  vVariacao: Integer;
  VCBarra: string;
  vlPunCodigo: string;
begin
  if (Sender is TLabel) then
  begin
    VCBarra := inttostr((Sender as TLabel).Tag);
    vlPunCodigo := (Sender as TLabel).Name;
  end
  else if (Sender is TPanel) then
  begin
    VCBarra := inttostr((Sender as TPanel).Tag);
    vlPunCodigo := (Sender as TPanel).Name;
  end
  else if (Sender is TMemo) then
  begin
    VCBarra := inttostr((Sender as TMemo).Tag);
    vlPunCodigo := (Sender as TMemo).Name;
  end;

  vlPunCodigo := Copy(vlPunCodigo, pos('_', vlPunCodigo) + 1, 10);

  consulta.Close;
  consulta.SQL.Text := 'select punbarra from pun where puncodigo=' + vlPunCodigo;
  consulta.Open;

  VCBarra := consulta.Fields[0].AsString;

  VProCodigo := BuscaProdutoBarra(Application, conexao, VCBarra, vEmbalagem, vVariacao);

  If VProCodigo > -1 Then
    IncluirNovoItem(VProCodigo, vEmbalagem, vVariacao);

  VoltaCardapio;

end;

procedure TFprinciEnt.btSelecionarClick(Sender: TObject);
var
  vlPunCodigo: string;
  VCBarra: string;
  VProCodigo: Integer;
  vEmbalagem: Integer;
  vVariacao: Integer;
  VQuantidade: Double;
begin

  vlPunCodigo := punpuncodigo.AsString;
  VProCodigo := pro.FieldByName('procodigo').AsInteger;

  if vlPunCodigo <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select punbarra from pun where puncodigo=' + vlPunCodigo;
    consulta.Open;

    VCBarra := consulta.Fields[0].AsString;

    VProCodigo := BuscaProdutoBarra(Application, conexao, VCBarra, vEmbalagem, vVariacao);

    if plUnidades.Visible then
    begin

      if edQtdaUni.Text = '' then
        edQtdaUni.Text := '0';

      vpItoUnidades := StrToInt(edQtdaUni.Text);
    end
    else
    begin
      if plQuantidadePro.Visible then
        vpItoUnidades := StrToInt(edQtdaPro.Text);
    end;

    if plQuantidadePro.Visible then
      VQuantidade := StrToFloat(edQtdaPro.Text)
    else
      VQuantidade := 0;

    If VProCodigo > -1 Then
      IncluirNovoItem(VProCodigo, vEmbalagem, vVariacao, VQuantidade);

    VoltaCardapio;

  end;
end;

procedure TFprinciEnt.btMaisClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    i := StrToInt(edQtdaPro.Text) + 1;

    if i > 99 then
      i := 99;
  except
    i := 1;
  end;
  edQtdaPro.Text := inttostr(i);

end;

procedure TFprinciEnt.btMaisUniClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    i := StrToInt(edQtdaUni.Text) + 1;

    if i > 99 then
      i := 99;
  except
    i := 1;
  end;
  edQtdaUni.Text := inttostr(i);

end;

procedure TFprinciEnt.btMenosClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    i := StrToInt(edQtdaPro.Text) - 1;

    if i <= 0 then
      i := 1;
  except
    i := 1;
  end;
  edQtdaPro.Text := inttostr(i);

end;

procedure TFprinciEnt.btMenosUniClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    i := StrToInt(edQtdaUni.Text) - 1;

    if i <= 0 then
      i := 1;
  except
    i := 1;
  end;
  edQtdaUni.Text := inttostr(i);

end;

procedure TFprinciEnt.btMostraProdutosGrupoclick(Sender: TObject);
var
  vGrpCodigo: Integer;
begin
  pro.FilterSQL := '';
  edBuscaCardapio.Text := '';

  vGrpCodigo := grpgrpcodigo.AsInteger;
  plTituloCardapio.Caption := inttostr(grp.RecordCount) + ' ' + grpgrpidentificacao.AsString;
  sbGrupos.Visible := false;
  plBotaoVoltarCardapio.Visible := true;
  MontaBotoesProdutosNova(vGrpCodigo, grpgrpidentificacao.AsString);
end;

procedure TFprinciEnt.MontaBotoesGrupos;
begin

  sbListaProdutos.Width := 0;
  sbListaProdutos.Visible := false;
  plRodapeLista.Width := 300;

  grp.Close;
  grp.Open;

  grp.First;
end;

procedure TFprinciEnt.ActCancelaItemExecute(Sender: TObject);
begin
  if not Self.lito.IsEmpty then
  begin
    Application.CreateForm(TfListaItens, fListaItens);
    fListaItens.Dlito.DataSet := Self.lito;

    if fListaItens.ShowModal = mrok then
    begin
      inherited;
    end;

    btVerPedido.Click;
    recalculaTotal;
  end;
end;

procedure TFprinciEnt.ActCarregaPedidoExecute(Sender: TObject);
var
  vlOrcchave: string;
begin
  inherited;
  vpOrcChave := '';

  vpOrcChave := BuscaAtendimentos(mocDelivery);

  if vpOrcChave <> '' then
  begin
    vlOrcchave := vpOrcChave;
    ActAbreVenda.Execute;
    vpOrcChave := vlOrcchave;

    CarregaAtendimentos;

    Mostraclienteselecionado;
    plPedido.Visible := true;
    lista.Visible := false;
    btVerPedido.Visible := false;
    btAlteraPedido.Visible := true;
    MontaTextoPedido;

    cdbarra.SetFocus;
  end
  else if orc.Active then
    vpOrcChave := orcorcchave.AsString;

  recalculaTotal;
end;

procedure TFprinciEnt.ActClientesExecute(Sender: TObject);
begin
  inherited;
  Mostraclienteselecionado;
end;

procedure TFprinciEnt.ActClientesSimplificadoExecute(Sender: TObject);
begin
  inherited;
  VpEtdCodigo := MostraLista('mcle', 'formu', '');

  if (lito.RecordCount > 0) and (VpEtdCodigo <> '') then
  begin
    if orc.State <> dsEdit then
      orc.Edit;

    if pos('#', VpEtdCodigo) > 0 then
    begin
      vpEdrCodigo := Copy(VpEtdCodigo, pos('#', VpEtdCodigo) + 1, 10);
      VpEtdCodigo := Copy(VpEtdCodigo, 1, pos('#', VpEtdCodigo) - 1);

      if pos('$', vpEdrCodigo) > 0 then
      begin
        vpTelCodigo := Copy(vpEdrCodigo, pos('$', vpEdrCodigo) + 1, 200);
        vpEdrCodigo := Copy(vpEdrCodigo, 1, pos('$', vpEdrCodigo) - 1);

      end;

      Etd.Close;
      Etd.Params[0].AsString := VpEtdCodigo;
      Etd.Params[1].AsString := vpEdrCodigo;
      Etd.Open;

      if orc.State = dsbrowse then
        orc.Edit;

      Orcetdcodigo.AsString := VpEtdCodigo;
      orcedrcodigo.AsString := vpEdrCodigo;
      orcedritem.AsInteger := etdedritem.AsInteger;

      btVerPedido.Click;
    end;

  end;
end;

procedure TFprinciEnt.ActDescontoGeralExecute(Sender: TObject);
begin
  inherited;

  btVerPedido.Click;
  recalculaTotal;
end;

procedure TFprinciEnt.ActDescontoItemExecute(Sender: TObject);
var
  vlItoRecno: Integer;
  vlItoAcrescimoav: Double;

begin

  if not Self.lito.IsEmpty then
  begin
    vlItoRecno := lito.RecNo;
    lito.Close;
    lito.ParamByName('orcchave').AsString := vpOrcChave;
    lito.ParamByName('flacodigo').AsInteger := ACESSO.Filial;

    lito.Open;
    lito.RecNo := vlItoRecno;

    vlItoAcrescimoav := litoitosaldo.AsCurrency;
    Application.CreateForm(TfListaItens, fListaItens);
    fListaItens.Dlito.DataSet := Self.lito;

    if fListaItens.ShowModal = mrok then
    begin
      inherited;
    end;

    btVerPedido.Click;
    recalculaTotal;
  end;

end;

procedure TFprinciEnt.ActFinalizaVendaExecute(Sender: TObject);
begin
  inherited;
  if orc.Active then
  begin

    if orc.State <> dsEdit then
      orc.Edit;

    if cfgcfgusasrv.AsInteger = 1 then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT ito.procodigo FROM ito, pro ';
      consulta.SQL.Add('WHERE ito.procodigo = pro.procodigo ');
      consulta.SQL.Add('AND ito.stocodigo IN (1, 2, 3) ');
      consulta.SQL.Add('AND pro.tpocodigo = 9');
      consulta.SQL.Add('AND ito.orcchave = ' + vpOrcChave);
      consulta.Open;

      if not consulta.IsEmpty then
      begin

        Orcmoccodigo.AsInteger := mocDelivery;
      end;
    end;

  end;

  if cfgcfgusacaixaprevenda.AsInteger = 1 then
  begin
    FinalizaPreVenda;
    Exit;
  end;

  inherited;
end;

procedure TFprinciEnt.ActImprimeExecute(Sender: TObject);
var
  vDirRelat: String;
  i: Integer;
  vlOrcVias: Integer;
begin
  consulta.Close;
  consulta.SQL.Text := 'select orcvias from orc where orcchave=' + vpOrcChave;
  consulta.Open;
  if consulta.FieldByName('orcvias').AsInteger > 0 then
    vlOrcVias := consulta.FieldByName('orcvias').AsInteger
  else
    vlOrcVias := 1;

  for i := 1 to vlOrcVias do
  begin
    vDirRelat := ExtractFilePath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3';

    ImprimirComprovantesOrc(Application, conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimir);
  end;
end;

procedure TFprinciEnt.ActLimpaAtendimentoExecute(Sender: TObject);
begin

  if lito.Active then
  begin
    if lito.RecordCount > 0 then
    begin
      inherited;
    end;
  end;

  if (lito.Active) and (lito.RecordCount > 0) then
    if (Orcmoccodigo.AsInteger <> mocNovoRegistro) then
      Application.MessageBox(PChar('Atendimento cancelado com sucesso!'), 'Informação', MB_OK + MB_ICONEXCLAMATION)
    else If (Application.MessageBox(PChar('Deseja cancelar o atendimento ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDNO) Then
      Exit;

  cdbarra.Text := '';
  plMensagemPrincipal.Visible := true;
  recalculaTotal;

  Ajustabotoes(false);
  plMensagemPrincipal.Visible := true;

  Try
    consulta.Close;
    consulta.SQL.Text := 'UPDATE orc SET stocodigo = 88 WHERE orcchave=' + vpOrcChave;
    consulta.ExecSQL;

    AtualizaSituacaoItens(vpOrcChave, stoCancelado, tdfMovimentoEmAndamento);

    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM uoc WHERE orcchave=' + vpOrcChave;
    consulta.ExecSQL;

    orc.Refresh;
    lito.Refresh;

  Except
  End;

  Crianovoorc;
end;

procedure TFprinciEnt.IncluiValorEntrega(vlEtdCodigo, vlEdrCodigo: string);
var
  qIto: TUniQuery;
  vlItoChave: Integer;
  qImm: TUniQuery;
  vlTcicodigo: String;

begin
  if (vlEdrCodigo <> '') and (vlEtdCodigo <> '') then
  begin

    consulta.Close;
    consulta.SQL.Text := 'delete from ito where procodigo in (select procodigo from bai) and orcchave=' + litoorcchave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'SELECT pun.punprecoav, bai.procodigo, bai.baiidentificacao, pun.puncodigo,pun.unicodigo, ';
    consulta.SQL.Add('edr.etdcodigo, edr.edritem FROM bai ');
    consulta.SQL.Add('INNER JOIN pro ON bai.procodigo = pro.procodigo ');
    consulta.SQL.Add('INNER JOIN pun ON pun.procodigo = pro.procodigo ');
    consulta.SQL.Add('RIGHT OUTER JOIN edr ON upper(edr.edrbairro) = upper(bai.baiidentificacao) ');
    consulta.SQL.Add('where edr.etdcodigo=' + vlEtdCodigo + ' and edr.edrcodigo=' + vlEdrCodigo);
    consulta.Open;

    if consulta.IsEmpty then
      Exit;

    if consulta.FieldByName('procodigo').AsString = '' then
      Exit;

    try
      qIto := TUniQuery.Create(Self);
      qIto.Name := 'qIto' + vlEtdCodigo;
      qIto.Connection := conexao;
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
        ',9,now(),' + vpCznChave + ',' + ACESSO.Usuario.ToString + ',' + vlTcicodigo + ',' + vpImmNumePedido + ')';
      consulta.ExecSQL;

      recalculaTotal;

    finally
      freeandnil(qIto);
    end;

  end
  else
  begin
    ActClientesSimplificado.Execute;

  end;
end;

procedure TFprinciEnt.ActPedidoExecute(Sender: TObject);
Var
  Nvp: Double;
  vlTotal: Double;

  vModalResult: Integer;
  Retorno: String;
  vDirRelat: String;
  vlClbCodigo: string;
  vlFormaPagto: string;
  vlTrocoPara: string;
  vlEtdCodigo: string;
  vlEdrCodigo: string;
  vlTelCodigo: string;

  vlhora: string;
  vlMeschave: string;

begin
  if Orcetdcodigo.AsInteger = 0 then
  begin
    CriaPedidoGourmet;

    vlEtdCodigo := MostraLista('mcle', 'formu', '');

    if (vlEtdCodigo = '') or (vlEtdCodigo = '#$') then
      Exit;

    if (lito.RecordCount > 0) and (vlEtdCodigo <> '') then
    begin
      if orc.State <> dsEdit then
        orc.Edit;

      if pos('#', vlEtdCodigo) > 0 then
      begin
        vlEdrCodigo := Copy(vlEtdCodigo, pos('#', vlEtdCodigo) + 1, 200);
        vlEtdCodigo := Copy(vlEtdCodigo, 1, pos('#', vlEtdCodigo) - 1);
        if pos('$', vlEdrCodigo) > 0 then
        begin
          vlTelCodigo := Copy(vlEdrCodigo, pos('$', vlEdrCodigo) + 1, 200);
          vlEdrCodigo := Copy(vlEdrCodigo, 1, pos('$', vlEdrCodigo) - 1);

        end;
        if vlEdrCodigo = '' then
          vlEdrCodigo := '0';

        Orcetdcodigo.AsString := vlEtdCodigo;
        orcedrcodigo.AsString := vlEdrCodigo;
        orcorctelefone.AsString := vlTelCodigo;
        consulta.Close;
        consulta.SQL.Text := 'select edrcodigo from edr where etdcodigo=' + vlEtdCodigo + ' and edrcodigo=' + vlEdrCodigo;
        consulta.Open;

        orcedrcodigo.AsString := consulta.Fields[0].AsString;

        Etd.Close;
        Etd.Params[0].AsString := vlEtdCodigo;
        Etd.Params[1].AsString := vlEdrCodigo;
        Etd.Open;

        VpEtdCodigo := vlEtdCodigo;

      end;

    end;

  end
  else
  begin
    vlEtdCodigo := Orcetdcodigo.AsString;
    vlEdrCodigo := orcedrcodigo.AsString;

    Etd.Close;
    Etd.Params[0].AsString := vlEtdCodigo;
    Etd.Params[1].AsString := vlEdrCodigo;
    Etd.Open;
  end;

  try
    { * DANIEL
      12/09/2014 ajustado a variavel que recebe o código da entidade selecionada
      pois estava ficando zero mesmo para com um cliente pré selecionado * }
    VpEtdCodigo := Self.etdetdcodigo.AsString;
    { * * }
    if lito.IsEmpty then
      Exit;

    If (orc.State = dsbrowse) Then
      orc.Edit;

    If VpEtdCodigo = '0' Then
      Self.ActClientes.Execute;

    (* VpEtdCancelado - Identifica se usuário Canecelou lista de clientes *)
    if VpEtdCancelado then
    begin
      VpEtdCancelado := false;
      Exit;
    end;

    if cfgcfgmgoucobraentrega.AsInteger = 1 then
      IncluiValorEntrega(vlEtdCodigo, vlEdrCodigo);

    btVerPedido.Click;

    Application.CreateForm(Tforcfpagtoent, Forcfpagtoent);
    Forcfpagtoent.Dregistro.DataSet := Self.orc;
    Forcfpagtoent.dtorcdataentrega.DateTime := strtodatetime(agora(Application, conexao));
    Forcfpagtoent.hrorchoraentrega.DateTime := strtodatetime(agora(Application, conexao));

    Forcfpagtoent.pltotal.Caption := 'Total do Pedido R$ ' + formatfloat('##,##0.00', vplValorLiquidoOp);
    Forcfpagtoent.plTotalLiquido.Caption := 'Liquido R$ ' + formatfloat('##,##0.00', vplValorLiquidoOp);

    Forcfpagtoent.vpTotalBruto := vplValorLiquidoOp;

    if cfgcfggouentregafutura.AsInteger = 1 then
      Forcfpagtoent.plProgramacaoEntrega.Visible := true
    else
      Forcfpagtoent.plProgramacaoEntrega.Visible := false;

    vModalResult := Forcfpagtoent.ShowModal;

    If not(vModalResult = mrok) Then
      Exit;

    vlFormaPagto := Forcfpagtoent.vpFormaPagto;
    vlTrocoPara := Forcfpagtoent.vpValorTroco;
    vpFinalizar := Forcfpagtoent.vpFinalizar;
    vpRetiraBalcao := Forcfpagtoent.vpRetiraBalcao;

    If (orc.State = dsbrowse) Then
      orc.Edit;

    orcmdacodigo.AsString := vlFormaPagto;
    orcorcdataentrega.AsDateTime := Forcfpagtoent.dtorcdataentrega.DateTime;
    orcorchoraentrega.AsDateTime := Forcfpagtoent.hrorchoraentrega.DateTime;

    case StrToInt(vlFormaPagto) of
      mdaDinheiro:
        begin
          if vlTrocoPara <> '0,00' then
          begin
            orcorcobs.AsString := orcorcobs.AsString + #13 + 'Em Dinheiro - Levar troco para:  ' + vlTrocoPara;
          end
          else
          begin
            orcorcobs.AsString := orcorcobs.AsString + #13 + 'Em Dinheiro';
          end;
          vpValorFinalizador := vplValorLiquidoOp;
          vpTeclaFinalizador := 117; // F6
        end;
      mdaCartaoDebito:
        begin
          orcorcobs.AsString := orcorcobs.AsString + #13 + 'Levar máquina de Cartão - DÉBITO';
          vpValorFinalizador := vplValorLiquidoOp;
          vpTeclaFinalizador := 115; // F4

        end;

      mdaCartaoCredito:
        begin
          orcorcobs.AsString := orcorcobs.AsString + #13 + 'Levar máquina de Cartão - CRÉDITO';
          vpValorFinalizador := vplValorLiquidoOp;
          vpTeclaFinalizador := 114; // F3

        end;
      mdaConvenio:
        begin
          orcorcobs.AsString := orcorcobs.AsString + #13 + 'Vai Assinar';
          vpValorFinalizador := vplValorLiquidoOp;
          vpTeclaFinalizador := 120; // F9
        end;
      mdaAFaturar:
        begin
          orcorcobs.AsString := orcorcobs.AsString + #13 + 'A Faturar';
          vpValorFinalizador := vplValorLiquidoOp;
          vpTeclaFinalizador := 121; // F10

        end;
    end;

    Self.Orcstocodigo.AsInteger := stoEmAberto;

    if vpRetiraBalcao = '1' then
      Self.Orcmoccodigo.AsInteger := mocRetiraBalcao
    else
      Self.Orcmoccodigo.AsInteger := mocDelivery;

    AjustaHoraImprimir(vpOrcChave);

    AtualizaSituacaoItens(vpOrcChave, stoEmFechamento, tdfMovimentoEmAndamento);
    SalvaColabItens(ACESSO.Usuario.ToString);
    Orcetdcodigo.AsString := VpEtdCodigo;
    Orcstocodigo.AsInteger := stoEmFechamento;
    vlhora := agora(Application, conexao);
    orcorchoraabert.AsFloat := strtodatetime(vlhora);
    orcpdscodigo.AsInteger := 2;
    orcoricodigo.AsInteger := OriDelivery;
    orc.Post;

    {
      if FileExists(Extractfilepath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3') then
      begin
      deletefile(Extractfilepath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3');
      end;

      relgri.close;
      relgri.Open;

      relgrirelarquivo.SaveToFile( Extractfilepath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3');

    }

    if FileExists(ExtractFilePath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3') then
      Self.ActImprime.Execute;

    vpImprimiuDAV := true;
    vpImprimiuECF := true;
    vpImprimiuNFCe := true;
    vpImprimiuNFE := true;

    vpFinalizar := '0';

    if vpFinalizar = '1' then
    begin

      // ActFinalizaVenda.Execute;

      consulta.Close;
      consulta.SQL.Text := 'update orc set stocodigo=' + inttostr(stoVendido) + ' where orcchave=' + vpOrcChave;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update ito set stocodigo=' + inttostr(stoVendido) + ' where orcchave=' + vpOrcChave + ' and stocodigo<>88';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'update imm set cznchave=' + vpCznChave + ' where itochave in (select itochave from ito where stocodigo=' + inttostr(stoVendido) + ' and orcchave=' +
        vpOrcChave + ' and stocodigo<>88)';
      consulta.ExecSQL;

      if vpTeclaFinalizador = 121 then
        vlMeschave := ProcessaVendas(vpOrcChave, true)
      else
        vlMeschave := ProcessaVendas(vpOrcChave, false);

      orc.Edit;
      Orcstocodigo.AsInteger := stoVendido;
      orcpdscodigo.AsInteger := 2;
      orcoricodigo.AsInteger := OriDelivery;
      orc.Post;

      AtualizaSituacaoItens(vpOrcChave, stoVendido, tdfMovimentoEmAndamento);

      Finaliza(vlMeschave);
    end;

    Crianovoorc;
    AtualizaListasdePedidos;
  finally
    freeandnil(Forcfpagtoent);
  end;
end;

Function TFprinciEnt.Finaliza(Vchave: String): String;
Var
  vlRegistra: Tregistralote;

  Vpri: String;
  Vjur: String;
  vMulta: String;
  Vdes: String;
  vPodeConvenio: Boolean;

  vConfiguracoesTEF: TConfiguracoesTEF;

  vlPacklte: cardinal;
  vlTotalBruto: Double;

Begin

  If not orc.Active Then
    Exit;

  if lito.IsEmpty then
    Exit;



  // VpEtdCancelado - Identifica se usuário Cancelou lista de clientes

  vConfiguracoesTEF := CarregaConfiguracoesTEF(vConfiguracoesTEF);

  if vConfiguracoesTEF.NumeroTerminalTEF <> '' then
  begin
    vlPacklte := LoadPackage('modulos\mlteTEF.bpl');
  end
  else
  begin
    vlPacklte := LoadPackage('modulos\mlte.bpl');
  end;

  If vlPacklte <> 0 Then
    Try
      @vlRegistra := GetProcAddress(vlPacklte, PChar('registralote'));
      If Assigned(vlRegistra) Then
      Begin
        vlTotalBruto := Self.orcorcgeralav.AsCurrency + vpTotalAcrescimoav;
        Vpri := buscatroca(Floattostr(vlTotalBruto), ',', '.');
        Vdes := buscatroca(Self.orcorcdescontoav.AsString, ',', '.');
        Vjur := '0';
        vMulta := '0';

        if VpEtdCodigo = '0' then
          vPodeConvenio := false
        else
          vPodeConvenio := true;

        vpCtaCodigo := cfgcfgmgouctadelivery.AsString;

        result := vlRegistra(Application, conexao, Vchave, ACESSO.Terminal.ToString, Vpri, vMulta, Vjur, Vdes, ACESSO, inttostr(tfdVenda), vPodeConvenio, vpTeclaFinalizador,
          vpValorFinalizador, true, StrToInt(vpCtaCodigo));
      End;
    Finally
      DoUnLoadPackage(Application, vlPacklte);
    End;

End;

function TFprinciEnt.ProcessaVendas(vOrcchave: string; vAFaturar: Boolean = false): string;
var
  Processa: TProcessaOrc;
  vlPackopm: cardinal;
  vmeschave: String;
  vlOrcchave: string;
begin

  vmeschave := '';
  vlOrcchave := vOrcchave;

  vlPackopm := LoadPackage('modulos\mopm.bpl');
  If vlPackopm <> 0 Then
    Try
      @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

      If Assigned(Processa) Then
      Begin
        vmeschave := '0';
        vmeschave := Processa(Application, conexao, vlOrcchave, ACESSO, vAFaturar);
      End;
    Finally
      // DoUnLoadPackage(Pack);
    End;

  If (vmeschave <> '0') and (vmeschave <> '') Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update orc set stocodigo=' + inttostr(stoVendido) + ' where orcchave=' + vlOrcchave;
    consulta.ExecSQL;

    AtualizaSituacaoItens(vlOrcchave, stoVendido, tdfMovimentoEmAndamento);

  End;

  result := vmeschave;

end;

procedure TFprinciEnt.AjustaHoraImprimir(vOrcchave: string);
var
  vlItoChave: string;
  vlAgoraServer: string;
  vlProCodigo: string;
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
    vlProCodigo := consulta.Fields[0].AsString;

    immimp.Edit;

    consulta.Close;
    consulta.SQL.Text := 'SELECT gri.tcicodigo, gri.griminuretardo FROM gri ';
    consulta.SQL.Add('INNER JOIN pro ON gri.grpcodigo = pro.grpcodigo');
    consulta.SQL.Add(' and pro.procodigo=' + vlProCodigo);
    consulta.Open;

    vlAgoraServer := agora(Application, conexao);
    immimpimmtemporetardo.AsInteger := consulta.Fields[1].AsInteger;
    try
      strtodatetime(vlAgoraServer);
      vlshoraImprimir := datetimetostr(IncMinute(strtodatetime(vlAgoraServer), 35));
      immimpimmhoraimprimir.AsString := vlshoraImprimir;
    except
      immimpimmhoraimprimir.AsString := datetimetostr(strtodatetime(vlAgoraServer));
    end;

    immimp.Post;

    immimp.Next;
  end;
  vlMaiorTempo := 0;

  immimp.First;
  while not immimp.Eof do
  begin

    if immimpimmtemporetardo.AsInteger > vlMaiorTempo then
    begin
      vlMaiorTempo := immimpimmtemporetardo.AsInteger;
      immimp.Edit;
      immimpimmmodoimpressao.AsString := '1';
      immimp.Post;
    end
    else
    begin
      immimp.Edit;
      immimpimmmodoimpressao.AsString := '0';
      immimp.Post;
    end;

    immimp.Next;
  end;

  immimp.First;
  while not immimp.Eof do
  begin
    vlSegundos := 0;
    try
      vlSegundos := (((vlMaiorTempo - immimpimmtemporetardo.AsInteger) * 60));
    except
      vlSegundos := 0;
    end;

    if vlSegundos <> 0 then
    begin
      immimp.Edit;
      immimpimmhoraimprimir.AsString := datetimetostr(IncSecond(strtodatetime(vlAgoraServer), vlSegundos));
      immimp.Post;
    end;
    immimp.Next;
  end;

end;

procedure TFprinciEnt.ActProdutosExecute(Sender: TObject);
Var
  vlRetorno: String;
  vlFiltro: String;
begin


  // inherited;

  vlFiltro := '(pro.tpocodigo=''0'' or pro.tpocodigo=''4'' or pro.tpocodigo=''9'')';

  vlRetorno := MostraLista('mpro', vlFiltro);
  If vlRetorno <> '' Then
    If StrToInt(vlRetorno) > 0 Then
      IncluirNovoItem(StrToInt(vlRetorno), 0);

  if vlRetorno <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select cpbuniadesporkg from cpb where procodigo=' + vlRetorno;
    consulta.Open;

    if (consulta.FieldByName('cpbuniadesporkg').AsInteger <> 0) and (consulta.FieldByName('cpbuniadesporkg').AsInteger <> 1) then
    begin

      funidades := Tfunidades.Create(Application);
      funidades.Dito.Edit;
      funidades.Dito.DataSet := Ito;

      if funidades.ShowModal = mrok then
      begin

        try
          Ito.Edit;
          itoitoquantidade.AsFloat := ((1 / consulta.FieldByName('cpbuniadesporkg').AsFloat) * itoitounidades.AsInteger);
          Ito.Post;
        except
          Ito.Cancel;
        end;

      end;

      plPedido.Visible := true;
      lista.Visible := false;
      btVerPedido.Visible := false;
      btAlteraPedido.Visible := true;
      MontaTextoPedido;

    end;

  end;

end;

procedure TFprinciEnt.ActQuantidadeExecute(Sender: TObject);
Var
  Clicou: Boolean;
  Squantidade: String;
  VQuantidade: Double;
Begin
  if not lito.Active then
    Exit;

  VQuantidade := 1;

  if not Self.lito.IsEmpty then
  begin
    Application.CreateForm(TfListaItens, fListaItens);
    fListaItens.Dlito.DataSet := Self.lito;

    if fListaItens.ShowModal = mrok then
    begin
      If not(Ito.Locate('itochave', Litoitochave.AsInteger, [])) Then
        Exit;

      Clicou := InputQuery('Quantidade', 'Digite a nova quantidade:', Squantidade);

      If Clicou Then
      Begin
        Try
          VQuantidade := StrToFloat(Squantidade);
        Except
          Application.MessageBox(PChar('Quantidade inválida!'), 'Atenção', MB_ICONWARNING + MB_OK);
          Exit;
        End;

        AjustaQuantidade(VQuantidade, taqFinal);
      End;

      recalculaTotal;
      plPedido.Visible := true;
      lista.Visible := false;
      btVerPedido.Visible := false;
      btAlteraPedido.Visible := true;
      btVerPedido.Click;
    end;
  end;

  { }
end;

procedure TFprinciEnt.ActVerEntregasExecute(Sender: TObject);
var
  vlArq: string;
begin

  vlArq := ExtractFilePath(Application.ExeName) + 'AtendSai.exe';
  if FileExists(vlArq) then
    ExecuteAndWait(vlArq);

end;

procedure TFprinciEnt.ActVerPedidosExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfpedidos, fpedidos);
  fpedidos.orcs.Connection := conexao;

  fpedidos.sbAtualizar.Click;
  fpedidos.ShowModal;
end;

Procedure TFprinciEnt.Ajustabotoes(Situacao: Boolean);
Begin

  ActQuantidade.Enabled := Situacao;
  ActCancelaItem.Enabled := Situacao;

  if cfgcfgusacaixaprevenda.AsInteger = 1 then
    ActAFaturar.Visible := false;

  ActAFaturar.Enabled := Situacao;

  ActDescontoItem.Enabled := Situacao;
  ActDescontoGeral.Enabled := Situacao;

  if (Situacao = true) and (Orcmoccodigo.AsInteger in [mocOrcamento, mocCondicional, mocOrdemServico, mocDelivery]) then
    ActLimpaAtendimento.Enabled := false
  else
    ActLimpaAtendimento.Enabled := Situacao;

  ActPedido.Enabled := Situacao;
  ActClientes.Enabled := Situacao;

  PCpaginas.Visible := Situacao;
  PlEsquerda.Visible := Situacao;
  PlDetalhe.Visible := Situacao;
  plDireitaDetalhe.Visible := true;

  ActClientes.Enabled := Situacao;
  ActProdutos.Enabled := Situacao;

  ActQuantidade.Enabled := Situacao;

  ActCancelaItem.Enabled := Situacao;
  ActDescontoItem.Enabled := Situacao;
  ActDescontoGeral.Enabled := Situacao;

  ActFinalizaVenda.Enabled := Situacao;

  ActQuantidade.Enabled := Situacao;

  ActDescontoItem.Enabled := Situacao;
  ActDescontoGeral.Enabled := Situacao;
  ActSangria.Enabled := Situacao;
  ActSuprimento.Enabled := Situacao;
  ActAbreCaixa.Enabled := Situacao;

  PlEsquerda.Visible := Situacao;
  PlDetalhe.Visible := Situacao;
  ActSair.Enabled := Situacao;

  PlDadosAtend.Visible := Situacao;

  if cfgcfgidentificavendedor.AsInteger = 1 then
    LbVendedor.Visible := Situacao;

  if Situacao = false then
  begin
    ActAbreVenda.Enabled := true;
    ActSair.Enabled := true;
    ActSangria.Enabled := true;
    ActSuprimento.Enabled := true;
    ActAbreCaixa.Enabled := true;

    plMensagemPrincipal.Visible := true;

    GBBusca.Visible := true;
    // GBSalvar.Visible := false;
  end
  else
  begin
    ActAbreVenda.Enabled := false;
    ActSair.Enabled := false;

    plMensagemPrincipal.Visible := false;
    GBBusca.Visible := false;
    // GBSalvar.Visible := true;

    LbOrcChave.Caption := 'Nº: ' + vpOrcChave;
  end;

  if vpCaixaAberto = 0 then
  begin
    ActSangria.Enabled := false;
    ActSuprimento.Enabled := false;
    ActAbreCaixa.Enabled := true;
    ActFechaCaixa.Enabled := false;
    ActClientes.Enabled := false;
    ActProdutos.Enabled := false;
  end
  else
  begin
    ActFechaCaixa.Enabled := true;
    ActAbreCaixa.Enabled := false;
  end;

  ActAbreGaveta.Enabled := true;

  if not plMensagemPrincipal.Visible then
  begin
    ActSangria.Enabled := false;
    ActSuprimento.Enabled := false;
    ActAbreGaveta.Enabled := false;
    ActFechaCaixa.Enabled := false;
  end;

  AtualizaStatusAtend;
End;

procedure TFprinciEnt.AtualizaStatusAtend;
var
  vStatusAtual: String;
begin
  case Orcmoccodigo.AsInteger of
    mocNovoRegistro:
      vStatusAtual := 'Novo Registro';
    mocOrcamento:
      vStatusAtual := 'Orçamento - Em Edição';
    mocDelivery:
      vStatusAtual := 'Pedido - Em Edição';
    mocOrdemServico:
      vStatusAtual := 'Ordem de Serviço - Em Edição';

  else
    vStatusAtual := '';
  end;

  if not orc.Active then
    vStatusAtual := 'Novo Registro';

end;

procedure TFprinciEnt.btAlteraPedidoClick(Sender: TObject);
begin
  inherited;
  plPedido.Visible := false;
  lista.Visible := true;
  btalteraritem.Visible := true;
  btAlteraPedido.Visible := false;
  btVerPedido.Visible := true;
end;

procedure TFprinciEnt.btalteraritemClick(Sender: TObject);
begin
  inherited;
  listaDblClick(lista);
end;

procedure TFprinciEnt.btLimpaBuscaCardapioClick(Sender: TObject);
begin
  inherited;
  edBuscaCardapio.Text := '';
end;

procedure TFprinciEnt.btVerPedidoClick(Sender: TObject);
begin
  inherited;
  plPedido.Visible := true;
  lista.Visible := false;
  btalteraritem.Visible := false;
  btVerPedido.Visible := false;
  btAlteraPedido.Visible := true;
  MontaTextoPedido;
end;

procedure TFprinciEnt.cdbarraKeyPress(Sender: TObject; var Key: Char);
Var
  VCBarra: String;
  vProduto: Integer;
  vEmbalagem: Integer;
  vVariacao: Integer;
  Vquanti: Double;
  VQuantidade: Double;
  vlLocalizouItem: Boolean;
  vlUnidade: Integer;
  s: String;
  iValue, iCode: Integer;

Begin
  s := Key;
  val(s, iValue, iCode);
  if (iCode <> 0) and (Key <> #8) and (Key <> #13) then
  begin
    Key := #0;
  end;

  VCBarra := cdbarra.Text;

  // SE CAMPO TEM VALOR DIGITADO SISTEMA LOCALIZA PRODUTO PARA INSERIR OU CANCELAR
  If ((VCBarra <> '')) Then
  Begin

    //
    // *****  LOCALIZA E INSERE PRODUTO NO ORÇAMENTO OU CANCELA ITENS DO CONDICIONAL *****
    //

    If (Key = #13) Then
    Begin

      vProduto := BuscaProdutoBarra(Application, conexao, VCBarra, vEmbalagem, vVariacao);

      If vProduto > -1 Then
        IncluirNovoItem(vProduto, vEmbalagem, vVariacao)
      Else
        Application.MessageBox(PChar('Produto não localizado!!'), 'Atenção', MB_ICONWARNING + MB_OK);

      cdbarra.Text := '';
      Key := #0;
    End;

    If (Key = 'x') or (Key = 'X') Then
    Begin
      vpQuantidade := StrToFloat(Copy(VCBarra, 1, length(VCBarra)));
      VQuantidade := vpQuantidade;

      cdbarra.Text := '';
      Key := #0;

    End;

  End;

  if (Key = #4) or (Key = #7) or (Key = #9) or (Key = #$15) then
    Key := #0;

end;

procedure TFprinciEnt.cdbarraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Tecla: Integer;
  VCdBarra: String;
  VQuantidade: Double;
Begin
  VCdBarra := (FindComponent('Cdbarra') as TEdit).Text;
  (FindComponent('Cdbarra') as TEdit).Text := '';

  Tecla := Key;
  Key := 0;

  // Identifica se tem combinação de tecla com Ctrl;
  If Shift = [ssCtrl] Then
  Begin
    Case Tecla Of
      (* I - CANCELAMENTO DE ITEM *)
      73:
        ActCancelaItem.Execute;

      (* U - LIMPA ATENDIMENTO *)
      85:
        ActLimpaAtendimento.Execute;

      (* D - DESCONTO NO ITEM *)
      68:
        ActDescontoItem.Execute;

      (* G - DESCONTO GERAL *)
      71:
        ActDescontoGeral.Execute;

    Else
      begin
        (FindComponent('Cdbarra') as TEdit).Text := VCdBarra;
        (FindComponent('Cdbarra') as TEdit).SelStart := length((FindComponent('Cdbarra') as TEdit).Text);
        // DEVOLVE POSIÇÃO DO CURSOR PARA O FIM
        Key := Tecla;
      end;
    End;

  End
  Else
  Begin
    if plMensagemPrincipal.Visible then
      Case Tecla Of

        113:
          ActAbreVenda.Execute;
      else
        begin
          Key := Tecla;
          Exit;
        end;
      End;

    Case Tecla Of
      (* SETA PARA CIMA *)
      38:
        if lito.Active then
          Dlito.DataSet.Prior;

      (* SETA PARA BAIXO *)
      40:
        if lito.Active then
          Dlito.DataSet.Next;

      (* F4 - AJUSTA QUANTIDADE *)
      115:
        ActQuantidade.Execute;

      (* F6 -  FINALIZAR VENDA *)
      117:
        ActFinalizaVenda.Execute;

      (* F7 - BUSCA CLIENTES *)
      118:
        ActClientes.Execute;

      (* F8 - PRODUTOS *)
      119:
        ActProdutos.Execute;

      (* F9 - A FATURAR *)
      120:
        if ActAFaturar.Visible then
          ActAFaturar.Execute;

      (* NENHUMA DAS OPÇÕES DEVOLVE VALOR DAS TECLAS *)
    Else
      begin
        (FindComponent('Cdbarra') as TEdit).Text := VCdBarra;
        (FindComponent('Cdbarra') as TEdit).SelStart := length((FindComponent('Cdbarra') as TEdit).Text);
        // DEVOLVE POSIÇÃO DO CURSOR PARA O FIM
        Key := Tecla;
      end;
    End;
  End;

end;

procedure TFprinciEnt.MontaTextoPedido;
var
  i: Integer;

  vNome1: string;
  vNome2: string;
  vNome3: string;
  VNome: string;
  vlTotal: Double;
  vlTotalBordas: Double;
  vlQtdBordas: Integer;

  vlAdicional: Double;

  vlBordas: Double;
  vlValorUnit: Double;
  vlValorTotalItem: Double;

  vlCobraAdicional: Integer;
  vlEndereco: Integer;

begin
  vlEndereco := orcedrcodigo.AsInteger;

  Etd.Close;
  Etd.Params[0].AsString := VpEtdCodigo;
  Etd.Params[1].AsInteger := vlEndereco;
  Etd.Open;

  recalculaTotal;

  PedidoCabecalho.Lines.Clear;
  pedido.Lines.Clear;
  PedidoRodaPe.Lines.Clear;
  vlTotal := 0;
  vlTotalBordas := 0;
  vpTotalAcrescimoav := 0;
  vlValorTotalItem := 0;
  lito.Close;
  lito.Open;
  lito.First;
  if ((VpEtdCodigo <> '') and (VpEtdCodigo <> '0')) or (Orcetdcodigo.AsString <> '0') then
  begin
    PedidoCabecalho.Visible := true;

    with PedidoCabecalho do
    begin
      SelAttributes.Size := 16;
      SelAttributes.Style := [fsBold];
      SelAttributes.Color := clRed;
      SelStart := GetTextLen;
      SelText := 'Pedido nº: ' + orcorcchave.AsString + ' ' + Format('%-40s', [Copy(etdetdidentificacao.AsString, 1, 40)]) + #13#10;
      SelStart := GetTextLen;
      SelAttributes.Size := 12;
      SelAttributes.Style := [];
      SelAttributes.Color := clBlack;

      if length(etdetftelefone.AsString) = 10 then
      begin
        SelText := 'TELEFONE: ' + FormatMaskText('!\(99\)0000-0000;0;_', etdetftelefone.AsString) + #13#10;
      end
      else if length(etdetftelefone.AsString) = 11 then
        SelText := 'TELEFONE: ' + FormatMaskText('!\(99\)00000-0000;0;_', etdetftelefone.AsString) + #13#10;

      SelAttributes.Size := 12;
      SelAttributes.Style := [];
      SelAttributes.Color := clBlack;

      SelText := 'ENDEREÇO: ' + etdedrrua.AsString + ', ' + etdedrnumero.AsString + #13#10;
      SelAttributes.Size := 12;
      SelAttributes.Style := [];
      SelAttributes.Color := clBlack;

      SelText := '          ' + etdedrbairro.AsString;

    end;
  end
  else
    PedidoCabecalho.Visible := false;

  with PedidoCabecalho do
  begin
    SelText := #13#10;
  end;

  while not lito.Eof do
  begin
    vlBordas := 0;

    with pedido do
    begin
      SelText := #13#10;

      SelAttributes.Size := 14;
      SelAttributes.Style := [];
      SelAttributes.Color := clBlack;
      SelStart := GetTextLen;

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

      vlValorUnit := consulta.Fields[1].AsCurrency;

      if not consulta.IsEmpty then
        VNome := VNome + ' ' + consulta.Fields[0].AsString;

      vNome1 := Copy(VNome, 1, 35);
      vNome2 := Copy(VNome, 36, 35);
      vNome3 := Copy(VNome, 71, 40);

      SelText := '   ' + vNome1 + #13#10;
      SelStart := GetTextLen;
      if vNome2 <> '' then
      begin
        SelAttributes.Size := 14;
        SelAttributes.Style := [];
        SelAttributes.Color := clBlack;
        SelText := '   ' + vNome2 + #13#10;
        SelStart := GetTextLen;
      end;
      if vNome3 <> '' then
      begin
        SelAttributes.Size := 14;
        SelAttributes.Style := [];
        SelAttributes.Color := clBlack;
        SelText := '   ' + vNome3 + #13#10;
        SelStart := GetTextLen;
      end;

      SelAttributes.Size := 8;
      SelAttributes.Style := [];
      SelAttributes.Color := clBlack;

      sbi.Close;
      sbi.Params[0].AsInteger := Self.Litoitochave.AsInteger;
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
              if sbi.RecordCount > 1 then
              begin
                SelStart := GetTextLen;
                SelAttributes.Size := 10;
                SelAttributes.Style := [fsBold];
                SelAttributes.Color := clBlack;
                SelText := '    ' + consulta.Fields[0].AsString;
              end;
            end;
            if sbisbiobs.AsString = '' then
            begin
              SelText := #13#10;
            end
            else
            begin
              SelAttributes.Style := [];
              SelText := '  (' + sbisbiobs.AsString + ')' + #13#10;
            end;

            while not isi.Eof do
            begin
              if isiisitipo.AsInteger = 1 then
              begin
                if isitsicodigo.AsInteger = 3 then
                begin
                  if isiisiquantidade.AsInteger > 1 then
                  begin
                    SelText := '    Adicionar:  ' + isiisiquantidade.AsString + ' ' + isipronome.AsString + #13#10;
                  end
                  else
                  begin
                    SelText := '      Adicionar:  ' + isipronome.AsString + #13#10;
                  end;
                end
                else
                  SelText := '                  ' + isitsiidentificacao.AsString + ' ' + isipronome.AsString + #13#10;

                if (isitsicodigo.AsInteger <> 1) AND (vlCobraAdicional <> 0) then
                begin
                  vlAdicional := vlAdicional + (isipunprecoav.AsCurrency * isiisiquantidade.AsInteger);

                end;

              end
              else if isiisitipo.AsInteger = 0 then
              begin
                if isitsicodigo.AsInteger <> 3 then
                  SelText := '                  ' + isitsiidentificacao.AsString + ' ' + isipronome.AsString + #13#10;
              end;
              isi.Next;
            end;

            consulta.Next;
          end;

          sbi.Next;
        end;

        pbri.Close;
        pbri.Params[0].AsInteger := Litoitochave.AsInteger;
        pbri.Open;

        if not pbri.IsEmpty then
        begin
          SelAttributes.Size := 10;
          SelAttributes.Style := [fsBold];
          SelAttributes.Color := clBlack;
          SelText := #13#10;

          // SelText := '    Complemento / Base: ' + #13#10;
          SelText := '                 Borda: ' + #13#10;

        end
        else
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
          SelStart := GetTextLen;
          SelAttributes.Size := 10;
          SelAttributes.Style := [fsBold, fsItalic];
          SelAttributes.Color := clBlack;
          SelText := '          ' + pbri.FieldByName('brdidentificacao').AsString + #13#10;
          vlBordas := vlBordas + ((pbri.FieldByName('punprecoav').AsCurrency / vlQtdBordas) * litoitoquantidade.AsFloat);
          pbri.Next;
        end;
        vlTotalBordas := vlTotalBordas + vlBordas;

      end;
      if pbri.IsEmpty then
      begin
        vlTotalBordas := 0;
        vlBordas := 0;
      end;

      SelAttributes.Size := 14;
      SelAttributes.Style := [fsBold];
      SelAttributes.Color := clBlack;

      SelStart := GetTextLen;

      if litoitodesconto.AsCurrency > 0 then
      begin
        SelText := '      ' + formatfloat('#0.000', litoitoquantidade.AsFloat) + ' X ' + Format('%8s', [formatfloat('##,##0.00', vlValorUnit + vlAdicional + vlBordas)]) +
          Format('%8s', [formatfloat('-#,##0.00', litoitodesconto.AsCurrency)]) + '   = R$ ' +
          Format('%8s', [formatfloat('##,##0.00', ((vlValorUnit + vlAdicional) * litoitoquantidade.AsFloat) + vlBordas - litoitodesconto.AsCurrency)]) + #13#10;
      end
      else
      begin
        SelText := '      ' + formatfloat('#0.000', litoitoquantidade.AsFloat) + ' X ' + Format('%8s', [formatfloat('##,##0.00', vlValorUnit + vlAdicional + vlBordas)]) +
          Format('%8s', ['        ']) + '   = R$ ' +
          Format('%8s', [formatfloat('##,##0.00', ((vlValorUnit + vlAdicional) * litoitoquantidade.AsFloat) + vlBordas - litoitodesconto.AsCurrency)]) + #13#10;

      end;

      SelText := '_________________________________________________________________________________' + #13#10;
      vlValorTotalItem := vlBordas + ((vlValorUnit) * litoitoquantidade.AsFloat) - litoitodesconto.AsCurrency;
      vlTotal := vlTotal + vlBordas + ((vlValorUnit + vlAdicional) * litoitoquantidade.AsFloat) - litoitodesconto.AsCurrency;
    end;

    consulta.Close;
    consulta.SQL.Text := 'update ito set itoacrescimoav=' + buscatroca(Floattostr((vlAdicional * litoitoquantidade.AsFloat) + vlBordas), ',', '.') + ' where itochave=' +
      Litoitochave.AsString;
    consulta.ExecSQL;

    { consulta.Close;
      consulta.SQL.Text := 'update ito set itoacrescimoav=' + buscatroca(Floattostr(vlAdicional* litoitoquantidade.AsFloat), ',', '.') + ',itovalorav=' + buscatroca(Floattostr(vlBordas + vlValorUnit), ',',
      '.') + ',itovalorap=' + buscatroca(Floattostr(vlBordas + (vlValorUnit)), ',', '.') + ', itototalav=' + buscatroca(Floattostr(vlValorTotalItem +(vlAdicional* litoitoquantidade.AsFloat)), ',', '.') +
      ', itototalap=' + buscatroca(Floattostr(vlValorTotalItem ), ',', '.') + ', itosaldoav=' + buscatroca(Floattostr(vlValorTotalItem), ',', '.') + ', itosaldoap=' +
      buscatroca(Floattostr(vlValorTotalItem), ',', '.') + ' where itochave=' + Litoitochave.AsString;
      consulta.ExecSql; }
    vpTotalAcrescimoav := vpTotalAcrescimoav + vlAdicional + vlBordas;
    vlAdicional := 0;

    lito.Next;
  end;

  with PedidoRodaPe do
  begin
    SelAttributes.Size := 16;
    SelAttributes.Style := [fsBold];
    SelAttributes.Color := clBlack;
    SelStart := GetTextLen;
    SelText := '                    =====================' + #13#10;

    SelAttributes.Size := 16;
    SelAttributes.Style := [fsBold];
    SelAttributes.Color := clBlack;
    SelStart := GetTextLen;
    SelText := '                     Total R$ ' + Format('%12s', [formatfloat('###,##0.00', vlTotal)]) + #13#10;
    SelStart := GetTextLen;
    SelAttributes.Size := 12;
    SelAttributes.Style := [];
    SelAttributes.Color := clBlack;

  end;

  vplValorLiquidoOp := vlTotal;
  // recalculaTotal;

end;

function TFprinciEnt.GetBotoesAtivosImpre: String;
Var
  vlImpAtivos: string;
Begin
  vlImpAtivos := '     ';

  if IDAV.Visible then
    if vpImprimiuDAV then
      Insert('O', vlImpAtivos, 1);

  Insert(' ', vlImpAtivos, 2);

  if Infce.Visible then
    if vpImprimiuNFCe then
      Insert('F', vlImpAtivos, 3);

  if Infe.Visible then
    if vpImprimiuNFE then
      Insert('E', vlImpAtivos, 4);

  if orcfopcodigo.AsInteger = 2 then
    Insert('B', vlImpAtivos, 5);

  result := vlImpAtivos;
end;

procedure TFprinciEnt.MostraComplementoProduto(vItoChave: Integer);
begin
  try
    if Ito.Locate('itochave', vItoChave, []) then
    begin
      Application.CreateForm(Tfivlinhacomplpro, fivlinhacomplpro);
      fivlinhacomplpro.Dregistro.DataSet := Ito;
      fivlinhacomplpro.ShowModal;
      lito.Refresh;
    end;
  finally
    freeandnil(fivlinhacomplpro);
  end;
end;

procedure TFprinciEnt.AtualizaListasdePedidos;
begin
  listaasair.Close;
  listaasair.Open;
  LabelQtdPedidosaSair.Caption := 'Qtd: ' + formatfloat('000', listaasair.RecordCount);

  listajasaiu.Close;
  listajasaiu.Open;
  LabelQtdPedidosJaSaiu.Caption := 'Qtd: ' + formatfloat('000', listajasaiu.RecordCount);
  Application.ProcessMessages;

end;

end.
