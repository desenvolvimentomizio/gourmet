unit ulspr;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraspr, Vcl.ComCtrls;

type
  Tlspr = class(Tlfrmbase)
    fraspr: Tfraspr;
    // procedure frasprActRelatoriosExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  lspr: Tlspr;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lspr := Tlspr.create(AOwner);
  lspr.fraspr.IdModulo := vPlIdMd;
  lspr.fraspr.titulo := vPlTitMdl;
  lspr.fraspr.zcone := conexao;
  lspr.fraspr.vusrcodigo := vusuario;
  lspr.fraspr.modulo := vmodulo;
  lfram := lspr.FindComponent('fraspr') as Tfrabase;

  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;

  lfram.carregar;
  lspr.ShowModal;
  vch := lspr.fraspr.vretorno;
  result := vch;
  freeandnil(lspr);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfraspr;
  i: integer;
  ver: string;
begin
  try
    lspr := Tlspr.create(AOwner);
    lfram := lspr.FindComponent('fraspr') as Tfraspr;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lspr);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
