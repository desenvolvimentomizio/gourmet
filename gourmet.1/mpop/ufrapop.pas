unit ufrapop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrapop = class(Tfrabase)
    uqtabelapopchave: TIntegerField;
    uqtabelaogeano: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgestrutural: TStringField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelapoppercentual: TFloatField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapop: Tfrapop;


const
  vPlIdMd = '';
  vPlTitMdl = 'Percentual de Limite';

implementation

uses
  ufpop;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapop := Tfrapop.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapop := Tfrapop.Create(pCargaFrame);
  try
    frapop.CriaAcoesDeAcesso;
  finally
    frapop.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrapop.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfpop, uqtabelapopchave.AsString, vChaveMestre);
end;

procedure Tfrapop.ActIncluirExecute(Sender: TObject);
begin
  inherited;
      CriaFormulario(Tfpop, '', vChaveMestre);
end;

end.
