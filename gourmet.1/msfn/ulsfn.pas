unit ulsfn;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasfn, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsfn = class(Tlfrmbase)
    frasfn: Tfrasfn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsfn: Tlsfn;

  // Início ID do Módulo lsfn
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lsfn

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsfn := Tlsfn.Create(pCargaFrame);
  try
    lsfn.ShowModal;
    Result := lsfn.frasfn.vretorno;
  finally
    lsfn.Free;
  end;
end;

exports formu;

end.
