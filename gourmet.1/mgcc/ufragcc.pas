unit ufragcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfragcc = class(Tfrabase)
    uqtabelagcccodigo: TIntegerField;
    uqtabelagccmascara: TStringField;
    uqtabelagccidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragcc: Tfragcc;

  // Início ID do Módulo fragcc
const
  vPlIdMd = '01.10.16.003-01';
  vPlTitMdl = 'Grupos de Centros Contábeis';

  // Fim ID do Módulo fragcc

implementation

{$R *.dfm}

uses ufgcc;


procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fragcc := Tfragcc.Create(AOwner);
    fragcc.defineacesso(AOwner, fragcc, conexao, vPlTitMdl);
  finally
    FreeAndNil(fragcc);
  end;
end;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fragcc := Tfragcc.Create(AOwner);
    fragcc.Visible := False;
    fragcc.vChaveMestre := vmodo;
    fragcc.IdModulo := vPlIdMd;
    fragcc.titulo := vPlTitMdl;
    fragcc.Parent := tab;
    fragcc.VTabParent := tab;

    fragcc.Align := alClient;
    fragcc.modulo := vmodulo;
    fragcc.zcone := conexao;
    fragcc.vusrcodigo := vusuario;
    fragcc.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fragcc.edbusca.Tag := 1;
      fragcc.PlFiltros.Visible := True;
    end;

    fragcc.carregar;

  finally
  end;
end;

exports defineacesso, formuFrame;


procedure Tfragcc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgcc, fgcc, self.uqtabelagcccodigo.AsString, '');
end;

procedure Tfragcc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgcc, fgcc, '', '');
end;

end.
