unit ulcpa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, uni, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulrfi, ufrabase, ufrarfi, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tlcpa = class(Tlrfi)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcpa: Tlcpa;

implementation

{$R *.dfm}


procedure defineacessolcpa(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
var
  lfram: Tfrarfi;
  i: integer;
begin
  try
    lcpa := Tlcpa.create(AOwner);
    lfram := lcpa.FindComponent('fracpa') as Tfrarfi;
    lfram.zcone := conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lcpa);
  end;
end;

function formulcpa(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrarfi;
  vch: string;
  h: thandle;
begin
  try
    lcpa := Tlcpa.create(AOwner);
    lcpa.frarfi.vusrcodigo := vusuario;
    lcpa.frarfi.zcone := conexao;
    lfram := lcpa.FindComponent('fracpa') as Tfrarfi;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;

    lfram.carregar;
    lcpa.ShowModal;
    vch := lcpa.frarfi.vretorno;
    result := vch;
  finally
    freeandnil(lcpa);
  end;

end;

function formutablcpa(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  lfram: Tfrarfi;
  vch: string;
  wnd: HWND;
  prc: HWND;
begin
  wnd := 0;

  try
    lcpa := Tlcpa.create(AOwner);
    lcpa.frarfi.vusrcodigo := vusuario;
    lcpa.BorderStyle := bsnone;
    lcpa.t := tab;
    lcpa.frarfi.modulo := vmodulo;
    lcpa.frarfi.zcone := conexao;
    lcpa.Name := 'lcpa';
    lfram := lcpa.FindComponent('fracpa') as Tfrarfi;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    wnd := Findwindow('Tlcpa', nil);
    tab.Hint:=inttostr(wnd);
    Winapi.Windows.setparent(wnd, tab.Handle);

    lcpa.Show;

  finally
  end;

end;

exports formulcpa, formutablcpa, defineacessolcpa;


end.
