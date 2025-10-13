unit ufvia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,Uni,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, DBAccess;

type
  Tfvia = class(TForm)
    Panel8: TPanel;
    Label1: TLabel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    Dorc: tunidatasource;
    orcobs: TDBMemo;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvia: Tfvia;

implementation

{$R *.dfm}

uses ufprincirest;

procedure Tfvia.bcancelaClick(Sender: TObject);
begin
  if Dorc.DataSet.State <> dsbrowse then
    Dorc.DataSet.cancel;

    close;


end;

procedure Tfvia.bconfirmaClick(Sender: TObject);
begin
  if Dorc.DataSet.State <> dsbrowse then
    Dorc.DataSet.post;

    close;

end;

procedure Tfvia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
    Key := ',';

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
