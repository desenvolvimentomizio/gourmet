unit uletc;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,    vcl.Comctrls,
  Vcl.ExtCtrls, ufrabase, ufraetc;

type
  Tletc = class(Tlfrmbase)
    fraetc: Tfraetc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  letc: Tletc;

implementation

{$R *.dfm}
 function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string;
  vfiltro: string; vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  letc := Tletc.create(AOwner);
  letc.fraetc.zcone := conexao;
  letc.fraetc.vusrcodigo := vusuario;
  letc.fraetc.modulo := vmodulo;
  lfram := letc.FindComponent('fraetc') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  letc.ShowModal;
  vch := letc.fraetc.vretorno;
  result := vch;
  freeandnil(letc);
end;

function formutab(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string;
  vfiltro: string; vmodo: string; tab: TTabSheet): string;
var
  lfram: Tfraetc;
  vch: string;
  wnd: HWND;
  prc: HWND;
begin
  wnd := 0;

  try
    letc := Tletc.create(AOwner);
    letc.fraetc.vusrcodigo := vusuario;
    letc.BorderStyle := bsnone;
    letc.t := tab;
    letc.fraetc.modulo := vmodulo;
    letc.fraetc.zcone := conexao;
    letc.Name := 'letc';
    lfram := letc.FindComponent('fraetc') as Tfraetc;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    wnd := Findwindow('Tletc', nil);
    tab.Hint:=inttostr(wnd);
    Winapi.Windows.setparent(wnd, tab.Handle);
    letc.Show;
  finally
  end;
end;

exports formu, formutab;
end.
