unit ulefi;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraefi, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlefi = class(Tlfrmbase)
    fraefi: Tfraefi;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lefi: Tlefi;

  // Início ID do Módulo lefi
const
  vPlIdMd = '02.12.90.002-01';

  // Fim ID do Módulo lefi

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lefi := Tlefi.Create(pCargaFrame);
  try
    lefi.ShowModal;
    Result := lefi.fraefi.vretorno;
  finally
    lefi.Free;
  end;
end;

exports formu;

end.
