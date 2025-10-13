unit ufracdd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracdd = class(Tfrabase)
    uqtabelacddcodigo: TStringField;
    uqtabelacddnome: TStringField;
    uqtabelaufscodigo: TStringField;
  private
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fracdd: Tfracdd;

  // Início ID do Módulo fracdd
const
  vPlIdMd = '01.01.80.008-01';
  vPlTitMdl = 'Cidades';

  // Fim ID do Módulo fracdd

implementation

{$R *.dfm}
{ Tfracdd }

procedure Tfracdd.Carregar;
begin
  if TxtFiltro <> '' then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := true;
  end;

  inherited Carregar;

end;

end.
