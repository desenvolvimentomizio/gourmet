unit ulmmnf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, uframnf;

type
  Tlmmnf = class(Tlfrmbase)
    framnf: Tframnf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmmnf: Tlmmnf;

implementation

{$R *.dfm}

end.
