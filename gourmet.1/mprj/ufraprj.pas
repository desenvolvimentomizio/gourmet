unit ufraprj;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraprj = class(Tfrabase)
    uqtabelaprjcodigo: TIntegerField;
    uqtabelaprjidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fraprj: Tfraprj;

  // Início ID do Módulo fraprj
const
  vPlIdMd = '03.07.80.001-01';
  vPlTitMdl = 'Projetos';

  // Fim ID do Módulo fraprj

implementation

{$R *.dfm}

uses ufprj;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraprj := Tfraprj.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraprj := Tfraprj.Create(pCargaFrame);
  try
    fraprj.CriaAcoesDeAcesso;
  finally
    fraprj.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraprj.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfprj, uqtabelaprjcodigo.AsString, '');
end;

procedure Tfraprj.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfprj, '', '');
end;

end.
