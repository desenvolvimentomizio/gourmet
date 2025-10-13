unit ulcmo;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracmo, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcmo = class(Tlfrmbase)
    fracmo: Tfracmo;
  private
  public
    { Public declarations }
  end;

var
  lcmo: Tlcmo;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcmo := Tlcmo.Create(pCargaFrame);
  try
    lcmo.ShowModal;
    Result := lcmo.fracmo.vretorno;
  finally
    lcmo.Free;
  end;
end;

exports formu;

end.
