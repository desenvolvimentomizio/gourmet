unit ufradep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfradep = class(Tfrabase)
    uqtabeladepchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabeladepidentificacao: TStringField;
    uqtabeladepdatanascimento: TDateField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelagpaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fradep: Tfradep;

  // Início ID do Módulo fradep
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Dependentes';

  // Fim ID do Módulo fradep

implementation

uses
  ufdep;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradep := Tfradep.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradep := Tfradep.Create(pCargaFrame);
  try
    fradep.CriaAcoesDeAcesso;
  finally
    fradep.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfradep.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdep, uqtabeladepchave.asstring, '');
end;

procedure Tfradep.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdep, '', '');
end;

end.
