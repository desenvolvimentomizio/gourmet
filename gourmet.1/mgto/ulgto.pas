unit ulgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufragto,uni;

type
  Tlgto = class(Tlfrmbase)
    fragto: Tfragto;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgto: Tlgto;

  // Início ID do Módulo lgto
const
  vPlIdMd = '03.06.81.008-02';


  // Fim ID do Módulo lgto


implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfragto;
  vch: string;
begin
  try
    lgto := Tlgto.create(AOwner);
    lgto.fragto.IdModulo := vPlIdMd;
    lgto.fragto.titulo := vPlTitMdl;
    lgto.fragto.vusrcodigo := vusuario;
    lgto.fragto.modulo := vmodulo;
    lgto.fragto.zcone := conexao;
    lfram := lgto.FindComponent('fragto') as Tfragto;
    lfram.carregar;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lgto.ShowModal;
    vch := lgto.fragto.vretorno;
    result := vch;
  finally
    freeandnil(lgto);
  end;

end;

exports formu;


end.
