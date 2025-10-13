unit ufraepa;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  System.Actions, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, Vcl.Mask,
  Vcl.DBCtrls,upegabase;

type
  Tfraepa = class(Tfrabase)
    uqtabelaepacodigo: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelatpacodigo: TIntegerField;
    uqtabelaepaidentificacao: TStringField;
    uqtabelaepadoc1: TStringField;
    uqtabelaepalimite: TFloatField;
    uqtabelaepadata: TDateField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fraepa: Tfraepa;

const
  vplidmd = '01.01.01.008-02';
  vPlTitMdl = 'Pessoa Autorizada a Comprar';

implementation

{$R *.dfm}

uses ufepa;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
{  try
    fraepa := Tfraepa.Create(AOwner);
    fraepa.Visible := False;
    fraepa.titulo := 'Pessoa Autorizada a Comprar';
    fraepa.Parent := tab;
    fraepa.VTabParent := tab;

    fraepa.Align := alclient;
    fraepa.modulo := vmodulo;
    fraepa.zcone := conexao;
    fraepa.vusrcodigo := vusuario;
    fraepa.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraepa.edbusca.Tag := 1;
      fraepa.PlFiltros.Visible := True;
    end;

    fraepa.carregar;

  finally
  end;}
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
 { try
    fraepa := Tfraepa.Create(AOwner);
    fraepa.defineacesso(AOwner, fraepa, conexao, 'Pessoa Autorizada a Comprar');
  finally
    freeandnil(fraepa);
  end;}
end;

exports formuFrame, defineacesso;

procedure Tfraepa.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 // CriaFormulario(Tfepa, fepa, self.uqtabelaepacodigo.AsString, '');
end;

procedure Tfraepa.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 // CriaFormulario(Tfepa, fepa, '', '');
end;

end.
