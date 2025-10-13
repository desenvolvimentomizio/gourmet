unit ufdescsimb;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  Tfdescsimb = class(TForm)
    paginas: TPageControl;
    Principal: TTabSheet;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    unisimbolo: TEdit;
    Label2: TLabel;
    uniidentificacao: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fdescsimb: Tfdescsimb;

implementation

{$R *.dfm}

uses ufinfe;

procedure Tfdescsimb.bconfirmaClick(Sender: TObject);
begin
  if (uniidentificacao.Text = '') or (uniidentificacao.Text = unisimbolo.Text) then
  begin
    showmessage('Não pode ficar em branco ou ser igual ao simbolo!');
  end
  else
  begin
    finfe.vIdentificacaoUnidade := self.uniidentificacao.Text;
    modalresult := mrok;
  end;
end;

procedure Tfdescsimb.FormKeyPress(Sender: TObject; var Key: Char);
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
  End;
end;

end.
