unit ufrabpa;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, System.Actions, uPegabase, Vcl.Mask, ufuncoes;

type
  Tfrabpa = class(Tfrabase)
    uqtabelabpacodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelagbpcodigo: TIntegerField;
    uqtabelabpaiidentificacao: TStringField;
    uqtabelabpadataaquis: TDateField;
    uqtabelabpavaloraquis: TFloatField;
    uqtabelabpamesesvida: TIntegerField;
    uqtabelabpavalorvenda: TFloatField;
    uqtabelabpalocal: TStringField;
    uqtabelaflacodigo: TIntegerField;
    pllinha1: TPanel;
    plTotalOriginal: TPanel;
    plTotalAtual: TPanel;
    uqtabeladepreciacao: TFloatField;
    uqtabelameses: TIntegerField;
    uqtabelavalorliquido: TFloatField;
    uqtabelaclbidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    procedure CalcularTotais;
  public
    { Public declarations }
  end;

var
  frabpa: Tfrabpa;

  // Início ID do Módulo frabpa
const
  vPlIdMd = '02.02.16.001-01';
  vPlTitMdl = 'Bens Patrimoniais';

  // Fim ID do Módulo frabpa

implementation

{$R *.dfm}

uses ufbpa;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabpa := Tfrabpa.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabpa := Tfrabpa.Create(pCargaFrame);
  try
    frabpa.CriaAcoesDeAcesso;
  finally
    frabpa.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabpa.ActAlterarExecute(Sender: TObject);
begin
  inherited;

  CriaFormulario(Tfbpa, uqtabelabpacodigo.AsString, '');

end;

procedure Tfrabpa.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  CalcularTotais;
end;

procedure Tfrabpa.CalcularTotais;
var
  vlTotalOri: double;
  vlTotalAtu: double;
  vlValorDepre: double;

  vlReg: Integer;

  YearI, MonthI, DayI: Word;
  YearF, MonthF, DayF: Word;
  ANO, MESES: Integer;

begin
  try
    self.uqtabela.DisableControls;
    if uqtabela.Active then
    begin
      vlReg := self.uqtabela.RecNo;
      uqtabela.First;
      vlTotalOri := 0;
      vlTotalAtu := 0;
      vlValorDepre := 0;
      while not uqtabela.Eof do
      begin
        vlTotalOri := vlTotalOri + uqtabelabpavaloraquis.AsCurrency;
        vlTotalAtu := vlTotalAtu + uqtabelavalorliquido.AsCurrency;

        uqtabela.Next;
      end;
      plTotalOriginal.Caption := 'Total Original R$: ' + FormatFloat('##,###,##0.00', vlTotalOri);
      plTotalAtual.Caption := 'Total Atual R$: ' + FormatFloat('##,###,##0.00', vlTotalAtu);

    end;
    self.uqtabela.RecNo := vlReg;
  finally
    self.uqtabela.EnableControls;
  end;
end;

procedure Tfrabpa.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfbpa, '', '');

end;

end.
