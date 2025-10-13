unit ultcf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratcf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltcf = class(Tlfrmbase)
    fratcf: Tfratcf;
  private
  public
    { Public declarations }
  end;

var
  ltcf: Tltcf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcf := Tltcf.Create(pCargaFrame);
  try
    ltcf.ShowModal;
    Result := ltcf.fratcf.vretorno;
  finally
    ltcf.Free;
  end;
end;

exports formu;

end.
