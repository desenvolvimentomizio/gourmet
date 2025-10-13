unit ufrabpl;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, uPegaBase, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrabpl = class(Tfrabase)
    uqtabelabplcodigo: TIntegerField;
    uqtabelabplidentificacao: TStringField;
    uqtabelabplnomearq: TStringField;
    uqtabelabplfranome: TStringField;
    uqtabelabplfuncao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabpl: Tfrabpl;

  // Início ID do Módulo frabpl
const
  vPlIdMd = '03.07.80.013-01';
  vPlTitMdl = 'Arquivos de Módulos';

  // Fim ID do Módulo frabpl
implementation

uses
  ufbpl;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabpl := Tfrabpl.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabpl := Tfrabpl.Create(pCargaFrame);
  try
    frabpl.CriaAcoesDeAcesso;
  finally
    frabpl.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabpl.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbpl, uqtabelabplcodigo.AsString, '');
end;

procedure Tfrabpl.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbpl, '', '');
end;

end.
