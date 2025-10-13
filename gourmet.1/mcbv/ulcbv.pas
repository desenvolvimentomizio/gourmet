unit ulcbv;

interface

uses
  Winapi.Windows, ulfrmbase, Vcl.Forms, ufrabase, ufracbv, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcbv = class(Tlfrmbase)
    fracbv: Tfracbv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcbv: Tlcbv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcbv := Tlcbv.Create(pCargaFrame);
  try
    lcbv.ShowModal;
    Result := lcbv.fracbv.vretorno;
  finally
    lcbv.Free;
  end;
end;

exports formu;

end.
