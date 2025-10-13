unit ufratai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList, uPegaBase,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfratai = class(Tfrabase)
    uqtabelataichave: TIntegerField;
    uqtabelataiiniciovalidade: TDateField;
    uqtabelataifinalvalidade: TDateField;
    uqtabelataialiquota: TFloatField;
    uqtabelaufscodigoorigem: TStringField;
    uqtabelaufscodigodestino: TStringField;
    ufs: TUniQuery;
    ufsufscodigo: TStringField;
    ufsufsnome: TStringField;
    uqtabelaufsufsnomeorigem: TStringField;
    uqtabelaufsufsnomedestino: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratai: Tfratai;

implementation

uses
  uftai;

{$R *.dfm}


  // Início ID do Módulo fratai
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Aliquota de ICM para Estados';

  // Fim ID do Módulo fratai



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratai := Tfratai.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratai := Tfratai.Create(pCargaFrame);
  try
    fratai.CriaAcoesDeAcesso;
  finally
    fratai.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfratai.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftai, uqtabelataichave.AsString, '');
end;

procedure Tfratai.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftai, '', '');
end;

end.
