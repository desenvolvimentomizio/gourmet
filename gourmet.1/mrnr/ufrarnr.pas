unit ufrarnr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrarng, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.Controls, uFuncoes, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList;

type
  Tfrarnr = class(Tfrarng)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frarnr: Tfrarnr;

  // Início ID do Módulo frarng
const
  vPlIdMd = '02.02.15.009-01';
  vPlTitMdl = 'Renegociação de Parcelas a Receber';

  // Fim ID do Módulo frarng

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarnr := Tfrarnr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarnr := Tfrarnr.Create(pCargaFrame);
  try
    frarnr.CriaAcoesDeAcesso;
  finally
    frarnr.Free;
  end;
end;

exports formuFrame, defineacesso;

{ Tfrarnr }

procedure Tfrarnr.Carregar;
begin
  TfdCodigo := tfdReceber;

  inherited;

end;

end.
