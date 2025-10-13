unit ufracrd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,ufuncoes, Vcl.Dialogs,
  System.ImageList, Vcl.ImgList;

type
  Tfracrd = class(Tfrabase)
    uqtabelapcgcodigo: TIntegerField;
    uqtabelaseacodigo: TIntegerField;
    uqtabelacfpcodigo: TIntegerField;
    uqtabelapcgestrutural: TStringField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelapcgativa: TIntegerField;
    uqtabelapcgrecdes: TIntegerField;
    uqtabelaseaidentificacao: TStringField;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fracrd: Tfracrd;

  // Início ID do Módulo fracrd
const
  vPlIdMd = '02.10.89.001-01';
  vPlTitMdl = 'Classificação Financeira';

  // Fim ID do Módulo fracrd

implementation

{$R *.dfm}
type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracrd := Tfracrd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracrd := Tfracrd.Create(pCargaFrame);
  try
    fracrd.CriaAcoesDeAcesso;
  finally
    fracrd.Free;
  end;
end;

exports formuFrame, defineacesso;

{ Tfracrd }

procedure Tfracrd.Carregar;
begin

  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfracrd.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := CLWHITE;
  end;

  if self.uqtabelaseacodigo.asstring = '1' then
  begin
    DBGLista.Canvas.Font.Style := [];
  end
  else
  begin
    DBGLista.Canvas.Font.Style := [fsBold];

  end;

  if self.uqtabelacedcodigo.asstring = '1' then
  begin
    DBGLista.Canvas.Font.Color := clNavy;
  end
  else
  begin
    DBGLista.Canvas.Font.Color := clRed;

  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);


end;

end.
