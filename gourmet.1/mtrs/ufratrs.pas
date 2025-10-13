unit ufratrs;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, ACBrBase, ACBrValidador, VirtualTable,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
   System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfratrs = class(Tfrabase)
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetddoc1: TStringField;
    uqtabelaetftelefone: TStringField;
    uqtabelatpecodigo: TIntegerField;
    ACBrValidador: TACBrValidador;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Carregar; override;
    { Public declarations }
  end;

var
  fratrs: Tfratrs;

  // Início ID do Módulo fratrs
const
  vPlIdMd = '01.01.04.001-01';
  vPlTitMdl = 'Transportadores';

  // Fim ID do Módulo fratrs

implementation

{$R *.dfm}

uses uftrs;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratrs := Tfratrs.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratrs := Tfratrs.Create(pCargaFrame);
  try
    fratrs.CriaAcoesDeAcesso;
  finally
    fratrs.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratrs.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftrs, self.uqtabelaetdcodigo.AsString, '');
end;

procedure Tfratrs.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftrs, '', '');
end;

procedure Tfratrs.Carregar;
begin

  inherited;

  if (PlBotaoFiltroEsp.FindComponent('bActNormal') is tCheckBox) then
    if (PlBotaoFiltroEsp.FindComponent('bActNormal') as tCheckBox).Checked = False then
      (PlBotaoFiltroEsp.FindComponent('bActNormal') as tCheckBox).Checked := true;

end;

end.
