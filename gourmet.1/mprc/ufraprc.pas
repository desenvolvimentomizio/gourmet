unit ufraprc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs,  System.ImageList, Vcl.ImgList;

type
  Tfraprc = class(Tfrabase)
    uqtabelaprcchave: TIntegerField;
    uqtabelaprcpercentual: TFloatField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelaccgidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraprc: Tfraprc;

  // Início ID do Módulo fraprc
const
  vPlIdMd = '01.10.81.001-01';
  vPlTitMdl = 'Percentuais de Rateios para Centros de Custos';

  // Fim ID do Módulo fraprc

implementation

{$R *.dfm}

uses ufprc;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraprc := Tfraprc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraprc := Tfraprc.Create(pCargaFrame);
  try
    fraprc.CriaAcoesDeAcesso;
  finally
    fraprc.Free;
  end;
end;

exports formuFrame, defineacesso;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;

  fraprc := Tfraprc.Create(pCargaFrame);
  fraprc.vChaveMestre:= pCargaFrame.ChaveMestre;
  Result := fraprc;
end;

exports execute;

procedure Tfraprc.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfprc, uqtabelaprcchave.AsString, vChaveMestre);
end;

procedure Tfraprc.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfprc, '', vChaveMestre);
end;

procedure Tfraprc.Carregar;
begin
  if FormaFrame = ffDocado then
    if vChaveMestre <> '' then
    begin
      uqtabela.Filter := 'pcgcodigo=' + vChaveMestre;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

end.
