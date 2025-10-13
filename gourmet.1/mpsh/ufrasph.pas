unit ufrasph;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, DBAccess, System.Actions, Vcl.Imaging.pngimage;

type
  Tfrapsh = class(Tfrabase)
    uqtabelapshchave: TIntegerField;
    uqtabelasprcodigo: TIntegerField;
    uqtabelahmdchave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapsh: Tfrapsh;

const
  vPlTitMdl = 'ption = 01.01.05.001-03';

implementation

{$R *.dfm}

uses ufpsh;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frasph := Tfrasph.Create(AOwner);
    frasph.Visible := False;
    frasph.titulo := 'ption = 01.01.05.001-03';
    frasph.Parent := tab;
    frasph.VTabParent := tab;

    frasph.Align := alclient;
    frasph.modulo := vmodulo;
    frasph.zcone := conexao;
    frasph.vusrcodigo := vusuario;
    frasph.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frasph.edbusca.Tag := 1;
      frasph.PlFiltros.Visible := True;
    end;

    frasph.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    frasph := Tfrasph.Create(AOwner);
    frasph.defineacesso(AOwner, frasph, conexao, 'ption = 01.01.05.001-03');
  finally
    freeandnil(frasph);
  end;
end;

exports formuFrame, defineacesso;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  frapsh := Tfrapsh.Create(AOwner);
  frapsh.zcone := conexao;
  frapsh.vChaveMestre := vchavemestra;
  frapsh.modo := vmodo;
  frapsh.txtfiltro := 'sprcodigo=' + vchavemestra;
  frapsh.uqtabela.Filter := frapsh.txtfiltro;
  frapsh.uqtabela.Filtered := True;
  frapsh.titulo := 'Tarefas';
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
