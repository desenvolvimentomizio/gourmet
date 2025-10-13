unit ufragop;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfragop = class(Tfrabase)
    uqtabelagopchave: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelapronome: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelagopordem: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragop: Tfragop;

  // Início ID do Módulo fragop
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Ordem de Produtos para Cardápio';

  // Fim ID do Módulo fragop

implementation

uses
  ufgop;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragop := Tfragop.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragop := Tfragop.Create(pCargaFrame);
  try
    fragop.CriaAcoesDeAcesso;
  finally
    fragop.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragop.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfgop, uqtabelagopchave.AsString, '');
end;

procedure Tfragop.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgop, '', '');
end;

end.
