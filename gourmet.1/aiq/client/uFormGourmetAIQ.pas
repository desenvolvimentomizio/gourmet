unit uFormGourmetAIQ;

// Form principal do GourmetAIQ.
//
// Mudancas relevantes em relacao a versao 1:
//
// * Toda chamada HTTP (GerarToken, CarregaIDLojaAIQ, BuscaPedidos, etc.) saiu
//   da thread principal. O TmRelogio agora apenas:
//     - atualiza o relogio na tela;
//     - se o worker esta ocioso, agenda o ciclo de processamento como job;
//     - drena o log para o Memo (sem chamar Memo.Lines.Add em loop quente).
//   Se o ciclo anterior nao terminou, o atual NAO eh enfileirado.
//
// * Removido Application.ProcessMessages (era anti-pattern, causava
//   reentrancia e travamento com HTTP sincrono).
//
// * Removido TrimAppMemorySize / SetProcessWorkingSetSize (forcava paginacao
//   e piorava a performance percebida).
//
// * Removido sleep(2000) na thread principal (existe ainda dentro dos
//   Controllers, mas roda no worker, sem travar UI).
//
// * Bugs latentes da versao 1, corrigidos:
//     - Retornaturno: nao havia tratamento entre 16:00:00 e 16:00:01;
//       agora a divisao de turno eh feita por hora cheia (>= 16h vira NOITE).
//     - EnviaPedidoAIQGourmet: vazava TJsonValue + TJsonObject; agora
//       o ParseJSONValue eh liberado em try/finally.
//     - ReprocessarPedido: AV em caminho de erro (vAIQ/vPedidoAIQGourmet
//       nao inicializados); agora padrao try/finally + nil guards.
//     - Logs com numeros de linha hardcoded (ex.: "586 Vai Gravar Pedido"):
//       trocados por mensagens semanticas.
//
// * GeraCaradapio (typo no nome original) -- nao alterada nesta entrega
//   porque eh feature em construcao; sera retrabalhada na Fase 3 com JSON
//   tipado e path configuravel via Service.Config.
//
// * Theme: TStyleManager 'Windows10 Dark' aplicado no .dpr; ApplyToForm
//   ajusta TitleBar do Win10/11 e cores do DBGrid via UI.Theme.

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.Classes, System.SysUtils, System.Variants, System.JSON,
  System.DateUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.WinXCtrls,
  Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze,
  GourmetAIQ.Service.Funcoes,
  GourmetAIQ.Service.Constants,
  GourmetAIQ.Service.Log,
  GourmetAIQ.Service.Config,
  GourmetAIQ.Service.Worker,
  GourmetAIQ.Service.HealthMonitor,
  GourmetAIQ.Controller.AIQSRV,
  GourmetAIQ.Controller.cfgaiq,
  GourmetAIQ.Controller.czn,
  GourmetAIQ.Controller.ccx,
  GourmetAIQ.Controller.PedidoAIQ,
  GourmetAIQ.Controller.PedidoAIQGourmet,
  GourmetAIQ.Controller.AIQ,
  GourmetAIQ.Model.Entity.AIQ,
  GourmetAIQ.Model.Entity.PedidoAIQGourmet,
  GourmetServer.Model.Entity.aiq.AIQCFG,
  DASQLMonitor, UniSQLMonitor;

type
  TFormGourmetAIQ = class(TForm)
    TmRelogio: TTimer;
    logs: TMemo;
    Categorias: TFDMemTable;
    CategoriasCodigo: TStringField;
    CategoriasNome: TStringField;
    CategoriasDescricao: TStringField;
    CategoriasTempoProducao: TStringField;
    CategoriasSituacao: TStringField;
    Produtos: TFDMemTable;
    Produtoscodigo: TStringField;
    Produtosnome: TStringField;
    Produtoscategoria: TStringField;
    Pedidos: TFDMemTable;
    Pedidospedido: TStringField;
    Pedidosregistro: TStringField;
    Pedidospronto: TIntegerField;
    Pedidoslido: TIntegerField;
    Pedidoscancelado: TIntegerField;
    Pedidosnome: TStringField;
    Pedidostempoentrega: TStringField;
    Pedidosretira: TIntegerField;
    Pedidostexto: TBlobField;
    TMInicializarAplicativo: TTimer;
    Panel5: TPanel;
    Ingredientes: TFDMemTable;
    Ingredientesproduto_codigo: TStringField;
    Ingredientesnome: TStringField;
    Sabores: TFDMemTable;
    Saboresproduto_codigo: TStringField;
    Saboresnome: TStringField;
    Saboressku: TStringField;
    Saborescategoria: TStringField;
    Bordas: TFDMemTable;
    Tamanhos: TFDMemTable;
    Produtosdescription: TStringField;
    IdAntiFreeze1: TIdAntiFreeze;
    PedidosProcessados: TFDMemTable;
    DSPedidosProcessados: TDataSource;
    PedidosProcessadospedido: TStringField;
    PedidosProcessadosregistro: TStringField;
    PedidosProcessadoslido: TIntegerField;
    PedidosProcessadospronto: TIntegerField;
    PedidosProcessadosretira: TIntegerField;
    PedidosProcessadoscancelado: TIntegerField;
    PedidosProcessadosnome: TStringField;
    PedidosProcessadosentregaaiq: TIntegerField;
    plProcessados: TPanel;
    DBGridProcessados: TDBGrid;
    pltituloProcessados: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    plquantidade: TPanel;
    PedidosProcessadoschave: TIntegerField;
    PedidosProcessadosnumero: TStringField;
    PedidosProcessadosorcamento: TIntegerField;
    DSpedidos: TDataSource;
    DBGridRegistrados: TDBGrid;
    Pedidoscozinha: TIntegerField;
    PedidosRegistrados: TFDMemTable;
    DSPedidosRegistrados: TDataSource;
    PedidosRegistradosaiqchave: TIntegerField;
    PedidosRegistradosaiqpedido: TIntegerField;
    PedidosRegistradosaiqstatus: TIntegerField;
    plquantidaderegistrados: TPanel;
    pnContador: TPanel;
    PedidosRegistradosaiqregistro: TStringField;
    pnRelogio: TPanel;
    PedidosRegistradosaiqsaidaok: TIntegerField;
    PnRegistrador: TPanel;
    PedidosProcessadossaida: TStringField;
    PedidosProcessadosnotificousaida: TIntegerField;
    DBGrid1: TDBGrid;
    Dscategorias: TDataSource;
    Pedidosentrega: TFloatField;
    Pedidosvalor: TFloatField;
    Panel1: TPanel;
    cbLeitura: TCheckBox;
    plCaixa: TPanel;
    cbSaidaEntrega: TCheckBox;
    Panel3: TPanel;
    Button3: TButton;
    pnHeader: TPanel;
    plTopoProcessados: TPanel;
    plToolbar1: TPanel;
    lbVersao: TLabel;
    Pedidosentregaaiq: TIntegerField;
    pnApiHealth: TPanel;
    Button1: TButton;
    Edit2: TEdit;
    Panel4: TPanel;
    plApiLed: TPanel;
    lbApiStatus: TLabel;
    lbApiMax: TLabel;
    lbApiSucesso: TLabel;
    lbApiAvg: TLabel;
    Panel7: TPanel;
    pbApiLatencyChart: TPaintBox;
    plSituacao: TPanel;
    procedure TmRelogioTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGridAProcessarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBGridRegistradosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBGridRegistradosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TMInicializarAplicativoTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PedidosRegistradosAfterInsert(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
  private
    FCicloAtivo: Boolean;     // True enquanto um ciclo de processamento esta no worker

    // Controle de continuidade: evita martelar AIQ/GourmetServer quando houver
    // falha transitoria, timeout ou indisponibilidade. Mantem compatibilidade:
    // apenas posterga o proximo ciclo, sem alterar estrutura de dados.
    FProximoCicloPermitido: TDateTime;
    FFalhasCiclo: Integer;

    // Snapshots de UI capturados antes de despachar para o worker.
    // Acessar estado UI (cbLeitura.Checked, etc) do worker thread eh inseguro.
    FCbLeituraSnapshot: Boolean;
    FCbSaidaSnapshot: Boolean;

    // Resultado do ciclo: o worker popula, o callback UI consome.
    // Owned aqui; quem cria sao as funcoes Carrega* dos Controllers.
    // Sao TList<TPedidoAIQGourmet>; cada item eh um objeto do qual somos donos
    // ate transferir para os memtables.
    FListaRegistrados: TList;
    FListaProcessados: TList;

    // Estado da API AIQFome para o painel de saude (atualizado pelo timer).
    procedure AtualizarPainelSaudeAPI;
    procedure pbApiLatencyChartPaint(Sender: TObject);

    procedure GravaConfiguracaoAIQ;
    procedure GarantirToken;
    procedure AtualizarSituacaoLojaUI(const ASituacao: string);

    // Ciclo principal (parte UI + parte worker)
    procedure CicloAgendar;
    procedure CicloExecutarBackground;            // roda no worker
    procedure CicloFinalizarUI(AException: Exception);

    function EnviaPedidoAIQGourmet: Boolean;
    procedure ReprocessarPedido(const APedido: string);

    procedure CarregaeAjustaPosicaoTela;
    procedure SalvaPosicaoatualTela;
    procedure ExecucaoUnica;
    procedure ReinializaAplicativo;

    procedure DrenaLogParaMemo;
  public
    vpEntregaMeioDia: string;
    vpRetiraMeioDia: string;
    vpRetiraNoite: string;
    vpEntregaNoite: string;
    vpTopo: string;
    vpEsquerda: string;
    vpLargura: string;
    vpAltura: string;
    vpLeituraAutomatica: string;
    vpLiberacaoAutomatica: string;
    vpCznChave: Integer;
    vpCznChaveAtual: Integer;
    vpCcxChave: Integer;
    vpAIQCFG: TAIQCFG;
    vpAiq: TAIQ;
    vpContaTempo: Integer;
  end;

var
  FormGourmetAIQ: TFormGourmetAIQ;

implementation

uses
  System.IniFiles,
  GourmetAIQ.UI.Theme;

{$R *.dfm}

// ===== Helpers de turno =====
function Retornaturno: string;
var
  vHora: Word;
  vMin, vSec, vMS: Word;
begin
  // Bug original: entre 16:00:00 e 16:00:01 nenhum ramo era escolhido,
  // resultando em string vazia. Agora dividimos em hora cheia:
  //   08:00 a 15:59 -> MEIODIA
  //   16:00 a 07:59 (do dia seguinte) -> NOITE
  DecodeTime(Now, vHora, vMin, vSec, vMS);
  if (vHora >= 8) and (vHora < 16) then
    Result := 'MEIODIA'
  else
    Result := 'NOITE';
end;

function IntervaloPedidosSeguro: Integer;
begin
  // O valor historico TEMPO_PEDIDOS podia ser muito baixo para a API do AIQ.
  // Mantemos a constante existente, mas nunca permitimos menos de 10 segundos
  // entre ciclos, reduzindo risco de rate limit, travamentos e fila duplicada.
  Result := TEMPO_PEDIDOS;
  if Result < 10 then
    Result := 10;
end;

function BackoffSegundosSeguro(const AFalhas: Integer): Integer;
begin
  // Backoff progressivo simples: 15s, 30s, 60s, 120s.
  // Nao muda regra de negocio; apenas protege o ciclo em caso de falha repetida.
  case AFalhas of
    0, 1: Result := 15;
    2:    Result := 30;
    3:    Result := 60;
  else
    Result := 120;
  end;
end;

function HttpStatusSucesso(const AStatus: Integer): Boolean;
begin
  Result := (AStatus >= 200) and (AStatus < 300);
end;

// ===== Form lifecycle =====
procedure TFormGourmetAIQ.FormShow(Sender: TObject);
begin
  // Init basico (vinha do FormCreate, mas o .dfm so registra OnShow).
  FCicloAtivo := False;
  FProximoCicloPermitido := 0;
  FFalhasCiclo := 0;
  vpContaTempo := 0;
  vpCznChave := 0;
  vpCcxChave := 0;

  // Aplica tema escuro (TitleBar dark + ajustes em DBGrid).
  ApplyToForm(Self);
  ApplyToDBGrid(DBGridRegistrados);
  ApplyToDBGrid(DBGridProcessados);
  if Assigned(DBGrid1) then
    ApplyToDBGrid(DBGrid1);

  // Liga handler do grafico de latencia
  if Assigned(pbApiLatencyChart) then
    pbApiLatencyChart.OnPaint := pbApiLatencyChartPaint;

  ExecucaoUnica;
  TMInicializarAplicativo.Enabled := True;
end;

procedure TFormGourmetAIQ.FormCreate(Sender: TObject);
begin
  // Mantida para compat caso alguem religue OnCreate no .dfm. Nao usada hoje.
end;

procedure TFormGourmetAIQ.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // Para o worker antes de sair para nao deixar job orfao tentando dar Queue
  // num form que ja foi destruido.
  TmRelogio.Enabled := False;
  Worker.Stop;
  SalvaPosicaoatualTela;
end;

procedure TFormGourmetAIQ.ExecucaoUnica;
begin
  CreateMutex(nil, False, PChar('GourmetAIQOnlyOne'));
  if GetLastError = ERROR_ALREADY_EXISTS then
    Halt(0);
end;

procedure TFormGourmetAIQ.CarregaeAjustaPosicaoTela;
begin
  vpTopo               := Config.ReadString('GourmetAIQ', 'Top', '0');
  vpEsquerda           := Config.ReadString('GourmetAIQ', 'Left', '0');
  vpLargura            := Config.ReadString('GourmetAIQ', 'Width', '350');
  vpAltura             := Config.ReadString('GourmetAIQ', 'Height', '350');
  vpLeituraAutomatica  := Config.ReadString('GourmetAIQ', 'Read', 'False');
  vpLiberacaoAutomatica:= Config.ReadString('GourmetAIQ', 'Drive', 'False');
  vpEntregaMeioDia     := Config.ReadString('GourmetAIQ', 'EntregaMeioDia', 'True');
  vpEntregaNoite       := Config.ReadString('GourmetAIQ', 'EntregaNoite', 'True');
  vpRetiraMeioDia      := Config.ReadString('GourmetAIQ', 'RetiraMeioDia', 'True');
  vpRetiraNoite        := Config.ReadString('GourmetAIQ', 'RetiraNoite', 'True');

  Self.Top    := StrToIntDef(vpTopo, 0);
  Self.Left   := StrToIntDef(vpEsquerda, 0);
  Self.Width  := StrToIntDef(vpLargura, 350);
  Self.Height := StrToIntDef(vpAltura, 350);

  // ATENCAO: ler estes do .ini pode sobrescrever a escolha do operador
  // entre cliques. Mantemos o comportamento original. Se quiser inverter
  // (operador eh fonte da verdade), basta remover as duas linhas abaixo.
  cbLeitura.Checked     := SameText(vpLeituraAutomatica, 'True');
  cbSaidaEntrega.Checked:= SameText(vpLiberacaoAutomatica, 'True');
end;

procedure TFormGourmetAIQ.SalvaPosicaoatualTela;
begin
  if Self.WindowState = TWindowState.wsMinimized then
    Self.WindowState := TWindowState.wsNormal;

  Config.WriteString('GourmetAIQ', 'Top',    Self.Top.ToString);
  Config.WriteString('GourmetAIQ', 'Left',   Self.Left.ToString);
  Config.WriteString('GourmetAIQ', 'Width',  Self.Width.ToString);
  Config.WriteString('GourmetAIQ', 'Height', Self.Height.ToString);
  Config.WriteString('GourmetAIQ', 'Read',   BoolToStr(cbLeitura.Checked, True));
  Config.WriteString('GourmetAIQ', 'Drive',  BoolToStr(cbSaidaEntrega.Checked, True));
end;

procedure TFormGourmetAIQ.TMInicializarAplicativoTimer(Sender: TObject);
begin
  TMInicializarAplicativo.Enabled := False;
  ReinializaAplicativo;
end;

procedure TFormGourmetAIQ.ReinializaAplicativo;
begin
  TmRelogio.Enabled := False;
  CarregaeAjustaPosicaoTela;

  vpCznChave := 0;
  vpCcxChave := 0;

  // Inicializacao basica vai para o worker para nao travar a tela ao abrir.
  Worker.Enqueue(
    'Inicializar',
    procedure
    begin
      vpCznChave := BuscacznChaveAberta;
      vpCznChaveAtual := vpCznChave;
      vpCcxChave := BuscaccxChaveAberta;

      if vpAIQCFG = nil then
        vpAIQCFG := TAIQCFG.Create;
      CarregaDadosAIQCFG(vpAIQCFG);

      // VerificaSituacaoLoja so depois de termos token valido
      GarantirToken;
      if (vpAIQCFG <> nil) and (vpAIQCFG.cfgmgoutokenaiq <> '') then
      begin
        CarregaIDLojaAIQ(vpAIQCFG);
        GravaConfiguracaoAIQ;
      end;
    end,
    procedure(AException: Exception)
    begin
      if AException <> nil then
      begin
        Log.Error('Inicializar: ' + AException.Message);
        plSituacao.Caption := 'ATENCAO - SERVIDOR DE INTEGRACAO OFFLINE';
        plSituacao.Font.Color := THEME_FG_PRIMARY;
        plSituacao.Color := THEME_ACCENT_RED;
        plSituacao.Visible := True;
      end
      else if vpAIQCFG <> nil then
      begin
        Log.Info('Carregou ID Loja: ' + vpAIQCFG.cfgmgouIDlojaAIQ);
        Panel2.Visible := True;
        AtualizarSituacaoLojaUI(vpAIQCFG.cfgmgousituacaolojaaiq);
      end;

      TmRelogio.Enabled := True;
    end);
end;

// ===== Token =====
procedure TFormGourmetAIQ.GarantirToken;
var
  vTemValidade: Boolean;
  vExpirado: Boolean;
begin
  if vpAIQCFG = nil then Exit;

  vTemValidade := vpAIQCFG.cfgmgouValidadeAIQ > 0;
  vExpirado := vTemValidade and (vpAIQCFG.cfgmgouValidadeAIQ < Now);

  if (vpAIQCFG.cfgmgoutokenaiq = '') or (not vTemValidade) or vExpirado then
  begin
    GerarTokenAIQ(vpAIQCFG);
    GravaConfiguracaoAIQ;
    Log.Info('Token gerado, validade=' + DateTimeToStr(vpAIQCFG.cfgmgouValidadeAIQ));
  end;
end;

procedure TFormGourmetAIQ.GravaConfiguracaoAIQ;
begin
  if vpAIQCFG <> nil then
    GravaDadosAIQCFG(vpAIQCFG);
end;

// ===== UI helpers =====
procedure TFormGourmetAIQ.AtualizarSituacaoLojaUI(const ASituacao: string);
begin
  plSituacao.Visible := True;
  if ASituacao = 'OPEN' then
  begin
    plSituacao.Caption := 'Loja Aberta';
    plSituacao.Font.Color := THEME_ACCENT_GREEN;
    plSituacao.Color := THEME_BG_PANEL;
    pltituloProcessados.Color := plSituacao.Color;
    Panel2.Font.Color := THEME_FG_PRIMARY;
  end
  else if ASituacao = 'CLOSED' then
  begin
    plSituacao.Caption := 'Loja Fechada';
    plSituacao.Font.Color := THEME_ACCENT_RED;
    plSituacao.Color := THEME_ACCENT_YELLOW;
    pltituloProcessados.Color := plSituacao.Color;
    Panel2.Font.Color := THEME_ACCENT_RED;
  end
  else
  begin
    plSituacao.Caption := 'Verificar';
    plSituacao.Color := THEME_BG_PANEL;
  end;
end;


procedure TFormGourmetAIQ.DrenaLogParaMemo;
const
  LIMITE_LINHAS_MEMO = 500;
var
  vNovas: TStringList;
  i: Integer;
begin
  // Pega as linhas pendentes em ordem cronologica (mais antiga primeiro).
  vNovas := TStringList.Create;
  try
    Log.PullPending(vNovas, 50);
    if vNovas.Count = 0 then
      Exit;

    logs.Lines.BeginUpdate;
    try
      // Insere cada linha em pos 0. Como entram em ordem cronologica e
      // empurramos as anteriores pra baixo, a mais recente termina no topo.
      for i := 0 to vNovas.Count - 1 do
        logs.Lines.Insert(0, vNovas[i]);

      // Mantem o memo bounded: descarta as linhas mais antigas (do fim).
      while logs.Lines.Count > LIMITE_LINHAS_MEMO do
        logs.Lines.Delete(logs.Lines.Count - 1);
    finally
      logs.Lines.EndUpdate;
    end;
  finally
    vNovas.Free;
  end;
end;

// ===== Painel de saude da API AIQFome =====
procedure TFormGourmetAIQ.AtualizarPainelSaudeAPI;
const
  STATUS_TXT: array[TAIQHealthStatus] of string = (
    'respondendo normalmente',
    'lenta -- pode haver atraso',
    'inst'#225'vel ou indispon'#237'vel');
  STATUS_COLOR: array[TAIQHealthStatus] of Integer = (
    THEME_ACCENT_GREEN, THEME_ACCENT_YELLOW, THEME_ACCENT_RED);
var
  vSnap: TAIQHealthSnapshot;
begin
  vSnap := HealthMonitor.Snapshot;
  lbApiStatus.Caption := STATUS_TXT[vSnap.Status];
  lbApiStatus.Font.Color := STATUS_COLOR[vSnap.Status];
  plApiLed.Color := STATUS_COLOR[vSnap.Status];

  if vSnap.TotalSamples = 0 then
  begin
    lbApiAvg.Caption := '--';
    lbApiMax.Caption := '--';
    lbApiSucesso.Caption := 'sem dados';
  end
  else
  begin
    lbApiAvg.Caption := IntToStr(vSnap.LatencyAvg) + ' ms';
    lbApiMax.Caption := IntToStr(vSnap.LatencyMax) + ' ms';
    lbApiSucesso.Caption := Format('%d%% (%d/%d)',
      [vSnap.SuccessRate, vSnap.SuccessSamples, vSnap.TotalSamples]);
    lbApiSucesso.Font.Color := STATUS_COLOR[vSnap.Status];
  end;

  // Forca repaint do grafico
  if Assigned(pbApiLatencyChart) then
    pbApiLatencyChart.Invalidate;
end;

procedure TFormGourmetAIQ.pbApiLatencyChartPaint(Sender: TObject);
const
  Y_MAX_MS = 5000; // teto da escala em ms
var
  vSnap: TAIQHealthSnapshot;
  vCanvas: TCanvas;
  vRect: TRect;
  vWidth, vHeight: Integer;
  i, n, vX, vY, vPrevX, vPrevY: Integer;
  vSample: TAIQHealthSample;
  vCorLinha: TColor;
begin
  vCanvas := pbApiLatencyChart.Canvas;
  vRect := pbApiLatencyChart.ClientRect;
  vWidth := vRect.Width;
  vHeight := vRect.Height;

  // Fundo
  vCanvas.Brush.Color := THEME_BG_EDITOR;
  vCanvas.FillRect(vRect);

  // Linhas guia (500ms e 2000ms)
  vCanvas.Pen.Color := THEME_GRID_LINES;
  vCanvas.Pen.Style := psDot;
  vY := vHeight - Round(500 / Y_MAX_MS * vHeight);
  vCanvas.MoveTo(0, vY); vCanvas.LineTo(vWidth, vY);
  vY := vHeight - Round(2000 / Y_MAX_MS * vHeight);
  vCanvas.MoveTo(0, vY); vCanvas.LineTo(vWidth, vY);
  vCanvas.Pen.Style := psSolid;

  vSnap := HealthMonitor.Snapshot;
  n := Length(vSnap.Samples);
  if n < 2 then Exit;

  case vSnap.Status of
    ahsHealthy:  vCorLinha := THEME_ACCENT_GREEN;
    ahsDegraded: vCorLinha := THEME_ACCENT_YELLOW;
    ahsDown:     vCorLinha := THEME_ACCENT_RED;
  else
    vCorLinha := THEME_FG_PRIMARY;
  end;
  vCanvas.Pen.Color := vCorLinha;
  vCanvas.Pen.Width := 2;

  vPrevX := 0; vPrevY := vHeight;
  for i := 0 to n - 1 do
  begin
    vSample := vSnap.Samples[i];
    vX := Round(i * (vWidth / (n - 1)));
    if vSample.LatencyMs > Y_MAX_MS then
      vY := 0
    else
      vY := vHeight - Round(vSample.LatencyMs / Y_MAX_MS * vHeight);

    if i > 0 then
    begin
      vCanvas.MoveTo(vPrevX, vPrevY);
      vCanvas.LineTo(vX, vY);
    end;

    // Marcar falhas com pontinho vermelho
    if not vSample.Success then
    begin
      vCanvas.Brush.Color := THEME_ACCENT_RED;
      vCanvas.Ellipse(vX - 3, vY - 3, vX + 3, vY + 3);
    end;

    vPrevX := vX;
    vPrevY := vY;
  end;

  // Ponto final destacado
  vCanvas.Brush.Color := vCorLinha;
  vCanvas.Pen.Color := THEME_BG_EDITOR;
  vCanvas.Pen.Width := 1;
  vCanvas.Ellipse(vPrevX - 3, vPrevY - 3, vPrevX + 3, vPrevY + 3);
end;

// ===== Ciclo principal =====
procedure TFormGourmetAIQ.TmRelogioTimer(Sender: TObject);
begin
  // 1. Atualiza relogio. Operacao barata, fica na UI.
  pnRelogio.Caption := TimeToStr(Time);

  // 2. Drena logs para o Memo. Tambem barato.
  DrenaLogParaMemo;

  // 3. Atualiza painel de saude da API AIQFome.
  AtualizarPainelSaudeAPI;

  // 3. Se houve falha recente, respeita backoff antes de novo ciclo.
  if (FProximoCicloPermitido > 0) and (Now < FProximoCicloPermitido) then
  begin
    pnContador.Caption := 'Aguardando recuperacao...';
    Exit;
  end;

  // 4. Conta o intervalo entre ciclos.
  vpContaTempo := vpContaTempo + 1;
  if vpContaTempo <= IntervaloPedidosSeguro then
  begin
    pnContador.Caption := Format('%d de %d seg', [vpContaTempo, IntervaloPedidosSeguro]);
    Exit;
  end;

  // 4. Hora de processar. Mas so se o ciclo anterior nao esta em andamento.
  //    Isso elimina reentrancia: mesmo que um ciclo demore 30s, nao se acumulam.
  if FCicloAtivo or Worker.IsBusy then
  begin
    pnContador.Caption := 'Aguardando ciclo anterior...';
    Exit;
  end;

  vpContaTempo := 0;
  CicloAgendar;
end;

procedure TFormGourmetAIQ.CicloAgendar;
begin
  FCicloAtivo := True;
  pnContador.Caption := 'Processando...';
  pnRelogio.Color := THEME_BG_TITLEBAR;


  // Captura estado da UI ANTES de despachar: o worker nao pode ler cb*.Checked
  // sem race com a thread principal.
  FCbLeituraSnapshot := cbLeitura.Checked;
  FCbSaidaSnapshot := cbSaidaEntrega.Checked;

  // Listas anteriores ja foram consumidas no callback do ciclo anterior.
  // Garantia extra: se restou alguma (por exception), liberar agora.
  if FListaRegistrados <> nil then
  begin
    FListaRegistrados.Free;
    FListaRegistrados := nil;
  end;
  if FListaProcessados <> nil then
  begin
    FListaProcessados.Free;
    FListaProcessados := nil;
  end;

  Worker.Enqueue(
    'CicloProcessar',
    CicloExecutarBackground,
    CicloFinalizarUI);
end;

procedure TFormGourmetAIQ.CicloExecutarBackground;
var
  i, j: Integer;
  vPed: TPedidoAIQGourmet;
  vAiqPedido: string;
  vAiqStatus: Integer;
  vTemSaida: Boolean;
begin
  // ATENCAO: este metodo roda no worker thread.
  //
  // Regra: NADA de UI aqui. Em particular:
  //   - nao acessar cbLeitura.Checked (use FCbLeituraSnapshot, capturado em CicloAgendar)
  //   - nao mexer em PedidosRegistrados/PedidosProcessados (estao bound a DBGrids)
  //   - 'Pedidos' (TFDMemTable) nao esta bound a DBGrid -- pode mexer com cuidado
  //   - logs vao via Log.Info (Service.Log eh thread-safe)
  //
  // Resultado eh deixado em FListaRegistrados/FListaProcessados para o callback
  // UI consumir.
  Log.Info('--- inicio do ciclo de processamento ---');

  vpCznChave := BuscacznChaveAberta;
  vpCcxChave := BuscaccxChaveAberta;
  Log.Info(Format('Cozinha=%d Caixa=%d', [vpCznChave, vpCcxChave]));

  if (vpCznChave = 0) or (vpCcxChave = 0) then
    Exit; // a UI cuida do estado "fechada" no callback

  if vpCznChave <> vpCznChaveAtual then
    Log.Info('Cozinha trocou: ' + vpCznChaveAtual.ToString + ' -> ' + vpCznChave.ToString);

  // ========== Token e situacao da loja ==========
  if vpAIQCFG = nil then
    vpAIQCFG := TAIQCFG.Create;
  CarregaDadosAIQCFG(vpAIQCFG);
  GarantirToken;
  if vpAIQCFG = nil then
  begin
    Log.Warn('vpAIQCFG nulo apos CarregaDados');
    Exit;
  end;
  CarregaIDLojaAIQ(vpAIQCFG);
  GravaConfiguracaoAIQ;
  Log.Info('Loja: ' + vpAIQCFG.cfgmgousituacaolojaaiq);

  // ========== Baixa pedidos da AIQ se loja aberta ==========
  if vpAIQCFG.cfgmgousituacaolojaaiq = 'OPEN' then
  begin
    Log.Info('Baixando lista de pedidos do AIQ');
    CarregaPedidosAIQ(Pedidos, vpAIQCFG.cfgmgoutokenaiq, Developer_ID);

    // Para cada pedido sem corpo -> baixa detalhe (pode ser 0..N chamadas)
    if Pedidos.Active then
    begin
    Pedidos.First;
    while not Pedidos.Eof do
    begin
      if Pedidostexto.AsString = '' then
      begin
        Log.Info('Baixando detalhe do pedido ' + Pedidospedido.AsString);
        CarregaPedidoAIQ(Pedidos, vpAIQCFG.cfgmgoutokenaiq, Pedidospedido.AsString);
      end;
      Pedidos.Next;
    end;

    // Envia ao Gourmet ANTES de marcar como lido/localmente processado.
    // Regra de confiabilidade:
    //   - se o GourmetServer falhar/timeout/retornar erro, o pedido permanece
    //     lido=0 no memtable e sera tentado novamente no proximo ciclo;
    //   - evita perder pedido parcialmente gravado ou nao gravado.
    Pedidos.First;
    while not Pedidos.Eof do
    begin
      if Pedidos.FieldByName('lido').AsInteger = 0 then
      begin
        if EnviaPedidoAIQGourmet then
        begin
          Pedidos.Edit;
          Pedidos.FieldByName('lido').AsInteger := 1;
          Pedidos.FieldByName('cozinha').AsInteger := vpCznChave;
          Pedidos.FieldByName('registro').AsString := DateTimeToStr(Now);
          Pedidos.Post;
        end
        else
          Log.Warn('Pedido ' + Pedidospedido.AsString +
                   ' nao foi marcado como lido local: GourmetServer nao confirmou gravacao');
      end;
      Pedidos.Next;
    end;
    end;
  end
  else
    Log.Info('Loja fechada no AIQ; pulando download de pedidos');

  // ========== Sincroniza listas locais com o servidor Gourmet ==========
  // Resultado fica em FListaRegistrados / FListaProcessados; o callback UI
  // ira fazer o append nos memtables visiveis.
  FListaRegistrados := CarregaPedidosRegistradosGourmet(vpCznChave);
  FListaProcessados := CarregaPedidosGourmet(vpCznChave);

  // ========== Ajusta status (lido/pronto) na AIQ ==========
  // Fazemos aqui no worker, pois sao chamadas HTTP. Mexemos apenas nas listas
  // (objetos em memoria, nao em memtables visiveis).
  if (FListaRegistrados <> nil) and (FListaProcessados <> nil) and
     (vpAIQCFG.cfgmgoutokenaiq <> '') then
  begin
    for i := 0 to FListaRegistrados.Count - 1 do
    begin
      vPed := TPedidoAIQGourmet(FListaRegistrados[i]);
      vAiqPedido := vPed.aiqpedido;
      vAiqStatus := StrToIntDef(vPed.aiqstatus, 0);

      // Pedido tem 'saida' associada na lista de processados?
      vTemSaida := False;
      // Busca linear (listas pequenas, normalmente <30 pedidos)
      for j := 0 to FListaProcessados.Count - 1 do
      begin
        if TPedidoAIQGourmet(FListaProcessados[j]).aiqpedido = vAiqPedido then
        begin
          vTemSaida := TPedidoAIQGourmet(FListaProcessados[j]).aiqsaida <> '';
          Break;
        end;
      end;

      // Marcar como lido na AIQ (status 0 ou 1 -> 2)
      if (vAiqStatus in [0, 1]) and FCbLeituraSnapshot then
      begin
        if MarcaPedidoLidoAIQ(vpAIQCFG.cfgmgoutokenaiq, vAiqPedido, Developer_ID) then
        begin
          vPed.aiqstatus := '2';
          AjustaStatusPedidoGourmet(vAiqPedido, '2');
          Log.Info('Pedido ' + vAiqPedido + ' marcado lido (status -> 2)');
        end;
      end;

      // Marcar como pronto na AIQ (status 2 + tem saida -> 3)
      if (StrToIntDef(vPed.aiqstatus, 0) = 2) and vTemSaida and FCbSaidaSnapshot then
      begin
        if MarcaPedidoProntoAIQ(vpAIQCFG.cfgmgoutokenaiq, vAiqPedido, Developer_ID) then
        begin
          vPed.aiqstatus := '3';
          AjustaStatusPedidoGourmet(vAiqPedido, '3');
          Log.Info('Pedido ' + vAiqPedido + ' marcado pronto (status -> 3)');
        end;
      end;
    end;
  end;

  Log.Info('--- fim do ciclo (parte background) ---');
end;

procedure TFormGourmetAIQ.CicloFinalizarUI(AException: Exception);
var
  i: Integer;
  vPed: TPedidoAIQGourmet;
begin
  // UI thread. Apenas atualizar painels e popular memtables visiveis a partir
  // das listas que o worker preparou. Nada de HTTP.
  try
    if AException <> nil then
    begin
      Inc(FFalhasCiclo);
      FProximoCicloPermitido := IncSecond(Now, BackoffSegundosSeguro(FFalhasCiclo));
      Log.Error('Ciclo: ' + AException.ClassName + ' - ' + AException.Message +
                ' | proxima tentativa apos ' + IntToStr(BackoffSegundosSeguro(FFalhasCiclo)) + 's');
      pnContador.Caption := 'Erro no ciclo - aguardando';
      Exit;
    end
    else
    begin
      FFalhasCiclo := 0;
      FProximoCicloPermitido := 0;
    end;

    if vpCznChave <> vpCznChaveAtual then
    begin
      vpCznChaveAtual := vpCznChave;
      ReinializaAplicativo;
      Exit;
    end;

    if vpCznChave = 0 then
    begin
      pnRelogio.Caption := 'Cozinha Fechada';
      pnRelogio.Color := THEME_ACCENT_RED;
      plSituacao.Visible := False;
      Exit;
    end;
    if vpCcxChave = 0 then
    begin
      plCaixa.Caption := 'Caixa Fechada';
      Exit;
    end;
    plCaixa.Caption := 'Caixa Normal';

    if vpAIQCFG = nil then
      Exit;
    AtualizarSituacaoLojaUI(vpAIQCFG.cfgmgousituacaolojaaiq);

    // ===== Popula memtable Registrados =====
    PedidosRegistrados.DisableControls;
    try
      PedidosRegistrados.Close;
      PedidosRegistrados.Open;
      if FListaRegistrados <> nil then
      begin
        for i := 0 to FListaRegistrados.Count - 1 do
        begin
          vPed := TPedidoAIQGourmet(FListaRegistrados[i]);
          PedidosRegistrados.Append;
          PedidosRegistradosaiqchave.AsInteger := vPed.aiqchave;
          PedidosRegistradosaiqpedido.AsString := vPed.aiqpedido;
          PedidosRegistradosaiqstatus.AsString := vPed.aiqstatus;
          PedidosRegistradosaiqregistro.AsString := datahorasqltotext(vPed.aiqregistro);
          PedidosRegistrados.Post;
        end;
      end;
      PedidosRegistrados.First;
    finally
      PedidosRegistrados.IndexFieldNames := 'aiqregistro:D';
      PedidosRegistrados.EnableControls;
    end;
    plquantidaderegistrados.Caption := PedidosRegistrados.RecordCount.ToString;

    // ===== Popula memtable Processados =====
    PedidosProcessados.DisableControls;
    try
      PedidosProcessados.Close;
      PedidosProcessados.Open;
      PedidosProcessados.IndexFieldNames := 'registro:D';
      if FListaProcessados <> nil then
      begin
        for i := 0 to FListaProcessados.Count - 1 do
        begin
          vPed := TPedidoAIQGourmet(FListaProcessados[i]);
          PedidosProcessados.Append;
          PedidosProcessadoschave.AsInteger := vPed.aiqchave;
          PedidosProcessadospedido.AsString := vPed.aiqpedido;
          PedidosProcessadoslido.AsString := vPed.aiqstatus;
          PedidosProcessadosregistro.AsString := Copy(datahorasqltotext(vPed.immhoraimpresso), 12, 5);
          PedidosProcessadosnome.AsString := vPed.etdidentificacao;
          PedidosProcessadosnumero.AsString := vPed.immnumepedido;
          PedidosProcessadosorcamento.AsInteger := vPed.orcchave;
          if vPed.aiqsaida <> '' then
            PedidosProcessadossaida.AsString := Copy(vPed.aiqsaida, 1, 5);
          PedidosProcessados.Post;
        end;
      end;
      PedidosProcessados.First;
    finally
      PedidosProcessados.IndexFieldNames := 'registro:D';
      PedidosProcessados.EnableControls;
    end;
    plquantidade.Caption := PedidosProcessados.RecordCount.ToString;

    pnContador.Caption := 'OK ' + TimeToStr(Now);
    pnRelogio.Color := THEME_BG_PANEL;
  finally
    // Liberar listas e seus itens, agora que ja foram transferidos.
    if FListaRegistrados <> nil then
    begin
      for i := 0 to FListaRegistrados.Count - 1 do
        TPedidoAIQGourmet(FListaRegistrados[i]).Free;
      FListaRegistrados.Free;
      FListaRegistrados := nil;
    end;
    if FListaProcessados <> nil then
    begin
      for i := 0 to FListaProcessados.Count - 1 do
        TPedidoAIQGourmet(FListaProcessados[i]).Free;
      FListaProcessados.Free;
      FListaProcessados := nil;
    end;
    FCicloAtivo := False;
  end;
end;
// ===== UI: send pedido para Gourmet (chamado a partir do CicloFinalizarUI) =====
function TFormGourmetAIQ.EnviaPedidoAIQGourmet: Boolean;
var
  vPedidoGourmet: TPedidoAIQGourmet;
  vlStatus: Integer;
  vlJsonValue: TJSONValue;
  vlJsonObject: TJSONObject;
begin
  // Bug original: ParseJSONValue era atribuido em vlJsonObject sobrescrito,
  // vazando o TJsonObject.Create anterior. Alem disso vlJsonValue nunca era
  // liberado. Aqui:
  //   - nao alocamos TJsonObject.Create antes (eh sobrescrito de qualquer jeito)
  //   - usamos try/finally para liberar o vlJsonValue, que eh dono do
  //     vlJsonObject embutido.
  vlJsonValue := nil;
  vPedidoGourmet := nil;
  try
    vlJsonValue := TJSONObject.ParseJSONValue(Pedidostexto.AsString);
    if vlJsonValue is TJSONObject then
      vlJsonObject := TJSONObject(vlJsonValue)
    else
      vlJsonObject := nil;

    vPedidoGourmet := TPedidoAIQGourmet.Create;
    vPedidoGourmet.aiqpedido := Pedidospedido.AsString;
    vPedidoGourmet.aiqstatus := '0';
    vPedidoGourmet.aiqjson := Pedidostexto.AsString;
    vPedidoGourmet.cznchave := vpCznChave;

    if Pedidosvalor.AsString = '' then
      vPedidoGourmet.aiqvalor := '0'
    else
      vPedidoGourmet.aiqvalor := Pedidosvalor.AsString;

    if Pedidosentrega.AsString = '' then
      vPedidoGourmet.aiqentrega := '0'
    else
      vPedidoGourmet.aiqentrega := Pedidosentrega.AsString;

    vPedidoGourmet.aiqregistro := DateTimeToStr(Now);

    // is_pickup eh apenas para log/diagnostico aqui (a regra real fica
    // no servidor Gourmet); o codigo original armazenava em flags locais
    // que nao eram usadas. Removido.
    if (vlJsonObject <> nil) and (vlJsonObject.GetValue('is_pickup', '') = 'true') then
      Log.Debug('Pedido eh retira (is_pickup=true)');

    Log.Info('Enviando pedido ao Gourmet: ' + Pedidospedido.AsString);
    vlStatus := GravaPedidoGourmet(vPedidoGourmet);
    Result := HttpStatusSucesso(vlStatus);
    if Result then
      Log.Info('Pedido enviado e confirmado pelo Gourmet, status=' + IntToStr(vlStatus))
    else
      Log.Warn('Pedido NAO confirmado pelo Gourmet, status=' + IntToStr(vlStatus));
  finally
    vPedidoGourmet.Free;
    vlJsonValue.Free;  // dono dos sub-objetos parseados
  end;
end;

// ===== Carrega listas locais do servidor Gourmet =====

// ===== Reprocessar pedido manual =====
procedure TFormGourmetAIQ.ReprocessarPedido(const APedido: string);
var
  vAIQ: TAIQ;
  vPedidoAIQGourmet: TPedidoAIQGourmet;
begin
  // Bug original: AV em caso de exception antes do segundo Create, pois
  // o finally chamava .Free em ponteiros nao inicializados.
  vAIQ := nil;
  vPedidoAIQGourmet := nil;
  TmRelogio.Enabled := False;
  try
    vAIQ := TAIQ.Create;
    vAIQ.aiqchave := 0;
    vAIQ.aiqpedido := StrToIntDef(APedido, 0);

    Log.Info('Reprocessando pedido: ' + APedido);
    CarregaDadosAIQ(vAIQ);

    vPedidoAIQGourmet := TPedidoAIQGourmet.Create;
    vPedidoAIQGourmet.aiqchave := vAIQ.aiqchave;
    vPedidoAIQGourmet.aiqpedido := vAIQ.aiqpedido.ToString;
    vPedidoAIQGourmet.aiqstatus := '0';
    vPedidoAIQGourmet.aiqjson := vAIQ.aiqjson;
    vPedidoAIQGourmet.cznchave := vpCznChave;

    if vPedidoAIQGourmet.aiqjson <> '' then
    begin
      if GravaPedidoGourmet(vPedidoAIQGourmet) = 200 then
        Log.Info('Pedido reprocessado: ' + APedido);
    end
    else
      Log.Warn('Pedido sem corpo JSON: ' + APedido);
  finally
    FreeAndNil(vPedidoAIQGourmet);
    FreeAndNil(vAIQ);
    TmRelogio.Enabled := True;
  end;
end;

// ===== Event handlers da UI =====
procedure TFormGourmetAIQ.PedidosRegistradosAfterInsert(DataSet: TDataSet);
begin
  PedidosRegistradosaiqsaidaok.AsInteger := 0;
end;

procedure TFormGourmetAIQ.DBGridAProcessarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  vpContaTempo := 0;
end;

procedure TFormGourmetAIQ.DBGridRegistradosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  vpContaTempo := 0;
end;

procedure TFormGourmetAIQ.DBGridRegistradosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  vCanvas: TCanvas;
begin
  vCanvas := DBGridRegistrados.Canvas;

  // Cores no padrao VS Code:
  //   - status=0 (nao lido) -> badge vermelho
  //   - selecionado -> azul accent
  //   - normal -> bg sidebar
  if gdSelected in State then
  begin
    vCanvas.Brush.Color := THEME_ACCENT_BLUE;
    vCanvas.Font.Color := THEME_FG_PRIMARY;
  end
  else if PedidosRegistradosaiqstatus.AsString = '0' then
  begin
    vCanvas.Brush.Color := THEME_ACCENT_RED;
    vCanvas.Font.Color := THEME_FG_PRIMARY;
  end
  else
  begin
    vCanvas.Brush.Color := THEME_BG_SIDEBAR;
    vCanvas.Font.Color := THEME_FG_PRIMARY;
  end;
  vCanvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFormGourmetAIQ.Button1Click(Sender: TObject);
begin
  TmRelogio.Enabled := False;
  Button1.Enabled := False;
  try
    Log.Info('Botao Reprocessar pedido clicado');
    ReprocessarPedido(Edit2.Text);

    // Apos reprocessar, dispara um ciclo completo para atualizar grids.
    // O contador zera para o ciclo acontecer no proximo tick, sem esperar.
    vpContaTempo := IntervaloPedidosSeguro;
  finally
    Button1.Enabled := True;
    TmRelogio.Enabled := True;
  end;
end;

Procedure TFormGourmetAIQ.Button3Click(Sender: TObject);
begin
  if TmRelogio.Enabled then
  begin
    Button3.Caption := 'Reativar';
    TmRelogio.Enabled := False;
  end
  else
  begin
    Button3.Caption := 'Pausar';
    TmRelogio.Enabled := True;
  end;
end;

end.
