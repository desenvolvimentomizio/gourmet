unit ulgsb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufragsb,Uni;

type
  Tlgsb = class(Tlfrmbase)
    fragsb: Tfragsb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgsb: Tlgsb;
  // Início ID do Módulo lgsb
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lgsb

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfragsb;
  vch: string;
begin
  try
    lgsb := Tlgsb.create(AOwner);
    lgsb.fragsb.IdModulo := vPlIdMd;
    lgsb.fragsb.titulo := vPlTitMdl;
    lgsb.fragsb.vusrcodigo := vusuario;
    lgsb.fragsb.modulo := vmodulo;
    lgsb.fragsb.zcone := conexao;
    lfram := lgsb.FindComponent('fragsb') as Tfragsb;
    lfram.carregar;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lgsb.ShowModal;
    vch := lgsb.fragsb.vretorno;
    result := vch;
  finally
    freeandnil(lgsb);
  end;

end;

exports formu;

end.
