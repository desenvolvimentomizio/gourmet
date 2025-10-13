// Classe de definição da lista de compras
unit ulcpr;

// Permite listar todas as compras registradas no sistema
interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracpr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  // Lista de compras
  Tlcpr = class(Tlfrmbase)
    fracpr: Tfracpr;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcpr: Tlcpr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcpr := Tlcpr.Create(pCargaFrame);
  try
    lcpr.ShowModal;
    Result := lcpr.fracpr.vretorno;
  finally
    lcpr.Free;
  end;
end;

// exporta a função formu para utilização da bpl por outros
exports formu;

end.
