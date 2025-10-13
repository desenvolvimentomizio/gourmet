unit ultoc;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
      Vcl.ExtCtrls, ufrabase, ufratoc;

type
  Tltoc = class(Tlfrmbase)
    fratoc: Tfratoc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltoc: Tltoc;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  ltoc := Tltoc.create(AOwner);
  ltoc.fratoc.zcone := conexao;
  ltoc.fratoc.vusrcodigo := vusuario;
  ltoc.fratoc.modulo := vmodulo;
  lfram := ltoc.FindComponent('fratoc') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  ltoc.ShowModal;
  vch := ltoc.fratoc.vretorno;
  result := vch;
  freeandnil(ltoc);
end;

exports formu;

end.
