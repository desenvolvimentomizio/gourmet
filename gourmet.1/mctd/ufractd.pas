unit ufractd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfractd = class(Tfrabase)
    uqtabelactdcodigo: TIntegerField;
    uqtabelactdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fractd: Tfractd;

  // Início ID do Módulo fractd
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Contabilidades';

  // Fim ID do Módulo fractd

implementation

uses
  ufctd;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fractd := Tfractd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fractd := Tfractd.Create(pCargaFrame);
  try
    fractd.CriaAcoesDeAcesso;
  finally
    fractd.Free;
  end;
end;

exports defineacesso, formuFrame;


procedure Tfractd.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfctd, uqtabelactdcodigo.AsString ,'');
end;

procedure Tfractd.ActIncluirExecute(Sender: TObject);
begin
  inherited;

  CriaFormulario(Tfctd, '' ,'');

end;

end.
