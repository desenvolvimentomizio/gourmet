unit ufraccx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
   System.ImageList, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf,
 Xml.XMLDoc;

type
  Tfraccx = class(Tfrabase)
    uqtabelaccxchave: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    uqtabelaccxdataber: TDateField;
    uqtabelaccxdatafecha: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraccx: Tfraccx;
  // Início ID do Módulo fracli
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Fechamentos de Caixas';

  // Fim ID do Módulo fracli


implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraccx := Tfraccx.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraccx := Tfraccx.Create(pCargaFrame);
  try
    fraccx.CriaAcoesDeAcesso;
  finally
    fraccx.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
