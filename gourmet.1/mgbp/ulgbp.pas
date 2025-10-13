unit ulgbp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,  
  
  Vcl.ExtCtrls, ufrabase, ufragbp;

type
  Tlgbp = class(Tlfrmbase)
    fragbp: Tfragbp;
  private
  public
    { Public declarations }
  end;

var
  lgbp: Tlgbp;

constvplidmd='02.02.16.006-03';implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfragbp;
  i: integer;
begin
  try
    lgbp := Tlgbp.create(AOwner);
    lfram := lgbp.FindComponent('fragbp') as Tfragbp;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lgbp);
  end;
  end;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
    lgbp := Tlgbp.create(AOwner);
    lgbp.fragbp.zcone := conexao;
    lgbp.fragbp.vusrcodigo := vusuario;
    lgbp.fragbp.modulo := vmodulo;
    lfram := lgbp.FindComponent('fragbp') as Tfrabase;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag:=1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    lgbp.ShowModal;
    vch := lgbp.fragbp.vretorno;
    result := vch;
    freeandnil(lgbp);
end;
exports formu,defineacesso;

end.
