unit ufrattm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrattm = class(Tfrabase)
    uqtabelattmcodigo: TIntegerField;
    uqtabelattmidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frattm: Tfrattm;
  const
    vPlTitMdl = 'Emitente';
    vPlIdMd = '00.00.00.001-01';

implementation

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frattm := Tfrattm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frattm := Tfrattm.Create(pCargaFrame);
  try
    frattm.CriaAcoesDeAcesso;
  finally
    frattm.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
