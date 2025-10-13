unit ulaje;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraaje, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlaje = class(Tlfrmbase)
    fraaje: Tfraaje;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  laje: Tlaje;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  laje := Tlaje.Create(pCargaFrame);
  try
    laje.ShowModal;
    Result := laje.fraaje.vretorno;
  finally
    laje.Free;
  end;
end;

// exporta a função formu para utilização da bpl por outros
exports formu;

end.
