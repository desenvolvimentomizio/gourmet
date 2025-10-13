unit ulsen;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasen, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsen = class(Tlfrmbase)
    frasen: Tfrasen;
  private
  public
    { Public declarations }
  end;

var
  lsen: Tlsen;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsen := Tlsen.Create(pCargaFrame);
  try
    lsen.ShowModal;
    Result := lsen.frasen.vretorno;
  finally
    lsen.Free;
  end;
end;

exports formu;

end.
