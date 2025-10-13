unit ufragra;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfragra = class(Tfrabase)
    uqtabelagracodigo: TIntegerField;
    uqtabelagraidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragra: Tfragra;

  // Início ID do Módulo fragra
const
  vPlIdMd = '01.04.05.003-01';
  vPlTitMdl = 'Grade de Produtos';

  // Fim ID do Módulo fragra

implementation

{$R *.dfm}

uses
  ufgra;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragra := Tfragra.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragra := Tfragra.Create(pCargaFrame);
  try
    fragra.CriaAcoesDeAcesso;
  finally
    fragra.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragra.ActAlterarExecute(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT gracodigo FROM pro WHERE pro.gracodigo = ' + uqtabelagracodigo.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Esta Grade não pode ser alterada,' + #13 + 'pois possui produtos cadastrados!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfgra, self.uqtabelagracodigo.AsString, '');
end;

procedure Tfragra.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgra, '', '');
end;

end.
