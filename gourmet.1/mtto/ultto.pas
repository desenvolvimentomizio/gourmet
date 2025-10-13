unit ultto;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratto, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils,
  uPegaBase;

type
  Tltto = class(Tlfrmbase)
    fratto: Tfratto;
  private
  public
    { Public declarations }
  end;

var
  ltto: Tltto;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltto := Tltto.Create(pCargaFrame);
  try
    ltto.ShowModal;
    Result := ltto.fratto.vretorno;
  finally
    ltto.Free;
  end;
end;

exports formu;

end.
