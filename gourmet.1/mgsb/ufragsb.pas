unit ufragsb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  Tfragsb = class(Tfrabase)
    uqtabelagsbcodigo: TIntegerField;
    uqtabelagsbidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragsb: Tfragsb;


  // Início ID do Módulo frabai
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Grupo para Sabores';

  // Fim ID do Módulo frabai

implementation

uses
  ufgsb;

{$R *.dfm}

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fragsb := Tfragsb.Create(AOwner);
    fragsb.Visible := False;
    fragsb.IdModulo := vPlIdMd;
    fragsb.titulo := vPlTitMdl;
    fragsb.Parent := tab;
    fragsb.VTabParent := tab;

    fragsb.Align := alClient;
    fragsb.modulo := vmodulo;
    fragsb.zcone := conexao;
    fragsb.vusrcodigo := vusuario;
    fragsb.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fragsb.edbusca.Tag := 1;
      fragsb.PlFiltros.Visible := True;
    end;

    fragsb.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fragsb := Tfragsb.Create(AOwner);
    fragsb.defineacesso(AOwner, fragsb, conexao, vPlTitMdl);
  finally
    freeandnil(fragsb);
  end;
end;

exports formuFrame, defineacesso;



procedure Tfragsb.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Application, Tfgsb, fgsb, Self.uqtabelagsbcodigo.AsString, '');
end;

procedure Tfragsb.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Application, Tfgsb, fgsb, '', '');
end;

end.
