unit ufloginrel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Forms, Data.DB, MemDS,
  DBAccess, Uni, Vcl.StdCtrls, Vcl.Buttons, Vcl.Controls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, System.Classes, Vcl.Dialogs, UFUNCOES;

type
  Tfloginrel = class(TForm)
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
    btAlterarSenha: TButton;
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
  floginrel: Tfloginrel;

implementation

{$R *.dfm}

procedure Tfloginrel.bcancelaClick(Sender: TObject);
begin
  self.ModalResult := mrcancel;
end;

procedure Tfloginrel.bconfirmaClick(Sender: TObject);
Var
  vsenha: String;
  vusuario: String;

  vlSenhaMD5: string;
Begin

  vsenha := self.senha.Text;
  vusuario := self.usuario.Text;
   vlSenhaMD5 := AnsiLowerCase(Copy(MD5texto(UpperCase(vsenha + 'pega')), 1, 15));


  clb.Close;
  clb.SQL.Text := 'select clbcodigo from clb where lower(clbidentificacao)=' + chr(39) + lowercase(vusuario) + chr(39) + ' and ' + 'clbsenha=' + chr(39) +
    vlSenhaMD5 + chr(39);
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

procedure Tfloginrel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

end.
