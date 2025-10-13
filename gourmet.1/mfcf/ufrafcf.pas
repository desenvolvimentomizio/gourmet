unit ufrafcf;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, uni, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfrafcf = class(Tfrabase)
    uqtabelafcfchave: TIntegerField;
    uqtabelafnccodigo: TIntegerField;
    uqtabelafecidentificacao: TStringField;
    uqtabelafeccodigo: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafcf: Tfrafcf;

  // Início ID do Módulo frafcf
const
  vPlIdMd = '01.01.02.002-01';
  vPlTitMdl = 'Funções de Colaborador';

  // Fim ID do Módulo frafcf

implementation

{$R *.dfm}

uses uffcf;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frafcf := Tfrafcf.Create(AOwner);
    frafcf.Visible := False;
    frafcf.IdModulo := vPlIdMd;
    frafcf.titulo := vPlTitMdl;
    frafcf.Parent := tab;
    frafcf.VTabParent := tab;

    frafcf.Align := alclient;
    frafcf.modulo := vmodulo;
    frafcf.zcone := conexao;
    frafcf.vusrcodigo := vusuario;
    frafcf.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frafcf.edbusca.Tag := 1;
      frafcf.PlFiltros.Visible := True;
    end;

    frafcf.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  frafcf := Tfrafcf.Create(AOwner);
  frafcf.zcone := conexao;
  frafcf.vChaveMestre := vchavemestra;
  frafcf.IdModulo := vPlIdMd;
  frafcf.titulo := vPlTitMdl;
  frafcf.modo := vmodo;
  frafcf.vusrcodigo := vusuario;
  frafcf.PlFiltros.Visible := False;
  frafcf.carregar;
  frafcf.Align := alclient;
  Result := frafcf;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfrafcf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  // CriaFormulario(Tffcf, ffcf, self.uqtabelafcfchave.AsString, self.vChaveMestre);
end;

procedure Tfrafcf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  // CriaFormulario(Tffcf, ffcf, '', self.vChaveMestre);
end;

end.
