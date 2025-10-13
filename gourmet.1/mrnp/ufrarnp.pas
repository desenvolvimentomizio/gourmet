unit ufrarnp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrarng, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.Controls, uFuncoes, uPegaBase, System.ImageList,
  Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfrarnp = class(Tfrarng)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frarnp: Tfrarnp;

  // Início ID do Módulo frarng
const
  vPlIdMd = '02.02.15.009-01';
  vPlTitMdl = 'Renegociação de Parcelas a Pagar';

  // Fim ID do Módulo frarng

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarnp := Tfrarnp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarnp := Tfrarnp.Create(pCargaFrame);
  try
    frarnp.CriaAcoesDeAcesso;
  finally
    frarnp.Free;
  end;
end;

exports formuFrame, defineacesso;

{ Tfrarnp }

procedure Tfrarnp.Carregar;
begin
  TfdCodigo := tfdPagar;

  inherited;

end;

end.
