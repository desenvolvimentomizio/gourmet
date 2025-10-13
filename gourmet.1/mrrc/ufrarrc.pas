unit ufrarrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrarrc = class(Tfrabase)
    uqtabelarrcchave: TIntegerField;
    uqtabelarrcdata: TDateField;
    uqtabelarrcvalor: TFloatField;
    uqtabelaadcidentificacao: TStringField;
    uqtabelacedidentificacao: TStringField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelarrcregistro: TDateTimeField;
    uqtabelarrcnumero: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarrc: Tfrarrc;

implementation

uses
  ufrrc;

{$R *.dfm}

  // Início ID do Módulo frarrc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Recebimentos de Cartões';

  // Fim ID do Módulo frarrc


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarrc := Tfrarrc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarrc := Tfrarrc.Create(pCargaFrame);
  try
    frarrc.CriaAcoesDeAcesso;
  finally
    frarrc.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfrarrc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfrrc, self.uqtabelarrcchave.AsString, '');

end;

procedure Tfrarrc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrrc, '', '');

end;

end.
