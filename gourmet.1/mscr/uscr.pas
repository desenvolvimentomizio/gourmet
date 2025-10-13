unit uscr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrascr;

type
  Tscr = class(Tlfrmbase)
    frascr: Tfrascr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  scr: Tscr;

implementation

{$R *.dfm}

end.
