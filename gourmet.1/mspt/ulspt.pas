unit ulspt;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraspt, Vcl.ComCtrls;

type
  Tlspt = class(Tlfrmbase)
    fraspt: Tfraspt;
  private
  public
    { Public declarations }
  end;

var
  lspt: Tlspt;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lspt := Tlspt.create(AOwner);
  lspt.fraspt.IdModulo := vPlIdMd;
  lspt.fraspt.titulo := vPlTitMdl;
  lspt.fraspt.zcone := conexao;
  lspt.fraspt.vusrcodigo := vusuario;
  lspt.fraspt.modulo := vmodulo;
  lfram := lspt.FindComponent('fraspt') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lspt.ShowModal;
  vch := lspt.fraspt.vretorno;
  result := vch;
  freeandnil(lspt);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfraspt;
  i: integer;
  ver: string;
begin
  try
    lspt := Tlspt.create(AOwner);
    lfram := lspt.FindComponent('fraspt') as Tfraspt;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lspt);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
