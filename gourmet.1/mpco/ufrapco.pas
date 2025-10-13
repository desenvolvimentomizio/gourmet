unit ufrapco;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Xml.xmldom, Xml.XMLIntf,
 Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfrapco = class(Tfrabase)
    uqtabelapcocodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelapcoquantidade: TFloatField;
    uqtabelaunisimbolo: TStringField;
    uqtabelasenidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frapco: Tfrapco;

  // Início ID do Módulo frapco
const
  vPlIdMd = '01.01.05.009-01';
  vPlTitMdl = 'Composição do Produto';

  // Fim ID do Módulo frapco

implementation

{$R *.dfm}

uses ufpco;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapco := Tfrapco.Create(pCargaFrame);
  frapco.vChaveMestre:=pCargaFrame.Filtro;
  Result := frapco;
end;

exports execute;

procedure Tfrapco.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfpco, self.uqtabelapcocodigo.AsString, self.vChaveMestre);
end;

procedure Tfrapco.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpco, '', self.vChaveMestre);
end;

end.
