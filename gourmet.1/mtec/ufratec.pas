unit ufratec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase, System.ImageList, Vcl.ImgList,ufuncoes;

type
  Tfratec = class(Tfrabase)
    uqtabelateccodigo: TIntegerField;
    uqtabelatecidentificacao: TStringField;
    uqtabelattccodigo: TIntegerField;
    uqtabelattcidentificacao: TStringField;
    uqtabelatecposicao: TIntegerField;
    uqtabelateccor: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratec: Tfratec;

      // Início ID do Módulo fratec
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Estágios dos Chamados';

  // Fim ID do Módulo fratec

implementation

uses
  uftec;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratec := Tfratec.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratec := Tfratec.Create(pCargaFrame);
  try
    fratec.CriaAcoesDeAcesso;
  finally
    fratec.Free;
  end;
end;

exports formuFrame, defineacesso;



procedure Tfratec.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftec, uqtabelateccodigo.AsString , '');
end;

procedure Tfratec.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftec, '' , '');
end;

procedure Tfratec.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
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
    if self.uqtabelateccor.AsString<>'' then
    DBGLista.Canvas.Font.Color:=StringToColor(self.uqtabelateccor.AsString);

  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;

    if self.uqtabelateccor.AsString<>'' then
     DBGLista.Canvas.Font.Color:=StringToColor(self.uqtabelateccor.AsString);
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
