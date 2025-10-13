unit ufracrebol;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, ufuncoes, System.Math, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  TTipoCalculo = (calcIncluindo, calcExcluindo, calcTotal);

  Tfracrebol = class(Tfrabase)
    uqtabelarfichave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelabcocodigo: TStringField;
    uqtabelacarcodigo: TIntegerField;
    uqtabelarfiemissao: TDateField;
    uqtabelarfivencimento: TDateField;
    uqtabelarfinumero: TStringField;
    uqtabelarfihistorico: TStringField;
    uqtabelasrfidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelarfidias: TIntegerField;
    uqtabelarfijuros: TFloatField;
    uqtabelarfimulta: TFloatField;
    uqtabelarfidesconto: TFloatField;
    uqtabelarfisaldogeral: TFloatField;
    uqtabelabconome: TStringField;
    uqtabelatitcodigo: TIntegerField;
    uqtabelarfivalor: TFloatField;
    GroupBox1: TGroupBox;
    PlTotalParcelas: TPanel;
    GroupBox6: TGroupBox;
    PlQtde: TPanel;
    PlBotoesIncluir: TPanel;
    BIncluirTodos: TBitBtn;
    BIncluirSelecionado: TBitBtn;
    Panel1: TPanel;
    GroupBox5: TGroupBox;
    PlTotalParcelasSel: TPanel;
    GroupBox11: TGroupBox;
    PlQtdeSel: TPanel;
    PlBotoesExcluir: TPanel;
    BExcluirTodos: TBitBtn;
    BExcluirSelecionado: TBitBtn;
    GBselecionados: TGroupBox;
    RfiGbr: TUniQuery;
    DSRfiGbr: TUniDataSource;
    RfiGbrrfichave: TIntegerField;
    RfiGbretdidentificacao: TStringField;
    RfiGbrrfiemissao: TDateField;
    RfiGbrrfivencimento: TDateField;
    RfiGbrrfinumero: TStringField;
    RfiGbrrfivalor: TFloatField;
    RfiGbrrfijuros: TFloatField;
    RfiGbrrfimulta: TFloatField;
    RfiGbrrfidesconto: TFloatField;
    RfiGbrrfisaldogeral: TFloatField;
    gbr: TUniQuery;
    gbrgbrcodigo: TIntegerField;
    gbrgebcodigo: TIntegerField;
    gbrrfichave: TIntegerField;
    DBGSelecionados: TDBGrid;
    RfiBrm: TUniQuery;
    DSRfiBrm: TUniDataSource;
    RfiBrmrfichave: TIntegerField;
    RfiBrmetdidentificacao: TStringField;
    RfiBrmrfiemissao: TDateField;
    RfiBrmrfivencimento: TDateField;
    RfiBrmrfinumero: TStringField;
    RfiBrmrfivalor: TFloatField;
    RfiBrmrfijuros: TFloatField;
    RfiBrmrfimulta: TFloatField;
    RfiBrmrfidesconto: TFloatField;
    RfiBrmrfisaldogeral: TFloatField;
    brm: TUniQuery;
    brmbrmcodigo: TIntegerField;
    brmrmbcodigo: TIntegerField;
    brmbolchave: TIntegerField;
    brmtibcodigo: TIntegerField;
    tib: TUniQuery;
    uqtabelabolchave: TIntegerField;
    uqtabelabolnossonumero: TStringField;
    RfiBrmbolchave: TIntegerField;
    RfiBrmbolnossonumero: TStringField;
    RfiGbrbolnossonumero: TStringField;
    procedure BIncluirTodosClick(Sender: TObject);
    procedure BIncluirSelecionadoClick(Sender: TObject);
    procedure BExcluirTodosClick(Sender: TObject);
    procedure BExcluirSelecionadoClick(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGSelecionadosDblClick(Sender: TObject);
    procedure DBGSelecionadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    FGebCodigo: Integer;
    FFinalidade: TRotinasBoletos;
    FQtdParcelasSel: Integer;
    FQtdParcelas: Integer;
    FTotalParcelas: Double;
    FTotalParcelasSel: Double;
    FCarteira: Integer;
    FRmbCodigo: Integer;

    qRfi: TUniQuery;
    FInstrucao: Integer;

    procedure AtualizaTotais(TipoCalculo: TTipoCalculo; Valor: Double);
    procedure InsereBoleto(pBolChave: Integer);
    procedure InsereParcela(pParcela: Integer);
    procedure SetGebCodigo(const Value: Integer);
    procedure SetFinalidade(const Value: TRotinasBoletos);
    procedure SetQtdParcelas(const Value: Integer);
    procedure SetQtdParcelasSel(const Value: Integer);
    procedure SetTotalParcelas(const Value: Double);
    procedure SetTotalParcelasSel(const Value: Double);
    procedure SetCarteira(const Value: Integer);
    procedure SetRmbCodigo(const Value: Integer);
    procedure SetInstrucao(const Value: Integer);
    { Private declarations }
  published
    procedure Carregar; override;
    property Finalidade: TRotinasBoletos read FFinalidade write SetFinalidade;

    (* Geração de Boletos *)
    property GebCodigo: Integer read FGebCodigo write SetGebCodigo;

    (* Remessa de Boletos *)
    property Carteira: Integer read FCarteira write SetCarteira;
    property Instrucao: Integer read FInstrucao write SetInstrucao;
    property RmbCodigo: Integer read FRmbCodigo write SetRmbCodigo;

    (* Totais *)
    property QtdParcelas: Integer read FQtdParcelas write SetQtdParcelas;
    property QtdParcelasSel: Integer read FQtdParcelasSel write SetQtdParcelasSel;
    property TotalParcelas: Double read FTotalParcelas write SetTotalParcelas;
    property TotalParcelasSel: Double read FTotalParcelasSel write SetTotalParcelasSel;
  public
    { Public declarations }
  end;

var
  fracrebol: Tfracrebol;

  // Início ID do Módulo fracrebol
const
  vPlIdMd = '02.02.15.005-02';
  vPlTitMdl = 'Contas a Receber';

  // Fim ID do Módulo fracrebol

implementation

{$R *.dfm}

procedure Tfracrebol.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  AtualizaTotais(calcTotal, 0);
end;

procedure Tfracrebol.AtualizaTotais(TipoCalculo: TTipoCalculo; Valor: Double);
var
  vlRecNo: Integer;
  vlRecNoSel: Integer;
  vlValorParcelas: Double;
  vlValorParcelasSel: Double;
begin
  uqtabela.DisableControls;
  qRfi.DisableControls;
  try
    vlRecNo := uqtabela.RecNo - IfThen(uqtabela.RecNo = uqtabela.RecordCount, 1, 0);
    uqtabela.Refresh;
    uqtabela.RecNo := vlRecNo;

    vlRecNoSel := qRfi.RecNo;
    qRfi.Refresh;
    qRfi.RecNo := vlRecNoSel;
  finally
    uqtabela.EnableControls;
    qRfi.EnableControls;
  end;

  QtdParcelas := uqtabela.RecordCount;
  QtdParcelasSel := qRfi.RecordCount;

  case TipoCalculo of

    calcIncluindo:
      begin
        TotalParcelasSel := TotalParcelasSel + Valor;
        TotalParcelas := TotalParcelas - Valor;
      end;

    calcExcluindo:
      begin
        TotalParcelasSel := TotalParcelasSel - Valor;
        TotalParcelas := TotalParcelas + Valor;
      end;

    calcTotal:
      begin
        vlValorParcelas := 0;
        vlValorParcelasSel := 0;

        (* Calcula Total das Parcelas *)
        uqtabela.DisableControls;
        try
          uqtabela.First;
          while not uqtabela.Eof do
          begin
            vlValorParcelas := vlValorParcelas + uqtabelarfisaldogeral.AsFloat;
            uqtabela.Next;
          end;
        finally
          uqtabela.EnableControls;
        end;

        (* Calcula Total das Parcelas Selecionadas *)
        qRfi.DisableControls;
        try
          qRfi.First;
          while not qRfi.Eof do
          begin
            vlValorParcelasSel := vlValorParcelasSel + qRfi.FieldByName('rfisaldogeral').AsFloat;
            qRfi.Next;
          end;
        finally
          qRfi.EnableControls;
        end;

        uqtabela.First;
        qRfi.First;

        TotalParcelas := vlValorParcelas;
        TotalParcelasSel := vlValorParcelasSel;
      end;
  end;
end;

procedure Tfracrebol.BExcluirSelecionadoClick(Sender: TObject);
var
  vlValorParcela: Double;
begin
  if qRfi.IsEmpty then
    Exit;

  vlValorParcela := qRfi.FieldByName('rfisaldogeral').AsFloat;
  qRfi.Delete;
  AtualizaTotais(calcExcluindo, vlValorParcela);
end;

procedure Tfracrebol.BExcluirTodosClick(Sender: TObject);
begin
  if qRfi.IsEmpty then
    Exit;

  qRfi.DisableControls;

  try
    qRfi.First;
    while not qRfi.Eof do
      qRfi.Delete;
  finally
    qRfi.EnableControls;
  end;

  AtualizaTotais(calcExcluindo, TotalParcelasSel);
end;

procedure Tfracrebol.BIncluirSelecionadoClick(Sender: TObject);
var
  vlValorParcela: Double;
begin
  if uqtabela.IsEmpty then
    Exit;

  vlValorParcela := uqtabelarfisaldogeral.AsFloat;

  case Finalidade of
    rblGeracao:
      InsereParcela(uqtabelarfichave.AsInteger);
    rblGerarRemessa:
      InsereBoleto(uqtabelabolchave.AsInteger);
  end;

  AtualizaTotais(calcIncluindo, vlValorParcela);
end;

procedure Tfracrebol.BIncluirTodosClick(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  uqtabela.DisableControls;

  try
    uqtabela.First;
    while not uqtabela.Eof do
    begin
      case Finalidade of
        rblGeracao:
          InsereParcela(uqtabelarfichave.AsInteger);
        rblGerarRemessa:
          InsereBoleto(uqtabelabolchave.AsInteger);
      end;

      uqtabela.Next;
    end;
  finally
    uqtabela.EnableControls;
  end;

  AtualizaTotais(calcIncluindo, TotalParcelas);
end;

procedure Tfracrebol.Carregar;
begin
  inherited Carregar;

  zcone.StartTransaction;

  case Finalidade of
    rblGeracao:
      begin
        DeletarColuna('bolnossonumero', DBGLista);
        DeletarColuna('bolnossonumero', DBGSelecionados);
      end;
    rblGerarRemessa:
      begin
        PosicaoColuna('bolnossonumero', DBGLista, 4);
        PosicaoColuna('bolnossonumero', DBGSelecionados, 2);
      end;
  end;
end;

procedure Tfracrebol.DBGListaDblClick(Sender: TObject);
begin
  BIncluirSelecionado.Click;
end;

procedure Tfracrebol.DBGSelecionadosDblClick(Sender: TObject);
begin
  BExcluirSelecionado.Click;
end;

procedure Tfracrebol.DBGSelecionadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfracrebol.InsereBoleto(pBolChave: Integer);
begin
  brm.Append;
  brmrmbcodigo.AsInteger := RmbCodigo;
  brmbolchave.AsInteger := pBolChave;
  brmtibcodigo.AsInteger := Instrucao;
  brm.Post;
end;

procedure Tfracrebol.InsereParcela(pParcela: Integer);
begin
  gbr.Append;
  gbrgebcodigo.AsInteger := GebCodigo;
  gbrrfichave.AsInteger := pParcela;
  gbr.Post;
end;

procedure Tfracrebol.SetCarteira(const Value: Integer);
begin
  FCarteira := Value;

  tib.Connection := zcone;
  tib.Params[0].AsInteger := FCarteira;
  tib.Params[1].AsString := '01'; // Instrução de Remessa;
  tib.Open;

  Instrucao := tib.Fields[0].AsInteger;
end;

procedure Tfracrebol.SetFinalidade(const Value: TRotinasBoletos);
begin
  FFinalidade := Value;

  case Finalidade of
    rblGeracao:
      begin
        uqtabela.ParamByName('finalidade').AsInteger := 0;
        uqtabela.ParamByName('carcodigo').AsInteger := Carteira;
        uqtabela.ParamByName('flacodigo').AsInteger:=acesso.Filial;
        titulo := 'Contas a Receber - Geração de Boletos';
        qRfi := RfiGbr as TUniQuery;
      end;

    rblGerarRemessa:
      begin
        uqtabela.ParamByName('finalidade').AsInteger := 1;
        uqtabela.ParamByName('carcodigo').AsInteger := Carteira;
        uqtabela.ParamByName('flacodigo').AsInteger:=acesso.Filial;
        titulo := 'Boletos - Geração de Remessa';
        qRfi := RfiBrm as TUniQuery;
      end;
  end;
end;

procedure Tfracrebol.SetGebCodigo(const Value: Integer);
begin
  FGebCodigo := Value;

  gbr.Connection := zcone;
  gbr.Open;

  RfiGbr.Connection := zcone;
  RfiGbr.Params[0].AsInteger := FGebCodigo;
  RfiGbr.Params[1].AsInteger := acesso.Filial;
  RfiGbr.Open;
end;

procedure Tfracrebol.SetInstrucao(const Value: Integer);
begin
  FInstrucao := Value;
end;

procedure Tfracrebol.SetQtdParcelas(const Value: Integer);
begin
  FQtdParcelas := Value;

  PlQtde.Caption := IntToStr(FQtdParcelas);
end;

procedure Tfracrebol.SetQtdParcelasSel(const Value: Integer);
begin
  FQtdParcelasSel := Value;

  PlQtdeSel.Caption := IntToStr(FQtdParcelasSel);
end;

procedure Tfracrebol.SetRmbCodigo(const Value: Integer);
begin
  FRmbCodigo := Value;

  brm.Connection := zcone;
  brm.Open;

  RfiBrm.Connection := zcone;
  RfiBrm.Params[0].AsInteger := FRmbCodigo;
  RfiBrm.Open;

  DBGSelecionados.DataSource := DSRfiBrm;
end;

procedure Tfracrebol.SetTotalParcelas(const Value: Double);
begin
  FTotalParcelas := Value;

  PlTotalParcelas.Caption := FormatFloat('#,###,##0.00', FTotalParcelas);
end;

procedure Tfracrebol.SetTotalParcelasSel(const Value: Double);
begin
  FTotalParcelasSel := Value;

  PlTotalParcelasSel.Caption := FormatFloat('#,###,##0.00', FTotalParcelasSel);
end;

END.
