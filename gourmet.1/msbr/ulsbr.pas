unit ulsbr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasbr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsbr = class(Tlfrmbase)
    frasbr: Tfrasbr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsbr: Tlsbr;

  // Início ID do Módulo lsbr
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lsbr

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsbr := Tlsbr.Create(pCargaFrame);
  try
    lsbr.ShowModal;
    Result := lsbr.frasbr.vretorno;
  finally
    lsbr.Free;
  end;
end;

exports formu;

end.
