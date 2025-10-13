unit ufragcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics,
  System.SysUtils, uPegaBase;

type
  Tfragcb = class(Tfrabase)
    uqtabelagcbcodigo: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelagcbcontato: TStringField;
    uqtabelagcbprevisao: TDateField;
    uqtabelagcbemissao: TDateField;
    uqtabelagcbobservacao: TStringField;
    DBGrfi: TDBGrid;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfidentificacao: TStringField;
    rfirfidtultbaixa: TDateField;
    rfirfibaixadocapital: TFloatField;
    rfirfisaldocapital: TFloatField;
    rfirfijuros: TFloatField;
    rfirfimulta: TFloatField;
    rfirfidesconto: TFloatField;
    rfirfisaldogeral: TFloatField;
    DSrfi: TUniDataSource;
    rfigcbcodigo: TIntegerField;
    rfirfidias: TIntegerField;
    GroupBox1: TGroupBox;
    gcbobservacao: TDBMemo;
    Panel1: TPanel;
    GroupBox6: TGroupBox;
    PlQtdeParce: TPanel;
    GroupBox4: TGroupBox;
    PlPrincipal: TPanel;
    GroupBox3: TGroupBox;
    PlDescont: TPanel;
    GroupBox7: TGroupBox;
    PlMultas: TPanel;
    GroupBox2: TGroupBox;
    PlJuros: TPanel;
    GroupBox5: TGroupBox;
    PlTot: TPanel;
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGrfiDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActSairExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure rfiAfterOpen(DataSet: TDataSet);
    procedure rfiAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;

  end;

var
  fragcb: Tfragcb;

  // Início ID do Módulo fragcb
const
  vPlIdMd = '02.02.15.008-01';
  vPlTitMdl = 'Gestão de Cobrança';

  // Fim ID do Módulo fragcb

implementation

{$R *.dfm}

uses ufgcb;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragcb := Tfragcb.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragcb := Tfragcb.Create(pCargaFrame);
  try
    fragcb.CriaAcoesDeAcesso;
  finally
    fragcb.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragcb.ActIncluirExecute(Sender: TObject);
begin
  criaformulario(Tfgcb, '', '');
end;

procedure Tfragcb.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(DBGrfi);
  inherited;
end;

procedure Tfragcb.Carregar;
begin
  inherited;

  CarregarColunas(DBGrfi);
end;

procedure Tfragcb.DBGrfiDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
      Font.Color := clBlack;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfragcb.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if uqtabela.IsEmpty then
  begin
    rfi.Close;
    Exit;
  end;

  rfi.Close;
  rfi.Params[0].AsInteger := uqtabelagcbcodigo.AsInteger;
  rfi.Open;
end;

procedure Tfragcb.rfiAfterClose(DataSet: TDataSet);
begin
  inherited;
  PlQtdeParce.Caption := '0';
  PlPrincipal.Caption := '0,00';
  PlDescont.Caption := '0,00';
  PlMultas.Caption := '0,00';
  PlJuros.Caption := '0,00';
  PlTot.Caption := '0,00';
end;

procedure Tfragcb.rfiAfterOpen(DataSet: TDataSet);
var
  vlPrincipal: Double;
  vlDescont: Double;
  vlMultas: Double;
  vlJuros: Double;
  vlTot: Double;
begin
  inherited;
  vlPrincipal := 0;
  vlDescont := 0;
  vlMultas := 0;
  vlJuros := 0;
  vlTot := 0;

  rfi.DisableControls;
  try
    rfi.First;
    while not rfi.Eof do
    begin
      vlPrincipal := vlPrincipal + rfirfisaldocapital.AsFloat;
      vlMultas := vlMultas + rfirfimulta.AsFloat;
      vlJuros := vlJuros + rfirfijuros.AsFloat;
      vlDescont := vlDescont + rfirfidesconto.AsFloat;
      vlTot := vlTot + rfirfisaldogeral.AsFloat;

      rfi.Next;
    end;

    rfi.First;

    PlQtdeParce.Caption := IntToStr(rfi.RecordCount);
    PlPrincipal.Caption := FormatFloat('#,###,##0.00', vlPrincipal);
    PlMultas.Caption := FormatFloat('#,###,##0.00', vlMultas);
    PlJuros.Caption := FormatFloat('#,###,##0.00', vlJuros);
    PlDescont.Caption := FormatFloat('#,###,##0.00', vlDescont);
    PlTot.Caption := FormatFloat('#,###,##0.00', vlTot);
  finally
    rfi.EnableControls;
  end;
end;

end.
