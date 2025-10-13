unit uldtb;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants,
  System.Classes, Vcl.Graphics,     
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufradtb;

type
  Tldtb = class(Tlfrmbase)
    fradtb: Tfradtb;
  private
  public
    { Public declarations }
  end;

var
  ldtb: Tldtb;

constvplidmd='03.09.80.004-03';implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfradtb;
  i: integer;
begin
  try
    ldtb := Tldtb.create(AOwner);
    lfram := ldtb.FindComponent('fradtb') as Tfradtb;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(ldtb);
  end;
  end;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string;
  vtipolista: integer; vmodulo: string; vfiltro: string): string;
var
  lfram: Tfrabase;
  vch: string;
  hWindow: HWND;
begin

  hWindow := FindWindow(pchar('Tldtb'), nil);

  ldtb := Tldtb.create(AOwner);
  ldtb.fradtb.zcone := conexao;
  ldtb.fradtb.vusrcodigo := vusuario;
  if vmodulo = '' then
  begin
    ldtb.fradtb.modulo := 'Financeiro';
  end
  else
  begin
    ldtb.fradtb.modulo := vmodulo;
  end;
  lfram := ldtb.FindComponent('fradtb') as Tfradtb;

  if vtipolista = 1 then
  begin
    lfram.txtfiltro := trim(vfiltro);
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  ldtb.ShowModal;
  vch := ldtb.fradtb.vretorno;
  result := vch;
  freeandnil(ldtb);
end;
exports formu,defineacesso;

end.
