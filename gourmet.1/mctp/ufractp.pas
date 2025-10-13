unit ufractp;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, MemDS, DBAccess,

  Vcl.Menus, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, VirtualTable, DASQLMonitor, UniSQLMonitor, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, System.Actions;

type
  Tfractp = class(Tfrabase)
    uqtabelactpcodigo: TIntegerField;
    uqtabelactpfuncao: TStringField;
    uqtabelactptecla: TStringField;
    uqtabelactpativo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fractp: Tfractp;

  // Início ID do Módulo fractp
const
  vPlIdMd = '03.03.80.001-01';
  vPlTitMdl = 'Teclas';

  // Fim ID do Módulo fractp

implementation

{$R *.dfm}

uses ufctp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fractp := Tfractp.Create(AOwner);
    fractp.Visible := False;
    fractp.IdModulo := vPlIdMd;
    fractp.titulo := vPlTitMdl;
    fractp.Parent := tab;
    fractp.VTabParent := tab;

    fractp.Align := alClient;
    fractp.modulo := vmodulo;
    fractp.zcone := conexao;
    fractp.vusrcodigo := vusuario;
    fractp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fractp.edbusca.Tag := 1;
      fractp.PlFiltros.Visible := True;
    end;

    fractp.carregar;

  finally
  end;
end;

exports formuFrame;

procedure Tfractp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfctp, fctp, Self.uqtabelactpcodigo.AsString, '');
end;

procedure Tfractp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfctp, fctp, '', '');
end;

end.
