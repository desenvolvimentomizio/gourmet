unit ulsdp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrasdp, Vcl.ComCtrls;

type
  Tlsdp = class(Tlfrmbase)
    frasdp: Tfrasdp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsdp: Tlsdp;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lsdp := Tlsdp.create(AOwner);
  lsdp.frasdp.IdModulo := vPlIdMd;
  lsdp.frasdp.titulo := vPlTitMdl;
  lsdp.frasdp.zcone := conexao;
  lsdp.frasdp.vusrcodigo := vusuario;
  lsdp.frasdp.modulo := vmodulo;
  lfram := lsdp.FindComponent('frasdp') as Tfrabase;

  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;

  lfram.carregar;
  lsdp.ShowModal;
  vch := lsdp.frasdp.vretorno;
  result := vch;
  freeandnil(lsdp);
end;

exports formu;

end.
