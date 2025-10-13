unit ufraclc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraclc = class(Tfrabase)
    uqtabelaclccodigo: TStringField;
    uqtabelaclcidentificacao: TStringField;
    uqtabelatcscodigo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fraclc: Tfraclc;

  // In�cio ID do M�dulo fraclc
const
  vPlIdMd = '03.08.18.003-01';
  vPlTitMdl = 'Classes de Consumo';

  // Fim ID do M�dulo fraclc

implementation

{$R *.dfm}
{ Tfraclc }

procedure Tfraclc.Carregar;
begin

  if TxtFiltro <> '' then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;
  end;

  inherited Carregar;

end;

end.
