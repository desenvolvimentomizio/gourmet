unit ulttc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrattc,uPegaBase;

type
  Tlttc = class(Tlfrmbase)
    frattc: Tfrattc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lttc: Tlttc;

 // Início ID do Módulo lttc
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo lttc


implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lttc := Tlttc.Create(pCargaFrame);
  try
    lttc.ShowModal;
    Result := lttc.frattc.vretorno;
  finally
    lttc.Free;
  end;
end;

exports formu;

end.
