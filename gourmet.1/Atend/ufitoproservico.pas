unit ufitoproservico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls;

type
  Tfitoproservico = class(Tform)
    itoproservico: TDBMemo;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Dregistro: TDataSource;
    Panel2: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure itoproservicoKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fitoproservico: Tfitoproservico;

implementation

{$R *.dfm}

procedure Tfitoproservico.bcancelaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Cancel;
  Close;
end;

procedure Tfitoproservico.bconfirmaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Post;

  Close;
end;

procedure Tfitoproservico.FormKeyPress(Sender: TObject; var Key: Char);
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
    bcancela.Click;
end;

procedure Tfitoproservico.itoproservicoKeyPress(Sender: TObject; var Key: Char);
begin
  { inherited; }

end;

end.
