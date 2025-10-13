unit ulata;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraata, Vcl.ComCtrls;

type
  Tlata = class(Tlfrmbase)
    fraata: Tfraata;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lata: Tlata;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lata := Tlata.create(AOwner);
  lata.fraata.zcone := conexao;

  lata.fraata.vusrcodigo := vusuario;
  lata.fraata.modulo := vmodulo;
  lfram := lata.FindComponent('fraata') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lata.ShowModal;
  vch := lata.fraata.vretorno;
  result := vch;
  freeandnil(lata);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfraata;
  i: integer;
  ver: string;
begin
  try
    lata := Tlata.create(AOwner);
    lfram := lata.FindComponent('fraata') as Tfraata;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lata);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
