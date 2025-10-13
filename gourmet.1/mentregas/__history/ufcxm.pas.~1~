unit ufcxm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcxm = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    DScxm: TDataSource;
    cxm: TUniQuery;
    cxmcxmchave: TIntegerField;
    cxmccxchave: TIntegerField;
    cxmcxmdinheiro: TCurrencyField;
    cxmcxmcartoes: TCurrencyField;
    cxmcxmonlineaplicativo: TCurrencyField;
    cxmcxmconvenio: TCurrencyField;
    Label1: TLabel;
    cxmdinheiro: TDBEdit;
    Label2: TLabel;
    cxmcartoes: TDBEdit;
    Label3: TLabel;
    cxmonlineaplicativo: TDBEdit;
    Label4: TLabel;
    cxmconvenio: TDBEdit;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxmBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vpccxchave:Integer;
    Fzcone: TUniConnection;
  end;

var
  fcxm: Tfcxm;

implementation

{$R *.dfm}

procedure Tfcxm.bcancelaClick(Sender: TObject);
begin
 cxm.cancel;
 close;
end;

procedure Tfcxm.bconfirmaClick(Sender: TObject);
begin
 cxm.Post;
 close;
end;

procedure Tfcxm.cxmBeforePost(DataSet: TDataSet);
begin
cxmccxchave.AsInteger:=vpccxchave;
end;

procedure Tfcxm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Sender is TDBEdit) then
    if (Sender as TDBEdit).Field.DataType = ftfloat then
    begin

      if (Key = '.') then
        Key := #0;

      If (Key = ',') Then
        if (Pos(',', (Sender as TDBEdit).Text) = 0) then
        begin
          Key := #0;
          Key := ',';
        end
        else
          Key := #0;
    end;

  If Key = ';' Then
    Key := #0;

  If Key = '\' Then
    Key := #0;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;

end;

procedure Tfcxm.FormShow(Sender: TObject);
begin

  cxm.Connection:=Fzcone;
  cxm.ParamByName('ccxchave').AsInteger:=vpccxchave;
  cxm.Open;


  if cxm.IsEmpty then
  begin
    psituacao.Caption:='Incluindo';
    cxm.append;
  end
  else
  begin
    psituacao.Caption:='Alterando';
    cxm.Edit;
  end;

end;

end.
