unit ulgcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufragcc,uni;

type
  Tlgcc = class(Tlfrmbase)
    fragcc: Tfragcc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgcc: Tlgcc;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo:

  string; vfiltro: string; vmodo: string): string;
var
  lfram: Tfragcc;
  vch: string;
begin
  lgcc := Tlgcc.create(AOwner);
  lgcc.fragcc.IdModulo := vPlIdMd;
  lgcc.fragcc.titulo := vPlTitMdl;
  lgcc.fragcc.zcone := conexao;
  lgcc.fragcc.vusrcodigo := vusuario;
  lgcc.fragcc.modulo := vmodulo;
  lfram := lgcc.FindComponent('fragcc') as Tfragcc;

  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lgcc.ShowModal;
  vch := lgcc.fragcc.vretorno;
  result := vch;
  freeandnil(lgcc);
end;
exports formu;


end.
