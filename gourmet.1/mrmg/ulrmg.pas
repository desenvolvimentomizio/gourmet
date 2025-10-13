unit ulrmg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrarmg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlrmg = class(Tlfrmbase)
    frarmg: Tfrarmg;
  private
  public
    { Public declarations }
  end;

var
  lrmg: Tlrmg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrmg := Tlrmg.Create(pCargaFrame);
  try
    lrmg.ShowModal;
    Result := lrmg.frarmg.vretorno;
  finally
    lrmg.Free;
  end;
end;

exports formu;

end.
