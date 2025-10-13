unit uflogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tflogin = class(TForm)
    PlTopo: TPanel;
    PlTitulo: TPanel;
    Image1: TImage;
    GBAcesso: TGroupBox;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    usuario: TEdit;
    senha: TEdit;
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    clb: TUniQuery;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vtentativa: integer;

  public
    { Public declarations }
        vpClbCodigo: string;
  end;

var
  flogin: Tflogin;

implementation

{$R *.dfm}

procedure Tflogin.bcancelaClick(Sender: TObject);
begin
  self.ModalResult := mrcancel;
end;

procedure Tflogin.bconfirmaClick(Sender: TObject);
Var
  vsenha: String;
  vusuario: String;
Begin

  vsenha := self.senha.Text;
  vusuario := self.usuario.Text;

  clb.Close;
  clb.SQL.Text := 'select clbcodigo from clb where lower(clbidentificacao)=' + chr(39) + lowercase(vusuario) + chr(39) + ' and ' + 'clbsenha=' +
    chr(39) + vsenha + chr(39);
  clb.open;

  If Not clb.IsEmpty Then
  Begin
    vpClbCodigo := clb.fields[0].AsString;
    self.ModalResult := mrok;

  End
  Else
  Begin
    showmessage('Usuário ou senha inválida!');
    vtentativa := vtentativa + 1;
    If vtentativa > 3 Then
    Begin
      showmessage('Acesso negado!');
      self.ModalResult := mrcancel;
    End;
  End;
end;

procedure Tflogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

end.
