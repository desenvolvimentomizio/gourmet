unit ufratsi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfratsi = class(Tfrabase)
    uqtabelatsicodigo: TIntegerField;
    uqtabelatsiidentificacao: TStringField;
    uqtabelattscodigo: TIntegerField;
    uqtabelattsidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratsi: Tfratsi;

  // Início ID do Módulo fratsi
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Níveis de Variação';

  // Fim ID do Módulo fratsi

implementation

uses
  uftsi;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratsi := Tfratsi.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratsi := Tfratsi.Create(pCargaFrame);
  try
    fratsi.CriaAcoesDeAcesso;
  finally
    fratsi.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratsi.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftsi, uqtabelatsicodigo.AsString, '');
end;

procedure Tfratsi.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftsi, '', '');
end;

end.
