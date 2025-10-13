unit uftransacaoLTETEFAPI;

interface

uses
  uni,
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.TypInfo,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  ACBrTEFComum,
  ACBrTEFAPI,
  ACBrBase,
  ACBrTEFAPIComum,
  ACBrDelphiZXingQRCode,
  uRecordsTEF;



{  SITEF


00: Dinheiro
01: Cheque
02: TEF Débito
03: TEF Crédito
04: Cartão Presente (Pré-Pago) Carrefour
05: Cartão Bônus Carrefour
06: Cartão Carrefour
07: Saque para pagamento
08: Saque
09: DCC Carrefour
10: Ticket Eletrônico
11: Ticket Papel
12: Carteira Digital
13: Pix
50: TEF Cartão
77: Campo Reservado
98: Sem Pagamento
99: Outras Formas



 1: Dinheiro
 2: Cheque
 3: Débito
 4: Crédito
 5: Saque
 6: Outra formas
}

{
  '01','Dinheiro'),
  '02','Cheque'),
  '03','Cartão de Crédito'),
  '04','Cartão de Débito'),
  '05','Carteira Digital'),
  '06','Vale Refeição'),
  '99','Outros') );
}


const
  cPagamentos: array[0..6] of array [0..1] of String =
     ( ('01','Dinheiro'),
       ('02','Cheque'),
       ('03','Cartão de Crédito'),
       ('04','Cartão de Débito'),
       ('05','Carteira Digital'),
       ('06','Vale Refeição'),
       ('99','Outros') );






const
  // Tipo Transação TEF
  ConstProcesTEFAtiva = 0;
  ConstProcesTEFPagamento = 1;
  ConstProcesTEFCancelamento = 2;
  ConstProcesTEFObterCPF = 50;
  ConstProcesTEFChamaMenuADM = 99999;


type

  TTipoBotaoOperacao = (bopNaoExibir, bopCancelarVenda, bopLiberarCaixa, bopCancelarEsperaTEF);


type
  TftransacaoTEFAPI = class(TForm)
    CompACBrTEF: TACBrTEFAPI;
    plMensagems: TPanel;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lMensagemOperador: TLabel;
    Panel9: TPanel;
    Panel2: TPanel;
    pStatus: TPanel;
    pMensagemCliente: TPanel;
    Panel4: TPanel;
    lMensagemCliente: TLabel;
    TimerProcessaTransacao: TTimer;
    Panel3: TPanel;
    mLog: TMemo;
    pQRCode: TPanel;
    imgQRCode: TImage;
    bCancelarResp: TButton;
    procedure CompACBrTEFQuandoDetectarTransacaoPendente(RespostaTEF: TACBrTEFResp; const MsgErro: string);
    procedure CompACBrTEFQuandoEsperarOperacao(OperacaoAPI: TACBrTEFAPIOperacaoAPI; var Cancelar: Boolean);
    procedure CompACBrTEFQuandoExibirMensagem(const Mensagem: string; Terminal: TACBrTEFAPITela; MilissegundosExibicao: Integer);
    procedure CompACBrTEFQuandoExibirQRCode(const DadosQRCode: string);
    procedure CompACBrTEFQuandoFinalizarOperacao(RespostaTEF: TACBrTEFResp);
    procedure CompACBrTEFQuandoFinalizarTransacao(RespostaTEF: TACBrTEFResp; AStatus: TACBrTEFStatusTransacao);
    procedure CompACBrTEFQuandoGravarLog(const ALogLine: string; var Tratado: Boolean);
    procedure CompACBrTEFQuandoPerguntarCampo(DefinicaoCampo: TACBrTEFAPIDefinicaoCampo; var Resposta: string; var Validado, Cancelado: Boolean);
    procedure CompACBrTEFQuandoPerguntarMenu(const Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer);
    procedure TimerProcessaTransacaoTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    FOrcChave:String;

    fcomprovanteretorno1via:String;
    fcomprovanteretorno2via:String;

    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;
    vCancelado: Boolean;


    FTipoBotaoOperacao: TTipoBotaoOperacao;
    fTipoProcessamento: Integer;

    procedure ExibirPainelQRCode;
    procedure OcultatPainelQRCode;


    procedure AdicionarLinhaLog(AMensagem: String);

    procedure SetTipoBotaoOperacao(const AValue: TTipoBotaoOperacao);

    procedure TratarException(Sender: TObject; E: Exception);
    procedure MensagemTEF(const MsgOperador, MsgCliente: String);
    function ObterCPF: String;

    procedure cancelarOperacaoTEF;
    procedure Cancelamento;

    function AtivarConexaoTEF(vConfiguracaoTEF: TConfiguracaoTEF): Boolean;

    function CarregaConfiguracoesTEF(vConfiguracoesTEF: TConfiguracaoTEF): TConfiguracaoTEF;
    procedure ConfigurarTEFAPI;
    procedure Ativa(vConfiguracaoTEF: TConfiguracaoTEF);
    procedure ChamaMenu(vConfiguracaoTEF: TConfiguracaoTEF);
    function ProcessaPagamentoTEF(aConfiguracaoTEF: TConfiguracaoTEF; aOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
    function AcharTransacaoTEF(aRede,aNSU:String): TACBrTEFResp;
    procedure RegistraStatus(aStatus:String; aNSU:String; aBandeira:String);
    function BuscaTransacaoPendente: String;
    function RetornaAdcCodigo: String;
    function RetornaBdcCodigo(aBandeira: String): String;

  public
    { Public declarations }

    fOperacaoTEF: TOperacaoTEF;
    fConfiguracaoTEF: TConfiguracaoTEF;


    function ChamaMenuADM(aConfiguracaoTEF: TConfiguracaoTEF):String;
    function ObtemCPF(aConfiguracaoTEF: TConfiguracaoTEF):String;

    function ProcessaCancelamento(aConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
    function VerificaTransacaoPendente(aConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
    function AtivaTEF(aConfiguracaoTEF: TConfiguracaoTEF): boolean;
    function DesaAtivaTEF:Boolean;

    procedure Mensagem(aTexto:string; aConfiguracaoTEF: TConfiguracaoTEF);
    procedure MensagemPinPag(aTexto: String; aConfiguracaoTEF: TConfiguracaoTEF);
    function IncluirPagamento(AValor: Double; aCodFormaPagamento: Integer): Boolean;
    function AdicionarPagamento(const Indice: String; AValor: Double):boolean;

  published

    property TipoProcessamento:Integer read fTipoProcessamento write fTipoProcessamento;
    property TipoBotaoOperacao: TTipoBotaoOperacao read FTipoBotaoOperacao write SetTipoBotaoOperacao;
    property ComprovanteRetorno1via: String read FComprovanteRetorno1via write fComprovanteRetorno1via;
    property ComprovanteRetorno2via: String read FComprovanteRetorno2via write fComprovanteRetorno2via;

    property ZCone: tuniconnection read Fzcone write Fzcone;
    property OrcChave: String read FOrcChave write FOrcChave;


  end;

var
  ftransacaoTEFAPI: TftransacaoTEFAPI;

implementation

uses
  frExibeMensagem, dateutils, math, strutils,
  ACBrUtil,
  ACBrTEFPayGoComum, ACBrTEFAPIPayGoWeb,ACBrTEFAPIClisitef, frObtemCampo, frMenuTEF;

{$R *.dfm}
{ TftransacaoTEFAPI }

function AtivaTEF(vConfiguracaoTEF: TConfiguracaoTEF):boolean;
begin

  ftransacaoTEFAPI.fConfiguracaoTEF :=vConfiguracaoTEF;
  ftransacaoTEFAPI.ConfigurarTEFAPI;
  ftransacaoTEFAPI.TipoProcessamento := ConstProcesTEFAtiva;

  if ftransacaoTEFAPI.ShowModal=mrok then
    result:=True
  else
    result:=False;

end;


function TftransacaoTEFAPI.ObtemCPF(aConfiguracaoTEF: TConfiguracaoTEF):String;
begin

//  ConfigurarTEFAPI;
  vCancelado := False;
  fConfiguracaoTEF :=aConfiguracaoTEF;

  Result:=ObterCPF;

end;

function TftransacaoTEFAPI.ChamaMenuADM(aConfiguracaoTEF: TConfiguracaoTEF):String;
var
  ftransacaoTEFAPI: TftransacaoTEFAPI;
begin
  try

    ftransacaoTEFAPI := TftransacaoTEFAPI.Create(application);
    ftransacaoTEFAPI.ComprovanteRetorno1via:='';
    ftransacaoTEFAPI.ComprovanteRetorno2via:='';

    ftransacaoTEFAPI.vCancelado := False;
    ftransacaoTEFAPI.fConfiguracaoTEF :=aConfiguracaoTEF;
    ftransacaoTEFAPI.ConfigurarTEFAPI;
    ftransacaoTEFAPI.TipoProcessamento := ConstProcesTEFChamaMenuADM;
    ftransacaoTEFAPI.ChamaMenu(aConfiguracaoTEF);
     Result:=ftransacaoTEFAPI.ComprovanteRetorno1via+'_'+ftransacaoTEFAPI.ComprovanteRetorno2via;

  finally

  end;

end;

function ProcessaCancelamento(aConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
  ftransacaoTEFAPI: TftransacaoTEFAPI;
begin
  try
    ftransacaoTEFAPI := TftransacaoTEFAPI.Create(application);
    ftransacaoTEFAPI.vCancelado := False;
    ftransacaoTEFAPI.fOperacaoTEF := vOperacaoTEF;
    ftransacaoTEFAPI.fConfiguracaoTEF :=aConfiguracaoTEF;
    ftransacaoTEFAPI.ConfigurarTEFAPI;
    ftransacaoTEFAPI.TipoProcessamento := ConstProcesTEFCancelamento;
    ftransacaoTEFAPI.ShowModal;
    result := ftransacaoTEFAPI.fOperacaoTEF;
  finally
   // FreeAndNil(ftransacaoTEFAPI);
  end;

end;

function ProcessaPagamento(vConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin

    ftransacaoTEFAPI.vCancelado := False;
    ftransacaoTEFAPI.fOperacaoTEF := vOperacaoTEF;
    ftransacaoTEFAPI.fConfiguracaoTEF :=vConfiguracaoTEF;
    ftransacaoTEFAPI.ConfigurarTEFAPI;
    ftransacaoTEFAPI.TipoProcessamento := ConstProcesTEFPagamento;
    ftransacaoTEFAPI.ShowModal;
    result := ftransacaoTEFAPI.fOperacaoTEF;

end;




procedure TftransacaoTEFAPI.ExibirPainelQRCode;
begin
  if pQRCode.Visible then
    Exit;

  pQRCode.Visible := True;
  pQRCode.Align := alClient;
end;

procedure TftransacaoTEFAPI.OcultatPainelQRCode;
begin
  if not pQRCode.Visible then
    Exit;

  pQRCode.Visible := False;
end;



procedure TftransacaoTEFAPI.CompACBrTEFQuandoDetectarTransacaoPendente(RespostaTEF: TACBrTEFResp; const MsgErro: string);
var
  AStatus: TACBrTEFStatusTransacao;
  i: Integer;
  ATEFResp: TACBrTEFResp;
  AMsgErro: String;
  MR: TModalResult;
  FormMenuTEF: TFormMenuTEF;
begin

  // Aqui você pode Confirmar ou Desfazer as transações pendentes de acordo com
  // a sua regra de negócios

  // ----------- Exemplo 0 - Deixe o ACBrTEFAndroid CONFIRMAR todas transações pendentes automaticamente
  // ACBrTEFAPI1.TratamentoTransacaoPendente := tefpenConfirmar;
  // Nesse caso... esse evento nem será disparado.

  // ----------- Exemplo 1 - Envio de confirmação automática -----------
  // AStatus := stsSucessoManual;
  // ACBrTEF.ResolverOperacaoPendente(AStatus);
  // ---------- Fim Exemplo 1 ------------


  // ----------- Exemplo 2 -  Fazer uma pergunta ao usuário ------------
  if (MsgErro = '') then
    AMsgErro := RespostaTEF.TextoEspecialOperador
  else
    AMsgErro := MsgErro;

  FormMenuTEF := TFormMenuTEF.Create(self);
  try
    FormMenuTEF.Titulo := 'Transação Pendente';
    FormMenuTEF.Opcoes.Add('1 - Confirmação Manual');
    FormMenuTEF.Opcoes.Add('2 - Estorno Manual');
    FormMenuTEF.Opcoes.Add('3 - Estorno, Falta de Energia');
    FormMenuTEF.Opcoes.Add('4 - Estorno, Erro na Impressão');
    FormMenuTEF.Opcoes.Add('5 - Estorno, Erro no Dispensador');
    FormMenuTEF.UsaTeclasDeAtalho := True;
    FormMenuTEF.ItemSelecionado := 0;
    FormMenuTEF.btVoltar.Visible := False;

    MR := FormMenuTEF.ShowModal ;
    if (MR = mrOK) then
    begin
      case FormMenuTEF.ItemSelecionado of
        0: AStatus := tefstsSucessoManual;
        1: AStatus := tefstsErroDiverso;
        2: AStatus := tefstsErroEnergia;
        3: AStatus := tefstsErroImpressao;
        4: AStatus := tefstsErroDispesador;
      else
        AStatus := tefstsSucessoManual;
      end;

      CompACBrTEF.ResolverTransacaoPendente(AStatus);
    end;
  finally
    FormMenuTEF.Free;
  end;
  // ---------- Fim Exemplo 2 ------------

  // Opcional... Se confirmou, vamos re-imprimir a transação que ficou pendente
  if (AStatus in [tefstsSucessoAutomatico, tefstsSucessoManual]) then
  begin
    // Achando a transação original...
    i := CompACBrTEF.RespostasTEF.AcharTransacao( RespostaTEF.Rede,
                                                  RespostaTEF.NSU,
                                                  RespostaTEF.Finalizacao);
    if (i >= 0) then
      ATEFResp := CompACBrTEF.RespostasTEF[i]
    else
      ATEFResp := RespostaTEF;

  end;

end;

procedure TftransacaoTEFAPI.CompACBrTEFQuandoEsperarOperacao(OperacaoAPI: TACBrTEFAPIOperacaoAPI; var Cancelar: Boolean);
begin

  AdicionarLinhaLog('QuandoEsperarOperacao: ' + GetEnumName(TypeInfo(TACBrTEFAPIOperacaoAPI), Integer(OperacaoAPI)));

  if FCanceladoPeloOperador then
  begin

    FCanceladoPeloOperador := False;
    fOperacaoTEF.Valor:=0;
    Cancelar := True; // Aborta o TEF em andamento
  end;

  application.ProcessMessages;

end;

procedure TftransacaoTEFAPI.CompACBrTEFQuandoExibirMensagem(const Mensagem: string; Terminal: TACBrTEFAPITela; MilissegundosExibicao: Integer);
var
  FormExibeMensagem: TFormExibeMensagem;
  ATEFResp:TACBrTEFResp;
  i:Integer;

begin

  if pos('APROV', uppercase(Mensagem))>0 then
  begin

    i:=CompACBrTEF.RespostasTEF.Count-1;


    ATEFResp := CompACBrTEF.RespostasTEF[ CompACBrTEF.RespostasTEF.Count-1];

    if ATEFResp.NSU<>'' then
    begin
      RegistraStatus('PENDENTE',ATEFResp.NSU,ATEFResp.Rede );
    end;

  end;


  if (Mensagem = '') then
  begin
    if (Terminal in [telaCliente, telaTodas]) then
      MensagemTEF('', ' ');
    if (Terminal in [telaOperador, telaTodas]) then
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
    if (Terminal in [telaCliente, telaTodas]) then
      MensagemTEF('', Mensagem);
    if (Terminal in [telaOperador, telaTodas]) then
      MensagemTEF(Mensagem, '');
  end;

end;

procedure TftransacaoTEFAPI.CompACBrTEFQuandoExibirQRCode(const DadosQRCode: string);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
begin
//  if not (StatusVenda in [stsAguardandoTEF, stsOperacaoTEF]) then
//    StatusVenda := stsAguardandoTEF;


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
    QRCode.Encoding  := qrUTF8BOM;
    QRCode.QuietZone := 2;
    QRCode.Data      := widestring(DadosQRCode);

    QRCodeBitmap.Width  := QRCode.Columns;
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



procedure TftransacaoTEFAPI.CompACBrTEFQuandoFinalizarOperacao(RespostaTEF: TACBrTEFResp);
var
  MsgFinal: String;
begin

  MsgFinal := RespostaTEF.TextoEspecialOperador;

  AdicionarLinhaLog('');
  AdicionarLinhaLog('');
  AdicionarLinhaLog('------ Fim da Operação ------');
  AdicionarLinhaLog('Sucesso: '+IfThen(RespostaTEF.Sucesso, 'SIM', 'NÃO'));
  AdicionarLinhaLog('Resultado: '+MsgFinal);

  RegistraStatus(IfThen(RespostaTEF.Sucesso, 'SUCESSO', 'PENDENTE'), RespostaTEF.NSU, RespostaTEF.Rede );



  // Usando as propriedades de TACBrTEFResp
  if (RespostaTEF.ValorTotal > 0) then
  begin

    RegistraStatus(IfThen(RespostaTEF.Sucesso, 'SUCESSO', 'PENDENTE'), RespostaTEF.NSU, RespostaTEF.Rede);

    AdicionarLinhaLog('');
    AdicionarLinhaLog('- Rede: '  + RespostaTEF.Rede );
    AdicionarLinhaLog('- NSU: '  + RespostaTEF.NSU );
    AdicionarLinhaLog('- Parcelas: '+ IntToStr(RespostaTEF.QtdParcelas) +
                      ', parcelado por: '+ GetEnumName(TypeInfo(TACBrTEFRespParceladoPor),
                                                       integer(RespostaTEF.ParceladoPor) ));
    AdicionarLinhaLog('- Tipo Cartão: '+IfThen(RespostaTEF.Debito, 'Debito',
                                        IfThen(RespostaTEF.Credito, 'Crédito', '')) );
    AdicionarLinhaLog(' - Valor: '+ FormatFloat(',0.00',RespostaTEF.ValorTotal)) ;
  end;

  // Lendo um Campo Específico //
  if (CompACBrTEF.Modelo = tefApiPayGoWeb) then
    AdicionarLinhaLog('- PWINFO_REQNUM: ' + RespostaTEF.LeInformacao(PWINFO_REQNUM,0).AsString );

  // Exemplo de como processar a Impressão dos comprovantes
  if not RespostaTEF.Sucesso then
  begin
    if (pos('PENDENTE', UpperCase(MsgFinal)) > 0) then
    begin
      if (CompACBrTEF.TratamentoTransacaoPendente = tefpenConfirmar) then
        MsgFinal := MsgFinal + sLineBreak + 'Transação será CONFIRMADA'
      else if (CompACBrTEF.TratamentoTransacaoPendente = tefpenEstornar) then
          MsgFinal := MsgFinal + sLineBreak + 'Transação será ESTORNADA'
      else
        MsgFinal := '';  // Ignora esse erro, pois será tratado em QuandoDetectarTransacaoPendente
    end;

    if (MsgFinal <> '')  then
      MessageDlg( MsgFinal, mtError, [mbOK], 0);
  end
  else
  begin
    // Para Confirmar a transação Automáticamento... use:
    //      "ConfirmarTransacoesAutomaticamente := True"

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
     if (not CompACBrTEF.ConfirmarTransacaoAutomaticamente) and   // Não confirma de forma automática ?
       RespostaTEF.Confirmar then                                 // Requer confirmação ?
        CompACBrTEF.FinalizarTransacao(tefstsSucessoAutomatico);  // ...então confirme

      if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
      begin
        ComprovanteRetorno1via:=RespostaTEF.ImagemComprovante1aVia.Text;
      end;

      if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante2aVia.Count > 0) then
      begin
        ComprovanteRetorno2via:=RespostaTEF.ImagemComprovante2aVia.Text;
      end;


    //  ImprimirTodosComprovantes
    end;
  end;

  // --- Exemplo de como usar as Propriedades da API, fazendo TypeCast
  (*
  if (ACBrTEFAPI1.TEF is TACBrTEFAPIClassPayGoWeb) then
  begin
    AdicionarLinhaLog('');
    AdicionarLinhaLog( '-- Retornos do PayGoWeb API --');
    with TACBrTEFAPIClassPayGoWeb(ACBrTEFAPI1.TEF) do
    begin
      for i := 0 to TEFPayGoAPI.DadosDaTransacao.Count-1 do
      begin
        ParseKeyValue(TEFPayGoAPI.DadosDaTransacao[i], TheKey, TheValue);
        nINFO := StrToIntDef(TheKey,-1);
        if (nINFO >= 0) then
          AdicionarLinhaLog(PWINFOToString(nINFO) + ' = ' + TheValue );
      end;
    end;
  end;
  *)





 {

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
  if (CompACBrTEF.Modelo = tefApiPayGoWeb) then
    AdicionarLinhaLog('- PWINFO_REQNUM: ' + RespostaTEF.LeInformacao(PWINFO_REQNUM, 0).AsString);

  // Exemplo de como processar a Impressão dos comprovantes
  if not RespostaTEF.Sucesso then
  begin
    if (pos('PENDENTE', UpperCase(MsgFinal)) > 0) then
    begin
      if (CompACBrTEF.TratamentoTransacaoPendente = tefpenConfirmar) then
        MsgFinal := MsgFinal + sLineBreak + 'Transação será CONFIRMADA'
      else if (CompACBrTEF.TratamentoTransacaoPendente = tefpenEstornar) then
        MsgFinal := MsgFinal + sLineBreak + 'Transação será ESTORNADA'
      else
        MsgFinal := ''; // Ignora esse erro, pois será tratado em QuandoDetectarTransacaoPendente
    end;



  end
  else
  begin

    // Se não for Venda, já podemos Confirmar e iamprimir os comprovantes
    if (RespostaTEF.Header <> CHEADER_PAGAMENTO) and (RespostaTEF.Header <> CHEADER_ADMINISTRATIVA)  then
    begin
      if (not CompACBrTEF.ConfirmarTransacaoAutomaticamente) and ( RespostaTEF.Confirmar) then
      begin
        CompACBrTEF.FinalizarTransacao(tefstsSucessoAutomatico);
      end
      else
      begin
        if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
        begin
          ComprovanteRetorno:=RespostaTEF.ImagemComprovante1aVia.Text;
        end
        else if (RespostaTEF.NSUTransacaoCancelada = '') and (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
        begin
          ComprovanteRetorno:=RespostaTEF.ImagemComprovante1aVia.Text;
        end;
      end;




      // ImprimirTodosComprovantes
    end
    else if (RespostaTEF.Header = CHEADER_ADMINISTRATIVA) then
    begin
     // https://www.projetoacbr.com.br/forum/topic/61001-como-detectar-se-em-uma-transa%C3%A7%C3%A3o-adm-houve-um-cancelamento/
      if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
      begin
        ComprovanteRetorno:=RespostaTEF.ImagemComprovante1aVia.Text;
      end
      else if (RespostaTEF.ImagemComprovante1aVia.Count > 0) then
      begin

        ComprovanteRetorno:=RespostaTEF.ImagemComprovante1aVia.Text;
      end;

    end;




  end;

  }

end;

procedure TftransacaoTEFAPI.RegistraStatus(aStatus:String; aNSU:String; aBandeira:String);
var
 vlrct:TUniQuery;
 CodigoADC:Integer;
 CodigoBDC:Integer;

begin
  if aNSU<>'' then
  begin




    CodigoADC:= Strtoint( RetornaAdcCodigo);
    CodigoBDC:= StrToInt(RetornaBdcCodigo(aBandeira));


    vlrct:=TUniQuery.Create(nil);
    vlrct.close;
    vlrct.Connection:=ZCone;
    vlrct.sql.Text:='SELECT rctchave, rctvalor, rctnrauto, adccodigo, rctparcelas, '+
                    'bdccodigo, rctcomprovante1via, rctcomprovante2via, rcthora, orcchave, rctstatus '+
                    'FROM rct where orcchave=:orcchave and rctnrauto=:rctnrauto ';
    vlrct.ParamByName('orcchave').AsString:=OrcChave;
    vlrct.ParamByName('rctnrauto').AsString:=aNSU;
    vlrct.Open;

    if vlrct.IsEmpty then
      vlrct.Append
    else
      vlrct.Edit;

    vlrct.FieldByName('rctvalor').AsCurrency:=0;
    vlrct.FieldByName('rctnrauto').AsString:=aNSU;
    vlrct.FieldByName('adccodigo').AsInteger:=CodigoADC;
    vlrct.FieldByName('rctparcelas').AsInteger:=1;
    vlrct.FieldByName('bdccodigo').AsInteger:=CodigoBDC;
    vlrct.FieldByName('rctcomprovante1via').AsString:='';
    vlrct.FieldByName('rctcomprovante2via').AsString:='';
    vlrct.FieldByName('rctstatus').AsString:=aStatus;
    vlrct.FieldByName('orcchave').AsString:=OrcChave;
    vlrct.post;

    vlrct.Close;

  end;

end;



procedure TftransacaoTEFAPI.CompACBrTEFQuandoFinalizarTransacao(RespostaTEF: TACBrTEFResp; AStatus: TACBrTEFStatusTransacao);
var
  Atualizou, Sucesso: Boolean;
begin
  Sucesso := (AStatus in [tefstsSucessoAutomatico, tefstsSucessoManual]);
  Atualizou := False;

  RegistraStatus(RespostaTEF.StatusTransacao, RespostaTEF.NSU, RespostaTEF.Rede );

  if (RespostaTEF.Header = CHEADER_PAGAMENTO) then
  begin
    if Sucesso then
    begin
    RegistraStatus(RespostaTEF.StatusTransacao, RespostaTEF.NSU, RespostaTEF.Rede);
    end;
  end
  else if (RespostaTEF.Header = CHEADER_CANCELAMENTO) then
  begin
    if Sucesso then
    begin
    RegistraStatus(RespostaTEF.StatusTransacao, RespostaTEF.NSU, RespostaTEF.Rede);
    end;
  end

  else if (RespostaTEF.Header = CHEADER_ADMINISTRATIVA) then
  begin
    // https://www.projetoacbr.com.br/forum/topic/61001-como-detectar-se-em-uma-transa%C3%A7%C3%A3o-adm-houve-um-cancelamento/
    if (RespostaTEF.NSUTransacaoCancelada <> '') and (RespostaTEF.ImagemComprovante1aVia.Count > 1) then
    begin
      ComprovanteRetorno1via:=RespostaTEF.ImagemComprovante1aVia.Text;
    end;

    if (RespostaTEF.NSUTransacaoCancelada = '') and (RespostaTEF.ImagemComprovante1aVia.Count > 1) then
    begin
      ComprovanteRetorno1via:=RespostaTEF.ImagemComprovante1aVia.Text;
    end;

    if (RespostaTEF.NSUTransacaoCancelada = '') and (RespostaTEF.ImagemComprovante2aVia.Count > 1) then
    begin
      ComprovanteRetorno2via:=RespostaTEF.ImagemComprovante2aVia.Text;
    end;

  end;
end;

procedure TftransacaoTEFAPI.CompACBrTEFQuandoGravarLog(const ALogLine: string; var Tratado: Boolean);
begin
  AdicionarLinhaLog(ALogLine);
  Tratado := False;
end;

procedure TftransacaoTEFAPI.CompACBrTEFQuandoPerguntarCampo(DefinicaoCampo: TACBrTEFAPIDefinicaoCampo; var Resposta: string;
  var Validado, Cancelado: Boolean);
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
   // FormObtemCampo.TamanhoMaximo := DefinicaoCampo.TamanhoMaximo;
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

procedure TftransacaoTEFAPI.CompACBrTEFQuandoPerguntarMenu(const Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer);
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

    case MR of
      mrOK:
        ItemSelecionado := FormMenuTEF.ItemSelecionado;
      mrRetry:
        ItemSelecionado := -2; // Voltar
    else
      ItemSelecionado := -1; // Cancelar
    end;
  finally
    FormMenuTEF.Free;
  end;

end;


function TftransacaoTEFAPI.CarregaConfiguracoesTEF(vConfiguracoesTEF: TConfiguracaoTEF): TConfiguracaoTEF;
begin
  // popular dados do tef




end;


procedure TftransacaoTEFAPI.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
  begin
     key:=#0;
     FCanceladoPeloOperador := True;
     vCancelado := True;
  end;
end;

procedure TftransacaoTEFAPI.FormShow(Sender: TObject);
begin

  fOperacaoTEF.AutorizacaoRetorno := '';

  TimerProcessaTransacao.Enabled := True;

end;


procedure TftransacaoTEFAPI.SetTipoBotaoOperacao(const AValue: TTipoBotaoOperacao);
begin
  FTipoBotaoOperacao := AValue;
end;

procedure TftransacaoTEFAPI.TimerProcessaTransacaoTimer(Sender: TObject);
begin

  TimerProcessaTransacao.Enabled:=false;

//  ConfigurarTEFAPI;

  if TipoProcessamento = ConstProcesTEFPagamento then
  begin
    IncluirPagamento(fOperacaoTEF.Valor, fOperacaoTEF.Modalidade);
  end
  else if TipoProcessamento = ConstProcesTEFCancelamento then
    Cancelamento

end;

procedure TftransacaoTEFAPI.TratarException(Sender: TObject; E: Exception);
begin
  AdicionarLinhaLog('');
  AdicionarLinhaLog('***************' + E.ClassName + '***************');
  AdicionarLinhaLog(E.Message);
  AdicionarLinhaLog('');
  // MessageDlg(E.Message, mtError, [mbOK], 0);

end;

function TftransacaoTEFAPI.VerificaTransacaoPendente(aConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin

end;

procedure TftransacaoTEFAPI.AdicionarLinhaLog(AMensagem: String);
begin
  mLog.Lines.Add(AMensagem);
end;

procedure TftransacaoTEFAPI.MensagemTEF(const MsgOperador, MsgCliente: String);
begin
  if (MsgOperador <> '') then
    lMensagemOperador.Caption := MsgOperador;

  if (MsgCliente <> '') then
    lMensagemCliente.Caption := MsgCliente;

  pMensagemOperador.Visible := (Trim(lMensagemOperador.Caption) <> '');
  pMensagemCliente.Visible := (Trim(lMensagemCliente.Caption) <> '');
  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  application.ProcessMessages;
end;

procedure TftransacaoTEFAPI.cancelarOperacaoTEF;
begin
  AdicionarLinhaLog('- btOperacaoClick');

  case TipoBotaoOperacao of
    bopLiberarCaixa:
      begin
        CompACBrTEF.LimparRespostasTEF; // Limpa respostas TEF anteriores, e apaga Arqs Backup
      end;

   // bopCancelarVenda: CancelarVenda;

    bopCancelarEsperaTEF:
      begin
        AdicionarLinhaLog('  Operação Cancelada Pelo Operador');
        FCanceladoPeloOperador := True;
      end;
  end;
end;


procedure TftransacaoTEFAPI.Mensagem(aTexto:string; aConfiguracaoTEF: TConfiguracaoTEF);
begin

  MensagemPinPag(atexto,aConfiguracaoTEF);

end;

procedure TftransacaoTEFAPI.Ativa(vConfiguracaoTEF: TConfiguracaoTEF);
begin

  IF AtivarConexaoTEF(vConfiguracaoTEF) then
    ModalResult:=Mrok
  else
    ModalResult:=MrCancel;

end;

procedure TftransacaoTEFAPI.ChamaMenu(vConfiguracaoTEF: TConfiguracaoTEF);
begin

 // ConfigurarTEFAPI;

  if not CompACBrTEF.Inicializado then
    CompACBrTEF.Inicializar;

  AdicionarLinhaLog('- btAdministrativoClick');

  CompACBrTEF.EfetuarAdministrativa(tefopAdministrativo);

end;

function TftransacaoTEFAPI.ObterCPF: String;
var
  Saida: String;
begin

//  ConfigurarTEFAPI;

  if not CompACBrTEF.Inicializado then
    CompACBrTEF.Inicializar;

  Saida := '';
  Saida := CompACBrTEF.ObterDadoPinPad(dpCPF);

  if (Saida = '') then
    ShowMessage('Falha ao Obter CPF no PinPad');

  result := Saida
end;

function TftransacaoTEFAPI.AdicionarPagamento(const Indice: String; AValor: Double):boolean;
var
  Ok, TemTEF: Boolean;
  Modalidade: TACBrTEFModalidadePagamento;
  CartoesAceitos: TACBrTEFTiposCartao;
  ReajusteValor: Double;
  IndicePagto: LongInt;
  NomeAdministradora:String;
begin


  if not CompACBrTEF.Inicializado then
    CompACBrTEF.Inicializar;

  if AtivarConexaoTEF(fConfiguracaoTEF) then
  begin

    Ok := False;
    TemTEF := False;

    IndicePagto := StrToIntDef(Indice, 0);

    // ** NOTA **
    // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
    // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento

    Modalidade := tefmpNaoDefinido;
    CartoesAceitos := [];

    TemTEF := (IndicePagto >= 2) and (IndicePagto <= 6);
    case IndicePagto of
      2:
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
      7:
        begin
          Modalidade := tefmpCartao;
          CartoesAceitos := [teftcVoucher]
        end;
    end;

    if TemTEF then
    begin
      // -- Exemplo, usando TypeCast, para inserir Propriedades direto na Classe de TEF -- //
      (*
        if ACBrTEFAPI1.TEF is TACBrTEFAPIClassPayGoWeb then
        begin
        with TACBrTEFAPIClassPayGoWeb(ACBrTEFAPI1.TEF) do
        begin
        TEFPayGoAPI.ParametrosAdicionais.ValueInfo[PWINFO_AUTHSYST] := 'REDE';   // Autorizador
        TEFPayGoAPI.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE] := '2';       // 01: à vista, 2: parcelado
        TEFPayGoAPI.ParametrosAdicionais.ValueInfo[PWINFO_INSTALLMENTS] := '3';  // Parcelas
        end;
        end;
      *)


      if AValor>0 then
      begin
        if fOperacaoTEF.QuantidadeParcela='1' then
          Ok := CompACBrTEF.EfetuarPagamento(IntToStr(fOperacaoTEF.numero), AValor, Modalidade, CartoesAceitos, tefmfAVista)
        else
          Ok := CompACBrTEF.EfetuarPagamento(IntToStr(fOperacaoTEF.numero), AValor, Modalidade, CartoesAceitos, tefmfParceladoEstabelecimento);


        Ok := Ok and CompACBrTEF.UltimaRespostaTEF.Sucesso and CompACBrTEF.UltimaRespostaTEF.TransacaoAprovada;
      end
      else
       Ok :=False;

    end
    else
      Ok := True;
  end;



  // -- Exemplo de como capturar os Erros retornados pela API do TEF PayGoWeb -- //
  (*
    if not OK then
    begin
    if (ACBrTEFAPI1.TEF is TACBrTEFAPIClassPayGoWeb) then
    begin
    CodErro := ACBrTEFAPI1.UltimaRespostaTEF.LeInformacao(PWINFO_RET).AsInteger;
    MsgErro := ACBrTEFAPI1.UltimaRespostaTEF.LeInformacao(PWINFO_RESULTMSG).AsBinary;
    ShowMessage('Erro: '+IntToStr(CodErro)+' - '+Trim(MsgErro));
    end;
    end;
  *)

  if Ok then
  begin

    if TemTEF then
    begin


 //     fOperacaoTEF.Bandeira := CompACBrTEF.UltimaRespostaTEF.CodigoBandeiraPadrao;
      fOperacaoTEF.Bandeira := CompACBrTEF.UltimaRespostaTEF.Rede;


//      fOperacaoTEF.Bandeira:=  Trim(copy(fOperacaoTEF.Bandeira,1,pos(' ',fOperacaoTEF.Bandeira)-1));
    // fOperacaoTEF.Bandeira:=uppercase(Trim(fOperacaoTEF.Bandeira));

      fOperacaoTEF.DocumentoRetorno := CompACBrTEF.UltimaRespostaTEF.DocumentoPessoa;
      fOperacaoTEF.ImagemComprovante1aVia := CompACBrTEF.UltimaRespostaTEF.ImagemComprovante1aVia.Text;
      fOperacaoTEF.ImagemComprovante2aVia := CompACBrTEF.UltimaRespostaTEF.ImagemComprovante2aVia.Text;

      fOperacaoTEF.Rede := CompACBrTEF.UltimaRespostaTEF.Rede;

      fOperacaoTEF.AutorizacaoRetorno := CompACBrTEF.UltimaRespostaTEF.NSU;
      fOperacaoTEF.Valor := AValor;


      // Calcula a Diferença do Valor Retornado pela Operação TEF do Valor que
      // Informamos no CRT/CHQ
     // ReajusteValor := RoundTo(CompACBrTEF.UltimaRespostaTEF.ValorTotal - ValorPago, -2);

     {
      Saque := CompACBrTEF.UltimaRespostaTEF.Saque;
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
      }

      {
      Desconto := CompACBrTEF.UltimaRespostaTEF.Desconto;
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
      }
      Result:= True;

    end
    else
    begin

      Result:= True;
    end;

  end;

 { if CompACBrTEF.Inicializado then
    CompACBrTEF.DesInicializar;}


end;

procedure TftransacaoTEFAPI.ConfigurarTEFAPI;
begin

  if UpperCase(fConfiguracaoTEF.EstabelecimentoTipoTEF)='SKYTEF' then
  begin
    CompACBrTEF.Modelo :=TACBrTEFAPITipo.tefApiCliSiTEF;
  end
  else if UpperCase(fConfiguracaoTEF.EstabelecimentoTipoTEF)='PAYGOWEB' then
  begin
    CompACBrTEF.Modelo :=TACBrTEFAPITipo.tefApiPayGoWeb;
  end;


  CompACBrTEF.DadosAutomacao.AutoAtendimento := False;
  CompACBrTEF.DadosAutomacao.ImprimeViaClienteReduzida := False;


  // teste 33, 34 e 38

   CompACBrTEF.TratamentoTransacaoInicializacao := TACBrTEFTratamentoTransacaoInicializacao.tefopiNenhum;
   CompACBrTEF.TratamentoTransacaoPendente := TACBrTEFTratamentoTransacaoPendente.tefpenPerguntar;
   CompACBrTEF.ConfirmarTransacaoAutomaticamente := False;

  // fim dos testes 33,34 e 38


  // CompACBrTEF.TratamentoTransacaoInicializacao := TACBrTEFTratamentoTransacaoInicializacao.tefopiProcessarPendentes;
  // CompACBrTEF.TratamentoTransacaoPendente := TACBrTEFTratamentoTransacaoPendente.tefpenConfirmar;
  // CompACBrTEF.ConfirmarTransacaoAutomaticamente := True;



  if not DirectoryExists(extractfilepath(application.ExeName) + '\logstef\' + FormatDateTime('yyyymmdd', now)) then
    ForceDirectories(extractfilepath(application.ExeName) + '\logstef\' + FormatDateTime('yyyymmdd', now));

  CompACBrTEF.ArqLOG :=(extractfilepath(application.ExeName) + '\logstef\' + FormatDateTime('yyyymmdd', now) + '\' + FormatDateTime('hhnn', now) + 'logtef.txt');


  CompACBrTEF.DadosAutomacao.SuportaDesconto := True;
  CompACBrTEF.DadosAutomacao.SuportaSaque := False;
  CompACBrTEF.DadosAutomacao.NomeSoftwareHouse :='PEGASUS DESENVOLVIMENTO DE SISTEMAS DE INFORMATICA LTDA -ME';
  CompACBrTEF.DadosAutomacao.CNPJSoftwareHouse := '14.477.548/0001-31';
  CompACBrTEF.DadosAutomacao.NomeAplicacao := 'Pegasus Mercato';
  CompACBrTEF.DadosAutomacao.VersaoAplicacao := '24.27.300.18';

  CompACBrTEF.DadosEstabelecimento.RazaoSocial := fConfiguracaoTEF.EstabelecimentoRazaoSocial;
  CompACBrTEF.DadosEstabelecimento.CNPJ :=  fConfiguracaoTEF.EstabelecimentoCNPJ;

  CompACBrTEF.ExibicaoQRCode := qrapiAuto;

  if (CompACBrTEF.TEF is TACBrTEFAPIClassPayGoWeb) then
  begin
    TACBrTEFAPIClassPayGoWeb(CompACBrTEF.TEF).DiretorioTrabalho :=  'c:\PAYGOWEB';
  end;

  CompACBrTEF.DadosTerminal.PortaPinPad :=fConfiguracaoTEF.TerminalPortaPinPad;

  CompACBrTEF.DadosTerminal.CodTerminal:=fConfiguracaoTEF.TerminalCodTerminal;
  CompACBrTEF.DadosTerminal.CodEmpresa:=fConfiguracaoTEF.TerminalCodEmpresa;

  CompACBrTEF.DadosTerminal.CodFilial:=fConfiguracaoTEF.TerminalCodFilial;
  CompACBrTEF.DadosTerminal.EnderecoServidor:=fConfiguracaoTEF.TerminalEnderecoServidor;

end;


function TftransacaoTEFAPI.IncluirPagamento(AValor: Double; aCodFormaPagamento: Integer): Boolean;
begin

  if AdicionarPagamento(cPagamentos[aCodFormaPagamento, 0], AValor) then
    modalresult:=mrok
  else
    ModalResult:=MrCancel;

end;


function TftransacaoTEFAPI.ProcessaCancelamento(aConfiguracaoTEF: TConfiguracaoTEF; vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin

end;



function TftransacaoTEFAPI.ProcessaPagamentoTEF(aConfiguracaoTEF: TConfiguracaoTEF; aOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin

  fConfiguracaoTEF:=aConfiguracaoTEF;

  fOperacaoTEF:=aOperacaoTEF;

{   CompACBrTEF.DesInicializar;
   ConfigurarTEFAPI;
   CompACBrTEF.Inicializar;}

  AdicionarPagamento(cPagamentos[fOperacaoTEF.Modalidade, 0], fOperacaoTEF.Valor);

end;


procedure TftransacaoTEFAPI.Cancelamento;
begin
  if not AtivarConexaoTEF(fConfiguracaoTEF) then
  begin
    fOperacaoTEF.AutorizacaoRetorno := '';
    close;
  end
  else
  begin
    if CompACBrTEF.EfetuarAdministrativa(tefopAdministrativo) then
    begin
      fOperacaoTEF.AutorizacaoRetorno := '';
      close;
    end
    else
    begin
      fOperacaoTEF.AutorizacaoRetorno := '';
      close;
    end;
  end;
end;

function TftransacaoTEFAPI.AtivarConexaoTEF(vConfiguracaoTEF: TConfiguracaoTEF): Boolean;
begin

  ConfigurarTEFAPI;

  if not CompACBrTEF.Inicializado then
    CompACBrTEF.Inicializar;

  Result :=CompACBrTEF.Inicializado;

end;



procedure TftransacaoTEFAPI.MensagemPinPag(aTexto: String; aConfiguracaoTEF: TConfiguracaoTEF);
begin

//  ConfigurarTEFAPI;

  if CompACBrTEF.Inicializado then
    CompACBrTEF.ExibirMensagemPinPad('PEGASUS'+#13+'Mercato');

end;


function TftransacaoTEFAPI.DesaAtivaTEF:Boolean;
begin

  if CompACBrTEF.Inicializado then
  begin
    CompACBrTEF.ExibirMensagemPinPad('     PEGASUS'+#13+'     Mercato');
//    CompACBrTEF.DesInicializar;
  end;

end;

function TftransacaoTEFAPI.AcharTransacaoTEF(aRede,aNSU:String): TACBrTEFResp;
var
  i: Integer;
begin
  Result := Nil;

  i := CompACBrTEF.RespostasTEF.AcharTransacao( aRede,aNSU );
  if (i >= 0) then
    Result := CompACBrTEF.RespostasTEF[i];
end;

function TftransacaoTEFAPI.BuscaTransacaoPendente:String;
var
  vlrct:TUniQuery;
begin

  vlrct:=TUniQuery.Create(nil);
  vlrct.close;
  vlrct.Connection:=ZCone;
  vlrct.sql.Text:='SELECT rctchave, rctvalor, rctnrauto, adccodigo, rctparcelas, '+
                  'bdccodigo, rctcomprovante1via, rctcomprovante2via, rcthora, orcchave, rctstatus '+
                  'FROM rct where rctstatus='+QuotedStr('PENDENTE');
  vlrct.Open;

  if not vlrct.IsEmpty then
    result:= vlrct.FieldByName('rctnrauto').AsString
  else
    result:='';

end;

function TftransacaoTEFAPI.RetornaBdcCodigo(aBandeira:String):String;
var
 vlbdc:TUniquery;
begin

    vlbdc:=TUniquery.Create(nil);
    vlbdc.Close;
    vlbdc.Connection := ZCone;
    vlbdc.SQL.Text:='SELECT bdccodigo FROM bdc  where upper(bdcidentificacao)='+QuotedStr(uppercase(aBandeira));
    vlbdc.Open;

    Result:=vlbdc.FieldByName('bdccodigo').AsString;

    vlbdc.Close;
    vlbdc.Free;

end;


function TftransacaoTEFAPI.RetornaAdcCodigo:String;
var
 vladc:TUniquery;
begin
    vladc:=TUniquery.Create(nil);
    vladc.Close;
    vladc.Connection := ZCone;
    vladc.SQL.Text:='SELECT adccodigo, adcidentificacao, etdcodigo, adcpropria, '+
                    'bdccodigo, ctacodigo FROM adc  where adcencerramento is null ';
    vladc.Open;

    Result:=vladc.FieldByName('adccodigo').AsString;

    vladc.Close;
    vladc.Free;

end;


function TftransacaoTEFAPI.AtivaTEF(aConfiguracaoTEF: TConfiguracaoTEF): boolean;
var
 msg:String;
 TEFResp: TACBrTEFResp;
 vlNSU:String;
 vlStatus:String;
 vlRede:String;
 vlAdcCodigo:String;
 i:Integer;
begin

  Result:= True;

  if not CompACBrTEF.Inicializado then
  begin

    fConfiguracaoTEF:=aConfiguracaoTEF;


    ConfigurarTEFAPI;

    if not CompACBrTEF.Inicializado then
      CompACBrTEF.Inicializar;

    if CompACBrTEF.Inicializado then
    begin

      if (CompACBrTEF.Modelo = tefApiPayGoWeb) then
      begin
        if CompACBrTEF.VerificarPresencaPinPad>0 then
        begin
           MessageDlg( 'Não foi possível ativar o PIN-PAD, verifique o equipamento!', mtError, [mbOK], 0);
           Result:=False;
           exit;
        end;
      end;

      i:=CompACBrTEF.RespostasTEF.Count-1;

      for I := 0 to CompACBrTEF.RespostasTEF.Count-1 do
      begin
        TEFResp:=CompACBrTEF.RespostasTEF[i];
        vlNSU:=TEFResp.NSU;
        vlStatus:=IfThen(TEFResp.Sucesso, 'SUCESSO', 'PENDENTE');
        vlRede:=TEFResp.Rede;

        if vlStatus='PENDENTE' then
        begin
          CompACBrTEF.ConfirmarTransacoesPendentes;
        end;

      end;




      vlNSU:= BuscaTransacaoPendente;
      vlAdcCodigo:=RetornaAdcCodigo;


      if (vlNSU<>'') and (vlAdcCodigo<>'') then
      begin

        TEFResp:= AcharTransacaoTEF(vlAdcCodigo ,vlNSU) ;
      end;

      CompACBrTEF.VerificarTransacoesPendentes;

      msg:='     PEGASUS'+#13+'     Mercato';
      CompACBrTEF.ExibirMensagemPinPad(msg);

      result:=True;

    end
    else
      Result:=False;

  end;

end;





end.
