Unit ufAjustaTotal;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, uni, ufuncoes,
  DBAccess, Math, System.Types;

Type
  TTipoBaixa = (tbTotal, tbParcial);

Type
  TfAjustaTotal = Class(TForm)
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Label4: TLabel;
    lmfivalorjuros: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    PnlTipoBaixa: TPanel;
    lmfivalormultas: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    PnlDiferenca: TPanel;
    Label2: TLabel;
    edSaldoCapital: TEdit;
    edMulta: TEdit;
    edMora: TEdit;
    edDesconto: TEdit;
    edSaldoGeral: TEdit;
    edSaldoCapitalOrig: TEdit;
    edMultaOrig: TEdit;
    edMoraOrig: TEdit;
    edDescontoOrig: TEdit;
    edSaldoGeralOrig: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure edMultaExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure edMoraExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure edSaldoGeralExit(Sender: TObject);
    procedure edMultaEnter(Sender: TObject);
  Private
    Fzcone: TUniConnection;

    (* Parâmetros para Autorização *)
    FLteChave: String;
    FUsrCodigo: String;

    (* Valores originais *)
    FSaldoGeralOrig: Double;
    FDescontoOrig: Double;
    FMoraOrig: Double;
    FMultaOrig: Double;
    FSaldoCapitalOrig: Double;

    (* Valores Editados *)
    FDesconto: Double;
    FMora: Double;
    FMulta: Double;
    FSaldoCapital: Double;
    FSaldoGeral: Double;

    (* Variáveis de controle *)
    FDiferenca: Double;
    FTipoBaixa: TTipoBaixa;
    FAjustandoGeral: Boolean;
    FRenegociacao: Boolean;

    function Autorizado(VlrSolicitado, VlrBase: Double; vDdfCodigo: Integer): Boolean;
    function ValidaValor(Edit: TEdit; var Valor: Double): Boolean;
    procedure SetDesconto(const Value: Double);
    procedure SetMora(const Value: Double);
    procedure SetMulta(const Value: Double);
    procedure SetSaldoGeral(const Value: Double);
    procedure SetSaldoCapital(const Value: Double);
    procedure SetDiferenca(const Value: Double);
    procedure SetTipoBaixa(const Value: TTipoBaixa);
    procedure AjustaMaisSaldoCapital(vDiferenca: Double);
    procedure AjustaMenosSaldoCapital(vDiferenca: Double);
    procedure SetRenegociacao(const Value: Boolean);

    { Private declarations }
  published
    property zcone: TUniConnection read Fzcone write Fzcone;

    (* Parâmetros para Autorização *)
    property LteChave: String read FLteChave write FLteChave;
    property UsrCodigo: String read FUsrCodigo write FUsrCodigo;

    (* Valores Originais *)
    property SaldoCapitalOrig: Double read FSaldoCapitalOrig write FSaldoCapitalOrig;
    property MultaOrig: Double read FMultaOrig write FMultaOrig;
    property MoraOrig: Double read FMoraOrig write FMoraOrig;
    property DescontoOrig: Double read FDescontoOrig write FDescontoOrig;
    property SaldoGeralOrig: Double read FSaldoGeralOrig write FSaldoGeralOrig;

    (* Valores Editados *)
    property SaldoCapital: Double read FSaldoCapital write SetSaldoCapital;
    property Multa: Double read FMulta write SetMulta;
    property Mora: Double read FMora write SetMora;
    property Desconto: Double read FDesconto write SetDesconto;
    property SaldoGeral: Double read FSaldoGeral write SetSaldoGeral;

    (* Valores de Controle *)
    property Diferenca: Double read FDiferenca write SetDiferenca;
    property TipoBaixa: TTipoBaixa read FTipoBaixa write SetTipoBaixa;
    property AjustandoGeral: Boolean read FAjustandoGeral write FAjustandoGeral default False;
    property Renegociacao: Boolean read FRenegociacao write SetRenegociacao;

  Public
     vpUsuario: String;
    { Public declarations }
  End;

  TAutorizacao = function(AOwner: TComponent; Conexao: TUniConnection; vUsuario: string; vActCodigo: string = ''; vMotivo: string = ''; vTdeCodigo: String = '';
    vOrcChave: String = ''; vMesChave: String = ''; vLteCodigo: String = ''; vDdfCodigo: String = ''; vForcaLogin: Boolean = false): string;

Var
  fAjustaTotal: TfAjustaTotal;

Implementation

uses
  ufrabase;

{$R *.dfm}

procedure TfAjustaTotal.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfAjustaTotal.bconfirmaClick(Sender: TObject);
begin

  if CompareValue(Diferenca, 0) = EqualsValue then
    ModalResult := mrOk
  else
    Application.MessageBox(PChar('Por favor, corrija as Diferenças antes de continuar!'), 'Atenção', MB_ICONWARNING + MB_OK);
end;

procedure TfAjustaTotal.edDescontoExit(Sender: TObject);
var
  vlValor: Double;
begin
  if not ValidaValor(edDesconto, vlValor) then
    Exit;

  Desconto := vlValor;
end;

procedure TfAjustaTotal.edMoraExit(Sender: TObject);
var
  vlValor: Double;
begin
  if not ValidaValor(edMora, vlValor) then
    Exit;

  Mora := vlValor;
end;

procedure TfAjustaTotal.edMultaEnter(Sender: TObject);
begin
  TEdit(Sender).SelectAll;
end;

procedure TfAjustaTotal.edMultaExit(Sender: TObject);
var
  vlValor: Double;
begin
  if not ValidaValor(edMulta, vlValor) then
    Exit;

  Multa := vlValor;
end;

procedure TfAjustaTotal.edSaldoGeralExit(Sender: TObject);
var
  vlValor: Double;
begin
  if not ValidaValor(edSaldoGeral, vlValor) then
    Exit;

  SaldoGeral := vlValor;
end;

procedure TfAjustaTotal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Sender is TEdit then
    if not(Key in [#0, #13, #27, #8, #3, #$16, ',', '0' .. '9']) then
      Key := #0;

  if Key = ';' then
    Key := #0;

  if Key = '\' then
    Key := #0;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    bcancela.Click;
  end;
end;

procedure TfAjustaTotal.FormShow(Sender: TObject);
begin
  Self.Height := 340;
  Self.Width := 515;

  edSaldoCapitalOrig.Text := Format('%2.2n', [SaldoCapitalOrig]);
  edMultaOrig.Text := Format('%2.2n', [MultaOrig]);
  edMoraOrig.Text := Format('%2.2n', [MoraOrig]);
  edDescontoOrig.Text := Format('%2.2n', [DescontoOrig]);
  edSaldoGeralOrig.Text := Format('%2.2n', [SaldoGeralOrig]);
end;

procedure TfAjustaTotal.SetDesconto(const Value: Double);
begin
  if Value < 0 then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    edDesconto.SetFocus;
    Exit;
  end;

  if Value > SaldoCapital then
  begin
    Application.MessageBox(PChar('Desconto não pode ser maior que o Saldo Capital!'), 'Atenção', MB_ICONWARNING + MB_OK);
    edDesconto.SetFocus;
    Exit;
  end;

  FDesconto := TBRound(Value, 2);
  edDesconto.Text := Format('%2.2n', [FDesconto]);

  if Abs(Diferenca) <> 0 then
    Diferenca := TBRound(FSaldoGeral - (SaldoCapital + Multa + Mora - Desconto), 2)
  else
    SaldoGeral := SaldoCapital + Multa + Mora - Desconto;
end;

procedure TfAjustaTotal.SetDiferenca(const Value: Double);
begin
  FDiferenca := TBRound(Value, 2);

  case CompareValue(Diferenca, 0) of
    LessThanValue, GreaterThanValue:
      begin
        PnlDiferenca.Caption := Format('%2.2n', [FDiferenca]);
        PnlDiferenca.Visible := True;
      end;

    EqualsValue:
      PnlDiferenca.Visible := False;
  end;
end;

procedure TfAjustaTotal.SetMora(const Value: Double);
var
  vlMoraDispensada: Double;
begin
  if Value < 0 then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    edMora.SetFocus;
    Exit;
  end;

  FMora := TBRound(Value, 2);
  edMora.Text := Format('%2.2n', [FMora]);

  if FMora < MoraOrig then
  begin
    vlMoraDispensada := MultaOrig - FMulta;

    if not Autorizado(vlMoraDispensada, MoraOrig, ddfDispMora) then
    begin
      edMora.SetFocus;
      Exit;
    end;
  end;

  if Abs(Diferenca) <> 0 then
    Diferenca := TBRound(FSaldoGeral - (SaldoCapital + Multa + Mora - Desconto), 2)
  else
    SaldoGeral := SaldoCapital + Multa + Mora - Desconto;
end;

procedure TfAjustaTotal.SetMulta(const Value: Double);
var
  vlMultaDispensada: Double;
begin
  if Value < 0 then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    edMulta.SetFocus;
    Exit;
  end;

  FMulta := TBRound(Value, 2);
  edMulta.Text := Format('%2.2n', [FMulta]);

  if FMulta < MultaOrig then
  begin
    vlMultaDispensada := MultaOrig - FMulta;

    if not Autorizado(vlMultaDispensada, MultaOrig, ddfDispMulta) then
    begin
      edMulta.SetFocus;
      Exit;
    end;
  end;

  if Abs(Diferenca) <> 0 then
    Diferenca := TBRound(FSaldoGeral - (SaldoCapital + Multa + Mora - Desconto), 2)
  else
    SaldoGeral := SaldoCapital + Multa + Mora - Desconto;
end;

procedure TfAjustaTotal.SetRenegociacao(const Value: Boolean);
begin
  FRenegociacao := Value;
end;

procedure TfAjustaTotal.SetSaldoCapital(const Value: Double);
begin
  FSaldoCapital := TBRound(Value, 2);
  edSaldoCapital.Text := Format('%2.2n', [FSaldoCapital]);

  case CompareValue(FSaldoCapital, SaldoCapitalOrig) of
    LessThanValue:
      TipoBaixa := tbParcial;
    EqualsValue:
      TipoBaixa := tbTotal;
    GreaterThanValue:
      ;
  end;
end;

procedure TfAjustaTotal.SetSaldoGeral(const Value: Double);
var
  vlDiferenca: Double;
begin
  if AjustandoGeral then
    Exit;

  AjustandoGeral := True;
  try
    FSaldoGeral := TBRound(Value, 2);

    if FSaldoGeral <= 0 then
    begin
      Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
      edSaldoGeral.SetFocus;
      Exit;
    end;

    vlDiferenca := TBRound(FSaldoGeral - (SaldoCapital + Multa + Mora - Desconto), 2);

    case CompareValue(vlDiferenca, 0) of
      (* Usuário ajustou para BAIXO o valor da Baixa *)
      LessThanValue:
        AjustaMenosSaldoCapital(vlDiferenca);

      (* Usuário ajustou para CIMA o valor da Baixa *)
      GreaterThanValue:
        AjustaMaisSaldoCapital(vlDiferenca);
    end;

    edSaldoGeral.Text := Format('%2.2n', [FSaldoGeral]);

    Diferenca := TBRound(FSaldoGeral - (SaldoCapital + Multa + Mora - Desconto), 2);

  finally
    AjustandoGeral := False;
  end;
end;

procedure TfAjustaTotal.AjustaMenosSaldoCapital(vDiferenca: Double);
var
  vlConfirmaParcial: Integer;
begin
  (* Tratamento para não perguntar a cada redução de valor *)
  if TipoBaixa = tbParcial then
    vlConfirmaParcial := IDYES
  else if Renegociacao then (* Para RENEGOCIAÇÃO não existe Baixa Parcial *)
    vlConfirmaParcial := IDNO
  else
    vlConfirmaParcial := Application.MessageBox(PChar('Deseja fazer Baixa Parcial deste registro?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO);

  case vlConfirmaParcial of
    IDYES:
      begin
        vDiferenca := Abs(vDiferenca);

        (* Ajusta diferença no SaldoCapital, se permanecer diferença avisa usuário *)
        case CompareValue(vDiferenca, SaldoCapital) of
          LessThanValue, EqualsValue:
            begin
              SaldoCapital := SaldoCapital - vDiferenca;
              vDiferenca := 0;
            end;

          GreaterThanValue:
            begin
              vDiferenca := vDiferenca - SaldoCapital;
              SaldoCapital := 0;
            end;
        end;

        (* Saldo da diferença é ajustado em MULTA e MORA *)
        if vDiferenca >= Mora then
        begin
          vDiferenca := vDiferenca - Mora;
          Mora := 0;
        end
        else
        begin
          Mora := Mora - vDiferenca;
          vDiferenca := 0;
        end;

        if vDiferenca >= Multa then
        begin
          vDiferenca := vDiferenca - Multa;
          Multa := 0;
        end
        else
        begin
          Multa := Multa - vDiferenca;
          vDiferenca := 0;
        end;

        if vDiferenca > 0 then
        begin
          Application.MessageBox(PChar('Utilize as opções Multa e/ou Juros para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
          edMulta.SetFocus;
        end;
      end;

    IDNO:
      begin
        Application.MessageBox(PChar('Utilize a opção Desconto para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
        edDesconto.SetFocus;
      end;
  end;
end;

procedure TfAjustaTotal.AjustaMaisSaldoCapital(vDiferenca: Double);
var
  vlDifeCapital: Double;
  vlDifeMulta: Double;
  vlDifeMora: Double;
begin
  vlDifeCapital := TBRound(SaldoCapitalOrig - SaldoCapital, 2);
  vlDifeMulta := TBRound(MultaOrig - Multa, 2);
  vlDifeMora := TBRound(MoraOrig - Mora, 2);

  if vlDifeCapital = 0 then
  begin
    Application.MessageBox(PChar('Utilize as opções Multa e/ou Juros para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
    edMulta.SetFocus;
    Exit;
  end;

  (* Se existe diferença e Multa ajusta até abater totalmente *)
  if vlDifeMulta > 0 then
    if vDiferenca > vlDifeMulta then
    begin
      Multa := MultaOrig;
      vDiferenca := vDiferenca - vlDifeMulta;
    end
    else
    begin
      Multa := Multa + vDiferenca;
      vDiferenca := 0;
    end;

  (* Se existe diferença e Mora ajusta até abater totalmente *)
  if vlDifeMora > 0 then
    if vDiferenca > vlDifeMora then
    begin
      Mora := MoraOrig;
      vDiferenca := vDiferenca - vlDifeMora;
    end
    else
    begin
      Mora := Mora + vDiferenca;
      vDiferenca := 0;
    end;

  case CompareValue(vDiferenca, vlDifeCapital) of
    LessThanValue, EqualsValue:
      (* Devolve Saldo restante da diferença de baixa no Pagamento do Capital *)
      SaldoCapital := SaldoCapital + vDiferenca;

    GreaterThanValue:
      begin
        (* Se Ajuste de Baixa foi maior que a Diferença de Capital é devolvido o capital total e alertado usuário *)
        SaldoCapital := SaldoCapitalOrig;

        Application.MessageBox(PChar('Utilize as opções Multa e/ou Juros para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
        edMulta.SetFocus;
      end;
  end;
end;

procedure TfAjustaTotal.SetTipoBaixa(const Value: TTipoBaixa);
begin
  FTipoBaixa := Value;

  if FTipoBaixa = tbParcial then
  begin
    PnlTipoBaixa.Color := clRed;
    PnlTipoBaixa.Caption := 'Baixa Parcial';
  end
  else
  begin
    PnlTipoBaixa.Color := clGreen;
    PnlTipoBaixa.Caption := 'Baixa Total';
  end;
end;

function TfAjustaTotal.ValidaValor(Edit: TEdit; var Valor: Double): Boolean;
begin
  try
    Result := True;
    Valor := StrToFloat(BuscaTroca(Edit.Text, '.', ''));
  except
    Result := False;
    Application.MessageBox(PChar('Valor Inválido'), 'Atenção', MB_ICONWARNING + MB_OK);
    Edit.SetFocus;
    Exit;
  end;
end;

function TfAjustaTotal.Autorizado(VlrSolicitado, VlrBase: Double; vDdfCodigo: Integer): Boolean;
var
  auto: TAutorizacao;
  vRetornoUsr: string;
  vLiberacao: Boolean;
  Pack: Cardinal;

  vMotivo: String;
begin
  vLiberacao := True;

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vMotivo := 'AjusteBaixa#';
        vMotivo := vMotivo + FloatToStr((VlrSolicitado / VlrBase) * 100);

        vRetornoUsr := auto(Application, Self.zcone, FUsrCodigo, '', vMotivo, '', '', '', FLteChave, IntToStr(vDdfCodigo));

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := False;
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

End.
