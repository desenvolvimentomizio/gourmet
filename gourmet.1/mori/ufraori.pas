unit ufraori;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraori = class(Tfrabase)
    uqtabelaoricodigo: TIntegerField;
    uqtabelaoriidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraori: Tfraori;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Origens de Pedidos';

  // Fim ID do Módulo fravrp


implementation

uses
  ufori;

{$R *.dfm}


function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.titulo := vPlTitMdl;
  fraori := Tfraori.Create(pCargaFrame);
  Result := fraori;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.titulo := vPlTitMdl;
  fraori := Tfraori.Create(pCargaFrame);
  try
    fraori.CriaAcoesDeAcesso;
  finally
    fraori.Free;
  end;
end;



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraori := Tfraori.Create(pCargaFrame);
end;
exports execute, defineacesso, formuFrame;


procedure Tfraori.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfori, self.uqtabelaoricodigo.AsString, '');
end;

end.
