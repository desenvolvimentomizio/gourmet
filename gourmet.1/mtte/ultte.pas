unit ultte;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratte, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltte = class(Tlfrmbase)
    fratte: Tfratte;
  private
  public
    { Public declarations }
  end;

var
  ltte: Tltte;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltte := Tltte.Create(pCargaFrame);
  try
    ltte.ShowModal;
    Result := ltte.fratte.vretorno;
  finally
    ltte.Free;
  end;
end;

exports formu;

end.
