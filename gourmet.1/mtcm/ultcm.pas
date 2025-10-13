unit ultcm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,uPegaBase, ufrabase, ufratcm;

type
  Tltcm = class(Tlfrmbase)
    fratcm: Tfratcm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltcm: Tltcm;


 // Início ID do Módulo ltcm
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo ltcm

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcm := Tltcm.Create(pCargaFrame);
  try
    ltcm.ShowModal;
    Result := ltcm.fratcm.vretorno;
  finally
    ltcm.Free;
  end;
end;

exports formu;

end.
