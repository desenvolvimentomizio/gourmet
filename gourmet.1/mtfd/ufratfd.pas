unit ufratfd;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, System.Actions;

type
  Tfratfd = class(Tfrabase)
    uqtabelatfdcodigo: TIntegerField;
    uqtabelatfdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratfd: Tfratfd;

const
  vPlTitMdl = 'Tipo de Registro Financeiro';

implementation

{$R *.dfm}

uses ufftfd;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fratfd := Tfratfd.Create(AOwner);
    fratfd.Visible := False;
    fratfd.titulo := 'Tipo de Registro Financeiro';
    fratfd.Parent := tab;
    fratfd.VTabParent := tab;

    fratfd.Align := alclient;
    fratfd.modulo := vmodulo;
    fratfd.zcone := conexao;
    fratfd.vusrcodigo := vusuario;
    fratfd.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fratfd.edbusca.Tag := 1;
      fratfd.PlFiltros.Visible := True;
    end;

    fratfd.carregar;

  finally
  end;
end;

exports formuFrame;

procedure Tfratfd.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftfd, ftfd, self.uqtabelatfdcodigo.AsString, '');
end;

procedure Tfratfd.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftfd, ftfd, '', '');
end;

end.
