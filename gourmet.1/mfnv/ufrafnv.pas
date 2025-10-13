unit ufrafnv;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfrafnv = class(Tfrabase)
    uqtabelafnvchave: TIntegerField;
    uqtabelafnscodigo: TIntegerField;
    uqtabelafnvdescricao: TStringField;
    uqtabelafnvversao: TIntegerField;
    uqtabelafnsidentificacao: TStringField;
    fnvdescricao: TDBMemo;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafnv: Tfrafnv;

const
  vPlTitMdl = 'Versão da Função';

implementation

{$R *.dfm}

uses uffnv;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frafnv := Tfrafnv.Create(AOwner);
    frafnv.Visible := False;
    frafnv.titulo := 'Versão da Função';
    frafnv.Parent := tab;
    frafnv.VTabParent := tab;

    frafnv.Align := alclient;
    frafnv.modulo := vmodulo;
    frafnv.zcone := conexao;
    frafnv.vusrcodigo := vusuario;
    frafnv.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frafnv.edbusca.Tag := 1;
      frafnv.PlFiltros.Visible := True;
    end;

    frafnv.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  frafnv := Tfrafnv.Create(AOwner);
  frafnv.zcone := conexao;
  frafnv.vChaveMestre := vchavemestra;
  frafnv.modo := vmodo;
  frafnv.txtfiltro := 'fnscodigo=' + vchavemestra;
  frafnv.uqtabela.Filter := frafnv.txtfiltro;
  frafnv.uqtabela.Filtered := True;
  frafnv.titulo := 'Versão de Funções';
  frafnv.modulo := vmodulo;
  frafnv.vusrcodigo := vusuario;
  frafnv.PlFiltros.Visible := False;
  frafnv.carregar;
  frafnv.Align := alclient;
  Result := frafnv;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfrafnv.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffnv, ffnv, self.uqtabelafnvchave.AsString, self.vChaveMestre);

end;

procedure Tfrafnv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffnv, ffnv, '', self.vChaveMestre);
end;

end.
