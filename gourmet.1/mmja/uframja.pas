unit uframja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tframja = class(Tfrabase)
    uqtabelamjachave: TIntegerField;
    uqtabelaflhchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelatjacodigo: TIntegerField;
    uqtabelamjadata: TDateField;
    uqtabelamjanumero: TStringField;
    uqtabelamjaquantidade: TFloatField;
    uqtabelamjavalor: TFloatField;
    uqtabelamjatotal: TFloatField;
    uqtabelatjaidentificacao: TStringField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framja: Tframja;


    // Início ID do Módulo framja
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ajudas de Custos';

  // Fim ID do Módulo framja


implementation

uses
  ufmja;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framja := Tframja.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framja := Tframja.Create(pCargaFrame);
  try
    framja.CriaAcoesDeAcesso;
  finally
    framja.Free;
  end;
end;

exports defineacesso, formuFrame;



procedure Tframja.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfmja ,uqtabelamjachave.AsString ,'');
end;

procedure Tframja.ActIncluirExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfmja ,'' ,'');
end;

end.
