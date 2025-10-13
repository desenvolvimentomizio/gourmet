unit ufrarng;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList;

type
  Tfrarng = class(Tfrabase)
    uqtabelarngchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaltechave: TIntegerField;
    uqtabelarngregistro: TDateTimeField;
    DBGrid1: TDBGrid;
    PlDetalhe: TPanel;
    GroupBox1: TGroupBox;
    PlTot: TPanel;
    GroupBox2: TGroupBox;
    PlJuros: TPanel;
    GroupBox7: TGroupBox;
    PlMultas: TPanel;
    GroupBox3: TGroupBox;
    PlDescont: TPanel;
    GroupBox4: TGroupBox;
    PlPrincipal: TPanel;
    GroupBox6: TGroupBox;
    PlQtdeRest: TPanel;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    rfi: TUniQuery;
    rfiGer: TUniQuery;
    rfirfichave: TIntegerField;
    rfirfinumero: TStringField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfibaixadocapital: TFloatField;
    rfirfidesconto: TFloatField;
    rfirfimulta: TFloatField;
    rfisaldogeral: TFloatField;
    rfirfisaldogeral: TFloatField;
    DSrfi: TUniDataSource;
    DSrfiGer: TUniDataSource;
    rfiGerrfichave: TIntegerField;
    rfiGerrfinumero: TStringField;
    rfiGerrfiemissao: TDateField;
    rfiGerrfivencimento: TDateField;
    rfiGerrfisaldocapital: TFloatField;
    rfiGerrfidesconto: TFloatField;
    rfiGerrfimulta: TFloatField;
    rfiGerrfijuros: TFloatField;
    rfiGerrfisaldogeral: TFloatField;
    Splitter1: TSplitter;
    rfiTotais: TUniQuery;
    rfiTotaisrfibaixadocapital: TFloatField;
    rfiTotaisrfimulta: TFloatField;
    rfiTotaisrfijuros: TFloatField;
    rfiTotaisrfidesconto: TFloatField;
    rfiTotaisrfisaldogeral: TFloatField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    FTfdCodigo: Integer;
    procedure SetTfdCodigo(const Value: Integer);
    { Private declarations }
  published
    property TfdCodigo: Integer read FTfdCodigo write SetTfdCodigo;
  public
    { Public declarations }
  end;

var
  frarng: Tfrarng;

  // Início ID do Módulo frarng
const
  vPlIdMd = '02.02.15.009-01';
  vPlTitMdl = 'Renegociação de Parcelas';

  // Fim ID do Módulo frarng

implementation

{$R *.dfm}

uses ufrng;

procedure Tfrarng.ActIncluirExecute(Sender: TObject);
begin
{  zcone.StartTransaction;
  if CriaFormulario(Tfrng, '', IntToStr(TfdCodigo)) then
    zcone.Connect
  else
    zcone.Rollback;}


CriaFormulario(Tfrng, '', IntToStr(TfdCodigo));

end;





procedure Tfrarng.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrarng.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrarng.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if uqtabela.IsEmpty then
    Exit;

  rfi.Close;
  rfi.Params[0].AsInteger := uqtabelarngchave.AsInteger;
  rfi.Open;

  rfiGer.Close;
  rfiGer.Params[0].AsInteger := uqtabelarngchave.AsInteger;
  rfiGer.Open;

  rfiTotais.Close;
  rfiTotais.Params[0].AsInteger := uqtabelarngchave.AsInteger;
  // rfiTotais.Params[1].AsInteger :=acesso.Filial;
  rfiTotais.Open;

  PlPrincipal.Caption := FormatFloat('#,###,##0.00', rfiTotaisrfibaixadocapital.AsFloat);
  PlMultas.Caption := FormatFloat('#,###,##0.00', rfiTotaisrfimulta.AsFloat);
  PlJuros.Caption := FormatFloat('#,###,##0.00', rfiTotaisrfijuros.AsFloat);
  PlDescont.Caption := FormatFloat('#,###,##0.00', rfiTotaisrfidesconto.AsFloat);
  PlTot.Caption := FormatFloat('#,###,##0.00', rfiTotaisrfisaldogeral.AsFloat);
end;

procedure Tfrarng.SetTfdCodigo(const Value: Integer);
begin
  FTfdCodigo := Value;

  uqtabela.ParamByName('tfdcodigo').AsInteger := FTfdCodigo;
end;

end.
