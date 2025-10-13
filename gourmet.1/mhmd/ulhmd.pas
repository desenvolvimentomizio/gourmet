unit ulhmd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrahmd, Vcl.ComCtrls;

type
  Tlhmd = class(Tlfrmbase)
    frahmd: Tfrahmd;
  private
  public
    { Public declarations }
  end;

var
  lhmd: Tlhmd;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lhmd := Tlhmd.create(AOwner);
  lhmd.frahmd.IdModulo := vPlIdMd;
  lhmd.frahmd.titulo := vPlTitMdl;
  lhmd.frahmd.zcone := conexao;
  lhmd.frahmd.vusrcodigo := vusuario;
  lhmd.frahmd.modulo := vmodulo;

  if vfiltro <> '' then
  begin
    lhmd.frahmd.uqtabela.Filter := vfiltro;
    lhmd.frahmd.uqtabela.Filtered := true;
  end;

  lfram := lhmd.FindComponent('frahmd') as Tfrabase;

  if vtipolista = 1 then
  begin
    lfram.txtfiltro := trim(vfiltro);
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;

  lfram.carregar;
  lhmd.ShowModal;
  vch := lhmd.frahmd.vretorno;
  result := vch;
  freeandnil(lhmd);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfrahmd;
  i: integer;
  ver: string;
begin
  try
    lhmd := Tlhmd.create(AOwner);
    lfram := lhmd.FindComponent('frahmd') as Tfrahmd;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lhmd);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
