unit ufrafct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafct = class(Tfrabase)
    uqtabelafctchave: TIntegerField;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafct: Tfrafct;

  // Início ID do Módulo fratog
const
  vPlIdMd = '03.06.81.011-01';
  vPlTitMdl = 'Contas para Folha Gerencial';

  // Fim ID do Módulo fratog

implementation

uses
  uffct;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafct := Tfrafct.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafct := Tfrafct.Create(pCargaFrame);
  try
    frafct.CriaAcoesDeAcesso;
  finally
    frafct.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafct.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffct, uqtabelafctchave.AsString, '');
end;

procedure Tfrafct.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffct, '', '');
end;

end.
