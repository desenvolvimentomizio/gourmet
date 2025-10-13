unit ufChamarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfChamarSenha = class(TForm)
    plRodaPe: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    bcancela: TButton;
    edSenha: TMaskEdit;
    Label1: TLabel;
    Image1: TImage;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vpodefechar: Boolean;
  end;

var
  fChamarSenha: TfChamarSenha;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure TfChamarSenha.bcancelaClick(Sender: TObject);
begin
  vpodefechar := true;
end;

procedure TfChamarSenha.BtnConfirmarClick(Sender: TObject);
begin

  if edSenha.Text = '' then
  begin
    vpodefechar := false;
    edSenha.SetFocus;
  end
  else
  begin
    vpodefechar := true;
    FprinciEnt.vpPedidoChamar := edSenha.Text;
  end;
end;

procedure TfChamarSenha.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  BEGIN

    BtnConfirmar.Click;
  END
  else if Key = #27 then
  begin
    bcancela.Click;

  end
  else if not(Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', Char(8)]) then
    Key := #0;

end;

procedure TfChamarSenha.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := vpodefechar;
end;

end.
