unit ultpo;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratpo, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltpo = class(Tlfrmbase)
    fratpo: Tfratpo;
  private
  public
    { Public declarations }
  end;

var
  ltpo: Tltpo;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltpo := Tltpo.Create(pCargaFrame);
  try
    ltpo.ShowModal;
    Result := ltpo.fratpo.vretorno;
  finally
    ltpo.Free;
  end;
end;

exports formu;

end.
