unit uldcp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
     
  Vcl.ExtCtrls, ufrabase, ufradcp;

type
  Tldcp = class(Tlfrmbase)
    fradcp: Tfradcp;
  private
  public
    { Public declarations }
  end;

var
  ldcp: Tldcp;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  ldcp := Tldcp.create(AOwner);
  ldcp.fradcp.IdModulo := vPlIdMd;
  ldcp.fradcp.titulo := vPlTitMdl;
  ldcp.fradcp.zcone := conexao;
  ldcp.fradcp.vusrcodigo := vusuario;
  ldcp.fradcp.modulo := vmodulo;
  lfram := ldcp.FindComponent('fradcp') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  ldcp.ShowModal;
  vch := ldcp.fradcp.vretorno;
  result := vch;
  freeandnil(ldcp);
end;

exports formu;

end.
