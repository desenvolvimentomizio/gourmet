unit ufrabpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfrabpr = class(Tfrabase)
    uqtabelabprchave: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaunicodigo: TIntegerField;
    uqtabelauninome: TStringField;
    uqtabelaunisimbolo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabpr: Tfrabpr;

  // Início ID do Módulo frabpr
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Produtos Com Bordas';

  // Fim ID do Módulo frabpr

implementation

uses
  ufbpr;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabpr := Tfrabpr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabpr := Tfrabpr.Create(pCargaFrame);
  try
    frabpr.CriaAcoesDeAcesso;
  finally
    frabpr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabpr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbpr, uqtabelabprchave.AsString, '');
end;

procedure Tfrabpr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbpr, '', '');
end;

end.
