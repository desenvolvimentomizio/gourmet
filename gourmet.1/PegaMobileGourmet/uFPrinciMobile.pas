unit uFPrinciMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.MultiView, FMX.StdCtrls, FMX.ListBox,
  FMX.Layouts, FMX.Objects, FMX.Edit, IdHashMessageDigest, System.ImageList,
  FMX.ImgList, FMX.EditBox, FMX.SpinBox, Data.Bind.EngExt, FMX.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfPrinciGourmetMobile = class(TForm)
    pnPrincipal: TPanel;
    tcPaginas: TTabControl;
    TabLogin: TTabItem;
    TabMesa: TTabItem;
    TabPedido: TTabItem;
    TabCardGrp: TTabItem;
    TabCardOpcao: TTabItem;
    MVMenu: TMultiView;
    ToolBar2: TToolBar;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    TBPrincipal: TToolBar;
    lvTituloPrincipal: TLabel;
    MasterButton: TSpeedButton;
    rclogin1: TRectangle;
    imLogomizio: TImage;
    rclogin2: TRectangle;
    rcUsuario: TRectangle;
    rcCentralizaUsuario: TRectangle;
    edUsuario: TEdit;
    lbUsuario: TLabel;
    rcSenha: TRectangle;
    rcCentralizaSenha: TRectangle;
    edSenha: TEdit;
    lbSenha: TLabel;
    rclogin3: TRectangle;
    rcBotoesLogin: TRectangle;
    Rectangle9: TRectangle;
    btCancela: TButton;
    btConfirma: TButton;
    rcLogin4: TRectangle;
    PnMesa1: TPanel;
    PnMesa10: TPanel;
    PnMesa11: TPanel;
    PnMesa12: TPanel;
    PnMesa13: TPanel;
    PnMesa14: TPanel;
    PnMesa15: TPanel;
    PnMesa16: TPanel;
    PnMesa17: TPanel;
    PnMesa18: TPanel;
    PnMesa19: TPanel;
    PnMesa2: TPanel;
    PnMesa20: TPanel;
    PnMesa21: TPanel;
    PnMesa22: TPanel;
    PnMesa23: TPanel;
    PnMesa24: TPanel;
    PnMesa3: TPanel;
    PnMesa4: TPanel;
    PnMesa5: TPanel;
    PnMesa6: TPanel;
    PnMesa7: TPanel;
    PnMesa8: TPanel;
    PnMesa9: TPanel;
    PnMesa25: TPanel;
    VertScrollBox1: TVertScrollBox;
    rcRodapePedido: TRectangle;
    rcRodapePedidoTopo: TRectangle;
    rcTotaisPedido: TRectangle;
    lbRecebioPedido: TLabel;
    lbFaltaPedido: TLabel;
    rcTotalPedido: TRectangle;
    lbTituloTotalPedido: TLabel;
    lbTotalPedido: TLabel;
    sbPessoas: TSpinBox;
    rcDividir: TRectangle;
    lbTituloDividir: TLabel;
    btnTabPedConfirma: TButton;
    rcRodapePedidoRodaPe: TRectangle;
    BtnTabPedPedido: TButton;
    GridTabCardClasseGrupo: TListBox;
    GridTabCardTipoGrupo: TListBox;
    BSTgr: TBindSourceDB;
    BSCgr: TBindSourceDB;
    BSGrp: TBindSourceDB;
    BtTabMesasAtualiza: TButton;
    BtTabPedRetornoLogin: TButton;
    BtnMostraItem: TButton;
    BtTabPedIncluirItem: TButton;
    BtTabPedExcluirItem: TButton;
    tbPedido: TToolBar;
    lvPedido: TListView;
    BSvItens: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkListControlToField3: TLinkListControlToField;
    StyleBook1: TStyleBook;
    GridTabCardProdutos: TListView;
    BSPro: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    GridTabCardGrupo: TListBox;
    LinkListControlToField6: TLinkListControlToField;
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EventoBtnClick(Sender: TObject);
    procedure BtnMostraItemClick(Sender: TObject);
    procedure BtTabMesasAtualizaClick(Sender: TObject);
    procedure BtTabPedRetornoLoginClick(Sender: TObject);
    procedure BtTabPedExcluirItemClick(Sender: TObject);
    procedure BtnTabPedPedidoClick(Sender: TObject);
    procedure BtTabPedIncluirItemClick(Sender: TObject);
    procedure GridTabCardClasseGrupoClick(Sender: TObject);
    procedure GridTabCardTipoGrupoClick(Sender: TObject);
    procedure GridTabCardGrupoItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    procedure CarregaMesa;
    procedure GeraMessa(Panel: TPanel; QtdPanel, Posi: integer);
    procedure MostraTab(Tab: TTabItem);
    procedure VerificaMesa;

    procedure RetornoMesa(const AResult: TModalResult);
    procedure RetornoLogin(const AResult: TModalResult);
    procedure ExcluiItemPedido(const AResult: TModalResult);
    procedure ApresentaItem(pOrcChave, pItoChave: integer);
    procedure EnviaItens;
    procedure LimpaTotal;
    procedure AbreCardapio;
    procedure CarragaDadosGerais;
    procedure SolicitaFechamento(vNumMesa: string);
    procedure Comanda;
    procedure LimpaTabelaItens;
    procedure VerificaEstadoCozinha;

    procedure MostraCardapio;
    procedure MostraItensGrupo;

    { Private declarations }
  public
    { Public declarations }
    vpcznchave: integer;
    vpClbCodigo: integer;
    vpOrcchave: integer;
    vpNumMesa: string;
    vpClbIdentificacao: String;

    vpQtdColulas: integer;
    vpQtdMesas: integer;
    vpMesaGer: integer;

    vpGrpIdentificacao:string;
    vpTgrIdentificacao:string;
    vpCGrIdentificacao:string;
  end;

var
  fPrinciGourmetMobile: TfPrinciGourmetMobile;

implementation

uses
  uDmdados, ufItem, uRCMDados;

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

function MD5texto(const Texto: string): string;

var
  idmd5: TIdHashMessageDigest5;
  hash: T4x4LongWordRecord;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(Texto);
  finally
    idmd5.Free;
  end;
end;

procedure TfPrinciGourmetMobile.ExcluiItemPedido(const AResult: TModalResult);
begin
  if AResult = mrYes then
  begin
    if dmDados.vtItens.Active then
    begin
      if dmDados.vtItensStatus.AsInteger = 0 then
        dmDados.vtItens.Delete;
    end;
  end;
end;

procedure TfPrinciGourmetMobile.RetornoMesa(const AResult: TModalResult);
begin
  if AResult = mrYes then
  begin
    MostraTab(TabMesa);
  end;
end;

procedure TfPrinciGourmetMobile.RetornoLogin(const AResult: TModalResult);
begin
  if AResult = mrYes then
  begin
    MostraTab(TabLogin);
  end;
end;

procedure TfPrinciGourmetMobile.BtTabMesasAtualizaClick(Sender: TObject);
begin
  CarregaMesa;
end;

procedure TfPrinciGourmetMobile.BtTabPedExcluirItemClick(Sender: TObject);
begin
  if dmDados.vtItens.Active then
  begin
    if not dmDados.vtItens.IsEmpty then
    begin
      if dmDados.vtItensStatus.AsInteger = 1 then
        ShowMessage('Este item já foi solicitado para cozinha, Cancelamento somente no caixa !')
      else
        MessageDlg('Deseja excluir o item ?', TMsgDlgType.mtConfirmation, mbYesNo, 0, ExcluiItemPedido);
    end
    else
      ShowMessage('Não existem itens na comanda, não é possível excluir!');
  end;

end;

procedure TfPrinciGourmetMobile.VerificaEstadoCozinha;
begin
  // verificando se existe abertura de cozinha em aberto
  dmDados.CarregaEstadoCozinha;
  vpcznchave := dmDados.memczncznchave.AsInteger;

  if vpcznchave = 0 then
  begin
    MostraTab(TabLogin);
  end
  else
  begin
    ShowMessage('Cozinha Fechada!');
  end;

end;

procedure TfPrinciGourmetMobile.BtTabPedIncluirItemClick(Sender: TObject);

var
  vItem: integer;
  vpode: boolean;
  vlENumero: integer;
begin
  if BtnTabPedPedido.Tag = 1 then
    Comanda;

  // chamando o cardápio
  AbreCardapio;

  // mostrando os itens de cardápio
  MostraTab(TabCardGrp);

end;

procedure TfPrinciGourmetMobile.BtTabPedRetornoLoginClick(Sender: TObject);
begin
  if tcPaginas.ActiveTab = TabMesa then
  begin
    MessageDlg('Trocar de usuário ?', TMsgDlgType.mtConfirmation, mbYesNo, 0, RetornoLogin);
  end
  else if tcPaginas.ActiveTab = TabPedido then
  begin

    VerificaMesa;
    if (not dmDados.vtItens.IsEmpty) and (btnTabPedConfirma.Tag in [0, 2]) then
      MessageDlg('Existem itens que não roram enviados para cozinha, Deseja Cancelar ?', TMsgDlgType.mtConfirmation, mbYesNo, 0, RetornoMesa)
    else
    begin
      LimpaTotal;
      LimpaTabelaItens;
      RetornoMesa(mrYes);
    end;

  end

  else if tcPaginas.ActiveTab = TabCardGrp then
  begin
    if GridTabCardTipoGrupo.Visible then
    begin
      GridTabCardGrupo.Visible := False;
      GridTabCardTipoGrupo.Visible := False;
      GridTabCardClasseGrupo.Visible := true;
    end
    else if GridTabCardClasseGrupo.Visible then
    begin
      GridTabCardGrupo.Visible := False;
      GridTabCardTipoGrupo.Visible := False;
      GridTabCardClasseGrupo.Visible := False;
      MostraTab(TabPedido);
    end
    else if GridTabCardGrupo.Visible then
    begin
      GridTabCardGrupo.Visible := False;
      GridTabCardTipoGrupo.Visible := False;
      GridTabCardClasseGrupo.Visible := False;
      MostraTab(TabPedido);

    end;
  end
  else if tcPaginas.ActiveTab = TabCardOpcao then
  begin
    GridTabCardGrupo.Visible := False;
    GridTabCardTipoGrupo.Visible := False;
    GridTabCardClasseGrupo.Visible := False;
    MostraTab(TabPedido);

  end;

end;

procedure TfPrinciGourmetMobile.btCancelaClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfPrinciGourmetMobile.btConfirmaClick(Sender: TObject);
var
  vlSenhaMD5: string;
  vlSUsuario: string;
begin

  vlSenhaMD5 := AnsiLowerCase(Copy(MD5texto(UpperCase(edSenha.Text + 'pega')), 1, 15));
  vlSUsuario := edUsuario.Text;

  dmDados.ConsultaColaborador(vlSUsuario, vlSenhaMD5);

  if dmDados.memClb.IsEmpty then
  begin
    vpClbCodigo := 0;
    vpClbIdentificacao := '';
  end
  else
  begin
    vpClbCodigo := dmDados.memClb.fieldbyname('clbcodigo').AsInteger;
    vpClbIdentificacao := dmDados.memClb.fieldbyname('clbidentificacao').AsString;
    dmDados.memClb.Close;

    dmDados.QuantidadeMesa;

    if not dmDados.memcfg.IsEmpty then
    begin
      vpQtdMesas := dmDados.memcfg.fieldbyname('cfgmgouqtdmesas').AsInteger;
      dmDados.memcfg.Close;

    end
    else
    begin
      ShowMessage('Quantidade de mesas não configurada no sistema Péagsus ERP!');
    end;

    if vpClbCodigo = 0 then
    begin
      ShowMessage('Usuário ou senha invalida !');

      MostraTab(TabLogin);

      edSenha.Text := '';
      edUsuario.Text := '';
      edUsuario.SetFocus;
      TabLogin.SetFocus;

    end
    else
    begin
      CarragaDadosGerais;
      MostraTab(TabMesa);
      CarregaMesa;
    end;

  end;

  { DMDados.conexao.Connected := true;

    if DMDados.conexao.Connected then
    begin
    DMDados.clb.Close;
    DMDados.clb.SQL.Text := 'select clbidentificacao,clbcodigo from clb where clbsenha=' + QuotedStr(vlSenhaMD5) + ' and clbidentificacao=' + QuotedStr(vlSUsuario);

    DMDados.clb.Open;

    if DMDados.clb.IsEmpty then
    begin
    vpClbCodigo := 0;
    vpClbIdentificacao := '';
    end
    else
    begin
    vpClbCodigo := DMDados.clb.fieldbyname('clbcodigo').asinteger;
    vpClbIdentificacao := DMDados.clb.fieldbyname('clbidentificacao').AsString;
    DMDados.clb.Close;

    DMDados.cfg.Close;
    DMDados.cfg.Open;

    if not DMDados.cfg.IsEmpty then
    begin
    vpQtdMesas := DMDados.cfg.fieldbyname('cfgmgouqtdmesas').asinteger;
    DMDados.cfg.Close;

    end
    else
    begin
    ShowMessage('Quantidade de mesas não configurada no sistema Péagsus ERP!');
    end;

    end;

    DMDados.conexao.Connected := False;
    CarragaDadosGerais;

    end
    else
    begin
    ShowMessage('Não foi possivel conectar o servidor dedados!');
    vpClbCodigo := 0;
    end;

    if vpClbCodigo = 0 then
    begin
    ShowMessage('Usuário ou senha invalida !');

    MostraTab(TabLogin);

    edSenha.Text := '';
    edUsuario.Text := '';
    edUsuario.SetFocus;
    TabLogin.SetFocus;

    end
    else
    begin
    MostraTab(TabMesa);
    CarregaMesa;
    end; }

end;

Procedure TfPrinciGourmetMobile.CarragaDadosGerais;
begin
  dmDados.CarregaTgr;
  dmDados.CarregaCgr;
  dmDados.CarregaGrp;
  dmDados.CarregaSfn;
  dmDados.CarregaPro;
end;

procedure TfPrinciGourmetMobile.Button1Click(Sender: TObject);
begin
  ShowMessage('BOTAO')
end;

procedure TfPrinciGourmetMobile.BtnMostraItemClick(Sender: TObject);
begin
  { if not DMDados.vtItens.IsEmpty then
    ApresentaItem(DMDados.orcorcchave.asinteger, DMDados.vtItensitochave.asinteger); }

end;

procedure TfPrinciGourmetMobile.LimpaTotal;
begin
  lbTotalPedido.Text := FormatFloat('#,##0.00', 0);
  lbRecebioPedido.Text := FormatFloat('#,##0.00', 0);
  lbFaltaPedido.Text := FormatFloat('#,##0.00', 0);
end;

procedure TfPrinciGourmetMobile.Comanda;
begin
  if not dmDados.memOrc.IsEmpty then
  begin
    LimpaTotal;
    while not dmDados.vtItens.Eof do
    begin
      dmDados.vtItens.Delete;
    end;

    btnTabPedConfirma.Text := 'Confirma';
    btnTabPedConfirma.Tag := 0;
    BtnTabPedPedido.Tag := 0;
    BtnTabPedPedido.Text := 'Pedido';
    btnTabPedConfirma.Enabled := true;
    rcDividir.Visible := true;
  end;
end;

procedure TfPrinciGourmetMobile.LimpaTabelaItens;
begin

  if dmDados.vtItens.Active then
  begin
    dmDados.vtItens.DisableControls;
    dmDados.vtItens.First;
    while not dmDados.vtItens.Eof do
    begin
      dmDados.vtItens.Delete;
    end;
    dmDados.vtItens.EnableControls;
    lvPedido.Repaint;
  end;
end;

procedure TfPrinciGourmetMobile.EnviaItens;
begin

  if dmDados.vtItens.RecordCount > 0 then
  begin
    dmDados.vtItens.DisableControls;
    dmDados.vtItens.First;

    while not dmDados.vtItens.Eof do
    begin
      // verifica se o item não foi enviado para cozinha
      if dmDados.vtItensStatus.AsInteger = 0 then
      begin
        dmDados.SalvaItem(vpOrcchave, dmDados.vtItensprocodigo.AsInteger, dmDados.vtItenspuncodigo.AsInteger, dmDados.vtItensitoquantidade.AsFloat, 0, dmDados.vtItensObs.AsString,
          dmDados.vtItensitoitem.AsInteger, dmDados.vtItenssfncodigo.AsInteger, dmDados.vtItenscopos.AsInteger, dmDados.vtItenspratos.AsInteger, vpClbCodigo);

      end;
      dmDados.vtItens.Next;
    end;


    // gravando saberes e ingredients
    { if dmdados.tisi.Active then
      dmdados.tisi.ApplyUpdates; }

    // borda produtos fracionados
    { if dmdados.tbrd.Active then
      dmdados.tbrd.ApplyUpdates; }

    dmDados.vtItens.EnableControls;
  end;

end;

procedure TfPrinciGourmetMobile.SolicitaFechamento(vNumMesa: string);
var
  vTotal: Extended;
  vRecebimentos: Extended;
  vDesconto: Extended;
begin
  // carregando todos os itens do pediso

  // persistindo itens qua ainda não foram enviados para a cozinha
  // EnviaItens;

  // abrindo tarefas
  if not dmDados.vtItens.Active then
    dmDados.vtItens.Open
  else
  begin
    LimpaTotal;
    LimpaTabelaItens;
  end;

  // buscando itens do orçamento

  dmDados.Carregaito(vpOrcchave);

  vTotal := 0;
  vRecebimentos := 0;
  vDesconto := 0;

  // Carregando itens da mesa
  if not dmDados.memito.IsEmpty then
  begin

    dmDados.memito.First;
    while not dmDados.memito.Eof do
    begin
      dmDados.vtItens.Append;
      dmDados.vtItensorcchave.AsInteger := dmDados.memito.fieldbyname('orcchave').AsInteger;
      dmDados.vtItensitoitem.AsInteger := dmDados.memito.fieldbyname('itoitem').AsInteger;
      dmDados.vtItensitoquantidade.AsFloat := dmDados.memito.fieldbyname('itoquantidade').AsFloat;
      dmDados.vtItensprocodigo.AsInteger := dmDados.memito.fieldbyname('procodigo').AsInteger;
      dmDados.vtItenspronome.AsString := dmDados.memito.fieldbyname('pronome').AsString;
      dmDados.vtItensunisimbolo.AsString := dmDados.memito.fieldbyname('unisimbolo').AsString;
      dmDados.vtItenspuncodigo.AsInteger := dmDados.memito.fieldbyname('puncodigo').AsInteger;
      dmDados.vtItensStatus.AsInteger := 1;
      dmDados.vtItenstipo.AsInteger := 0;
      dmDados.vtItensitochave.AsInteger := dmDados.memito.fieldbyname('itochave').AsInteger;
      dmDados.vtItenspratos.AsInteger := 0;
      dmDados.vtItenscopos.AsInteger := 0;
      dmDados.vtItens.Post;
      vTotal := vTotal + dmDados.memito.fieldbyname('itototalav').AsFloat;

      { UniMainModule.Consulta.Close;
        UniMainModule.Consulta.SQL.Text := 'update imm set immmodo=1 where itochave=' + UniMainModule.itoitochave.AsString;
        UniMainModule.Consulta.ExecSQL; }

      dmDados.memito.Next;
    end;

    {
      // buscando dados de pagamentos
      UniMainModule.olt.Close;
      UniMainModule.olt.Params[0].AsInteger := UniMainModule.orcorcchave.AsInteger;
      UniMainModule.olt.Open;

      // calculando valores recebidos
      if not UniMainModule.olt.IsEmpty then
      begin
      UniMainModule.olt.First;
      while not UniMainModule.olt.Eof do
      begin
      if UniMainModule.olttipobaixa.AsInteger = 1 then
      begin
      vDesconto := vDesconto + UniMainModule.oltltedesconto.AsFloat;
      vRecebimentos := vRecebimentos + UniMainModule.oltltetotal.AsFloat;
      end;
      UniMainModule.olt.Next;
      end;
      end; }

    sbPessoas.Value := 1;
    btnTabPedConfirma.Text := 'Encerrar';
    btnTabPedConfirma.Tag := 1;
    BtnTabPedPedido.Tag := 1;
    BtnTabPedPedido.Text := 'Comanda';

  end;

  lbTotalPedido.Text := FormatFloat('#,##0.00', (vTotal - vDesconto));
  lbRecebioPedido.Text := FormatFloat('#,##0.00', vRecebimentos);
  lbFaltaPedido.Text := FormatFloat('#,##0.00', ((vTotal - vDesconto) - vRecebimentos));
  application.ProcessMessages;

  // mudando a TAG do btnPedConfirma para 1 que trata do encerramento do pedido
end;

procedure TfPrinciGourmetMobile.BtnTabPedPedidoClick(Sender: TObject);
begin
  if BtnTabPedPedido.Tag = 0 then
    SolicitaFechamento(vpNumMesa)
  else if BtnTabPedPedido.Tag = 1 then
    Comanda;
end;

procedure TfPrinciGourmetMobile.CarregaMesa;
var
  vNome: String;
  vPos: integer;
  vCont: integer;
  vQtdPanel: integer;
  vpanel: TPanel;
  x: String;
  i: integer;
  y: integer;
  vlLargura: integer;
  vlPnListaMesas: TPanel;
begin
  // Calculando quantidade de paineis para disposição das mesa
  vpMesaGer := 0;
  vlLargura := self.Width;

  if vlLargura < 320 then
    i := 3
  else
    i := 5;

  vQtdPanel := (vpQtdMesas div i);

  if (vpQtdMesas mod i) > 0 then
    vQtdPanel := vQtdPanel + 1;

  vPos := 1;

  FOR vPos := 1 to vQtdPanel do
  begin
    // Criadno Botões para apresentação das mesas

    if self.FindComponent('PnMesa' + IntToStr(vPos)) <> nil then
    begin
      vlPnListaMesas := (self.FindComponent('PnMesa' + IntToStr(vPos)) as TPanel);
      if vlPnListaMesas <> nil then
      begin
        x := vlPnListaMesas.Name;

        if vlPnListaMesas.Name = 'PnMesa' + IntToStr(vPos) then
        begin

          vlPnListaMesas.Height := 75;
          GeraMessa(vlPnListaMesas, vQtdPanel, vPos);
        end;
      end;
    end;

  end;
end;

procedure TfPrinciGourmetMobile.GeraMessa(Panel: TPanel; QtdPanel, Posi: integer);
var
  vBtn: TButton;
  vQtdBtn: integer;
  vPos: integer;
  vQtd: integer;
  i: integer;
  vlLargura: integer;
  vlBtnAtu: TButton;

begin

  vlLargura := Screen.Width;

  if vlLargura < 320 then
    vQtd := 3
  else
    vQtd := 5;

  // verificando quantidades de mesas por painel
  if Posi < QtdPanel then
    vQtdBtn := vQtd
  else
  begin
    // Virificando a quantidade de mesas do ultimo painel
    if (vpQtdMesas mod 5) = 0 then
      vQtdBtn := vQtd
    else
    begin
      // caso as mesas não são exatas gera
      // penas as mesas restantes
      if 5 > ((Posi * vQtd) - vpQtdMesas) then
        vQtdBtn := vQtd - ((Posi * vQtd) - vpQtdMesas)
      else
        vQtdBtn := vQtd;
    end;
  end;
  // gerando as mesas no painel atual
  vPos := 1;
  while vPos <= vQtdBtn do
  begin

    vpMesaGer := vpMesaGer + 1;
    if self.FindComponent('BtnMesa' + IntToStr(Posi) + IntToStr(vPos)) = nil then
    begin

      vBtn := TButton.Create(self);
      vBtn.Parent := Panel;

      vBtn.Name := 'BtnMesa' + IntToStr(Posi) + IntToStr(vPos); // IntToStr(QryDC_Resposta.RecNo);
      vBtn.Tag := vpMesaGer;

      vBtn.Margins.Top := 5;
      vBtn.Margins.Left := 5;
      vBtn.Margins.Left := 5;

      vBtn.Font.Size := 17;
      vBtn.ImageIndex := 0;

      vBtn.Align := TAlignLayout.Right;
      vBtn.Align := TAlignLayout.Left;

      vBtn.TextSettings.HorzAlign := TTextAlign.Center;

      vBtn.Width := Trunc((Panel.Width / vQtd) - 6);

      vBtn.Text := IntToStr(vpMesaGer);

      IF vPos = 2 THEN
      BEGIN
        vBtn.TextSettings.FontColor := TAlphaColorRec.Brown;

      END;

      vBtn.OnClick := EventoBtnClick;
    end;
    vPos := vPos + 1;

  end;

end;

procedure TfPrinciGourmetMobile.MostraItensGrupo;
begin
  if not dmDados.memtgr.IsEmpty then
  begin
    dmDados.memgrp.Filter := 'tgrcodigo=' + dmDados.memtgrtgrcodigo.AsString;
    dmDados.memgrp.Filtered := true;

    if dmDados.memgrp.RecordCount = 1 then
    begin

      GridTabCardGrupoItemClick(GridTabCardTipoGrupo,TListBoxItem(GridTabCardTipoGrupo.ItemByIndex(0)));
    end;

  end;

end;

procedure TfPrinciGourmetMobile.MostraCardapio;
begin
  if not dmDados.memcgr.IsEmpty then
  begin

    dmDados.memtgr.Filter := 'cgrcodigo=' + dmDados.memcgrcgrcodigo.AsString;
    dmDados.memtgr.Filtered := true;


    dmDados.memgrp.Filter := 'tgrcodigo=' + dmDados.memtgrtgrcodigo.AsString;
    dmDados.memgrp.Filtered := true;

    GridTabCardGrupo.Visible := true;
    GridTabCardTipoGrupo.Visible := true;
    GridTabCardClasseGrupo.Visible := False;

    if (dmDados.memtgr.RecordCount = 1) and (dmDados.memgrp.RecordCount = 1) then
    begin
      GridTabCardGrupoItemClick(GridTabCardTipoGrupo,TListBoxItem(GridTabCardTipoGrupo.ItemByIndex(0)) );
    end;

  end;

end;

procedure TfPrinciGourmetMobile.GridTabCardClasseGrupoClick(Sender: TObject);
begin
  MostraCardapio;
end;

procedure TfPrinciGourmetMobile.GridTabCardGrupoItemClick(
  const Sender: TCustomListBox; const Item: TListBoxItem);
begin

  if not dmDados.memgrp.IsEmpty then
  begin
    // verifica se o produto é facionado

   vpGrpIdentificacao:=GridTabCardGrupo.Selected.Text;

   dmDados.memgrp.Locate('grpidentificacao',vpGrpIdentificacao,[]);

    dmDados.memsfn.Filter := 'grpcodigo=' + dmDados.memgrpgrpcodigo.AsString;
    dmDados.memsfn.Filtered := true;
    // caso o produto não seja facionado abre aba de opções do grupo
    if dmDados.memsfn.IsEmpty then
    begin

      dmDados.mempro.Filter := 'grpcodigo=' + dmDados.memgrpgrpcodigo.AsString;
      dmDados.mempro.Filtered := true;

      if dmDados.mempro.IsEmpty then
      begin
        MessageDlg('Opções de Cardapio não Disponível, verifica se existe impressora definida para esse Grupo !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
        Exit;
      end
      else
      begin
        // LbCardapio.Caption := UniMainModule.grpgrpidentificacao.AsString;
        MostraTab(TabCardOpcao);
      end;
    end
    else
    // caso o produto seja fracionado abre formulario de produtos facionados
    begin
      // chama produto fracionado
      // IncluirItemFracionado;
    end;
  end;

  //


end;

procedure TfPrinciGourmetMobile.GridTabCardTipoGrupoClick(Sender: TObject);
begin
  MostraItensGrupo;
end;

procedure TfPrinciGourmetMobile.Image1Click(Sender: TObject);
begin
  ShowMessage('IMAGEM');
end;

procedure TfPrinciGourmetMobile.ListBoxItem2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfPrinciGourmetMobile.FormShow(Sender: TObject);
begin

  BSTgr.DataSet := dmDados.memtgr;
  BSGrp.DataSet := dmDados.memgrp;
  BSCgr.DataSet := dmDados.memcgr;
  BSPro.DataSet := dmDados.mempro;
  TabLogin.Visible := true;
  TabMesa.Visible := False;
  tcPaginas.ActiveTab := TabLogin;
  tcPaginas.Repaint;
  TabLogin.SetFocus;

end;

procedure TfPrinciGourmetMobile.EventoBtnClick(Sender: TObject);
var
  vNumMesa: String;
  vContador: integer;
  vTotal: Extended;
  vlClbCodigo: string;
begin
  vNumMesa := '0';
  if (Sender is TButton) then
  begin
    // mesa do pedido
    vNumMesa := IntToStr((Sender as TButton).Tag);
    vpNumMesa := vNumMesa;
    // limpa tabela de itens
    LimpaTotal;
    LimpaTabelaItens;

    if StrToInt(vNumMesa) > 0 then
    begin

      // buscando pedido da mesa
      with dmDados do
      begin

        dmDados.ConsultaUniaoMessa(vNumMesa);

        if not memunm.IsEmpty then
        begin
          ShowMessage('Atenção, essa mesa esta unida à' + #13 + #13 + ' mesa ' + memunm.fieldbyname('orcmesa').AsString + #13 + #13);
          memunm.Close;
          Exit;
        end;

        // verifica se existe pedido aberto para mesa

        dmDados.ConsultaMesa(vNumMesa);

        // caso não existe abre orcamento
        if memOrc.IsEmpty then
        begin
          vlClbCodigo := IntToStr(vpClbCodigo);
          dmDados.AbreMesa(vlClbCodigo, vNumMesa);
          // buscando pedido gerado para mesa
          dmDados.ConsultaMesa(vNumMesa);

        end;

        if memOrc.fieldbyname('stocodigo').AsInteger = 5 then
        begin
          ShowMessage('Mesa em processo de fechamento, Não é possível gerar novas comanda !');
          Exit;
        end;
        vpOrcchave := dmDados.memOrc.fieldbyname('orcchave').AsInteger;
        // informando mesa do pedido
        lvTituloPrincipal.Text := 'CMDA' + ' ' + (Sender as TButton).Text;
        rcDividir.Visible := False;
        { *
          // itens do pedido
          if not vtItens.Active then
          vtItens.Open
          else
          vtItens.Clear;

          // produtos fracionados
          if not vtpro.Active then
          vtpro.Open
          else
          vtpro.Clear;

          // borda de produtos
          tbrd.Close;
          tbrd.Open;

          tisi.Close;
          tisi.Open;

          // mudando a TAB do btnPedConfirma para 1 que trata do envio dos pedidos
          Comanda;
          * }
        MostraTab(TabPedido);

      end;
    end
    else
      MessageDlg('Atenção Não foi possível abrir a mesa !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
  end;
end;

procedure TfPrinciGourmetMobile.MostraTab(Tab: TTabItem);
var
  vCont: integer;
begin
  // desabilitando TabSheets
  TabCardOpcao.Visible := False;
  TabCardGrp.Visible := False;
  TabLogin.Visible := False;
  TabMesa.Visible := False;
  TabPedido.Visible := False;

  // achões de showtab
  if Tab = TabMesa then
  begin
    BtTabPedRetornoLogin.Visible := true;
    // verificando se usuário esta logado
    if vpClbCodigo = 0 then
    begin
      MostraTab(TabLogin);
      Exit;
    end;
  end
  else
    // limpando campo de usuário e senha
    if Tab = TabLogin then
    begin
      vpClbCodigo := 0;
      vpClbIdentificacao := '';
      edSenha.Text := '';
      edUsuario.SetFocus;
    end;

  Tab.Visible := true;
  tcPaginas.ActiveTab := Tab;
  Tab.SetFocus;

  if Tab = TabCardGrp then
  begin
    AbreCardapio;
  end;

  VerificaMesa;
  if Tab = TabPedido then
  begin
    BtnMostraItem.Visible := true;
    BtTabMesasAtualiza.Visible := False;

  end
  else
  begin
    BtnMostraItem.Visible := False;
    lvTituloPrincipal.Text := 'Gourmet: ' + tcPaginas.ActiveTab.Text;
  end;

end;

procedure TfPrinciGourmetMobile.VerificaMesa;
var
  vPos: integer;
  vLin: integer;
  i, x: integer;

  vPosPanel: integer;
  vpanel: TPanel;
begin

  { vScrollBox.Enabled := False;
    MainModule.UniMainModule.msaocupada.Close;
    MainModule.UniMainModule.msaocupada.Open;

    for i := 1 to 20 do
    begin
    for x := 1 to 5 do
    begin
    try
    if MainModule.UniMainModule.msaocupada.Locate('orcmesa', (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).Caption, []) then
    begin
    if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [1, 2] then
    begin

    (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 1;

    end
    else if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [99] then
    begin

    (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 3;

    end
    else if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [5] then
    begin

    (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 2;

    end

    else
    begin
    (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 0;
    end;
    end
    else
    begin
    (self.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 0;
    end;
    except

    end;

    end;
    end;

    for i := 0 to PnMesa12.ComponentCount - 1 do
    begin

    for x := 0 to 10 do
    begin

    if PnMesa12.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) <> nil then
    begin

    (PnMesa12.FindComponent('BtnMesa' + IntToStr(i) + IntToStr(x)) as TUnimBitBtn).ImageIndex := 1;

    end;
    end;

    end;

    for vPos := 0 to vScrollBox.ControlCount - 1 do
    begin
    vpanel := (vScrollBox.Controls[vPos] as TUnimPanel);

    for vPosPanel := 0 to vpanel.ControlCount - 1 do
    begin

    if (vpanel.Controls[vPosPanel] is TUnimPanel) then
    begin
    for vLin := 0 to (vpanel.Controls[vPosPanel] as TUnimPanel).ControlCount - 1 do
    begin

    if MainModule.UniMainModule.msaocupada.Locate('orcmesa', (vpanel.Controls[vPosPanel] as TUnimBitBtn).Tag, []) then
    begin


    if (vpanel.Controls[vPosPanel] as TUnimPanel).Components[vLin] is TUnimBitBtn then
    begin
    if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [1, 2] then
    begin
    ((vpanel.Controls[vPosPanel] as TUnimPanel).Components[vLin] as TUnimBitBtn).Color := $00FF0080;

    end
    else if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [5] then
    begin
    ((vpanel.Controls[vPosPanel] as TUnimPanel).Components[vLin] as TUnimBitBtn).Color := clred;


    end
    else if MainModule.UniMainModule.msaocupadastocodigo.AsInteger in [99] then
    begin
    ((vpanel.Controls[vPosPanel] as TUnimPanel).Components[vLin] as TUnimBitBtn).Color := clGreen;


    end;

    end;

    end
    else
    begin
    ((vpanel.Controls[vPosPanel] as TUnimPanel).Components[vLin] as TUnimBitBtn).Color := clBlack;


    end;

    end;


    end;
    end;
    end;
    vScrollBox.Enabled := true; }

end;

procedure TfPrinciGourmetMobile.ApresentaItem(pOrcChave, pItoChave: integer);
var
  vSQL: String;

begin
  { vSQL := 'SELECT COUNT(*) fsncount ' + '  FROM sfn ' + ' INNER JOIN pro ON sfn.procodigo = pro.procodigo ' + ' INNER JOIN ito on pro.procodigo = ito.procodigo  ' +
    ' WHERE ito.itochave = ' + IntToStr(pItoChave);



    fItem.MemPro.Lines.Clear;

    DMDados.Item.Close;
    DMDados.Item.Params[0].asinteger := pOrcChave; // orcchave
    DMDados.Item.Params[1].asinteger := pItoChave; // itochave
    DMDados.Item.Open;
    if not DMDados.Item.IsEmpty then
    begin
    // Escrevendo nome do produto

    // caso produto seja fracionado
    if DMDados.Consulta.Fields[0].asinteger > 0 then
    begin
    // Escrevendo bordas do produto quando existir
    DMDados.itemBorda.Close;
    DMDados.itemBorda.Params[0].asinteger := pOrcChave; // orcchave
    DMDados.itemBorda.Params[1].asinteger := pItoChave; // itochave
    DMDados.itemBorda.Open;

    if not DMDados.itemBorda.IsEmpty then
    begin
    fItem.MemPro.Lines.Add('');
    // AlteraFonte(fItem.MemPro, 16, fsBold, clBlue);

    fItem.MemPro.Lines.Add('*** BORDAS ***');
    DMDados.itemBorda.First;
    while not DMDados.itemBorda.Eof do
    begin
    // AlteraFonte(fItem.MemPro, 12, fsBold, clBlack);

    fItem.MemPro.Lines.Add(DMDados.ItemBordabrdidentificacao.AsString);
    DMDados.itemBorda.Next;
    end;
    end;

    // Escrevendo sabores do produto quando existir
    DMDados.itemSabor.Close;
    DMDados.itemSabor.Params[0].asinteger := pOrcChave; // orcchave
    DMDados.itemSabor.Params[1].asinteger := pItoChave; // itochave
    DMDados.itemSabor.Open;

    if not DMDados.itemSabor.IsEmpty then
    begin
    fItem.MemPro.Lines.Add('');

    fItem.MemPro.Lines.Add('*** SABORES ***');
    DMDados.itemSabor.First;
    while not DMDados.itemSabor.Eof do
    begin
    DMDados.ItemIngredientefra.Close;
    DMDados.ItemIngredientefra.Params[0].asinteger := pOrcChave; // orcchave
    DMDados.ItemIngredientefra.Params[1].asinteger := pItoChave; // itochave
    DMDados.ItemIngredientefra.Params[2].asinteger := DMDados.ItemSaborsbichave.asinteger; // sbichave
    DMDados.ItemIngredientefra.Open;
    if not DMDados.ItemIngredientefra.IsEmpty then
    begin
    DMDados.ItemIngredientefra.First;
    while not DMDados.ItemIngredientefra.Eof do
    begin
    if DMDados.ItemIngredienteFraisitipo.asinteger = 0 then
    begin

    fItem.MemPro.Lines.Add(DMDados.ItemIngredienteFraingnome.AsString);
    end
    else
    begin

    fItem.MemPro.Lines.Add(DMDados.ItemIngredienteFratsiidentificacao.AsString);
    end;
    DMDados.ItemIngredientefra.Next;
    end;
    end;
    DMDados.itemSabor.Next;
    end;
    end;
    end
    else
    // caso o item seja comum
    begin
    // Escrevendo sabores do produto quando existir
    DMDados.ItemIngredienteNormal.Close;
    DMDados.ItemIngredienteNormal.Params[0].asinteger := pOrcChave; // orcchave
    DMDados.ItemIngredienteNormal.Params[1].asinteger := pItoChave; // itochave
    DMDados.ItemIngredienteNormal.Open;
    if not DMDados.ItemIngredienteNormal.IsEmpty then
    begin
    DMDados.ItemIngredienteNormal.First;
    while not DMDados.ItemIngredienteNormal.Eof do
    begin
    if DMDados.ItemIngredienteNormalisitipo.asinteger = 0 then
    begin
    // AlteraFonte(fItem.MemPro, 11, fsBold, clBlack);

    fItem.MemPro.Lines.Add(DMDados.ItemIngredienteNormaltsiidentificacao.AsString + ' ' + DMDados.ItemIngredienteNormalingnome.AsString)
    end
    else
    begin
    // AlteraFonte(fItem.MemPro, 11, fsBold, clMaroon);

    fItem.MemPro.Lines.Add(DMDados.ItemIngredienteNormalingnome.AsString + ' (' + DMDados.ItemIngredienteNormaltsiidentificacao.AsString + ')');
    end;
    DMDados.ItemIngredienteNormal.Next;
    end;
    end;
    end;
    end;

    fItem.ShowModal; }

end;

procedure TfPrinciGourmetMobile.AbreCardapio;
begin
  // mudando a TAB do btnPedConfirma para 1 que trata do envio dos pedidos
  if btnTabPedConfirma.Tag <> 0 then
  begin
    rcDividir.Visible := False;
    btnTabPedConfirma.Text := 'Confirma';
    if btnTabPedConfirma.Tag <> 2 then
    begin
      btnTabPedConfirma.Tag := 0;
    end;
    LimpaTotal;
    LimpaTabelaItens;
  end;

  if not dmDados.memcgr.IsEmpty then
  begin

    if dmDados.memcgr.RecordCount = 1 then
    begin
      dmDados.memtgr.Filter := 'cgrcodigo=' + dmDados.memcgr.fieldbyname('cgrcodigo').AsString;
      dmDados.memtgr.Filtered := true;

      dmDados.memgrp.Filter := 'tgrcodigo=' + dmDados.memtgr.fieldbyname('tgrcodigo').AsString;
      dmDados.memgrp.Filtered := true;

      GridTabCardGrupo.Visible := true;
      GridTabCardGrupo.ItemIndex:=0;

      GridTabCardTipoGrupo.Visible := False;
      GridTabCardClasseGrupo.Visible := False;
      dmDados.memgrp.First;


      // GridTabCardClasseGrupo.Width := 600;
    end
    else
    begin
      GridTabCardGrupo.Visible := False;
      GridTabCardTipoGrupo.Visible := False;
      GridTabCardClasseGrupo.Visible := true;
      // GridTabCardClasseGrupo.Width := 600;
    end;

  end
  else
  begin
    dmDados.memtgr.Filter := 'cgrcodigo=' + dmDados.memcgr.fieldbyname('cgrcodigo').AsString;
    dmDados.memtgr.Filtered := true;

    dmDados.memgrp.Filter := 'tgrcodigo=' + dmDados.memtgr.fieldbyname('tgrcodigo').AsString;
    dmDados.memgrp.Filtered := true;

    GridTabCardGrupo.Visible := true;
    GridTabCardTipoGrupo.Visible := False;
    GridTabCardClasseGrupo.Visible := False;
    // GridTabCardClasseGrupo.Width := 600;

  end;

end;

end.
