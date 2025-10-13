unit ulspd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraspd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlspd = class(Tlfrmbase)
    fraspd: Tfraspd;
  private
  public
    { Public declarations }
  end;

var
  lspd: Tlspd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lspd := Tlspd.Create(pCargaFrame);
  try
    lspd.ShowModal;
    Result := lspd.fraspd.vretorno;
  finally
    lspd.Free;
  end;
end;

exports formu;

end.
