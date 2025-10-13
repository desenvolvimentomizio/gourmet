unit ufrapsh;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfrapsh = class(Tfrabase)
    uqtabelapshchave: TIntegerField;
    uqtabelasprcodigo: TIntegerField;
    uqtabelahmdchave: TIntegerField;
    uqtabelahmdtitulo: TStringField;
    hmddescricao: TDBMemo;
    uqtabelahmddescricao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frapsh: Tfrapsh;

  // Início ID do Módulo frapsh
const
  vPlIdMd = '03.07.80.007-01';
  vPlTitMdl = 'Registro de Sprint para Histórias';

  // Fim ID do Módulo frapsh

implementation

{$R *.dfm}

uses ufpsh;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frapsh := Tfrapsh.Create(AOwner);
    frapsh.Visible := False;
    frapsh.IdModulo := vPlIdMd;
    frapsh.titulo := vPlTitMdl;
    frapsh.Parent := tab;
    frapsh.VTabParent := tab;

    frapsh.Align := alclient;
    frapsh.modulo := vmodulo;
    frapsh.zcone := conexao;
    frapsh.vusrcodigo := vusuario;
    frapsh.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frapsh.edbusca.Tag := 1;
      frapsh.PlFiltros.Visible := True;
    end;

    frapsh.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    frapsh := Tfrapsh.Create(AOwner);
    frapsh.defineacesso(AOwner, frapsh, conexao, vPlTitMdl);
  finally
    freeandnil(frapsh);
  end;
end;

exports formuFrame, defineacesso;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  frapsh := Tfrapsh.Create(AOwner);
  frapsh.IdModulo := vPlIdMd;
  frapsh.titulo := vPlTitMdl;
  frapsh.zcone := conexao;
  frapsh.vChaveMestre := vchavemestra;
  frapsh.modo := vmodo;
  frapsh.txtfiltro := 'sprcodigo=' + vchavemestra;
  frapsh.uqtabela.Filter := frapsh.txtfiltro;
  frapsh.uqtabela.Filtered := True;
  frapsh.modulo := vmodulo;
  frapsh.vusrcodigo := vusuario;
  frapsh.PlFiltros.Visible := False;
  frapsh.carregar;
  frapsh.Align := alclient;
  Result := frapsh;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfrapsh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpsh, fpsh, self.uqtabelapshchave.AsString, self.vChaveMestre);
end;

procedure Tfrapsh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpsh, fpsh, '', self.vChaveMestre);
end;

end.
