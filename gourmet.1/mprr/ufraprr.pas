unit ufraprr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, uPegaBase, System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfraprr = class(Tfrabase)
    uqtabelaprrchave: TIntegerField;
    uqtabelapcrchave: TIntegerField;
    uqtabelaprrtipo: TUnsignedAutoIncField;
    uqtabelaccgcodigo: TIntegerField;
    uqtabelaccgestrutural: TStringField;
    uqtabelaccgidentificacao: TStringField;
    uqtabelaprrpercentual: TFloatField;
    uqtabelaprrvalor: TFloatField;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
    FPcrChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetPcrChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property PcrChave: String read FPcrChave write SetPcrChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;

  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraprr: Tfraprr;

  // Início ID do Módulo fraprr
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'Centro de Custos';

  // Fim ID do Módulo fraprr

implementation

uses
  ufprr;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraprr := Tfraprr.Create(pCargaFrame);
  Result := fraprr;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraprr := Tfraprr.Create(pCargaFrame);
  try
    fraprr.CriaAcoesDeAcesso;
  finally
    fraprr.Free;
  end;
end;

exports defineacesso, execute;

procedure Tfraprr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfprr, uqtabelaprrchave.AsString, vChaveMestre);
end;

procedure Tfraprr.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsString := FPcrChave;

  consulta.SQL.Text := 'select pcrvalor from pcr where pcrchave=' + FPcrChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

  CalculaTotal;

  if (FVlrSaldo <> 0) then
    Self.PodeFechar := False
  else
    Self.PodeFechar := True;
end;

procedure Tfraprr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfprr, '', vChaveMestre);
end;

procedure Tfraprr.ActSairExecute(Sender: TObject);
begin
  inherited;

  if (FVlrSaldo <> 0) then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser diferente do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Self.PodeFechar := False;
    Exit;
  end
  else
  begin
    Self.PodeFechar := True;
    inherited;

  end;

end;

procedure Tfraprr.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelaprrchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelaprrvalor.AsFloat;
    uqtabela.Next;
  end;

  uqtabela.Locate('prrchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;

end;

procedure Tfraprr.Carregar;
begin
  PcrChave := vChaveMestre;

  uqtabela.Filter := 'pcrchave=' + PcrChave;
  uqtabela.Filtered := True;

  consulta.Close;
  consulta.SQL.Text := 'SELECT pcrvalor FROM pcr WHERE pcrchave = ' + PcrChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

  if uqtabela.IsEmpty then
    ActIncluir.execute;
end;

procedure Tfraprr.SetPcrChave(const Value: String);
begin
  FPcrChave := Value;
end;

procedure Tfraprr.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfraprr.SetVlrSaldo(const Value: Double);
begin
  FVlrSaldo := Value;

  PlDiferenca.Caption := FormatFloat('#,##0.00', FVlrSaldo);

  if FVlrSaldo < 0 then
  begin
    PlDiferenca.Color := clWhite;
    PlDiferenca.Font.Color := clRed;
  end
  else
  begin
    PlDiferenca.Color := $00C08000;
    PlDiferenca.Font.Color := clWhite;
  end;
end;

procedure Tfraprr.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
