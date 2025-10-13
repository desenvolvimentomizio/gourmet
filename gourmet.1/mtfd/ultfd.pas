unit ultfd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase,     ufratfd;

type
  Tltfd = class(Tlfrmbase)
    fratfd: Tfratfd;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltfd: Tltfd;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  ltfd := Tltfd.create(AOwner);
  ltfd.fratfd.zcone := conexao;
  ltfd.fratfd.vusrcodigo := vusuario;
  ltfd.fratfd.modulo := vmodulo;
  lfram := ltfd.FindComponent('fratfd') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  ltfd.ShowModal;
  vch := ltfd.fratfd.vretorno;
  result := vch;
  freeandnil(ltfd);
end;

exports formu;

end.
