unit ulmcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, uframcg,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlmcg = class(Tlfrmbase)
    framcg: Tframcg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmcg: Tlmcg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
var
  vlFiltro: string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  vlFiltro := pCargaFrame.Filtro;

  lmcg := Tlmcg.Create(pCargaFrame);
  try
    if pos('#', vlFiltro) > 0 then
    begin
      lmcg.framcg.TxtFiltro := copy(vlFiltro, 1, pos('#', vlFiltro) - 1);
      lmcg.framcg.vpRfiChave := trim(copy(vlFiltro, pos('#', vlFiltro) + 1, 10));
    end;
    lmcg.ShowModal;
    Result := lmcg.framcg.vretorno;
  finally
    lmcg.Free;
  end;
end;

exports formu;

end.
