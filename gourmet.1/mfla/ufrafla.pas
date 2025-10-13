unit ufrafla;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafla = class(Tfrabase)
    uqtabelaflacodigo: TIntegerField;
    uqtabelaflaidentificacao: TStringField;
    uqtabelaflasigla: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    cfgmcfg: TAction;
    ActIndicePreco: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure cfgmcfgExecute(Sender: TObject);
    procedure ActIndicePrecoExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafla: Tfrafla;

  // Início ID do Módulo frafla
const
  vPlIdMd = '01.01.06.002-01';
  vPlTitMdl = 'Filiais';

  // Fim ID do Módulo frafla

implementation

{$R *.dfm}

uses
  uffla;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafla := Tfrafla.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafla := Tfrafla.Create(pCargaFrame);
  try
    frafla.CriaAcoesDeAcesso;
  finally
    frafla.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafla.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffla, self.uqtabelaflacodigo.AsString, '');
end;

procedure Tfrafla.cfgmcfgExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  MostraFormu('mcfg', '', uqtabelaflacodigo.AsString)
end;

procedure Tfrafla.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffla, '', '');
end;

procedure Tfrafla.ActIndicePrecoExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  MostraLista('mipr', '', uqtabelaflacodigo.AsString);
end;

end.
