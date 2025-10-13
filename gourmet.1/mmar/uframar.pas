unit uframar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tframar = class(Tfrabase)
    uqtabelamarcodigo: TIntegerField;
    uqtabelamaridentificacao: TStringField;
    uqtabelamarpercentual: TFloatField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  framar: Tframar;

  // Início ID do Módulo framar
const
  vPlIdMd = '01.01.05.006-01';
  vPlTitMdl = 'Marcas';

  // Fim ID do Módulo framar

implementation

{$R *.dfm}

uses ufmar;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framar := Tframar.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framar := Tframar.Create(pCargaFrame);
  try
    framar.CriaAcoesDeAcesso;
  finally
    framar.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tframar.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmar, self.uqtabelamarcodigo.AsString, '');
end;

procedure Tframar.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmar, '', '');
end;

end.
