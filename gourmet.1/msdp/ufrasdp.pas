unit ufrasdp;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DBAccess, System.Actions;

type
  Tfrasdp = class(Tfrabase)
    uqtabelasdpcodigo: TIntegerField;
    uqtabelasdpidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frasdp: Tfrasdp;

  // Início ID do Módulo frasdp
const
  vPlIdMd = '03.07.80.012-01';
  vPlTitMdl = 'Sub-Grupos de Projetos';

  // Fim ID do Módulo frasdp

implementation

{$R *.dfm}

uses ufsdp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frasdp := Tfrasdp.Create(AOwner);
    frasdp.Visible := False;
    frasdp.IdModulo := vPlIdMd;
    frasdp.titulo := vPlTitMdl;
    frasdp.Parent := tab;
    frasdp.VTabParent := tab;

    frasdp.Align := alclient;
    frasdp.modulo := vmodulo;
    frasdp.zcone := conexao;
    frasdp.vusrcodigo := vusuario;
    frasdp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frasdp.edbusca.Tag := 1;
      frasdp.PlFiltros.Visible := True;
    end;

    frasdp.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    frasdp := Tfrasdp.Create(AOwner);
    frasdp.defineacesso(AOwner, frasdp, conexao, vPlTitMdl);
  finally
    freeandnil(frasdp);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrasdp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfsdp, fsdp, self.uqtabelasdpcodigo.AsString, '');
end;

procedure Tfrasdp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfsdp, fsdp, '', '');
end;

end.
