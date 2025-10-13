unit ufraanf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegabase;

type
  Tfraanf = class(Tfrabase)
    uqtabelaanfcodigo: TIntegerField;
    uqtabelaanfidentificacao: TStringField;
    uqtabelaanfpercentual: TFloatField;
    uqtabelaevfcodigo: TIntegerField;
    uqtabelaevfidentificacao: TStringField;
    uqtabelaphgcodigo: TIntegerField;
    uqtabelaphgidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraanf: Tfraanf;


  // Início ID do Módulo fraanf
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Adicionais por Capacitação';

  // Fim ID do Módulo fraanf

implementation

uses
  ufanf;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraanf := Tfraanf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraanf := Tfraanf.Create(pCargaFrame);
  try
    fraanf.CriaAcoesDeAcesso;
  finally
    fraanf.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfraanf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfanf ,uqtabelaanfcodigo.AsString ,'');
end;

procedure Tfraanf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfanf ,'' ,'');
end;

end.
