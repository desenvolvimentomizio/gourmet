unit ufraidm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, ufuncoes, uPegaBase;

type
  Tfraidm = class(Tfrabase)
    uqtabelaidmmarca: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdapelido: TStringField;
    uqtabelaetecodigo: TIntegerField;
    uqtabelaeteemail: TStringField;
    uqtabelaetecontato: TStringField;
    idm: TUniQuery;
    idmidmchave: TIntegerField;
    idmmdrchave: TIntegerField;
    idmetdcodigo: TIntegerField;
    idmetecodigo: TIntegerField;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraidm: Tfraidm;

const
  vPlIdMd = '';
  vPlTitMdl = 'Destinatários';

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraidm := Tfraidm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraidm := Tfraidm.Create(pCargaFrame);
  try
    fraidm.CriaAcoesDeAcesso;
  finally
    fraidm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraidm.DBGListaCellClick(Column: TColumn);
begin
  inherited;
if Column.FieldName = 'idmmarca' then
  begin
    (* Pode fazer assim - Gabriel - 2014-02-06 1323 *)
    uqtabela.Edit;
    if uqtabela.Fieldbyname('idmmarca').AsString = '1' then
    begin
      uqtabela.Fieldbyname('idmmarca').AsString := '0'
    end
    else
    begin
      uqtabela.Fieldbyname('idmmarca').AsString := '1';
    end;
    uqtabela.Post;

  end
  else
  begin
    inherited;
  end;
end;

procedure Tfraidm.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  Check: Integer;
  R: TRect;
  i: Integer;

begin

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
  begin
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  else
  begin
    DBGLista.Canvas.Brush.Color := CLWHITE;
  end;



  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLWHITE;
    End;

  with TFriendly(DBGLista) do
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
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'idmmarca' then
  begin

    // Desenha um checkbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    Check := 0;
    if uqtabela.Fieldbyname('idmmarca').AsString = '1' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

end.
