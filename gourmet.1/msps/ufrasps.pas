unit ufrasps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase, System.ImageList, Vcl.ImgList;

type
  Tfrasps = class(Tfrabase)
    uqtabelaspscodigo: TIntegerField;
    uqtabelauiscodigo: TStringField;
    uqtabelappscodigo: TStringField;
    uqtabelappsidentificacao: TStringField;
    uqtabelaufsnome: TStringField;
    uqtabelaufscodigo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frasps: Tfrasps;

  // Início ID do Módulo frasps
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ligação de Itens com Nível de Imposto';

  // Fim ID do Módulo frasps

implementation

uses
  ufsps;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasps := Tfrasps.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasps := Tfrasps.Create(pCargaFrame);
  try
    frasps.CriaAcoesDeAcesso;
  finally
    frasps.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrasps.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfsps, uqtabelaspscodigo.AsString, uqtabelauiscodigo.AsString);
end;

procedure Tfrasps.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfsps, '', uqtabelauiscodigo.AsString);

end;

end.
