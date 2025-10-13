unit ufrarli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  ufuncoes, uPegaBase;

type
  Tfrarli = class(Tfrabase)
    uqtabelarlichave: TIntegerField;
    uqtabelatlicodigo: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelatlicor: TStringField;
    uqtabelarlidatainicial: TDateField;
    uqtabelarlidatafinal: TDateField;
    uqtabelatliidentificacao: TStringField;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarli: Tfrarli;




      // In�cio ID do M�dulo frarli
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Licen�as ou Afastamentos';

  // Fim ID do M�dulo frarli



implementation

uses
  ufrli;

{$R *.dfm}


type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarli := Tfrarli.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarli := Tfrarli.Create(pCargaFrame);
  try
    frarli.CriaAcoesDeAcesso;
  finally
    frarli.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfrarli.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfrli, uqtabelarlichave.asstring , '');
end;

procedure Tfrarli.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfrli, '' , '');
end;

procedure Tfrarli.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
    if self.uqtabelatlicor.AsString<>'' then
    DBGLista.Canvas.Brush.Color:=StringToColor(self.uqtabelatlicor.AsString);

  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;

    if self.uqtabelatlicor.AsString<>'' then
    DBGLista.Canvas.Brush.Color:=StringToColor(self.uqtabelatlicor.AsString);
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
