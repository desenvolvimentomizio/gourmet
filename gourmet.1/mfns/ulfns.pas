unit ulfns;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrafns, Vcl.ComCtrls;

type
  Tlfns = class(Tlfrmbase)
    frafns: Tfrafns;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfns: Tlfns;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lfns := Tlfns.create(AOwner);
  lfns.frafns.titulo := vPlTitMdl;
  lfns.frafns.zcone := conexao;
  lfns.frafns.vusrcodigo := vusuario;
  lfns.frafns.txtfiltro := vfiltro;

  if lfns.frafns.txtfiltro <> '' then
  begin
    lfns.frafns.vChaveMestre := trim(copy(lfns.frafns.txtfiltro, pos('=', lfns.frafns.txtfiltro) + 1, 20));
  end;

  lfns.frafns.modulo := vmodulo;
  lfram := lfns.FindComponent('frafns') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lfns.ShowModal;
  vch := lfns.frafns.vretorno;
  result := vch;
  freeandnil(lfns);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfrafns;
  i: integer;
  ver: string;
begin
  try
    lfns := Tlfns.create(AOwner);
    lfram := lfns.FindComponent('frafns') as Tfrafns;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lfns);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
