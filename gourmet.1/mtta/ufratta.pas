unit ufratta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfratta = class(Tfrabase)
    uqtabelattacodigo: TIntegerField;
    uqtabelattaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratta: Tfratta;


    // Início ID do Módulo fratta
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipo de Atividade Adicionais';

  // Fim ID do Módulo fratta


implementation

uses
  uftta;

{$R *.dfm}




function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratta := Tfratta.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratta := Tfratta.Create(pCargaFrame);
  try
    fratta.CriaAcoesDeAcesso;
  finally
    fratta.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfratta.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftta ,uqtabelattacodigo.AsString ,'');
end;

procedure Tfratta.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftta ,'' ,'');
end;

end.
