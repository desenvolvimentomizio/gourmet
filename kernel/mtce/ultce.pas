unit ultce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratce, uPegaBase;

type
  Tltce = class(Tlfrmbase)
    fratce: Tfratce;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltce: Tltce;


  // Início ID do Módulo fratce
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'CESTs';

  // Fim ID do Módulo fratce

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltce := Tltce.Create(pCargaFrame);
  try
    ltce.ShowModal;
    Result := ltce.fratce.vretorno;
  finally
    ltce.Free;
  end;
end;

exports formu;

end.
