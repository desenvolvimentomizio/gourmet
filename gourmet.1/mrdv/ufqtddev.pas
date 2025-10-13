unit ufqtddev;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufdlginput, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tfqtddev = class(Tfdlginput)
    Label1: TLabel;
    qtd: TEdit;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fqtddev: Tfqtddev;

implementation

{$R *.dfm}

uses ufbcaitv;

procedure Tfqtddev.bconfirmaClick(Sender: TObject);
begin
  fbcaitv.vqtddev:= self.qtd.Text;
  inherited;

end;

end.
