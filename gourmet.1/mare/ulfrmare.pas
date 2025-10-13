unit ulfrmare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufraare,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlfrmbase1 = class(Tlfrmbase)
    fraare1: Tfraare;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfrmbase1: Tlfrmbase1;

implementation

{$R *.dfm}

end.
