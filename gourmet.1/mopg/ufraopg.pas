unit ufraopg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tfraopg = class(Tfrabase)
    uqtabelaopgcodigo: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelaopcidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraopg: Tfraopg;

  // Início ID do Módulo fraopg
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Opções de Grupos';

  // Fim ID do Módulo fraopg

implementation

uses
  ufopg;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraopg := Tfraopg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraopg := Tfraopg.Create(pCargaFrame);
  try
    fraopg.CriaAcoesDeAcesso;
  finally
    fraopg.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraopg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfopg, uqtabelaopgcodigo.AsString, '');

end;

procedure Tfraopg.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfopg, '', '');
end;

end.
