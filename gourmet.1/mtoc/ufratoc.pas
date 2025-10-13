unit ufratoc;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions;

type
  Tfratoc = class(Tfrabase)
    uqtabelatoccodigo: TIntegerField;
    uqtabelatocidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratoc: Tfratoc;

const
  vPlTitMdl = 'Tabela de Operações de Contas Correntes';

implementation

{$R *.dfm}

uses uftoc;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fratoc := Tfratoc.Create(AOwner);
    fratoc.Visible := False;
    fratoc.titulo := 'Tabela de Operações de Contas Correntes';
    fratoc.Parent := tab;
    fratoc.VTabParent := tab;

    fratoc.Align := alclient;
    fratoc.modulo := vmodulo;
    fratoc.zcone := conexao;
    fratoc.vusrcodigo := vusuario;
    fratoc.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fratoc.edbusca.Tag := 1;
      fratoc.PlFiltros.Visible := True;
    end;

    fratoc.carregar;

  finally
  end;
end;

exports formuFrame;

procedure Tfratoc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftoc, ftoc, self.uqtabelatoccodigo.AsString, '');
end;

procedure Tfratoc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftoc, ftoc, '', '');

end;

end.
