unit ulflh;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraflh, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlflh = class(Tlfrmbase)
    fraflh: Tfraflh;
  private
  public
    { Public declarations }
  end;

var
  lflh: Tlflh;

const
  vplidmd = '02.02.16.005-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  // Somente "pesquisa" para não permitir manutenção das Folhas.
  pCargaFrame.ModoCarga := modoPesquisa;
  lflh := Tlflh.Create(pCargaFrame);

  try
    lflh.ShowModal;
    Result := lflh.fraflh.vretorno;
  finally
    lflh.Free;
  end;
end;

exports formu;

end.
