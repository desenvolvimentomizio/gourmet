unit ulbtm;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrabtm, Uni, uPegaBase;

type
  Tlbtm = class(Tlfrmbase)
    frabtm: Tfrabtm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbtm: Tlbtm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbtm := Tlbtm.Create(pCargaFrame);
  try
    if pCargaFrame.Filtro<>'' then
    lbtm.frabtm.TxtFiltroSQL:=pCargaFrame.Filtro;

    lbtm.ShowModal;
    Result := lbtm.frabtm.vretorno;
  finally
    lbtm.Free;
  end;
end;

exports formu;

end.
