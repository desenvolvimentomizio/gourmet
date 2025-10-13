unit ulgri;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragri, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlgri = class(Tlfrmbase)
    fragri: Tfragri;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgri: Tlgri;

  // Início ID do Módulo lgri
const
  vPlIdMd = '00.00.00.001-01';


  // Fim ID do Módulo lgri

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgri := Tlgri.Create(pCargaFrame);
  try
    lgri.ShowModal;
    Result := lgri.fragri.vretorno;
  finally
    lgri.Free;
  end;
end;

exports formu;

end.
