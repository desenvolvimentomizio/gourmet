unit ulbdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrabdc, uPegaBase;

type
  Tlbdc = class(Tlfrmbase)
    frabdc: Tfrabdc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbdc: Tlbdc;

  // Início ID do Módulo lbdc
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo lbdc


implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbdc := Tlbdc.Create(pCargaFrame);
  try
    lbdc.ShowModal;
    Result := lbdc.frabdc.vretorno;
  finally
    lbdc.Free;
  end;
end;

exports formu;


end.
