unit ufratpe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfratpe = class(Tfrabase)
    uqtabelatpecodigo: TIntegerField;
    uqtabelatpeidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fratpe: Tfratpe;

  // Início ID do Módulo fratpe
const
  vPlIdMd = '01.01.80.004-01';
  vPlTitMdl = 'Tipo de Pessoa';

  // Fim ID do Módulo fratpe

implementation

{$R *.dfm}
{ Tfratpe }

procedure Tfratpe.Carregar;
begin
  if TxtFiltro='formu' then
  TxtFiltro:='';
  if TxtFiltro <> ''  then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;
  end;

  inherited;

end;

end.
