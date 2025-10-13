unit ufradgp;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DBAccess, System.Actions;

type
  Tfradgp = class(Tfrabase)
    uqtabelagdpcodigo: TIntegerField;
    uqtabelagdpidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fradgp: Tfradgp;

const
  vPlTitMdl = 'Grupos de Bens Patrimoniais';

implementation

{$R *.dfm}

uses ufgdp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fradgp := Tfradgp.Create(AOwner);
    fradgp.Visible := False;
    fradgp.titulo := 'Grupos de Bens Patrimoniais';
    fradgp.Parent := tab;
    fradgp.VTabParent := tab;

    fradgp.Align := alclient;
    fradgp.modulo := vmodulo;
    fradgp.zcone := conexao;
    fradgp.vusrcodigo := vusuario;
    fradgp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fradgp.edbusca.Tag := 1;
      fradgp.PlFiltros.Visible := True;
    end;

    fradgp.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fradgp := Tfradgp.Create(AOwner);
    fradgp.defineacesso(AOwner, fradgp, conexao, 'Grupos de Bens Patrimoniais');
  finally
    freeandnil(fradgp);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfradgp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgdp, fgdp, self.uqtabelagdpcodigo.AsString, '');
end;

procedure Tfradgp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgdp, fgdp, '', '');
end;

end.
