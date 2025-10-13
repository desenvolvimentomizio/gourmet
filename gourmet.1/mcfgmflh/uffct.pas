unit uffct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrafct,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlfrmbase1 = class(Tlfrmbase)
    frafct: Tfrafct;
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
