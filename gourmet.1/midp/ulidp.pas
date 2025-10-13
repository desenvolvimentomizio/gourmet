unit ulidp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraidp, Vcl.ComCtrls, uni;

type
  Tlidp = class(Tlfrmbase)
    fraidp: Tfraidp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lidp: Tlidp;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lidp := Tlidp.create(AOwner);
  lidp.fraidp.zcone := conexao;
  lidp.fraidp.vusrcodigo := vusuario;
  lidp.fraidp.modulo := vmodulo;
  lfram := lidp.FindComponent('fraidp') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lidp.ShowModal;
  vch := lidp.fraidp.vretorno;
  result := vch;
  freeandnil(lidp);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfraidp;
  i: integer;
  ver: string;
begin
  try
    lidp := Tlidp.create(AOwner);
    lfram := lidp.FindComponent('fraidp') as Tfraidp;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lidp);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
