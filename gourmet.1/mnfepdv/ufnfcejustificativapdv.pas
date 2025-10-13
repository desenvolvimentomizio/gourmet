unit ufnfcejustificativapdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfnfcejustificativapdv = class(TForm)
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
  fnfcejustificativapdv: Tfnfcejustificativapdv;

implementation

{$R *.dfm}

procedure Tfnfcejustificativapdv.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfnfcejustificativapdv.bconfirmaClick(Sender: TObject);
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
