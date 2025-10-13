unit ulgdp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufragdp, Vcl.ComCtrls;

type
  Tlgdp = class(Tlfrmbase)
    fragdp: Tfragdp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgdp: Tlgdp;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lgdp := Tlgdp.create(AOwner);
  lgdp.fragdp.IdModulo := vPlIdMd;
  lgdp.fragdp.titulo := vPlTitMdl;
  lgdp.fragdp.zcone := conexao;
  lgdp.fragdp.vusrcodigo := vusuario;
  lgdp.fragdp.modulo := vmodulo;
  lfram := lgdp.FindComponent('fragdp') as Tfrabase;

  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;

  lfram.carregar;
  lgdp.ShowModal;
  vch := lgdp.fragdp.vretorno;
  result := vch;
  freeandnil(lgdp);
end;

exports formu;

end.
