unit uldnr;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,    
  Vcl.ExtCtrls,Vcl.ComCtrls, ufrabase, ufradnr;

type
  Tldnr = class(Tlfrmbase)
    fradnr: Tfradnr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldnr: Tldnr;

implementation

{$R *.dfm}
procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu:string);
var
  lfram: Tfradnr;
  i: integer;
begin
  try
    ldnr := Tldnr.create(AOwner);
    lfram := ldnr.FindComponent('fradnr') as Tfradnr;
    lfram.zcone:=conexao;
    lfram.criaacoesdeacesso(vmodu);
  finally
    freeandnil(ldnr);
  end;
  end;


function formutab(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;
  vfiltro: string; vmodo: string; tab: TTabSheet): string;
var
  lfram: Tfradnr;
  vch: string;
  wnd: HWND;
  prc: HWND;
begin
  wnd := 0;

  try
    ldnr := Tldnr.create(AOwner);
    ldnr.fradnr.vusrcodigo := vusuario;
    ldnr.BorderStyle := bsnone;
    ldnr.t := tab;
    ldnr.fradnr.modulo := vmodulo;
    ldnr.fradnr.zcone := conexao;
    ldnr.Name:='ldnr';
    lfram := ldnr.FindComponent('fradnr') as Tfradnr;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;
    lfram.carregar;
    wnd := Findwindow('Tldnr', nil);
    Winapi.Windows.setparent(wnd, tab.Handle);

    ldnr.Show;

  finally
  end;

end;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: 
string;vfiltro:string;vmodo:string): string;
var
  lfram: Tfradnr;
  vch: string;
begin
  try
    ldnr := Tldnr.create(AOwner);
    ldnr.fradnr.vusrcodigo := vusuario;
    ldnr.fradnr.modulo := vmodulo;
    ldnr.fradnr.zcone := conexao;
    lfram := ldnr.FindComponent('fradnr') as Tfradnr;
    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;

    lfram.carregar;

    if vtipolista = 1 then
    begin
      if (lfram.PlBotoes.FindComponent('bActdnrentes') is tCheckBox) then
      begin
        (lfram.PlBotoes.FindComponent('bActdnrentes') as tCheckBox).Checked := true;
      end;
    end;

    ldnr.ShowModal;
    vch := ldnr.fradnr.vretorno;
    result := vch;
  finally
    freeandnil(ldnr);
  end;

end;

exports formu,formutab,defineacesso;



end.
