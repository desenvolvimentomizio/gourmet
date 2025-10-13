unit ultoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratoe, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils,
  uPegaBase;

type
  Tltoe = class(Tlfrmbase)
    fratoe: Tfratoe;
  private
  public
    { Public declarations }
  end;

var
  ltoe: Tltoe;

const
  vplidmd = '02.04.11.001-03';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltoe := Tltoe.Create(pCargaFrame);
  try

  ltoe.fratoe.TxtFiltro:= pCargaFrame.Filtro;
    ltoe.ShowModal;
    Result := ltoe.fratoe.vretorno;
  finally
    ltoe.Free;
  end;
end;

exports formu;

end.
