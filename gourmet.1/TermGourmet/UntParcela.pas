unit UntParcela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, math, db, System.StrUtils,
  Vcl.ExtCtrls;

type
  TFrmParcela = class(TForm)
    Panel34: TPanel;
    Label8: TLabel;
    Panel101: TPanel;
    Panel102: TPanel;
    Button4: TButton;
    Button7: TButton;
    DBGLista: TDBGrid;
    Label1: TLabel;
    EtdQtdParc: TEdit;
    EdtVlrReceber: TEdit;
    btnGeral: TButton;
    Panel103: TPanel;
    Label22: TLabel;
    Panel104: TPanel;
    Panel105: TPanel;
    EdtFalta: TEdit;
    Panel106: TPanel;
    Panel107: TPanel;
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnGeralClick(Sender: TObject);
    procedure EdtVlrReceberKeyPress(Sender: TObject; var Key: Char);
    procedure EtdQtdParcKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGListaKeyPress(Sender: TObject; var Key: Char);
    procedure EtdQtdParcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EtdQtdParcChange(Sender: TObject);
    procedure btnGeralKeyPress(Sender: TObject; var Key: Char);
    procedure EdtVlrReceberExit(Sender: TObject);
    procedure EdtVlrReceberChange(Sender: TObject);
    procedure DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EtdQtdParcExit(Sender: TObject);

  private
    { Private declarations }
  var
    vpVlrReceber: Extended;
    vpDtAtual: TDateTime;

    procedure GerarParcelas;
    function RecalculaParcela(pRecNo: Integer): Boolean;

  public
    { Public declarations }
  var
    vpConfirma: Boolean;
    vpFalta: Extended;
    vpEtdCodigo: Integer;
  end;

var
  FrmParcela: TFrmParcela;

implementation

uses
  UntDmDados;

{$R *.dfm}

Function BuscaTroca(Text, Busca, Troca: String): String;

Var
  N: Integer;
Begin

  For N := 1 To Length(Text) Do
  Begin
    If Copy(Text, N, 1) = Busca Then
    Begin
      Delete(Text, N, 1);
      Insert(Troca, Text, N);
    End;
  End;

  result := Text;
End;

procedure TFrmParcela.btnGeralClick(Sender: TObject);
begin
  GerarParcelas;
end;

procedure TFrmParcela.btnGeralKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 1, 0);
  end;
end;

procedure TFrmParcela.Button4Click(Sender: TObject);
begin
  if not DmDados.trfi.IsEmpty then
  begin
    vpConfirma := True;
    Close;
  end;
end;

procedure TFrmParcela.Button7Click(Sender: TObject);
begin
  vpConfirma := False;
  Close;
end;

procedure TFrmParcela.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vRecNo: Integer;
begin
  if (Key in [40, 38]) and (DBGLista.SelectedIndex = 2) then
  begin
    if DmDados.trfi.State = dsEdit then
    begin
      vRecNo := DmDados.trfi.RecNo;
      DmDados.trfi.Post;
      RecalculaParcela(vRecNo);
    end;
  end;
  if (Key in [40, 38]) and (DBGLista.SelectedIndex = 1) then
  begin
    if DmDados.vpValidaData = False then
    begin
      DBGLista.SelectedIndex := 1;
      DmDados.vpValidaData := True;
      Exit;
    end;

    if vpDtAtual > DmDados.trfidtvecto.AsDateTime then
    begin
      ShowMessage('Data informada menor que a data Atual, verifique !');
      DmDados.trfi.Edit;
      DmDados.trfidtvecto.AsDateTime := vpDtAtual;
      DmDados.trfi.Post;
      Exit;
    end;
  end;

  if (((Shift = [ssCtrl]) and (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmParcela.DBGListaKeyPress(Sender: TObject; var Key: Char);
var
  vRecNo: Integer;
begin
  if Key = ';' then
    Key := #0;

  if Key = '\' then
    Key := #0;

  if Key = #13 then
  begin
    Key := #0;
    vRecNo := DmDados.trfi.RecNo;

    if DmDados.trfi.State = dsEdit then
      DmDados.trfi.Post;

    if DBGLista.SelectedIndex = 2 then
    begin
      if RecalculaParcela(vRecNo) then
      begin
        DmDados.trfi.Next;
        DBGLista.SelectedIndex := 1;
      end;
    end
    else if DBGLista.SelectedIndex = 1 then
    begin
      if DmDados.vpValidaData = False then
      begin
        DBGLista.SelectedIndex := 1;
        DmDados.vpValidaData := True;
        Exit;
      end;

      if vpDtAtual > DmDados.trfidtvecto.AsDateTime then
      begin
        ShowMessage('Data informada menor que a data Atual, verifique !');
        DmDados.trfi.Edit;
        DmDados.trfidtvecto.AsDateTime := vpDtAtual;
        DmDados.trfi.Post;
        Exit;
      end;
      DBGLista.SelectedIndex := DBGLista.SelectedIndex + 1
    end;
  end;
  if Key = #27 Then
  begin
    Key := #0;
    EdtVlrReceber.SetFocus;
  end;
end;

procedure TFrmParcela.DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 40 Then
    if DmDados.trfi.State = dsInsert then
    begin
      Key := 0;
      DmDados.trfi.Cancel;
    end;
end;

procedure TFrmParcela.EdtVlrReceberChange(Sender: TObject);
begin
  if (Length(EdtVlrReceber.Text) = 1) and (EdtVlrReceber.Text = '0') then
  begin
    EdtVlrReceber.Text := '';
    EdtVlrReceber.SetFocus;
  end;
end;

procedure TFrmParcela.EdtVlrReceberExit(Sender: TObject);
var
  vVlrInformado: Currency;
begin
  DmDados.trfi.Close;
  if DmDados.ValidaValor(EdtVlrReceber, vVlrInformado) then
  begin
    if (vVlrInformado > 0) and (vVlrInformado <= vpFalta) then
    begin
      vpVlrReceber := vVlrInformado;
      EdtVlrReceber.Text := FormatFloat('#,##0.00', vVlrInformado);
      EdtFalta.Text := FormatFloat('#,##0.00', (vpFalta - vVlrInformado));
    end
    else
    begin
      vpVlrReceber := vpFalta;
      EdtVlrReceber.Text := FormatFloat('#,##0.00', vpFalta);
      EdtFalta.Text := FormatFloat('#,##0.00', vpFalta);
    end;
  end;
end;

procedure TFrmParcela.EdtVlrReceberKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(EdtVlrReceber.Text) = 1) and (EdtVlrReceber.Text = '0') then
  begin
    EdtVlrReceber.Text := '';
    EdtVlrReceber.SetFocus;
  end;

  if (Key = ',') then
    if AnsiPos(',', EdtVlrReceber.Text) > 0 then
      Key := #0;

  if not(Key in [#0, #13, #27, #8, #3, #$16, ',', '0' .. '9']) then
    Key := #0;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmParcela.EtdQtdParcChange(Sender: TObject);
begin
  if (Length(EtdQtdParc.Text) = 1) and (EtdQtdParc.Text = '0') then
  begin
    EtdQtdParc.Text := '';
    EtdQtdParc.SetFocus;
  end;
end;

procedure TFrmParcela.EtdQtdParcExit(Sender: TObject);
begin
  if (EtdQtdParc.Text = '') then
  begin
    EtdQtdParc.Text := '1';
    EtdQtdParc.SelectAll;
    EtdQtdParc.SetFocus;
  end;
end;

procedure TFrmParcela.EtdQtdParcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Length(EtdQtdParc.Text) = 0) and (Key = VK_NUMPAD0) then
  begin
    EtdQtdParc.Text := '';
    EtdQtdParc.SetFocus;
    Key := 0;
  end;
end;

procedure TFrmParcela.EtdQtdParcKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#13, #27, #8, '0' .. '9']) then
    Key := #0;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 1, 0);
  end;
end;

procedure TFrmParcela.FormShow(Sender: TObject);
begin
  DmDados.ConsultaSQL('select current_date from dual');
  vpDtAtual := DmDados.Consulta.Fields[0].AsDateTime;
  DmDados.trfi.Close;
end;

procedure TFrmParcela.GerarParcelas;
var
  vNumParc: Integer;
  vVlrParc: Currency;
  vVlrTotal: Currency;
  vDtVencto: TDateTime;
  vDiferenca: Currency;
begin
  if not DmDados.trfi.Active then
    DmDados.trfi.Open;

  vNumParc := 1;
  vDtVencto := vpDtAtual;
  vVlrTotal := 0;
  vDiferenca := 0;
  DmDados.trfi.CancelUpdates;
  if DmDados.ValidaValor(EdtVlrReceber, vVlrParc) then
  begin
    vpVlrReceber := vVlrParc;
    vVlrParc := DmDados.TBRound((vVlrParc / StrToInt(EtdQtdParc.Text)), 2);
  end;
  while (vNumParc <= StrToInt(EtdQtdParc.Text)) do
  begin
    vDtVencto := (vDtVencto + 30);
    DmDados.trfi.Append;
    DmDados.trfietdcodigo.asInteger := vpEtdCodigo;
    DmDados.trfimdacodigo.asInteger := 7;
    DmDados.trfitfdcodigo.asInteger := 2;
    DmDados.trfinumParc.asInteger := vNumParc;
    DmDados.trfivlrparcela.AsFloat := vVlrParc;
    DmDados.trfidtvecto.AsDateTime := vDtVencto;
    DmDados.trfinumero.AsString := DmDados.orcorcchave.AsString;
    DmDados.trfi.Post;
    vVlrTotal := vVlrTotal + DmDados.trfivlrparcela.AsFloat;
    vNumParc := vNumParc + 1;
  end;
  vDiferenca := DmDados.TBRound((vVlrTotal - StrToFloat(BuscaTroca(EdtVlrReceber.Text, '.', ''))), 2);
  if vDiferenca <> 0 then
  begin
    DmDados.trfi.Edit;
    DmDados.trfivlrparcela.AsFloat := DmDados.trfivlrparcela.AsFloat - vDiferenca;
    DmDados.trfi.Post;
  end;
  DBGLista.SetFocus;
end;

function TFrmParcela.RecalculaParcela(pRecNo: Integer): Boolean;
var
  vVlrAnt, vVlrPos, vVlrTotal, vDiferenca, vVlrDig: Extended;
begin
  vVlrAnt := 0;
  vVlrPos := 0;
  vVlrTotal := 0;
  try
    DmDados.trfi.DisableControls;
    // pegando valor digitado
    DmDados.trfi.RecNo := pRecNo;
    vVlrDig := DmDados.trfivlrparcela.AsFloat;

    // calculando valores anterior
    DmDados.trfi.First;
    while not DmDados.trfi.Eof do
    begin
      if DmDados.trfi.RecNo < pRecNo then
        vVlrAnt := vVlrAnt + DmDados.trfivlrparcela.AsFloat
      else if DmDados.trfi.RecNo > pRecNo then
        vVlrPos := vVlrPos + DmDados.trfivlrparcela.AsFloat;
      DmDados.trfi.Next;
    end;

    // verificando se o ultimo valor foi alterado
    if (DmDados.trfi.RecordCount = pRecNo) then
    begin
      DmDados.trfi.RecNo := pRecNo;
      DmDados.trfi.Edit;
      DmDados.trfivlrparcela.AsFloat := (vpVlrReceber - (vVlrAnt + vVlrPos));
      DmDados.trfi.Post;
      ShowMessage('Atenção, não é possível alterar essa parcela !');
      result := False;
      Exit;
    end;

    if DmDados.TBRound(vVlrDig, 2) > DmDados.TBRound((vVlrPos + (vpVlrReceber - (vVlrAnt + vVlrPos))), 2) then
    begin
      // pegando valor digitado
      DmDados.trfi.RecNo := pRecNo;
      DmDados.trfi.Edit;
      DmDados.trfivlrparcela.AsFloat := (vpVlrReceber - (vVlrAnt + vVlrPos));
      DmDados.trfi.Post;

      ShowMessage('Valor maior que o valor remanecente das parcelas( R$ ' + FormatFloat('#,##0.00', (vVlrPos + (vpVlrReceber - (vVlrAnt + vVlrPos)))) + '), verifique !');

      result := False;
      Exit;
    end
    else
    begin
      DmDados.trfi.RecNo := pRecNo;
      if not DmDados.trfi.Eof then
      begin
        vVlrPos := DmDados.TBRound(((vpVlrReceber - (vVlrDig + vVlrAnt)) / (DmDados.trfi.RecordCount - pRecNo)), 2);
        if vVlrPos > 0 then
        begin
          DmDados.trfi.Next;
          while not DmDados.trfi.Eof do
          begin
            DmDados.trfi.Edit;
            DmDados.trfivlrparcela.AsFloat := vVlrPos;
            DmDados.trfi.Post;
            vVlrTotal := vVlrTotal + DmDados.trfivlrparcela.AsFloat;
            DmDados.trfi.Next;
          end;
          vDiferenca := DmDados.TBRound((vpVlrReceber - (vVlrDig + vVlrAnt)), 2);
          vDiferenca := DmDados.TBRound((vVlrTotal - vDiferenca), 2);
          if vDiferenca <> 0 then
          begin
            DmDados.trfi.Edit;
            DmDados.trfivlrparcela.AsFloat := DmDados.trfivlrparcela.AsFloat - vDiferenca;
            DmDados.trfi.Post;
          end;
        end;
        DmDados.trfi.RecNo := pRecNo;
      end;
      result := True;
    end;
  finally
    DmDados.trfi.EnableControls;
  end;
end;

end.
