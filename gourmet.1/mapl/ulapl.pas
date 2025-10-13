unit ulapl;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraapl,Vcl.ComCtrls;

type
  Tlapl = class(Tlfrmbase)
    fraapl: Tfraapl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lapl: Tlapl;

implementation

{$R *.dfm}


function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  lfram: Tfrabase;
  vch: string;
begin
  lapl := Tlapl.create(AOwner);
  lapl.fraapl.zcone := conexao;
  lapl.fraapl.vusrcodigo := vusuario;
  lapl.fraapl.modulo := vmodulo;
  lfram := lapl.FindComponent('fraapl') as Tfrabase;
  if vtipolista = 1 then
  begin
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := true;
  end;
  lfram.carregar;
  lapl.ShowModal;
  vch := lapl.fraapl.vretorno;
  result := vch;
  freeandnil(lapl);
end;

function formutab(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  lfram: Tfraapl;
  vch: string;
  wnd: HWND;
  prc: HWND;
begin
  wnd := 0;

  try
    lapl := Tlapl.create(AOwner);
    lapl.fraapl.vusrcodigo := vusuario;
    lapl.BorderStyle := bsnone;
    lapl.t := tab;
    lapl.fraapl.modulo := vmodulo;
    lapl.fraapl.zcone := conexao;
    lapl.Name := 'lapl';
    lfram := lapl.FindComponent('fraapl') as Tfraapl;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    wnd := Findwindow('Tlapl', nil);
    Winapi.Windows.setparent(wnd, tab.Handle);
    lapl.Show;
  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfraapl;
  i: integer;
begin
  try
    lapl := Tlapl.create(AOwner);
    lfram := lapl.FindComponent('fraapl') as Tfraapl;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(lapl);
  end;
end;


function retornaversao(AOwner: TComponent; conexao: tuniconnection):string;
var
  lfram: Tfraapl;
  i: integer;
  ver:string;
begin
  try
    lapl := Tlapl.create(AOwner);
    lfram := lapl.FindComponent('fraapl') as Tfraapl;
    lfram.zcone:=conexao;
    ver:= lfram.plid.caption+'!'+ lfram.retornaversao;
  finally
    freeandnil(lapl);
  end;
    result:=ver;
end;

exports formu, formutab, defineacesso,retornaversao;



end.
