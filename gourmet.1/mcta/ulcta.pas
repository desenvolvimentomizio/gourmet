unit ulcta;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracta, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcta = class(Tlfrmbase)
    fracta: Tfracta;
  private
  public
    { Public declarations }
  end;

var
  lcta: Tlcta;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  // Somente "pesquisa" para não permitir manutenção das contas.
 // pCargaFrame.ModoCarga := modoPesquisa;

  lcta := Tlcta.Create(pCargaFrame);
  try
    Result := '';
    if lcta.ShowModal = mrOk then
      Result := lcta.fracta.vretorno;
  finally
    lcta.Free;
  end;
end;

exports formu;

end.
