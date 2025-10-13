unit ulcrt;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracrt, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcrt = class(Tlfrmbase)
    fracrt: Tfracrt;
  private
  public
    { Public declarations }
  end;

var
  lcrt: Tlcrt;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcrt := Tlcrt.Create(pCargaFrame);
  try
    lcrt.ShowModal;
    Result := lcrt.fracrt.vretorno;
  finally
    lcrt.Free;
  end;
end;

exports formu;

end.
