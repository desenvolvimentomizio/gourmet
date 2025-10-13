unit ufraatr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraatr = class(Tfrabase)
    uqtabelaatrcodigo: TIntegerField;
    uqtabelaatridentificacao: TStringField;
    uqtabelaatrabreviatura: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraatr: Tfraatr;

  // Início ID do Módulo fraatr
const
  vPlIdMd = '01.04.05.001-01';
  vPlTitMdl = 'Atributos da Grade de Produtos';

  // Fim ID do Módulo fraatr

implementation

{$R *.dfm}

uses
  ufatr;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraatr := Tfraatr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraatr := Tfraatr.Create(pCargaFrame);
  try
    fraatr.CriaAcoesDeAcesso;
  finally
    fraatr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraatr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfatr, self.uqtabelaatrcodigo.AsString, '');
end;

procedure Tfraatr.ActExcluirExecute(Sender: TObject);
begin
  inherited;
{}
end;

procedure Tfraatr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfatr, '', '');
end;

end.
