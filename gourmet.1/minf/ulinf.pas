unit ulinf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPegaBase, ulfrmbase, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrainf;

type
  Tlinf = class(Tlfrmbase)
    frainf: Tfrainf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  linf: Tlinf;
// Início ID do Módulo fracli
const
  vPlIdMd = '01.01.01.001-05';
  vPlTitMdl = 'Informações de Clientes';

  // Fim ID do Módulo fracli

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  linf := Tlinf.Create(pCargaFrame);
  try
    linf.ShowModal;
    Result := linf.frainf.vretorno;
  finally
    linf.Free;
  end;
end;

exports formu;

end.
