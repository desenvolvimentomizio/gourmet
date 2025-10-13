unit ultdf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratdf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltdf = class(Tlfrmbase)
    fratdf: Tfratdf;
  private
  public
    { Public declarations }
  end;

var
  ltdf: Tltdf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltdf := Tltdf.Create(pCargaFrame);
  try
    ltdf.ShowModal;
    Result := ltdf.fratdf.vretorno;
  finally
    ltdf.Free;
  end;
end;

exports formu;

end.
