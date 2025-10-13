unit ufrarbc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfrarbc = class(Tfrabase)
    uqtabelarbccodigo: TIntegerField;
    uqtabelarbcidentificacao: TStringField;
    uqtabelarbctipo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarbc: Tfrarbc;

      // Início ID do Módulo frarbc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Rúbricas da Folha';

  // Fim ID do Módulo frarbc

implementation

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarbc := Tfrarbc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarbc := Tfrarbc.Create(pCargaFrame);
  try
    frarbc.CriaAcoesDeAcesso;
  finally
    frarbc.Free;
  end;
end;
exports defineacesso, formuFrame;


end.
