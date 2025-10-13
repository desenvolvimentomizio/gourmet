unit uframis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tframis = class(Tfrabase)
    uqtabelamischave: TIntegerField;
    uqtabelabplcodigo: TIntegerField;
    uqtabelabplidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  framis: Tframis;

    // Início ID do Módulo frammea
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ligação Módulo - Instruções';

  // Fim ID do Módulo frammea


implementation

uses
  ufmis;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framis := Tframis.Create(pCargaFrame);
  Result := framis;
end;

exports execute;



procedure Tframis.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfmis, '', vChaveMestre);

end;

procedure Tframis.Carregar;
begin
  uqtabela.Filter := 'itscodigo = ' + QuotedStr(vChaveMestre);
  uqtabela.Filtered := True;

  inherited;


end;


procedure Tframis.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmis, Self.uqtabelamischave.AsString, vChaveMestre);

end;

end.
