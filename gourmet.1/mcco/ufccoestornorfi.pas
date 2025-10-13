unit ufccoestornorfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufccoestorno, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList,
  Vcl.Controls, PngImageList, System.Classes, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Graphics, uFuncoes;

type
  Tfccoestornorfi = class(Tfccoestorno)
    rfi: TUniQuery;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rficedcodigo: TIntegerField;
    rfitmfidentificacao: TStringField;
    rfitmfcodigo: TIntegerField;
    rfimfivalor: TFloatField;
    rfimfidata: TDateField;
    rfilteprincipal: TFloatField;
    rfiltejuros: TFloatField;
    rfiltedesconto: TFloatField;
    rfiltetotal: TFloatField;
    rficcochave: TIntegerField;
    rfiltechave: TIntegerField;
    rfirfinumero: TStringField;
    rfirfivencimento: TDateField;
    Drfi: TDataSource;
    rfirfichave: TIntegerField;
    DBGLista: TDBGrid;
    rfimfichave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccoestornorfi: Tfccoestornorfi;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);
  TCellGrid = class(TCustomGrid);

implementation

{$R *.dfm}

procedure Tfccoestornorfi.bconfirmaClick(Sender: TObject);
begin
  inherited;

  { rfi.First;
    while not rfi.Eof do
    begin

    consulta.Close;
    consulta.sql.Text := 'delete from mfi where mfichave=' + rfimfichave.AsString;
    consulta.ExecSQL;

    rfi.next;
    end; }

end;

procedure Tfccoestornorfi.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin

  fixRect := Rect;

  If Odd(Drfi.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  { Get active record within grids TDataLink. The active record will be
    the current record in the dataset. Check against Row that we are
    trying to Draw, -1 to offset the column headings within grid. }
  with TFriendly(DBGLista) do

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID; { set grids canvas to win highlight colour }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State); { now redraw the cell, but highlighted }
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfccoestornorfi.FormShow(Sender: TObject);
begin

  inherited;

  rfi.Close;
  rfi.Connection := self.zcone;
  rfi.Params[0].AsString := self.vchave;
  rfi.Open;

end;

end.
