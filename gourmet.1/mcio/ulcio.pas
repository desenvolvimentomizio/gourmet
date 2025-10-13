unit ulcio;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracio, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcio = class(Tlfrmbase)
    fracio: Tfracio;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcio: Tlcio;

  // Início ID do Módulo lcio
const
  vPlIdMd = '01.11.20.003-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcio := Tlcio.Create(pCargaFrame);
  try
    lcio.ShowModal;
    Result := lcio.fracio.vretorno;
  finally
    lcio.Free;
  end;
end;

exports formu;

end.
