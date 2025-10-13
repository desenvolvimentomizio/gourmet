unit ulefl;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,     
  Vcl.ExtCtrls, ufrabase, ufraefl;

type
  Tlefl = class(Tlfrmbase)
    fraefl: Tfraefl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lefl: Tlefl;

implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfraefl;
  i: integer;
begin
  try
    lefl := Tlefl.create(AOwner);
    lfram := lefl.FindComponent('fraefl') as Tfraefl;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lefl);
  end;
  end;
function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
    lefl := Tlefl.create(AOwner);
    lefl.fraefl.zcone := conexao;
    lefl.fraefl.vusrcodigo := vusuario;
    lefl.fraefl.modulo := vmodulo;
    lfram := lefl.FindComponent('fraefl') as Tfrabase;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag:=1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    lefl.ShowModal;
    vch := lefl.fraefl.vretorno;
    result := vch;
    freeandnil(lefl);
end;
exports formu,defineacesso;
end.
