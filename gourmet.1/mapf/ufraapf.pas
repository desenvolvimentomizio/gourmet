unit ufraapf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, System.ImageList, Vcl.ImgList;

type
  Tfraapf = class(Tfrabase)
    uqtabelaapfchave: TIntegerField;
    uqtabelaapfdatafinal: TDateField;
    uqtabelaapfagrupamento: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    uqtabeladmcidentificacao: TStringField;
    uqtabelaapfdatainicial: TDateField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraapf: Tfraapf;

  // Início ID do Módulo fraapf
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Apurações Financeiras';

  // Fim ID do Módulo fraapf


implementation

uses
  ufapf;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraapf := Tfraapf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraapf := Tfraapf.Create(pCargaFrame);
  try
    fraapf.CriaAcoesDeAcesso;
  finally
    fraapf.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfraapf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfapf, uqtabelaapfchave.AsString, '');
end;

procedure Tfraapf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfapf, '', '');
end;

end.
