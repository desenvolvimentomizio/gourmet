unit ufraats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfraats = class(Tfrabase)
    uqtabelaatscodigo: TIntegerField;
    uqtabelaatsidentificacao: TStringField;
    uqtabelaatsmeses: TIntegerField;
    uqtabelaatspercentual: TFloatField;
    uqtabelaevfcodigo: TIntegerField;
    uqtabelaevfidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraats: Tfraats;


  // Início ID do Módulo fraats
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Adicionais por Tempo';

  // Fim ID do Módulo fraats


implementation

uses
  ufats;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraats := Tfraats.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraats := Tfraats.Create(pCargaFrame);
  try
    fraats.CriaAcoesDeAcesso;
  finally
    fraats.Free;
  end;
end;

exports defineacesso, formuFrame;


procedure Tfraats.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfats ,uqtabelaatscodigo.AsString ,'');
end;

procedure Tfraats.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfats ,'' ,'');
end;

end.
