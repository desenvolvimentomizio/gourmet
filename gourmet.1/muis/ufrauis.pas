unit ufrauis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfrauis = class(Tfrabase)
    uqtabelauiscodigo: TStringField;
    uqtabelauispercentual: TFloatField;
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
  frauis: Tfrauis;

  // Início ID do Módulo frauis
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Percentual de Impostos';

  // Fim ID do Módulo frauis

implementation

uses
  ufuis;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frauis := Tfrauis.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frauis := Tfrauis.Create(pCargaFrame);
  try
    frauis.CriaAcoesDeAcesso;
  finally
    frauis.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrauis.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfuis, uqtabelauiscodigo.AsString, '');
end;

procedure Tfrauis.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfuis, '', '');
end;

end.
