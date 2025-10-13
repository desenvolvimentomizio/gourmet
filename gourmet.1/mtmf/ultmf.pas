unit ultmf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratmf, uni;

type
  Tltmf = class(Tlfrmbase)
    fratmf: Tfratmf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltmf: Tltmf;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
  hWindow: HWND;
begin

  hWindow := FindWindow(pchar('Tltmf'), nil);

  ltmf := Tltmf.create(AOwner);
  ltmf.fratmf.zcone := conexao;
  ltmf.fratmf.vusrcodigo := vusuario;
  if vmodulo = '' then
  begin
    ltmf.fratmf.modulo := 'Financeiro';
  end
  else
  begin
    ltmf.fratmf.modulo := vmodulo;
  end;
  lfram := ltmf.FindComponent('fratmf') as Tfratmf;

  if vtipolista = 1 then
  begin
    lfram.txtfiltro := trim(vfiltro);
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;

  ltmf.ShowModal;
  vch := ltmf.fratmf.vretorno;
  result := vch;
  freeandnil(ltmf);
end;

exports formu;

end.
