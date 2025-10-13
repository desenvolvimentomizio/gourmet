Unit ufajusta;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, uni, ufuncoes,
  DBAccess, Math, System.Types;

Type
  Tfajusta = Class(TForm)
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Label4: TLabel;
    lmfivalorjuros: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    rfisaldocapital: TDBEdit;
    Dvbaixa: tunidatasource;
    PnlTipoBaixa: TPanel;
    lmfivalormultas: TLabel;
    rfimultaoriginal: TDBEdit;
    rfimoraoriginal: TDBEdit;
    rfidescontos: TDBEdit;
    rfibaixado: TDBEdit;
    Label6: TLabel;
    rfipgtocapital: TDBEdit;
    rfimultarecebida: TDBEdit;
    rfimorarecebida: TDBEdit;
    rfidescoriginal: TDBEdit;
    rfisaldogeral: TDBEdit;
    Label1: TLabel;
    PnlDiferenca: TPanel;
    rfimultadispensada: TDBEdit;
    rfimoradispensada: TDBEdit;
    Label2: TLabel;
    Label7: TLabel;
    PnlDifeMulta: TPanel;
    PnlDifeMora: TPanel;

    Procedure bcancelaClick(Sender: TObject);
    Procedure bconfirmaClick(Sender: TObject);
    Procedure rfibaixadoKeyUp(Sender: TObject; Var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rfibaixadoExit(Sender: TObject);
    procedure rfimultarecebidaExit(Sender: TObject);
    procedure rfimorarecebidaExit(Sender: TObject);
    procedure rfidescontosExit(Sender: TObject);
    procedure rfimultadispensadaExit(Sender: TObject);
    procedure rfimoradispensadaExit(Sender: TObject);
  Private
    Fzcone: tuniconnection;

    vpDifeMulta: Double;
    vpDifeMora: Double;
    procedure AjustaPainel(Sender: TObject);
    procedure VerificaMulta;
    procedure VerificaMora;
    function Autorizado(VlrSolicitado, VlrBase: Double; vDdfCodigo: Integer): Boolean;
    { Private declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  Public
  vpUsuario: String;
    vpLteChave: String;
    vpUsrCodigo: String;
    { Public declarations }
  End;

  TAutorizacao = function(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vactcodigo: string = ''; vMotivo: string = '';
    vtdecodigo: String = ''; vorcchave: String = ''; vmeschave: String = ''; vltecodigo: String = ''; vDdfCodigo: String = ''; vForcaLogin: Boolean = false): string;

Var
  fajusta: Tfajusta;
  vpDiferenca: Double = 0;

Implementation

uses
  ufrabase;

{$R *.dfm}

Procedure Tfajusta.bcancelaClick(Sender: TObject);
Begin
  Dvbaixa.DataSet.Cancel;

  ModalResult := mrCancel;
End;

Procedure Tfajusta.bconfirmaClick(Sender: TObject);
Begin


  if (vpDiferenca <> 0) or (vpDifeMulta <> 0) or (vpDifeMora <> 0) or (rfibaixado.Field.AsFloat <= 0) then
  begin
    Application.MessageBox(PChar('Corrija a diferença antes de prosseguir!'), 'Confirmação', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  ModalResult := mrOk;
End;

procedure Tfajusta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tfajusta.FormShow(Sender: TObject);
begin
  Self.Height := 340;
  Self.Width := 560;

  AjustaPainel(Sender);
end;

procedure Tfajusta.rfibaixadoExit(Sender: TObject);
var
  vBaixaTotalCalc: Double;

  vDifeTotalBaixa: Double;

  vDifeTotalCapital: Double;
  vDifeTotalMulta: Double;
  vDifeTotalMora: Double;

  vFazBaixaParcial: Integer;
begin
  try
    vBaixaTotalCalc := 0;
    vDifeTotalCapital := 0;

    vBaixaTotalCalc := rfipgtocapital.Field.AsCurrency + rfimultarecebida.Field.AsCurrency + rfimorarecebida.Field.AsCurrency -
      rfidescontos.Field.AsCurrency;

    if CompareValue(vBaixaTotalCalc, rfibaixado.Field.AsCurrency) = EqualsValue then
      Exit;

    vDifeTotalBaixa := TBRound(rfibaixado.Field.AsCurrency - vBaixaTotalCalc, 2);

    (* Usuário ajustou para CIMA o campo rfibaixado *)
    if vDifeTotalBaixa > 0 then
    begin
      vDifeTotalCapital := rfisaldocapital.Field.AsCurrency - rfipgtocapital.Field.AsCurrency;

      if vDifeTotalCapital = 0 then
      begin
        Application.MessageBox(PChar('Utilize a opção Juros para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
        rfimorarecebida.SetFocus;
        Exit;
      end;

      vDifeTotalMulta := rfimultaoriginal.Field.AsCurrency - rfimultadispensada.Field.AsCurrency - rfimultarecebida.Field.AsCurrency;
      vDifeTotalMora := rfimoraoriginal.Field.AsCurrency - rfimoradispensada.Field.AsCurrency - rfimorarecebida.Field.AsCurrency;

      (* Identifica se Pgto Capital foi modificado e ajusta para mais perto do original *)
      if vDifeTotalCapital > 0 then
        if vDifeTotalBaixa <= vDifeTotalCapital then
        begin
          (* Se existe diferença e Multa ajusta até abater totalmente *)
          if vDifeTotalMulta > 0 then
            if vDifeTotalBaixa <= vDifeTotalMulta then
            begin
              rfimultarecebida.Field.AsCurrency := rfimultarecebida.Field.AsCurrency + vDifeTotalBaixa;
              vDifeTotalBaixa := 0;
            end
            else
            begin
              rfimultarecebida.Field.AsCurrency := rfimultarecebida.Field.AsCurrency + vDifeTotalMulta;
              vDifeTotalBaixa := vDifeTotalBaixa - vDifeTotalMulta;
            end;

          (* Se existe diferença e Mora ajusta até abater totalmente *)
          if vDifeTotalMora > 0 then
            if vDifeTotalBaixa <= vDifeTotalMora then
            begin
              rfimorarecebida.Field.AsCurrency := rfimorarecebida.Field.AsCurrency + vDifeTotalBaixa;
              vDifeTotalBaixa := 0;
            end
            else
            begin
              rfimorarecebida.Field.AsCurrency := rfimorarecebida.Field.AsCurrency + vDifeTotalMora;
              vDifeTotalBaixa := vDifeTotalBaixa - vDifeTotalMora;
            end;

          (* Devolve Saldo restante da diferença de baixa no Pagamento do Capital *)
          rfipgtocapital.Field.AsCurrency := rfipgtocapital.Field.AsCurrency + vDifeTotalBaixa;
        end
        else
        begin
          (* Se Ajuste de Baixa foi maior que a Diferença de Capital é devolvido o capital total e alertado usuário *)
          rfipgtocapital.Field.AsCurrency := rfipgtocapital.Field.AsCurrency + vDifeTotalCapital;
          Application.MessageBox(PChar('Utilize a opção Juros para corrigir o valor total da baixa!'), 'Atenção', MB_OK);
          rfimorarecebida.SetFocus;
        end;
      Exit;
    end;

    (* Usuário ajustou para BAIXO o campo rfibaixado *)
    if vDifeTotalBaixa < 0 then
    begin
      (* Tratamento para não perguntar a cada redução de valor *)
      if PnlTipoBaixa.Caption = 'Baixa Parcial' then
        vFazBaixaParcial := IDYES
      else
        vFazBaixaParcial := Application.MessageBox(PChar('Deseja fazer baixa Parcial deste registro?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO);

      case vFazBaixaParcial of
        IDYES:
          (* Identifica se DIferença é maior que saldo de Pgto Capital *)
          if rfipgtocapital.Field.AsCurrency < (vDifeTotalBaixa * -1) then
          begin
            (* Se diferença for maior Pgto Capital e ajustado para zero e usuário informado da diferença *)
            rfipgtocapital.Field.AsCurrency := 0;
            Application.MessageBox(PChar('Utilize as opções Multa e/ou Juros para corrigir o valor total da baixa!'), 'Atenção',
              MB_ICONWARNING + MB_OK);
            rfimultarecebida.SetFocus;
          end
          else
            rfipgtocapital.Field.AsCurrency := rfipgtocapital.Field.AsCurrency + vDifeTotalBaixa;
        IDNO:
          begin
            Application.MessageBox(PChar('Utilize a opção Desconto para corrigir o valor total da baixa!'), 'Atenção', MB_ICONWARNING + MB_OK);
            rfidescontos.SetFocus;
          end;
      end;
    end;
  finally
    AjustaPainel(Sender);
  end;
end;

Procedure Tfajusta.rfibaixadoKeyUp(Sender: TObject; Var Key: Word; Shift: TShiftState);
Begin
  AjustaPainel(Sender);
End;

procedure Tfajusta.rfidescontosExit(Sender: TObject);
begin
  if rfidescontos.Field.AsFloat > rfipgtocapital.Field.AsFloat then
  begin
    Application.MessageBox(PChar('Valor de Desconto não pode ser maior que valor de baixa do Capital!'), 'Atenção', MB_ICONWARNING + MB_OK);
    rfidescontos.SetFocus;
    Exit;
  end;

  if rfidescontos.Field.AsFloat > 0 then
    if not Autorizado(rfidescontos.Field.AsFloat, rfipgtocapital.Field.AsFloat, ddfDescGeral) then
      Exit;

  if vpDiferenca = 0 then
    rfibaixado.Field.AsFloat := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat -
      rfidescontos.Field.AsFloat;
  AjustaPainel(Sender);
end;

procedure Tfajusta.rfimoradispensadaExit(Sender: TObject);
begin
  if rfimoradispensada.Field.AsFloat > rfimoraoriginal.Field.AsFloat then
  begin
    Application.MessageBox(PChar('Valor de Dispensa de Juros não pode ser maior que valor original!'), 'Atenção', MB_ICONWARNING + MB_OK);
    rfimoradispensada.SetFocus;
    Exit;
  end;

  if rfimoradispensada.Field.AsFloat > 0 then
    if not Autorizado(rfimoradispensada.Field.AsFloat, rfimoraoriginal.Field.AsFloat, ddfDispMora) then
      Exit;

  rfimorarecebida.Field.AsFloat := rfimoraoriginal.Field.AsFloat - rfimoradispensada.Field.AsFloat;
  rfimorarecebida.SetFocus;

  if vpDiferenca = 0 then
    rfibaixado.Field.AsFloat := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat -
      rfidescontos.Field.AsFloat;

  VerificaMora;
  AjustaPainel(Sender);
end;

procedure Tfajusta.rfimorarecebidaExit(Sender: TObject);
var
  vDifeTotalMora: Double;
begin
  if PnlTipoBaixa.Caption = 'Baixa Total' then
  begin
    vDifeTotalMora := rfimoraoriginal.Field.AsFloat - rfimoradispensada.Field.AsFloat - rfimorarecebida.Field.AsFloat;

    if vDifeTotalMora > 0 then
    begin
      Application.MessageBox(PChar('Em caso de Baixa Total utilize a opção Dispensa para desconto nos Juros!!'), 'Valor não permitido',
        MB_ICONWARNING + MB_OK);
      rfimoradispensada.SetFocus;
      Exit;
    end;
  end;

  if vpDiferenca = 0 then
    rfibaixado.Field.AsFloat := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat -
      rfidescontos.Field.AsFloat;
  VerificaMora;
  AjustaPainel(Sender);
end;

procedure Tfajusta.rfimultadispensadaExit(Sender: TObject);
begin
  if rfimultadispensada.Field.AsFloat > rfimultaoriginal.Field.AsFloat then
  begin
    Application.MessageBox(PChar('Valor de Dispensa da Multa não pode ser maior que valor original!'), 'Atenção', MB_ICONWARNING + MB_OK);
    rfimultadispensada.SetFocus;
    Exit;
  end;

  if rfimultadispensada.Field.AsFloat > 0 then
    if not Autorizado(rfimultadispensada.Field.AsFloat, rfimultaoriginal.Field.AsFloat, ddfDispMulta) then
      Exit;

  rfimultarecebida.Field.AsFloat := rfimultaoriginal.Field.AsFloat - rfimultadispensada.Field.AsFloat;
  rfimultarecebida.SetFocus;

  if vpDiferenca = 0 then
    rfibaixado.Field.AsFloat := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat -
      rfidescontos.Field.AsFloat;

  VerificaMulta;
  AjustaPainel(Sender);
end;

procedure Tfajusta.rfimultarecebidaExit(Sender: TObject);
var
  vDifeTotalMulta: Double;
begin
  if PnlTipoBaixa.Caption = 'Baixa Total' then
  begin
    vDifeTotalMulta := rfimultaoriginal.Field.AsFloat - rfimultadispensada.Field.AsFloat - rfimultarecebida.Field.AsFloat;

    if vDifeTotalMulta > 0 then
    begin
      Application.MessageBox(PChar('Em caso de Baixa Total utilize a opção Dispensa para desconto na Multa!!'), 'Valor não permitido',
        MB_ICONWARNING + MB_OK);
      rfimultadispensada.SetFocus;
      Exit;
    end;
  end;

  if vpDiferenca = 0 then
    rfibaixado.Field.AsFloat := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat -
      rfidescontos.Field.AsFloat;
  VerificaMulta;
  AjustaPainel(Sender);
end;

procedure Tfajusta.AjustaPainel;
var
  vBaixaTotalCalc: Double;
Begin
  if Sender is TDBEdit then
    if TDBEdit(Sender).Field.AsFloat < 0 then
    begin
      Application.MessageBox(PChar('Valor não pode ser menor que zero!'), 'Valor Inválido', MB_ICONWARNING + MB_OK);
      TDBEdit(Sender).SetFocus;
      Exit;
    end
    else if TDBEdit(Sender).Field.AsString = '' then
      TDBEdit(Sender).Field.AsFloat := 0;

  vBaixaTotalCalc := rfipgtocapital.Field.AsFloat + rfimultarecebida.Field.AsFloat + rfimorarecebida.Field.AsFloat - rfidescontos.Field.AsFloat;

  if CompareValue(rfibaixado.Field.AsFloat, vBaixaTotalCalc) = EqualsValue then
  begin
    PnlDiferenca.Visible := False;
    vpDiferenca := 0;
  end
  else
  begin
    PnlDiferenca.Visible := True;
    vpDiferenca := rfibaixado.Field.AsFloat - vBaixaTotalCalc;
    PnlDiferenca.Caption := FormatFloat('#,##0.00', vpDiferenca);
  end;

  PnlDiferenca.Repaint;

  if rfipgtocapital.Field.AsFloat < rfisaldocapital.Field.AsFloat then
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

procedure Tfajusta.VerificaMulta;
begin
  if rfimultadispensada.Field.AsFloat > 0 then
    vpDifeMulta := rfimultaoriginal.Field.AsFloat - rfimultadispensada.Field.AsFloat - rfimultarecebida.Field.AsFloat
  else
    vpDifeMulta := 0;

  PnlDifeMulta.Caption := FormatFloat('#,##0.00', vpDifeMulta);

  if vpDifeMulta <> 0 then
    PnlDifeMulta.Visible := True
  else
    PnlDifeMulta.Visible := False;

  PnlDifeMulta.Repaint;
end;

procedure Tfajusta.VerificaMora;
begin
  if rfimoradispensada.Field.AsFloat > 0 then
    vpDifeMora := rfimoraoriginal.Field.AsFloat - rfimoradispensada.Field.AsFloat - rfimorarecebida.Field.AsFloat
  else
    vpDifeMora := 0;

  PnlDifeMora.Caption := FormatFloat('#,##0.00', vpDifeMora);

  if vpDifeMora <> 0 then
    PnlDifeMora.Visible := True
  else
    PnlDifeMora.Visible := False;

  PnlDifeMora.Repaint;
end;

function Tfajusta.Autorizado(VlrSolicitado, VlrBase: Double; vDdfCodigo: Integer): Boolean;
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

        vRetornoUsr := auto(Application, Self.zcone, vpUsrCodigo, '', vMotivo, '', '', '', vpLteChave, IntToStr(vDdfCodigo));

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := False;
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

End.
