unit ufTefTransacaoPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrTEFAPIComum, ACBrTEFAPI, ACBrBase,
  ACBrPosPrinter, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls,
  uVendaClass, inifiles, ACBrTEFComum, ACBrDelphiZXingQRCode,
  ACBrTEFPayGoComum, ACBrUtil, ufuncoes;

{ TACBrTEFTipoCartao = (
  teftcCredito,
  teftcDebito,
  teftcVoucher,
  teftcFrota,
  teftcPrivateLabel,
  teftcOutros );


  TACBrTEFModalidadePagamento = (
  tefmpNaoDefinido,
  tefmpCartao,
  tefmpDinheiro,
  tefmpCheque,
  tefmpCarteiraVirtual );
}

type
  /// <summary> Record armazenas dados da operação com TEF.</summary>
  TOperacaoTEF = record
    Valor: Extended;
    Modalidade: String;
    Identificacao: String;
    Bandeira: String;
    AutorizacaoRetorno: String;
    DocumentoRetorno: String;
    ImagemComprovante1aVia: String;
    ImagemComprovante2aVia: String;
    QuantidadeParcela: String;
    TipoOperacao: String;
    TipoFinanciador: String;
    TipoCartao: String;
    Rede: String;
    Dia: String;
    /// <summary> Record armazenas dados da operação com TEF.</summary>
  end;

type

  TTipoBotaoOperacao = (bopNaoExibir, bopCancelarVenda, bopLiberarCaixa, bopCancelarEsperaTEF);

function ProcessaPagamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
function ProcessaCancelamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;

type
  TfTefTransacaoPG = class(TForm)
    pImpressao: TPanel;
    pMensagem: TPanel;
    pQRCode: TPanel;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrTEFAPI1: TACBrTEFAPI;
    StatusBar: TStatusBar;
    Image1: TImage;
    btOperacao: TButton;
    lMensagemOperador: TPanel;
    Panel9: TPanel;
    TimerProcessaTransacao: TTimer;
    mLog: TMemo;
    mImpressao: TMemo;
    imgQRCode: TImage;
    procedure TimerProcessaTransacaoTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ACBrTEFAPI1QuandoDetectarTransacaoPendente(RespostaTEF: TACBrTEFResp; const MsgErro: string);
    procedure ACBrTEFAPI1QuandoEsperarOperacao(OperacaoAPI: TACBrTEFAPIOperacaoAPI; var Cancelar: Boolean);
    procedure ACBrTEFAPI1QuandoExibirMensagem(const Mensagem: string; Terminal: TACBrTEFAPITela; MilissegundosExibicao: Integer);
    procedure ACBrTEFAPI1QuandoExibirQRCode(const DadosQRCode: string);
    procedure ACBrTEFAPI1QuandoFinalizarOperacao(RespostaTEF: TACBrTEFResp);
    procedure ACBrTEFAPI1QuandoFinalizarTransacao(RespostaTEF: TACBrTEFResp; AStatus: TACBrTEFStatusTransacao);
    procedure ACBrTEFAPI1QuandoGravarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrTEFAPI1QuandoPerguntarCampo(DefinicaoCampo: TACBrTEFAPIDefinicaoCampo; var Resposta: string; var Validado, Cancelado: Boolean);
    procedure ACBrTEFAPI1QuandoPerguntarMenu(const Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    { parametros ini }
    vpGP: Integer;
    vpQRCode: Integer;
    vpLog: String;
    vpImpressaoViaCliente: Integer;
    vpTransacaoPendente: Integer;
    vpTransacaoPendenteInicializacao: Integer;
    vpAutoAtendimento: Integer;
    vpImprimirViaReduzida: Integer;
    vpConfirmarAutomaticamente: Integer;
    vpSuportaDesconto: Integer;
    vpSuportaSaque: Integer;

    vpRazaoSocialSwHouse: String;
    vpCNPJSwHouse: string;
    vpNomeAplicacao: String;
    vpVersaoAplicacao: String;

    vpRazaoSocialEstabelecimento: String;
    vpCNPJEstabelecimento: String;

    vpModeloPosPrinter: Integer;
    vpPortaPosPrinter: String;
    vpPagCodigo: Integer;
    vpACBrPosPrinter: String;
    vpColunasPosPrinter: Integer;
    vpEspLinhasPosPrinter: Integer;
    vpLinhasPularPosPrinter: Integer;
    vpModeloTEF: Integer;

    FVenda: TVenda;
    FTipoBotaoOperacao: TTipoBotaoOperacao;
    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;

    function GetNomeArquivoConfiguracao: String;
    function GetNomeArquivoVenda: String;
    function GetStatusVenda: TStatusVenda;
    procedure SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);
    procedure SetStatusVenda(AValue: TStatusVenda);
    procedure TratarException(Sender: TObject; E: Exception);
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure AdicionarLinhaLog(AMensagem: String);
    procedure LimparMensagensTEF;
    procedure MensagemTEF(const MsgOperador, MsgCliente: String);
    procedure ImprimirComprovantes(ATEFResp: TACBrTEFResp);
    procedure ImprimirRelatorio(ATexto: String);
    function ImprimirViaCliente: Boolean;
    procedure AdicionarLinhaImpressao(ALinha: String);
    procedure ExibirPainelQRCode;
    procedure OcultatPainelQRCode;
    procedure ImprimirTodosComprovantes;
    function AcharTransacaoTEF(IndicePagto: Integer): TACBrTEFResp;
    procedure AtualizarPagamentosVendaNaInterface;
    procedure AtualizarTotaisVendaNaInterface;
    procedure IrParaOperacaoTEF;
    procedure Ativar;
    procedure Desativar;
    procedure AtivarPosPrinter;
    procedure AtivarTEF;
    procedure ConfigurarPosPrinter;
    procedure ConfigurarTEF;
    procedure IncluirPagamento(vValorPago: string; vFormaPagamento: Integer);
    procedure AdicionarPagamento(const Indice: String; AValor: Double);
    procedure FinalizarVenda;
    procedure CancelarVenda;
    procedure AtualizarVendaNaInterface;

  protected
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;

  public
    { Public declarations }
    vpOperacaoTEF: TOperacaoTEF;
    vpCancelado: Boolean;
    vpTipoProcessamento: Integer;
    property NomeArquivoConfiguracao: String read GetNomeArquivoConfiguracao;
    property NomeArquivoVenda: String read GetNomeArquivoVenda;

    property StatusVenda: TStatusVenda read GetStatusVenda write SetStatusVenda;
    property TipoBotaoOperacao: TTipoBotaoOperacao read FTipoBotaoOperacao write SetTipoBotaoOperacao;

    property Venda: TVenda read FVenda;

  end;

var
  fTefTransacaoPG: TfTefTransacaoPG;

implementation

uses
  System.TypInfo, frExibeMensagem, System.StrUtils, frObtemCampo, frMenuTEF,
  System.Math;

{$R *.dfm}

function ProcessaPagamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
  fTefTransacaoPG: TfTefTransacaoPG;
begin
  try
    fTefTransacaoPG := TfTefTransacaoPG.Create(application);
    fTefTransacaoPG.vpCancelado := False;
    fTefTransacaoPG.vpOperacaoTEF := vOperacaoTEF;
    fTefTransacaoPG.vpTipoProcessamento := ConstProcesTEFPagamento;
    fTefTransacaoPG.ShowModal;
    result := fTefTransacaoPG.vpOperacaoTEF;
  finally
    FreeAndNil(fTefTransacaoPG);
  end;
end;

function ProcessaCancelamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
  fTefTransacaoPG: TfTefTransacaoPG;
begin
  try
    fTefTransacaoPG := TfTefTransacaoPG.Create(application);
    fTefTransacaoPG.vpCancelado := False;
    fTefTransacaoPG.vpOperacaoTEF := vOperacaoTEF;
    fTefTransacaoPG.vpTipoProcessamento := ConstProcesTEFCancelamento;
    fTefTransacaoPG.ShowModal;
    result := fTefTransacaoPG.vpOperacaoTEF;
  finally
    FreeAndNil(fTefTransacaoPG);
  end;
end;

procedure TfTefTransacaoPG.CancelarVenda;
begin
  AdicionarLinhaLog('- CancelarVenda');
  // AQUI você deve cancelar a sua venda no Banco de Dados, desfazendo baixa de
  // estoque ou outras operações que ocorreram durante a venda.

  ACBrTEFAPI1.CancelarOuEstornarTransacoesDiretorioTrabalho;
  AtualizarPagamentosVendaNaInterface;
  StatusVenda := stsCancelada;
end;

procedure TfTefTransacaoPG.FinalizarVenda;
var
  SL: TStringList;
  i: Integer;
  DoctoFiscalOk: Boolean;
  MR: TModalResult;
begin
  try
    // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT)
    DoctoFiscalOk := not False;
    while not DoctoFiscalOk do
    begin
      MR := MessageDlg('Falha no Documento Fiscal' + sLineBreak + 'Tentar Novamente ?', mtConfirmation, [mbYes, mbNo, mbIgnore], 0);
      { * if (MR = mrIgnore) then
        false := False
        else if (MR <> mrYes) then
        raise Exception.Create('Erro no Documento Fiscal');
        * }
      // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT)
      DoctoFiscalOk := not False;
    end;

    SL := TStringList.Create;
    try
      // Ao invés do relatório abaixo, você deve enviar a impressão de um DANFCE ou Extrato do SAT

      SL.Add(PadCenter(' COMPROVANTE DE OPERAÇÃO ', ACBrPosPrinter1.Colunas, '-'));
      SL.Add('Número: <n>' + FormatFloat('000000', Venda.NumOperacao) + '</n>');
      SL.Add('Data/Hora: <n>' + FormatDateTimeBr(Venda.DHInicio) + '</n>');
      SL.Add('</linha_simples>');
      SL.Add('');
      SL.Add('Valor Inicial...: <n>' + FormatFloatBr(Venda.ValorInicial) + '</n>');
      SL.Add('Total Descontos.: <n>' + FormatFloatBr(Venda.TotalDesconto) + '</n>');
      SL.Add('Total Acréscimos: <n>' + FormatFloatBr(Venda.TotalAcrescimo) + '</n>');
      SL.Add('</linha_simples>');
      SL.Add('VALOR FINAL.....: <n>' + FormatFloatBr(Venda.TotalVenda) + '</n>');
      SL.Add('');
      SL.Add(PadCenter(' Pagamentos ', ACBrPosPrinter1.Colunas, '-'));
      for i := 0 to Venda.Pagamentos.Count - 1 do
      begin
        with Venda.Pagamentos[i] do
        begin
          if not Cancelada then
            SL.Add(PadSpace(TipoPagamento + ' - ' + DescricaoTipoPagamento(TipoPagamento) + '|' + FormatFloatBr(ValorPago) + '|' + Rede,
              ACBrPosPrinter1.Colunas, '|'));
        end;
      end;
      SL.Add('</linha_simples>');

      SL.Add('Total Pago......: <n>' + FormatFloatBr(Venda.TotalPago) + '</n>');
      if (Venda.Troco > 0) then
        SL.Add('Troco...........: <n>' + FormatFloatBr(Venda.Troco) + '</n>');

      SL.Add('</linha_dupla>');
      SL.Add('</corte>');
      AdicionarLinhaImpressao(SL.Text);
    finally
      SL.Free;
    end;

    StatusVenda := stsFinalizada;
    if not ACBrTEFAPI1.ConfirmarTransacaoAutomaticamente then
    begin
      ACBrTEFAPI1.ConfirmarTransacoesPendentes;
      AtualizarPagamentosVendaNaInterface;
    end;

    ImprimirTodosComprovantes;

    close;
  except
    CancelarVenda;
    close;
  end;
end;

procedure TfTefTransacaoPG.AdicionarPagamento(const Indice: String; AValor: Double);
var
  Ok, TemTEF: Boolean;
  Modalidade: TACBrTEFModalidadePagamento;
  CartoesAceitos: TACBrTEFTiposCartao;
  ReajusteValor: Double;
  IndicePagto: LongInt;
begin
  Ok := False;
  TemTEF := False;

  IndicePagto := StrToIntDef(Indice, 0);

  {


    3	Cheque Terceiros
    4	Cartão Crédito
    5	Cartão Débito
    6	PIX

  }

  try
    // ** NOTA **
    // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
    // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento

    Modalidade := tefmpNaoDefinido;
    CartoesAceitos := [];

    TemTEF := (IndicePagto >= 2) and (IndicePagto <= 5);
    case IndicePagto of
      3:
        Modalidade := tefmpCheque;
      4:
        begin
          Modalidade := tefmpCartao;
          CartoesAceitos := [teftcCredito]
        end;
      5:
        begin
          Modalidade := tefmpCartao;
          CartoesAceitos := [teftcDebito]
        end;
      6:
        Modalidade := tefmpCarteiraVirtual;
      { 6:
        begin
        Modalidade := tefmpCartao;
        CartoesAceitos := [teftcVoucher]
        end; }
    end;

    if TemTEF then
    begin

      Ok := ACBrTEFAPI1.EfetuarPagamento(IntToStr(Venda.NumOperacao), AValor, Modalidade, CartoesAceitos, tefmfAVista);
      Ok := Ok and ACBrTEFAPI1.UltimaRespostaTEF.Sucesso and ACBrTEFAPI1.UltimaRespostaTEF.TransacaoAprovada;
    end
    else
      Ok := True;
  finally
    StatusVenda := stsEmPagamento;
  end;

  if Ok then
  begin
    with Venda.Pagamentos.New do
    begin
      TipoPagamento := Indice;
      ValorPago := AValor;

      if TemTEF then
      begin
        NSU := ACBrTEFAPI1.UltimaRespostaTEF.NSU;
        Rede := ACBrTEFAPI1.UltimaRespostaTEF.Rede;
        RedeCNPJ := ACBrTEFAPI1.UltimaRespostaTEF.NFCeSAT.CNPJCredenciadora;

        // Calcula a Diferença do Valor Retornado pela Operação TEF do Valor que
        // Informamos no CRT/CHQ
        ReajusteValor := RoundTo(ACBrTEFAPI1.UltimaRespostaTEF.ValorTotal - ValorPago, -2);

        Saque := ACBrTEFAPI1.UltimaRespostaTEF.Saque;
        if (Saque > 0) then
        begin
          // Se houve Saque na operação TEF, devemos adicionar no ValorPago,
          // para que o Saque conste como Troco
          ValorPago := ValorPago + Saque
        end

        else if (ReajusteValor > 0) then
        begin
          // Se não é Saque, mas houve acréscimo no valor Retornado, devemos lançar
          // o Reajuste como Acréscimo na venda
          Venda.TotalAcrescimo := Venda.TotalAcrescimo + ReajusteValor;
        end;

        Desconto := ACBrTEFAPI1.UltimaRespostaTEF.Desconto;
        if (Desconto > 0) then
        begin
          // Se houve Desconto na Operação TEF, devemos subtrair do ValorPago
          // e lançar um Desconto no Total da Transacao
          ValorPago := ValorPago - Desconto;
          Venda.TotalDesconto := Venda.TotalDesconto + Desconto;
        end

        else if (ReajusteValor < 0) then
        begin
          // Se não é Desconto, mas houve redução no Valor Retornado, devemos
          // considerar a redução no ValorPago, pois a Adquirente limitou o
          // valor da Operação, a um máximo permitido... Deverá fechar o cupom,
          // com outra forma de Pagamento
          ValorPago := ValorPago + ReajusteValor;
        end;
      end
      else
        Confirmada := True;
    end;

    AtualizarPagamentosVendaNaInterface;

    if (Venda.TotalPago >= Venda.TotalVenda) then
      FinalizarVenda;
  end;
end;

procedure TfTefTransacaoPG.IncluirPagamento(vValorPago: string; vFormaPagamento: Integer);
Var
  AValor: Double;
begin

  try
    AValor := StrToIntDef(OnlyNumber(vValorPago), 0) / 100;
    AdicionarPagamento(cPagamentos[vFormaPagamento, 0], AValor);

  finally

  end;
end;

procedure TfTefTransacaoPG.ConfigurarTEF;
begin
  AdicionarLinhaLog('- ConfigurarTEF');

  ACBrTEFAPI1.Modelo := TACBrTEFAPITipo(vpGP);
  ACBrTEFAPI1.ArqLOG := vpLog;
  ACBrTEFAPI1.TratamentoTransacaoPendente := TACBrTEFTratamentoTransacaoPendente(vpTransacaoPendente);
  ACBrTEFAPI1.TratamentoTransacaoInicalizacao := TACBrTEFTratamentoTransacaoInicalizacao(vpTransacaoPendenteInicializacao);

  If vpAutoAtendimento = 1 Then
    ACBrTEFAPI1.DadosAutomacao.AutoAtendimento := True
  else
    ACBrTEFAPI1.DadosAutomacao.AutoAtendimento := False;

  if vpImprimirViaReduzida = 1 then
    ACBrTEFAPI1.DadosAutomacao.ImprimeViaClienteReduzida := True
  else
    ACBrTEFAPI1.DadosAutomacao.ImprimeViaClienteReduzida := False;

  if vpConfirmarAutomaticamente = 1 then
    ACBrTEFAPI1.ConfirmarTransacaoAutomaticamente := True
  else
    ACBrTEFAPI1.ConfirmarTransacaoAutomaticamente := False;

  if vpSuportaDesconto = 1 then
    ACBrTEFAPI1.DadosAutomacao.SuportaDesconto := True
  else
    ACBrTEFAPI1.DadosAutomacao.SuportaDesconto := False;

  if vpSuportaSaque = 1 then
    ACBrTEFAPI1.DadosAutomacao.SuportaSaque := True
  else
    ACBrTEFAPI1.DadosAutomacao.SuportaSaque := False;

  if vpModeloTEF = 1 then
    ACBrTEFAPI1.Modelo := tefApiPayGoWeb
  else
    ACBrTEFAPI1.Modelo := tefApiCliSiTEF;

  ACBrTEFAPI1.DadosEstabelecimento.RazaoSocial := vpRazaoSocialEstabelecimento;
  ACBrTEFAPI1.DadosEstabelecimento.CNPJ := vpCNPJEstabelecimento;

  case vpQRCode of
    0:
      ACBrTEFAPI1.ExibicaoQRCode := qrapiNaoSuportado;
    2:
      ACBrTEFAPI1.ExibicaoQRCode := qrapiExibirPinPad;
    3, 4:
      ACBrTEFAPI1.ExibicaoQRCode := qrapiExibirAplicacao;
  else
    ACBrTEFAPI1.ExibicaoQRCode := qrapiAuto;
  end;

end;

procedure TfTefTransacaoPG.AtivarTEF;
begin
  AdicionarLinhaLog('- AtivarTEF');
  ConfigurarTEF;
  ACBrTEFAPI1.Inicializar;
end;

procedure TfTefTransacaoPG.ConfigurarPosPrinter;
begin
  AdicionarLinhaLog('- ConfigurarPosPrinter');
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(vpModeloPosPrinter);
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(vpPagCodigo);
  ACBrPosPrinter1.Porta := vpPortaPosPrinter;
  ACBrPosPrinter1.ColunasFonteNormal := vpColunasPosPrinter;
  ACBrPosPrinter1.LinhasEntreCupons := vpLinhasPularPosPrinter;
  ACBrPosPrinter1.EspacoEntreLinhas := vpEspLinhasPosPrinter;
end;

procedure TfTefTransacaoPG.AtivarPosPrinter;
begin
  AdicionarLinhaLog('- AtivarPosPrinter');
  ConfigurarPosPrinter;
  if (ACBrPosPrinter1.Porta <> '') then
    ACBrPosPrinter1.Ativar
  else
    raise Exception.Create('Porta não definida');
end;

procedure TfTefTransacaoPG.Ativar;
begin
  AdicionarLinhaLog('- Ativar');
  GravarConfiguracao;
  try
    AtivarPosPrinter;
  except
    On E: Exception do
    begin
      TratarException(nil, E);
    end;
  end;
  AtivarTEF;
end;

procedure TfTefTransacaoPG.Desativar;
begin
  AdicionarLinhaLog('- Desativar');
  ACBrPosPrinter1.Desativar;
  ACBrTEFAPI1.DesInicializar;
end;

procedure TfTefTransacaoPG.IrParaOperacaoTEF;
begin
  AdicionarLinhaLog('- IrParaOperacaoTEF');
  Ativar;
  // btImprimir.Enabled := ACBrPosPrinter1.Ativo;
  // cbEnviarImpressora.Enabled := ACBrPosPrinter1.Ativo;
  // cbEnviarImpressora.Checked := cbEnviarImpressora.Enabled;
  StatusVenda := stsLivre;
end;

procedure TfTefTransacaoPG.AdicionarLinhaImpressao(ALinha: String);
begin
  mImpressao.Lines.Add(ALinha);
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TfTefTransacaoPG.ImprimirRelatorio(ATexto: String);
begin
  AdicionarLinhaImpressao('</zera>' + ATexto + '</lf></corte_total>');
end;

function TfTefTransacaoPG.ImprimirViaCliente: Boolean;
var
  MR: TModalResult;
begin
  if (vpImpressaoViaCliente = 0) then
    result := True
  else if (vpImpressaoViaCliente = 1) then // Perguntar
  begin
    MR := MessageDlg('Impressão de TEF' + sLineBreak + 'Imprimir Via do Cliente ?', mtConfirmation, [mbYes, mbNo], 0);
    result := (MR = mrYes);
  end
  else
    result := False;
end;

procedure TfTefTransacaoPG.ImprimirComprovantes(ATEFResp: TACBrTEFResp);
begin
  if not Assigned(ATEFResp) then
    Exit;

  if (ATEFResp.ImagemComprovante2aVia.Count > 0) then
    ImprimirRelatorio(ATEFResp.ImagemComprovante2aVia.Text);

  if (ATEFResp.ImagemComprovante1aVia.Count > 0) then
    if ImprimirViaCliente then
      ImprimirRelatorio(ATEFResp.ImagemComprovante1aVia.Text);
end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoDetectarTransacaoPendente(RespostaTEF: TACBrTEFResp; const MsgErro: string);
var
  AStatus: TACBrTEFStatusTransacao;
  i: Integer;
  ATEFResp: TACBrTEFResp;
  AMsgErro: String;
  MR: TModalResult;
begin
  // Aqui você pode Confirmar ou Desfazer as transações pendentes de acordo com
  // a sua regra de negócios

  // ----------- Exemplo 0 - Deixe o ACBrTEFAndroid CONFIRMAR todas transações pendentes automaticamente
  // ACBrTEFAndroid1.AutoConfirmarTransacoesPendente := True;
  // Nesse caso... esse evento nem será disparado.


  // ----------- Exemplo 1 - Envio de confirmação automática -----------
  // AStatus := stsSucessoManual;
  // ACBrTEFAndroid1.ResolverOperacaoPendente(AStatus);
  // ---------- Fim Exemplo 1 ------------

  // ----------- Exemplo 2 -  Fazer uma pergunta ao usuário ------------
  if (MsgErro = '') then
    AMsgErro := RespostaTEF.TextoEspecialOperador
  else
    AMsgErro := MsgErro;

  MR := MessageDlg('Transação Pendente' + sLineBreak + AMsgErro + sLineBreak + sLineBreak + 'Confirmar ?', mtConfirmation, [mbYes, mbNo], 0);

  if (MR = mrYes) then
    AStatus := tefstsSucessoManual
  else
    AStatus := tefstsErroDiverso;

  ACBrTEFAPI1.ResolverTransacaoPendente(AStatus);
  // ---------- Fim Exemplo 2 ------------

  // Se confirmou, vamos re-imprimir a transação que ficou pendente
  if (AStatus in [tefstsSucessoAutomatico, tefstsSucessoManual]) then
  begin
    // Achando a transação original...
    i := ACBrTEFAPI1.RespostasTEF.AcharTransacao(RespostaTEF.Rede, RespostaTEF.NSU, RespostaTEF.Finalizacao);
    if (i >= 0) then
      ATEFResp := ACBrTEFAPI1.RespostasTEF[i]
    else
      ATEFResp := RespostaTEF;

    ImprimirComprovantes(ATEFResp);
  end;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoEsperarOperacao(OperacaoAPI: TACBrTEFAPIOperacaoAPI; var Cancelar: Boolean);
begin
  AdicionarLinhaLog('QuandoOcorrerOperacao: ' + GetEnumName(TypeInfo(TACBrTEFAPIOperacaoAPI), Integer(OperacaoAPI)));

  if FCanceladoPeloOperador then
  begin
    FCanceladoPeloOperador := False;
    Cancelar := True; // Aborta o TEF em andamento
  end
  else if (StatusVenda <> stsAguardandoTEF) then
  begin
    StatusVenda := stsAguardandoTEF; // Liga Botão que permite cancelar
    FCanceladoPeloOperador := False;
  end;

  application.ProcessMessages;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoExibirMensagem(const Mensagem: string; Terminal: TACBrTEFAPITela; MilissegundosExibicao: Integer);
var
  FormExibeMensagem: TFormExibeMensagem;
begin
  if (Mensagem = '') then
  begin
    if Terminal = telaCliente then
      MensagemTEF('', ' ');
    if Terminal = telaOperador then
      MensagemTEF(' ', '');
  end
  else if (MilissegundosExibicao >= 0) then
  begin
    FormExibeMensagem := TFormExibeMensagem.Create(Self);
    try
      FormExibeMensagem.Mensagem := Mensagem;
      FormExibeMensagem.TempoEspera := MilissegundosExibicao;
      FormExibeMensagem.ShowModal;
    finally
      FormExibeMensagem.Free;
    end;
  end
  else
  begin
    if Terminal = telaCliente then
      MensagemTEF('', Mensagem);
    if Terminal = telaOperador then
      MensagemTEF(Mensagem, '');
  end;
end;

procedure TfTefTransacaoPG.ExibirPainelQRCode;
begin
  if pQRCode.Visible then
    Exit;

  mImpressao.Visible := False;
  pQRCode.Visible := True;
  pQRCode.Align := alClient;
end;

procedure TfTefTransacaoPG.OcultatPainelQRCode;
begin
  if not pQRCode.Visible then
    Exit;

  pQRCode.Visible := False;
  mImpressao.Visible := True;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoExibirQRCode(const DadosQRCode: string);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
begin
  if (vpQRCode = 4) then // 4 - Imprimir
  begin
    if (DadosQRCode <> '') then
      ImprimirRelatorio('</ce>' + '<qrcode_largura>8</qrcode_largura>' + '<qrcode>' + DadosQRCode + '</qrcode>' + '</lf>');

    Exit;
  end;

  if (DadosQRCode <> '') then
    ExibirPainelQRCode
  else
  begin
    OcultatPainelQRCode;
    Exit;
  end;

  QRCode := TDelphiZXingQRCode.Create;
  QRCodeBitmap := TBitmap.Create;
  try
    QRCode.Encoding := qrUTF8NoBOM;
    QRCode.QuietZone := 2;
    QRCode.Data := widestring(DadosQRCode);

    QRCodeBitmap.Width := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
      end;
    end;

    imgQRCode.Picture.Bitmap.Assign(QRCodeBitmap);
  finally
    QRCode.Free;
    QRCodeBitmap.Free;
  end;

end;

procedure TfTefTransacaoPG.ImprimirTodosComprovantes;
var
  i: Integer;
  ATEFResp: TACBrTEFResp;
begin
  for i := 0 to ACBrTEFAPI1.RespostasTEF.Count - 1 do
    ImprimirComprovantes(ACBrTEFAPI1.RespostasTEF[i]);
end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoFinalizarOperacao(RespostaTEF: TACBrTEFResp);
var
  i, nINFO: Integer;
  TheKey, TheValue: string;
  MsgFinal: String;
  MR: TModalResult;
  AStatus: TACBrTEFStatusTransacao;
begin
  MsgFinal := RespostaTEF.TextoEspecialOperador;

  AdicionarLinhaLog('');
  AdicionarLinhaLog('');
  AdicionarLinhaLog('------ Fim da Operação ------');
  AdicionarLinhaLog('Sucesso: ' + IfThen(RespostaTEF.Sucesso, 'SIM', 'NÃO'));
  AdicionarLinhaLog('Resultado: ' + MsgFinal);

  // Usando as propriedades de TACBrTEFResp
  if (RespostaTEF.ValorTotal > 0) then
  begin
    AdicionarLinhaLog('');
    AdicionarLinhaLog('- Rede: ' + RespostaTEF.Rede);
    AdicionarLinhaLog('- NSU: ' + RespostaTEF.NSU);
    AdicionarLinhaLog('- Parcelas: ' + IntToStr(RespostaTEF.QtdParcelas) + ', parcelado por: ' + GetEnumName(TypeInfo(TACBrTEFRespParceladoPor),
      Integer(RespostaTEF.ParceladoPor)));
    AdicionarLinhaLog('- Tipo Cartão: ' + IfThen(RespostaTEF.Debito, 'Debito', IfThen(RespostaTEF.Credito, 'Crédito', '')));
    AdicionarLinhaLog(' - Valor: ' + FormatFloat(',0.00', RespostaTEF.ValorTotal));
  end;

  // Lendo um Campo Específico //
  if (ACBrTEFAPI1.Modelo = tefApiPayGoWeb) then
    AdicionarLinhaLog('- PWINFO_REQNUM: ' + RespostaTEF.LeInformacao(PWINFO_REQNUM, 0).AsString);

  // Exemplo de como processar a Impressão dos comprovantes
  if not RespostaTEF.Sucesso then
  begin
    if (pos('PENDENTE', UpperCase(MsgFinal)) > 0) then
    begin
      if (ACBrTEFAPI1.TratamentoTransacaoPendente = tefpenConfirmar) then
        MsgFinal := MsgFinal + sLineBreak + 'Transação será CONFIRMADA'
      else if (ACBrTEFAPI1.TratamentoTransacaoPendente = tefpenEstornar) then
        MsgFinal := MsgFinal + sLineBreak + 'Transação será ESTORNADA'
      else
        MsgFinal := ''; // Ignora esse erro, pois será tratado em QuandoDetectarTransacaoPendente
    end;

    if (MsgFinal <> '') then
      MessageDlg(MsgFinal, mtError, [mbOK], 0);
  end
  else
  begin

    vpOperacaoTEF.DocumentoRetorno := RespostaTEF.NSU;
    vpOperacaoTEF.ImagemComprovante1aVia := RespostaTEF.ImagemComprovante1aVia.Text;
    vpOperacaoTEF.ImagemComprovante2aVia := RespostaTEF.ImagemComprovante2aVia.Text;
    vpOperacaoTEF.Rede := RespostaTEF.Rede;
    vpOperacaoTEF.Bandeira := RespostaTEF.CodigoBandeiraPadrao;



    // Para Confirmar a transação Automáticamento... use:
    // "ConfirmarTransacoesAutomaticamente := True"

    // ----- Para Confirmar Manualmente a trasação, use o exemplo abaixo -----
    (*
      if (not cbConfirmarAutomaticamente.Checked) and RespostaTEF.Confirmar then
      begin
      MR := MessageDlg( 'TEF',
      'Transação Autorizada'+sLineBreak+sLineBreak+
      'Deseja Confirmar ?',
      mtConfirmation,
      [mbYes, mbNo], 0 );

      if (MR = mrYes) then
      AStatus := tefstsSucessoManual
      else
      AStatus := tefstsErroDiverso;

      ACBrTEFAPI1.FinalizarTransacao(AStatus);
      end;
    *)

    // Se não for Venda, já podemos Confirmar e imprimir os comprovantes
    if (RespostaTEF.Header <> CHEADER_PAGAMENTO) then
    begin
      if RespostaTEF.Confirmar then // Requer confirmação ?
        ACBrTEFAPI1.FinalizarTransacao(tefstsSucessoAutomatico); // ...então confirme

      ImprimirTodosComprovantes
    end;
  end;

end;

function TfTefTransacaoPG.AcharTransacaoTEF(IndicePagto: Integer): TACBrTEFResp;
var
  i: Integer;
begin
  result := Nil;
  if (IndicePagto < 0) and (IndicePagto >= Venda.Pagamentos.Count) then
    Exit;

  i := ACBrTEFAPI1.RespostasTEF.AcharTransacao(Venda.Pagamentos[IndicePagto].Rede, Venda.Pagamentos[IndicePagto].NSU);
  if (i >= 0) then
    result := ACBrTEFAPI1.RespostasTEF[i];
end;

procedure TfTefTransacaoPG.AtualizarTotaisVendaNaInterface;
begin
  // mostra o resumo da situacao da venda
  // seTotalDesconto.Text := FormatFloatBr(Venda.TotalDesconto);
  // seTotalAcrescimo.Text := FormatFloatBr(Venda.TotalAcrescimo);
  // edTotalVenda.Text := FormatFloatBr(Venda.TotalVenda);
  // edTotalPago.Text := FormatFloatBr(Venda.TotalPago);
  // edTroco.Text := FormatFloatBr(max(Venda.Troco,0));
end;

procedure TfTefTransacaoPG.AtualizarPagamentosVendaNaInterface;
var
  i, ARow: Integer;
  AResp: TACBrTEFResp;
begin

  for i := 0 to Venda.Pagamentos.Count - 1 do
  begin

    with Venda.Pagamentos[i] do
    begin
      if not Cancelada then
      begin
        AResp := AcharTransacaoTEF(i);
        if Assigned(AResp) then
          Confirmada := AResp.CNFEnviado;
      end;

      // sgPagamentos.Cells[0, ARow] := FormatFloat('000', ARow);
      // sgPagamentos.Cells[1, ARow] := TipoPagamento + ' - ' + DescricaoTipoPagamento(TipoPagamento);
      // sgPagamentos.Cells[2, ARow] := FormatFloatBr(ValorPago);
      // sgPagamentos.Cells[3, ARow] := NSU;
      // sgPagamentos.Cells[4, ARow] := Rede;
      // sgPagamentos.Cells[5, ARow] := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
      // sgPagamentos.Cells[6, ARow] := RedeCNPJ;
    end;

    Inc(ARow);
  end;

  AtualizarTotaisVendaNaInterface;
end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoFinalizarTransacao(RespostaTEF: TACBrTEFResp; AStatus: TACBrTEFStatusTransacao);
var
  Atualizou, Sucesso: Boolean;
begin
  Sucesso := (AStatus in [tefstsSucessoAutomatico, tefstsSucessoManual]);
  Atualizou := False;

  if (RespostaTEF.Header = CHEADER_PAGAMENTO) then
  begin
    if Sucesso then
      Atualizou := Venda.Pagamentos.ConfirmarPagamento(RespostaTEF.Rede, RespostaTEF.NSU, RespostaTEF.ValorTotal)
    else
      Atualizou := Venda.Pagamentos.CancelarPagamento(RespostaTEF.Rede, RespostaTEF.NSU, RespostaTEF.ValorTotal)
  end

  else if (RespostaTEF.Header = CHEADER_CANCELAMENTO) then
  begin
    if Sucesso then
      Atualizou := Venda.Pagamentos.CancelarPagamento(RespostaTEF.Rede, RespostaTEF.NSUTransacaoCancelada, RespostaTEF.ValorTotal);
  end

  else if (RespostaTEF.Header = CHEADER_ADMINISTRATIVA) then
  begin
    if Sucesso then
    begin
      // https://www.projetoacbr.com.br/forum/topic/61001-como-detectar-se-em-uma-transa%C3%A7%C3%A3o-adm-houve-um-cancelamento/
      if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
      begin
        Atualizou := Venda.Pagamentos.CancelarPagamento(RespostaTEF.Rede, RespostaTEF.NSU, RespostaTEF.ValorTotal);
      end;
    end;
  end;

  if Atualizou then
    AtualizarPagamentosVendaNaInterface;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoGravarLog(const ALogLine: string; var Tratado: Boolean);
begin
  AdicionarLinhaLog(ALogLine);
  Tratado := False;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoPerguntarCampo(DefinicaoCampo: TACBrTEFAPIDefinicaoCampo; var Resposta: string; var Validado, Cancelado: Boolean);
Var
  MR: TModalResult;
  FormObtemCampo: TFormObtemCampo;
begin
  AdicionarLinhaLog('QuandoPerguntarCampo: ' + DefinicaoCampo.TituloPergunta);

  { NOTA: Se DefinicaoCampo.ValidacaoDado = "pgvSenhaLojista"
    Você deve chamar a Tela de Senha do seu sistema, e retornar o NOME do
    Operador, NUNCA a Senha digitada

    if (DefinicaoCampo.ValidacaoDado = pgvSenhaLojista) then
    begin
    Validado := True;
    Cancelado := False;
    Resposta := fOperador;
    Exit;
    end;
  }

  FormObtemCampo := TFormObtemCampo.Create(Self);
  try
    FormObtemCampo.Titulo := DefinicaoCampo.TituloPergunta;
    FormObtemCampo.TamanhoMaximo := DefinicaoCampo.TamanhoMaximo;
    FormObtemCampo.TamanhoMinimo := DefinicaoCampo.TamanhoMinimo;
    FormObtemCampo.Resposta := DefinicaoCampo.ValorInicial;
    FormObtemCampo.Ocultar := DefinicaoCampo.OcultarDadosDigitados;
    FormObtemCampo.Mascara := DefinicaoCampo.MascaraDeCaptura;
    FormObtemCampo.btVoltar.Visible := False; // PayGoWeb não suporta Voltar;

    if (pos('R$', DefinicaoCampo.MascaraDeCaptura) > 0) or (pos('@.@@@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) or
      (pos('@@@@@@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) then
      FormObtemCampo.TipoCampo := tcoCurrency
    else
    begin
      case DefinicaoCampo.TipoDeEntrada of
        tedApenasLeitura:
          FormObtemCampo.edtResposta.ReadOnly := True;
        tedNumerico:
          if (pos('@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) then
            FormObtemCampo.TipoCampo := tcoDecimal
          else
            FormObtemCampo.TipoCampo := tcoNumeric;
        tedAlfabetico:
          FormObtemCampo.TipoCampo := tcoAlfa;
        tedAlfaNum:
          FormObtemCampo.TipoCampo := tcoAlfaNum;
      else
        FormObtemCampo.TipoCampo := tcoString;
      end;
    end;

    MR := FormObtemCampo.ShowModal;

    Cancelado := (MR <> mrOK);
    Validado := False; // Não fizemos as validações de "DefinicaoCampo.ValidacaoDado", vamos deixar o ACBrTEFAPI validar
    Resposta := FormObtemCampo.Resposta;
  finally
    FormObtemCampo.Free;
  end;

end;

procedure TfTefTransacaoPG.ACBrTEFAPI1QuandoPerguntarMenu(const Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer);
Var
  MR: TModalResult;
  FormMenuTEF: TFormMenuTEF;
begin
  AdicionarLinhaLog('QuandoPerguntarMenu: ' + Titulo + sLineBreak + Opcoes.Text);
  if (Opcoes.Count < 1) then
  begin
    ItemSelecionado := -1;
    Exit;
  end;

  FormMenuTEF := TFormMenuTEF.Create(Self);
  try
    FormMenuTEF.Titulo := Titulo;
    FormMenuTEF.Opcoes := Opcoes;
    FormMenuTEF.UsaTeclasDeAtalho := (copy(Opcoes[0], 1, 4) = '1 - ');
    FormMenuTEF.ItemSelecionado := ItemSelecionado;

    MR := FormMenuTEF.ShowModal;

    if (MR = mrOK) then
      ItemSelecionado := FormMenuTEF.ItemSelecionado
    else
      ItemSelecionado := -1;
  finally
    FormMenuTEF.Free;
  end;

end;

procedure TfTefTransacaoPG.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited;

end;

procedure TfTefTransacaoPG.AdicionarLinhaLog(AMensagem: String);
begin
  mLog.Lines.Add(AMensagem);
end;

function TfTefTransacaoPG.GetNomeArquivoConfiguracao: String;
begin
  result := ChangeFileExt(application.ExeName, '.ini');
end;

function TfTefTransacaoPG.GetNomeArquivoVenda: String;
begin

end;

function TfTefTransacaoPG.GetStatusVenda: TStatusVenda;
begin

end;

procedure TfTefTransacaoPG.LerConfiguracao;
Var
  INI: TIniFile;
begin
  AdicionarLinhaLog('- LerConfiguracao');

  INI := TIniFile.Create(NomeArquivoConfiguracao);
  try
    vpGP := INI.ReadInteger('TEF', 'GP', 1);
    vpQRCode := INI.ReadInteger('TEF', 'QRCode', 1);
    vpLog := INI.ReadString('TEF', 'Log', '');
    vpImpressaoViaCliente := INI.ReadInteger('TEF', 'ImpressaoViaCliente', 0);
    vpTransacaoPendente := INI.ReadInteger('TEF', 'TransacaoPendente', 0);
    vpTransacaoPendenteInicializacao := INI.ReadInteger('TEF', 'TransacaoPendenteInicializacao', 1);

    vpAutoAtendimento := INI.ReadInteger('TEF', 'AutoAtendimento', 0);

    vpImprimirViaReduzida := INI.ReadInteger('TEF', 'ImprimirViaReduzida', 0);
    vpConfirmarAutomaticamente := INI.ReadInteger('TEF', 'ConfirmarAutomaticamente', 1);
    vpSuportaDesconto := INI.ReadInteger('TEF', 'SuportaDesconto', 1);
    vpSuportaSaque := INI.ReadInteger('TEF', 'SuportaSaque', 1);

    vpRazaoSocialSwHouse := INI.ReadString('SwHouse', 'RazaoSocial', ' edRazaoSocialSwHouse.Text');
    vpCNPJSwHouse := INI.ReadString('SwHouse', 'CNPJ', '14.477.548/0001-31');
    vpNomeAplicacao := INI.ReadString('Aplicacao', 'Nome', 'Pegaus Sistemas');
    vpVersaoAplicacao := INI.ReadString('Aplicacao', 'Versao', '21.25');

    vpRazaoSocialEstabelecimento := INI.ReadString('Estabelecimento', 'RazaoSocial', ''); // colocar
    vpCNPJEstabelecimento := INI.ReadString('Estabelecimento', 'CNPJ', ''); // colocar

    vpModeloPosPrinter := INI.ReadInteger('PosPrinter', 'Modelo', 1);
    vpPortaPosPrinter := INI.ReadString('PosPrinter', 'Porta', '');
    vpPagCodigo := INI.ReadInteger('PosPrinter', 'PaginaDeCodigo', 2);
    vpACBrPosPrinter := INI.ReadString('PosPrinter', 'ParamsString', '');
    vpColunasPosPrinter := INI.ReadInteger('PosPrinter', 'Colunas', 40);
    vpEspLinhasPosPrinter := INI.ReadInteger('PosPrinter', 'EspacoLinhas', ACBrPosPrinter1.EspacoEntreLinhas);
    vpLinhasPularPosPrinter := INI.ReadInteger('PosPrinter', 'LinhasEntreCupons', ACBrPosPrinter1.LinhasEntreCupons);

    vpModeloTEF := INI.ReadInteger('TEF', 'ModeloTEF', 1);

  finally
    INI.Free;
  end;
end;

procedure TfTefTransacaoPG.GravarConfiguracao;
begin
end;

procedure TfTefTransacaoPG.FormCreate(Sender: TObject);
var
  i: TACBrTEFAPITipo;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin
  FVenda := TVenda.Create(NomeArquivoVenda);

  LerConfiguracao;
  LimparMensagensTEF;
  FTipoBotaoOperacao := High(TTipoBotaoOperacao); // Força atualizar tela
  Venda.Status := High(TStatusVenda); // Força atualizar tela
  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;

  application.OnException := TratarException;

end;

procedure TfTefTransacaoPG.FormDestroy(Sender: TObject);
begin
  FVenda.Free;
end;

procedure TfTefTransacaoPG.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) and (btOperacao.Visible and btOperacao.Enabled) then
  begin
    btOperacao.Click;
    Key := 0;
  end;

end;

procedure TfTefTransacaoPG.FormShow(Sender: TObject);

var
  Msg: String;
begin
  // Msg := 'Mercato UP|' + '(66) 3544-2765';
  // ACBrTEFAPI1.ExibirMensagemPinPad(Msg);
  TimerProcessaTransacao.Enabled := True;
end;

procedure TfTefTransacaoPG.LimparMensagensTEF;
begin
  MensagemTEF(' ', ' ');
end;

procedure TfTefTransacaoPG.MensagemTEF(const MsgOperador, MsgCliente: String);
begin
  if (MsgOperador <> '') then
    lMensagemOperador.Caption := MsgOperador;

  lMensagemOperador.Visible := (Trim(lMensagemOperador.Caption) <> '');

  pMensagem.Visible := lMensagemOperador.Visible;
  application.ProcessMessages;
end;

procedure TfTefTransacaoPG.AtualizarVendaNaInterface;
begin
  StatusBar.Panels[0].Text := FormatFloat('000000', Venda.NumOperacao);
  // seValorInicialVenda.Text := FormatFloatBr(Venda.ValorInicial);
  AtualizarPagamentosVendaNaInterface;
end;

procedure TfTefTransacaoPG.SetStatusVenda(AValue: TStatusVenda);
var
  MsgStatus: String;
begin
  if StatusVenda = AValue then
    Exit;

  AdicionarLinhaLog('- StatusOperacao: ' + GetEnumName(TypeInfo(TStatusVenda), Integer(AValue)));

  // gbTotaisVenda.Enabled := (AValue in [stsLivre, stsIniciada]);
  // gbPagamentos.Enabled := (AValue = stsEmPagamento);
  // btAdministrativo.Enabled := (AValue = stsLivre);
  // btObterCPF.Enabled := btAdministrativo.Enabled;
  pImpressao.Enabled := (AValue in [stsLivre, stsFinalizada, stsCancelada]);
  // btEfetuarPagamentos.Enabled := (AValue = stsIniciada);
  // lNumOperacao.Visible := (AValue <> stsLivre);

  case AValue of
    stsIniciada:
      begin
        MsgStatus := 'EM VENDA';
        TipoBotaoOperacao := bopCancelarVenda;
        AtualizarVendaNaInterface;
      end;

    stsEmPagamento:
      begin
        MsgStatus := 'EM PAGAMENTO';
        TipoBotaoOperacao := bopCancelarVenda;
        // sgPagamentos.SetFocus;
      end;

    stsFinalizada:
      begin
        MsgStatus := 'FINALIZADA';
        TipoBotaoOperacao := bopLiberarCaixa;
      end;

    stsCancelada:
      begin
        MsgStatus := 'CANCELADA';
        TipoBotaoOperacao := bopLiberarCaixa;
      end;

    stsAguardandoTEF:
      begin
        MsgStatus := 'TRANSACAO TEF';
        TipoBotaoOperacao := bopCancelarEsperaTEF;
      end;

    stsOperacaoTEF:
      begin
        MsgStatus := 'OPERAÇÃO TEF';
        TipoBotaoOperacao := bopNaoExibir;
        AtualizarVendaNaInterface;
      end;

  else
    MsgStatus := 'CAIXA LIVRE';
    TipoBotaoOperacao := bopNaoExibir;

    // if pgPrincipal.ActivePage = tsOperacao then
    // seValorInicialVenda.SetFocus;
  end;

  StatusBar.Panels[3].Text := MsgStatus;
  Venda.Status := AValue;
  if (AValue <> stsLivre) then
    Venda.Gravar;

end;

procedure TfTefTransacaoPG.SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);

var
  MsgOperacao: String;
begin
  if FTipoBotaoOperacao = AValue then
    Exit;

  MsgOperacao := '';

  case AValue of
    bopCancelarVenda, bopCancelarEsperaTEF:
      MsgOperacao := 'Cancelar';

    bopLiberarCaixa:
      MsgOperacao := 'Liberar';
  end;

  FTipoBotaoOperacao := AValue;

  btOperacao.Visible := (MsgOperacao <> '');
  btOperacao.Caption := 'ESC - ' + MsgOperacao;

end;

procedure TfTefTransacaoPG.TimerProcessaTransacaoTimer(Sender: TObject);
var
  vlModalidade: Integer;
begin

  { 3	Cheque Terceiros
    4	Cartão Crédito
    5	Cartão Débito
    6	PIX }

  TimerProcessaTransacao.Enabled := False;
  if vpTipoProcessamento = ConstProcesTEFPagamento then
  begin
    IrParaOperacaoTEF;
    StatusVenda := stsEmPagamento;

    if vpOperacaoTEF.Modalidade ='02' then
    begin
     vlModalidade:=vpOperacaoTEF.TipoCartao.ToInteger;
     IncluirPagamento(vpOperacaoTEF.Valor.ToString, vlModalidade);
    end
    else if vpOperacaoTEF.Modalidade = '06' then
    begin
      vlModalidade := 6;
      IncluirPagamento(vpOperacaoTEF.Valor.ToString, vlModalidade);
    end;


  end
  else if vpTipoProcessamento = ConstProcesTEFCancelamento then
  begin
    // Cancelamento;
  end;

end;

procedure TfTefTransacaoPG.TratarException(Sender: TObject; E: Exception);
begin
  AdicionarLinhaLog('');
  AdicionarLinhaLog('***************' + E.ClassName + '***************');
  AdicionarLinhaLog(E.Message);
  AdicionarLinhaLog('');

end;

end.
