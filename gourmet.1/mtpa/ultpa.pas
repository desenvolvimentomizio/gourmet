unit ultpa;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratpa, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltpa = class(Tlfrmbase)
    fratpa: Tfratpa;
  private
  public
    { Public declarations }
  end;

var
  ltpa: Tltpa;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltpa := Tltpa.Create(pCargaFrame);
  try
    ltpa.ShowModal;
    Result := ltpa.fratpa.vretorno;
  finally
    ltpa.Free;
  end;
end;

exports formu;

end.
