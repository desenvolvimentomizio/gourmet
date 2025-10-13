unit ulcsp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracsp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcsp = class(Tlfrmbase)
    fracsp: Tfracsp;
  private
  public
    { Public declarations }
  end;

var
  lcsp: Tlcsp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcsp := Tlcsp.Create(pCargaFrame);
  try
    lcsp.ShowModal;
    Result := lcsp.fracsp.vretorno;
  finally
    lcsp.Free;
  end;
end;

exports formu;

end.
