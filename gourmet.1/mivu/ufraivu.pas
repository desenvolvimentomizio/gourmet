unit ufraivu;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraivu = class(Tfrabase)
    uqtabelaivtchave: TIntegerField;
    uqtabelaspdexercicio: TIntegerField;
    uqtabelaspdchave: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaivtquantidade: TFloatField;
    uqtabelaivtvalor: TFloatField;
    uqtabelaivttotal: TFloatField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraivu: Tfraivu;

  // Início ID do Módulo fraivu
const
  vPlIdMd = '02.04.12.002-01';
  vPlTitMdl = 'Inventário Unificado';

  // Fim ID do Módulo fraivu

implementation

{$R *.dfm}

uses ufivu;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraivu := Tfraivu.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraivu := Tfraivu.Create(pCargaFrame);
  try
    fraivu.CriaAcoesDeAcesso;
  finally
    fraivu.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraivu.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfivu, uqtabelaivtchave.AsString, '');
end;

procedure Tfraivu.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfivu, '', '');
end;

end.
