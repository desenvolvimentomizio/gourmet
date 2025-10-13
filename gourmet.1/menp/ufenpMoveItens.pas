unit ufenpMoveItens;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Winapi.Messages, uFuncoes, System.ImageList;

type
  TfenpMoveItens = class(Tfrmbase)
    GBProdutos: TGroupBox;
    DBGProdutos: TDBGrid;
    GBEnderecos: TGroupBox;
    Label1: TLabel;
    EdEnpCodigoOrig: TEdit;
    PnlEnpEnderecoOrig: TPanel;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registroenpcodigo: TIntegerField;
    enp: tuniquery;
    Label2: TLabel;
    enpcodigo: TDBEdit;
    enpenpcodigo: TIntegerField;
    enpenpendereco: TStringField;
    registroenpendereco: TStringField;
    procedure FormShow(Sender: TObject);
    procedure EdEnpCodigoOrigEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure DBGProdutosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bcancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenpMoveItens: TfenpMoveItens;

implementation

{$R *.dfm}

procedure TfenpMoveItens.bcancelaClick(Sender: TObject);
begin
  if registro.State <> dsBrowse then
    registro.Cancel;

  ModalResult := mrCancel;
end;

procedure TfenpMoveItens.bconfirmaClick(Sender: TObject);
begin
  { inherited; }

  consulta.Close;
  consulta.SQL.Text := 'UPDATE pro ';
  consulta.SQL.Add('SET enpcodigo = ' + enpcodigo.Field.AsString + ' ');
  consulta.SQL.Add('WHERE enpcodigo = ' + registro.Params[0].AsString);
  consulta.ExecSQL;

  Close;
end;

procedure TfenpMoveItens.DBGProdutosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(DBGProdutos, Rect, DataCol, Column, State);
end;

procedure TfenpMoveItens.EdEnpCodigoOrigEnter(Sender: TObject);
begin
  inherited;
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfenpMoveItens.FormActivate(Sender: TObject);
begin
  inherited;
  if (registro.RecordCount = 0) then
  begin
    Application.MessageBox(PChar('Este endereço não possui nenhum produto.'), 'Informação', MB_ICONINFORMATION + MB_OK);
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TfenpMoveItens.FormShow(Sender: TObject);
begin
  inherited;

  EdEnpCodigoOrig.Color := PEG_COR_VALORREQUERIDO;
  EdEnpCodigoOrig.Text := registro.Params[0].AsString;
  PnlEnpEnderecoOrig.Caption := registroenpendereco.AsString;
  enpcodigo.Field.AsString := '';
end;

end.
