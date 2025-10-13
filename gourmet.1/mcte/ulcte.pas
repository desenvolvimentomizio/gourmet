unit ulcte;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracte, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcte = class(Tlfrmbase)
    fracte: Tfracte;
  private
  public
    { Public declarations }
  end;

var
  lcte: Tlcte;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcte := Tlcte.Create(pCargaFrame);
  try
    lcte.ShowModal;
    Result := lcte.fracte.vretorno;
  finally
    lcte.Free;
  end;
end;

exports formu;

end.
