unit ufrartb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrartb = class(Tfrabase)
    uqtabelaufsori: TStringField;
    uqtabelaufsdes: TStringField;
    uqtabelaflaidentificacao: TStringField;
    uqtabelatrbidentificacao: TStringField;
    uqtabelartbcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frartb: Tfrartb;

  // Início ID do Módulo frartb
const
  vPlIdMd = '01.11.20.001-01';
  vPlTitMdl = 'Regras Tributárias';

  // Fim ID do Módulo frartb

implementation

{$R *.dfm}

uses ufrtb;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frartb := Tfrartb.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frartb := Tfrartb.Create(pCargaFrame);
  try
    frartb.CriaAcoesDeAcesso;
  finally
    frartb.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrartb.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfrtb, self.uqtabelartbcodigo.AsString, '');
end;

procedure Tfrartb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfrtb, '', '');
end;

end.
