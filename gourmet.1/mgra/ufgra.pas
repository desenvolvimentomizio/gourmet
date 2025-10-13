unit ufgra;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, System.SysUtils;

type
  Tfgra = class(Tfrmbase)
    registrogracodigo: TIntegerField;
    registrograidentificacao: TStringField;
    Label1: TLabel;
    gracodigo: TDBEdit;
    Label2: TLabel;
    graidentificacao: TDBEdit;
    Bvregistro: TBevel;
    bvalidar: TButton;
    PlDetalhe: TPanel;
    PlItens: TPanel;
    listaitens: TDBGrid;
    plbotoesitens: TPanel;
    BActIncluir: TBitBtn;
    BActAlterar: TBitBtn;
    BActEcluir: TBitBtn;
    Panel3: TPanel;
    gat: TUniQuery;
    DSgat: TUniDataSource;
    gatgatcodigo: TIntegerField;
    gatgracodigo: TIntegerField;
    gatatrcodigo: TIntegerField;
    atr: TUniQuery;
    atratrcodigo: TIntegerField;
    atratridentificacao: TStringField;
    gatatridentificacao: TStringField;
    procedure bvalidarClick(Sender: TObject);
    procedure BActIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BActEcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgra: Tfgra;

  // Início ID do Módulo fraatr
const
  vPlIdMd = '01.04.05.003-02';

  // Fim ID do Módulo fraatr

implementation

{$R *.dfm}

procedure Tfgra.BActEcluirClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Você realmente deseja excluir o registro selecionado?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;

  gat.Delete;
end;

procedure Tfgra.BActIncluirClick(Sender: TObject);
var
  vlChaveRetorno: String;
begin
  vlChaveRetorno := MostraLista('matr', '');

  if Trim(vlChaveRetorno) = '' then
    Exit;

  if not gat.Active then
    gat.Open;

  if gat.Locate('atrcodigo', vlChaveRetorno, []) then
  begin
    Application.MessageBox(PChar('Este registro já foi incluído!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  gat.Append;
  gatgracodigo.AsInteger := registrogracodigo.AsInteger;
  gatatrcodigo.AsString := vlChaveRetorno;
  gat.Post;
end;

procedure Tfgra.bvalidarClick(Sender: TObject);
begin
  PlDetalhe.Visible := True;

  if not gat.Active then
    gat.Open;

  If registro.State = dsBrowse Then
    registro.Edit;

  If not(psituacao.Caption = 'Incluindo') Then
    Exit;

  registro.Post;
  Self.BActIncluir.Click;
end;

procedure Tfgra.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  if psituacao.Caption = 'Alterando' then
  begin
    Self.bvalidar.Click;
    Self.bvalidar.Visible := False;
  end
  else
    bvalidar.Visible := True;
end;

procedure Tfgra.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);
end;

end.
