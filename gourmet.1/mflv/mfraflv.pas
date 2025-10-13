unit mfraflv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, VclTee.TeeGDIPlus,
  VclTee.TeEngine, VclTee.Series, VclTee.TeeProcs, VclTee.Chart, VclTee.DBChart,
  System.ImageList, Vcl.ImgList,ufuncoes;

type
  Tfraflv = class(Tfrabase)
    uqtabelamesvalor: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelamestotalcancelado: TFloatField;
    uqtabelamestotalnf: TFloatField;
    uqtabelamesdescontos: TFloatField;
    uqtabelamesregistro: TStringField;
    mes: TUniQuery;
    mesmesvalor: TFloatField;
    mesmestotal: TFloatField;
    mesmestotalcancelado: TFloatField;
    mesmestotalnf: TFloatField;
    mesmesdescontos: TFloatField;
    mesmesregistro: TDateField;
    DSmes: TUniDataSource;
    DBMes: TDBGrid;
    Panel1: TPanel;
    uqtabelaprimeirodia: TDateField;
    uqtabelaultimodia: TDateField;
    itm: TUniQuery;
    itmMAXitmtotal: TFloatField;
    itmAVGitmtotal: TFloatField;
    itmMAXitmdesconto: TFloatField;
    itmAVGitmdesconto: TFloatField;
    itmCOUNTitmchave: TIntegerField;
    itmmesregistro: TDateField;
    itmquantivendas: TIntegerField;
    itmvendamedia: TFloatField;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel3: TPanel;
    TotaisDtls: TVirtualTable;
    TotaisDtlsmdaidentificacao: TStringField;
    TotaisDtlsdtlvalor: TFloatField;
    TotaisDtlsmdacodigo: TIntegerField;
    DSTotaisDtls: TDataSource;
    uqDtlConvenios: TUniQuery;
    uqDtlTotais: TUniQuery;
    uqTotais: TUniQuery;
    uqTotaismesvalor: TFloatField;
    uqTotaismesdeconto: TFloatField;
    uqTotaismestotal: TFloatField;
    uqTotaismestotalcancelado: TFloatField;
    uqTotaismestotalnf: TFloatField;
    uqTotaismestotalprodutos: TFloatField;
    uqTotaismestotalservicos: TFloatField;
    mesdiasemana: TStringField;
    mesclb: TUniQuery;
    mesclbmestotal: TFloatField;
    mesclbmestotalcancelado: TFloatField;
    mesclbmesdescontos: TFloatField;
    mesclbclbidentificacao: TStringField;
    DSmesclb: TDataSource;
    DBMesClb: TDBGrid;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    Panel5: TPanel;
    plResumoModalidades: TPanel;
    Panel4: TPanel;
    DBResumoModalidades: TDBGrid;
    fluxohoras: TUniQuery;
    fluxohorasltequantidade: TIntegerField;
    fluxohorasltemes: TIntegerField;
    Dfluxohoras: TDataSource;
    fluxohorasintervalo: TIntegerField;
    uqtabelaquantivendas: TIntegerField;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    DBChart2: TDBChart;
    Series2: TBarSeries;
    uqtabelaanomes: TIntegerField;
    uqtabelaperiodoregistro: TStringField;
    uqDtls: TUniQuery;
    uqDtlsmdaidentificacao: TStringField;
    uqDtlsdtlvalor: TFloatField;
    uqDtlsmdacodigo: TIntegerField;
    Ddts: TDataSource;
    rfi: TUniQuery;
    Panel6: TPanel;
    Drfi: TDataSource;
    rfirfimodalidade: TStringField;
    rfidia: TDateField;
    rfibaixa: TFloatField;
    plTotaisVendas: TPanel;
    Splitter1: TSplitter;
    rfigeral: TUniQuery;
    rfigeralrfimodalidade: TStringField;
    rfigeraldia: TDateField;
    rfigeralbaixa: TFloatField;
    Darfigeral: TDataSource;
    DBGridGeralRFI: TDBGrid;
    pltotalgeral: TPanel;
    mesdoacoes: TFloatField;
    uqTotaismesrfaturado: TFloatField;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DSmesDataChange(Sender: TObject; Field: TField);
    procedure uqTotaisBeforeOpen(DataSet: TDataSet);
  private
    FSQLBaseTotais: String;
    procedure CalculaTotais;
    { Private declarations }
  public
    { Public declarations }
  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  end;

var
  fraflv: Tfraflv;

implementation

{$R *.dfm}

// Início ID do Módulo fraflv
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Fluxo de Vendas';

  // Fim ID do Módulo fraflv

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraflv := Tfraflv.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraflv := Tfraflv.Create(pCargaFrame);
  try
    fraflv.CriaAcoesDeAcesso;
  finally
    fraflv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraflv.DSmesDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if mes.Active then
    if not mes.IsEmpty then
    begin
      itm.Close;
      itm.ParamByName('mesregistro').AsDate := mesmesregistro.AsFloat;
      itm.Open;

      mesclb.Close;
      mesclb.ParamByName('dia').AsDate := mesmesregistro.AsFloat;
      mesclb.ParamByName('flacodigo').AsInteger := acesso.Filial;
      mesclb.Open;

    end;

end;
procedure Tfraflv.CalculaTotais;
var
  vlFiltros: String;

  vlTotalBruto: Double;
  vlTotalDesconto: Double;
  vlTotalLiquido: Double;

  vlTotalProdutos: Double;
  vlTotalServicos: Double;

  vlTotalNF: Double;

  vlTotalCancelado: Double;
  vlRecNo: Integer;

  vlTotalRefaturado: Double;
  vlTotalAFaturar: Double;

  vlTotalTrocaDevo: Double;
  vlTotalDoacoes: Double;

  vlTotalTroco: Double;
begin

  vlTotalTroco := 0;
  vlTotalBruto := 0;
  vlTotalDesconto := 0;
  vlTotalLiquido := 0;

  vlTotalProdutos := 0;
  vlTotalServicos := 0;

  vlTotalRefaturado := 0;
  vlTotalAFaturar := 0;

  vlTotalNF := 0;

  vlTotalCancelado := 0;
  vlTotalTrocaDevo := 0;
  vlTotalDoacoes := 0;

  // inicio dos convenios


  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlConvenios.SQL.Text, 1, Pos('-- Filtros', uqDtlConvenios.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlConvenios.Close;
  uqDtlConvenios.SQL.Text := SQLBaseTotais;
  uqDtlConvenios.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlConvenios.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlConvenios.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqDtlConvenios.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlConvenios.ParamByName('dataInicial').Asdate:=uqtabelaprimeirodia.AsFloat;
  uqDtlConvenios.ParamByName('dataFinal').Asdate:=uqtabelaultimodia.AsFloat;


  uqDtlConvenios.Open;

  // fim dos convenios

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlTotais.SQL.Text, 1, Pos('-- Filtros', uqDtlTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlTotais.Close;
  uqDtlTotais.SQL.Text := SQLBaseTotais;
  uqDtlTotais.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlTotais.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqDtlTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlTotais.SQL.Add('group by mda.mdaidentificacao');
  uqDtlTotais.SQL.Add('order by mda.mdaidentificacao');

  uqDtlTotais.ParamByName('dataInicial').Asdate:=uqtabelaprimeirodia.AsFloat;
  uqDtlTotais.ParamByName('dataFinal').Asdate:=uqtabelaultimodia.AsFloat;


  uqDtlTotais.Open;

  TotaisDtls.Close;
  TotaisDtls.Clear;
  TotaisDtls.Open;

  uqDtlConvenios.First;
  while not uqDtlConvenios.eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtlConvenios.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlConvenios.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    uqDtlConvenios.Next;
  end;

  uqDtlTotais.First;
  while not uqDtlTotais.eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtlTotais.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlTotais.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 15) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 17) then
      vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 11) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 22) or
      (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 33) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 77) then
      vlTotalTroco := vlTotalTroco + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
    begin
      vlTotalDoacoes := vlTotalDoacoes + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;
    end;

    uqDtlTotais.Next;
  end;



  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqTotais.SQL.Text, 1, Pos('-- Filtros', uqTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;

  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqTotais.Close;
  uqTotais.FilterSQL := '';
  uqTotais.SQL.Text := SQLBaseTotais;

  if Copy(vlFiltros, Length(vlFiltros) - 1, 1) = ')' then
    uqTotais.SQL.Add('(' + vlFiltros)
  else
    uqTotais.SQL.Add(vlFiltros);

  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqTotais.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido := uqTotaismestotal.AsFloat;

  vlTotalNF := uqTotaismestotalnf.AsFloat;

  vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
  vlTotalServicos := uqTotaismestotalservicos.AsFloat;

  vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;
  vlTotalRefaturado := uqTotaismesrfaturado.AsFloat;

end;




 {
procedure Tfraflv.CalculaTotais;
var
  vlFiltros: String;

  vlTotalBruto: Double;
  vlTotalDesconto: Double;
  vlTotalLiquido: Double;

  vlTotalProdutos: Double;
  vlTotalServicos: Double;

  vlTotalNF: Double;

  vlTotalCancelado: Double;
  vlRecNo: Integer;

  vlTotalRefaturado: Double;
  vlTotalAFaturar: Double;

  vlTotalTrocaDevo: Double;

  vlTotalTroco: Double;
begin

  vlTotalTroco := 0;
  vlTotalBruto := 0;
  vlTotalDesconto := 0;
  vlTotalLiquido := 0;

  vlTotalProdutos := 0;
  vlTotalServicos := 0;

  vlTotalRefaturado := 0;
  vlTotalAFaturar := 0;

  vlTotalNF := 0;

  vlTotalCancelado := 0;
  vlTotalTrocaDevo := 0;

  // inicio dos convenios

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlConvenios.SQL.Text, 1, Pos('-- Filtros', uqDtlConvenios.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlConvenios.Close;
  uqDtlConvenios.SQL.Text := SQLBaseTotais;
  uqDtlConvenios.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlConvenios.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlConvenios.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqDtlConvenios.ParamByName('flacodigo').AsInteger := acesso.Filial;

  uqDtlConvenios.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
  uqDtlConvenios.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;

  uqDtlConvenios.Open;

  // fim dos convenios

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqDtlTotais.SQL.Text, 1, Pos('-- Filtros', uqDtlTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqDtlTotais.Close;
  uqDtlTotais.SQL.Text := SQLBaseTotais;
  uqDtlTotais.SQL.Add(vlFiltros);
  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqDtlTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqDtlTotais.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqDtlTotais.ParamByName('flacodigo').AsInteger := acesso.Filial;

  uqDtlTotais.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
  uqDtlTotais.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;

  uqDtlTotais.SQL.Add('group by mda.mdaidentificacao');
  uqDtlTotais.SQL.Add('order by mda.mdaidentificacao');

  uqDtlTotais.Open;

  TotaisDtls.Close;
  TotaisDtls.Clear;
  TotaisDtls.Open;

  uqDtlConvenios.First;
  while not uqDtlConvenios.eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtlConvenios.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlConvenios.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    uqDtlConvenios.Next;
  end;

  uqDtls.First;
  while not uqDtls.eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtls.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtls.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtls.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    uqDtls.Next;
  end;

  plResumoModalidades.Visible := True;

  // plResumoModalidades.Visible := false;

  SQLBaseTotais := '';

  if SQLBaseTotais = '' then
    SQLBaseTotais := Trim(Copy(uqTotais.SQL.Text, 1, Pos('-- Filtros', uqTotais.SQL.Text) + 10));

  vlFiltros := uqtabela.SQL.Text;

  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqTotais.Close;
  uqTotais.FilterSQL := '';
  uqTotais.SQL.Text := SQLBaseTotais;

  if Copy(vlFiltros, Length(vlFiltros) - 1, 1) = ')' then
    uqTotais.SQL.Add('(' + vlFiltros)
  else
    uqTotais.SQL.Add(vlFiltros);

  if Pos('and ', uqtabela.FilterSQL) > 0 then
    uqTotais.FilterSQL := Copy(uqtabela.FilterSQL, 5, 200)
  else
    uqTotais.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqTotais.ParamByName('flacodigo').AsInteger := acesso.Filial;

  uqTotais.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
  uqTotais.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;

  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido := uqTotaismestotal.AsFloat;

  vlTotalNF := uqTotaismestotalnf.AsFloat;

  vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
  vlTotalServicos := uqTotaismestotalservicos.AsFloat;

  vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;

end;}


procedure Tfraflv.DSTabelaDataChange(Sender: TObject; Field: TField);
var
  vltotRec: Double;
  vltotVnd: Double;
  vltotRecgeral: Double;

begin
  inherited;
  if uqtabela.Active then
    if not uqtabela.IsEmpty then
    begin
      mes.Close;
      mes.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
      mes.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;
      mes.ParamByName('flacodigo').AsInteger := acesso.Filial;
      mes.Open;

      uqDtls.Close;
      uqDtls.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
      uqDtls.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;
      uqDtls.ParamByName('flacodigo').AsInteger := acesso.Filial;
      uqDtls.Open;

      rfi.Close;
      rfi.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
      rfi.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;
      rfi.ParamByName('flacodigo').AsInteger := acesso.Filial;
      rfi.Open;

      rfigeral.Close;
      rfigeral.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
      rfigeral.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;
      rfigeral.ParamByName('flacodigo').AsInteger := acesso.Filial;
      rfigeral.Open;


        vltotRecgeral := 0;
      rfigeral.First;
      while not rfigeral.eof do
      begin
        vltotRecgeral := vltotRecgeral + rfigeralbaixa.AsCurrency;
        rfigeral.Next;
      end;
      rfigeral.First;



      vltotRec := 0;
      rfi.First;
      while not rfi.eof do
      begin
        vltotRec := vltotRec + rfibaixa.AsCurrency;
        rfi.Next;
      end;
      rfi.First;

      fluxohoras.Close;
      fluxohoras.ParamByName('datainicial').AsDate := uqtabelaprimeirodia.AsFloat;
      fluxohoras.ParamByName('datafinal').AsDate := uqtabelaultimodia.AsFloat;
      fluxohoras.Open;

      CalculaTotais;

      vltotVnd := 0;
      TotaisDtls.First;
      while not TotaisDtls.eof do
      begin
        vltotVnd := vltotVnd + TotaisDtlsdtlvalor.AsCurrency;
        TotaisDtls.Next;
      end;
      TotaisDtls.First;


      plTotaisVendas.Caption := 'Total R$ ' + FormatFloat('##,###,##0.00', vltotVnd);

      pltotalgeral.Caption := 'Total de Entradas R$ ' + FormatFloat('##,###,##0.00', vltotRecgeral);

    end;

end;

procedure Tfraflv.uqTotaisBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  uqTotais.FilterSQL := uqtabela.FilterSQL;

end;

end.
