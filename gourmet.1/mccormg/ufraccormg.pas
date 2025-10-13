unit ufraccormg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraccormg = class(Tfrabase)
    uqtabelarmgchave: TIntegerField;
    uqtabelamlgchave: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelacedidentificacao: TStringField;
    uqtabelarmgvalor: TFloatField;
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraccormg: Tfraccormg;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-08';
  vPlTitMdl = 'Contabilização do Contas Correntes';

  // Fim ID do Módulo fracco


implementation

uses
  ufccormg;

{$R *.dfm}



type
  TCellGrid = class(TCustomGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraccormg := Tfraccormg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraccormg := Tfraccormg.Create(pCargaFrame);
  try
    fraccormg.CriaAcoesDeAcesso;
  finally
    fraccormg.Free;
  end;
end;

exports defineacesso, formuFrame;



procedure Tfraccormg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfccormg, uqtabelarmgchave.AsString , '');
end;

end.
