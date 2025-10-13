unit ufradsr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfradsr = class(Tfrabase)
    uqtabeladsrcodigo: TIntegerField;
    uqtabeladsridentificacao: TStringField;
    uqtabeladsrprocedimento: TStringField;
    uqtabelaevfcodigo: TIntegerField;
    uqtabelaphgcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fradsr: Tfradsr;



      // Início ID do Módulo fradsr
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Descanso Semanal Remunerado';

  // Fim ID do Módulo fradsr


implementation

uses
  ufdsr;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradsr := Tfradsr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradsr := Tfradsr.Create(pCargaFrame);
  try
    fradsr.CriaAcoesDeAcesso;
  finally
    fradsr.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfradsr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfdsr, uqtabeladsrcodigo.AsString,'');
end;

procedure Tfradsr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfdsr,  '','');

end;

end.
