unit ufradev;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Controls, Vcl.Dialogs, Vcl.Graphics, System.SysUtils, uFuncoes, uPegaBase,
  System.ImageList, Vcl.ImgList, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.Diagnostics, Winapi.Messages;

type
  Tfradev = class(Tfrabase)
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
    ActDevolver: TAction;
    SplItens: TSplitter;
    itmtoecodigo: TIntegerField;
    itmproncm: TStringField;
    ActInfoComplementar: TAction;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
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
    uqtabelamesprodutos: TFloatField;
    PlTotalServicos: TPanel;
    uqTotaismestotalprodutos: TFloatField;
    uqTotaismestotalservicos: TFloatField;
    tit: tuniquery;
    tittitcodigo: TIntegerField;
    plDetalhes: TPanel;
    pllinha2: TPanel;
    pllinha1: TPanel;
    plTituloItensDetalhe: TPanel;
    btOcultaExibeDetalhe: TSpeedButton;
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
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmcofins: TFloatField;
    AjustarCFOPdoItens1: TMenuItem;
    uqtabelatoecodigo: TIntegerField;
    Panel1: TPanel;
    btOcultaExibeTotais: TSpeedButton;
    plTrocaDevol: TPanel;
    uqtabelatoecfopsaida: TStringField;
    uqtabelamestipocomissao: TIntegerField;
    adm: tuniquery;
    uqtabelamesinclusao: TDateTimeField;
    mnMarcarcomoReclassificacao: TMenuItem;
    uqTotaismesrfaturado: TFloatField;
    pro: tuniquery;
    procstcodigo: TStringField;
    PltotalDoacao: TPanel;
    Pltotalnfe: TPanel;
    Pltotalliquido: TPanel;
    PlTotalProdutos: TPanel;
    PlTotalCancelado: TPanel;
    uqtabelattecodigo: TIntegerField;
    PlTotalARefaturar: TPanel;
    uqTotaissdecodigo: TStringField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaflasigla: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaobsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActSairExecute(Sender: TObject);
    procedure ActDevolverExecute(Sender: TObject);
    procedure ActInfoComplementarExecute(Sender: TObject);
    procedure uqItmTotaisAfterOpen(DataSet: TDataSet);
    procedure uqItmTotaisAfterRefresh(DataSet: TDataSet);
    procedure btOcultaExibeDetalheClick(Sender: TObject);
    procedure uqTotaisBeforeOpen(DataSet: TDataSet);
    procedure bConfirmaSelecaoClick(Sender: TObject);
    procedure btLimpaBuscaClick(Sender: TObject);
    procedure btOcultaExibeObservacoesClick(Sender: TObject);
    procedure AjustarCFOPdoItens1Click(Sender: TObject);
    procedure btOcultaExibeTotaisClick(Sender: TObject);
    procedure DBResumoModalidadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnMarcarcomoReclassificacaoClick(Sender: TObject);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    FSQLBaseTotais: String;
    procedure AtualizarDetalhe;
    procedure CalculaTotais; override;
    procedure AtualizaTotaisItens;

    procedure AjustaAlturaRodaPeGrid;
    procedure InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
    procedure modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
    function ModuloNFCe(vfuncao, vTrmCodigo, vMesChave, vClbCodigo: string): Boolean;

  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  public
    { Public declarations }
    voPodeCalcular: Boolean;
    procedure Carregar; override;
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string): Boolean;

  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string;
    vtdecodigo, vorcchave, vMesChave: String; vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;

  TCancelar = function(AOwner: TComponent; conexao: TUniConnection; vLteChave: string; vMotivo: string; vusrcodigo: string; vMesChave: string;
    vMeaCodigo: string; vtnccodigo: string): string;

  TValidaProdutos = Function(AOwner: TComponent; conexao: TUniConnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;

var
  fradev: Tfradev;

  // Início ID do Módulo fradev
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Devoluções';

  // Fim ID do Módulo fradev

implementation

{$R *.dfm}

uses midaslib, ufdevsimples, ufdtmdev, ufdevfaturamento;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradev := Tfradev.Create(pCargaFrame);

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradev := Tfradev.Create(pCargaFrame);
  try
    fradev.CriaAcoesDeAcesso;
  finally
    fradev.Free;
  end;
end;

exports formuFrame, defineacesso;

function Tfradev.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string): Boolean;
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

procedure Tfradev.AjustaAlturaRodaPeGrid;
begin
  PnlRodapeGrid.Height := PCDetalhes.Height + plTituloItensObservacoes.Height + plDetalhes.Height;
end;

procedure Tfradev.AjustarCFOPdoItens1Click(Sender: TObject);
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

procedure Tfradev.uqItmTotaisAfterOpen(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfradev.uqItmTotaisAfterRefresh(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfradev.uqTotaisBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  uqTotais.FilterSQL := uqtabela.FilterSQL;
end;

procedure Tfradev.Carregar;
begin
  consulta.Close;
  consulta.Connection := Self.zcone;
  consulta.SQL.Text := 'SELECT cfgdefinetoeatendimento, cfgidentificatecnico, cfgidentificavendedor FROM cfgmsai;';
  consulta.Open;

  inherited Carregar;

  CarregarColunas(listaobs);
  CarregarColunas(listaitm);

  btOcultaExibeObservacoes.Click;
  AjustaAlturaRodaPeGrid;

  voPodeCalcular := True;

end;

procedure Tfradev.ActAlterarExecute(Sender: TObject);
begin
  {
    if (uqtabelatdfcodigo.AsString = tdfMovimentoAFaturar) or (uqtabelatdfcodigo.AsString = tdfRefaturado) then
    begin
    Application.MessageBox(PChar('Alteração não permitida para registros de ' + uqtabelatdfidentificacao.AsString + ' de Mercadoria.'), 'Atenção', MB_ICONWARNING + MB_OK);
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

    CriaFormulario(tfdevsimples, Self.uqtabelameschave.AsString, '');
    End;
  }

end;

procedure Tfradev.ActAtualizarExecute(Sender: TObject);
begin
  ActAtualizar.Enabled := false;
  Inherited;

  CalculaTotais;

  { AtualizarDetalhe; }

  if (not uqtabela.Executing) and (not uqtabela.Fetching) then
  begin

    AtualizarDetalhe;

    if not ccm.Active then
      ccm.Open;

    if not erf.Active then
      erf.Open;

  end;

  ActAtualizar.Enabled := True;
end;

procedure Tfradev.ActCancelarExecute(Sender: TObject);
var
  vMotivo: string;
  vlMeaCodigo: string;
  vlAcao: string;
  vlItens: TstringList;
  i: Integer;

begin
  { inherited; }

  edbusca.Text := '';

  if uqtabelasdecodigo.AsString = '02' then
  begin
    ShowMessage('ATENÇÃO: Este lançamento já esta cancelado!');
    exit;
  end;

  if uqtabelatdfcodigo.AsString = '55' then
  begin
    ShowMessage('ATENÇÃO: Este registro não pode ser cancelado, favor verificar na tela de Notas Fiscais (NFE)!');
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

          vlItens := TstringList.Create;
          Self.itm.First;
          while not itm.eof do
          begin

            vlItens.Add(itmprocodigo.AsString);
            itm.Next;
          end;

          consulta.Close;
          consulta.SQL.Text := 'delete idt FROM idt,mdt WHERE idt.mdtchave=mdt.mdtchave and meschavedestino=' + uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'delete mdt FROM mdt WHERE  meschavedestino=' + uqtabelameschave.AsString;
          consulta.ExecSQL;



          consulta.Close;
          consulta.SQL.Text := 'UPDATE mes SET sdecodigo = ''02'' WHERE meschave = ' + Self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'INSERT INTO hcm (meschave, sdecodigo, clbcodigo, hcmdata, hcmhora, hcmdescricao) VALUES ( ';
          consulta.SQL.Add(Self.uqtabelameschave.AsString + ', ');
          consulta.SQL.Add('''02'', ');
          consulta.SQL.Add(Acesso.Usuario.ToString + ', ');
          consulta.SQL.Add(QuotedStr(ajustadata(DateToStr(date))) + ', ');
          consulta.SQL.Add(QuotedStr(TimeToStr(time)) + ', ');
          consulta.SQL.Add(QuotedStr(vMotivo) + ')');
          consulta.ExecSQL;

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

          ShowMessage('Cancelamento realizado com sucesso!');

        except
          ShowMessage('Falha de Cancelamento!');
        end;

        Self.ActAtualizar.Execute;
      End;

  end;
end;

procedure Tfradev.InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
var
  arq: string;
Begin
  if vtdfcodigo = '55' then
    modulonfe(arq, rnfInutilizarDireto, vMesChave.ToString);

  if vtdfcodigo = '65' then
    ModuloNFCe('InutilizarNumerosNFCEDireto', Acesso.Terminal.ToString, vMesChave.ToString, Acesso.Usuario.ToString);

end;

function Tfradev.ModuloNFCe(vfuncao: string; vTrmCodigo: string; vMesChave: string; vClbCodigo: string): Boolean;
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
  vlPackNFCe := LoadPackage('modulos\mnfemercato.bpl');
  if vlPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vlPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Self.zcone, vMesChave, vfuncao, Acesso, false, false, '');
    Result := vlRetorno;

  end;
  DoUnLoadPackage(Application, vlPackNFCe);
End;

Procedure Tfradev.modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
type
  TModuloNFe = function(AOwner: TComponent; conexao: TUniConnection; varq: string; vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso;
    vConsultouSefaz: Boolean): Boolean;
var
  modnfe: TModuloNFe;

  ch: string;
  vu: string;
  vpack: Cardinal;
begin
  vpack := LoadPackage('modulos\mnfemercato.bpl');
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

procedure Tfradev.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  If Self.uqtabelamesprotocolo.AsString <> '' Then
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser Excluído!')
  Else
    Inherited;
end;

procedure Tfradev.ActDevolverExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfdevfaturamento, '', '');
end;

procedure Tfradev.ActInfoComplementarExecute(Sender: TObject);
begin
  If Self.uqtabelamesprotocolo.AsString <> '' Then
  begin
    Application.MessageBox(PChar('Este registro é uma NFE. Não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  MostraLista('mtom', Self.uqtabelameschave.AsString);
end;

procedure Tfradev.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(listaobs);
  SalvarColunas(listaitm);

  inherited;
end;

procedure Tfradev.DBGListaCellClick(Column: TColumn);
begin
  if (not uqtabela.Executing) and (not uqtabela.Fetching) then
  begin

    AtualizarDetalhe;

    if not ccm.Active then
      ccm.Open;

    if not erf.Active then
      erf.Open;

  end;

  inherited;

end;

procedure Tfradev.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfradev.DBGListaMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
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

procedure Tfradev.DBResumoModalidadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfradev.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AtualizarDetalhe;
end;

procedure Tfradev.AtualizarDetalhe;
begin

  itm.Close;
  itm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  itm.Open;

  uqItmTotais.Close;
  uqItmTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  uqItmTotais.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  uqItmTotais.Open;

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

procedure Tfradev.CalculaTotais;
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

    uqtabela.DisableControls;
    { uqtabela.Close;
      uqtabela.Open; }

    try
      if not fmd.IsEmpty then
        vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    except
      vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    end;

    Application.ProcessMessages;

    if uqtabela.Active then
    begin
      uqtabela.First;
      while not uqtabela.eof do
      begin

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
            vlTotalServicos := vlTotalServicos;
          end;
        end;

        { if uqtabelasdecodigo.AsString = 'RF' then
          vlTotalRefaturado := vlTotalRefaturado + uqtabelamestotal.AsCurrency; }

        if ((uqtabelatdfcodigo.AsString = '65') or (uqtabelatdfcodigo.AsString = '55')) and (uqtabelasdecodigo.AsString <> '02') then
          vlTotalNF := vlTotalNF + uqtabelamestotal.AsCurrency;

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

      vlTotalLiquido := vlTotalBruto - vlTotalDesconto;

      Pltotalvendas.Caption := 'Bruto: ' + FormatFloat('##,###,##0.00', vlTotalBruto { + vlTotalCancelado  - vlTotalRefaturado } );
      Pltotaldescontos.Caption := '(-) Descontos: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
      PltotalDoacao.Caption := '(-) Doações: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

      Pltotalliquido.Caption := '(=) : ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
        (vlTotalTrocaDevo + vlTotalDoacoes + vlTotalCancelado + vlTotalRefaturado + vlTotalAFaturar));

      PlTotalARefaturar.Caption := 'A Faturar: ' + FormatFloat('##,###,##0.00', vlTotalAFaturar);

      Pltotalnfe.Caption := 'FISCAL: ' + FormatFloat('##,###,##0.00', vlTotalNF);

      PlTotalProdutos.Caption := 'Produtos: ' + FormatFloat('##,###,##0.00', vlTotalProdutos);
      PlTotalServicos.Caption := 'Serviços: ' + FormatFloat('##,###,##0.00', vlTotalServicos);

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

    end;
  finally
    uqtabela.RecNo := registroatual;
    uqtabela.EnableControls;

    Application.ProcessMessages;

  end;
end;

procedure Tfradev.AtualizaTotaisItens;
begin
  plQtdItens.Caption := 'Qt.Itens : ' + uqItmTotaisitmitens.AsString;
  plBrutoItens.Caption := 'Total Bruto: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotal.AsFloat);
  plDescontoItens.Caption := 'Total Desconto: ' + FormatFloat('#,##0.00', uqItmTotaisitmdesconto.AsFloat);
  plLiquidoItens.Caption := 'Total Líquido: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotalliq.AsFloat);
end;

procedure Tfradev.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  inherited AtualizaFiltroUQTabela;
  // CalculaTotais;

end;

procedure Tfradev.btLimpaBuscaClick(Sender: TObject);
begin
  Self.edbusca.Text := '';
  inherited;

end;

procedure Tfradev.btOcultaExibeDetalheClick(Sender: TObject);
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

procedure Tfradev.btOcultaExibeObservacoesClick(Sender: TObject);
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

procedure Tfradev.btOcultaExibeTotaisClick(Sender: TObject);
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

procedure Tfradev.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfradev.listaobsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfradev.mnMarcarcomoReclassificacaoClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update mes set mesreclassicacao=9 where meschave=' + uqtabelameschave.AsString;
  consulta.ExecSQL;
  Self.ActAtualizar.Execute;

end;

end.
