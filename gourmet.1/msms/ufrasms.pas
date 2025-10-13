unit ufrasms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrasms = class(Tfrabase)
    uqtabelasmschave: TIntegerField;
    uqtabelapsmchave: TIntegerField;
    uqtabelaetfcodigo: TIntegerField;
    uqtabelasmstexto: TStringField;
    uqtabelasmsretorno: TStringField;
    uqtabelasmsregistro: TDateTimeField;
    uqtabelasmsenvio: TDateTimeField;
    uqtabelaetftelefone: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frasms: Tfrasms;


  // Início ID do Módulo frasms
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Envio de SMSs';

  // Fim ID do Módulo frasms

implementation

uses
  ufsms;

{$R *.dfm}




function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasms := Tfrasms.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasms := Tfrasms.Create(pCargaFrame);
  try
    frasms.CriaAcoesDeAcesso;
  finally
    frasms.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfrasms.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfsms, '' ,vChaveMestre);
end;

procedure Tfrasms.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfsms, '' , vChaveMestre);
end;

end.
