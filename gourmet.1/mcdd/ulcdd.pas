unit ulcdd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracdd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcdd = class(Tlfrmbase)
    fracdd: Tfracdd;
  private
  public
    { Public declarations }
  end;

var
  lcdd: Tlcdd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcdd := Tlcdd.Create(pCargaFrame);
  try
    lcdd.ShowModal;
    Result := lcdd.fracdd.vretorno;
  finally
    lcdd.Free;
  end;
end;

exports formu;

end.
