unit ultfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratfi, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltfi = class(Tlfrmbase)
    fratfi: Tfratfi;
  private
  public
    { Public declarations }
  end;

var
  ltfi: Tltfi;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltfi := Tltfi.Create(pCargaFrame);
  try
    ltfi.ShowModal;
    Result := ltfi.fratfi.vretorno;
  finally
    ltfi.Free;
  end;
end;

exports formu;

end.
