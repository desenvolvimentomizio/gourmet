unit ufragbp;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  System.Actions, Vcl.Imaging.pngimage;

type
  Tfragbp = class(Tfrabase)
    uqtabelagbpcodigo: TIntegerField;
    uqtabelagbpidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fragbp: Tfragbp;

const
  vplidmd = '02.02.16.006-02';
  vPlTitMdl = 'Grupos de Bens Patrimoniais';

implementation

{$R *.dfm}

uses ufgbp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fragbp := Tfragbp.Create(AOwner);
    fragbp.Visible := False;
    fragbp.titulo := 'Grupos de Bens Patrimoniais';
    fragbp.Parent := tab;
    fragbp.VTabParent := tab;

    fragbp.Align := alclient;
    fragbp.modulo := vmodulo;
    fragbp.zcone := conexao;
    fragbp.vusrcodigo := vusuario;
    fragbp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fragbp.edbusca.Tag := 1;
      fragbp.PlFiltros.Visible := True;
    end;

    fragbp.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fragbp := Tfragbp.Create(AOwner);
    fragbp.defineacesso(AOwner, fragbp, conexao, 'Grupos de Bens Patrimoniais');
  finally
    freeandnil(fragbp);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragbp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgbp, fgbp, self.uqtabelagbpcodigo.AsString, '');
end;

procedure Tfragbp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgbp, fgbp, '', '');
end;

end.
