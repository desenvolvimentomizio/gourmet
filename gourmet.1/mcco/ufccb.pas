unit ufccb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils, System.ImageList, ufuncoes;

type
  Tfccb = class(Tfrmbase)
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccoconciliado: TIntegerField;
    Dcco: TDataSource;
    cnb: TUniQuery;
    PlTitulo: TPanel;
    plCCO: TPanel;
    DBGListaCCO: TDBGrid;
    registrocnbchave: TIntegerField;
    registroccochave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrocnbdata: TDateField;
    registrocnbhora: TTimeField;
    cta: TUniQuery;
    plRodaPeCCB: TPanel;
    plTitSaldoAtual: TPanel;
    plTotalCCO: TPanel;
    cnbcnbchave: TIntegerField;
    cnbccochave: TIntegerField;
    cnbclbcodigo: TIntegerField;
    cnbcnbregistro: TDateField;
    cnbcnbdata: TDateField;
    cnbcnbhora: TTimeField;
    ActConciliar: TAction;
    cnbdata: TUniQuery;
    cnbdataccochave: TIntegerField;
    ccocedcodigo: TStringField;
    cnbdatacnbregistro: TDateField;
    ccocnbregistro: TDateField;
    mostra: TProgressBar;
    ccocconumero: TStringField;
    brMarcarTodos: TButton;
    btDesmarcarTodos: TButton;
    Label1: TLabel;
    dtBase: TDateTimePicker;
    cbParaTodos: TCheckBox;
    Dche: TUniDataSource;
    che: TUniQuery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    chechenome: TStringField;
    chebcocodigo: TStringField;
    chechevalor: TFloatField;
    cheschcodigo: TIntegerField;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtltfdcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    PlDetFinche: TPanel;
    PlTitDetFinalizador: TPanel;
    DBlistafin: TDBGrid;
    ccoccovencimento: TDateField;
    procedure DBGListaCCOCellClick(Column: TColumn);
    procedure DBGListaCCODblClick(Sender: TObject);
    procedure DBGListaCCODrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ActConciliarExecute(Sender: TObject);
    procedure ccoCalcFields(DataSet: TDataSet);
    procedure brMarcarTodosClick(Sender: TObject);
    procedure btDesmarcarTodosClick(Sender: TObject);
    procedure DccoDataChange(Sender: TObject; Field: TField);
  private
    procedure recalculatotaiscco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccb: Tfccb;

implementation

{$R *.dfm}

uses ufcnb;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

const
  vPlIdMd = '02.02.07.007-07';
  vPlTitMdl = 'Conciliação Bancária';

procedure Tfccb.ActConciliarExecute(Sender: TObject);
var
  i: Integer;
begin

  CriaFormulario(Tfcnb, '0', self.ccoccochave.AsString);

  { i := cco.RecNo;
    cco.Refresh;
    cco.RecNo := i; }

end;

procedure Tfccb.bcancelaClick(Sender: TObject);
var
  vlCCoChave: Integer;
begin
  { inherited; }
  mostra.Visible := true;
  mostra.Max := cco.RecordCount;
  cco.DisableControls;
  cco.First;
  while not cco.Eof do
  begin

    mostra.Position := mostra.Position + 1;
    Application.ProcessMessages;
    if ccoccoconciliado.AsString = '9' then
    begin
      cco.Edit;
      ccoccoconciliado.AsString := '0';
      cco.Post;
      vlCCoChave := self.ccoccochave.AsInteger;

      consulta.Close;
      consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
      consulta.Open;

      if not consulta.IsEmpty then
        consulta.Delete;

    end;
    cco.next;

  end;

  ModalResult := mrcancel;

end;

procedure Tfccb.bconfirmaClick(Sender: TObject);
begin
  { inherited; }
  mostra.Visible := true;
  mostra.Max := cco.RecordCount;
  cco.DisableControls;
  cco.First;
  while not cco.Eof do
  begin
    mostra.Position := mostra.Position + 1;
    Application.ProcessMessages;

    if self.ccoccoconciliado.AsString = '9' then
    begin

      cco.Edit;
      ccoccoconciliado.AsString := '1';
      cco.Post;

    end;
    cco.next;
  end;
  ModalResult := mrok;
end;

procedure Tfccb.brMarcarTodosClick(Sender: TObject);
var
  vlCCoChave: Integer;

begin
  inherited;
  try
    cco.DisableControls;
    vlCCoChave := cco.RecNo;

    cco.First;
    while not cco.Eof do
    begin

      vlCCoChave := self.ccoccochave.AsInteger;

      if cco.State <> dsedit then
        cco.Edit;

      ccoccoconciliado.AsString := '9';

      consulta.Close;
      consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
      consulta.Open;

      cco.Post;

      cnb.Close;
      cnb.ParamByName('ccochave').AsInteger := ccoccochave.AsInteger;
      cnb.Open;

      if cnb.IsEmpty then
        cnb.Append
      else
        cnb.Edit;

      cnbccochave.AsInteger := ccoccochave.AsInteger;
      cnbclbcodigo.AsInteger := acesso.Usuario;
      cnbcnbregistro.AsString := hoje(Application, ZCone);
      cnbcnbdata.AsFloat := dtBase.Date;
      cnbcnbhora.AsFloat := time;
      cnb.Post;
      cco.next;
    end;
    recalculatotaiscco;
    cco.RecNo := vlCCoChave;
  finally
    cco.EnableControls;
  end;
end;

procedure Tfccb.btDesmarcarTodosClick(Sender: TObject);
var
  vlCCoChave: Integer;
begin
  inherited;
  try
    cco.DisableControls;
    vlCCoChave := cco.RecNo;
    cco.First;
    while not cco.Eof do
    begin
      if ccoccoconciliado.AsString = '9' then
      begin

        cco.Edit;
        ccoccoconciliado.AsString := '0';
        cco.Post;

        vlCCoChave := self.ccoccochave.AsInteger;

        consulta.Close;
        consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
        consulta.Open;

        if not consulta.IsEmpty then
          consulta.Delete;

      end;
      cco.next;
    end;
    recalculatotaiscco;

  finally
    cco.EnableControls;
  end;
  cco.RecNo := vlCCoChave;

end;

procedure Tfccb.ccoCalcFields(DataSet: TDataSet);
begin
  inherited;

  if self.ccoccoconciliado.AsString = '9' then
  begin
    cnbdata.Close;
    cnbdata.Params[0].AsInteger := self.ccoccochave.AsInteger;
    cnbdata.Open;

    if cnbdatacnbregistro.AsString <> '' then
    begin
      self.ccocnbregistro.AsFloat := cnbdatacnbregistro.AsFloat;
    end;
  end;

end;

procedure Tfccb.DBGListaCCOCellClick(Column: TColumn);
var
  vlCCoChave: Integer;

begin
  inherited;

  if cco.RecordCount = 0 then
    Exit;

  if cbParaTodos.Checked then
  begin

    if Column.FieldName = 'ccoconciliado' then
    begin

      if ccoccoconciliado.AsString = '9' then
      begin
        cco.Edit;
        ccoccoconciliado.AsString := '0';

        vlCCoChave := self.ccoccochave.AsInteger;

        consulta.Close;
        consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
        consulta.Open;

        if not consulta.IsEmpty then
          consulta.Delete;

        cco.Post;
        cco.Refresh;
      end
      else
      begin

        vlCCoChave := self.ccoccochave.AsInteger;

        if cco.State <> dsedit then
          cco.Edit;

        ccoccoconciliado.AsString := '9';

        consulta.Close;
        consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
        consulta.Open;

        cco.Post;
        cco.Refresh;

        cnb.Close;
        cnb.ParamByName('ccochave').AsInteger := ccoccochave.AsInteger;
        cnb.Open;

        if cnb.IsEmpty then
          cnb.Append
        else
          cnb.Edit;

        cnbccochave.AsInteger := ccoccochave.AsInteger;
        cnbclbcodigo.AsInteger := acesso.Usuario;
        cnbcnbregistro.AsString := hoje(Application, ZCone);
        cnbcnbdata.AsDateTime := dtBase.Date;
        cnbcnbhora.AsFloat := time;
        cnb.Post;

        cco.next;

      end;

      recalculatotaiscco;

    end;
  end
  else
  begin

    if Column.FieldName = 'ccoconciliado' then
    begin

      cco.Edit;
      if ccoccoconciliado.AsString = '9' then
      begin
        ccoccoconciliado.AsString := '0';
        vlCCoChave := self.ccoccochave.AsInteger;

        consulta.Close;
        consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
        consulta.Open;

        if not consulta.IsEmpty then
          consulta.Delete;

      end
      else
      begin

        vlCCoChave := self.ccoccochave.AsInteger;

        ActConciliar.Execute;

        if cco.State <> dsedit then
          cco.Edit;

        ccoccoconciliado.AsString := '9';

        consulta.Close;
        consulta.sql.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
        consulta.Open;

        if consulta.IsEmpty then
          cco.cancel
        else
          cco.Post;

        cco.next;

      end;

      recalculatotaiscco;
    end
    else
    begin
      inherited;
    end;
  end;
end;

procedure Tfccb.DBGListaCCODblClick(Sender: TObject);
begin
  inherited;

  if cco.RecordCount = 0 then
    Exit;

  if ccoccoconciliado.AsString = '0' then
  begin
    cco.Edit;
    ccoccoconciliado.AsString := '9';
    cco.Post;
  end
  else
  begin
    cco.Edit;
    ccoccoconciliado.AsString := '0';
    cco.Post;
  end;
  recalculatotaiscco;
end;

procedure Tfccb.DBGListaCCODrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Dcco.DataSet.RecNo) Then
    DBGListaCCO.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGListaCCO.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGListaCCO) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLWHITE;
    End;

  with TFriendly(DBGListaCCO) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'ccoconciliado' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGListaCCO.Canvas.FillRect(Rect);

    tmpck := 0;
    if ccoccoconciliado.AsString = '9' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGListaCCO.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tfccb.DccoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
     dtl.Close;
    dtl.Params[0].AsInteger := Self.ccoccochave.AsInteger;
    dtl.Open;


      che.Close;
      che.Params[0].AsInteger := Self.dtlltechave.AsInteger;
      che.Open;

      if che.IsEmpty then
      begin
        PlDetFinche.Visible := False;
        che.Close;
      end
      else
      begin
        PlDetFinche.Visible := True;
      end;
end;

procedure Tfccb.FormShow(Sender: TObject);
begin
  inherited;
  cco.Close;
  cco.Params[0].AsString := self.vChaveMestre;
  cco.Open;

  self.consulta.Close;
  self.consulta.sql.Text := 'select ctacodigo, ctaidentificacao, ctanumero, tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  self.consulta.Open;

  PlTitulo.Caption := consulta.fields[0].AsString + ' ' + consulta.fields[1].AsString + ' ' + consulta.fields[2].AsString;
  Application.ProcessMessages;
  self.consulta.Close;

end;

procedure Tfccb.recalculatotaiscco;
var
  reg: Integer;
  vtot: double;
begin
  reg := self.cco.RecNo;
  vtot := 0;
  cco.First;
  cco.DisableControls;
  while not cco.Eof do
  begin
    if ccoccoconciliado.AsString <> '0' then
    begin
      vtot := vtot + ccoccovalor.AsFloat;
    end;
    cco.next;
  end;
  plTotalCCO.Caption := formatfloat('##,###,##0.00', vtot);
  self.cco.RecNo := reg;
  cco.EnableControls;
  if vtot > 0 then
    bconfirma.Enabled := true
  else
    bconfirma.Enabled := false;

end;

end.
