unit ufravnd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Controls, Vcl.Dialogs, Vcl.Graphics, System.SysUtils, uFuncoes, uPegaBase,
  ufcremlt, System.ImageList, Vcl.ImgList,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,dateutils 

type
  Tfravnd = class(Tfrabase)
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
    ActVerificaCupons: TAction;
    ActFaturar: TAction;
    SplItens: TSplitter;
    ActGeraCupomFiscal: TAction;
    itmtoecodigo: TIntegerField;
    ActAjustaOperacao: TAction;
    dtl: tuniquery;
    Ddtl: TDataSource;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    itmproncm: TStringField;
    ActInfoComplementar: TAction;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
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
    uqTotaismestotalprodutos: TFloatField;
    uqTotaismestotalservicos: TFloatField;
    ActAjustarEstagio: TAction;
    ActAlterarOperador: TAction;
    ActGerarCobranca: TAction;
    tit: tuniquery;
    tittitcodigo: TIntegerField;
    plDetalhes: TPanel;
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
    ActImportaTXTNFE: TAction;
    uqtabelamesinclusao: TDateTimeField;
    ActCancelarFaturamento: TAction;
    mnMarcarcomoReclassificacao: TMenuItem;
    uqtabelameshora: TStringField;
    uqTotaismesrfaturado: TFloatField;
    mnAjustarRegimetributario: TMenuItem;
    pro: tuniquery;
    procstcodigo: TStringField;
    plResumoModalidades: TPanel;
    Panel2: TPanel;
    DBResumoModalidades: TDBGrid;
    mostracalculototal: TProgressBar;
    uqDtl: TUniQuery;
    uqDtlltechave: TIntegerField;
    uqDtlmdaidentificacao: TStringField;
    uqDtldtlvalor: TFloatField;
    uqDtlmdacodigo: TIntegerField;
    uqDtlmeschave: TIntegerField;
    uqtabelaccxchave: TIntegerField;
    pllinha1: TPanel;
    Pltotalvendas: TPanel;
    Pltotaldescontos: TPanel;
    plTrocaDevol: TPanel;
    PltotalDoacao: TPanel;
    Pltotalliquido: TPanel;
    PlTotalCancelado: TPanel;
    pllinha2: TPanel;
    PlTotalServicos: TPanel;
    PlTotalRefaturado: TPanel;
    Pltotalnfe: TPanel;
    PlTotalProdutos: TPanel;
    uqtabelamesrefeicao: TIntegerField;
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
    procedure ActVerificaCuponsExecute(Sender: TObject);
    procedure ActFaturarExecute(Sender: TObject);
    procedure ActGeraCupomFiscalExecute(Sender: TObject);
    procedure ActAjustaOperacaoExecute(Sender: TObject);
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
    procedure ActImportaTXTNFEExecute(Sender: TObject);
    procedure mnMarcarcomoReclassificacaoClick(Sender: TObject);
    procedure mnAjustarRegimetributarioClick(Sender: TObject);
    procedure fmddtfinalKeyPress(Sender: TObject; var Key: Char);
  private
    FSQLBaseTotais: String;
    procedure AtualizarDetalhe;
    procedure CalculaTotais;
    procedure AtualizaTotaisItens;
    function CancelarRFI(vMesChave, motivo: string; vMeaCodigo: string): string;
    procedure AjustaAlturaRodaPeGrid;
    procedure InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
    procedure modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
    function ModuloNFCe(vfuncao, vTrmCodigo, vMesChave, vClbCodigo: string): Boolean;
    function RegistraLote: String;
    procedure CalculaTotaisVelho;

  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  public
    { Public declarations }
    procedure Carregar; override;
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string): Boolean;

  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string; vtdecodigo, vorcchave, vMesChave: String;
    vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;

  TCancelar = function(AOwner: TComponent; conexao: TUniConnection; vLteChave: string; vMotivo: string; vusrcodigo: string; vMesChave: string; vMeaCodigo: string;
    vtnccodigo: string): string;

  TValidaProdutos = Function(AOwner: TComponent; conexao: TUniConnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;

var
  fravnd: Tfravnd;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '02.04.09.001-01';
  vPlTitMdl = 'Saídas';

  // Fim ID do Módulo fravnd

implementation

{$R *.dfm}

uses ufvndsimples, ufdtmvnd, ufimpcuf, ufvndfaturamento, ufVndAcm, ufrfivnd, ufimpnfe;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravnd := Tfravnd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravnd := Tfravnd.Create(pCargaFrame);
  try
    fravnd.CriaAcoesDeAcesso;
  finally
    fravnd.Free;
  end;
end;

exports formuFrame, defineacesso;

function Tfravnd.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string): Boolean;
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

procedure Tfravnd.AjustaAlturaRodaPeGrid;
begin
  PnlRodapeGrid.Height := PCDetalhes.Height + plTituloItensObservacoes.Height + plDetalhes.Height;
end;

procedure Tfravnd.AjustarCFOPdoItens1Click(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'update itm set cfocfop=' + QuotedStr(uqtabelatoecfopsaida.AsString) + ', toecodigo=' + uqtabelatoecodigo.AsString + ' where meschave=' +
      uqtabelameschave.AsString;
    consulta.ExecSQL;
    uqtabela.Next;
  end;

end;

procedure Tfravnd.uqItmTotaisAfterOpen(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfravnd.uqItmTotaisAfterRefresh(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfravnd.uqTotaisBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  uqTotais.FilterSQL := uqtabela.FilterSQL;
end;

function Tfravnd.CancelarRFI(vMesChave: string; motivo: string; vMeaCodigo: string): string;
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

procedure Tfravnd.Carregar;
begin

  consulta.Close;
  consulta.Connection := Self.zcone;
  consulta.SQL.Text := 'SELECT cfgdefinetoeatendimento, cfgidentificatecnico, cfgidentificavendedor FROM cfgmsai;';
  consulta.Open;

  if consulta.Fields[0].AsInteger = 1 then
    ActAjustaOperacao.Visible := True;

  if consulta.Fields[1].AsInteger = 1 then
    ActAlterarTecnico.Visible := True;

  if consulta.Fields[2].AsInteger = 1 then
    ActAlterarColaborador.Visible := True;

  inherited Carregar;

  CarregarColunas(listaobs);
  CarregarColunas(listaitm);

  btOcultaExibeObservacoes.Click;
  AjustaAlturaRodaPeGrid;

end;

procedure Tfravnd.ActAjustaOperacaoExecute(Sender: TObject);
var
  ExecForm: function(AOwner: TComponent; conexao: TUniConnection; pAcesso: TAcesso; pMesChave: Integer): string;
  vlPack: NativeUInt;
Begin
  vlPack := LoadPackage('modulos\mdov.bpl');
  If vlPack <> 0 Then
    try
      @ExecForm := GetProcAddress(vlPack, PChar('formu'));

      if Assigned(ExecForm) then
        ExecForm(Application, zcone, Acesso, uqtabelameschave.AsInteger);
    finally
      DoUnLoadPackage(Application, vlPack);
    end;
End;

procedure Tfravnd.ActAlterarClienteExecute(Sender: TObject);
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

  End;

end;

procedure Tfravnd.ActAjustarEstagioExecute(Sender: TObject);
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
        consulta.SQL.Text := 'delete from rfm where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr('AF') + ' where meschave=' + uqtabelameschave.AsString;
        consulta.ExecSQL;

      End;

    End;
  end
  else
    ShowMessage('Atenção: ' + #13 + #13 + 'Só podem ser alterados lançamentos do tipo "Movimento em Andamento" e esteja no estágio "Digitação Manual"!' + #13 + 'Situação: ' +
      Self.uqtabelatemcodigo.AsString + #13 + 'Estágio : ' + Self.uqtabelatdfcodigo.AsString);

end;

procedure Tfravnd.ActAlterarColaboradorExecute(Sender: TObject);
var
  vlMesChave: String;
begin

  uqtabela.DisableControls;
  try
    vlMesChave := Self.uqtabelameschave.AsString;
    (* Chama o formulário para registrar a alteração com (filtro) Código 3 - Alteração de VendecdorTécnico *)
    CriaFormulario(TfVndAcm, '', vlMesChave, '3');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;

end;

procedure Tfravnd.ActAlterarExecute(Sender: TObject);
begin

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

    CriaFormulario(tfvndsimples, Self.uqtabelameschave.AsString, '');
  End;

end;

procedure Tfravnd.ActAlterarOperadorExecute(Sender: TObject);
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
    CriaFormulario(TfVndAcm, '', vlMesChave, '9');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;

end;

procedure Tfravnd.ActAlterarTecnicoExecute(Sender: TObject);
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
    CriaFormulario(TfVndAcm, '', vlMesChave, '2');
    uqtabela.Locate('meschave', vlMesChave, []);
  finally
    uqtabela.EnableControls;
  end;
end;

procedure Tfravnd.ActAtualizarExecute(Sender: TObject);
Begin
  Inherited;

   CalculaTotais;

  { AtualizarDetalhe; }

end;

procedure Tfravnd.ActCancelarExecute(Sender: TObject);
var
  vMotivo: string;
  vlMeaCodigo: string;
  vlAcao: string;

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
      If Application.MessageBox(PChar('Confirma o CANCELAMENTO da Venda selecionada?'), PChar('Cancelamento'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
        = idYes Then
      Begin
        try

          vlMeaCodigo := MostraLista('mmea', '');

          Repeat
            vMotivo := InputBox('Cancelamento TOTAL !', 'Descreva o complemento do motivo para o Cancelamento: ', '');
          Until vMotivo <> '';

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

          CancelarRFI(Self.uqtabelameschave.AsString, vMotivo, vlMeaCodigo);

          if (uqtabelatdfcodigo.AsString = '55') or (uqtabelatdfcodigo.AsString = '65') then
          begin
            InutilizarNumeracao(uqtabelameschave.AsInteger, uqtabelatdfcodigo.AsString);
          end;

          ShowMessage('Cancelamento realizado com sucesso!');

        except
          ShowMessage('Falha de Cancelamento!');
        end;

        Self.ActAtualizar.Execute;
      End;

  end;
end;

procedure Tfravnd.InutilizarNumeracao(vMesChave: Integer; vtdfcodigo: String);
var
  arq: string;
Begin
  if vtdfcodigo = '55' then
    modulonfe(arq, rnfInutilizarDireto, vMesChave.ToString);

  if vtdfcodigo = '65' then
    ModuloNFCe('InutilizarNumerosNFCEDireto', Acesso.Terminal.ToString, vMesChave.ToString, Acesso.Usuario.ToString);

end;

function Tfravnd.ModuloNFCe(vfuncao: string; vTrmCodigo: string; vMesChave: string; vClbCodigo: string): Boolean;
type
  Tmodulonfce = function(AOwner: TComponent; conexao: TUniConnection; vMesChave: string; vfuncao: string; Acesso: TAcesso; vImprimir: Boolean; vConsultouSefaz: Boolean;
    vemail: string): Boolean;
var
  ModuloNFCe: Tmodulonfce;
  vlRetorno: Boolean;
  vlPackNFCe: Cardinal;
begin
  Result := false;
  vlPackNFCe := 0;
  vlPackNFCe := LoadPackage('modulos\mnfegourmet.bpl');
  if vlPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vlPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Self.zcone, vMesChave, vfuncao, Acesso, false, false, '');
    Result := vlRetorno;

  end;
  DoUnLoadPackage(Application, vlPackNFCe);
End;

Procedure Tfravnd.modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
type
  TModuloNFe = function(AOwner: TComponent; conexao: TUniConnection; varq: string; vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso; vConsultouSefaz: Boolean): Boolean;
var
  modnfe: TModuloNFe;

  ch: string;
  vu: string;
  vpack: Cardinal;
begin
  vpack := LoadPackage('modulos\mnfegourmet.bpl');
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

procedure Tfravnd.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  If Self.uqtabelamesprotocolo.AsString <> '' Then
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser Excluído!')
  Else
    Inherited;
end;

procedure Tfravnd.ActFaturarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfvndfaturamento, '', '');
end;

procedure Tfravnd.ActFinalizarExecute(Sender: TObject);
var
  vRetLote: String;
  vlMdacodigo: string;
  vlTfpCodigo: Integer;

begin
  inherited;

  if dtl.RecordCount>0 then
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

function Tfravnd.RegistraLote: String;
type
  TRegistraLote = function(AOwner: TComponent; conexao: TUniConnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string; desconto: string;
    Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True;
    pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;
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

procedure Tfravnd.ActGeraCupomFiscalExecute(Sender: TObject);
var
  ValidaProdutos: TValidaProdutos;
  vPodeProdutos: Boolean;
begin
  inherited;

  uqtabela.Refresh;

  if (uqtabelatdfcodigo.AsString = '2D') and (uqtabelatemcodigo.AsInteger = 9) then
  begin
    Application.MessageBox(PChar('Este registro já é um Cupom Fiscal!'), 'Atenção', MB_OK + MB_ICONWARNING);
    exit;
  end;

  if not(uqtabelatdfcodigo.AsString = '00') then
  begin
    Application.MessageBox(PChar('Cupom Fiscal não pode ser gerado!' + #13 + #13 + 'Somente registros do tipo "Movimento em Andamento" podem ser transformados em Cupom Fiscal.'),
      'Atenção', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  Pack := LoadPackage('modulos\mvpr.bpl');
  If Pack <> 0 Then
    Try
      @ValidaProdutos := GetProcAddress(Pack, PChar('ValidaProdutos'));

      If Assigned(ValidaProdutos) Then
        vPodeProdutos := ValidaProdutos(Application, zcone, uqtabelameschave.AsString);

    Finally
      DoUnLoadPackage(Application, Pack);
    End;

  case vPodeProdutos of
    True:
      begin
        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET tdfcodigo = ''2D'', temcodigo = 8 WHERE meschave = ' + uqtabelameschave.AsString;
        consulta.ExecSQL;

        Sleep(500);

        Application.MessageBox(PChar('Registro enviado para o Impressor Fiscal!' + #13 + #13 + 'Aguarde impressão e atualize a tela.'), 'Geração de Cupom Fiscal',
          MB_OK + MB_ICONWARNING);
      end;
  end;

  Sleep(500);
  ActAtualizar.Execute;
end;

procedure Tfravnd.ActGerarCobrancaExecute(Sender: TObject);
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
  // CriaFormulario(Tfrfivnd, Self.tittitcodigo.AsString, uqtabelameschave.AsString);

  if tittitcodigo.AsString <> '' then
    CriaFormulario(Tfcremlt, Self.tittitcodigo.AsString, '');

  uqtabela.RecNo := vRecno;
end;

procedure Tfravnd.ActImportaTXTNFEExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfimpnfe, fimpnfe);
  fimpnfe.zcone := Self.zcone;
  if fimpnfe.ShowModal = mrok then
    Self.ActAtualizar.Execute;
end;

procedure Tfravnd.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfvndsimples, '', '');
end;

procedure Tfravnd.ActInfoComplementarExecute(Sender: TObject);
begin
  If Self.uqtabelamesprotocolo.AsString <> '' Then
  begin
    Application.MessageBox(PChar('Este registro é uma NFE. Não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  MostraLista('mtom', Self.uqtabelameschave.AsString);
end;

procedure Tfravnd.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(listaobs);
  SalvarColunas(listaitm);

  inherited;
end;

procedure Tfravnd.ActSituacaoComissaoExecute(Sender: TObject);
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

procedure Tfravnd.ActVerificaCuponsExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfimpcuf, '', '');
end;

procedure Tfravnd.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfravnd.DBResumoModalidadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfravnd.DSTabelaDataChange(Sender: TObject; Field: TField);
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

procedure Tfravnd.fmddtfinalKeyPress(Sender: TObject; var Key: Char);
begin
  edbusca.text := '';

    fmd.Locate('fmdtitulo', cbTipoData.text, []);

    if fmd.State <> dsbrowse then
      fmd.Post;

  inherited;

end;

procedure Tfravnd.AtualizarDetalhe;
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

procedure Tfravnd.CalculaTotais;
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
  //  uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');
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
    uqDtl.SQL.Add('  inner JOIN lte ');
    uqDtl.SQL.Add('    ON mlt.ltechave = lte.ltechave ');

    uqDtl.SQL.Add('WHERE rfi.tfdcodigo IN ( 2) ');
    uqDtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    uqDtl.SQL.Add('AND mes.tdfcodigo <> ' + QuotedStr('RF') + ' ');
    uqDtl.SQL.Add('AND mes.mesrefeicao = 0 ');


    uqDtl.SQL.Add('AND rfi.tficodigo ');
    uqDtl.SQL.Add('AND mes.flacodigo = :flacodigo ');
    uqDtl.SQL.Add('-- filtros ');
   // uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');

    uqDtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;

    try
      if not fmd.IsEmpty then
        vlFiltros := ' and mesinclusao ' + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)+' '+ cfgmgoucfgmgouhoravirada.AsString ) + ') and (' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', incday(fmdfmddtfinal.AsFloat,1))+ ' '+ Timetostr(IncSecond(cfgmgoucfgmgouhoravirada.AsDateTime, -1))) + ')';

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
    uqtabela.First;
    while not uqtabela.eof do
    begin
      mostracalculototal.Position := mostracalculototal.Position + 1;
      Application.ProcessMessages;

      vlTotalDesconto := vlTotalDesconto + uqtabelamesdesconto.AsCurrency;

      vlTotalProdutos := vlTotalProdutos + uqtabelamesprodutos.AsCurrency;
      vlTotalServicos := vlTotalServicos + uqtabelamesservicos.AsCurrency;

      if uqtabelasdecodigo.AsString = '02' then
        vlTotalCancelado := vlTotalCancelado + uqtabelamestotal.AsCurrency;

      if uqtabelasdecodigo.AsString = 'RF' then
        vlTotalRefaturado := vlTotalRefaturado + uqtabelamestotal.AsCurrency;

      if ((uqtabelatdfcodigo.AsString = '65') or (uqtabelatdfcodigo.AsString = '55')) and (uqtabelasdecodigo.AsString<>'02') then
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
          if (uqDtl.FieldByName('mdacodigo').AsInteger = 15) or (uqDtl.FieldByName('mdacodigo').AsInteger = 17) then
            vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtl.FieldByName('dtlvalor').AsCurrency;

          if (uqDtl.FieldByName('mdacodigo').AsInteger = 11) or (uqDtl.FieldByName('mdacodigo').AsInteger = 22) or (uqDtl.FieldByName('mdacodigo').AsInteger = 33) or
            (uqDtl.FieldByName('mdacodigo').AsInteger = 77) then
            vlTotalTroco := vlTotalTroco + uqDtl.FieldByName('dtlvalor').AsCurrency;

          if (uqDtl.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
          begin
            vlTotalDoacoes := vlTotalDoacoes + uqDtl.FieldByName('dtlvalor').AsCurrency;
          end;

          vlTotalBruto := vlTotalBruto + uqDtl.FieldByName('dtlvalor').AsCurrency;

          uqDtl.Next;

          if (uqDtlmeschave.AsInteger <> uqtabelameschave.AsInteger) or (uqDtl.eof) then
            break;

        end;

      end;

      uqtabela.Next;
    end;

        vlTotalBruto :=0;
     uqtabela.First;
    while not uqtabela.eof do
    begin

       vlTotalBruto := vlTotalBruto + uqtabelamesvalor.AsCurrency;

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

      plResumoModalidades.Visible := True;


    //vlTotalBruto:=vlTotalBruto+ vlTotalDesconto;
    // vlTotalBruto := uqTotaismesvalor.AsFloat;
    // vlTotalDesconto := uqTotaismesdeconto.AsFloat;

    vlTotalLiquido := vlTotalBruto - vlTotalDesconto;

    // vlTotalNF := uqTotaismestotalnf.AsFloat;

    // vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
    // vlTotalServicos := uqTotaismestotalservicos.AsFloat;

    // vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;
    // vlTotalRefaturado := uqTotaismesrfaturado.AsFloat;

    Pltotalvendas.Caption := 'Bruto: ' + FormatFloat('##,###,##0.00', vlTotalBruto { *+ vlTotalCancelado* } - vlTotalRefaturado);
    Pltotaldescontos.Caption := '(-) Descontos: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
    PltotalDoacao.Caption := '(-) Doações: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

    Pltotalliquido.Caption := '(=) : ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
      (vlTotalTrocaDevo + vlTotalRefaturado + vlTotalDoacoes  + vlTotalCancelado  ));
    PlTotalRefaturado.Caption := 'Refaturado: ' + FormatFloat('##,###,##0.00', vlTotalRefaturado);

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
  finally
    uqtabela.RecNo := registroatual;
    uqtabela.EnableControls;
    dtl.EnableControls;
    TotaisDtls.EnableControls;

    mostracalculototal.Position := 0;
    Application.ProcessMessages;

  end;
end;


procedure Tfravnd.CalculaTotaisVelho;
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
    SQLBaseTotais := Trim(Copy(uqDtlConvenios.SQL.Text, 1, Pos('-- Filtros', uqDtlConvenios.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlConvenios.Close;
  uqDtlConvenios.SQL.Text := SQLBaseTotais;
  uqDtlConvenios.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlConvenios.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlConvenios.FilterSQL := uqtabela.FilterSQL;

  if uqDtlConvenios.Params.FindParam('flacodigo') <> nil then
    uqDtlConvenios.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlConvenios.Open;

  // fim dos convenios

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlTotais.SQL.Text, 1, Pos('-- Filtros', uqDtlTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlTotais.Close;
  uqDtlTotais.SQL.Text := SQLBaseTotais;
  uqDtlTotais.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
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

      if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 11) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 22) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 33) or
        (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 77) then
        vlTotalTroco := vlTotalTroco + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

      if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
      begin
        vlTotalDoacoes := vlTotalDoacoes + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;
      end;

    end;
    uqDtlTotais.Next;
  end;

  TotaisDtls.EnableControls;

  plResumoModalidades.Visible := True;

  SQLBaseTotais := '';

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

  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido := uqTotaismestotal.AsFloat;

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

  Pltotalvendas.Caption := 'Bruto R$: ' + FormatFloat('##,###,##0.00', vlTotalBruto + vlTotalCancelado - vlTotalRefaturado);
  Pltotaldescontos.Caption := 'Descontos R$: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
  PltotalDoacao.Caption := 'Doações R$: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

  Pltotalliquido.Caption := 'Líquido R$: ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
    (vlTotalTrocaDevo + vlTotalRefaturado + vlTotalDoacoes { + vlTotalCancelado } ));
  PlTotalRefaturado.Caption := 'Total Refaturado: ' + FormatFloat('##,###,##0.00', vlTotalRefaturado);

  Pltotalnfe.Caption := 'Total FISCAL: ' + FormatFloat('##,###,##0.00', vlTotalNF);

  PlTotalProdutos.Caption := 'Produtos R$: ' + FormatFloat('##,###,##0.00', vlTotalProdutos - vlTotalRefaturado);
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

  plTrocaDevol.Caption := 'Troca/Dev/Vale: ' + FormatFloat('##,###,##0.00', vlTotalTrocaDevo { + vlTotalTroco } );

  TotaisDtls.Filter := 'mdacodigo<>11';
  TotaisDtls.Filtered := True;

  TotaisDtls.IndexFieldNames := 'mdacodigo';
end;

procedure Tfravnd.AtualizaTotaisItens;
begin
  plQtdItens.Caption := 'Qt.Itens : ' + uqItmTotaisitmitens.AsString;
  plBrutoItens.Caption := 'Total Bruto: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotal.AsFloat);
  plDescontoItens.Caption := 'Total Desconto: ' + FormatFloat('#,##0.00', uqItmTotaisitmdesconto.AsFloat);
  plLiquidoItens.Caption := 'Total Líquido: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotalliq.AsFloat);
end;

procedure Tfravnd.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  inherited AtualizaFiltroUQTabela;
  CalculaTotais;
end;

procedure Tfravnd.btLimpaBuscaClick(Sender: TObject);
begin
  Self.edbusca.Text := '';
  inherited;

end;

procedure Tfravnd.btOcultaExibeDetalheClick(Sender: TObject);
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

procedure Tfravnd.btOcultaExibeObservacoesClick(Sender: TObject);
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

procedure Tfravnd.btOcultaExibeTotaisClick(Sender: TObject);
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

procedure Tfravnd.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfravnd.listaobsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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


procedure Tfravnd.mAjustarFilialClick(Sender: TObject);
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
          consulta.SQL.Text := 'update dtl set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where dtlchave=' + dtl.FieldByName('dtlchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try
          consulta.Close;
          consulta.SQL.Text := 'update rfm set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where rfmchave=' + dtl.FieldByName('rfmchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mfi set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where mfichave=' + dtl.FieldByName('mfichave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update lte set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where ltechave=' + dtl.FieldByName('ltechave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mlt set flacodigo=' + dtl.FieldByName('rfiflacodigo').AsString + ' where mltchave=' + dtl.FieldByName('mltchave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update mor set flacodigo=' + uqtabela.FieldByName('flacodigo').AsString + ' where meschave=' + uqtabela.FieldByName('meschave').AsString;
          consulta.ExecSQL;
        except

        end;

        try

          consulta.Close;
          consulta.SQL.Text := 'update itm set flacodigo=' + uqtabela.FieldByName('flacodigo').AsString + ' where meschave=' + uqtabela.FieldByName('meschave').AsString;
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

procedure Tfravnd.mnAjustarRegimetributarioClick(Sender: TObject);
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
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.102') + ', toecodigo=' + uqtabelatoecodigo.AsString +
          ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

      end;

      if procstcodigo.AsString = '060' then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.405') + ', toecodigo=' + uqtabelatoecodigo.AsString +
          ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update itm set cstcodigo=' + QuotedStr(procstcodigo.AsString) + ' , cfocfop=' + QuotedStr('5.405') + ', toecodigo=' + uqtabelatoecodigo.AsString +
          ' where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

      end;

      itm.Next;
    end;
    uqtabela.Next;
  end;
end;

procedure Tfravnd.mnMarcarcomoReclassificacaoClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update mes set mesreclassicacao=9 where meschave=' + uqtabelameschave.AsString;
  consulta.ExecSQL;
  Self.ActAtualizar.Execute;

end;

end.
