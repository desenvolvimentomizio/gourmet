unit ufrabrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabrf, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.ComCtrls, Vcl.Graphics, uPegaBase,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrabrp = class(Tfrabrf)
    procedure bConfirmaSelecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabrp: Tfrabrp;

  // Início ID do Módulo frabrp
const
  vPlIdMd = '02.02.15.007-01';

  vPlTitMdl = 'Pagamento de Contas';

  // Fim ID do Módulo frabrp

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabrp := Tfrabrp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabrp := Tfrabrp.Create(pCargaFrame);
  try
    frabrp.CriaAcoesDeAcesso;
  finally
    frabrp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabrp.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  Self.ActAtualizar.Execute;
end;

end.
