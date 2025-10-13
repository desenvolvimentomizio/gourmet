unit ufrarcb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrarcb = class(Tfrabase)
    uqtabelarcbchave: TIntegerField;
    uqtabelarcbemissao: TDateField;
    uqtabelarcbvalor: TFloatField;
    uqtabelaetdpagador: TIntegerField;
    uqtabelaetdrecebedor: TIntegerField;
    uqtabelarcbhistorico: TStringField;
    uqtabelarcbsituacao: TIntegerField;
    uqtabelarecebedor: TStringField;
    uqtabelapagador: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarcb: Tfrarcb;

  // Início ID do Módulo frarcb
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Recibos';

  // Fim ID do Módulo frarcb

implementation

uses
  ufrcb;

{$R *.dfm}
function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarcb := Tfrarcb.Create(pCargaFrame);
end;
procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarcb := Tfrarcb.Create(pCargaFrame);
  try
    frarcb.CriaAcoesDeAcesso;
  finally
    frarcb.Free;
  end;
end;

exports formuFrame, defineacesso;





procedure Tfrarcb.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrcb, Self.uqtabelarcbchave.AsString, '');

end;

procedure Tfrarcb.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrcb, '', '');

end;

end.
