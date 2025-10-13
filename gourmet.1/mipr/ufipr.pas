unit ufipr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase,
  Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.Math, uFuncoes;

type
  Tfipr = class(Tfrmbase)
    registroiprcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registroiprimpostovenda: TFloatField;
    registroiprcomissaovenda: TFloatField;
    registroiprcustooperacional: TFloatField;
    registroiprfretevendas: TFloatField;
    registroiprtaxajuros: TFloatField;
    registroiprinadimplenciaclientes: TFloatField;
    Label1: TLabel;
    iprcodigo: TDBEdit;
    Label2: TLabel;
    flacodigo: TDBEdit;
    Label3: TLabel;
    iprimpostovenda: TDBEdit;
    Label4: TLabel;
    iprcomissaovenda: TDBEdit;
    Label5: TLabel;
    iprcustooperacional: TDBEdit;
    Label6: TLabel;
    iprfretevendas: TDBEdit;
    Label7: TLabel;
    iprtaxajuros: TDBEdit;
    Label8: TLabel;
    iprinadimplenciaclientes: TDBEdit;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    PnlLucroLiq: TPanel;
    PnlMargemLucroLiq: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ValidaPercentual(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    FLucroLiqAceitavel: Extended;
    procedure SetLucroLiqAceitavel(const Value: Extended);
    procedure SomaIndices;
    { Private declarations }

  published
    property LucroLiqAceitavel: Extended read FLucroLiqAceitavel write SetLucroLiqAceitavel;
  public
    { Public declarations }
  end;

var
  fipr: Tfipr;

implementation

{$R *.dfm}

procedure Tfipr.bconfirmaClick(Sender: TObject);
begin
  if LucroLiqAceitavel < 0 then
  begin
    Application.MessageBox(PChar('A Margem de Lucro Líquida não pode ser menor que zero.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;

end;

procedure Tfipr.FormShow(Sender: TObject);
begin
  (* Definição da Altura e Largura inícial do formulário *)
  Self.Height := 350;
  Self.Width := 500;

  inherited;

  flacodigo.Enabled := False;
  flacodigo.Color := PEG_COR_VALORPADRAO;

  SomaIndices;
end;

procedure Tfipr.SetLucroLiqAceitavel(const Value: Extended);
begin
  FLucroLiqAceitavel := Value;

  PnlMargemLucroLiq.Caption := FormatFloat('##0.00 %', FLucroLiqAceitavel);

  if InRange(FLucroLiqAceitavel, 0, 99.99) then
  begin
    PnlMargemLucroLiq.Color := $00C08000;
    PnlMargemLucroLiq.Font.Color := clWhite;
  end
  else
  begin
    PnlMargemLucroLiq.Color := clWhite;
    PnlMargemLucroLiq.Font.Color := clRed;
  end;
end;

procedure Tfipr.SomaIndices;
var
  vlTotalIndices: Extended;
begin
  vlTotalIndices := registroiprimpostovenda.AsFloat + { }
    registroiprcomissaovenda.AsFloat + { }
    registroiprcustooperacional.AsFloat + { }
    registroiprfretevendas.AsFloat + { }
    registroiprtaxajuros.AsFloat + { }
    registroiprinadimplenciaclientes.AsFloat;

  LucroLiqAceitavel := 99.99 - vlTotalIndices;
end;

procedure Tfipr.ValidaPercentual(Sender: TObject);
begin
  if ActiveControl = bcancela then
    Exit;

  ValidaSaida(Sender);

  if TDBEdit(Sender).Field.IsNull then
  begin
    TDBEdit(Sender).SetFocus;
    Exit;
  end;

  if not InRange(TDBEdit(Sender).Field.AsFloat, 0, 100) then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    TDBEdit(Sender).SetFocus;
    Exit;
  end;

  SomaIndices;
end;

end.
