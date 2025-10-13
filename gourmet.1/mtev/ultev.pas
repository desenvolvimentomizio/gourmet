unit ultev;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratev, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltev = class(Tlfrmbase)
    fratev: Tfratev;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltev: Tltev;

  // Início ID do Módulo ltog
const
  vPlIdMd = '03.12.91.001-01';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltev := Tltev.Create(pCargaFrame);
  try
    ltev.ShowModal;
    Result := ltev.fratev.vretorno;
  finally
    ltev.Free;
  end;
end;

exports formu;

end.
