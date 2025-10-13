unit ulidc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraidc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlidc = class(Tlfrmbase)
    fraidc: Tfraidc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lidc: Tlidc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lidc := Tlidc.Create(pCargaFrame);
  try
    lidc.ShowModal;

    // Result := lidc.fraidc.vretorno; ajuste daniel 06/08/2025 para trazer
       Result := lidc.fraidc.uqtabelaidccodigo.AsString;

  finally
    lidc.Free;
  end;
end;

exports formu;

end.
