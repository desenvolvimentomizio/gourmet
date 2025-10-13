unit ufratdf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratdf = class(Tfrabase)
    uqtabelatdfcodigo: TStringField;
    uqtabelatdfidentificacao: TStringField;
  private
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fratdf: Tfratdf;

  // Início ID do Módulo fratdf
const
  vPlIdMd = '02.04.80.002-01';
  vPlTitMdl = 'Tipo de Documento Fiscal';

  // Fim ID do Módulo fratdf

implementation

{$R *.dfm}
{ Tfratdf }

procedure Tfratdf.Carregar;
begin
  if TxtFiltro <> '' then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;
  end;

  inherited;

end;

end.
