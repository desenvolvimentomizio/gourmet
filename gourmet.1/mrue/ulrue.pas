unit ulrue;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrarue, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlrue = class(Tlfrmbase)
    frarue: Tfrarue;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrue: Tlrue;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrue := Tlrue.Create(pCargaFrame);
  try
    lrue.ShowModal;
    Result := lrue.frarue.vretorno;
  finally
    lrue.Free;
  end;
end;

exports formu;

end.
