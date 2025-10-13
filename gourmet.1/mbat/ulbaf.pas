unit ulbaf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulbatbase, Data.DB, uni, 
    Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  Tlbaf = class(Tlbatbase)
    uoc: tuniquery;
    uocuocchave: TIntegerField;
    uocorcchave: TIntegerField;
    uocorcchaveitem: TIntegerField;
    uocuocmarca: TIntegerField;
    DSuoc: tunidatasource;
    UqTabelauocmarca: TIntegerField;
    UqTabelauocchave: TIntegerField;
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DsTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    vChaveMes: String;
    { Public declarations }
  end;

var
  lbaf: Tlbaf;

implementation

{$R *.dfm}

function BuscaAtdAfa(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string; moccodigo: Integer; vchave: string): string;
Var
  i: Integer;
Begin
  try
    application.CreateForm(Tlbaf, lbaf);
    lbaf.zcone := conexao;
    lbaf.vChaveMes := vchave;
    lbaf.vmoccodigo := moccodigo;
    lbaf.vusrcodigo := usrcodigo;
    lbaf.vDirRelat := ExtractFilePath(application.ExeName) + 'relat\afaturar.fr3';

    For i := 0 To lbaf.ComponentCount - 1 Do
    Begin
      If lbaf.Components[i] Is tuniquery Then
      Begin
        (lbaf.Components[i] As tuniquery).Connection := conexao;
      End;
    End;

    lbaf.ShowModal;
    result := lbaf.vorcchave;

  finally
    freeandnil(lbaf);
  end;
End;

exports BuscaAtdAfa;

procedure Tlbaf.DBGListaCellClick(Column: TColumn);
var
  vRegistro: Integer;
begin
  inherited;
  if DBGLista.SelectedField.FieldName = 'uocmarca' then
  begin
    if uoc.Locate('orcchaveitem', self.uqtabelaorcchave.AsInteger, []) = false then
    begin
      uoc.Append;
      uocorcchave.AsString := vChaveMes;
      uocorcchaveitem.AsInteger := self.uqtabelaorcchave.AsInteger;
      uocuocmarca.AsInteger := 1;
      uoc.Post;
      uoc.Refresh;
      vRegistro := self.uqtabela.RecNo;
      uqtabela.Refresh;
      self.uqtabela.RecNo := vRegistro;
    end
    else
    begin
      uoc.Delete;
      uoc.Refresh;
      vRegistro := self.uqtabela.RecNo;
      uqtabela.Refresh;
      self.uqtabela.RecNo := vRegistro;
    end;
  end;
end;

procedure Tlbaf.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;

  if Column.FieldName = 'uocmarca' then
  begin

    // Desenha um checkbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    Check := 0;
    if self.UqTabelauocmarca.AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure Tlbaf.DsTabelaDataChange(Sender: TObject; Field: TField);
var
  i: Integer;
begin
  inherited;
  for i := 0 to DBGLista.Columns.Count - 1 do
  begin
    if DBGLista.Columns[i].FieldName = 'uocmarca' then
      if baixados.Checked then
        DBGLista.Columns[i].Visible := false
      else
        DBGLista.Columns[i].Visible := true;
  end;
end;

end.
