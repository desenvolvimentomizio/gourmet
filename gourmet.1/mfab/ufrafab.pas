unit ufrafab;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafab = class(Tfrabase)
    uqtabelafabcodigo: TIntegerField;
    uqtabelafabidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafab: Tfrafab;

  // Início ID do Módulo frafab
const
  vPlIdMd = '01.01.05.011-01';
  vPlTitMdl = 'Fabricantes';

  // Fim ID do Módulo frafab

implementation

{$R *.dfm}

uses uffab;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafab := Tfrafab.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafab := Tfrafab.Create(pCargaFrame);
  try
    frafab.CriaAcoesDeAcesso;
  finally
    frafab.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafab.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffab, self.uqtabelafabcodigo.AsString, '');
end;

procedure Tfrafab.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffab, '', '');
end;

end.
