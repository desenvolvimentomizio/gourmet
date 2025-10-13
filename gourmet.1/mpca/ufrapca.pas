unit ufrapca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrapca = class(Tfrabase)
    uqtabelapcachave: TIntegerField;
    uqtabelapcaidentificacao: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapcatabela: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapca: Tfrapca;


      // Início ID do Módulo frapca
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tabelas Auxiliares';

  // Fim ID do Módulo frapca

implementation

uses
  ufpca;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapca := Tfrapca.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapca := Tfrapca.Create(pCargaFrame);
  try
    frapca.CriaAcoesDeAcesso;
  finally
    frapca.Free;
  end;
end;
exports defineacesso, formuFrame;



procedure Tfrapca.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfpca,  self.uqtabelapcachave.AsString,  vChaveMestre);
end;

procedure Tfrapca.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfpca,  '',  vChaveMestre);
end;

end.
