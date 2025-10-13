unit ulfct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrafct,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlfct = class(Tlfrmbase)
    frafct: Tfrafct;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfct: Tlfct;

implementation

{$R *.dfm}

end.
