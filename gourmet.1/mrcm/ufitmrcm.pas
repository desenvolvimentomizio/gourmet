unit ufitmrcm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.Math, System.StrUtils, System.Types,
  uFuncoes, System.ImageList;

type
  Tfitmrcm = class(Tfrmbase)
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroitmitem: TIntegerField;
    registroprocodigo: TIntegerField;
    registrocstcodigo: TStringField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmdesconto: TFloatField;
    registrotoecodigo: TIntegerField;
    registrocfocfop: TStringField;
    registroicmcodigo: TStringField;
    registrocsicodigo: TStringField;
    registrocspcodigo: TStringField;
    registrocsfcodigo: TStringField;
    registropcccodigo: TStringField;
    registroitmtotal: TFloatField;
    registrounicodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registroitmcontendo: TFloatField;
    registrocfocfopdestinacao: TStringField;
    registrounicodigobase: TIntegerField;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    itmquantidade: TDBEdit;
    Label4: TLabel;
    itmvalor: TDBEdit;
    Label5: TLabel;
    itmdesconto: TDBEdit;
    Label6: TLabel;
    itmtotal: TDBEdit;
    Label7: TLabel;
    toecodigo: TDBEdit;
    Label8: TLabel;
    cfocfop: TDBEdit;
    Label9: TLabel;
    puncodigo: TDBEdit;
    Label1: TLabel;
    itmitem: TDBEdit;
    pro: TUniQuery;
    toe: TUniQuery;
    pun: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    prounicodigo: TIntegerField;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    registropronome: TStringField;
    registropunidentificacao: TStringField;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    registrotoeidentificacao: TStringField;
    mes: TUniQuery;
    mestoecodigo: TIntegerField;
    mestoecfopsaida: TStringField;
    punpuncusto: TFloatField;
    pununicodigo: TIntegerField;
    punpunmultiplicador: TFloatField;
    mesttecodigo: TIntegerField;
    mesitmitem: TIntegerField;
    punprocodigo: TIntegerField;
    cfgcfgcontrolaestoquedisp: TIntegerField;
    proprosaldodisp: TFloatField;
    PlSaldoDisp: TPanel;
    PlSaldoProduto: TPanel;
    registroitmcusto: TFloatField;
    itmPro: TUniQuery;
    itmPromeschave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure procodigoEnter(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
    procedure puncodigoEnter(Sender: TObject);
    procedure puncodigoExit(Sender: TObject);
    procedure itmtotalEnter(Sender: TObject);
    procedure itmquantidadeExit(Sender: TObject);
    procedure itmvalorExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    FMesChave: Integer;
    FSaldoProduto: Double;
    procedure AjustaEmbalagem;
    function PermiteProduto: Boolean;
    function PermiteSaldoProduto(pQuantidade: Double): Boolean;
    procedure SetMesChave(const Value: Integer);
    procedure SetSaldoProduto(const Value: Double);
    { Private declarations }
  published
    property MesChave: Integer read FMesChave write SetMesChave;
    property SaldoProduto: Double read FSaldoProduto write SetSaldoProduto;
  public
    { Public declarations }
  end;

var
  fitmrcm: Tfitmrcm;

implementation

{$R *.dfm}
{ Tfitmrcm }

procedure Tfitmrcm.AjustaEmbalagem;
begin
  pun.Filter := 'procodigo = ' + procodigo.Field.AsString;
  pun.Filtered := True;

  if pun.RecordCount = 1 then
  begin
    puncodigo.Field.AsInteger := punpuncodigo.AsInteger;
    itmvalor.Field.AsFloat := punpuncusto.AsFloat;
    registrounicodigo.AsInteger := pununicodigo.AsInteger;
    registroitmcontendo.AsFloat := punpunmultiplicador.AsFloat;
  end
  else if not pun.Locate('puncodigo', puncodigo.Field.AsInteger, []) then
    puncodigo.Field.AsString := '';
end;

procedure Tfitmrcm.bconfirmaClick(Sender: TObject);
begin
  if not InRange(itmtotal.Field.AsFloat, 0.01, 999999) then
  begin
    Application.MessageBox(PChar('Verifique o total do item!'), 'Atenção', MB_ICONWARNING + MB_OK);
    itmquantidade.SetFocus;
    Exit;
  end;

  if mesttecodigo.AsInteger = tteEntrada then
    registroitmcusto.AsFloat := TBRound((registroitmtotal.AsFloat / registroitmquantidade.AsFloat) / registroitmcontendo.AsFloat, 3);

  inherited;
end;

procedure Tfitmrcm.FormShow(Sender: TObject);
var
  I: Integer;
begin
  MesChave := StrToInt(vChaveMestre);

  mes.Connection := zcone;
  mes.Close;
  mes.Params[0].AsInteger := MesChave;
  mes.Open;

  inherited;

  if mesttecodigo.AsInteger = tteEntrada then
    Self.Caption := 'Itens de Reclassificação - Saída';

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TDBEdit then
      if TDBEdit(Self.Components[I]).ReadOnly then
        TDBEdit(Self.Components[I]).Color := PEG_COR_VALORPADRAO;
end;

procedure Tfitmrcm.itmquantidadeExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if itmquantidade.Field.IsNull then
    Exit;

  if not InRange(itmquantidade.Field.AsFloat, 0.001, 999999) then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    itmquantidade.SetFocus;
    Exit;
  end;

  if not PermiteSaldoProduto(itmquantidade.Field.AsFloat) then
  begin
    itmquantidade.SetFocus;
    Exit;
  end;
end;

procedure Tfitmrcm.itmtotalEnter(Sender: TObject);
begin
  itmtotal.Field.AsFloat := TBRound(itmquantidade.Field.AsFloat * itmvalor.Field.AsFloat, 2);
end;

procedure Tfitmrcm.itmvalorExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if itmvalor.Field.IsNull then
    Exit;

  if not InRange(itmvalor.Field.AsFloat, 0.001, 999999) then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    itmvalor.SetFocus;
    Exit;
  end;

  itmtotal.Field.AsFloat := TBRound(itmquantidade.Field.AsFloat * itmvalor.Field.AsFloat, 2);
end;

function Tfitmrcm.PermiteProduto: Boolean;
var
  vlMensagem: String;
  vlTipoMov: String;
begin
  Result := True;

  itmPro.Close;
  itmPro.Params[0].AsInteger := registromeschave.AsInteger;
  itmPro.Params[1].AsInteger := registroprocodigo.AsInteger;
  itmPro.Open;

  if itmPro.IsEmpty then
    Exit;

  Result := False;

  if itmPromeschave.AsInteger = MesChave then
    vlTipoMov := IfThen(mesttecodigo.AsInteger = tteEntrada, 'Entrada', 'Saída')
  else
    vlTipoMov := IfThen(mesttecodigo.AsInteger = tteEntrada, 'Saída', 'Entrada');

  vlMensagem := 'Produto não permitido!!' + sLineBreak + 'Este produto já está registrado como item de ' + vlTipoMov + '.';

  Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
end;

function Tfitmrcm.PermiteSaldoProduto(pQuantidade: Double): Boolean;
begin
  Result := True;
  try
    if mesttecodigo.AsInteger = tteEntrada then
      Exit;

    if cfgcfgcontrolaestoquedisp.AsInteger = senNao then
      Exit;

    pro.Locate('procodigo', registroprocodigo.AsInteger, []);
    SaldoProduto := proprosaldodisp.AsFloat;

    if proprosaldodisp.AsFloat <= 0 then
      Result := False;

    if CompareValue(pQuantidade, proprosaldodisp.AsFloat) = GreaterThanValue then
      Result := False;

  finally
    if Result = False then
      Application.MessageBox(PChar('Produto sem saldo disponível!'), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

procedure Tfitmrcm.procodigoEnter(Sender: TObject);
begin
  txtFiltro := '((tpocodigo = 0) OR (tpocodigo = 4))';
end;

procedure Tfitmrcm.procodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if procodigo.Field.IsNull then
    Exit;

  if not(PermiteProduto) or not(PermiteSaldoProduto(0.001)) then
  begin
    procodigo.SetFocus;
    Exit;
  end;

  registrounicodigobase.AsInteger := prounicodigo.AsInteger;

  AjustaEmbalagem;

  if Self.ActiveControl = nil then
    itmquantidade.SetFocus;
end;

procedure Tfitmrcm.puncodigoEnter(Sender: TObject);
begin
  txtFiltro := '((tuncodigo = 1) OR (tuncodigo = 9)) AND procodigo = ' + procodigo.Field.AsString;
end;

procedure Tfitmrcm.puncodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if puncodigo.Field.IsNull then
    Exit;

  pun.Locate('puncodigo', puncodigo.Field.AsInteger, []);

  itmvalor.Field.AsFloat := punpuncusto.AsFloat;
  registrounicodigo.AsInteger := pununicodigo.AsInteger;
  registroitmcontendo.AsFloat := punpunmultiplicador.AsFloat;
end;

procedure Tfitmrcm.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registromeschave.AsInteger := MesChave;

  registrotoecodigo.AsInteger := mestoecodigo.AsInteger;
  registrocfocfop.AsString := mestoecfopsaida.AsString;
  registrocfocfopdestinacao.AsString := mestoecfopsaida.AsString;

  registroitmitem.AsInteger := mesitmitem.AsInteger;

  if mesttecodigo.AsInteger = tteSaida then
    registropcccodigo.AsString := '3.01.01.07.01.33.90' // Outras Despesas Operacionais
  else
    registropcccodigo.AsString := '3.01.01.05.01.11.00'; // Outras Receitas Operacionais

  registroitmdesconto.AsFloat := 0;

  registroicmcodigo.AsString := '00';
  registrocstcodigo.AsString := '900';

  registrocsicodigo.AsString := '99';
  registrocspcodigo.AsString := '99';
  registrocsfcodigo.AsString := '99';
end;

procedure Tfitmrcm.SetMesChave(const Value: Integer);
begin
  FMesChave := Value;
end;

procedure Tfitmrcm.SetSaldoProduto(const Value: Double);
begin
  FSaldoProduto := Value;

  PlSaldoDisp.Visible := True;
  PlSaldoProduto.Caption := FloatToStr(FSaldoProduto);
end;

end.
