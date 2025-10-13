unit ufracfp;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, System.Actions;

type
  Tfracfp = class(Tfrabase)
    uqtabelacfpCodigo: TIntegerField;
    uqtabelacfpmascara: TStringField;
    uqtabelacggcodigo: TIntegerField;
    uqtabelacedidentificacao: TStringField;
    uqtabelacfpidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fracfp: Tfracfp;

  // Início ID do Módulo fracfp
const
  vPlIdMd = '02.02.16.003-01';
  vPlTitMdl = 'Configurações de Máscaras para Plano Contábil Gerencial';

  // Fim ID do Módulo fracfp

implementation

{$R *.dfm}

uses ufcfp;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fracfp := Tfracfp.Create(AOwner);
    fracfp.Visible := False;
    fracfp.IdModulo := vPlIdMd;
    fracfp.titulo := vPlTitMdl;
    fracfp.Parent := tab;
    fracfp.VTabParent := tab;

    fracfp.Align := alclient;
    fracfp.modulo := vmodulo;
    fracfp.zcone := conexao;
    fracfp.vusrcodigo := vusuario;
    fracfp.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fracfp.edbusca.Tag := 1;
      fracfp.PlFiltros.Visible := True;
    end;

    fracfp.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fracfp := Tfracfp.Create(AOwner);
    fracfp.defineacesso(AOwner, fracfp, conexao, vPlTitMdl);
  finally
    FreeAndNil(fracfp);
  end;
end;


exports formuFrame,defineacesso;

procedure Tfracfp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcfp, fcfp, self.uqtabelacfpCodigo.asstring, '');
end;

procedure Tfracfp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcfp, fcfp, '', '');
end;

end.
