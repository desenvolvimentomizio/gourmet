unit ultpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratpr,uPegaBase;

type
  Tltpr = class(Tlfrmbase)
    fratpr: Tfratpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltpr: Tltpr;

 // Início ID do Módulo ltpr
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo ltpr


implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltpr := Tltpr.Create(pCargaFrame);
  try
    ltpr.ShowModal;
    Result := ltpr.fratpr.vretorno;
  finally
    ltpr.Free;
  end;
end;

exports formu;


end.
