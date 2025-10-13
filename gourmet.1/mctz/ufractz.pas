unit ufractz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, System.Math, ufuncoes, Vcl.Mask, Vcl.DBCtrls;

type
  Tfractz = class(Tfrabase)
    uqtabelamlgchave: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelacedidentificacao: TStringField;
    uqtabelarmgvalor: TFloatField;
    uqtabelarmgchave: TIntegerField;
    pct: TUniQuery;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox3: TGroupBox;
    PlRegistradoCre: TPanel;
    GroupBox7: TGroupBox;
    PlDiferencaDeb: TPanel;
    GroupBox1: TGroupBox;
    PlRegistradoDeb: TPanel;
    GroupBox4: TGroupBox;
    PlDiferencaCre: TPanel;
    uqtabelacedcodigo: TIntegerField;
    procedure Carregar; override;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
    FRmgChave: String;
    FVlrTotal: Double;

    FVlrRegistradoCre: Double;
    FVlrRegistradoDeb: Double;

    FVlrSaldoCre: Double;
    FVlrSaldoDeb: Double;

    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistradoCre(const Value: Double);
    procedure SetVlrRegistradoDeb(const Value: Double);
    procedure SetDtlChave(const Value: String);
    procedure SetVlrSaldoCre(const Value: Double);
    procedure SetVlrSaldoDeb(const Value: Double);

  public
    { Public declarations }
    vpCedCodigo: String;
    vpLteChave: string;
    vpFlaCodigo: string;
    vpPcgCodigo: string;
    vpPhgCodigo: string;
    vpRmgValor: string;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistradoCre: Double read FVlrRegistradoCre write SetVlrRegistradoCre;
    property VlrRegistradoDeb: Double read FVlrRegistradoDeb write SetVlrRegistradoDeb;
    property VlrSaldoCre: Double read FVlrSaldoCre write SetVlrSaldoCre;
    property VlrSaldoDeb: Double read FVlrSaldoDeb write SetVlrSaldoDeb;

  end;

var
  fractz: Tfractz;

  // Início ID do Módulo fractz
const
  vPlIdMd = '02.10.16.001-01';
  vPlTitMdl = 'Contabilização';

  // Fim ID do Módulo fractz

implementation

{$R *.dfm}

uses ufctz;

procedure Tfractz.ActAlterarExecute(Sender: TObject);
var
  vlVlrSaldo: Double;
begin
  vlVlrSaldo := VlrSaldoCre + VlrSaldoDeb;

  inherited;
  CriaFormulario(Tfctz, Self.uqtabelarmgchave.AsString, vChaveMestre + '&' + Self.vpLteChave + '@' + vpFlaCodigo + '%' + vpCedCodigo + '#' + vpPcgCodigo + '!' +
    vpPhgCodigo + '$' + floattostr(vlVlrSaldo));
end;

procedure Tfractz.ActAtualizarExecute(Sender: TObject);
begin
  if FRmgChave <> '' then
  begin
    uqtabela.Params[0].AsString := FRmgChave;
  end;

  inherited;
  CalculaTotal;

end;

procedure Tfractz.ActIncluirExecute(Sender: TObject);
var
  vlVlrSaldo: Double;
begin
  vlVlrSaldo := VlrSaldoCre + VlrSaldoDeb;

  inherited;
  CriaFormulario(Tfctz, '', vChaveMestre + '&' + Self.vpLteChave + '@' + vpFlaCodigo + '%' + vpCedCodigo + '#' + vpPcgCodigo + '!' + vpPhgCodigo + '$' +
    floattostr(vlVlrSaldo));
end;

procedure Tfractz.ActSairExecute(Sender: TObject);
begin

  if (FVlrSaldoCre < 0) or (FVlrSaldoDeb < 0) then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser maior do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;

end;

procedure Tfractz.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotalCre: Double;
  vlTotalDeb: Double;

begin
  vlTotalCre := 0;
  vlTotalDeb := 0;

  vlRegistro := uqtabelarmgchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    if uqtabelacedcodigo.AsString = '0' then
      vlTotalDeb := vlTotalDeb + uqtabelarmgvalor.AsFloat;

    if uqtabelacedcodigo.AsString = '1' then
      vlTotalCre := vlTotalCre + uqtabelarmgvalor.AsFloat;

    uqtabela.Next;
  end;

  uqtabela.Locate('rmgchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistradoCre := vlTotalCre;
  VlrRegistradoDeb := vlTotalDeb;

end;

procedure Tfractz.SetDtlChave(const Value: String);
begin
  FRmgChave := Value;
end;

procedure Tfractz.SetVlrRegistradoDeb(const Value: Double);
begin
  FVlrRegistradoDeb := Value;
  PlRegistradoDeb.Caption := FormatFloat('#,##0.00', FVlrRegistradoDeb);
  VlrSaldoDeb := SimpleRoundTo(FVlrTotal - FVlrRegistradoDeb, -2);
end;

procedure Tfractz.SetVlrRegistradoCre(const Value: Double);
begin
  FVlrRegistradoCre := Value;
  PlRegistradoCre.Caption := FormatFloat('#,##0.00', FVlrRegistradoCre);
  VlrSaldoCre := SimpleRoundTo(FVlrTotal - FVlrRegistradoCre, -2);
end;

procedure Tfractz.SetVlrSaldoCre(const Value: Double);
begin
  FVlrSaldoCre := Value;

  PlDiferencaCre.Caption := FormatFloat('#,##0.00', FVlrSaldoCre);

  if FVlrSaldoCre < 0 then
  begin
    PlDiferencaCre.Color := clWhite;
    PlDiferencaCre.Font.Color := clRed;
  end
  else
  begin
    PlDiferencaCre.Color := $00C08000;
    PlDiferencaCre.Font.Color := clWhite;
  end;
end;

procedure Tfractz.SetVlrSaldoDeb(const Value: Double);
begin
  FVlrSaldoDeb := Value;

  PlDiferencaDeb.Caption := FormatFloat('#,##0.00', FVlrSaldoDeb);

  if FVlrSaldoDeb < 0 then
  begin
    PlDiferencaDeb.Color := clWhite;
    PlDiferencaDeb.Font.Color := clRed;
  end
  else
  begin
    PlDiferencaDeb.Color := $00C08000;
    PlDiferencaDeb.Font.Color := clWhite;
  end;
end;

procedure Tfractz.SetVlrTotal(const Value: String);
begin

  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

procedure Tfractz.Carregar;
begin
  inherited Carregar;

  { consulta.Close;
    consulta.SQL.Text := 'SELECT mdacodigo FROM dtl WHERE dtlchave = ' + FRmgChave;
    consulta.Open;

    if consulta.Fields[0].AsInteger = mdaCartaoDebito then
    titulo := PlTitulo.Caption + ' de Débito'
    else
    titulo := PlTitulo.Caption + ' de Crédito';

    PlTitulo.Caption := titulo;

    consulta.Close; }
end;

end.
