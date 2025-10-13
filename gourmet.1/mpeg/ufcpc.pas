unit ufcpc;

interface

uses
  Winapi.Windows, Vcl.Forms, Data.DB, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  Tfcpc = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    DBGLista: TDBGrid;
    DScpc: tunidatasource;
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcpc: Tfcpc;

implementation

{$R *.dfm}

procedure Tfcpc.bcancelaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfcpc.DBGListaCellClick(Column: TColumn);
begin
  if Column.FieldName = 'cpcvisivel' then
  begin
    DScpc.DataSet.Edit;
    if DScpc.DataSet.FieldByName('cpcvisivel').AsInteger = 1 then
      DScpc.DataSet.FieldByName('cpcvisivel').AsInteger := 0
    else
      DScpc.DataSet.FieldByName('cpcvisivel').AsInteger := 1;
    DScpc.DataSet.Post;
  end;
end;

procedure Tfcpc.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  // Desenha um checkbox no dbgrid
  if Column.FieldName = 'cpcvisivel' then
  begin
    DBGLista.Canvas.FillRect(Rect);
    if DScpc.DataSet.FieldByName('cpcvisivel').AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R := Rect;
    InflateRect(R, -2, -2);
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

end.
