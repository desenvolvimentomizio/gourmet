unit ufnfcecorrecao;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, Vcl.Buttons, Vcl.Controls,
  Vcl.ExtCtrls, System.Classes;

type
  Tfnfcecorrecao = class(TForm)
    Label1: TLabel;
    textocorrecao: TMemo;
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnfcecorrecao: Tfnfcecorrecao;

implementation

{$R *.dfm}

procedure Tfnfcecorrecao.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfnfcecorrecao.bconfirmaClick(Sender: TObject);
var
  vTamanhoTexto: Integer;
begin
  vTamanhoTexto := Length(textocorrecao.Lines.Text);

  if (vTamanhoTexto >= 15) and (vTamanhoTexto <= 1000) then
    ModalResult := mrOk
  else
    Application.MessageBox(PChar('Correção deve estar entre 15 e 1000 caracteres.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
end;

end.
