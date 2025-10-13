unit ulvrb;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,   
  
  Vcl.ExtCtrls, ufrabase, ufravrb;

type
  Tlvrb = class(Tlfrmbase)
    fravrb: Tfravrb;
  private
  public
    { Public declarations }
  end;

var
  lvrb: Tlvrb;

constvplidmd='02.02.16.013-03';implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfravrb;
  i: integer;
begin
  try
    lvrb := Tlvrb.create(AOwner);
    lfram := lvrb.FindComponent('fravrb') as Tfravrb;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lvrb);
  end;
  end;
function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
    lvrb := Tlvrb.create(AOwner);
    lvrb.fravrb.zcone := conexao;
    lvrb.fravrb.vusrcodigo := vusuario;
    lvrb.fravrb.modulo := vmodulo;
    lfram := lvrb.FindComponent('fravrb') as Tfrabase;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag:=1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    lvrb.ShowModal;
    vch := lvrb.fravrb.vretorno;
    result := vch;
    freeandnil(lvrb);
end;
exports formu,defineacesso;

end.
