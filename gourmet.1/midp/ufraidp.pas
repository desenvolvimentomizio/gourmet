unit ufraidp;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DBAccess, System.Actions;

type
  Tfraidp = class(Tfrabase)
    uqtabelaidpcodigo: TIntegerField;
    uqtabelaidpidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraidp: Tfraidp;

const
  vPlTitMdl = 'Item do M#243dulo do Projeto';

implementation

{$R *.dfm}

uses ufidp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraidp := Tfraidp.Create(AOwner);
    fraidp.Visible := False;
    fraidp.titulo := 'Item do M#243dulo do Projeto';
    fraidp.Parent := tab;
    fraidp.VTabParent := tab;

    fraidp.Align := alclient;
    fraidp.modulo := vmodulo;
    fraidp.zcone := conexao;
    fraidp.vusrcodigo := vusuario;
    fraidp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraidp.edbusca.Tag := 1;
      fraidp.PlFiltros.Visible := True;
    end;

    fraidp.carregar;

  finally
  end;
end;

exports formuFrame;

procedure Tfraidp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfidp, fidp, self.uqtabelaidpcodigo.asstring, '');
end;

procedure Tfraidp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfidp, fidp, '', '');

end;

end.
