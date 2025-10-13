unit ultbf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratbf,uni;

type
  Tltbf = class(Tlfrmbase)
    fratbf: Tfratbf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltbf: Tltbf;

implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfratbf;
  i: integer;
begin
  try
    ltbf := Tltbf.create(AOwner);
    lfram := ltbf.FindComponent('fratbf') as Tfratbf;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(ltbf);
  end;
  end;
 function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
    ltbf := Tltbf.create(AOwner);
    ltbf.fratbf.zcone := conexao;
    ltbf.fratbf.vusrcodigo := vusuario;
    ltbf.fratbf.modulo := vmodulo;
    lfram := ltbf.FindComponent('fratbf') as Tfrabase;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag:=1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    ltbf.ShowModal;
    vch := ltbf.fratbf.vretorno;
    result := vch;
    freeandnil(ltbf);
end;
exports formu,defineacesso;
end.
