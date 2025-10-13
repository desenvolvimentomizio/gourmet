unit ufracgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegabase,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfracgr = class(Tfrabase)
    uqtabelacgrcodigo: TIntegerField;
    uqtabelacgridentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracgr: Tfracgr;


  // Início ID do Módulo fracgr
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Categorias';

  // Fim ID do Módulo fracgr

implementation

uses
  ufcgr;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracgr := Tfracgr.Create(pCargaFrame);
end;


procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracgr := Tfracgr.Create(pCargaFrame);
  try
    fracgr.CriaAcoesDeAcesso;
  finally
    fracgr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracgr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcgr, uqtabelacgrcodigo.AsString, '');
end;

procedure Tfracgr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcgr, '', '');
end;

end.
