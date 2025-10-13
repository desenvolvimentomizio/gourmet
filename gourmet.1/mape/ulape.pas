unit ulape;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraape, uni;

type
  Tlape = class(Tlfrmbase)
    fraape: Tfraape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lape: Tlape;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfraape;
  vch: string;
begin
  try
    lape := Tlape.Create(AOwner);
    lape.fraape.IdModulo := vplidmd;
    lape.fraape.titulo := vPlTitMdl;
    lape.fraape.vusrcodigo := vusuario;
    lape.fraape.modulo := vmodulo;
    lape.fraape.zcone := conexao;
    lfram := lape.FindComponent('fraape') as Tfraape;
    lfram.carregar;

    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;

    lape.ShowModal;
    vch := lape.fraape.vretorno;
    Result := vch;
  finally
    FreeAndNil(lape);
  end;

end;

exports formu;

end.
