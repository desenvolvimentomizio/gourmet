unit uffilaimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, System.Threading, ufuncoes;

type
  Tffilaimp = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    Dfila: TDataSource;
    DBFila: TDBGrid;
    fila: TUniQuery;
    filapdgnumero: TIntegerField;
    filaclbcodigo: TIntegerField;
    filapronome: TStringField;
    filaetdapelido: TStringField;
    btatualizar: TBitBtn;
    filapdghorapedido: TStringField;
    filaimmhoraimprimir: TStringField;
    PlTitulo: TPanel;
    Panel1: TPanel;
    DBFilaImpresso: TDBGrid;
    DFilaImpresso: TDataSource;
    filaimpresso: TUniQuery;
    filaimpressopdgnumero: TIntegerField;
    filaimpressoclbcodigo: TIntegerField;
    filaimpressopronome: TStringField;
    filaimpressoetdapelido: TStringField;
    filaimpressoimmhoraimprimir: TStringField;
    Panel2: TPanel;
    filaimpressopdghorapedido: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btatualizarClick(Sender: TObject);
    procedure DBFilaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBFilaImpressoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    vpGriCodigo: string;
    vpCznChave:string;
    vpImpressora:string;
  end;

var
  ffilaimp: Tffilaimp;

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tffilaimp.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tffilaimp.btatualizarClick(Sender: TObject);
begin
  Atualizar;
end;

procedure Tffilaimp.DBFilaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin

  If odd((Sender as TDBGrid).DataSource.DataSet.RecNo) Then
    (Sender as TDBGrid).Canvas.Brush.Color := PEG_COR_BASE
  Else
    (Sender as TDBGrid).Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly((Sender as TDBGrid)) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      // Font.Color := clWhite;
    End;

  with TFriendly((Sender as TDBGrid)) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tffilaimp.DBFilaImpressoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin

  If odd((Sender as TDBGrid).DataSource.DataSet.RecNo) Then
    (Sender as TDBGrid).Canvas.Brush.Color := PEG_COR_BASE
  Else
    (Sender as TDBGrid).Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly((Sender as TDBGrid)) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      // Font.Color := clWhite;
    End;

  with TFriendly((Sender as TDBGrid)) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tffilaimp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tffilaimp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  close;
end;

procedure Tffilaimp.FormShow(Sender: TObject);
begin
  if vpGriCodigo <> '' then
  begin
    Atualizar;
  end;
end;

procedure Tffilaimp.Atualizar;
var
  viRegi: Integer;
begin
  PlTitulo.Caption:=vpImpressora;
  viRegi := 0;
  if fila.Active then
    viRegi := fila.RecNo;
  fila.DisableControls;
  fila.close;
  fila.Params[0].AsString := vpGriCodigo;
  fila.Params[1].AsString := vpCznChave;
  fila.Open;

  if viRegi > 0 then
    fila.RecNo := viRegi;

  fila.EnableControls;



viRegi := 0;
  if filaimpresso.Active then
    viRegi := filaimpresso.RecNo;
  filaimpresso.DisableControls;
  filaimpresso.close;
  filaimpresso.Params[0].AsString := vpGriCodigo;
  filaimpresso.Params[1].AsString := vpCznChave;
  filaimpresso.Open;

  if viRegi > 0 then
    filaimpresso.RecNo := viRegi;

  filaimpresso.EnableControls;


end;

end.
