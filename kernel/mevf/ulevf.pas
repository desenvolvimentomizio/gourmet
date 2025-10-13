unit ulevf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraevf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlevf = class(Tlfrmbase)
    fraevf: Tfraevf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  levf: Tlevf;

  // Início ID do Módulo fraevf
const
  vPlIdMd = '01.12.91.001-01';
  vPlTitMdl = 'Eventos da Folhas Gerenciais';

  // Fim ID do Módulo fraevf

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  levf := Tlevf.Create(pCargaFrame);

  if pCargaFrame.Filtro <> '' then
  begin
    levf.fraevf.TxtFiltroSQL := pCargaFrame.Filtro;
    levf.fraevf.ActAtualizar.Execute;
  end;

  try
    levf.ShowModal;
    Result := levf.fraevf.vretorno;
  finally
    levf.Free;
  end;
end;

exports formu;

end.
