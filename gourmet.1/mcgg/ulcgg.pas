unit ulcgg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracgg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcgg = class(Tlfrmbase)
    fracgg: Tfracgg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcgg: Tlcgg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcgg := Tlcgg.Create(pCargaFrame);
  try
    lcgg.ShowModal;
    Result := lcgg.fracgg.vretorno;
  finally
    lcgg.Free;
  end;
end;

exports formu;

end.
