unit ufrahrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrahrf = class(Tfrabase)
    uqtabelahrfchave: TIntegerField;
    uqtabelaphgcodigo: TIntegerField;
    uqtabelaphgidentificacao: TStringField;
    uqtabelapcgcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frahrf: Tfrahrf;

const
  vPlIdMd = '';
  vPlTitMdl = 'Históricos de Receitas';

implementation

uses
  ufhrf;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frahrf := Tfrahrf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frahrf := Tfrahrf.Create(pCargaFrame);
  try
    frahrf.CriaAcoesDeAcesso;
  finally
    frahrf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrahrf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfhrf, uqtabelahrfchave.AsString, vchavemestre);

end;

procedure Tfrahrf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfhrf, '',vchavemestre);
end;

end.
