unit ufragto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfragto = class(Tfrabase)
    uqtabelagtocodigo: TIntegerField;
    uqtabelagtoidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragto: Tfragto;

  // Início ID do Módulo fragto
const
  vPlIdMd = '03.10.81.002-01';
  vPlTitMdl = 'Grupos de Tipos dos Campos para Contabilização';

  // Fim ID do Módulo fragto

implementation

{$R *.dfm}

uses ufgto;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fragto := Tfragto.Create(AOwner);
    fragto.Visible := False;
    fragto.IdModulo := vPlIdMd;
    fragto.titulo := vPlTitMdl;
    fragto.Parent := tab;
    fragto.VTabParent := tab;

    fragto.Align := alClient;
    fragto.modulo := vmodulo;
    fragto.zcone := conexao;
    fragto.vusrcodigo := vusuario;
    fragto.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fragto.edbusca.Tag := 1;
      fragto.PlFiltros.Visible := True;
    end;

    fragto.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fragto := Tfragto.Create(AOwner);
    fragto.defineacesso(AOwner, fragto, conexao, vPlTitMdl);
  finally
    freeandnil(fragto);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragto.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Application, Tfgto, fgto, Self.uqtabelagtocodigo.AsString, '');
end;

procedure Tfragto.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Application, Tfgto, fgto, '', '');
end;

end.
