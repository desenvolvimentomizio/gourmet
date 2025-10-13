unit ulfrr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafrr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfrr = class(Tlfrmbase)
    frafrr: Tfrafrr;
  private
  public
    { Public declarations }
  end;

var
  lfrr: Tlfrr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfrr := Tlfrr.Create(pCargaFrame);
  try
    lfrr.ShowModal;
    Result := lfrr.frafrr.vretorno;
  finally
    lfrr.Free;
  end;
end;

exports formu;

end.
