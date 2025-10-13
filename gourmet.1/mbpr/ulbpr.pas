unit ulbpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabpr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlbpr = class(Tlfrmbase)
    frabpr: Tfrabpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbpr: Tlbpr;

  // Início ID do Módulo lbpr
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lbpr

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbpr := Tlbpr.Create(pCargaFrame);
  try
    lbpr.ShowModal;
    Result := lbpr.frabpr.vretorno;
  finally
    lbpr.Free;
  end;
end;

exports formu;

end.
