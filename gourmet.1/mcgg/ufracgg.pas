unit ufracgg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfracgg = class(Tfrabase)
    uqtabelacggcodigo: TIntegerField;
    uqtabelacggidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracgg: Tfracgg;

  // Início ID do Módulo fracgg
const
  vPlIdMd = '01.10.16.001-01';
  vPlTitMdl = 'Agrupamento Contábil';

  // Fim ID do Módulo fracgg

implementation

{$R *.dfm}

uses ufcgg;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracgg := Tfracgg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracgg := Tfracgg.Create(pCargaFrame);
  try
    fracgg.CriaAcoesDeAcesso;
  finally
    fracgg.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracgg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcgg, uqtabelacggcodigo.AsString, '');
end;

procedure Tfracgg.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcgg, '', '');
end;

end.
