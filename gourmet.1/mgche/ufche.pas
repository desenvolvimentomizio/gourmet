unit ufche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Forms, ufrmbase,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.Math, uFuncoes, System.ImageList;

type
  Tfche = class(Tfrmbase)
    registrochechave: TIntegerField;
    registrocheemissao: TDateField;
    registrochevencimento: TDateField;
    registrochenumero: TStringField;
    registrocheconta: TStringField;
    registrocheagencia: TStringField;
    registrobcocodigo: TStringField;
    registrochenome: TStringField;
    registrochedocumento: TStringField;
    registrochetelefone: TStringField;
    registrochevalor: TFloatField;
    Label1: TLabel;
    chechave: TDBEdit;
    Label2: TLabel;
    cheemissao: TDBEdit;
    Label3: TLabel;
    chevencimento: TDBEdit;
    Label4: TLabel;
    bcocodigo: TDBEdit;
    Label5: TLabel;
    cheagencia: TDBEdit;
    Label6: TLabel;
    checonta: TDBEdit;
    Label7: TLabel;
    chenumero: TDBEdit;
    Label8: TLabel;
    chenome: TDBEdit;
    Label9: TLabel;
    chedocumento: TDBEdit;
    Label10: TLabel;
    chetelefone: TDBEdit;
    Label11: TLabel;
    chevalor: TDBEdit;
    Label12: TLabel;
    DBEetdcodigo: TDBEdit;
    registroetdcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    etdetddoc1: TStringField;
    etf: TUniQuery;
    etfetdcodigo: TIntegerField;
    etfetftelefone: TStringField;
    etdetftelefone: TStringField;
    tchcodigo: TDBEdit;
    registrotchcodigo: TIntegerField;
    LbTalonario: TLabel;
    tch: TUniQuery;
    tchtchcodigo: TIntegerField;
    tchctacodigo: TIntegerField;
    tchtchfolhainicial: TIntegerField;
    tchtchfolhafinal: TIntegerField;
    tchtchnumeracao: TStringField;
    registrotchnumeracao: TStringField;
    tchbcocodigo: TStringField;
    tchctaagencia: TStringField;
    tchctanumero: TStringField;
    cfgcfgcodigo: TIntegerField;
    cfgetdcodigo: TIntegerField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgetftelefone: TStringField;
    cheVerif: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure chenomeEnter(Sender: TObject);
    procedure chedocumentoEnter(Sender: TObject);
    procedure chetelefoneEnter(Sender: TObject);
    procedure tchcodigoExit(Sender: TObject);
    procedure tchcodigoEnter(Sender: TObject);
    procedure chenumeroExit(Sender: TObject);
    procedure chevalorExit(Sender: TObject);
    procedure chevencimentoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcocodigoExit(Sender: TObject);
  private
    FCtaCodigo: String;
    FEtdCodigo: String;
    FChequeProprio: Boolean;
    FSaldoCheques: Double;
    procedure SetCtaCodigo(const Value: String);
    procedure SetEtdCodigo(const Value: String);
    procedure SetChequeProprio(const Value: Boolean);
    procedure SetSaldoCheques(const Value: Double);
    function ValidaVencimento: Boolean;
    { Private declarations }
  published
    property ChequeProprio: Boolean read FChequeProprio write SetChequeProprio;
    property CtaCodigo: String read FCtaCodigo write SetCtaCodigo;
    property EtdCodigo: String read FEtdCodigo write SetEtdCodigo;
    property SaldoCheques: Double read FSaldoCheques write SetSaldoCheques;
  public
    { Public declarations }
  end;

var
  fche: Tfche;

  // Início ID do Módulo fche
const
  vPlIdMd = '02.02.14.001-02';

  // Fim ID do Módulo fche

implementation

{$R *.dfm}

procedure Tfche.bcocodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if bcocodigo.Field.AsString = '' then
    Exit;

  bcocodigo.Field.AsString := FormatFloat('000', bcocodigo.Field.AsInteger);
end;

procedure Tfche.bconfirmaClick(Sender: TObject);
begin
  if not ValidaVencimento then
  begin
    chevencimento.SetFocus;
    Exit;
  end;

  inherited;
end;

procedure Tfche.chedocumentoEnter(Sender: TObject);
begin
  inherited;
  chedocumento.SelectAll;
end;

procedure Tfche.chenomeEnter(Sender: TObject);
begin
  inherited;

  if DBEetdcodigo.Field.AsString <> '0' then
    if etd.Locate('etdcodigo', DBEetdcodigo.Field.AsString, []) then
    begin
      chetelefone.Field.AsString := etdetftelefone.AsString;
      chedocumento.Field.AsString := etdetddoc1.AsString;
      chenome.Field.AsString := etdetdidentificacao.AsString;
    end;

  chenome.SelectAll;
end;

procedure Tfche.chenumeroExit(Sender: TObject);
var
  vlMensagem: String;
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if chenumero.Field.AsString = '' then
    Exit;

  chenumero.Field.AsString := FormatFloat('000000', chenumero.Field.AsInteger);

  cheVerif.Close;
  if Self.Situacao = 'Alterando' then
    cheVerif.Params[0].AsInteger := chechave.Field.AsInteger
  else
    cheVerif.Params[0].AsInteger := -1;

  cheVerif.Params[1].AsInteger := tchcodigo.Field.AsInteger;
  cheVerif.Params[2].AsString := chenumero.Field.AsString;
  cheVerif.Open;

  if not cheVerif.IsEmpty then
  begin
    if cheVerif.Fields[0].AsString = 'N' then
      vlMensagem := 'Número de cheque fora da faixa do talonário.'
    else
      vlMensagem := 'Número de cheque já utilizado.';

    Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
    // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair.
    PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);

    if Self.ActiveControl = tchcodigo then
    begin
      tchcodigo.Field.AsString := '';
      chenumero.Field.AsString := '';
      Exit;
    end;

    chenumero.SetFocus;
  end;
end;

procedure Tfche.chetelefoneEnter(Sender: TObject);
begin
  inherited;
  chetelefone.SelectAll;
end;

procedure Tfche.chevalorExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if chevalor.Field.AsString = '' then
    Exit;

  (* Validação do valor od cheque *)
  if not InRange(chevalor.Field.AsFloat, 0.01, 9999999) then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    chevalor.SetFocus;
    Exit;
  end;
end;

procedure Tfche.chevencimentoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if chevencimento.Field.AsString = '' then
    Exit;

  ValidaVencimento;
end;

procedure Tfche.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;

  inherited;

  if ChequeProprio then
  begin
    bcocodigo.Enabled := False;
    cheagencia.Enabled := False;
    checonta.Enabled := False;
    DBEetdcodigo.Enabled := False;
    chenome.Enabled := False;
    chedocumento.Enabled := False;
    chetelefone.Enabled := False;

    bcocodigo.Color := PEG_COR_VALORPADRAO;
    cheagencia.Color := PEG_COR_VALORPADRAO;
    checonta.Color := PEG_COR_VALORPADRAO;
    DBEetdcodigo.Color := PEG_COR_VALORPADRAO;
    chenome.Color := PEG_COR_VALORPADRAO;
    chedocumento.Color := PEG_COR_VALORPADRAO;
    chetelefone.Color := PEG_COR_VALORPADRAO;
  end;

  // Ajusta a altura da tela para não cortar os campos
  if Self.Height < 460 then
    Self.Height := 460;
end;

procedure Tfche.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  { Tarefa: 1748 }
  if EtdCodigo <> '' then
    DBEetdcodigo.Field.AsString := EtdCodigo;
  if etd.Locate('etdcodigo', DBEetdcodigo.Field.AsString, []) then
  begin
    chetelefone.Field.AsString := etdetftelefone.AsString;
    chedocumento.Field.AsString := etdetddoc1.AsString;
    chenome.Field.AsString := etdetdidentificacao.AsString;
  end;
  { Tarefa: 1748 }

  registrochevalor.AsFloat := SaldoCheques;
  registrocheemissao.AsFloat := Date;
  registrochevencimento.AsFloat := Date;

  if ChequeProprio then
  begin
    cfg.Open;

    registroetdcodigo.AsInteger := cfgetdcodigo.AsInteger;
    registrochenome.AsString := cfgetdidentificacao.AsString;
    registrochedocumento.AsString := cfgetddoc1.AsString;
    registrochetelefone.AsString := cfgetftelefone.AsString;
  end;
end;

procedure Tfche.SetChequeProprio(const Value: Boolean);
begin
  FChequeProprio := Value;

  if FChequeProprio = False then
    Exit;

  LbTalonario.Visible := True;
  tchcodigo.Visible := True;
  registrotchcodigo.Required := True;
  Self.ActiveControl := tchcodigo;
end;

procedure Tfche.SetCtaCodigo(const Value: String);
begin
  FCtaCodigo := Value;
end;

procedure Tfche.SetEtdCodigo(const Value: String);
begin
  FEtdCodigo := Value;
end;

procedure Tfche.SetSaldoCheques(const Value: Double);
begin
  FSaldoCheques := Value;
end;

procedure Tfche.tchcodigoEnter(Sender: TObject);
begin
  (* Parâmetro para apresentar talonário do cheque atual quando este é a última folha *)
  if Self.Situacao = 'Alterando' then
    txtFiltro := chechave.Field.AsString + '|'
  else
    txtFiltro := '-1|';

  txtFiltro := txtFiltro + 'tchfolhasdisp > 0';

  if CtaCodigo <> '' then
    txtFiltro := txtFiltro + ' AND ctacodigo = ' + CtaCodigo;
end;

procedure Tfche.tchcodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if tchcodigo.Field.IsNull then
    Exit;

  if tch.Locate('tchcodigo', tchcodigo.Field.AsInteger, []) then
  begin
    bcocodigo.Field.AsString := tchbcocodigo.AsString;
    cheagencia.Field.AsString := tchctaagencia.AsString;
    checonta.Field.AsString := tchctanumero.AsString;
  end;
end;

function Tfche.ValidaVencimento: Boolean;
var
  vlMensagem: String;
begin
  Result := True;
  try
    if chevencimento.Field.AsFloat < cheemissao.Field.AsFloat then
    begin
      vlMensagem := 'Data de vencimento não pode ser menor que a data de emissão.';
      Result := False;
    end;

  finally
    if Result = False then
      Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

end.
