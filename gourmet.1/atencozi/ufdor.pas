unit ufdor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,Uni,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, DBAccess;

type
  Tfdor = class(TForm)
    Panel8: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Ddor: tunidatasource;
    Label1: TLabel;
    dornome: TDBEdit;
    Label2: TLabel;
    dortelefone: TDBEdit;
    Label3: TLabel;
    dorvalor: TDBEdit;
    Dmda: tunidatasource;
    Label4: TLabel;
    mdaidentificacao: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mdaidentificacaoEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdor: Tfdor;

implementation

{$R *.dfm}

uses ufprincirest;

procedure Tfdor.bcancelaClick(Sender: TObject);
begin
  if Ddor.DataSet.State <> dsbrowse then
    Ddor.DataSet.cancel;

modalresult:=mrcancel;

end;

procedure Tfdor.bconfirmaClick(Sender: TObject);
begin
  if Ddor.DataSet.State <> dsbrowse then
    Ddor.DataSet.Post;

modalresult:=mrok;
end;

procedure Tfdor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
    Key := ',';

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure Tfdor.mdaidentificacaoEnter(Sender: TObject);
begin
  self.mdaidentificacao.DropDown;
end;

end.
