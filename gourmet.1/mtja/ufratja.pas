unit ufratja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfratja = class(Tfrabase)
    uqtabelatjacodigo: TIntegerField;
    uqtabelatjaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratja: Tfratja;



    // Início ID do Módulo fratja
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipos de Ajudas de Custo';

  // Fim ID do Módulo fratja


implementation

uses
  uftja;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratja := Tfratja.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratja := Tfratja.Create(pCargaFrame);
  try
    fratja.CriaAcoesDeAcesso;
  finally
    fratja.Free;
  end;
end;

exports defineacesso, formuFrame;



procedure Tfratja.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tftja ,uqtabelatjacodigo.AsString ,'');
end;

procedure Tfratja.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tftja ,'' ,'');
end;

end.
