unit untTransacaoTEF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ACBrBase, ACBrTEFD, ACBrDevice,
  ACBrTEFDClass, ACBrUtil, ACBrTEFDCliSiTef, Vcl.ComCtrls, DateUtils, TypInfo, StrUtils, UFuncoes,
  Vcl.Buttons;

type
  /// <summary> Record armazenas dados da operação com TEF.</summary>
  TOperacaoTEF = record
    Valor                  : Extended;
    Modalidade             : String;
    Identificacao          : String;
    Bandeira               : String;
    AutorizacaoRetorno     : String;
    DocumentoRetorno       : String;
    ImagemComprovante1aVia : String;
    ImagemComprovante2aVia : String;
    QuantidadeParcela      : String;
    TipoOperacao           : String;
    TipoFinanciador        : String;
    TipoCartao             : String;
    Rede                   : String;
    Dia                    : String;
  /// <summary> Record armazenas dados da operação com TEF.</summary>
  end;

function ProcessaPagamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
function ProcessaCancelamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;

type
  TFrmTransacaoTEF = class(TForm)
    ACBrTEFD: TACBrTEFD;
    TimerProcessaTransacao: TTimer;
    Panel1: TPanel;
    bCancelarResp: TButton;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lMensagemOperador: TLabel;
    Panel9: TPanel;
    StatusBar: TStatusBar;
    procedure ACBrTEFDExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFDComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFDAguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
    procedure ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFDComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer; ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFDInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
    procedure ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
    procedure ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer; Operacao: TACBrTEFDCliSiTefOperacaoCampo;
      var Resposta: AnsiString; var Digitado, VoltarMenu: Boolean);
    procedure TimerProcessaTransacaoTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bCancelarRespClick(Sender: TObject);
    procedure ACBrTEFDAntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFDMudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
    procedure ACBrTEFDGravarLog(const GP: TACBrTEFDTipo; ALogLine: string;
      var Tratado: Boolean);

  private
    { Private declarations }
    // dados de conexão
    vCodigoLojaTEF      : String;
    vEnderecoIPTEF      : String;
    vNumeroTerminalTEF  : String;
    vTipoCliTEF         : Integer;
    vPathDLLTEF         : String;

    // mensagegem que vai ficar no PINPAD ao estar parado
    vMensagemPermanente : String;
    vMensagemBreak      : String;
    vTipoProcessamento  : Integer;

    vArqLog             : TStringList;
    vCancelado          : Boolean;
    vOperacaoTEF        : TOperacaoTEF;

    function AtivarConexaoTEF:Boolean;
    procedure ChamaModuloAdministrativo;
    procedure Pagamento;
    procedure Cancelamento;

  public
    { Public declarations }
    vImpressora   : String;
  end;

var
  FrmTransacaoTEF: TFrmTransacaoTEF;

implementation

uses
  UntMenuADMTEF, UntVerificaValorTEF;

{$R *.dfm}

function ProcessaPagamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
   FrmTransacaoTEF: TFrmTransacaoTEF;
begin
     try
        FrmTransacaoTEF                    := TFrmTransacaoTEF.Create(application);
       // FrmTransacaoTEF.bCancelarResp.Visible := False;
        FrmTransacaoTEF.vCancelado         := False;
        FrmTransacaoTEF.vOperacaoTEF       := vOperacaoTEF;
        FrmTransacaoTEF.vTipoProcessamento := ConstProcesTEFPagamento;
        FrmTransacaoTEF.ShowModal;
        result                             := FrmTransacaoTEF.vOperacaoTEF;
     finally
            FreeAndNil(FrmTransacaoTEF);
     end;
end;

function ProcessaCancelamento(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
   FrmTransacaoTEF: TFrmTransacaoTEF;
begin
     try
        FrmTransacaoTEF                       := TFrmTransacaoTEF.Create(application);
        FrmTransacaoTEF.vCancelado            := False;
        FrmTransacaoTEF.vOperacaoTEF          := vOperacaoTEF;
        FrmTransacaoTEF.vTipoProcessamento    := ConstProcesTEFCancelamento;
        FrmTransacaoTEF.ShowModal;
        result                                := FrmTransacaoTEF.vOperacaoTEF;
     finally
            FreeAndNil(FrmTransacaoTEF);
     end;
end;


procedure TFrmTransacaoTEF.ACBrTEFDAguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
var
   Msg: String;
begin
     Msg := '';
     Msg := 'Aguardando: ' + Arquivo + ' ' + IntToStr(SegundosTimeOut);

     if Msg <> '' then
        StatusBar.Panels[2].Text := Msg;
     application.ProcessMessages;

     if vCancelado then
        Interromper := True;

end;

procedure TFrmTransacaoTEF.ACBrTEFDAntesFinalizarRequisicao(Req: TACBrTEFDReq);
 var vresp: String;

begin
 vresp:=  ACBrTEFD.TEF.Resp.Conteudo.ToString;
end;

procedure TFrmTransacaoTEF.ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
var
   AForm : TFrmMenuADMTEF;
   MR    : TModalResult;
begin
     if Titulo = 'Selecione a forma de pagamento' then
     begin
        if pos('1:Cartao de Debito', Opcoes.Text) > 0 then
          ItemSelecionado := vOperacaoTEF.TipoOperacao.ToInteger
        else
          ItemSelecionado := vOperacaoTEF.TipoFinanciador.ToInteger;
     end else
     if Titulo='Selecione o tipo do Cartao de Credito' then
        ItemSelecionado := vOperacaoTEF.TipoCartao.ToInteger
     else
     if Titulo = 'Selecione a forma de pagamento' then
        ItemSelecionado := vOperacaoTEF.TipoFinanciador.ToInteger
     else
     if Titulo = 'Selecione o tipo do Cartao de Debito' then
        ItemSelecionado := 0
     else
     if pos('Selecione a opcao desejada',Titulo)>0 then
     begin
        ItemSelecionado := 2
     end
     else
     if Titulo='Selecione o tipo de cancelamento' then
     begin
          if vOperacaoTEF.TipoOperacao='0' then
             ItemSelecionado := 0
          else
          if vOperacaoTEF.TipoOperacao='1' then
             ItemSelecionado := 1;
     end
     else
     begin
          AForm := TFrmMenuADMTEF.Create(self);
          try
             AForm.Panel1.Caption := Titulo;
             AForm.ListBox1.Items.AddStrings(Opcoes);
             MR         := AForm.ShowModal;
             VoltarMenu := (MR = mrRetry);
             if (MR = mrOK) then
                ItemSelecionado := AForm.ListBox1.ItemIndex;
          finally
                 AForm.Free;
          end;
     end;
end;

procedure TFrmTransacaoTEF.ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer; Operacao: TACBrTEFDCliSiTefOperacaoCampo;
  var Resposta: AnsiString; var Digitado, VoltarMenu: Boolean);
var
   AForm : TFrmVerificaValorTEF;
   MR    : TModalResult;
begin
    case TipoCampo of
         // Resposta := vOperacaoTEF.QuantidadeParcela;
       505: begin
                  AForm := TFrmVerificaValorTEF.Create(self);
                  try
                       AForm.Panel1.Caption := 'Obtendo informações';
                       AForm.label1.Caption := Titulo;
                       AForm.TamanhoMaximo  := TamanhoMaximo;
                       AForm.TamanhoMinimo  := TamanhoMinimo;
                       AForm.Operacao       := Operacao;
                       AForm.TipoCampo      := TipoCampo;
                       AForm.Edit1.Text     := vOperacaoTEF.QuantidadeParcela;
                       AForm.Edit1.Enabled  := False;
                       MR                   := mrOK;
                       Digitado             := (MR = mrOK);
                       VoltarMenu           := (MR = mrRetry);
                       if Digitado then
                          Resposta := AForm.Edit1.Text;
                   finally
                          AForm.Free;
                   end;
           end;
        // Resposta := Necessita do valor da operação;
      146: begin
                  AForm := TFrmVerificaValorTEF.Create(self);
                  try
                       AForm.Panel1.Caption := 'Obtendo informações';
                       AForm.label1.Caption := Titulo;
                       AForm.TamanhoMaximo  := TamanhoMaximo;
                       AForm.TamanhoMinimo  := TamanhoMinimo;
                       AForm.Operacao       := Operacao;
                       AForm.TipoCampo      := TipoCampo;
                       AForm.Edit1.Text     := vOperacaoTEF.Valor.ToString;
                       AForm.Edit1.Enabled  := False;
                       MR                   := mrOK;
                       Digitado             := (MR = mrOK);
                       VoltarMenu           := (MR = mrRetry);
                       if Digitado then
                          Resposta := AForm.Edit1.Text;
                   finally
                          AForm.Free;
                   end;
           end;
        // Resposta := Necessita do dia da transacao no formato ddmmaaaa
      515: begin
                  AForm := TFrmVerificaValorTEF.Create(self);
                  try
                       AForm.Panel1.Caption := 'Obtendo informações';
                       AForm.label1.Caption := Titulo;
                       AForm.TamanhoMaximo  := TamanhoMaximo;
                       AForm.TamanhoMinimo  := TamanhoMinimo;
                       AForm.Operacao       := Operacao;
                       AForm.TipoCampo      := TipoCampo;
                       AForm.Edit1.Text     := vOperacaoTEF.Dia;
                       AForm.Edit1.Enabled  := False;
                       MR                   := mrOK;
                       Digitado             := (MR = mrOK);
                       VoltarMenu           := (MR = mrRetry);
                       if Digitado then
                          Resposta := AForm.Edit1.Text;
                   finally
                          AForm.Free;
                   end;

           end;
        // Resposta := Necessita o numero do documento da transacao
      516: begin
                  AForm := TFrmVerificaValorTEF.Create(self);
                  try
                       AForm.Panel1.Caption := 'Obtendo informações';
                       AForm.label1.Caption := Titulo;
                       AForm.TamanhoMaximo  := TamanhoMaximo;
                       AForm.TamanhoMinimo  := TamanhoMinimo;
                       AForm.Operacao       := Operacao;
                       AForm.TipoCampo      := TipoCampo;
                       AForm.Edit1.Text     := vOperacaoTEF.DocumentoRetorno;
                       AForm.Edit1.Enabled  := False;
                       MR                   := mrOK;
                       Digitado             := (MR = mrOK);
                       VoltarMenu           := (MR = mrRetry);
                       if Digitado then
                          Resposta := AForm.Edit1.Text;
                   finally
                          AForm.Free;
                   end;

           end
           else
           begin
                AForm := TFrmVerificaValorTEF.Create(self);
                 try
                     AForm.Panel1.Caption := 'Obtendo informações';
                     AForm.label1.Caption := Titulo;
                     AForm.TamanhoMaximo  := TamanhoMaximo;
                     AForm.TamanhoMinimo  := TamanhoMinimo;
                     AForm.Operacao       := Operacao;
                     AForm.TipoCampo      := TipoCampo;
                     AForm.Edit1.Text     := Resposta; { Para usar Valores Previamente informados }
                     MR                   := AForm.ShowModal;
                     Digitado             := (MR = mrOK);
                     VoltarMenu           := (MR = mrRetry);
                     if Digitado then
                        Resposta := AForm.Edit1.Text;
                 finally
                        AForm.Free;
                 end;
          end;
      end;

end;

procedure TFrmTransacaoTEF.ACBrTEFDComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
var
   Est      : TACBrECFEstado;
   P        : Integer;
   Linha,
   CodFPG   : String;
   ValorFPG : Double;
begin
     vArqLog.Add('ComandaECF: ' + GetEnumName(TypeInfo(TACBrTEFDOperacaoECF), Integer(Operacao)));
     try
        RetornoECF := 1;
     except
           RetornoECF := 1;
     end;
end;

procedure TFrmTransacaoTEF.ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
     try
        vArqLog.Add('ACBrTEFD1ComandaECFAbreVinculado, COO:' + COO + ' IndiceECF: ' + IndiceECF + ' Valor: ' + FormatFloat('0.00', Valor));
        RetornoECF := 1;
     except
           RetornoECF := 1;
     end;
end;

procedure TFrmTransacaoTEF.ACBrTEFDComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer; ImagemComprovante: TStringList;
var
   RetornoECF: Integer);
begin
     vArqLog.Add('ACBrTEFD1ComandaECFImprimeVia, Tipo: ' + IfThen(TipoRelatorio = trGerencial, 'trGerencial', 'trVinculado') + ' Via: ' + IntToStr(Via));
     vArqLog.AddStrings(ImagemComprovante);
     try
        RetornoECF := 1;
     except
           RetornoECF := 1;
     end;
end;

procedure TFrmTransacaoTEF.ACBrTEFDExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
var
   Fim         : TDateTime;
   OldMensagem : String;
begin

     vArqLog.Add(Mensagem);
     if (Mensagem = 'Valor Minimo da Parcela Invalido') and (length(vMensagemBreak)>0) then
     begin
        exit
     end else
     if (Mensagem = 'Valor Minimo da Parcela Invalido') and (length(vMensagemBreak)=0) then
     begin
        vMensagemBreak := 'Valor Minimo da Parcela Invalido';
     end;

     case Operacao of
          opmOK:    AModalResult := MessageDlg(Mensagem, mtInformation, [mbOK], 0);
          opmYesNo: AModalResult := MessageDlg(Mensagem, mtConfirmation, [mbYes, mbNo], 0);
          opmExibirMsgOperador,
          opmRemoverMsgOperador : lMensagemOperador.Caption := Mensagem;

    opmDestaqueVia:
      begin
        OldMensagem := lMensagemOperador.Caption;
        try
          lMensagemOperador.Caption := Mensagem;
          pMensagemOperador.Visible := True;
          pMensagem.Visible := True;

          { Aguardando 3 segundos }
          Fim := IncSecond(now, 2);
          repeat
            sleep(100);
            lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim, now));
            application.ProcessMessages;
          until (now > Fim);

        finally
          lMensagemOperador.Caption := OldMensagem;
        end;
      end;
  end;

  pMensagemOperador.Visible := (lMensagemOperador.Caption <> '');

  pMensagem.Visible := pMensagemOperador.Visible;
  application.ProcessMessages;

end;

procedure TFrmTransacaoTEF.ACBrTEFDGravarLog(const GP: TACBrTEFDTipo;
  ALogLine: string; var Tratado: Boolean);
begin
  vArqLog.Add(ALogLine);
end;

procedure TFrmTransacaoTEF.ACBrTEFDInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
begin
     case Operacao of
          ineSubTotal: RetornoECF := vOperacaoTEF.Valor.ToString;
          ineTotalAPagar: RetornoECF := '0'; // EdValor.Text;//FloatToStr(CalculaTotalPago);
          ineEstadoECF: begin
                             if Trim(ACBrTEFD.Resp.CodigoAutorizacaoTransacao)<>''  then
                                RetornoECF := 'L'
                             else if Trim(ACBrTEFD.Resp.NSUTransacaoCancelada)<>'' then
                                RetornoECF := 'L'
                             else RetornoECF := 'N';
                        end;
     end;
end;

procedure TFrmTransacaoTEF.ACBrTEFDMudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
var vresp: String;
begin
     vresp:=  ACBrTEFD.TEF.Resp.Conteudo.ToString;
     vArqLog.Add(vresp);
end;

procedure TFrmTransacaoTEF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     vArqLog.SaveToFile(extractfilepath(application.ExeName)+'logtef.txt');
end;

procedure TFrmTransacaoTEF.FormShow(Sender: TObject);
var vConfiguracoesTEF: TConfiguracoesTEF;
begin
     // conexao da martins
     // vCcodigoLojaTEF := := '01234567';
     // vEnderecoIPTEF := '172.19.2.29';
     // vNumeroTerminalTEF := '00000001';

     // conexao da açofer
     // vMensagemPermanente := 'PIM PAD - LIVRE';
     // vCodigoLojaTEF      := '00001019';
     // vEnderecoIPTEF      := '10.10.1.29';
     // vNumeroTerminalTEF  := 'SW169562';
     // vTipoCliTEF         := 4;
     // VPathDLLTEF         := 'C:\client';

     // Inicialicação das variaveis de ambiente
     vConfiguracoesTEF   := CarregaConfiguracoesTEF(vConfiguracoesTEF);
     vMensagemPermanente := vConfiguracoesTEF.MensagemPermanente;
     vCodigoLojaTEF      := vConfiguracoesTEF.CodigoLojaTEF;
     vEnderecoIPTEF      := vConfiguracoesTEF.EnderecoIPTEF;
     vNumeroTerminalTEF  := vConfiguracoesTEF.NumeroTerminalTEF;
     vTipoCliTEF         := 4; // vConfiguracoesTEF.TipoCliTEF.ToInteger;
     VPathDLLTEF         := vConfiguracoesTEF.PathDLLTEF;
     vImpressora         := vConfiguracoesTEF.Impressora;

     vOperacaoTEF.AutorizacaoRetorno := '';
     vArqLog                         := TStringList.Create;
     TimerProcessaTransacao.Enabled  := True;
end;

procedure TFrmTransacaoTEF.TimerProcessaTransacaoTimer(Sender: TObject);
begin
     TimerProcessaTransacao.Enabled := False;
     if vTipoProcessamento = ConstProcesTEFPagamento then
        Pagamento
     else
     if vTipoProcessamento = ConstProcesTEFCancelamento then
        Cancelamento;
end;

procedure TFrmTransacaoTEF.Pagamento;
begin
     if not AtivarConexaoTEF then
     begin
          vOperacaoTEF.AutorizacaoRetorno := '';
          close;
     end else
     begin
     if ACBrTEFD.CRT(StringToFloatDef(vOperacaoTEF.Valor.ToString, 0), vOperacaoTEF.Modalidade, vOperacaoTEF.Identificacao) then
     begin
          ACBrTEFD.BloquearMouseTeclado(False);
          ACBrTEFD.ConfirmarTransacoesPendentes;
          vOperacaoTEF.DocumentoRetorno       := ACBrTEFD.TEF.Resp.CodigoAutorizacaoTransacao;
          vOperacaoTEF.ImagemComprovante1aVia := ACBrTEFD.TEF.Resp.ImagemComprovante1aVia.Text;
          vOperacaoTEF.ImagemComprovante2aVia := ACBrTEFD.TEF.Resp.ImagemComprovante2aVia.Text;
          vOperacaoTEF.Rede                   := ACBrTEFD.TEF.Resp.Rede;
          vOperacaoTEF.AutorizacaoRetorno     := ACBrTEFD.TEF.Resp.CodigoAutorizacaoTransacao;
          close;
     end else
     begin
          vOperacaoTEF.AutorizacaoRetorno := '';
          close;
     end;
     end;
end;

procedure TFrmTransacaoTEF.Cancelamento;
begin
     if not AtivarConexaoTEF then
     begin
          vOperacaoTEF.AutorizacaoRetorno := '';
          close;
     end else
     begin
     if ACBrTEFD.ADM(TACBrTEFDTipo(4)) then
     begin
          vOperacaoTEF.AutorizacaoRetorno := '';
          close;
     end else
     begin
          vOperacaoTEF.AutorizacaoRetorno := '';
          close;
     end;
     end;
end;


function TFrmTransacaoTEF.AtivarConexaoTEF:boolean;
begin
     Result:=True;
     ACBrTEFD.TEFCliSiTef.codigoloja     := vCodigoLojaTEF;
     ACBrTEFD.TEFCliSiTef.EnderecoIP     := vEnderecoIPTEF;
     ACBrTEFD.TEFCliSiTef.NumeroTerminal := vNumeroTerminalTEF;
     ACBrTEFD.TEFCliSiTef.PathDLL        := VPathDLLTEF;
     ACBrTEFD.GPAtual := TACBrTEFDTipo(vTipoCliTEF);
     if fileexists(ACBrTEFD.TEFCliSiTef.PathDLL+'\CliSiTef.ini')=False then
     begin
          Showmessage('Cliente do TEF não configurado.');
          Result:=False;
          Exit;
     end;

     ACBrTEFD.Inicializar(TACBrTEFDTipo(4));

     // Atualiza barra de status
     if ACBrTEFD.TEFCliSiTef.Inicializado then
     begin
          ACBrTEFD.TEFCliSiTef.DefineMensagemPermanentePinPad(vMensagemPermanente);
          StatusBar.Panels[0].Text := 'Loja: ' + ACBrTEFD.TEFCliSiTef.codigoloja;
          StatusBar.Panels[1].Text := 'Srv.: ' + ACBrTEFD.TEFCliSiTef.EnderecoIP;
          StatusBar.Panels[2].Text := 'Trm.: ' + ACBrTEFD.TEFCliSiTef.NumeroTerminal;
          Result:=True;
          StatusBar.Panels[3].Text := 'Sit.: Conectando';
          application.ProcessMessages;
     end else
     begin
          ACBrTEFD.TEFCliSiTef.DefineMensagemPermanentePinPad(vMensagemPermanente);
          StatusBar.Panels[0].Text := 'Loja: ' + '';
          StatusBar.Panels[1].Text := 'Srv.: ' + '';
          StatusBar.Panels[2].Text := 'Trm.: ' + '';
          StatusBar.Panels[3].Text := 'Sit.: FALHA DE CONEXÃO';
          Result:=False;
          Exit;
          application.ProcessMessages;
     end;
end;

procedure TFrmTransacaoTEF.bCancelarRespClick(Sender: TObject);
begin
     vCancelado := True;
end;

procedure TFrmTransacaoTEF.ChamaModuloAdministrativo;
begin
     vCancelado := False;
     vArqLog.Add('Inicio de ADM');
     if ACBrTEFD.ADM(TACBrTEFDTipo(4)) then
        vArqLog.Add('ADM executado com sucesso')
     else vArqLog.Add('Falha ao executar ADM');
end;

end.
