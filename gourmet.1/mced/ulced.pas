unit ulced;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraced, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlced = class(Tlfrmbase)
    fraced: Tfraced;
  private
  public
    { Public declarations }
  end;

var
  lced: Tlced;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lced := Tlced.Create(pCargaFrame);
  try
    lced.ShowModal;
    Result := lced.fraced.vretorno;
  finally
    lced.Free;
  end;
end;

exports formu;

end.
