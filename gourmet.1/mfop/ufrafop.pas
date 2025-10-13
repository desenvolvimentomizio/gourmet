unit ufrafop;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, System.Actions, Vcl.Mask, Vcl.DBCtrls, uPegaBase;

type
  Tfrafop = class(Tfrabase)
    uqtabelafopcodigo: TIntegerField;
    uqtabelafopidentificacao: TStringField;
    uqtabelafopjuros: TFloatField;
    uqtabelafopdesc: TFloatField;
    uqtabelafoppercentra: TFloatField;
    uqtabelafopnumparc: TIntegerField;
    uqtabelafopintervalo: TIntegerField;
    uqtabelatfpcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafop: Tfrafop;

  // Início ID do Módulo frafop
const
  vPlIdMd = '02.04.80.004-01';
  vPlTitMdl = 'Formas de Pagamento';

  // Fim ID do Módulo frafop

implementation

{$R *.dfm}

uses uffop;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafop := Tfrafop.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafop := Tfrafop.Create(pCargaFrame);
  try
    frafop.CriaAcoesDeAcesso;
  finally
    frafop.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafop.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffop, self.uqtabelafopcodigo.AsString, '');

end;

procedure Tfrafop.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffop, '', '');
end;

end.
