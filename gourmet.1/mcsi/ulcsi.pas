unit ulcsi;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracsi, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcsi = class(Tlfrmbase)
    fracsi: Tfracsi;
  private
  public
    { Public declarations }
  end;

var
  lcsi: Tlcsi;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcsi := Tlcsi.Create(pCargaFrame);
  try
    lcsi.ShowModal;
    Result := lcsi.fracsi.vretorno;
  finally
    lcsi.Free;
  end;
end;

exports formu;

end.
