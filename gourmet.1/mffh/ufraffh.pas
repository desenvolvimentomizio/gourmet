unit ufraffh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraffh = class(Tfrabase)
    uqtabelaffhcodigo: TIntegerField;
    uqtabelaffhidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraffh: Tfraffh;

  // Início ID do Módulo fraffh
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Função de Registro';

  // Fim ID do Módulo fraffh

implementation

uses
  ufffh;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraffh := Tfraffh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraffh := Tfraffh.Create(pCargaFrame);
  try
    fraffh.CriaAcoesDeAcesso;
  finally
    fraffh.Free;
  end;
end;

exports defineacesso, formuFrame;


procedure Tfraffh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfffh ,uqtabelaffhcodigo.AsString ,'');
end;

procedure Tfraffh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfffh ,'' ,'');
end;

end.
