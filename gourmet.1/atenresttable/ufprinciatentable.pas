unit ufprinciatentable;

interface

uses
  System.SysUtils, System.Types, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, Data.DB, Datasnap.DBClient, Data.Bind.EngExt, ufuncoes,
  FMX.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, FMX.Layouts, FMX.Grid, FMX.Edit,
  FMX.Memo, System.IOUtils, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Datasnap.DSConnect, Data.SqlExpr, FMX.Bind.Grid, Data.Bind.Grid, FMX.ListBox,
  FMX.Objects, System.UITypes;

type
  Tfprinciatentable = class(TForm)
    ToolBar1: TToolBar;
    paginas: TTabControl;
    mesas: TTabItem;
    NovoPedido: TTabItem;
    conta: TTabItem;
    pm01: TPanel;
    Panel2: TPanel;
    m02: TSpeedButton;
    Panel3: TPanel;
    m03: TSpeedButton;
    Panel4: TPanel;
    m04: TSpeedButton;
    Panel7: TPanel;
    m06: TSpeedButton;
    Panel8: TPanel;
    m07: TSpeedButton;
    plmesaselecionada: TLabel;
    zito: TClientDataSet;
    plrodapeconta: TPanel;
    pltotais: TPanel;
    plresumorecebido: TPanel;
    GroupBox2: TGroupBox;
    plsaldo: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    orcgeralav: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    StringGrid1: TStringGrid;
    ToolBar2: TToolBar;
    Label2: TLabel;
    plnovoitem: TPanel;
    listanovositens: TStringGrid;
    ToolBar4: TToolBar;
    btremoveritem: TButton;
    btcozinha: TButton;
    plincluir: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel13: TPanel;
    Panel11: TPanel;
    plqtd: TPanel;
    ToolBar5: TToolBar;
    btcnfirmapedido: TButton;
    btcancelapedido: TButton;
    plbotoes: TPanel;
    DSPConexao: TDSProviderConnection;
    ACESSO: TTabItem;
    Panel15: TPanel;
    Label4: TLabel;
    btconfirmasenha: TButton;
    btlimpasenha: TButton;
    lmensagem: TLabel;
    btlogout: TButton;
    Panel5: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label5: TLabel;
    nomeproduto1: TLabel;
    nomeproduto2: TLabel;
    plgrupoobservacoes: TPanel;
    obsito: TMemo;
    Panel19: TPanel;
    Label6: TLabel;
    plqt: TPanel;
    zitoprocodigo: TIntegerField;
    zitopronome: TStringField;
    zitoitoquantidade: TFloatField;
    zitoimmhorapedido: TTimeField;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    m05: TSpeedButton;
    Panel6: TPanel;
    Cdbarra: TEdit;
    Panel12: TPanel;
    m08: TSpeedButton;
    Panel14: TPanel;
    m09: TSpeedButton;
    Panel20: TPanel;
    m10: TSpeedButton;
    Panel21: TPanel;
    m11: TSpeedButton;
    Panel22: TPanel;
    m12: TSpeedButton;
    Panel23: TPanel;
    m13: TSpeedButton;
    Panel24: TPanel;
    m14: TSpeedButton;
    Panel25: TPanel;
    m15: TSpeedButton;
    Panel26: TPanel;
    m16: TSpeedButton;
    Panel27: TPanel;
    m17: TSpeedButton;
    Panel28: TPanel;
    m18: TSpeedButton;
    Panel29: TPanel;
    m19: TSpeedButton;
    Panel30: TPanel;
    m20: TSpeedButton;
    Panel31: TPanel;
    m21: TSpeedButton;
    Panel32: TPanel;
    m22: TSpeedButton;
    Panel33: TPanel;
    m23: TSpeedButton;
    Panel34: TPanel;
    m24: TSpeedButton;
    Panel35: TPanel;
    m25: TSpeedButton;
    Panel36: TPanel;
    m26: TSpeedButton;
    Panel37: TPanel;
    m27: TSpeedButton;
    Panel38: TPanel;
    m28: TSpeedButton;
    Panel39: TPanel;
    m29: TSpeedButton;
    Panel40: TPanel;
    m30: TSpeedButton;
    Panel41: TPanel;
    m31: TSpeedButton;
    Panel42: TPanel;
    m32: TSpeedButton;
    Panel43: TPanel;
    m33: TSpeedButton;
    Panel44: TPanel;
    m34: TSpeedButton;
    Panel45: TPanel;
    m35: TSpeedButton;
    plbotoesquantidade: TPanel;
    btmais: TButton;
    btmenos: TButton;
    Panel46: TPanel;
    Label7: TLabel;
    edQtd: TEdit;
    Panel47: TPanel;
    edsenha: TEdit;
    LinkFillControlToField1: TLinkFillControlToField;
    zitoitotipo: TStringField;
    conectando: TAniIndicator;
    Panel18: TPanel;
    TimerBuscaPro: TTimer;
    plmutiplicadores: TPanel;
    bt2: TButton;
    Panel49: TPanel;
    bt3: TButton;
    Panel50: TPanel;
    bt4: TButton;
    Panel51: TPanel;
    bt5: TButton;
    Panel52: TPanel;
    bt6: TButton;
    Panel53: TPanel;
    bt7: TButton;
    Panel54: TPanel;
    bt8: TButton;
    Panel55: TPanel;
    bt9: TButton;
    Panel56: TPanel;
    bt10: TButton;
    m01: TSpeedButton;
    Im01: TImageControl;
    Im02: TImageControl;
    Im03: TImageControl;
    Im04: TImageControl;
    Im05: TImageControl;
    Im06: TImageControl;
    Im07: TImageControl;
    Im08: TImageControl;
    Im09: TImageControl;
    Im10: TImageControl;
    Im11: TImageControl;
    Im12: TImageControl;
    Im13: TImageControl;
    Im14: TImageControl;
    Im15: TImageControl;
    Im16: TImageControl;
    Im17: TImageControl;
    Im18: TImageControl;
    Im19: TImageControl;
    Im20: TImageControl;
    Im21: TImageControl;
    Im22: TImageControl;
    Im23: TImageControl;
    Im24: TImageControl;
    Im25: TImageControl;
    Im26: TImageControl;
    Im27: TImageControl;
    Im28: TImageControl;
    Im29: TImageControl;
    Im30: TImageControl;
    Im31: TImageControl;
    Im32: TImageControl;
    Im33: TImageControl;
    Im34: TImageControl;
    Im35: TImageControl;
    plOpcoesBotoes: TPanel;
    btatualizamesas: TButton;
    Panel57: TPanel;
    bnovopedido: TButton;
    bHistorico: TButton;
    Panel58: TPanel;
    lbServidor: TLabel;
    lbIP: TLabel;
    plcolaboradorselecionado: TLabel;
    ImAtualizaMesas: TImageControl;
    IPedidos: TImageControl;
    IHistorico: TImageControl;
    Panel1: TPanel;
    BVoltarMesas: TButton;
    ImageControl1: TImageControl;
    BImprimirComanda: TButton;
    ImageControl3: TImageControl;
    lbStatus: TLabel;
    ImageControl2: TImageControl;
    GB: TGroupBox;
    RB01: TRadioButton;
    RB02: TRadioButton;
    RB03: TRadioButton;
    RB04: TRadioButton;
    RB05: TRadioButton;
    RB06: TRadioButton;
    RB07: TRadioButton;
    RB08: TRadioButton;
    Label8: TLabel;
    zitounicodigo: TIntegerField;
    zitoorcchave: TIntegerField;
    zitopuncodigo: TIntegerField;
    zitoorcnome: TStringField;
    zitoitoobs: TStringField;
    processando: TProgressBar;
    StyleBook1: TStyleBook;
    ImageControl4: TImageControl;
    Button1: TButton;
    procedure CdbarraKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CdbarraEnter(Sender: TObject);
    procedure edQtdEnter(Sender: TObject);
    procedure edQtdKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btconfirmasenhaClick(Sender: TObject);
    procedure btlimpasenhaClick(Sender: TObject);
    procedure btlogoutClick(Sender: TObject);
    procedure CdbarraExit(Sender: TObject);
    procedure btcancelapedidoClick(Sender: TObject);
    procedure btremoveritemClick(Sender: TObject);
    procedure btmaisClick(Sender: TObject);
    procedure btmenosClick(Sender: TObject);
    procedure btcozinhaClick(Sender: TObject);
    procedure btcnfirmapedidoClick(Sender: TObject);
    procedure paginasChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TimerBuscaProTimer(Sender: TObject);
    procedure BotaoMultiplicadorClick(Sender: TObject);
    procedure btatualizamesasClick(Sender: TObject);
    procedure bnovopedidoClick(Sender: TObject);
    procedure bHistoricoClick(Sender: TObject);
    procedure BVoltarMesasClick(Sender: TObject);
    procedure Im01Click(Sender: TObject);
    procedure Im02Click(Sender: TObject);
    procedure botaomesaClick(Sender: TObject);
    procedure ServermizioRest01AfterDisconnect(Sender: TObject);
    procedure ServermizioRest01AfterConnect(Sender: TObject);
    procedure btcnfirmapedidoDblClick(Sender: TObject);
  private
    function CarregaAtendimentos: boolean;
    function BuscaAtendimentos: string;
    function IncluirNovoItem(Produto: Integer; Quantidade: double; complemento: string; unidade: string; pun: Integer; VOrcChave: string;
      vUsrCodigo: string; vTrmCodigo: string; vIDMesa: string): string;
    function buscaproserver(vCdbarra: string): string;
    procedure buscapuns(vCdbarra: string);
    procedure buscaopcoes(vCdbarra: string);
    procedure mostranomeproduto;
    procedure AjustaImagem(ima: TImageControl; Estado: string);
    procedure AjustarImagensMesas;
    function verificaconexao: boolean;
    procedure LimpaOpcoes;

    { Private declarations }
  public
    { Public declarations }

    vpIDMesa: string;
    VpOrcChave: string;
    vpTrmCodigo: string;
    vpIPServidor: string;
    vpUsrCodigo: string;
    VpEtdCodigo: string;

  end;

var
  fprinciatentable: Tfprinciatentable;

const
  (* Situação do Orçamento - stocodigo *)
  stoEmDigitacao = 1;
  stoEmAberto = 2;
  stoVendido = 3;
  stoUnificado = 4;
  stoEmFechamento = 5;

  stoRetornado = 8;
  stoCancelado = 88;

implementation

{$R *.fmx}

uses uCC, uCm;

procedure Tfprinciatentable.bHistoricoClick(Sender: TObject);
begin
  mesas.Visible := False;
  NovoPedido.Visible := False;
  conta.Visible := False;

  paginas.ActiveTab := conta;

end;

function Tfprinciatentable.verificaconexao: boolean;
begin
  if cm.ConexaoServer.Connected = False then
  begin
    cm.ConexaoServer.Connected := true;
  end;

  result := true;

end;

procedure Tfprinciatentable.LimpaOpcoes;
var
  d: Integer;
begin
  try
    for d := 1 to 8 do
    begin
      (FindComponent('RB' + formatfloat('00', d)) as TRadioButton).IsChecked := False;
      (FindComponent('RB' + formatfloat('00', d)) as TRadioButton).Visible := False;
    end;
  except
  end;
end;

procedure Tfprinciatentable.bnovopedidoClick(Sender: TObject);
begin

  if plmesaselecionada.text = '' then
  begin
    showmessage('Selecione uma mesa!');
    exit;
  end;

  processando.value := 0;
  Application.ProcessMessages;

  vpIDMesa := trim(plmesaselecionada.text);

  plresumorecebido.Visible := False;
  mesas.Visible := False;
  conta.Visible := False;
  NovoPedido.Visible := true;
  paginas.ActiveTab := NovoPedido;

  Cdbarra.SetFocus;

end;

procedure Tfprinciatentable.botaomesaClick(Sender: TObject);
var
  Texto: string;
  Titulo: string;
  vesta: Integer;
begin

  inherited;

  vesta := 0;
  { * Verifica se estava em outra mesa e salva os registros * }

  if (Sender is TSpeedButton) then
  begin
    Texto := (Sender as TSpeedButton).name;
    Titulo := (Sender as TSpeedButton).text;
    vesta := (FindComponent('I' + Texto) as TImageControl).Tag;

  end;

  if (Sender is TCustomButton) then
  begin
    Texto := (Sender as TCustomButton).name;
    Titulo := (Sender as TCustomButton).text;
  end;

  if (Sender is TImageControl) then
  begin

    vesta := (Sender as TImageControl).Tag;

    if ((Sender as TImageControl).Parent is TSpeedButton) then
    begin
      Texto := copy((Sender as TImageControl).name, 2, 5);
      Titulo := ((Sender as TImageControl).Parent as TSpeedButton).text
    end;

    if ((Sender as TImageControl).Parent is TCustomButton) then
    begin
      Texto := copy((Sender as TImageControl).name, 2, 5);
      Titulo := ((Sender as TImageControl).Parent as TCustomButton).text
    end;

  end;

  if vesta = 999 then
  begin
    showmessage('Esta Mesa em Fechamento no Caixa!');
    exit;

  end;
  if copy(Texto, 1, 1) = 'm' then
  begin
    plmesaselecionada.text := 'M E S A ' + Titulo;
  end
  else if copy(Texto, 1, 1) = 'e' then
  begin
    plmesaselecionada.text := 'ENTREGA ' + Titulo;
  end
  else if copy(Texto, 1, 1) = 'v' then
  begin
    plmesaselecionada.text := 'VIAGEM ' + Titulo;
  end;

  if bHistorico.Visible = False then
    bnovopedido.OnClick(bnovopedido);

end;

function Tfprinciatentable.CarregaAtendimentos: boolean;
begin
  Self.listanovositens.Visible := true;
end;

procedure Tfprinciatentable.paginasChange(Sender: TObject);
begin

  conectando.Enabled := False;
  conectando.Visible := False;

  if paginas.ActiveTab = mesas then
  begin
    NovoPedido.Visible := False;
    plmesaselecionada.text := '';
  end;

  if paginas.ActiveTab = NovoPedido then
  begin
    if plmesaselecionada.text = '' then
    begin
      paginas.ActiveTab := mesas;
    end;
  end;

end;

procedure Tfprinciatentable.ServermizioRest01AfterConnect(Sender: TObject);
begin
  conectando.Enabled := False;
  conectando.Visible := False;

end;

procedure Tfprinciatentable.ServermizioRest01AfterDisconnect(Sender: TObject);
begin
  conectando.Visible := true;
  conectando.Enabled := true;

end;

procedure Tfprinciatentable.TimerBuscaProTimer(Sender: TObject);
begin

  conectando.Enabled := true;
  conectando.Visible := true;

  if Cdbarra.text <> '' then
  begin

    mostranomeproduto;

    if (nomeproduto1.text <> '') and (nomeproduto1.text <> 'Não Localizado!') then
    begin
      TimerBuscaPro.Enabled := False;
    end
    else
    begin
      TimerBuscaPro.Enabled := true;
    end;

  end;

end;

procedure Tfprinciatentable.BotaoMultiplicadorClick(Sender: TObject);
var
  qt: double;

begin
  try
    qt := strtoint((Sender as TButton).text);

    edQtd.text := format('%2.1f', [qt]);
    if edQtd.text = '0,0' then
      edQtd.text := '1,0'
  except
    edQtd.text := '0,0'
  end;

end;

procedure Tfprinciatentable.btatualizamesasClick(Sender: TObject);
begin

  AjustarImagensMesas;

end;

procedure Tfprinciatentable.btcancelapedidoClick(Sender: TObject);
begin

  if zito.State <> dsbrowse then
    zito.Cancel;

  if zito.Active then
  begin

    if zito.IsEmpty then
    begin
      Self.NovoPedido.Visible := False;
      Self.mesas.Visible := true;
      Self.paginas.ActiveTab := mesas;

      Cdbarra.text := '';
      Self.nomeproduto1.text := '';
      Self.nomeproduto2.text := '';
      NovoPedido.Visible := False;

      mesas.Visible := true;

      Self.paginas.ActiveTab := mesas;

      AjustarImagensMesas;
    end;
  end

  else
  begin
    showmessage('Conclua o Pedido, ou remova os itens para voltar para as Mesas !');

  end;

end;

procedure Tfprinciatentable.Im01Click(Sender: TObject);
begin
  botaomesaClick(Sender);
end;

procedure Tfprinciatentable.Im02Click(Sender: TObject);
begin
  { }
end;

function Tfprinciatentable.IncluirNovoItem(Produto: Integer; Quantidade: double; complemento: string; unidade: string; pun: Integer;
  VOrcChave: string; vUsrCodigo: string; vTrmCodigo: string; vIDMesa: string): string;
var
  orcchave: string;
begin

  { incluir pelo servidor }

  orcchave := cm.SMClient.IncluirNovoItem(Produto, Quantidade, complemento, unidade, pun, VOrcChave, vUsrCodigo, vTrmCodigo, vIDMesa);
  if orcchave <> '' then
    result := orcchave
  else
    result := '0';

end;

procedure Tfprinciatentable.mostranomeproduto;
var
  rNome: string;
begin
  { busca produto no servidor }

  rNome := buscaproserver(Cdbarra.text);
  if rNome = 'Não Localizado!' then
  begin
    LimpaOpcoes;
    Self.nomeproduto1.text := 'Não Localizado!';
    Self.nomeproduto2.text := '';
    Cdbarra.text := '';
    Cdbarra.SetFocus;
    btcnfirmapedido.Enabled := False;
    conectando.Enabled := true;
    conectando.Visible := true;

    TimerBuscaPro.Enabled := true;
    Application.ProcessMessages;
  end
  else
  begin
    Self.nomeproduto1.text := copy(rNome, 1, 20);
    Self.nomeproduto2.text := copy(rNome, 21, 20);
    Self.edQtd.text := '1,0';
    buscapuns(Cdbarra.text);
    buscaopcoes(Cdbarra.text);
    conectando.Enabled := False;
    conectando.Visible := False;

    btcnfirmapedido.Enabled := true;
    Application.ProcessMessages;
    TimerBuscaPro.Enabled := False;
  end;
end;

procedure Tfprinciatentable.btcnfirmapedidoClick(Sender: TObject);
var
  vpun, i: Integer;
  VOrcChave: string;

begin
  if btcnfirmapedido.Enabled then
  begin
    btcnfirmapedido.Enabled := False;

    vpun := 0;
    if (edQtd.text = '0,0') or (edQtd.text = '') then
    begin
      showmessage('É Necessário a quantidade!');
      exit;
    end;

    if GB.Visible then
    begin

      if Cdbarra.text <> '' then
      begin
        for i := 0 to 8 do
        begin
          if Self.FindComponent('RB' + formatfloat('00', i)) is TRadioButton then
          begin
            if (Self.FindComponent('RB' + formatfloat('00', i)) as TRadioButton).IsChecked then
            begin
              Self.obsito.Lines.Add((Self.FindComponent('RB' + formatfloat('00', i)) as TRadioButton).text);
              vpun := (Self.FindComponent('RB' + formatfloat('00', i)) as TRadioButton).Tag;
              break;
            end;
          end;
        end;
      end;
      GB.Visible := False;
    end;

    vpIDMesa := trim(plmesaselecionada.text);
    VpOrcChave := '0';

    if not zito.Active then
      zito.CreateDataSet;

    if zito.Locate('procodigo', strtoint(Self.Cdbarra.text), []) then
    begin
      zito.Edit;
      zitoitoquantidade.asfloat := zitoitoquantidade.asfloat + strtofloat(Self.edQtd.text);
    end
    else
    begin
      zito.Append;
      zitoitoquantidade.asfloat := strtofloat(Self.edQtd.text);
    end;

    zitoimmhorapedido.asfloat := time;

    zitoprocodigo.AsInteger := strtoint(Self.Cdbarra.text);
    zitopronome.AsString := nomeproduto1.text + ' ' + nomeproduto2.text;
    zitounicodigo.AsString := '1';
    zitoorcchave.AsString := VpOrcChave;
    zitopuncodigo.AsInteger := vpun;
    zitoorcnome.AsString := vpIDMesa;
    zitoitoobs.AsString := Self.obsito.Lines.text;
    zito.Post;

    VpOrcChave := VOrcChave;

    nomeproduto1.text := '';
    nomeproduto2.text := '';
    Cdbarra.text := '';
    edQtd.text := '0,0';
    obsito.text := '';

    btcnfirmapedido.Enabled := true;

    Cdbarra.SetFocus;

  end;

end;

procedure Tfprinciatentable.btcnfirmapedidoDblClick(Sender: TObject);
begin
  { }
end;

procedure Tfprinciatentable.btconfirmasenhaClick(Sender: TObject);
var
  vretorno: string;
begin
  conectando.Enabled := true;
  conectando.Visible := true;

  vretorno := cm.SMClient.CarregaUsuario(Self.edsenha.text);

  if vretorno <> '' then
  begin
    lmensagem.text := '';
    vpUsrCodigo := copy(vretorno, 1, pos('-', vretorno) - 1);
    plcolaboradorselecionado.text := copy(vretorno, pos('-', vretorno) + 1, 200);
    Self.ACESSO.Visible := False;
    Self.mesas.Visible := true;
    Self.conta.Visible := False;
    btlogout.Visible := true;
    paginas.ActiveTab := mesas;
    AjustarImagensMesas;

  end
  else
  begin
    lmensagem.text := 'Erro de ACESSO !';
    Self.edsenha.text := '';
    Self.edsenha.SetFocus;
    Self.edsenha.SelectAll;

  end;
  conectando.Enabled := False;
  conectando.Visible := False;

end;

procedure Tfprinciatentable.btcozinhaClick(Sender: TObject);
var
  VOrcChave: string;
begin
  TimerBuscaPro.Enabled := False;

  if Self.verificaconexao then
  begin

    conectando.Enabled := true;
    conectando.Visible := true;

    if zito.Active then
    begin

      if not zito.IsEmpty then
      begin

        VpOrcChave := BuscaAtendimentos;

        zito.first;
        processando.value := 0;
        processando.Max := zito.RecordCount;

        while not zito.Eof do
        begin
          processando.value := processando.value + 1;
          Application.ProcessMessages;

          VOrcChave := Self.IncluirNovoItem(Self.zitoprocodigo.AsInteger, Self.zitoitoquantidade.asfloat, zitoitoobs.AsString, '',
            zitopuncodigo.AsInteger, VpOrcChave, vpUsrCodigo, vpTrmCodigo, vpIDMesa);

          while true do
          begin

            if (VOrcChave <> '') and (VOrcChave <> '0') then
            begin
              break;
            end
            else
            begin
              Sleep(500);
              VOrcChave := Self.IncluirNovoItem(Self.zitoprocodigo.AsInteger, Self.zitoitoquantidade.asfloat, zitoitoobs.AsString, '',
                zitopuncodigo.AsInteger, VpOrcChave, vpUsrCodigo, vpTrmCodigo, vpIDMesa);

            end;
          end;
          zito.Next;
        end;
        zito.Close;

        VOrcChave := cm.SMClient.enviarparacozinha(VpOrcChave);
        Self.NovoPedido.Visible := False;
        Self.mesas.Visible := true;
        Self.paginas.ActiveTab := mesas;
        AjustarImagensMesas;

      end
      else
        Cdbarra.SetFocus;

    end;

    conectando.Enabled := False;
    conectando.Visible := False;

  end;
end;

procedure Tfprinciatentable.btlimpasenhaClick(Sender: TObject);
begin
  Self.edsenha.text := '';
  Self.edsenha.SetFocus;
  Self.edsenha.SelectAll;

end;

procedure Tfprinciatentable.btmenosClick(Sender: TObject);
begin
  try
    edQtd.text := format('%2.1f', [strtofloat(edQtd.text) - 1]);
    if edQtd.text = '0,0' then
      edQtd.text := '1,0'
  except
    edQtd.text := '0,0'
  end;

end;

procedure Tfprinciatentable.btmaisClick(Sender: TObject);
begin
  try
    edQtd.text := format('%2.1f', [strtofloat(edQtd.text) + 1]);
    if edQtd.text = '0,0' then
      edQtd.text := '1,0'
  except
    edQtd.text := '0,0'
  end;
end;

procedure Tfprinciatentable.btlogoutClick(Sender: TObject);
begin

  { consulta.Close;
    consulta.CommandText := 'update orc set stocodigo=' + inttostr(stoEmAberto) +
    ' where orcdataencerr=null and trmcodigo=' + Self.VpTrmCodigo;
    consulta.Execute; }

  Self.mesas.Visible := False;
  Self.NovoPedido.Visible := False;
  Self.conta.Visible := False;
  btlogout.Visible := False;
  plcolaboradorselecionado.text := '';
  plmesaselecionada.text := '';
  Self.ACESSO.Visible := true;
  paginas.ActiveTab := ACESSO;
  Self.edsenha.text := '';
  Self.edsenha.SetFocus;
{$IFNDEF MSWINDOWS}
  FreeAndNil(Application);
{$ENDIF }
end;

procedure Tfprinciatentable.btremoveritemClick(Sender: TObject);
begin
  if zito.Active then
  begin

    if not zito.IsEmpty then
    begin
      zito.Delete;
    end;

    if zito.IsEmpty then
    begin
      Self.NovoPedido.Visible := False;
      Self.mesas.Visible := true;
      Self.paginas.ActiveTab := mesas;
    end;
  end
  else
  begin
    Self.NovoPedido.Visible := False;
    Self.mesas.Visible := true;
    Self.paginas.ActiveTab := mesas;
  end;

  AjustarImagensMesas;

end;

function Tfprinciatentable.BuscaAtendimentos: string;
begin
  result := cm.SMClient.BuscaAtendimentos(Self.vpTrmCodigo, Self.vpIDMesa, Self.vpUsrCodigo)
end;

procedure Tfprinciatentable.CdbarraEnter(Sender: TObject);
begin

  nomeproduto1.text := '';
  nomeproduto2.text := '';

  LimpaOpcoes;

  TimerBuscaPro.Enabled := true;

  btcnfirmapedido.Enabled := False;
  Self.nomeproduto1.text := '';
  Self.nomeproduto2.text := '';
  edQtd.text := '0,0';
  Cdbarra.text := '';

  Cdbarra.SelectAll;

  Application.ProcessMessages;

  // TimerBuscaPro.Enabled := true;
end;

procedure Tfprinciatentable.buscaopcoes(vCdbarra: string);
var
  Titulo: string;
  test1: string;
  text2: string;
  i, x, y: Integer;
begin

  Titulo := cm.SMClient.BuscaoPro(vCdbarra);
  test1 := copy(Titulo, pos('-', Titulo) + 1, 30);

  if (test1 = '-') or (test1 = '') or (test1 = '_') then
    exit;

  if Titulo = '-_-_-_' then
  begin

    Titulo := '';
  end
  else
  begin
    LimpaOpcoes;

    GB.Visible := true;

    i := 1;
    x := 0;
    test1 := copy(Titulo, 1, pos('_', Titulo) - 1);

    while true do
    begin

      if (test1 <> '_') and (test1 <> '') and (test1 <> '-') then
      begin

        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).Visible := true;
        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).text := copy(test1, pos('-', test1) + 1, 30);
        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).Tag := strtoint(copy(test1, 1, pos('-', test1) - 1));

        if i = 1 then
        BEGIN
          (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).IsChecked := true;
        END;

      end;
      Titulo := copy(Titulo, pos('_', Titulo) + 1, 200);
      test1 := copy(Titulo, 1, pos('_', Titulo) - 1);
      i := i + 1;
      if (test1 = '_') or (test1 = '') then
      begin
        break;
      end;

    end;
  end;
end;

procedure Tfprinciatentable.buscapuns(vCdbarra: string);
var
  Titulo: string;
  test1: string;
  text2: string;
  i, d: Integer;

begin
  Titulo := cm.SMClient.BuscaqPro(vCdbarra);

  if Titulo = '-_-_-_' then
  begin
    Titulo := '';
  end
  else
  begin
    GB.Visible := true;
    try
      for d := 1 to 8 do
      begin
        (FindComponent('RB' + formatfloat('00', d)) as TRadioButton).IsChecked := False;
        (FindComponent('RB' + formatfloat('00', d)) as TRadioButton).Visible := False;
      end;
    except
    end;

    i := 1;
    test1 := copy(Titulo, 1, pos('_', Titulo) - 1);

    while true do
    begin

      if (test1 <> '_') and (test1 <> '') and (test1 <> '-') then
      begin
        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).Visible := true;
        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).text := copy(test1, pos('-', test1) + 1, 30);
        (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).Tag := strtoint(copy(test1, 1, pos('-', test1) - 1));

        if i = 1 then
        BEGIN
          (FindComponent('RB' + formatfloat('00', i)) as TRadioButton).IsChecked := true;
        END;
      end;
      Titulo := copy(Titulo, pos('_', Titulo) + 1, 200);
      test1 := copy(Titulo, 1, pos('_', Titulo) - 1);
      i := i + 1;
      if (test1 = '_') or (test1 = '') then
      begin
        break;
      end;

    end;
  end;

end;

function Tfprinciatentable.buscaproserver(vCdbarra: string): string;
var
  retorno: string;
begin
  retorno := '';
  conectando.Enabled := true;
  conectando.Visible := true;
  while true do
  begin
    retorno := cm.SMClient.BuscaPro(vCdbarra);
    if nomeproduto2.text = '' then
    begin
      nomeproduto2.text := 'Buscando produto. Aguarde ... ';
    end
    else
      nomeproduto2.text := '';

    Application.ProcessMessages;

    if retorno <> '' then
      break
    else
      Sleep(1000);

  end;
  conectando.Enabled := False;
  conectando.Visible := False;

  result := retorno;
end;

procedure Tfprinciatentable.BVoltarMesasClick(Sender: TObject);
begin
  NovoPedido.Visible := False;
  conta.Visible := False;
  mesas.Visible := true;
  paginas.ActiveTab := mesas;
  Self.plmesaselecionada.text := '';

end;

procedure Tfprinciatentable.CdbarraExit(Sender: TObject);

begin
  if Cdbarra.text <> '' then
  begin
    // mostranomeproduto;
    TimerBuscaPro.Enabled := False;
    Application.ProcessMessages;

  end;

end;

procedure Tfprinciatentable.CdbarraKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
  tecla: Word;
begin
  tecla := Key;
  if tecla = 13 then
  begin
    Key := 0;
    edQtd.SetFocus;
    edQtd.SelectAll;
  end
  else if tecla = 8 then
  begin
    LimpaOpcoes;
    nomeproduto1.text := '';
    nomeproduto2.text := '';
  end
  else
  begin
  end;
  TimerBuscaPro.Enabled := true;

end;

procedure Tfprinciatentable.edQtdEnter(Sender: TObject);
begin
  edQtd.SelectAll;
end;

procedure Tfprinciatentable.edQtdKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
  tecla: Word;
begin
  tecla := Key;
  if tecla = 13 then
  begin
    if obsito.Enabled then
    begin
      Key := 0;
      obsito.SetFocus;
      obsito.SelectAll;
    end
    else
    begin
      btcnfirmapedido.SetFocus;
    end;
  end;
end;

procedure Tfprinciatentable.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  cm.ConexaoServer.Connected := False;
  Sleep(2000);

end;

procedure Tfprinciatentable.FormCreate(Sender: TObject);
var
  arq: tstringlist;
  NomeArq: string;
  i: Integer;
  linha: string;
begin
  try
    arq := tstringlist.Create;
    NomeArq := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetPublicPath, 'mizio.txt');
    // showmessage(NomeArq);
    if not fileexists(NomeArq) then
    begin
      arq.Add('terminal=3');
      arq.Add('servidor=192.168.5.101');
      arq.SaveToFile(NomeArq);
    end;

    arq.Clear;
    arq.LoadFromFile(NomeArq);
    for i := 0 to arq.Count - 1 do
    begin
      linha := arq[i];
      if pos('terminal', lowercase(linha)) > 0 then
        Self.vpTrmCodigo := trim(copy(linha, pos('=', linha) + 1, 200));

      if pos('servidor', lowercase(linha)) > 0 then
        Self.vpIPServidor := trim(copy(linha, pos('=', linha) + 1, 200));
    end;

    Self.vpTrmCodigo := '4';

    lbIP.text := 'Trm.: ' + Self.vpTrmCodigo;
    lbServidor.text := 'Trm.: ' + Self.vpIPServidor;

  finally
    FreeAndNil(arq);
  end;
end;

procedure Tfprinciatentable.FormShow(Sender: TObject);
begin
  Self.paginas.ActiveTab := ACESSO;
  Self.mesas.Visible := False;
  Self.NovoPedido.Visible := False;
  Self.conta.Visible := False;

end;

procedure Tfprinciatentable.AjustaImagem(ima: TImageControl; Estado: string);
var
  NomeArq: string;
begin
  NomeArq := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetPublicPath, Estado + '.png');
  if fileexists(NomeArq) then
  begin
    ima.LoadFromFile(NomeArq);
  end
  else
  begin
    // showmessage(NomeArq);
  end;
end;

procedure Tfprinciatentable.AjustarImagensMesas;
var
  retorno: string;
  x: Integer;
  i: Integer;
  vtexto: string;
  vnome: string;
  vnomeImg: string;
  vesta: string;
begin
  try
    retorno := cm.SMClient.EstadoMesas;
  except
    while true do
    begin
      cm.GetSMClient;
      Sleep(500);
      retorno := cm.SMClient.EstadoMesas;
      if retorno <> '' then
        break;
    end;

  end;

  x := 1;
  for i := 1 to 35 do
  begin
    vtexto := copy(retorno, x, 4);
    if vtexto <> '' then
    begin
      vnome := copy(vtexto, 1, 3);
      vnomeImg := 'i' + vnome;
      vesta := copy(vtexto, 4, 1);
      // vesta = 'F - FECHADA', 'A-ABERTA', 'Z-ATRAZADA', 'P-PARADA' ,'I-INCLUINDO', 'R-RECEBEMDO'
      AjustaImagem((FindComponent(vnomeImg) as TImageControl), vesta);
      if vesta = 'R' then
      begin
        (FindComponent(vnomeImg) as TImageControl).Tag := 999;
      end;
    end;
    x := x + 4;
  end;

end;

end.
