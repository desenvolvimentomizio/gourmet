unit ulsto;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,     
  Vcl.ExtCtrls, ufrabase, ufrasto;

type
  Tlsto = class(Tlfrmbase)
    frasto: Tfrasto;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsto: Tlsto;

implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfrasto;
  i: integer;
begin
  try
    lsto := Tlsto.create(AOwner);
    lfram := lsto.FindComponent('frasto') as Tfrasto;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lsto);
  end;
  end;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;
  vfiltro: string; vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lsto := Tlsto.create(AOwner);
  lsto.frasto.zcone := conexao;
  lsto.frasto.vusrcodigo := vusuario;
  lsto.frasto.modulo := vmodulo;
  lfram := lsto.FindComponent('frasto') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lsto.ShowModal;
  vch := lsto.frasto.vretorno;
  result := vch;
  freeandnil(lsto);
end;
exports formu,defineacesso;

end.
