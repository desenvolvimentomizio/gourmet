unit uframit;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tframit = class(Tfrabase)
    uqtabelamitcodigo: TIntegerField;
    uqtabelamitidentificacao: TStringField;
    uqtabelaecfcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framit: Tframit;

  // Início ID do Módulo framit
const
  vPlIdMd = '01.06.86.275-01';
  vPlTitMdl = 'Impressora';

  // Fim ID do Módulo framit

implementation

{$R *.dfm}

uses
  ufmit;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framit := Tframit.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framit := Tframit.Create(pCargaFrame);
  try
    framit.CriaAcoesDeAcesso;
  finally
    framit.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tframit.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmit, uqtabelamitcodigo.AsString, self.vChaveMestre);
end;

procedure Tframit.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmit, '', self.vChaveMestre);
end;

end.
