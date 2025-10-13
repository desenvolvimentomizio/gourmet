unit ulffi;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,    
  Vcl.ExtCtrls, ufrabase, ufraffi;

type
  Tlffi = class(Tlfrmbase)
    fraffi: Tfraffi;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lffi: Tlffi;

implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfraffi;
  i: integer;
begin
  try
    lffi := Tlffi.create(AOwner);
    lfram := lffi.FindComponent('fraffi') as Tfraffi;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lffi);
  end;
  end;
function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfrabase;
  vch: string;
  hWindow: HWND;
begin
  hWindow := FindWindow(pchar('Tlffi'), nil);
  if hWindow = 0 then
  begin
    lffi := Tlffi.create(AOwner);
    lffi.fraffi.zcone := conexao;
    lffi.fraffi.vusrcodigo := vusuario;
    lffi.fraffi.modulo := vmodulo;
    lfram := lffi.FindComponent('fraffi') as Tfrabase;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag:=1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    lffi.ShowModal;
    vch := lffi.fraffi.vretorno;
    result := vch;

    freeandnil(lffi);
    end
  else
  begin
    SetActiveWindow(hWindow);
  end;
end;
exports formu,defineacesso;
end.
