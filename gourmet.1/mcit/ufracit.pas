unit ufracit;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, System.ImageList, Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Graphics;

type
  Tfracit = class(Tfrabase)
    uqtabelacitcodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelatrmidentificacao: TStringField;
    uqtabelamitidentificacao: TStringField;
    uqtabelatciporta: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracit: Tfracit;

  // Início ID do Módulo fracit
const
  vPlIdMd = '01.06.86.002-01';
  vPlTitMdl = 'Impressoras';

  // Fim ID do Módulo fracit

implementation

{$R *.dfm}

uses
  ufcit;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracit := Tfracit.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracit := Tfracit.Create(pCargaFrame);
  try
    fracit.CriaAcoesDeAcesso;
  finally
    fracit.Free;
  end;
end;

exports formuFrame, defineacesso;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracit := Tfracit.Create(pCargaFrame);
  Result := fracit;
end;

exports execute;

procedure Tfracit.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcit, self.uqtabelacitcodigo.AsString, self.vChaveMestre);
end;

procedure Tfracit.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcit, '', self.vChaveMestre);
end;

end.
