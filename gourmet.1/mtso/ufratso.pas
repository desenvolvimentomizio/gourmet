unit ufratso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfratso = class(Tfrabase)
    uqtabelatsoemail: TStringField;
    uqtabelatsotelefone: TStringField;
    uqtabelatsoidentificacao: TStringField;
    uqtabelatsoempresa: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratso: Tfratso;

      // Início ID do Módulo fratso
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Contatos';

  // Fim ID do Módulo fratso


implementation

uses
  uftso;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratso := Tfratso.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratso := Tfratso.Create(pCargaFrame);
  try
    fratso.CriaAcoesDeAcesso;
  finally
    fratso.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfratso.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftso, uqtabelatsoemail.AsString, '');
end;

procedure Tfratso.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftso, '', '');
end;

end.
