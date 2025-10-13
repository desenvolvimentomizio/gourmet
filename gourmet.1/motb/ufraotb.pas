unit ufraotb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraotb = class(Tfrabase)
    uqtabelaotbcodigo: TIntegerField;
    uqtabelaotbidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraotb: Tfraotb;

  // Início ID do Módulo fraotb
const
  vPlIdMd = '01.11.20.003-01';
  vPlTitMdl = 'Operações Tributárias';

  // Fim ID do Módulo fraotb

implementation

{$R *.dfm}

uses ufotb;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraotb := Tfraotb.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraotb := Tfraotb.Create(pCargaFrame);
  try
    fraotb.CriaAcoesDeAcesso;
  finally
    fraotb.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraotb.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfotb, self.uqtabelaotbcodigo.AsString, '');
end;

procedure Tfraotb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfotb, '', '');
end;

end.
