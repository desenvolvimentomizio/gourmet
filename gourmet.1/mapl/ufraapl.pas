unit ufraapl;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  Tfraapl = class(Tfrabase)
    uqtabelaaplcodigo: TIntegerField;
    uqtabelaaplidentificacao: TStringField;
    uqtabelaapldescricao: TStringField;
    uqtabelaaplexe: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraapl: Tfraapl;

const

  vPlTitMdl = 'Aplicações';

implementation

{$R *.dfm}

uses ufapl;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraapl := Tfraapl.Create(AOwner);
    fraapl.Visible := False;
    fraapl.titulo := 'Aplicações';
    fraapl.Parent := tab;
    fraapl.VTabParent := tab;

    fraapl.Align := alclient;
    fraapl.modulo := vmodulo;
    fraapl.zcone := conexao;
    fraapl.vusrcodigo := vusuario;
    fraapl.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraapl.edbusca.Tag := 1;
      fraapl.PlFiltros.Visible := True;
    end;

    fraapl.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fraapl := Tfraapl.Create(AOwner);
    fraapl.defineacesso(AOwner, fraapl, conexao, 'Aplicações');
  finally
    freeandnil(fraapl);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraapl.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfapl, fapl, self.uqtabelaaplcodigo.AsString, '');
end;

procedure Tfraapl.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfapl, fapl, '', '');
end;

end.
