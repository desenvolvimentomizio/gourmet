unit ulfcf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, uni,
  Vcl.ExtCtrls, ufrabase, ufrafcf, Vcl.ComCtrls, Vcl.ActnList;

type
  Tlfcf = class(Tlfrmbase)
    frafcf: Tfrafcf;
  private
  public
    { Public declarations }
  end;

var
  lfcf: Tlfcf;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lfcf := Tlfcf.create(AOwner);
  lfcf.frafcf.IdModulo := vPlIdMd;
  lfcf.frafcf.titulo := vPlTitMdl;
  lfcf.frafcf.zcone := conexao;
  lfcf.frafcf.vusrcodigo := vusuario;
  lfcf.frafcf.modulo := vmodulo;
  lfram := lfcf.FindComponent('frafcf') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lfcf.ShowModal;
  vch := lfcf.frafcf.vretorno;
  result := vch;
  freeandnil(lfcf);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfrafcf;
  i: integer;
  ver: string;
begin
  try
    lfcf := Tlfcf.create(AOwner);
    lfram := lfcf.FindComponent('frafcf') as Tfrafcf;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lfcf);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
