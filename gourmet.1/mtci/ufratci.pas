unit ufratci;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc,  System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfratci = class(Tfrabase)
    uqtabelatcicodigo: TIntegerField;
    uqtabelamitcodigo: TIntegerField;
    uqtabelamitidentificacao: TStringField;
    uqtabelatciporta: TStringField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelatrmidentificacao: TStringField;
    uqtabelatciprioridade: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratci: Tfratci;

  // Início ID do Módulo fratci
const
  vPlIdMd = '01.06.86.001-01';
  vPlTitMdl = 'Impressoras';

  // Fim ID do Módulo fratci

implementation

{$R *.dfm}

uses
  uftci;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratci := Tfratci.Create(pCargaFrame);
end;

exports formuFrame;

procedure Tfratci.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftci, uqtabelatcicodigo.AsString, self.vChaveMestre);
end;

procedure Tfratci.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftci, '', self.vChaveMestre);
end;

end.
