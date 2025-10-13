unit ufrapcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Dialogs,
  System.ImageList, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrapcb = class(Tfrabase)
    uqtabelapcbchave: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgestrutural: TStringField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelaphgcodigo: TIntegerField;
    uqtabelaphgidentificacao: TStringField;
    uqtabelapcbvalor: TFloatField;
    uqtabelapcbcomplhist: TStringField;
    uqtabelaccochave: TIntegerField;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    cfg: TUniQuery;
    cfgcfgctbmodo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
    FCCoChave: string;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetCcoChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property CcoChave: String read FCCoChave write SetCcoChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  frapcb: Tfrapcb;

  // Início ID do Módulo frapcb
const
  vPlIdMd = '02.10.16.003-01';
  vPlTitMdl = 'Contabilização';

  // Fim ID do Módulo frapcb

implementation

{$R *.dfm}

uses ufpcb;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapcb := Tfrapcb.Create(pCargaFrame);
  Result := frapcb;
end;

exports execute;

procedure Tfrapcb.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfpcb, uqtabelapcbchave.AsString, vChaveMestre);
end;

procedure Tfrapcb.ActAtualizarExecute(Sender: TObject);
begin

  uqtabela.Params[0].AsString := FCCoChave;

  consulta.close;
  consulta.sql.Text := 'select ccovalor from cco where ccochave=' + FCCoChave;
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

procedure Tfrapcb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpcb, '', vChaveMestre);
end;

procedure Tfrapcb.ActSairExecute(Sender: TObject);
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

procedure Tfrapcb.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelapcbchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelapcbvalor.AsCurrency;
    uqtabela.Next;
  end;

  uqtabela.Locate('pcbchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;

end;

procedure Tfrapcb.Carregar;
begin
  CcoChave := vChaveMestre;

  consulta.close;
  consulta.sql.Text := 'SELECT ccovalor FROM cco WHERE ccochave = ' + CcoChave;
  consulta.Open;

  VlrTotal := consulta.Fields[0].AsString;

  inherited;

end;

procedure Tfrapcb.SetCcoChave(const Value: String);
begin
  FCCoChave := Value
end;

procedure Tfrapcb.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfrapcb.SetVlrSaldo(const Value: Double);
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

procedure Tfrapcb.SetVlrTotal(const Value: String);
begin
  if Value = '' then
    Exit;

  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
