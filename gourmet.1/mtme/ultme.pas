unit ultme;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratme, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltme = class(Tlfrmbase)
    fratme: Tfratme;
  private
  public
    { Public declarations }
  end;

var
  ltme: Tltme;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltme := Tltme.Create(pCargaFrame);
  try
    ltme.ShowModal;
    Result := ltme.fratme.vretorno;
  finally
    ltme.Free;
  end;
end;

exports formu;

end.
