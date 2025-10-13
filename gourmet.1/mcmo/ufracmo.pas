unit ufracmo;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracmo = class(Tfrabase)
    uqtabelacmochave: TIntegerField;
    uqtabelacmodata: TDateField;
    uqtabelacmocotacao: TFloatField;
    uqtabelamoecodigo: TIntegerField;
    uqtabelamoeidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fracmo: Tfracmo;

  // Início ID do Módulo fracmo
const
  vPlIdMd = '02.02.80.001-01';
  vPlTitMdl = 'Cotação de Moedas';

  // Fim ID do Módulo fracmo

implementation

{$R *.dfm}

uses ufcmo;

procedure Tfracmo.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcmo, uqtabelacmochave.AsString, '');
end;

procedure Tfracmo.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcmo, '', '');
end;

end.
