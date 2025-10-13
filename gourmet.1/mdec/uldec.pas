unit uldec;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufradec,     Vcl.ComCtrls;

type
  Tldec = class(Tlfrmbase)
    fradec: Tfradec;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldec: Tldec;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  try
    ldec := Tldec.create(AOwner);
    ldec.fradec.IdModulo := vPlIdMd;
    ldec.fradec.titulo := vPlTitMdl;
    ldec.fradec.vusrcodigo := vusuario;
    ldec.fradec.modulo := vmodulo;
    ldec.fradec.zcone := conexao;
    lfram := ldec.FindComponent('fradec') as Tfradec;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    ldec.ShowModal;
    vch := ldec.fradec.vretorno;
    result := vch;
  finally
    freeandnil(ldec);
  end;
end;

exports formu;

end.
