unit ufdlginput;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, db;

type
  Tfdlginput = class(TForm)
    PlTitulo: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdlginput: Tfdlginput;

implementation

{$R *.dfm}

procedure Tfdlginput.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfdlginput.bconfirmaClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfdlginput.FormClose(Sender: TObject; var Action: TCloseAction);
var
  nbpl: integer;
begin
  Action := cafree;
  if FindWindow(pchar('Tfprincigourmet'), nil)<>0 then
  SetForegroundWindow(FindWindow(pchar('Tfprincigourmet'), nil));
  if FindWindow(pchar('TfprinciAten'), nil)<>0 then
  SetForegroundWindow(FindWindow(pchar('TfprinciAten'), nil));


end;

procedure Tfdlginput.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if (Sender is tdbedit) then
  begin
    if (Sender as tdbedit).Field.DataType = ftfloat then
    begin
      If Key = '.' Then
      Begin
        Key := #0;
      End;
    end;
  end;

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
