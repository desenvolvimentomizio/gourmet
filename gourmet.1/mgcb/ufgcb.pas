unit ufgcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, VirtualTable, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils,
  System.Math;

type
  Tfgcb = class(Tfrmbase)
    registrogcbcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrogcbcontato: TStringField;
    registrogcbemissao: TDateField;
    registrogcbprevisao: TDateField;
    registrogcbobservacao: TStringField;
    etd: TUniQuery;
    clb: TUniQuery;
    registroetdidentificacao: TStringField;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    Label1: TLabel;
    gcbcodigo: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    gcbcontato: TDBEdit;
    Label5: TLabel;
    gcbemissao: TDBEdit;
    Label6: TLabel;
    gcbprevisao: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    gcbobservacao: TDBMemo;
    Label7: TLabel;
    PlParcelas: TPanel;
    DBGLista: TDBGrid;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfidentificacao: TStringField;
    rfirfidtultbaixa: TDateField;
    rfirfibaixadocapital: TFloatField;
    rfirfisaldocapital: TFloatField;
    rfirfijuros: TFloatField;
    rfirfimulta: TFloatField;
    rfirfidesconto: TFloatField;
    rfirfisaldogeral: TFloatField;
    DSrfi: TUniDataSource;
    VTrfi: TVirtualTable;
    VTrfirfichave: TIntegerField;
    VTrfirfiemissao: TDateField;
    VTrfirfivencimento: TDateField;
    VTrfirfinumero: TStringField;
    VTrfirfivalor: TFloatField;
    VTrfirfihistorico: TStringField;
    VTrfisrfidentificacao: TStringField;
    VTrfirfidtultbaixa: TDateField;
    VTrfirfidias: TIntegerField;
    VTrfirfibaixadocapital: TFloatField;
    VTrfirfisaldocapital: TFloatField;
    VTrfirfijuros: TFloatField;
    VTrfirfimulta: TFloatField;
    VTrfirfidesconto: TFloatField;
    VTrfirfisaldogeral: TFloatField;
    VTrfirfiselecionado: TIntegerField;
    PlDetalhe: TPanel;
    GBTotSelecionados: TGroupBox;
    GBSelTotal: TGroupBox;
    PlSelTotal: TPanel;
    GBSelAVencer: TGroupBox;
    PlSelAVencer: TPanel;
    GBSelVencido: TGroupBox;
    PlSelVencido: TPanel;
    GBTotalGeral: TGroupBox;
    GBGeralVencido: TGroupBox;
    PlGeralVencido: TPanel;
    GBGeralAVencer: TGroupBox;
    PlGeralAVencer: TPanel;
    GBGeralTotal: TGroupBox;
    PlGeralTotal: TPanel;
    gcp: TUniQuery;
    gcpgcpcodigo: TIntegerField;
    gcpgcbcodigo: TIntegerField;
    gcprfichave: TIntegerField;
    rfirfidtprevisao: TDateField;
    rfirfidias: TIntegerField;
    GroupBox6: TGroupBox;
    PlQtdParceSel: TPanel;
    GroupBox1: TGroupBox;
    PlGeralQtdParce: TPanel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure etdcodigoExit(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure bconfirmaClick(Sender: TObject);
  private
    FTotSelGeral: Double;
    FTotSelAVencer: Double;
    FTotSelVencido: Double;
    FTotSelecionados: Integer;
    procedure AtualizaVTrfi;
    procedure SetTotSelAVencer(const Value: Double);
    procedure SetTotSelGeral(const Value: Double);
    procedure SetTotSelVencido(const Value: Double);
    procedure SetTotSelecionados(const Value: Integer);
    { Private declarations }

  published
    property TotSelVencido: Double read FTotSelVencido write SetTotSelVencido;
    property TotSelAVencer: Double read FTotSelAVencer write SetTotSelAVencer;
    property TotSelGeral: Double read FTotSelGeral write SetTotSelGeral;
    property TotSelecionados: Integer read FTotSelecionados write SetTotSelecionados;

  public
    { Public declarations }
  end;

var
  fgcb: Tfgcb;

implementation

{$R *.dfm}

procedure Tfgcb.DBGListaCellClick(Column: TColumn);
var
  vlMultiplicador: Integer;
begin
  if not VTrfi.IsEmpty then
    if DBGLista.SelectedField.FieldName = 'rfiselecionado' then
    begin
      if not(VTrfi.State = dsEdit) then
        VTrfi.Edit;
      if VTrfirfiselecionado.AsInteger = 1 then
        VTrfirfiselecionado.AsInteger := 0
      else
        VTrfirfiselecionado.AsInteger := 1;
      VTrfi.Post;

      vlMultiplicador := 1;

      if VTrfirfiselecionado.AsInteger = 0 then
        vlMultiplicador := -1;

      TotSelecionados := TotSelecionados + vlMultiplicador;

      if VTrfirfidias.AsInteger > 0 then
        TotSelVencido := TotSelVencido + (VTrfirfisaldogeral.AsFloat * vlMultiplicador)
      else
        TotSelAVencer := TotSelAVencer + (VTrfirfisaldogeral.AsFloat * vlMultiplicador);
    end;
end;

procedure Tfgcb.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);

  if VTrfirfidias.AsInteger <= 0 then
    DBGLista.Canvas.Font.Color := clBlack
  else
    DBGLista.Canvas.Font.Color := clRed;

  DBGLista.DefaultDrawDataCell(Rect, DBGLista.Columns[DataCol].Field, State);

  if Column.FieldName = 'rfiselecionado' then
  begin
    // Desenha um checkbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    Check := 0;
    if self.VTrfirfiselecionado.AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure Tfgcb.etdcodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  (* Identifica se usuário está abandonando a tela *)
  if ActiveControl = bcancela then
    Exit;

  if etdcodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT rfichave FROM rfi ';
    consulta.SQL.Add('WHERE rfi.srfcodigo NOT IN (2, 3) ');
    consulta.SQL.Add('AND IF((rfi.rfidtprevisao < CURDATE()) OR (rfi.rfidtprevisao IS NULL), rfi.rfichave, NOT rfi.rfichave) ');
    consulta.SQL.Add('AND rfi.etdcodigo = ' + etdcodigo.Field.AsString);
    consulta.Open;

    if consulta.IsEmpty then
    begin
      Application.MessageBox(PChar('Este cliente não possui nenhuma parcela pendendente!' + #13 + #13 + 'Por favor, selecione outro cliente.'), 'Atenção',
        MB_ICONWARNING + MB_OK);
      etdcodigo.SetFocus;
      Exit;
    end;

    AtualizaVTrfi;
  end;

end;

procedure Tfgcb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrogcbemissao.AsFloat := Date;
  registroclbcodigo.AsInteger := Acesso.Usuario;
end;

procedure Tfgcb.SetTotSelAVencer(const Value: Double);
begin
  FTotSelAVencer := SimpleRoundTo(Value, -2);

  PlSelAVencer.Caption := FormatFloat('#,###,##0.00', FTotSelAVencer);

  TotSelGeral := FTotSelAVencer + TotSelVencido;
end;

procedure Tfgcb.SetTotSelecionados(const Value: Integer);
begin
  FTotSelecionados := Value;

  PlQtdParceSel.Caption := IntToStr(FTotSelecionados);
end;

procedure Tfgcb.SetTotSelGeral(const Value: Double);
begin
  FTotSelGeral := SimpleRoundTo(Value, -2);

  PlSelTotal.Caption := FormatFloat('#,###,##0.00', FTotSelGeral);
end;

procedure Tfgcb.SetTotSelVencido(const Value: Double);
begin
  FTotSelVencido := SimpleRoundTo(Value, -2);

  PlSelVencido.Caption := FormatFloat('#,###,##0.00', FTotSelVencido);

  TotSelGeral := FTotSelVencido + TotSelAVencer;
end;

procedure Tfgcb.AtualizaVTrfi;
var
  I: Integer;
  vlVencidos, vlAVencer, vlTotal: Double;
  vlSelVencidos: Double;
  vlSelecionados: Integer;
begin
  vlVencidos := 0;
  vlAVencer := 0;
  vlTotal := 0;

  vlSelVencidos := 0;
  vlSelecionados := 0;

  TotSelVencido := 0;
  TotSelAVencer := 0;
  TotSelecionados := 0;

  VTrfi.DisableControls;
  try
    rfi.Close;
    rfi.Params[0].AsInteger := registroetdcodigo.AsInteger;
    rfi.Open;

    if not VTrfi.Active then
      VTrfi.Open;

    VTrfi.Clear;

    rfi.First;
    while not rfi.Eof do
    begin
      if rfirfidias.AsInteger > 0 then
        vlVencidos := vlVencidos + rfirfisaldogeral.AsFloat
      else
        vlAVencer := vlAVencer + rfirfisaldogeral.AsFloat;

      VTrfi.Append;

      for I := 0 to 14 do
        VTrfi.Fields[I].AsString := rfi.Fields[I].AsString;

      if VTrfirfidias.AsInteger > 0 then
      begin
        VTrfirfiselecionado.AsInteger := 1;
        vlSelVencidos := vlSelVencidos + VTrfirfisaldogeral.AsFloat;
        vlSelecionados := vlSelecionados + 1;
      end;

      VTrfi.Post;

      rfi.Next;
    end;

    TotSelVencido := vlVencidos;
    TotSelecionados := vlSelecionados;

    vlTotal := vlVencidos + vlAVencer;

    PlGeralVencido.Caption := FormatFloat('#,###,##0.00', vlVencidos);
    PlGeralAVencer.Caption := FormatFloat('#,###,##0.00', vlAVencer);
    PlGeralTotal.Caption := FormatFloat('#,###,##0.00', vlTotal);
    PlGeralQtdParce.Caption := IntToStr(rfi.RecordCount);

    VTrfi.First;
  finally
    VTrfi.EnableControls;
  end;
end;

procedure Tfgcb.bconfirmaClick(Sender: TObject);
begin
  if TotSelGeral <= 0 then
  begin
    Application.MessageBox(PChar('Por favor, selecione ao menos uma parcela para registrar a cobrança!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if registrogcbprevisao.AsFloat < registrogcbemissao.AsFloat then
  begin
    Application.MessageBox(PChar('"Previsão de Pagamento" deve ser maior ou igual a "Data de Registro" da cobrança!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  (* Salva o registro *)
  inherited;

  if not(ModalResult = mrOk) then
    Exit;

  if not gcp.Active then
    gcp.Open;

  VTrfi.DisableControls;
  VTrfi.First;

  while not VTrfi.Eof do
  begin
    if VTrfirfiselecionado.AsInteger = 1 then
    begin
      gcp.Append;
      gcpgcbcodigo.AsInteger := registrogcbcodigo.AsInteger;
      gcprfichave.AsInteger := VTrfirfichave.AsInteger;
      gcp.Post;

      rfi.Locate('rfichave', VTrfirfichave.AsInteger, []);
      rfi.Edit;
      rfirfidtprevisao.AsFloat := registrogcbprevisao.AsFloat;
      rfi.Post;
    end;

    VTrfi.Next;
  end;

  VTrfi.EnableControls;
end;

end.
