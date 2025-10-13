unit ulcfp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,     ufrabase, ufracfp,
  Vcl.ComCtrls;

type
  Tlcfp = class(Tlfrmbase)
    fracfp: Tfracfp;
  private
  public
    { Public declarations }
  end;

var
  lcfp: Tlcfp;

implementation

{$R *.dfm}
function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfracfp;
  vch: string;
begin
  try
    lcfp := Tlcfp.create(AOwner);
    lcfp.fracfp.IdModulo := vplidmd;
    lcfp.fracfp.titulo := vPlTitMdl;
    lcfp.fracfp.vusrcodigo := vusuario;
    lcfp.fracfp.modulo := vmodulo;
    lcfp.fracfp.zcone := conexao;
    lfram := lcfp.FindComponent('fracfp') as Tfracfp;

    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;

    lfram.carregar;

    lcfp.ShowModal;
    vch := lcfp.fracfp.vretorno;
    result := vch;
  finally
    freeandnil(lcfp);
  end;

end;

exports formu;

end.
