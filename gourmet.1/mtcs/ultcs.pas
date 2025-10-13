unit ultcs;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratcs, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltcs = class(Tlfrmbase)
    fratcs: Tfratcs;
  private
  public
    { Public declarations }
  end;

var
  ltcs: Tltcs;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcs := Tltcs.Create(pCargaFrame);
  try
    ltcs.ShowModal;
    Result := ltcs.fratcs.vretorno;
  finally
    ltcs.Free;
  end;
end;

exports formu;

end.
