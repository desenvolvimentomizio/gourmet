unit ulopo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapop;

type
  Tlopo = class(Tlfrmbase)
    frapop: Tfrapop;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lopo: Tlopo;

implementation

{$R *.dfm}

end.
