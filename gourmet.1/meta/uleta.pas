unit uleta;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraeta, Vcl.ComCtrls;

type
  Tleta = class(Tlfrmbase)
    fraeta: Tfraeta;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  leta: Tleta;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  leta := Tleta.create(AOwner);
  leta.fraeta.zcone := conexao;
  leta.fraeta.vusrcodigo := vusuario;
  leta.fraeta.modulo := vmodulo;
  lfram := leta.FindComponent('fraeta') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  leta.ShowModal;
  vch := leta.fraeta.vretorno;
  result := vch;
  freeandnil(leta);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfraeta;
  i: integer;
  ver: string;
begin
  try
    leta := Tleta.create(AOwner);
    lfram := leta.FindComponent('fraeta') as Tfraeta;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(leta);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
