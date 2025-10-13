unit uframad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, ufuncoes, uPegaBase, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tframad = class(Tfrabase)
    uqtabelamadchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaspdchave: TIntegerField;
    uqtabelamadvalorccredito: TFloatField;
    uqtabelamadvalorcdebito: TFloatField;
    uqtabelamadapurccredito: TFloatField;
    uqtabelamadapurcdebito: TFloatField;
    uqtabelaadcidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framad: Tframad;

  // Início ID do Módulo framad
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Vendas no Cartões de Crédito e Débito';

  // Fim ID do Módulo framad

implementation

uses
  ufmad;


{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framad := Tframad.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framad := Tframad.Create(pCargaFrame);
  try
    framad.CriaAcoesDeAcesso;
  finally
    framad.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tframad.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmad, uqtabelamadchave.AsString, vChaveMestre);
end;

procedure Tframad.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmad, '', vChaveMestre);
end;

end.
