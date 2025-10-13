unit ufrcm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Graphics, System.SysUtils, uFuncoes, Dialogs, System.ImageList;

type
  TTipoMovimento = (tmSaida, tmEntrada);

type
  Tfrcm = class(Tfrmbase)
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
    registroEnt: TUniQuery;
    registroEntmeschave: TIntegerField;
    registroEntetdcodigo: TIntegerField;
    registroEntetdidentificacao: TStringField;
    registroEntmesemissao: TDateField;
    registroEntmesregistro: TDateField;
    registroEnttdfcodigo: TStringField;
    registroEnttdfidentificacao: TStringField;
    registroEntsdecodigo: TStringField;
    registroEntmesserie: TStringField;
    registroEntmesnumero: TIntegerField;
    registroEnttoecodigo: TIntegerField;
    registroEnttoeidentificacao: TStringField;
    registroEntmesvalor: TFloatField;
    registroEntmesdesconto: TFloatField;
    registroEntmesprodutos: TFloatField;
    registroEntmesservicos: TFloatField;
    registroEntmestotal: TFloatField;
    registroEnttfpcodigo: TIntegerField;
    registroEnttfpidentificacao: TStringField;
    registroEntrefcodigo: TIntegerField;
    registroEntrefidentificacao: TStringField;
    registroEnttrfcodigo: TStringField;
    registroEntclbcodigo: TIntegerField;
    registroEnttrmcodigo: TIntegerField;
    registroEnttemcodigo: TIntegerField;
    registroEntedritem: TIntegerField;
    registroEntmesfrete: TFloatField;
    registroEntmesseguro: TFloatField;
    registroEntmesoutras: TFloatField;
    registroEntmesbicm: TFloatField;
    registroEntmesicm: TFloatField;
    registroEntmesbicms: TFloatField;
    registroEntmesicms: TFloatField;
    registroEntmesipi: TFloatField;
    DSRegistroEnt: TUniDataSource;
    Label7: TLabel;
    toecodigoEnt: TDBEdit;
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
    plEntradas: TPanel;
    plbotoesitens: TPanel;
    BActIncluir: TBitBtn;
    BActEcluir: TBitBtn;
    PlItens: TPanel;
    listaitens: TDBGrid;
    plbotoesitensEnt: TPanel;
    bActIncluirEnt: TBitBtn;
    bActExcluirEnt: TBitBtn;
    PlItensEnt: TPanel;
    listaitensEnt: TDBGrid;
    itmEnt: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField2: TStringField;
    FloatField5: TFloatField;
    StringField3: TStringField;
    DSitmEnt: TUniDataSource;
    qCalculaTotais: TUniQuery;
    LbItensSai: TLabel;
    LbItensEnt: TLabel;
    PlTotaisSai: TPanel;
    PlVlrTotalSai: TPanel;
    PlQtItensSai: TPanel;
    PlTotaisEnt: TPanel;
    PlVlrTotalEnt: TPanel;
    PlQtItensEnt: TPanel;
    qPunCusto: TUniQuery;
    PlQtdSai: TPanel;
    PlQtdEnt: TPanel;
    btImportar: TBitBtn;
    itmImp: TUniQuery;
    registroitmchave: TIntegerField;
    IntegerField4: TIntegerField;
    registroitmitem: TIntegerField;
    registroprocodigo: TIntegerField;
    registrocstcodigo: TStringField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmdesconto: TFloatField;
    registroitmtotal: TFloatField;
    IntegerField5: TIntegerField;
    registrocfocfop: TStringField;
    registroicmcodigo: TStringField;
    registrocsicodigo: TStringField;
    registrocspcodigo: TStringField;
    registrocsfcodigo: TStringField;
    registropcccodigo: TStringField;
    registrounicodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registroitmcontendo: TFloatField;
    registrocfocfopdestinacao: TStringField;
    registrounicodigobase: TIntegerField;
    registroitmcusto: TFloatField;
    itmDes: TUniQuery;
    itmDesitmchave: TIntegerField;
    itmDesmeschave: TIntegerField;
    itmDesitmitem: TIntegerField;
    itmDesprocodigo: TIntegerField;
    itmDescstcodigo: TStringField;
    itmDesitmquantidade: TFloatField;
    itmDesitmvalor: TFloatField;
    itmDesitmdesconto: TFloatField;
    itmDesitmtotal: TFloatField;
    itmDestoecodigo: TIntegerField;
    itmDescfocfop: TStringField;
    itmDesicmcodigo: TStringField;
    itmDescsicodigo: TStringField;
    itmDescspcodigo: TStringField;
    itmDescsfcodigo: TStringField;
    itmDespcccodigo: TStringField;
    itmDesunicodigo: TIntegerField;
    itmDespuncodigo: TIntegerField;
    itmDesitmcontendo: TFloatField;
    itmDescfocfopdestinacao: TStringField;
    itmDesunicodigobase: TIntegerField;
    itmDesitmcusto: TFloatField;
    itmAImportar: TUniQuery;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tdfcodigoEnter(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
    procedure toecodigoEntEnter(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure BActIncluirClick(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bActIncluirEntClick(Sender: TObject);
    procedure listaitensEntDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BActEcluirClick(Sender: TObject);
    procedure bActExcluirEntClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
  private
    FItensSai: Double;
    FTotalSai: Double;
    FItensEnt: Double;
    FTotalEnt: Double;
    FPermiteSai: Boolean;
    FPermiteEnt: Boolean;
    FQtdSai: Double;
    FQtdEnt: Double;
    procedure AtualizaMesEntrada;
    procedure CalculaTotais(TipoMovimento: TTipoMovimento);
    procedure SetItensEnt(const Value: Double);
    procedure SetItensSai(const Value: Double);
    procedure SetTotalEnt(const Value: Double);
    procedure SetTotalSai(const Value: Double);
    procedure SetPermiteEnt(const Value: Boolean);
    procedure SetPermiteSai(const Value: Boolean);
    function ValidaProdutos(pMesChave: String): Boolean;
    procedure SetQtdEnt(const Value: Double);
    procedure SetQtdSai(const Value: Double);
    { Private declarations }
  published
    property ItensSai: Double read FItensSai write SetItensSai;
    property QtdSai: Double read FQtdSai write SetQtdSai;
    property TotalSai: Double read FTotalSai write SetTotalSai;
    property ItensEnt: Double read FItensEnt write SetItensEnt;
    property QtdEnt: Double read FQtdEnt write SetQtdEnt;
    property TotalEnt: Double read FTotalEnt write SetTotalEnt;
    property PermiteSai: Boolean read FPermiteSai write SetPermiteSai;
    property PermiteEnt: Boolean read FPermiteEnt write SetPermiteEnt;
  public
    { Public declarations }
    vpMesChave: String;
  end;

var
  frcm: Tfrcm;

implementation

{$R *.dfm}

uses ufitmrcm;

procedure Tfrcm.AtualizaMesEntrada;
var
  I: Integer;
begin
  if not(registroEnt.State = dsInsert) then
    Exit;

  (* Atualiza dados a partir do campo etdcodigo *)
  for I := 3 to registroEnt.FieldCount - 1 do
    registroEnt.Fields[I].AsString := registro.Fields[I].AsString;
end;

procedure Tfrcm.BActEcluirClick(Sender: TObject);
begin
  if itm.IsEmpty then
    Exit;

  if Application.MessageBox(PChar('Confirma a exclusão do item selecionado?'), 'Excluir', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
    Exit;

  itm.Delete;
  itm.Refresh;
  CalculaTotais(tmSaida);
end;

procedure Tfrcm.bActExcluirEntClick(Sender: TObject);
begin
  if itmEnt.IsEmpty then
    Exit;

  if Application.MessageBox(PChar('Confirma a exclusão do item selecionado?'), 'Excluir', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
    Exit;

  itmEnt.Delete;
  itmEnt.Refresh;
  CalculaTotais(tmEntrada);
end;

procedure Tfrcm.BActIncluirClick(Sender: TObject);
begin
  if not PermiteSai then
  begin
    Application.MessageBox(PChar('Não é permitido lançar mais itens de saída!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfitmrcm, '', registromeschave.AsString);

  CalculaTotais(tmSaida);
end;

procedure Tfrcm.bActIncluirEntClick(Sender: TObject);
begin
  if not PermiteEnt then
  begin
    Application.MessageBox(PChar('Não é permitido lançar mais itens de entrada!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfitmrcm, '', registroEntmeschave.AsString);

  CalculaTotais(tmEntrada);
end;

procedure Tfrcm.bcancelaClick(Sender: TObject);
begin
  inherited;

  (* Deleta registro de entrada *)
  if ModalResult = mrCancel then
    if not registroEnt.IsEmpty then
      registroEnt.Delete;
end;

procedure Tfrcm.bconfirmaClick(Sender: TObject);
var
  vlCfop: string;
begin
  if (ItensSai = 0) or (ItensEnt = 0) then
  begin
    Application.MessageBox(PChar('Não é possível confirmar o registro sem lançamento de itens!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if TotalSai <> TotalEnt then
  begin
    Application.MessageBox(PChar('Total dos itens de entrada deve ser igual ao de saída!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if not ValidaProdutos(registromeschave.AsString) then
    Exit;

  if not ValidaProdutos(registroEntmeschave.AsString) then
    Exit;

  (* Atualiza custo dos itens de Entrada *)
  qPunCusto.Params[0].AsInteger := registroEntmeschave.AsInteger;
  qPunCusto.ExecSQL;
  { *muda o estado de reclassificacao para evitar a reclassificacao duplicada * }

  if vpMesChave <> '' then
  begin
    Consulta.Close;
    Consulta.SQL.Text := 'update mes set mesreclassicacao=2 where meschave=' + vpMesChave;
    Consulta.ExecSQL;

    Consulta.Close;
    Consulta.SQL.Text := 'update itm set toecodigo=' + toecodigo.Field.AsString + ' where meschave=' + vpMesChave;
    Consulta.ExecSQL;

    Consulta.Close;
    Consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + toecodigo.Field.AsString;
    Consulta.Open;

    vlCfop := Consulta.Fields[0].AsString;
    if vlCfop <> '' then
    begin

      Consulta.Close;
      Consulta.SQL.Text := 'update itm set cfocfopdestinacao=' + QuotedStr(vlCfop) + ', cfocfop=' + QuotedStr(vlCfop) + ' where meschave=' + vpMesChave;
      Consulta.ExecSQL;

    end;

  end;

  inherited;

end;

procedure Tfrcm.btImportarClick(Sender: TObject);
var
  I: Integer;
  vlCfop: string;
begin

  inherited;

  txtFiltro := 'mesreclassicacao=1';
  vpMesChave := mostralista('mcpr', 'mesreclassicacao=1');

  if vpMesChave = '' then
    Exit;

  itmAImportar.Close;
  itmAImportar.SQL.Text := 'select itmchave from itm where meschave=' + vpMesChave;
  itmAImportar.Open;

  itmAImportar.First;


  while not itmAImportar.Eof do
  begin
    itmImp.Close;
    itmImp.Params[0].AsInteger := itmAImportar.Fields[0].AsInteger;
    itmImp.Open;

    itmDes.Close;
    itmDes.Open;

    if not itmImp.IsEmpty then
    begin

      if not itmDes.IsEmpty then
        itmDes.Edit
      else
        itmDes.Append;

      for I := 1 to itmDes.FieldCount - 1 do
        itmDes.FieldByName(itmDes.Fields[I].FieldName).AsString := itmImp.FieldByName(itmDes.Fields[I].FieldName).AsString;

      itmDes.FieldByName('meschave').AsInteger := self.registromeschave.AsInteger;
      itmDes.FieldByName('toecodigo').AsInteger := toecodigo.Field.AsInteger;

      Consulta.Close;
      Consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + toecodigo.Field.AsString;
      Consulta.Open;

      vlCfop := Consulta.Fields[0].AsString;

      if vlCfop <> '' then
      begin
        itmDescfocfopdestinacao.AsString := vlCfop;
        itmDescfocfop.AsString := vlCfop;
      end;

      itmDes.Post;

    end;

    itmAImportar.Next;
  end;
  itm.Close;
  itm.Params[0].AsInteger := self.registromeschave.AsInteger;
  itm.Open;

  CalculaTotais(tmSaida);

  showmessage('Importação realizada com sucesso!');

end;

procedure Tfrcm.bvalidarClick(Sender: TObject);
begin
  AtualizaMesEntrada;

  registro.Post;
  registroEnt.Post;

  registro.Edit;
  registroEnt.Edit;

  registromeschaverecla.AsInteger := registroEntmeschave.AsInteger;

  registro.Params[0].AsInteger := registromeschave.AsInteger;
  registroEnt.Params[0].AsInteger := registroEntmeschave.AsInteger;

  itm.Close;
  itm.Params[0].AsInteger := registromeschave.AsInteger;
  itm.Open;

  itmEnt.Close;
  itmEnt.Params[0].AsInteger := registroEntmeschave.AsInteger;
  itmEnt.Open;

  CalculaTotais(tmSaida);
  CalculaTotais(tmEntrada);

  bvalidar.Enabled := False;
  PlDetalhe.Visible := True;
  BActIncluir.SetFocus;
end;

procedure Tfrcm.CalculaTotais(TipoMovimento: TTipoMovimento);
begin
  case TipoMovimento of
    tmSaida:
      begin
        qCalculaTotais.Params[0].AsInteger := registromeschave.AsInteger;
        qCalculaTotais.Execute;

        registro.Refresh;
        itm.Refresh;

        TotalSai := qCalculaTotais.Fields[0].AsFloat;
        QtdSai := qCalculaTotais.Fields[1].AsFloat;
        ItensSai := itm.RecordCount;
      end;
    tmEntrada:
      begin
        qCalculaTotais.Params[0].AsInteger := registroEntmeschave.AsInteger;
        qCalculaTotais.Execute;

        registroEnt.Refresh;
        itmEnt.Refresh;

        TotalEnt := qCalculaTotais.Fields[0].AsFloat;
        QtdEnt := qCalculaTotais.Fields[1].AsFloat;
        ItensEnt := itmEnt.RecordCount;
      end;
  end;

  PermiteEnt := (ItensSai <= 1) or (ItensEnt = 0);
  PermiteSai := (ItensEnt <= 1) or (ItensSai = 0);
end;

procedure Tfrcm.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  for I := 0 to self.ComponentCount - 1 do
    if self.Components[I] is TDBEdit then
      if (TDBEdit(Components[I]).ReadOnly) then
        TDBEdit(Components[I]).Color := PEG_COR_VALORPADRAO;

  meschave.Color := clSilver;

  if Situacao = 'Incluindo' then
    registroEnt.Append
  else
  begin
    registroEnt.Close;
    registroEnt.Params[0].AsInteger := registromeschaverecla.AsInteger;
    registroEnt.Open;

    registroEnt.Edit;
  end;

  if not itm.Active then
    itm.Open;
end;

procedure Tfrcm.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrcm.listaitensEntDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrcm.registroAfterInsert(DataSet: TDataSet);
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

procedure Tfrcm.SetItensEnt(const Value: Double);
begin
  FItensEnt := Value;

  PlQtItensEnt.Caption := 'Itens: ' + FloatToStr(FItensEnt);
end;

procedure Tfrcm.SetItensSai(const Value: Double);
begin
  FItensSai := Value;

  PlQtItensSai.Caption := 'Itens: ' + FloatToStr(FItensSai);
end;

procedure Tfrcm.SetPermiteEnt(const Value: Boolean);
begin
  FPermiteEnt := Value;
end;

procedure Tfrcm.SetPermiteSai(const Value: Boolean);
begin
  FPermiteSai := Value;
end;

procedure Tfrcm.SetQtdEnt(const Value: Double);
begin
  FQtdEnt := Value;

  PlQtdEnt.Caption := 'Quantidade: ' + FloatToStr(FQtdEnt);
end;

procedure Tfrcm.SetQtdSai(const Value: Double);
begin
  FQtdSai := Value;

  PlQtdSai.Caption := 'Quantidade: ' + FloatToStr(FQtdSai);
end;

procedure Tfrcm.SetTotalEnt(const Value: Double);
begin
  FTotalEnt := Value;

  PlVlrTotalEnt.Caption := 'Total R$ ' + FormatFloat('#,###,##0.00', FTotalEnt);
end;

procedure Tfrcm.SetTotalSai(const Value: Double);
begin
  FTotalSai := Value;

  PlVlrTotalSai.Caption := 'Total R$ ' + FormatFloat('#,###,##0.00', FTotalSai);
end;

procedure Tfrcm.tdfcodigoEnter(Sender: TObject);
begin
  txtFiltro := ' (tdfcodigo = ''00'' OR tdfcodigo = ''PE'') ';
end;

procedure Tfrcm.toecodigoEntEnter(Sender: TObject);
begin
  txtFiltro := 'ttocodigo = 8 AND ttecodigo = 0';
  toe.Filter := txtFiltro;
  toe.Filtered := True;
end;

procedure Tfrcm.toecodigoEnter(Sender: TObject);
begin
  txtFiltro := 'ttocodigo = 8 AND ttecodigo = 1';
  toe.Filter := txtFiltro;
  toe.Filtered := True;
end;

function Tfrcm.ValidaProdutos(pMesChave: String): Boolean;
type
  TValidaProdutos = Function(AOwner: TComponent; conexao: tuniconnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;
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
      // DoUnLoadPackage(Pack);
    end;
end;

end.
