unit ufradcp;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions;

type
  Tfradcp = class(Tfrabase)
    uqtabeladcpcodigo: TIntegerField;
    uqtabeladcpcampo: TStringField;
    uqtabeladcpdescricao: TStringField;
    uqtabeladcpspedfiscal: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fradcp: Tfradcp;

  // Início ID do Módulo fradcp
const
  vPlIdMd = '03.09.80.003-01';
  vPlTitMdl = 'Descrição de Campo';

  // Fim ID do Módulo fradcp

implementation

{$R *.dfm}

uses ufdcp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fradcp := Tfradcp.Create(AOwner);
    fradcp.Visible := False;
    fradcp.IdModulo := vPlIdMd;
    fradcp.titulo := vPlTitMdl;
    fradcp.Parent := tab;
    fradcp.VTabParent := tab;

    fradcp.Align := alclient;
    fradcp.modulo := vmodulo;
    fradcp.zcone := conexao;
    fradcp.vusrcodigo := vusuario;
    fradcp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fradcp.edbusca.Tag := 1;
      fradcp.PlFiltros.Visible := True;
    end;

    fradcp.carregar;

  finally
  end;
end;

exports formuFrame;

procedure Tfradcp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdcp, fdcp, self.uqtabeladcpcodigo.AsString, '');
end;

procedure Tfradcp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdcp, fdcp, '', '');
end;

end.
