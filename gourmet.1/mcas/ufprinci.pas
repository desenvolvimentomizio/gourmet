unit ufprinci;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfprinci = class(TForm)
    mensagens: TStatusBar;
    PCMenu: TPageControl;
    PlTitulo: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprinci: Tfprinci;

implementation

{$R *.dfm}




end.
