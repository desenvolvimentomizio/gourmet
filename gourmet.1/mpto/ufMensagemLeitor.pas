unit ufMensagemLeitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfMensagemLeitor = class(TForm)
    Image1: TImage;
    plMenssagemLeitor: TLabel;
    btFechar: TButton;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMensagemLeitor: TfMensagemLeitor;

implementation

{$R *.dfm}

procedure TfMensagemLeitor.btFecharClick(Sender: TObject);
begin
close;
end;

end.
