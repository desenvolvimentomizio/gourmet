unit ulgcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragcb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  Tlgcb = class(Tlfrmbase)
    fragcb: Tfragcb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgcb: Tlgcb;

implementation

{$R *.dfm}

end.
