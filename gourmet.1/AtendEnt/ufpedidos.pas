unit ufpedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,ufuncoes;

type
  Tfpedidos = class(TForm)
    plRodaPe: TPanel;
    GBUtilitarios: TGroupBox;
    sbAtualizar: TSpeedButton;
    sbVoltaVenda: TSpeedButton;
    GBFuncoes: TGroupBox;
    SBDescontoGeral: TSpeedButton;
    SBFinalizaVenda: TSpeedButton;
    SBAFaturar: TSpeedButton;
    SBSair: TSpeedButton;
    listaOrcs: TDBGrid;
    dsOrcs: TUniDataSource;
    orcs: TUniQuery;
    orcsorcchave: TIntegerField;
    orcsorcdataabert: TDateField;
    orcsorchoraabert: TTimeField;
    orcsorcdataencerr: TDateField;
    orcsorchoraencerr: TTimeField;
    orcsetdcodigo: TIntegerField;
    orcsetdidentificacao: TStringField;
    orcsorcgeral: TFloatField;
    orcsorcdesconto: TFloatField;
    orcsorctotal: TFloatField;
    orcsclbidentificacao: TStringField;
    orcsorcobs: TStringField;
    orcsorcnome: TStringField;
    orcsorcendereco: TStringField;
    orcsorctelefone: TStringField;
    orcspuocodigo: TIntegerField;
    orcsedrbairro: TStringField;
    orcsedrendereco: TStringField;
    orcspdghoraentrega: TStringField;
    orcsorcdescrpagto: TStringField;
    orcspdgnumero: TStringField;
    orcsetdidentificacaoent: TStringField;
    orcsorcdataentrega: TDateField;
    orcsorchoraentrega: TTimeField;
    spFinalizarPedido: TSpeedButton;
    spdreimprimir: TSpeedButton;
    consulta: TUniQuery;
    procedure SBSairClick(Sender: TObject);
    procedure sbAtualizarClick(Sender: TObject);
    procedure spdreimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpedidos: Tfpedidos;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure Tfpedidos.sbAtualizarClick(Sender: TObject);
begin
  if not orcs.Active then
  begin
    orcs.Open;

  end;

  orcs.Refresh;


end;

procedure Tfpedidos.SBSairClick(Sender: TObject);
begin
close;
end;

procedure Tfpedidos.spdreimprimirClick(Sender: TObject);
var
  vDirRelat: String;
  i:integer;
  vlOrcChave:string;
begin
  vlOrcChave:=orcsorcchave.AsString;
  consulta.Connection:=fprincient.Conexao;
  consulta.Close;
  consulta.SQL.Text:='select orcvias from orc where orcchave='+vlOrcChave;
  consulta.Open;

  for i := 1 to consulta.FieldByName('orcvias').AsInteger do
  begin
  vDirRelat := Extractfilepath(Application.ExeName) + 'report\ComprovanteDELIVERY.fr3';
  ImprimirComprovantesOrc(Application, FprinciEnt.conexao, vlOrcChave, vDirRelat, FprinciEnt.trmtciporta.AsString, tiImprimir);
  end;
end;

end.
