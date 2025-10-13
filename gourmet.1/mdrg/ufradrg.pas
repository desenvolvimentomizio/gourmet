unit ufradrg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, uPegaBase, System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfradrg = class(Tfrabase)
    uqtabeladrgchave: TIntegerField;
    uqtabelamlgchave: TIntegerField;
    uqtabeladrgvalor: TFloatField;
    uqtabelaccgcodigo: TIntegerField;
    uqtabeladrgpercentual: TFloatField;
    uqtabelaccgidentificacao: TStringField;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
    FRmgChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetDtlChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);

  public
    { Public declarations }

    procedure Carregar; override;

    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;

  end;

var
  fradrg: Tfradrg;

  // Início ID do Módulo frammea
const
  vPlIdMd = '02.10.16.002-01';
  vPlTitMdl = 'c';

  // Fim ID do Módulo frammea

implementation

{$R *.dfm}

uses ufdrg;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradrg := Tfradrg.Create(pCargaFrame);
  Result := fradrg;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradrg := Tfradrg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradrg := Tfradrg.Create(pCargaFrame);
  try
    fradrg.CriaAcoesDeAcesso;
  finally
    fradrg.Free;
  end;
end;

exports formuFrame, defineacesso, execute;

procedure Tfradrg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfdrg, uqtabeladrgchave.AsString, vChaveMestre);
end;

procedure Tfradrg.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsString := FRmgChave;
  inherited;
  CalculaTotal;
  if VlrSaldo <> 0 then
    Self.PodeFechar := False
  else
    Self.PodeFechar := True;

end;

procedure Tfradrg.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfdrg, '', vChaveMestre);
end;

procedure Tfradrg.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  PnlRodapeGrid.Visible := True;
  vlTotal := 0;
  vlRegistro := uqtabelamlgchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabeladrgvalor.AsFloat;
    uqtabela.Next;
  end;

  uqtabela.Locate('rmgchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;
end;

procedure Tfradrg.Carregar;
begin
  FRmgChave := vChaveMestre;

  uqtabela.Filter := 'rmgchave = ' + FRmgChave;;
  uqtabela.Filtered := True;

  consulta.Close;
  consulta.SQL.Text := 'SELECT rmgvalor FROM rmg WHERE rmgchave = ' + FRmgChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

end;

procedure Tfradrg.SetDtlChave(const Value: String);
begin
  FRmgChave := Value;
end;

procedure Tfradrg.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfradrg.SetVlrSaldo(const Value: Double);
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

procedure Tfradrg.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
