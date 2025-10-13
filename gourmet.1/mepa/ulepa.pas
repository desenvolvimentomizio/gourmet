unit ulepa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,   
   Vcl.ComCtrls,
  Vcl.ExtCtrls, ufrabase, ufraepa;

type
  Tlepa = class(Tlfrmbase)
    fraepa: Tfraepa;
  private
  public
    { Public declarations }
  end;

var
  lepa: Tlepa;

constvplidmd='01.01.01.008-03';implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfraepa;
  i: integer;
begin
  try
    lepa := Tlepa.create(AOwner);
    lfram := lepa.FindComponent('fraepa') as Tfraepa;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lepa);
  end;
  end;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;
  vfiltro: string; vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lepa := Tlepa.create(AOwner);
  lepa.fraepa.zcone := conexao;
  lepa.fraepa.vusrcodigo := vusuario;
  lepa.fraepa.modulo := vmodulo;
  lfram := lepa.FindComponent('fraepa') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lepa.ShowModal;
  vch := lepa.fraepa.vretorno;
  result := vch;
  freeandnil(lepa);
end;

function formutab(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; 
vmodulo: 
string;
  vfiltro: string; vmodo: string; tab: TTabSheet): string;
var
  lfram: Tfraepa;
  vch: string;
  wnd: HWND;
  prc: HWND;
begin
  wnd := 0;

  try
    lepa := Tlepa.create(AOwner);
    lepa.fraepa.vusrcodigo := vusuario;
    lepa.BorderStyle := bsnone;
    lepa.t := tab;
    lepa.fraepa.modulo := vmodulo;
    lepa.fraepa.zcone := conexao;
    lepa.Name := 'lepa';
    lfram := lepa.FindComponent('fraepa') as Tfraepa;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    wnd := Findwindow('Tlepa', nil);
    Winapi.Windows.setparent(wnd, tab.Handle);
    lepa.Show;
  finally
  end;
end;

exports formu, formutab,defineacesso;

end.
