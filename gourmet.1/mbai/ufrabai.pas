unit ufrabai;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfrabai = class(Tfrabase)
    uqtabelabaicodigo: TIntegerField;
    uqtabelabaiidentificacao: TStringField;
    uqtabelapronome: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabai: Tfrabai;

  // Início ID do Módulo frabai
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Bairros';

  // Fim ID do Módulo frabai

implementation

uses
  ufbai;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabai := Tfrabai.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabai := Tfrabai.Create(pCargaFrame);
  try
    frabai.CriaAcoesDeAcesso;
  finally
    frabai.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabai.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbai, uqtabelabaicodigo.AsString, '');
end;

procedure Tfrabai.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbai, '', '');
end;

end.
