unit ufravfovfe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils;

type
  TTipoCalculo = (calcIncluindo, calcExcluindo, calcTotal);

type
  Tfravfovfe = class(Tfrabase)
    uqtabelaorcchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaorcdataabert: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaorcnome: TStringField;
    uqtabelaorctelefone: TStringField;
    uqtabelaorcendereco: TStringField;
    uqtabelaorcdescrpagto: TStringField;
    uqtabelaorcgeral: TFloatField;
    uqtabelaorcdesconto: TFloatField;
    uqtabelaorctotal: TFloatField;
    uqtabelastoidentificacao: TStringField;
    uqtabelapuoidentificacao: TStringField;
    uqtabelaedrcodigo: TIntegerField;
    uqtabelastocodigo: TIntegerField;
    uqtabelaorcobs: TStringField;
    uqtabelaclbvendedor: TIntegerField;
    uqtabelaclbvendedorident: TStringField;
    uqtabelaveicodigo: TIntegerField;
    uqtabelaeqpcodigo: TIntegerField;
    uqtabelaobjidentificacao: TStringField;
    uqtabelaobjmodelo: TStringField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    cfgcfgusaveiculo: TIntegerField;
    cfgcfgidentificaequip: TIntegerField;
    GBTotalAtend: TGroupBox;
    PlTotalAtend: TPanel;
    GBQtdAtend: TGroupBox;
    PlQtde: TPanel;
    PlBotoesIncluir: TPanel;
    BIncluirTodos: TBitBtn;
    BIncluirSelecionado: TBitBtn;
    GBSelecionados: TGroupBox;
    DBGSelecionados: TDBGrid;
    PnlSelecionados: TPanel;
    GBTotalAtendSel: TGroupBox;
    PlTotalAtendSel: TPanel;
    GBQtdAtendSel: TGroupBox;
    PlQtdeSel: TPanel;
    PlBotoesExcluir: TPanel;
    BExcluirTodos: TBitBtn;
    BExcluirSelecionado: TBitBtn;
    orcvfo: TUniQuery;
    vfo: TUniQuery;
    orcvfoorcchave: TIntegerField;
    orcvfoetdcodigo: TIntegerField;
    orcvfoetdidentificacao: TStringField;
    orcvfoorcdataabert: TDateField;
    orcvfoclbcodigo: TIntegerField;
    orcvfoclbidentificacao: TStringField;
    orcvfoorcnome: TStringField;
    orcvfoorctelefone: TStringField;
    orcvfoorcendereco: TStringField;
    orcvfoorcdescrpagto: TStringField;
    orcvfoorcgeral: TFloatField;
    orcvfoorcdesconto: TFloatField;
    orcvfoorctotal: TFloatField;
    orcvfostoidentificacao: TStringField;
    orcvfopuoidentificacao: TStringField;
    orcvfoedrcodigo: TIntegerField;
    orcvfostocodigo: TIntegerField;
    orcvfoorcobs: TStringField;
    orcvfoclbvendedor: TIntegerField;
    orcvfoclbvendedorident: TStringField;
    orcvfoveicodigo: TIntegerField;
    orcvfoeqpcodigo: TIntegerField;
    orcvfoobjidentificacao: TStringField;
    orcvfoobjmodelo: TStringField;
    DSorcvfo: TUniDataSource;
    vfovfocodigo: TIntegerField;
    vfovfecodigo: TIntegerField;
    vfoorcchave: TIntegerField;
    orcvfovfocodigo: TIntegerField;
    vfe: TUniQuery;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure BIncluirTodosClick(Sender: TObject);
    procedure BIncluirSelecionadoClick(Sender: TObject);
    procedure BExcluirTodosClick(Sender: TObject);
    procedure BExcluirSelecionadoClick(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGSelecionadosDblClick(Sender: TObject);
    procedure DBGSelecionadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActSairExecute(Sender: TObject);
  private
    FClbCodigo: Integer;
    FVfeCodigo: Integer;
    FQtdAtend: Integer;
    FTotalAtend: Double;
    FQtdAtendSel: Integer;
    FTotalAtendSel: Double;
    FVfeData: TDate;

    procedure AtualizaTotais(TipoCalculo: TTipoCalculo; Valor: Double);
    procedure InsereAtend(pAtend: Integer);
    procedure SetClbCodigo(const Value: Integer);
    procedure SetVfeCodigo(const Value: Integer);
    procedure SetQtdAtend(const Value: Integer);
    procedure SetQtdAtendSel(const Value: Integer);
    procedure SetTotalAtend(const Value: Double);
    procedure SetTotalAtendSel(const Value: Double);
    procedure SetVfeData(const Value: TDate);
    { Private declarations }
  published
    property ClbCodigo: Integer read FClbCodigo write SetClbCodigo;
    property VfeCodigo: Integer read FVfeCodigo write SetVfeCodigo;
    property VfeData: TDate read FVfeData write SetVfeData;

    (* Totais *)
    property QtdAtend: Integer read FQtdAtend write SetQtdAtend;
    property QtdAtendSel: Integer read FQtdAtendSel write SetQtdAtendSel;
    property TotalAtend: Double read FTotalAtend write SetTotalAtend;
    property TotalAtendSel: Double read FTotalAtendSel write SetTotalAtendSel;
  public
    procedure Carregar; override;
    { Public declarations }
  end;

var
  fravfovfe: Tfravfovfe;

  // Início ID do Módulo fravfovfe
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Venda Fora do Estabelecimento - Vínculo com Atendimentos';

  // Fim ID do Módulo fravfovfe

implementation

{$R *.dfm}
{ Tfravfovfe }

procedure Tfravfovfe.ActAtualizarExecute(Sender: TObject);
begin
  UqTabela.Params[0].AsInteger := ClbCodigo;

  inherited;

  AtualizaTotais(calcTotal, 0);
end;

procedure Tfravfovfe.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(DBGSelecionados);

  inherited;
end;

procedure Tfravfovfe.AtualizaTotais(TipoCalculo: TTipoCalculo; Valor: Double);
var
  vlValorParcelas: Double;
  vlValorParcelasSel: Double;
begin
  UqTabela.Refresh;
  orcvfo.Refresh;

  QtdAtend := UqTabela.RecordCount;
  QtdAtendSel := orcvfo.RecordCount;

  case TipoCalculo of

    calcIncluindo:
      begin
        TotalAtendSel := TotalAtendSel + Valor;
        TotalAtend := TotalAtend - Valor;
      end;

    calcExcluindo:
      begin
        TotalAtendSel := TotalAtendSel - Valor;
        TotalAtend := TotalAtend + Valor;
      end;

    calcTotal:
      begin
        vlValorParcelas := 0;
        vlValorParcelasSel := 0;

        (* Calcula Total das Parcelas *)
        UqTabela.DisableControls;
        try
          UqTabela.First;
          while not UqTabela.Eof do
          begin
            vlValorParcelas := vlValorParcelas + uqtabelaorctotal.AsFloat;
            UqTabela.Next;
          end;
        finally
          UqTabela.EnableControls;
        end;

        (* Calcula Total das Parcelas Selecionadas *)
        orcvfo.DisableControls;
        try
          orcvfo.First;
          while not orcvfo.Eof do
          begin
            vlValorParcelasSel := vlValorParcelasSel + orcvfoorctotal.AsFloat;
            orcvfo.Next;
          end;
        finally
          orcvfo.EnableControls;
        end;

        UqTabela.First;
        orcvfo.First;

        TotalAtend := vlValorParcelas;
        TotalAtendSel := vlValorParcelasSel;
      end;
  end;
end;

procedure Tfravfovfe.BExcluirSelecionadoClick(Sender: TObject);
var
  vlValorParcela: Double;
begin
  if orcvfo.IsEmpty then
    Exit;

  vlValorParcela := orcvfoorctotal.AsFloat;
  orcvfo.Delete;

  AtualizaTotais(calcExcluindo, vlValorParcela);
end;

procedure Tfravfovfe.BExcluirTodosClick(Sender: TObject);
begin
  if orcvfo.IsEmpty then
    Exit;

  orcvfo.DisableControls;

  try
    orcvfo.First;
    while not orcvfo.Eof do
      orcvfo.Delete;
  finally
    orcvfo.EnableControls;
  end;

  AtualizaTotais(calcExcluindo, TotalAtendSel);
end;

procedure Tfravfovfe.BIncluirSelecionadoClick(Sender: TObject);
var
  vlValorParcela: Double;
begin
  if UqTabela.IsEmpty then
    Exit;

  vlValorParcela := uqtabelaorctotal.AsFloat;

  InsereAtend(uqtabelaorcchave.AsInteger);

  AtualizaTotais(calcIncluindo, vlValorParcela);
end;

procedure Tfravfovfe.BIncluirTodosClick(Sender: TObject);
begin
  if UqTabela.IsEmpty then
    Exit;

  UqTabela.DisableControls;

  try
    UqTabela.First;
    while not UqTabela.Eof do
    begin
      InsereAtend(uqtabelaorcchave.AsInteger);

      UqTabela.Next;
    end;
  finally
    UqTabela.EnableControls;
  end;

  AtualizaTotais(calcIncluindo, TotalAtend);
end;

procedure Tfravfovfe.Carregar;
begin
  cfg.Connection := Self.zcone;
  cfg.Open;

  (* Se não identifica Vendedor colunas são deletadas *)
  if (cfgcfgidentificavendedor.AsInteger = 0) then
  begin
    DeletarColuna('clbvendedor', dbglista);
    DeletarColuna('clbvendedorident', dbglista);

    DeletarColuna('clbvendedor', DBGSelecionados);
    DeletarColuna('clbvendedorident', DBGSelecionados);
  end;

  (* Se não utilizar Equipamento nem Veículo colunas são deletadas *)
  if (cfgcfgusaveiculo.AsInteger = 0) and (cfgcfgidentificaequip.AsInteger = 0) then
  begin
    DeletarColuna('objidentificacao', dbglista);
    DeletarColuna('objmodelo', dbglista);

    DeletarColuna('objidentificacao', DBGSelecionados);
    DeletarColuna('objmodelo', DBGSelecionados);
  end;

  inherited Carregar;

  CarregarColunas(DBGSelecionados);

  zcone.StartTransaction;
end;

procedure Tfravfovfe.DBGListaDblClick(Sender: TObject);
begin
  BIncluirSelecionado.Click;
end;

procedure Tfravfovfe.DBGSelecionadosDblClick(Sender: TObject);
begin
  BExcluirSelecionado.Click;
end;

procedure Tfravfovfe.DBGSelecionadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfravfovfe.InsereAtend(pAtend: Integer);
begin
  vfo.Append;
  vfovfecodigo.AsInteger := VfeCodigo;
  vfoorcchave.AsInteger := pAtend;
  vfo.Post;
end;

procedure Tfravfovfe.SetClbCodigo(const Value: Integer);
begin
  FClbCodigo := Value;
end;

procedure Tfravfovfe.SetQtdAtend(const Value: Integer);
begin
  FQtdAtend := Value;

  PlQtde.Caption := IntToStr(FQtdAtend);
end;

procedure Tfravfovfe.SetQtdAtendSel(const Value: Integer);
begin
  FQtdAtendSel := Value;

  PlQtdeSel.Caption := IntToStr(FQtdAtendSel);
end;

procedure Tfravfovfe.SetTotalAtend(const Value: Double);
begin
  FTotalAtend := Value;

  PlTotalAtend.Caption := FormatFloat('#,###,##0.00', FTotalAtend);
end;

procedure Tfravfovfe.SetTotalAtendSel(const Value: Double);
begin
  FTotalAtendSel := Value;

  PlTotalAtendSel.Caption := FormatFloat('#,###,##0.00', FTotalAtendSel);
end;

procedure Tfravfovfe.SetVfeCodigo(const Value: Integer);
begin
  FVfeCodigo := Value;

  vfo.Connection := zcone;
  vfo.Open;

  orcvfo.Connection := zcone;
  orcvfo.Params[0].AsInteger := ClbCodigo;
  orcvfo.Params[1].AsInteger := FVfeCodigo;
  orcvfo.Open;
end;

procedure Tfravfovfe.SetVfeData(const Value: TDate);
begin
  FVfeData := Value;

  txtfiltrosql := ' orc.orcdataabert >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', FVfeData));
end;

end.
