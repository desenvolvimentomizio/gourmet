unit ulfnv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrafnv, Vcl.ComCtrls;

type
  Tlfnv = class(Tlfrmbase)
    frafnv: Tfrafnv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfnv: Tlfnv;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lfnv := Tlfnv.create(AOwner);
  lfnv.frafnv.zcone := conexao;
  lfnv.frafnv.txtfiltro := vfiltro;

  if lfnv.frafnv.txtfiltro <> '' then
  begin
    lfnv.frafnv.vChaveMestre := trim(copy(lfnv.frafnv.txtfiltro, pos('=', lfnv.frafnv.txtfiltro) + 1, 20));
  end;

  lfnv.frafnv.vusrcodigo := vusuario;
  lfnv.frafnv.modulo := vmodulo;
  lfram := lfnv.FindComponent('frafnv') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lfnv.ShowModal;
  vch := lfnv.frafnv.vretorno;
  result := vch;
  freeandnil(lfnv);
end;

function retornaversao(AOwner: TComponent; conexao: tuniconnection): string;
var
  lfram: Tfrafnv;
  i: integer;
  ver: string;
begin
  try
    lfnv := Tlfnv.create(AOwner);
    lfram := lfnv.FindComponent('frafnv') as Tfrafnv;
    lfram.zcone := conexao;
    ver := lfram.plid.caption + '!' + lfram.retornaversao;
  finally
    freeandnil(lfnv);
  end;
  result := ver;
end;

exports formu, retornaversao;

end.
