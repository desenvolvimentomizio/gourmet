unit ulrng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrarng;

type
  Tlrng = class(Tlfrmbase)
    frarng: Tfrarng;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrng: Tlrng;

implementation

{$R *.dfm}

end.
