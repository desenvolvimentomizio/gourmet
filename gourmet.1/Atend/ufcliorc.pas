unit ufcliorc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcliorc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    orcnome: TDBEdit;
    orcendereco: TDBEdit;
    orctelefone: TDBEdit;
    Dregistro: TDataSource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcliorc: Tfcliorc;

implementation

{$R *.dfm}



procedure Tfcliorc.bcancelaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Cancel;

  Close;
end;

procedure Tfcliorc.bconfirmaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Post;

  ModalResult := mrOk;
end;

procedure Tfcliorc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

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

end.
