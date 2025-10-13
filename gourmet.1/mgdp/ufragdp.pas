unit ufragdp;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DBAccess, System.Actions;

type
  Tfragdp = class(Tfrabase)
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
  fragdp: Tfragdp;

  // Início ID do Módulo fragdp
const
  vPlIdMd = '03.07.80.011-01';
  vPlTitMdl = 'Grupo de Projetos';

  // Fim ID do Módulo fragdp

implementation

{$R *.dfm}

uses ufgdp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fragdp := Tfragdp.Create(AOwner);
    fragdp.Visible := False;
    fragdp.IdModulo := vPlIdMd;
    fragdp.titulo := vPlTitMdl;
    fragdp.Parent := tab;
    fragdp.VTabParent := tab;

    fragdp.Align := alclient;
    fragdp.modulo := vmodulo;
    fragdp.zcone := conexao;
    fragdp.vusrcodigo := vusuario;
    fragdp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fragdp.edbusca.Tag := 1;
      fragdp.PlFiltros.Visible := True;
    end;

    fragdp.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fragdp := Tfragdp.Create(AOwner);
    fragdp.defineacesso(AOwner, fragdp, conexao, vPlTitMdl);
  finally
    freeandnil(fragdp);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragdp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgdp, fgdp, self.uqtabelagdpcodigo.AsString, '');
end;

procedure Tfragdp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgdp, fgdp, '', '');
end;

end.
