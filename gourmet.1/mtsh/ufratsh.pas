unit ufratsh;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  Tfratsh = class(Tfrabase)
    uqtabelatshchave: TIntegerField;
    uqtabelasptcodigo: TIntegerField;
    uqtabelahmdchave: TIntegerField;
    uqtabelahmdtitulo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fratsh: Tfratsh;

  // Início ID do Módulo fratsh
const
  vPlIdMd = '03.07.80.010-01';
  vPlTitMdl = 'Ligação Sprint de Teste com Histórico';

  // Fim ID do Módulo fratsh

implementation

{$R *.dfm}

uses uftsh;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fratsh := Tfratsh.Create(AOwner);
    fratsh.Visible := False;
    fratsh.IdModulo := vPlIdMd;
    fratsh.titulo := vPlTitMdl;
    fratsh.Parent := tab;
    fratsh.VTabParent := tab;

    fratsh.Align := alclient;
    fratsh.modulo := vmodulo;
    fratsh.zcone := conexao;
    fratsh.vusrcodigo := vusuario;
    fratsh.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fratsh.edbusca.Tag := 1;
      fratsh.PlFiltros.Visible := True;
    end;

    fratsh.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fratsh := Tfratsh.Create(AOwner);
    fratsh.defineacesso(AOwner, fratsh, conexao, vPlTitMdl);
  finally
    freeandnil(fratsh);
  end;
end;

exports formuFrame, defineacesso;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  fratsh := Tfratsh.Create(AOwner);
  fratsh.zcone := conexao;
  fratsh.vChaveMestre := vchavemestra;
  fratsh.modo := vmodo;
  fratsh.txtfiltro := 'sptcodigo=' + vchavemestra;
  fratsh.uqtabela.Filter := fratsh.txtfiltro;
  fratsh.uqtabela.Filtered := True;
  fratsh.IdModulo := vPlIdMd;
  fratsh.titulo := vPlTitMdl;
  fratsh.modulo := vmodulo;
  fratsh.vusrcodigo := vusuario;
  fratsh.PlFiltros.Visible := False;
  fratsh.carregar;
  fratsh.Align := alclient;
  Result := fratsh;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfratsh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftsh, ftsh, self.uqtabelatshchave.AsString, self.vChaveMestre);
end;

procedure Tfratsh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftsh, ftsh, '', self.vChaveMestre);
end;

end.
