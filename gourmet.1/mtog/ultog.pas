unit ultog;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratog, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltog = class(Tlfrmbase)
    fratog: Tfratog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltog: Tltog;

  // Início ID do Módulo ltog
const
  vPlIdMd = '03.06.81.001-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltog := Tltog.Create(pCargaFrame);
  try
    ltog.ShowModal;
    Result := ltog.fratog.vretorno;
  finally
    ltog.Free;
  end;
end;

exports formu;

end.
