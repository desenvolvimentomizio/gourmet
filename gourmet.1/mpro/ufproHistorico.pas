unit ufproHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Uni,
  Data.DB, Vcl.Grids, Vcl.DBGrids, DBAccess, MemDS, Vcl.DBCtrls, uFuncoes;

type
  TfproHistorico = class(TForm)
    plTitulo: TPanel;
    plsaidas: TPanel;
    plEntradas: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    vnd: TUniQuery;
    vndmeschave: TIntegerField;
    vndmesregistro: TDateField;
    vnditmquantidade: TFloatField;
    vndetdidentificacao: TStringField;
    vnditmvalor: TFloatField;
    vnditmtotal: TFloatField;
    dsvnd: TUniDataSource;
    vndmesnumero: TIntegerField;
    plvendas: TPanel;
    DBGridVendas: TDBGrid;
    Panel1: TPanel;
    ajuvnd: TUniQuery;
    dsajuvnd: TUniDataSource;
    plAjustevendas: TPanel;
    DBGridAjusteVendas: TDBGrid;
    Panel3: TPanel;
    ajuvndmeschave: TIntegerField;
    ajuvndmesregistro: TDateField;
    ajuvnditmquantidade: TFloatField;
    ajuvndetdidentificacao: TStringField;
    ajuvnditmvalor: TFloatField;
    ajuvnditmtotal: TFloatField;
    ajuvndmesnumero: TIntegerField;
    ajuvnditmchave: TIntegerField;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridCompras: TDBGrid;
    Panel6: TPanel;
    cpr: TUniQuery;
    cprmeschave: TIntegerField;
    cprmesregistro: TDateField;
    cpritmquantidade: TFloatField;
    cpretdidentificacao: TStringField;
    cpritmvalor: TFloatField;
    cpritmtotal: TFloatField;
    cprmesnumero: TIntegerField;
    dscpr: TUniDataSource;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    Panel7: TPanel;
    Dpro: TDataSource;
    procodigo: TDBText;
    pronome: TDBText;
    plTotaisSaidas: TPanel;
    plTotaisEntradas: TPanel;
    plTotalSaida: TPanel;
    plTotalEntrada: TPanel;
    ajucpr: TUniQuery;
    Dajucpr: TDataSource;
    procedure FormResize(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
  private
    { Private decla rations }
    FZCone: TUniConnection;
    procedure SetZCone(const Value: TUniConnection);

  public
    { Public declarations }
  published
    property ZCone: TUniConnection read FZCone write SetZCone;

  end;

var
  fproHistorico: TfproHistorico;

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure TfproHistorico.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfproHistorico.FormResize(Sender: TObject);
begin
  plEntradas.Height := Trunc(((self.Height - ((plTitulo.Height + (pbotoes.Height + plTotaisSaidas.Height + plTotaisEntradas.Height)))) / 2) - 5);
  plsaidas.Height := Trunc(((self.Height - ((plTitulo.Height + (pbotoes.Height + plTotaisSaidas.Height + plTotaisEntradas.Height)))) / 2) - 5);

end;

procedure TfproHistorico.SetZCone(const Value: TUniConnection);
var
  i: Integer;
begin
  FZCone := Value;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TUniQuery then
      (self.Components[i] as TUniQuery).Connection := self.ZCone;
  end;
end;

end.
