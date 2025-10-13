unit ufrapos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tfrapos = class(Tfrabase)
    uqtabelaposcodigo: TIntegerField;
    uqtabelaposidentificacao: TStringField;
    uqtabelaposnumeroserie: TStringField;
    uqtabelaclbidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapos: Tfrapos;


  // Início ID do Módulo frapos
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'SmartPOS';

  // Fim ID do Módulo frapos


implementation

uses
  ufpos;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapos := Tfrapos.Create(pCargaFrame);
end;

exports formuFrame;


procedure Tfrapos.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpos, self.uqtabelaposcodigo.AsString, '');
end;

procedure Tfrapos.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpos, '', '');
end;

end.
