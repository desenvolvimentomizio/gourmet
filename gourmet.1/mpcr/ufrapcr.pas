unit ufrapcr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, Vcl.Graphics,
  System.Math, uFuncoes, uPegaBase, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Dialogs;

type
  Tfrapcr = class(Tfrabase)
    uqtabelapcrchave: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgestrutural: TStringField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelaphgcodigo: TIntegerField;
    uqtabelaphgidentificacao: TStringField;
    uqtabelapcrvalor: TFloatField;
    uqtabelapcrcomplhist: TStringField;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    cfg: TUniQuery;
    cfgcfgctbmodo: TIntegerField;
    uqtabelatitcodigo: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    ActCCustos: TAction;
    procedure ActSairExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActCCustosExecute(Sender: TObject);
  private
    { Private declarations }
    FRFIChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetRfiChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property RfiChave: String read FRFIChave write SetRfiChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;

  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  frapcr: Tfrapcr;

  // Início ID do Módulo frapcr
const
  vPlIdMd = '02.10.16.003-01';
  vPlTitMdl = 'Contabilização';

  // Fim ID do Módulo frapcr

implementation

uses
  ufpcr;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapcr := Tfrapcr.Create(pCargaFrame);
  Result := frapcr;
end;

exports execute;

procedure Tfrapcr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpcr, uqtabelapcrchave.AsString, vChaveMestre);
end;

procedure Tfrapcr.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  uqtabela.Params[0].AsString := FRFIChave;
  consulta.Close;
  consulta.SQL.Text := 'select titvalor from tit where titcodigo=' + FRFIChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

  CalculaTotal;

  if (FVlrSaldo <> 0) then
    Self.PodeFechar := False
  else
    Self.PodeFechar := True;

  cfg.Open;
  if cfgcfgctbmodo.AsInteger = 1 then
    PlTitulo.Caption := 'Classificação'
  else
    PlTitulo.Caption := 'Contabilização';
end;

procedure Tfrapcr.ActCCustosExecute(Sender: TObject);
begin
  inherited;
    MostraLista('mprc', '',self.uqtabelapcgcodigo.AsString);
end;

procedure Tfrapcr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpcr, '', vChaveMestre);
end;

procedure Tfrapcr.ActSairExecute(Sender: TObject);
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
    if FVlrSaldo < 0 then
    begin
      Application.MessageBox(PChar('O valor classificado esta maior que o valor principal!!'), 'Atenção', MB_ICONWARNING + MB_OK);
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

procedure Tfrapcr.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelapcrchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelapcrvalor.AsFloat;
    uqtabela.Next;
  end;

  uqtabela.Locate('pcrchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;

end;

procedure Tfrapcr.Carregar;
begin
  RfiChave := vChaveMestre;

  consulta.Close;
  consulta.Connection := zcone;
  consulta.SQL.Text := 'SELECT titvalor FROM tit WHERE titcodigo = ' + vChaveMestre;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  uqtabela.Filter := 'titcodigo = ' + vChaveMestre;
  uqtabela.Filtered := True;

  inherited;

end;

procedure Tfrapcr.SetRfiChave(const Value: String);
begin
  FRFIChave := Value;
end;

procedure Tfrapcr.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfrapcr.SetVlrSaldo(const Value: Double);
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

procedure Tfrapcr.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
