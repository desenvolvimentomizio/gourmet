unit ufrapcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Vcl.StdCtrls, Vcl.DBCtrls, VirtualTable,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.Graphics;

type
  Tfrapcc = class(Tfrabase)
    uqtabelapcccodigo: TStringField;
    uqtabelapccidentificacao: TStringField;
    uqtabelanpccodigo: TStringField;
    uqtabelatpccodigo: TStringField;
    uqtabelapccdescricao: TStringField;
    pccdescricao: TDBMemo;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frapcc: Tfrapcc;

  // Início ID do Módulo frapcc
const
  vPlIdMd = '02.02.16.015-01';
  vPlTitMdl = 'Plano de Contas Contábeis';

  // Fim ID do Módulo frapcc

implementation

{$R *.dfm}

uses ufpcc;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapcc := Tfrapcc.Create(pCargaFrame);
end;

exports formuFrame;

procedure Tfrapcc.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfpcc, self.uqtabelapcccodigo.AsString, '');
end;

procedure Tfrapcc.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpcc, '', '');
end;

end.
