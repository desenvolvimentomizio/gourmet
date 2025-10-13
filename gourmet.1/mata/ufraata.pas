unit ufraata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfraata = class(Tfrabase)
    uqtabelaatachave: TIntegerField;
    uqtabelaflhchave: TIntegerField;
    uqtabelavhfcodigo: TIntegerField;
    uqtabelattacodigo: TIntegerField;
    uqtabelaatadata: TDateField;
    uqtabelaatahorainicial: TTimeField;
    uqtabelaatahorafinal: TTimeField;
    uqtabelaatahoras: TFloatField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaataregistro: TDateTimeField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelavhfidentificacao: TStringField;
    uqtabelattaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraata: Tfraata;


    // Início ID do Módulo fraata
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Atividade Adicionais';

  // Fim ID do Módulo fraata


implementation

uses
  ufata;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraata := Tfraata.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraata := Tfraata.Create(pCargaFrame);
  try
    fraata.CriaAcoesDeAcesso;
  finally
    fraata.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfraata.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfata ,uqtabelaatachave.AsString ,'');
end;

procedure Tfraata.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfata ,'' ,'');
end;

end.
