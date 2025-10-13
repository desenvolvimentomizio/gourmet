unit ufraetc;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, VirtualTable, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  System.Actions, Vcl.Imaging.pngimage;

type
  Tfraetc = class(Tfrabase)
    uqtabelaectidentificacao: TStringField;
    uqtabelaecttelefone: TStringField;
    uqtabelaectcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraetc: Tfraetc;

const
  vPlTitMdl = 'Orgãos de Cr#233dito';

implementation

{$R *.dfm}

uses ufetc;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraetc := Tfraetc.Create(AOwner);
    fraetc.Visible := False;
    fraetc.titulo := 'Orgãos de Cr#233dito';
    fraetc.Parent := tab;
    fraetc.VTabParent := tab;

    fraetc.Align := alclient;
    fraetc.modulo := vmodulo;
    fraetc.zcone := conexao;
    fraetc.vusrcodigo := vusuario;
    fraetc.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraetc.edbusca.Tag := 1;
      fraetc.PlFiltros.Visible := True;
    end;

    fraetc.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fraetc := Tfraetc.Create(AOwner);
    fraetc.defineacesso(AOwner, fraetc, conexao, 'Orgãos de Cr#233dito');
  finally
    freeandnil(fraetc);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraetc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfetc, fetc, self.uqtabelaectcodigo.AsString, '');
end;

procedure Tfraetc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfetc, fetc, '', '');
end;

end.
