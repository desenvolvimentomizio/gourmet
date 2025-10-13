unit ulsbp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasbp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsbp = class(Tlfrmbase)
    frasbp: Tfrasbp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsbp: Tlsbp;

  // Início ID do Módulo lsbp
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lsbp

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsbp := Tlsbp.Create(pCargaFrame);
  try
    lsbp.ShowModal;
    Result := lsbp.frasbp.vretorno;
  finally
    lsbp.Free;
  end;
end;

exports formu;

end.
