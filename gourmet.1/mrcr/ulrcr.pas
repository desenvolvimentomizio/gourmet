unit ulrcr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrarcr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  Tlrcr = class(Tlfrmbase)
    frarcr: Tfrarcr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrcr: Tlrcr;

implementation

{$R *.dfm}

end.
