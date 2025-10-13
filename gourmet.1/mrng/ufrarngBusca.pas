unit ufrarngBusca;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabrf, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.ComCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TfrarngBusca = class(Tfrabrf)
    procedure uqtabelaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarngBusca: TfrarngBusca;

  // Início ID do Módulo frarng
const
  vPlIdMd = '02.02.15.009-01';
  vPlTitMdl = 'Renegociação de Parcelas';

  // Fim ID do Módulo frarng

implementation

{$R *.dfm}

procedure TfrarngBusca.uqtabelaBeforeOpen(DataSet: TDataSet);
begin
   self.uqtabela.ParamByName('clbcodigo').AsInteger:=acesso.Usuario;
  inherited;

end;

end.
