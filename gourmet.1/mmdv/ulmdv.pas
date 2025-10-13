unit ulmdv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, uframdv, Vcl.ComCtrls;

type
  Tlmdv = class(Tlfrmbase)
    framdv: Tframdv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmdv: Tlmdv;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lmdv := Tlmdv.create(AOwner);
  lmdv.framdv.zcone := conexao;
  lmdv.framdv.vusrcodigo := vusuario;

  lmdv.framdv.txtfiltro := vfiltro;

  if lmdv.framdv.txtfiltro <> '' then
  begin
    lmdv.framdv.vChaveMestre := trim(copy(lmdv.framdv.txtfiltro, pos('=', lmdv.framdv.txtfiltro) + 1, 20));
  end;

  lmdv.framdv.modulo := vmodulo;
  lfram := lmdv.FindComponent('framdv') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lmdv.ShowModal;
  vch := lmdv.framdv.vretorno;
  result := vch;
  freeandnil(lmdv);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tframdv;
  i: integer;
  ver: string;
begin
  try
    lmdv := Tlmdv.create(AOwner);
    lfram := lmdv.FindComponent('framdv') as Tframdv;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lmdv);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
