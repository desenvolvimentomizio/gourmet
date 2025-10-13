unit ufrafns;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions;

type
  Tfrafns = class(Tfrabase)
    uqtabelafnscodigo: TIntegerField;
    uqtabelafnsidentificacao: TStringField;
    uqtabelatfncodigo: TIntegerField;
    uqtabelamdaidentificacao: TStringField;
    uqtabelatfnidentificacao: TStringField;
    uqtabelamdvchave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafns: Tfrafns;

  // Início ID do Módulo frafns
const
  vPlTitMdl = 'Funções do Módulo';

  // Fim ID do Módulo frafns

implementation

{$R *.dfm}

uses uffns;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frafns := Tfrafns.Create(AOwner);
    frafns.Visible := False;
    frafns.titulo := vPlTitMdl;
    frafns.Parent := tab;
    frafns.VTabParent := tab;

    frafns.Align := alclient;
    frafns.modulo := vmodulo;
    frafns.zcone := conexao;
    frafns.vusrcodigo := vusuario;
    frafns.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frafns.edbusca.Tag := 1;
      frafns.PlFiltros.Visible := True;
    end;

    frafns.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  frafns := Tfrafns.Create(AOwner);
  frafns.zcone := conexao;
  frafns.vChaveMestre := vchavemestra;
  frafns.modo := vmodo;
  frafns.txtfiltro := 'mdvchave=' + vchavemestra;
  frafns.uqtabela.Filter := frafns.txtfiltro;
  frafns.uqtabela.Filtered := True;
  frafns.titulo := vPlTitMdl;
  frafns.modulo := vmodulo;
  frafns.vusrcodigo := vusuario;
  frafns.PlFiltros.Visible := False;
  frafns.carregar;
  frafns.Align := alclient;
  Result := frafns;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfrafns.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffns, ffns, self.uqtabelafnscodigo.AsString, self.vChaveMestre);

end;

procedure Tfrafns.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffns, ffns, '', self.vChaveMestre);

end;

end.
