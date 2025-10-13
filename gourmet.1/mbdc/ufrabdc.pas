unit ufrabdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, System.ImageList, Vcl.ImgList,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrabdc = class(Tfrabase)
    uqtabelabdccodigo: TIntegerField;
    uqtabelabdcidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabdc: Tfrabdc;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Bandeiras de Cartões';

  // Fim ID do Módulo fravndv

implementation

uses
  ufbdc;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabdc := Tfrabdc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabdc := Tfrabdc.Create(pCargaFrame);
  try
    frabdc.CriaAcoesDeAcesso;
  finally
    frabdc.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabdc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfbdc, uqtabelabdccodigo.AsString, '');
end;

procedure Tfrabdc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfbdc, '', '');
end;

end.
