unit ultct;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratct, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltct = class(Tlfrmbase)
    fratct: Tfratct;
  private
  public
    { Public declarations }
  end;

var
  ltct: Tltct;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltct := Tltct.Create(pCargaFrame);
  try
    ltct.ShowModal;
    Result := ltct.fratct.vretorno;
  finally
    ltct.Free;
  end;
end;

exports formu;

end.
