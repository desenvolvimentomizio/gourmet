unit ufraeta;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions;

type
  Tfraeta = class(Tfrabase)
    uqtabelaetacodigo: TIntegerField;
    uqtabelaetaidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraeta: Tfraeta;

const
  vPlTitMdl = 'Estágio';

implementation

{$R *.dfm}

uses ufeta;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraeta := Tfraeta.Create(AOwner);
    fraeta.Visible := False;
    fraeta.titulo := 'Estágio';
    fraeta.Parent := tab;
    fraeta.VTabParent := tab;

    fraeta.Align := alclient;
    fraeta.modulo := vmodulo;
    fraeta.zcone := conexao;
    fraeta.vusrcodigo := vusuario;
    fraeta.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraeta.edbusca.Tag := 1;
      fraeta.PlFiltros.Visible := True;
    end;

    fraeta.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  fraeta := Tfraeta.Create(AOwner);
  fraeta.zcone := conexao;
  fraeta.vChaveMestre := vchavemestra;
  fraeta.modo := vmodo;
  fraeta.uqtabela.Filter := fraeta.txtfiltro;
  // fraeta.uqtabela.Filtered:=true;
  fraeta.titulo := 'Estágios';
  fraeta.modulo := vmodulo;
  fraeta.vusrcodigo := vusuario;
  fraeta.PlFiltros.Visible := False;
  fraeta.carregar;
  fraeta.Align := alclient;
  Result := fraeta;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfraeta.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfeta, feta, self.uqtabelaetacodigo.AsString, self.vChaveMestre);

end;

procedure Tfraeta.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfeta, feta, '', self.vChaveMestre);

end;

end.
