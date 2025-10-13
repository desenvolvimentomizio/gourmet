unit ufrache;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrabase, Data.DB, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, uFuncoes, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TTipoCheque = (cheTerceiros, cheProprio);

  Tfrache = class(Tfrabase)
    uqtabelachechave: TIntegerField;
    uqtabelacheemissao: TDateField;
    uqtabelachevencimento: TDateField;
    uqtabelachenumero: TStringField;
    uqtabelacheconta: TStringField;
    uqtabelacheagencia: TStringField;
    uqtabelabcocodigo: TStringField;
    uqtabelachenome: TStringField;
    uqtabelachedocumento: TStringField;
    uqtabelachetelefone: TStringField;
    uqtabelachevalor: TFloatField;
    ltc: TUniQuery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcschcodigo: TIntegerField;
    ltcmdccodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    GBARegistrar: TGroupBox;
    PlARegistrar: TPanel;
    GBRegistrado: TGroupBox;
    PlRegistrado: TPanel;
    GBDiferenca: TGroupBox;
    PlDiferenca: TPanel;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
    FDtlChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    FEtdCodigo: String;
    FTipoCheque: TTipoCheque;
    FCtaCodigo: String;
    function CriaFormTfche(pCheChave: String): String;
    procedure CalculaTotal;
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetVlrTotal(const Value: String);
    procedure SetDtlChave(const Value: String);
    procedure SetEtdCodigo(const Value: String);
    procedure SetTipoCheque(const Value: TTipoCheque);
    procedure SetCtaCodigo(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property CtaCodigo: String read FCtaCodigo write SetCtaCodigo;
    property DtlChave: String read FDtlChave write SetDtlChave;
    property EtdCodigo: String read FEtdCodigo write SetEtdCodigo;
    property TipoCheque: TTipoCheque read FTipoCheque write SetTipoCheque;

    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;
  public
    { Public declarations }
  end;

var
  frache: Tfrache;

  // Início ID do Módulo frardc
const
  vPlIdMd = '02.02.14.001-01';
  vPlTitMdl = 'Registro de Cheques';

  // Fim ID do Módulo frardc

implementation

{$R *.dfm}

uses ufche;

procedure Tfrache.ActAlterarExecute(Sender: TObject);
var
  vlCheChave: String;
begin
  vlCheChave := CriaFormTfche(uqtabelachechave.AsString);

  if vlCheChave = '' then
    Exit;

  Self.ActAtualizar.Execute;
end;

procedure Tfrache.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsString := DtlChave;
  inherited;
  CalculaTotal;
end;

procedure Tfrache.ActExcluirExecute(Sender: TObject);
begin
  { inherited; }
  if not uqtabela.IsEmpty then
    if Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES
    then
    begin
      Self.uqtabela.Delete;
      Self.ActAtualizar.Execute;
    end;
end;

procedure Tfrache.ActIncluirExecute(Sender: TObject);
var
  vlCheChave: String;
begin
  vlCheChave := CriaFormTfche('');

  if vlCheChave = '' then
    Exit;
  if FDtlChave<>'' then
  begin
  ltc.Open;
  ltc.Append;

  ltcchechave.AsString := vlCheChave;
  ltcdtlchave.AsString := FDtlChave;
  ltcschcodigo.AsInteger := schPendente;
  ltcmdccodigo.AsInteger := 0;
  ltc.Post;

  ltc.Close;
  end;

  ActAtualizar.Execute;
end;

procedure Tfrache.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelachechave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelachevalor.AsFloat;
    uqtabela.Next;
  end;

  uqtabela.Locate('chechave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;
end;

function Tfrache.CriaFormTfche(pCheChave: String): String;
var
  vlModalResult: TModalResult;
begin
  fche := Tfche.Create(Application);

  try
    fche.zcone := zcone;
    fche.vchave := pCheChave;

    fche.registro.Close;
    fche.Visible := False;

    fche.Acesso := Self.Acesso;

    fche.ChequeProprio := TipoCheque = cheProprio;
    fche.CtaCodigo := CtaCodigo;
    fche.EtdCodigo := EtdCodigo;
    if VlrSaldo > 0 then
      fche.SaldoCheques := VlrSaldo;

    vlModalResult := fche.ShowModal;

    if vlModalResult = mrOk then
      Result := fche.vchave; // Chave do cheque registrado ou alterado.
  finally
    fche.Free;
  end;
end;

procedure Tfrache.SetCtaCodigo(const Value: String);
begin
  FCtaCodigo := Value;
end;

procedure Tfrache.SetDtlChave(const Value: String);
begin
  FDtlChave := Value;
end;

procedure Tfrache.SetEtdCodigo(const Value: String);
begin
  FEtdCodigo := Value;
end;

procedure Tfrache.SetTipoCheque(const Value: TTipoCheque);
begin
  FTipoCheque := Value;
end;

procedure Tfrache.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;

  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);

  VlrSaldo := FVlrTotal - FVlrRegistrado;
end;

procedure Tfrache.SetVlrSaldo(const Value: Double);
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

procedure Tfrache.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

end.
