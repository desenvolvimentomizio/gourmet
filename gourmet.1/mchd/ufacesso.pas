unit ufacesso;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfacesso = class(TForm)
    Label1: TLabel;
    usuario: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facesso: Tfacesso;

implementation

{$R *.dfm}

end.
