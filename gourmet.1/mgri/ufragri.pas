unit ufragri;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,  System.ImageList,
  Vcl.ImgList, Vcl.Dialogs;

type
  Tfragri = class(Tfrabase)
    uqtabelagricodigo: TIntegerField;
    uqtabelagrpcodigo: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelamitidentificacao: TStringField;
    uqtabelatcicodigo: TIntegerField;
    uqtabelagriminuretardo: TIntegerField;
    uqtabelagricardapio: TStringField;
    uqtabelagrientrega: TStringField;
    uqtabelatciprioridade: TIntegerField;
    uqtabelagricontrolaproducao: TStringField;
    uqtabelasepidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragri: Tfragri;

  // Início ID do Módulo fragri
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Impressora do Grupo';

  // Fim ID do Módulo fragri

implementation

uses
  ufgri;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragri := Tfragri.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragri := Tfragri.Create(pCargaFrame);
  try
    fragri.CriaAcoesDeAcesso;
  finally
    fragri.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragri.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfgri, uqtabelagricodigo.AsString, '');
end;

procedure Tfragri.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgri, '', '');
end;

end.
