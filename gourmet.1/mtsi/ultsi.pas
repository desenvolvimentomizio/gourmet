unit ultsi;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratsi, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltsi = class(Tlfrmbase)
    fratsi: Tfratsi;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltsi: Tltsi;

  // Início ID do Módulo lsfn
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lsfn

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltsi := Tltsi.Create(pCargaFrame);
  try
    ltsi.ShowModal;
    Result := ltsi.fratsi.vretorno;
  finally
    ltsi.Free;
  end;
end;

exports formu;

end.
