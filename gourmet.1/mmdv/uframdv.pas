unit uframdv;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions;

type
  Tframdv = class(Tfrabase)
    uqtabelamdvdescricao: TStringField;
    uqtabelamdvchave: TIntegerField;
    uqtabelamdaidentificacao: TStringField;
    uqtabelamdacodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framdv: Tframdv;

const
  vPlTitMdl = 'Versões de M#243dulos';

implementation

{$R *.dfm}

uses ufmdv;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    framdv := Tframdv.Create(AOwner);
    framdv.Visible := False;
    framdv.titulo := 'Versões de M#243dulos';
    framdv.Parent := tab;
    framdv.VTabParent := tab;

    framdv.Align := alclient;
    framdv.modulo := vmodulo;
    framdv.zcone := conexao;
    framdv.vusrcodigo := vusuario;
    framdv.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      framdv.edbusca.Tag := 1;
      framdv.PlFiltros.Visible := True;
    end;

    framdv.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  framdv := Tframdv.Create(AOwner);
  framdv.zcone := conexao;
  framdv.vChaveMestre := vchavemestra;
  framdv.modo := vmodo;
  framdv.txtfiltro := 'mdacodigo=' + vchavemestra;
  framdv.uqtabela.Filter := framdv.txtfiltro;
  framdv.uqtabela.Filtered := True;
  framdv.titulo := 'Versão de Módulos';
  framdv.modulo := vmodulo;
  framdv.vusrcodigo := vusuario;
  framdv.PlFiltros.Visible := False;
  framdv.carregar;
  framdv.Align := alclient;
  Result := framdv;
  Result.Parent := Parente;
end;

exports execute;

procedure Tframdv.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmdv, fmdv, self.uqtabelamdvchave.AsString, self.vChaveMestre);

end;

procedure Tframdv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmdv, fmdv, '', self.vChaveMestre);

end;

end.
