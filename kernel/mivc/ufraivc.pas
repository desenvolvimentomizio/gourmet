unit ufraivc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,upegabase;

type
  Tfraivc = class(Tfrabase)
    uqtabelaivcchave: TIntegerField;
    uqtabelaivcdatahorainicio: TDateTimeField;
    uqtabelaivcdatahorafinal: TDateTimeField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaspddatabalanco: TDateField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraivc: Tfraivc;


  // Início ID do Módulo fraigp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Contagens de Estoque';

  // Fim ID do Módulo fraigp

implementation

uses
  ufivc;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraivc := Tfraivc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraivc := Tfraivc.Create(pCargaFrame);
  try
    fraivc.CriaAcoesDeAcesso;
  finally
    fraivc.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfraivc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfivc, uqtabelaivcchave.AsString, '');
end;

procedure Tfraivc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfivc, '', '');
end;

end.
