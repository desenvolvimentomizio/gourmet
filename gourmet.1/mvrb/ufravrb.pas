unit ufravrb;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  System.Actions, Vcl.Imaging.pngimage;

type
  Tfravrb = class(Tfrabase)
    uqtabelavrbcodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelavrbidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fravrb: Tfravrb;

const
  vplidmd = '02.02.16.013-02';
  vPlTitMdl = 'Verbas Folha de Pagamento';

implementation

{$R *.dfm}

uses ufvrb;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fravrb := Tfravrb.Create(AOwner);
    fravrb.Visible := False;
    fravrb.titulo := 'Verbas Folha de Pagamento';
    fravrb.Parent := tab;
    fravrb.VTabParent := tab;

    fravrb.Align := alclient;
    fravrb.modulo := vmodulo;
    fravrb.zcone := conexao;
    fravrb.vusrcodigo := vusuario;
    fravrb.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fravrb.edbusca.Tag := 1;
      fravrb.PlFiltros.Visible := True;
    end;

    fravrb.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fravrb := Tfravrb.Create(AOwner);
    fravrb.defineacesso(AOwner, fravrb, conexao, 'Verbas Folha de Pagamento');
  finally
    freeandnil(fravrb);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfravrb.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfvrb, fvrb, self.uqtabelavrbcodigo.AsString, '');
end;

procedure Tfravrb.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfvrb, fvrb, '', '');
end;

end.
