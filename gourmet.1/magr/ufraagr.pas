unit ufraagr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfraagr = class(Tfrabase)
    uqtabelaagrchave: TIntegerField;
    uqtabelagrecodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelagredestino: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraagr: Tfraagr;

  // Início ID do Módulo fraagr
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Acumuladores de Apurações Gerenciais';

  // Fim ID do Módulo fraagr


implementation

uses
  ufagr;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraagr := Tfraagr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraagr := Tfraagr.Create(pCargaFrame);
  try
    fraagr.CriaAcoesDeAcesso;
  finally
    fraagr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraagr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfagr, uqtabelaagrchave.AsString, '');
end;

procedure Tfraagr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfagr, '', '');
end;

end.
