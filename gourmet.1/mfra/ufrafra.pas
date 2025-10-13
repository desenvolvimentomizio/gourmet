unit ufrafra;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, uPegaBase;

type
  Tfrafra = class(Tfrabase)
    uqtabelafracodigo: TIntegerField;
    uqtabelafraidentificacao: TStringField;
    uqtabelafraidmd: TStringField;
    uqtabelafranome: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafra: Tfrafra;

  // Início ID do Módulo frafra
const
  vPlIdMd = '03.07.81.001-01';
  vPlTitMdl = 'Cadastro de Módulos';

  // Fim ID do Módulo frafra

implementation

uses
  uffra;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafra := Tfrafra.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafra := Tfrafra.Create(pCargaFrame);
  try
    frafra.CriaAcoesDeAcesso;
  finally
    frafra.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafra.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffra, uqtabelafracodigo.AsString, '');
end;

procedure Tfrafra.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffra, '', '');
end;

end.
