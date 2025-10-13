unit ufraffi;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons, System.Actions,
  Vcl.Imaging.pngimage;

type
  Tfraffi = class(Tfrabase)
    uqtabelafficodigo: TIntegerField;
    uqtabelaffiidentificacao: TStringField;
    uqtabelaffitipo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraffi: Tfraffi;

const
  vPlTitMdl = 'Finalizadores Financeiros';

implementation

{$R *.dfm}

uses uffffi;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraffi := Tfraffi.Create(AOwner);
    fraffi.Visible := False;
    fraffi.titulo := 'Finalizadores Financeiros';
    fraffi.Parent := tab;
    fraffi.VTabParent := tab;

    fraffi.Align := alclient;
    fraffi.modulo := vmodulo;
    fraffi.zcone := conexao;
    fraffi.vusrcodigo := vusuario;
    fraffi.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraffi.edbusca.Tag := 1;
      fraffi.PlFiltros.Visible := True;
    end;

    fraffi.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fraffi := Tfraffi.Create(AOwner);
    fraffi.defineacesso(AOwner, fraffi, conexao, 'Finalizadores Financeiros');
  finally
    freeandnil(fraffi);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraffi.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfffi, fffi, self.uqtabelafficodigo.AsString, '');
end;

procedure Tfraffi.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfffi, fffi, '', '');
end;

end.
