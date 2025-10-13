unit ufrapps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfrapps = class(Tfrabase)
    uqtabelappscodigo: TStringField;
    uqtabelappsidentificacao: TStringField;
    uqtabelacpscodigo: TIntegerField;
    uqtabelacpsidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapps: Tfrapps;


  // Início ID do Módulo frapps
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Produtos para Substituição';

  // Fim ID do Módulo frapps


implementation

uses
  ufpps;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapps := Tfrapps.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapps := Tfrapps.Create(pCargaFrame);
  try
    frapps.CriaAcoesDeAcesso;
  finally
    frapps.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfrapps.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpps, uqtabelappscodigo.AsString, '');
end;

procedure Tfrapps.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpps, '', '');

end;

end.
