unit ufratfn;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, DBAccess, System.Actions;

type
  Tfratfn = class(Tfrabase)
    uqtabelatfncodigo: TIntegerField;
    uqtabelatfnidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratfn: Tfratfn;

const
  vPlTitMdl = 'Tipos de Funções';

implementation

{$R *.dfm}

uses uftfn;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fratfn := Tfratfn.Create(AOwner);
    fratfn.Visible := False;
    fratfn.titulo := 'Tipos de Funções';
    fratfn.Parent := tab;
    fratfn.VTabParent := tab;

    fratfn.Align := alclient;
    fratfn.modulo := vmodulo;
    fratfn.zcone := conexao;
    fratfn.vusrcodigo := vusuario;
    fratfn.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fratfn.edbusca.Tag := 1;
      fratfn.PlFiltros.Visible := True;
    end;

    fratfn.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  fratfn := Tfratfn.Create(AOwner);
  fratfn.zcone := conexao;
  fratfn.vChaveMestre := vchavemestra;
  fratfn.modo := vmodo;
  fratfn.txtfiltro := 'fnscodigo=' + vchavemestra;
  fratfn.uqtabela.Filter := fratfn.txtfiltro;
  fratfn.uqtabela.Filtered := True;
  fratfn.titulo := 'Versão de Funções';
  fratfn.modulo := vmodulo;
  fratfn.vusrcodigo := vusuario;
  fratfn.PlFiltros.Visible := False;
  fratfn.carregar;
  fratfn.Align := alclient;
  Result := fratfn;
  Result.Parent := Parente;
end;

exports execute;

procedure Tfratfn.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftfn, ftfn, self.uqtabelatfncodigo.AsString, self.vChaveMestre);

end;

procedure Tfratfn.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftfn, ftfn, '', self.vChaveMestre);

end;

end.
