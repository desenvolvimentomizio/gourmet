unit ulmea;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframea, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmea = class(Tlfrmbase)
    framea: Tframea;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmea: Tlmea;

  // Início ID do Módulo lmea
const
  vPlIdMd = '01.02.15.001-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmea := Tlmea.Create(pCargaFrame);
  try
    lmea.ShowModal;
    Result := lmea.framea.vretorno;
  finally
    lmea.Free;
  end;
end;

exports formu;

end.
