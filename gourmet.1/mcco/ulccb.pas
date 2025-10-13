unit ulccb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids,ufuncoes;

type
  Tlccb = class(Tlfrmbase)
    plCCO: TPanel;
    plCCB: TPanel;
    plCentro: TPanel;
    PlTitulo: TPanel;
    DBGListaCCO: TDBGrid;
    plRodaCCO: TPanel;
    plRodaPeCCB: TPanel;
    cco: TUniQuery;
    Dcco: TDataSource;
    ccoccochave: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccoconciliado: TIntegerField;
    plTopoCCO: TPanel;
    plTopoCCB: TPanel;
    Dccb: TDataSource;
    ccb: TUniQuery;
    ccbccbchave: TIntegerField;
    ccbccbdata: TDateField;
    ccbccbhistorico: TStringField;
    ccbccbvalor: TFloatField;
    ccbcedcodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccbccbconciliado: TIntegerField;
    DBGListaCCB: TDBGrid;
    cnb: TUniQuery;
    plTitSaldoAtual: TPanel;
    plTotalCCO: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure DBGListaCCOCellClick(Column: TColumn);
    procedure DBGListaCCODblClick(Sender: TObject);
    procedure DBGListaCCODrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure recalculatotaiscco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lccb: Tlccb;

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

const
  vPlIdMd = '02.02.07.007-07';
  vPlTitMdl = 'Conciliação Bancária';


procedure Tlccb.DBGListaCCOCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'ccoconciliado' then
  begin

    cco.Edit;
    if ccoccoconciliado.AsString = '1' then
    begin
      ccoccoconciliado.AsString := '0';
    end
    else
    begin
      ccoccoconciliado.AsString := '1';
      cco.post;
    end;

    recalculatotaiscco;
  end
  else
  begin
    inherited;
  end;
end;

procedure Tlccb.DBGListaCCODblClick(Sender: TObject);
begin
  inherited;
  if ccoccoconciliado.AsString = '0' then
  begin
    cco.Edit;
    ccoccoconciliado.AsString := '1';
    cco.post;
  end
  else
  begin
    cco.Edit;
    ccoccoconciliado.AsString := '0';
    cco.post;
  end;
  recalculatotaiscco;

end;

procedure Tlccb.DBGListaCCODrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
      Font.Color := clwhite;
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
    if ccoccoconciliado.AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGListaCCO.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tlccb.recalculatotaiscco;
var
  reg: Integer;
  vtot: double;
begin
  reg := Self.cco.RecNo;
  vtot := 0;
  cco.First;
  cco.DisableControls;
  while not cco.Eof do
  begin
    if ccoccoconciliado.AsString <> '0' then
    begin
      vtot := vtot + ccoccovalor.AsFloat;
    end;
    cco.Next;
  end;
  plTotalCCO.Caption := formatfloat('##,###,##0.00', vtot);
  Self.cco.RecNo := reg;
  cco.EnableControls;
end;

end.
