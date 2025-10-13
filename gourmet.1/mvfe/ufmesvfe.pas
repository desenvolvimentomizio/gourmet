unit ufmesvfe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Graphics, System.SysUtils, uFuncoes;

type
  Tfmesvfe = class(Tfrmbase)
    Bvregistro: TBevel;
    SpDetalhe: TSplitter;
    PlDetalhe: TPanel;
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registrotoecodigo: TIntegerField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromesprodutos: TFloatField;
    registromesservicos: TFloatField;
    registromestotal: TFloatField;
    registrotfpcodigo: TIntegerField;
    registrorefcodigo: TIntegerField;
    registrotrfcodigo: TStringField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registrotemcodigo: TIntegerField;
    registroedritem: TIntegerField;
    Label1: TLabel;
    meschave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    mesemissao: TDBEdit;
    Label4: TLabel;
    mesregistro: TDBEdit;
    Label5: TLabel;
    tdfcodigo: TDBEdit;
    Label6: TLabel;
    toecodigo: TDBEdit;
    Label9: TLabel;
    tfpcodigo: TDBEdit;
    Label10: TLabel;
    refcodigo: TDBEdit;
    bvalidar: TButton;
    plTotais: TPanel;
    GBBaseICM: TGroupBox;
    mesbicm: TDBEdit;
    GBValorICM: TGroupBox;
    mesicm: TDBEdit;
    GBBaseICMST: TGroupBox;
    mesbicms: TDBEdit;
    GBValorICMST: TGroupBox;
    mesicms: TDBEdit;
    GBTotalBruto: TGroupBox;
    mesvalor: TDBEdit;
    GBDesconto: TGroupBox;
    mesdesconto: TDBEdit;
    GBFrete: TGroupBox;
    mesfrete: TDBEdit;
    GBSeguro: TGroupBox;
    messeguro: TDBEdit;
    GBOutras: TGroupBox;
    mesoutras: TDBEdit;
    GBIPI: TGroupBox;
    mesipi: TDBEdit;
    GBTotalLiquido: TGroupBox;
    mestotal: TDBEdit;
    registromesfrete: TFloatField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    tdf: TUniQuery;
    tdftdfcodigo: TStringField;
    tdftdfidentificacao: TStringField;
    registrotdfidentificacao: TStringField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    registrotoeidentificacao: TStringField;
    tfp: TUniQuery;
    tfptfpcodigo: TIntegerField;
    tfptfpidentificacao: TStringField;
    registrotfpidentificacao: TStringField;
    ref: TUniQuery;
    refrefcodigo: TIntegerField;
    refrefidentificacao: TStringField;
    registrorefidentificacao: TStringField;
    cfgcfgcodigo: TIntegerField;
    cfgcfgdatapadrao: TDateField;
    cfgcfgetdempresa: TIntegerField;
    cfgedritem: TIntegerField;
    cfgcfgserienfe: TStringField;
    registromeschaverecla: TIntegerField;
    itm: TUniQuery;
    DSitm: TUniDataSource;
    itmitmchave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmunisimbolo: TStringField;
    itmitmcontendo: TFloatField;
    itmunisimbolobase: TStringField;
    plSaidas: TPanel;
    plbotoesitens: TPanel;
    BActIncluir: TBitBtn;
    BActEcluir: TBitBtn;
    PlItens: TPanel;
    listaitens: TDBGrid;
    qCalculaTotais: TUniQuery;
    LbItensSai: TLabel;
    PlTotaisSai: TPanel;
    PlVlrTotalSai: TPanel;
    PlQtItensSai: TPanel;
    vfm: TUniQuery;
    vfmvfecodigo: TIntegerField;
    vfmmeschave: TIntegerField;
    processaItm: TUniQuery;
    processaSaldoItm: TUniQuery;
    saldoItm: TUniQuery;
    saldoItmvfecodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tdfcodigoEnter(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure BActIncluirClick(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BActEcluirClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    FItensSai: Double;
    FTotalSai: Double;
    FVfeCodigo: Integer;
    FEncerramento: Boolean;
    FPrimeiraRemessa: Boolean;
    procedure CalculaTotais;
    procedure SetItensSai(const Value: Double);
    procedure SetTotalSai(const Value: Double);
    function ValidaProdutos(pMesChave: String): Boolean;
    procedure SetVfeCodigo(const Value: Integer);
    procedure SetEncerramento(const Value: Boolean);
    procedure SetPrimeiraRemessa(const Value: Boolean);
    { Private declarations }
  published
    property Encerramento: Boolean read FEncerramento write SetEncerramento;
    property ItensSai: Double read FItensSai write SetItensSai;
    property TotalSai: Double read FTotalSai write SetTotalSai;
    property VfeCodigo: Integer read FVfeCodigo write SetVfeCodigo;
    property PrimeiraRemessa: Boolean read FPrimeiraRemessa write SetPrimeiraRemessa;
  public
    { Public declarations }
  end;

var
  fmesvfe: Tfmesvfe;

implementation

{$R *.dfm}

uses ufitmvfe;

procedure Tfmesvfe.BActEcluirClick(Sender: TObject);
begin
  if itm.IsEmpty then
    Exit;

  if Application.MessageBox(PChar('Confirma a exclusão do item selecionado?'), 'Excluir', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
    Exit;

  itm.Delete;
  itm.Refresh;
  CalculaTotais;
end;

procedure Tfmesvfe.BActIncluirClick(Sender: TObject);
begin
  CriaFormulario(Tfitmvfe, '', registromeschave.AsString);

  CalculaTotais;
end;

procedure Tfmesvfe.bconfirmaClick(Sender: TObject);
begin
  if (ItensSai = 0) then
  begin
    Application.MessageBox(PChar('Não é possível confirmar o registro sem lançamento de itens!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if not ValidaProdutos(registromeschave.AsString) then
    Exit;

  inherited;
end;

procedure Tfmesvfe.bvalidarClick(Sender: TObject);
begin
  registro.Post;
  registro.Edit;

  registro.Params[0].AsInteger := registromeschave.AsInteger;

  vfm.Append;
  vfmvfecodigo.AsInteger := VfeCodigo;
  vfmmeschave.AsInteger := registromeschave.AsInteger;
  vfm.Post;

  itm.Close;
  itm.Params[0].AsInteger := registromeschave.AsInteger;
  itm.Open;

  CalculaTotais;

  bvalidar.Enabled := False;
  PlDetalhe.Visible := True;

  if Encerramento then
  begin
    (* Processamento dos itens *)
    processaItm.Params[0].AsInteger := registromeschave.AsInteger;
    processaItm.Params[1].AsInteger := registrotoecodigo.AsInteger;
    processaItm.Params[2].AsInteger := VfeCodigo;
    processaItm.ExecSQL;

    CalculaTotais;

    Exit;
  end;

  (* Se for primeira remessa do processo, é verificado se tem saldo de itens do processo anterior *)
  if PrimeiraRemessa then
  begin
    saldoItm.Close;
    saldoItm.Params[0].AsInteger := VfeCodigo;
    saldoItm.Open;

    if not saldoItm.IsEmpty then
      if Application.MessageBox(PChar('Deseja importar o saldo do último processo de Venda Fora do Estabelecimento do colaborador?'), 'Confirmação',
        MB_ICONQUESTION + MB_YESNO) = IDYES Then
      begin
        (* Processamento do saldo dos itens *)
        processaSaldoItm.Params[0].AsInteger := registromeschave.AsInteger;
        processaSaldoItm.Params[1].AsInteger := registrotoecodigo.AsInteger;
        processaSaldoItm.Params[2].AsInteger := saldoItmvfecodigo.AsInteger;
        processaSaldoItm.ExecSQL;

        CalculaTotais;

        Exit;
      end;
  end;

  BActIncluir.SetFocus;
end;

procedure Tfmesvfe.CalculaTotais;
begin
  qCalculaTotais.Params[0].AsInteger := registromeschave.AsInteger;
  qCalculaTotais.Execute;

  registro.Refresh;
  itm.Refresh;

  TotalSai := qCalculaTotais.Fields[0].AsFloat;
  ItensSai := itm.RecordCount;
end;

procedure Tfmesvfe.FormShow(Sender: TObject);
var
  I: Integer;
begin
  VfeCodigo := StrToInt(vChaveMestre);

  if vchave = '' then
    Encerramento := False
  else if StrToInt(vchave) = vfsEncerrado then
    Encerramento := True;

  vchave := '';

  inherited;

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TDBEdit then
      if (TDBEdit(Components[I]).ReadOnly) then
        TDBEdit(Components[I]).Color := PEG_COR_VALORPADRAO;

  meschave.Color := clSilver;

  if not itm.Active then
    itm.Open;
end;

procedure Tfmesvfe.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfmesvfe.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if not cfg.Active then
    cfg.Open;

  registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registroedritem.AsInteger := cfgedritem.AsInteger;

  registromesemissao.AsFloat := cfgcfgdatapadrao.AsFloat;
  registromesregistro.AsFloat := cfgcfgdatapadrao.AsFloat;

  registrotfpcodigo.AsInteger := tfpOutras;
  registrorefcodigo.AsInteger := refSemFrete;
  registrotrfcodigo.AsString := '0';

  registrosdecodigo.AsString := sdeDocRegular;
  registrotemcodigo.AsInteger := temEmDigitacaoo;

  registromesnumero.AsInteger := 0;
  registromesserie.AsString := cfgcfgserienfe.AsString;

  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotrmcodigo.AsInteger := Acesso.Terminal;

  registromesvalor.AsFloat := 0;
  registromesdesconto.AsFloat := 0;
  registromesprodutos.AsFloat := 0;
  registromesservicos.AsFloat := 0;
  registromestotal.AsFloat := 0;
  registromesfrete.AsFloat := 0;
  registromesseguro.AsFloat := 0;
  registromesoutras.AsFloat := 0;
  registromesbicm.AsFloat := 0;
  registromesicm.AsFloat := 0;
  registromesbicms.AsFloat := 0;
  registromesicms.AsFloat := 0;
  registromesipi.AsFloat := 0;
end;

procedure Tfmesvfe.SetEncerramento(const Value: Boolean);
begin
  FEncerramento := Value;

  if FEncerramento = True then
  begin
    LbItensSai.Caption := 'Itens de Retorno';
    BActIncluir.Visible := False;
    BActEcluir.Visible := False;
    Self.Caption := 'Venda Fora do Estabelecimento - Encerramento';
  end;
end;

procedure Tfmesvfe.SetItensSai(const Value: Double);
begin
  FItensSai := Value;

  PlQtItensSai.Caption := 'Itens: ' + FloatToStr(FItensSai);
end;

procedure Tfmesvfe.SetPrimeiraRemessa(const Value: Boolean);
begin
  FPrimeiraRemessa := Value;
end;

procedure Tfmesvfe.SetTotalSai(const Value: Double);
begin
  FTotalSai := Value;

  PlVlrTotalSai.Caption := 'Total R$ ' + FormatFloat('#,###,##0.00', FTotalSai);
end;

procedure Tfmesvfe.SetVfeCodigo(const Value: Integer);
begin
  FVfeCodigo := Value;

  vfm.Close;
  vfm.Params[0].AsInteger := FVfeCodigo;
  vfm.Open;

  if vfm.IsEmpty then
    PrimeiraRemessa := True
  else
    PrimeiraRemessa := False;
end;

procedure Tfmesvfe.tdfcodigoEnter(Sender: TObject);
begin
  txtFiltro := ' (tdfcodigo = ''00'' OR tdfcodigo = ''PE'') ';
end;

procedure Tfmesvfe.toecodigoEnter(Sender: TObject);
begin
  if Encerramento then
    txtFiltro := 'ttocodigo = 9 AND ttecodigo = 0'
  else
    txtFiltro := 'ttocodigo = 9 AND ttecodigo = 1';

  toe.Filter := txtFiltro;
  toe.Filtered := True;
end;

function Tfmesvfe.ValidaProdutos(pMesChave: String): Boolean;
type
  TValidaProdutos = Function(AOwner: TComponent; conexao: TUniConnection; ChaveMes: String; VerificaNCM: Boolean = True): Boolean;
var
  ValidaProdutos: TValidaProdutos;
begin
  //
  // Valida Itens para Emissão do Documento
  //

  Result := False;

  Pack := LoadPackage('modulos\mvpr.bpl');
  if Pack <> 0 Then
    try
      @ValidaProdutos := GetProcAddress(Pack, PChar('ValidaProdutos'));

      if Assigned(ValidaProdutos) then
        Result := ValidaProdutos(Application, zcone, pMesChave);

    finally
      DoUnLoadPackage(Pack);
    end;
end;

end.
