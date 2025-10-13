unit uflogos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tflogos = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    Memo1: TMemo;
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flogos: Tflogos;

implementation

{$R *.dfm}

procedure Tflogos.bfecharClick(Sender: TObject);
begin
close;
end;

end.
