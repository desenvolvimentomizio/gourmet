unit ulmda;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, uframda, Vcl.ComCtrls;

type
  Tlmda = class(Tlfrmbase)
    framda: Tframda;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmda: Tlmda;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lmda := Tlmda.create(AOwner);
  lmda.framda.zcone := conexao;
  lmda.framda.vusrcodigo := vusuario;
  lmda.framda.modulo := vmodulo;
  lfram := lmda.FindComponent('framda') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lmda.ShowModal;
  vch := lmda.framda.vretorno;
  result := vch;
  freeandnil(lmda);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tframda;
  i: integer;
  ver: string;
begin
  try
    lmda := Tlmda.create(AOwner);
    lfram := lmda.FindComponent('framda') as Tframda;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lmda);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
