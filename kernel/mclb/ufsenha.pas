unit ufsenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfsenha = class(TForm)
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Label1: TLabel;
    EdtSenha: TEdit;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vsenhaoriginal: string;
  end;

var
  fsenha: Tfsenha;

implementation

{$R *.dfm}

procedure Tfsenha.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfsenha.bconfirmaClick(Sender: TObject);
var
  s: string;
begin
  s := self.EdtSenha.Text;

  if vsenhaoriginal = s then
    ModalResult := mrOk
  else
  begin
    ShowMessage('Senha não confere!');
    ModalResult := mrCancel;
  end;
end;

procedure Tfsenha.FormKeyPress(Sender: TObject; var Key: Char);
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
