unit ulcoa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, 
    
  Vcl.ExtCtrls, ufrabase, ufracoa;

type
  Tlcoa = class(Tlfrmbase)
    fracoa: Tfracoa;
  private
  public
    { Public declarations }
  end;

var
  lcoa: Tlcoa;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string): string;
var
  lfram: Tfrabase;
  vch: string;
  hWindow: HWND;
begin

  hWindow := FindWindow(pchar('Tlcoa'), nil);

  lcoa := Tlcoa.create(AOwner);
  lcoa.fracoa.IdModulo := vPlIdMd;
  lcoa.fracoa.titulo := vPlTitMdl;
  lcoa.fracoa.zcone := conexao;
  lcoa.fracoa.vusrcodigo := vusuario;
  if vmodulo = '' then
  begin
    lcoa.fracoa.modulo := 'Financeiro';
  end
  else
  begin
    lcoa.fracoa.modulo := vmodulo;
  end;
  lfram := lcoa.FindComponent('fracoa') as Tfracoa;

  if vtipolista = 1 then
  begin
    lfram.txtfiltro := trim(vfiltro);
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lcoa.ShowModal;
  vch := lcoa.fracoa.vretorno;
  result := vch;
  freeandnil(lcoa);
end;

exports formu;

end.
