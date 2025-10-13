unit ultfn;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratfn, Vcl.ComCtrls;

type
  Tltfn = class(Tlfrmbase)
    fratfn: Tfratfn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltfn: Tltfn;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  ltfn := Tltfn.create(AOwner);
  ltfn.fratfn.zcone := conexao;
  ltfn.fratfn.vusrcodigo := vusuario;
  ltfn.fratfn.modulo := vmodulo;
  lfram := ltfn.FindComponent('fratfn') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  ltfn.ShowModal;
  vch := ltfn.fratfn.vretorno;
  result := vch;
  freeandnil(ltfn);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfratfn;
  i: integer;
  ver: string;
begin
  try
    ltfn := Tltfn.create(AOwner);
    lfram := ltfn.FindComponent('fratfn') as Tfratfn;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(ltfn);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
