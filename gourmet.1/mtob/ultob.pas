unit ultob;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
      Vcl.ExtCtrls, ufrabase, ufratob;

type
  Tltob = class(Tlfrmbase)
    fratob: Tfratob;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltob: Tltob;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
  hWindow: HWND;
begin

  hWindow := FindWindow(pchar('Tltob'), nil);

  ltob := Tltob.create(AOwner);
  ltob.fratob.IdModulo := vPlIdMd;
  ltob.fratob.titulo := vPlTitMdl;
  ltob.fratob.zcone := conexao;
  ltob.fratob.vusrcodigo := vusuario;

  if vmodulo = '' then
  begin
    ltob.fratob.modulo := 'Financeiro';
  end
  else
  begin
    ltob.fratob.modulo := vmodulo;
  end;

  lfram := ltob.FindComponent('fratob') as Tfratob;

  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;

  lfram.carregar;
  ltob.ShowModal;
  vch := ltob.fratob.vretorno;
  result := vch;
  freeandnil(ltob);
end;

exports formu;

end.
