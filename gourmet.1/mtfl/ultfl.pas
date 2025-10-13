unit ultfl;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratfl, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltfl = class(Tlfrmbase)
    fratfl: Tfratfl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltfl: Tltfl;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltfl := Tltfl.Create(pCargaFrame);
  try
    ltfl.ShowModal;
    Result := ltfl.fratfl.vretorno;
  finally
    ltfl.Free;
  end;
end;

exports formu;

end.
