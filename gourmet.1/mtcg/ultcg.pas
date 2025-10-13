unit ultcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,uPegaBase, ufrabase, ufratcg;

type
  Tltcg = class(Tlfrmbase)
    fratcg: Tfratcg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltcg: Tltcg;

  // Início ID do Módulo fracli
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'NCMs da IBPT';

  // Fim ID do Módulo fracli

implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcg := Tltcg.Create(pCargaFrame);
  try
    ltcg.ShowModal;
    Result := ltcg.fratcg.vretorno;
  finally
    ltcg.Free;
  end;
end;

exports formu;


end.
