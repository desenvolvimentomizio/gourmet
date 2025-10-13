unit uldmc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradmc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldmc = class(Tlfrmbase)
    fradmc: Tfradmc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldmc: Tldmc;

  // Início ID do Módulo ldmc
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo ldmc

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldmc := Tldmc.Create(pCargaFrame);
  try
    ldmc.ShowModal;
    Result := ldmc.fradmc.vretorno;
  finally
    ldmc.Free;
  end;
end;

exports formu;

end.
