unit ufraprg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, uPegaBase, System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfraprg = class(Tfrabase)
    uqtabelaprgchave: TIntegerField;
    uqtabelapcbchave: TIntegerField;
    uqtabelaprgvalor: TFloatField;
    uqtabelaprgtipo: TIntegerField;
    uqtabelaccgcodigo: TIntegerField;
    uqtabelaccgestrutural: TStringField;
    uqtabelaprgpercentual: TFloatField;
    uqtabelaccgidentificacao: TStringField;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
    FPcbChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetPcbChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property PcbChave: String read FPcbChave write SetPcbChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;

  public
    { Public declarations }

    procedure Carregar; override;

  end;

var
  fraprg: Tfraprg;

  // Início ID do Módulo fraprg
const
  vPlIdMd = '02.10.16.004-01';
  vPlTitMdl = 'Centro de Custos';

  // Fim ID do Módulo fraprg

implementation

{$R *.dfm}

uses ufprg;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraprg := Tfraprg.Create(pCargaFrame);
  Result := fraprg;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraprg := Tfraprg.Create(pCargaFrame);
  try
    fraprg.CriaAcoesDeAcesso;
  finally
    fraprg.Free;
  end;
end;

exports defineacesso, execute;

procedure Tfraprg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfprg, uqtabelaprgchave.AsString, vChaveMestre);
end;

procedure Tfraprg.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsString := FPcbChave;

  consulta.Connection := zcone;
  consulta.SQL.Text := 'select pcbvalor from pcb where pcbchave=' + FPcbChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

  CalculaTotal;

  if (FVlrSaldo <> 0) then
    Self.PodeFechar := False
  else
    Self.PodeFechar := True;
end;

procedure Tfraprg.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfprg, '', vChaveMestre);
end;

procedure Tfraprg.ActSairExecute(Sender: TObject);
begin

  if (FVlrSaldo <> 0) then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser diferente do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Self.PodeFechar := False;
    Exit;
  end
  else
  begin
    if FVlrSaldo < 0 then
    begin
      Application.MessageBox(PChar('O valor rateio esta maior que o valor principal!!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Self.PodeFechar := False;
      Exit;
    end
    else
    begin

      Self.PodeFechar := True;
      inherited;

    end;
  end;

end;

procedure Tfraprg.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelaprgchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelaprgvalor.AsCurrency;
    uqtabela.Next;
  end;

  uqtabela.Locate('prgchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;

end;

procedure Tfraprg.Carregar;
begin
  PcbChave := vChaveMestre;

  consulta.Close;
  consulta.SQL.Text := 'SELECT pcbvalor FROM pcb WHERE pcbchave = ' + PcbChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

end;

procedure Tfraprg.SetPcbChave(const Value: String);
begin
  FPcbChave := Value;
end;

procedure Tfraprg.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfraprg.SetVlrSaldo(const Value: Double);
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

procedure Tfraprg.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
