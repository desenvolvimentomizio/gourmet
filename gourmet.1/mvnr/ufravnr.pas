unit ufravnr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, ufuncoes, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Vcl.ComCtrls;

type
  Tfravnr = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesinclusao: TDateTimeField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatdfidentificacao: TStringField;
    PlItens: TPanel;
    listaitm: TDBGrid;
    plTituloItensDetalhe: TPanel;
    btOcultaExibeDetalhe: TSpeedButton;
    Ditm: TUniDataSource;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmtotalliq: TFloatField;
    itmtoecodigo: TIntegerField;
    itmproncm: TStringField;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmcofins: TFloatField;
    SplItens: TSplitter;
    Pnl1: TPanel;
    plDetalhes: TPanel;
    pllinha2: TPanel;
    PlTotalProdutos: TPanel;
    PlTotalServicos: TPanel;
    Pltotalliquido: TPanel;
    Pltotalnfe: TPanel;
    pllinha1: TPanel;
    Pltotalvendas: TPanel;
    Pltotaldescontos: TPanel;
    plTrocaDevol: TPanel;
    PltotalDoacao: TPanel;
    PlTotalCancelado: TPanel;
    Panel1: TPanel;
    btOcultaExibeTotais: TSpeedButton;
    pdetalhe: TPanel;
    Panel3: TPanel;
    listapor: TDBGrid;
    pvalordetalhe: TPanel;
    Ddtl: TDataSource;
    dtl: TUniQuery;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtldtlchave: TIntegerField;
    dtlrfihistorico: TStringField;
    dtlltechave: TIntegerField;
    dtldtlflacodigo: TIntegerField;
    dtlrfiflacodigo: TIntegerField;
    dtlrfmflacodigo: TIntegerField;
    dtlrfmchave: TIntegerField;
    dtlmfiflacodigo: TIntegerField;
    dtlmfichave: TIntegerField;
    dtllteflacodigo: TIntegerField;
    dtlrfichave: TIntegerField;
    dtlmltflacodigo: TIntegerField;
    dtlmltchave: TIntegerField;
    dtlmdacodigo: TIntegerField;
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
    uqTotaismesrfaturado: TFloatField;
    DSTotaisDtls: TDataSource;
    TotaisDtls: TVirtualTable;
    TotaisDtlsmdaidentificacao: TStringField;
    TotaisDtlsdtlvalor: TFloatField;
    TotaisDtlsmdacodigo: TIntegerField;
    PlTotalRefaturado: TPanel;
    ccxinicio: TUniQuery;
    ccxfinal: TUniQuery;
    ccxinicioccxdatahoraabert: TStringField;
    DBGridCaixas: TDBGrid;
    caixas: TUniQuery;
    Dcaixas: TDataSource;
    caixasccxchave: TIntegerField;
    caixasccxinicio: TDateTimeField;
    caixasccxfinal: TDateTimeField;
    ccxinicioccxchave: TIntegerField;
    ccxfinalccxchave: TIntegerField;
    ccx: TUniQuery;
    ccxccxchave: TIntegerField;
    ccxfinalccxdatahoraabert: TStringField;
    ccxccxdatahoraabert: TDateTimeField;
    ccxccxdatahorafecha: TStringField;
    itmclbidentificacao: TStringField;
    caixasclbidentificacao: TStringField;
    caixastrmcodigo: TIntegerField;
    caixasclbcodigo: TIntegerField;
    plResumoModalidades: TPanel;
    Panel2: TPanel;
    DBResumoModalidades: TDBGrid;
    mostracalculototal: TProgressBar;
    adm: TUniQuery;
    uqDtl: TUniQuery;
    uqDtlltechave: TIntegerField;
    uqDtlmdaidentificacao: TStringField;
    uqDtldtlvalor: TFloatField;
    uqDtlmdacodigo: TIntegerField;
    uqDtlmeschave: TIntegerField;
    uqtabelasdecodigo: TStringField;
    uqtabelatdfcodigo: TStringField;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure btOcultaExibeTotaisClick(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    vpFiltros: string;
    FSQLBaseTotais: String;
    procedure AtualizarDetalhe;
    procedure CalculaTotaisVelho;
    procedure CalculaTotais;
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  end;

var
  fravnr: Tfravnr;

  // Início ID do Módulo fravnr
const
  vPlIdMd = '0.0.0.00-01';
  vPlTitMdl = 'Vendas - Gourmet';

  // Fim ID do Módulo fravnr

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravnr := Tfravnr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravnr := Tfravnr.Create(pCargaFrame);
  try
    fravnr.CriaAcoesDeAcesso;
  finally
    fravnr.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfravnr.btOcultaExibeTotaisClick(Sender: TObject);
begin
  inherited;
  if btOcultaExibeTotais.Caption = '-' then
  begin
    plDetalhes.Height := 2;
    btOcultaExibeTotais.Caption := '+';
  end
  else
  begin
    plDetalhes.Height := 55;
    btOcultaExibeTotais.Caption := '-';
  end;

end;

procedure Tfravnr.Carregar;
begin

  inherited Carregar;

 { uqtabela.ParamByName('inicial').AsDate := fmddtinicial.Field.AsDateTime;
  uqtabela.ParamByName('final').AsDate := fmddtfinal.Field.AsDateTime;

  self.ActAtualizar.Execute;}
end;

procedure Tfravnr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin
  { inherited; }

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      font.Style := [fsbold];
      // Font.Color := CLWHITE;
    End;

  If (Self.uqtabelasdecodigo.AsString = '02') Or (Self.uqtabelasdecodigo.AsString = '03') Or (Self.uqtabelasdecodigo.AsString = '04') Then
    DBGLista.Canvas.font.Color := clRed;


  with TFriendly(DBGLista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfravnr.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (not uqtabela.Executing) and (not uqtabela.Fetching) then
  begin

    AtualizarDetalhe;

  end;

end;




procedure Tfravnr.ActAtualizarExecute(Sender: TObject);
var
  I: Integer;
  vlChave: Integer;
  vlinicio: string;
  vlfinal: string;

  vlccxinicio: String;
  vlccxfinal: String;

begin

  inherited;




  ccxinicio.Close;
  ccxinicio.ParamByName('inicial').AsDate := fmddtinicial.Field.AsFloat;
  ccxinicio.ParamByName('final').AsDate := fmddtfinal.Field.AsFloat;
  ccxinicio.Open;

  ccxfinal.Close;
  ccxfinal.ParamByName('inicial').AsDate := fmddtfinal.Field.AsFloat;
  ccxfinal.ParamByName('final').AsDate := fmddtfinal.Field.AsFloat;
  ccxfinal.Open;

  if (ccxfinal.IsEmpty) or (ccxfinalccxchave.AsInteger<ccxinicioccxchave.AsInteger) or ( ccxfinalccxchave.AsInteger=0) then
  begin
  consulta.Close;
  consulta.SQL.Text:='select max(ccxinicio) ulimocaixa from ccx where ccxdataber<='+QuotedStr(ajustadata(fmddtfinal.Field.AsString));
  consulta.Open;

  ccxfinal.Close;
  ccxfinal.ParamByName('inicial').AsDate := consulta.FieldByName('ulimocaixa').AsFloat;
  ccxfinal.ParamByName('final').AsDate :=consulta.FieldByName('ulimocaixa').AsFloat;
  ccxfinal.Open;



  end;


  ccx.Open;

  if (ccxfinalccxchave.AsString = '') then
  begin
    ccx.IndexFieldNames := 'ccxchave';
    ccx.Last;
    vlChave := ccxccxchave.AsInteger

  end
  else
  begin

    for I := 0 to 31 do
    begin
      vlChave := ccxfinalccxchave.AsInteger + I;
      if ccx.Locate('ccxchave', vlChave, []) then
      begin
        break;
      end;

    end;
  end;

  if ccxinicioccxchave.AsString <> '' then
  begin

    caixas.Close;
    caixas.FilterSQL := 'ccxchave>=' + ccxinicioccxchave.AsString + ' and  ccxchave<=' + ccxfinalccxchave.AsString;
    caixas.Open;

    caixas.First;

    CalculaTotais;
    PlQtdRecno.Caption := 'Registros: ' + formatfloat('000000', uqtabela.RecordCount);

    caixas.DisableControls;
    caixas.First;
    vlccxinicio := ccxinicioccxchave.AsString;

    while not caixas.Eof do
    begin
      // 01/01/2018 00:00:00
      vlinicio := copy(caixasccxinicio.AsString, 7, 4) + '-' + copy(caixasccxinicio.AsString, 4, 2) + '-' + copy(caixasccxinicio.AsString, 1, 2) + ' ' +
        copy(caixasccxinicio.AsString, 12, 8);

      vlfinal := copy(caixasccxfinal.AsString, 7, 4) + '-' + copy(caixasccxfinal.AsString, 4, 2) + '-' + copy(caixasccxfinal.AsString, 1, 2) + ' ' +
        copy(caixasccxfinal.AsString, 12, 8);

      consulta.Close;
      consulta.SQL.text := 'update mes set ccxchave=' + caixasccxchave.AsString + ' where mesinclusao>=' + QuotedStr(vlinicio) + ' and mesinclusao<=' + QuotedStr(vlfinal) +
        ' and mes.clbcodigo=' + caixasclbcodigo.AsString;
      consulta.ExecSQL;

      caixas.Next;
    end;
    vlccxfinal := caixasccxchave.AsString;

    vpFiltros:=' and ccxchave>='+vlccxinicio+' and ccxchave<='+vlccxfinal;

    uqtabela.Close;
    uqtabela.FilterSQL := '';
    uqtabela.SQL.text := Trim(copy(uqtabela.SQL.text, 1, Pos('-- CAIXAS', uqtabela.SQL.text) + 10));
    uqtabela.SQL.Add(vpFiltros);

    if uqtabela.Params.FindParam('flacodigo') <> nil then
      uqtabela.ParamByName('flacodigo').AsInteger := Acesso.Filial;

    uqtabela.Open;



    caixas.First;
    caixas.EnableControls;

  end
  else
  begin
    ShowMessage('Não há vendas para este dia!');
    uqtabela.Close;
  end;
end;

procedure Tfravnr.AtualizarDetalhe;
begin
  if not dtl.Active then
    dtl.Open;

  itm.Close;
  itm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  itm.Open;

  dtl.Close;
  dtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  dtl.Open;

end;

procedure Tfravnr.CalculaTotaisVelho;
var
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

  // vlFiltros := ' and (mesinclusao>=' + QuotedStr(ccxinicioccxdatahoraabert.AsString) + ' and mesinclusao<=' + QuotedStr(ccxfinalccxdatahorafecha.AsString)+')';

  uqDtlConvenios.Close;
  uqDtlConvenios.SQL.text := Trim(copy(uqDtlConvenios.SQL.text, 1, Pos('-- CAIXAS', uqDtlConvenios.SQL.text) + 10));
  uqDtlConvenios.SQL.Add(vpFiltros);

  if uqDtlConvenios.Params.FindParam('flacodigo') <> nil then
    uqDtlConvenios.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlConvenios.Open;

  // fim dos convenios



  uqDtlTotais.Close;
  uqDtlTotais.SQL.text := Trim(copy(uqDtlTotais.SQL.text, 1, Pos('-- CAIXAS', uqDtlTotais.SQL.text) + 10));
  uqDtlTotais.SQL.Add(vpFiltros);
  if uqDtlTotais.Params.FindParam('flacodigo') <> nil then
    uqDtlTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  uqDtlTotais.SQL.Add('group by mda.mdaidentificacao');
  uqDtlTotais.SQL.Add('order by mda.mdaidentificacao');

  uqDtlTotais.Open;

  TotaisDtls.Close;
  TotaisDtls.Clear;

  TotaisDtls.Open;

  uqDtlConvenios.First;
  while not uqDtlConvenios.Eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtlConvenios.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlConvenios.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    uqDtlConvenios.Next;
  end;

  uqDtlTotais.First;
  while not uqDtlTotais.Eof do
  begin
    TotaisDtls.Append;
    TotaisDtlsmdaidentificacao.AsString := uqDtlTotais.FieldByName('mdaidentificacao').AsString;
    TotaisDtlsdtlvalor.AsString := uqDtlTotais.FieldByName('dtlvalor').AsString;
    TotaisDtlsmdacodigo.AsInteger := uqDtlTotais.FieldByName('mdacodigo').AsInteger;
    TotaisDtls.Post;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 15) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 17) then
      vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 11) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 22) or (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 33) or
      (uqDtlTotais.FieldByName('mdacodigo').AsInteger = 77) then
      vlTotalTroco := vlTotalTroco + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;

    if (uqDtlTotais.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
    begin
      vlTotalDoacoes := vlTotalDoacoes + uqDtlTotais.FieldByName('dtlvalor').AsCurrency;
    end;

    uqDtlTotais.Next;
  end;

  uqTotais.Close;
  uqTotais.SQL.text := Trim(copy(uqTotais.SQL.text, 1, Pos('-- CAIXAS', uqTotais.SQL.text) + 10));
  uqTotais.SQL.Add(vpFiltros);
  if uqTotais.Params.FindParam('flacodigo') <> nil then
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

  Pltotalvendas.Caption := 'Bruto R$: ' + formatfloat('##,###,##0.00', vlTotalBruto + vlTotalCancelado - vlTotalRefaturado);
  Pltotaldescontos.Caption := 'Descontos R$: ' + formatfloat('##,###,##0.00', vlTotalDesconto);
  PltotalDoacao.Caption := 'Doações R$: ' + formatfloat('##,###,##0.00', vlTotalDoacoes);

  Pltotalliquido.Caption := 'Líquido R$: ' + formatfloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
    (vlTotalTrocaDevo + vlTotalRefaturado + vlTotalDoacoes { + vlTotalCancelado } ));
  PlTotalRefaturado.Caption := 'Total Refaturado: ' + formatfloat('##,###,##0.00', vlTotalRefaturado);

  Pltotalnfe.Caption := 'Total FISCAL: ' + formatfloat('##,###,##0.00', vlTotalNF);

  PlTotalProdutos.Caption := 'Produtos R$: ' + formatfloat('##,###,##0.00', vlTotalProdutos - vlTotalRefaturado);
  PlTotalServicos.Caption := 'Serviços R$: ' + formatfloat('##,###,##0.00', vlTotalServicos);

  if vlTotalRefaturado = 0 then
    PlTotalRefaturado.Visible := false;

  if vlTotalServicos = 0 then
  begin
    PlTotalProdutos.Visible := false;
    PlTotalServicos.Visible := false;
  end;

  if vlTotalCancelado > 0 then
  begin
    PlTotalCancelado.Caption := 'Total Cancelados: ' + formatfloat('##,###,##0.00', vlTotalCancelado);
    PlTotalCancelado.Visible := True;
  end
  else
    PlTotalCancelado.Visible := false;

  plTrocaDevol.Caption := 'Troca/Dev/Vale: ' + formatfloat('##,###,##0.00', vlTotalTrocaDevo { + vlTotalTroco } );

end;



procedure Tfravnr.CalculaTotais;
var

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

  registroatual: Integer;

  vlFiltros: string;
begin

  // inherited;

  try
    vlTotalTroco := 0;
    vlTotalBruto := 0;
    vlTotalDesconto := 0;
    vlTotalLiquido := 0;

    vlTotalProdutos := 0;
    vlTotalServicos := 0;

    vlTotalRefaturado := 0;
    vlTotalAFaturar := 0;

    vlTotalTrocaDevo := 0;

    vlTotalNF := 0;

    vlTotalCancelado := 0;
    vlTotalTrocaDevo := 0;
    vlTotalDoacoes := 0;

    // inicio dos convenios

    adm.Close;
    adm.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;
    adm.Open;

    registroatual := uqtabela.RecNo;

    TotaisDtls.Close;
    TotaisDtls.Clear;
    TotaisDtls.Open;

    TotaisDtls.DisableControls;

    uqtabela.DisableControls;
    { uqtabela.Close;
      uqtabela.Open; }

    dtl.DisableControls;

    uqDtl.Close;
    uqDtl.SQL.Text := '   SELECT DISTINCT ';
    uqDtl.SQL.Add('mes.meschave, ');
    uqDtl.SQL.Add('    mda.mdaidentificacao, ');
    uqDtl.SQL.Add('  ( dtl.dtlvalor) dtlvalor, ');
    uqDtl.SQL.Add('  dtl.ltechave, ');
    uqDtl.SQL.Add('    mda.mdacodigo ');
    uqDtl.SQL.Add('FROM rfm ');
    uqDtl.SQL.Add('  INNER JOIN mes ');
    uqDtl.SQL.Add('    ON rfm.meschave = mes.meschave ');

    uqDtl.SQL.Add('  INNER JOIN rfi ');
    uqDtl.SQL.Add('    ON rfm.rfichave = rfi.rfichave ');

    uqDtl.SQL.Add('  INNER JOIN mfi ');
    uqDtl.SQL.Add('    ON mfi.rfichave = rfi.rfichave ');

    uqDtl.SQL.Add('  inner JOIN mlt ');
    uqDtl.SQL.Add('    ON mlt.mfichave = mfi.mfichave ');

    uqDtl.SQL.Add('  INNER JOIN dtl ');
    uqDtl.SQL.Add('    ON dtl.ltechave = mlt.ltechave ');

    uqDtl.SQL.Add('  INNER JOIN mda ');
    uqDtl.SQL.Add('    ON dtl.mdacodigo = mda.mdacodigo ');
    uqDtl.SQL.Add('  INNER JOIN lte ');
    uqDtl.SQL.Add('    ON mlt.ltechave = lte.ltechave ');

    uqDtl.SQL.Add('WHERE rfi.tfdcodigo IN (2, 32) ');
    uqDtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    uqDtl.SQL.Add('AND mes.tdfcodigo <> ' + QuotedStr('RF') + ' ');
    uqDtl.SQL.Add('AND mes.mesrefeicao = 0 ');
    uqDtl.SQL.Add('AND mes.flacodigo = :flacodigo ');


    uqDtl.SQL.Add('-- filtros ');
    uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add('UNION DISTINCT ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add(' ');
    uqDtl.SQL.Add('SELECT DISTINCT ');
    uqDtl.SQL.Add('    mes.meschave, ');
    uqDtl.SQL.Add('    mda.mdaidentificacao, ');
    uqDtl.SQL.Add('  ( dtl.dtlvalor) dtlvalor, ');
    uqDtl.SQL.Add('  dtl.ltechave, ');
    uqDtl.SQL.Add('    mda.mdacodigo ');
    uqDtl.SQL.Add('FROM rfm ');
    uqDtl.SQL.Add('  INNER JOIN mes ');
    uqDtl.SQL.Add('    ON rfm.meschave = mes.meschave ');
    uqDtl.SQL.Add('    AND rfm.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN rfi ');
    uqDtl.SQL.Add('    ON rfm.rfichave = rfi.rfichave ');
    uqDtl.SQL.Add('    AND rfi.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN mfi ');
    uqDtl.SQL.Add('    ON mfi.rfichave = rfi.rfichave ');
    uqDtl.SQL.Add('    AND mfi.flacodigo = mes.flacodigo ');
    uqDtl.SQL.Add('  inner JOIN mlt ');
    uqDtl.SQL.Add('    ON mlt.mfichave = mfi.mfichave ');
    uqDtl.SQL.Add('    AND mes.flacodigo = mlt.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN dtl ');
    uqDtl.SQL.Add('    ON dtl.ltechave = mlt.ltechave ');
    uqDtl.SQL.Add('    AND mlt.flacodigo = dtl.flacodigo ');
    uqDtl.SQL.Add('  INNER JOIN mda ');
    uqDtl.SQL.Add('    ON dtl.mdacodigo = mda.mdacodigo ');
    uqDtl.SQL.Add('  inner JOIN lte ');
    uqDtl.SQL.Add('    ON mlt.ltechave = lte.ltechave ');
    uqDtl.SQL.Add('    AND mes.flacodigo = lte.flacodigo ');
    uqDtl.SQL.Add('WHERE rfi.tfdcodigo IN ( 2) ');
    uqDtl.SQL.Add('AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) ');
    uqDtl.SQL.Add('AND mes.tdfcodigo <> ' + QuotedStr('RF') + ' ');
    uqDtl.SQL.Add('AND mes.mesrefeicao = 0 ');


    uqDtl.SQL.Add('AND rfi.tficodigo ');
    uqDtl.SQL.Add('AND mes.flacodigo = :flacodigo ');
    uqDtl.SQL.Add('-- filtros ');
    uqDtl.SQL.Add('GROUP BY mes.meschave,mda.mdacodigo ');

    uqDtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;

    try
      if not fmd.IsEmpty then
        vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    except
      vlFiltros := ' and ' + fmdfmdcampo.AsString + ' BETWEEN (' + QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtinicial.AsFloat)) + ') and (' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', fmdfmddtfinal.AsFloat)) + ')';

    end;

    uqDtl.SQL.Text := StringReplace(uqDtl.SQL.Text, '-- filtros', vlFiltros, [rfReplaceAll, rfIgnoreCase]);

    uqDtl.Open;
    mostracalculototal.Position := 0;
    mostracalculototal.Max := uqtabela.RecordCount;
    Application.ProcessMessages;
    TotaisDtls.DisableControls;
    uqtabela.First;
    while not uqtabela.eof do
    begin
      mostracalculototal.Position := mostracalculototal.Position + 1;
      Application.ProcessMessages;

      vlTotalDesconto := vlTotalDesconto + uqtabelamesdesconto.AsCurrency;


      if uqtabelasdecodigo.AsString = '02' then
        vlTotalCancelado := vlTotalCancelado + uqtabelamestotal.AsCurrency;

      if uqtabelasdecodigo.AsString = 'RF' then
        vlTotalRefaturado := vlTotalRefaturado + uqtabelamestotal.AsCurrency;

      if (uqtabelatdfcodigo.AsString = '65') or (uqtabelatdfcodigo.AsString = '55') then
        vlTotalNF := vlTotalNF + uqtabelamestotal.AsCurrency;

      if uqDtl.Locate('meschave', uqtabelameschave.AsInteger, []) then
      begin
        while uqDtlmeschave.AsInteger = uqtabelameschave.AsInteger do
        begin
         if uqtabelasdecodigo.AsString <> '02' then
         begin
          if TotaisDtls.Locate('mdacodigo', uqDtl.FieldByName('mdacodigo').AsInteger, []) then
            TotaisDtls.edit
          else
            TotaisDtls.Append;

          TotaisDtlsmdaidentificacao.AsString := uqDtl.FieldByName('mdaidentificacao').AsString;
          TotaisDtlsdtlvalor.AsCurrency := TotaisDtlsdtlvalor.AsCurrency + uqDtl.FieldByName('dtlvalor').AsCurrency;
          TotaisDtlsmdacodigo.AsInteger := uqDtl.FieldByName('mdacodigo').AsInteger;
          TotaisDtls.Post;

         end;
          if (uqDtl.FieldByName('mdacodigo').AsInteger = 15) or (uqDtl.FieldByName('mdacodigo').AsInteger = 17) then
            vlTotalTrocaDevo := vlTotalTrocaDevo + uqDtl.FieldByName('dtlvalor').AsCurrency;

          if (uqDtl.FieldByName('mdacodigo').AsInteger = 11) or (uqDtl.FieldByName('mdacodigo').AsInteger = 22) or (uqDtl.FieldByName('mdacodigo').AsInteger = 33) or
            (uqDtl.FieldByName('mdacodigo').AsInteger = 77) then
            vlTotalTroco := vlTotalTroco + uqDtl.FieldByName('dtlvalor').AsCurrency;

          if (uqDtl.FieldByName('mdacodigo').AsInteger = mdaDoacao) then
          begin
            vlTotalDoacoes := vlTotalDoacoes + uqDtl.FieldByName('dtlvalor').AsCurrency;
          end;

          vlTotalBruto := vlTotalBruto + uqDtl.FieldByName('dtlvalor').AsCurrency;

          uqDtl.Next;

          if (uqDtlmeschave.AsInteger <> uqtabelameschave.AsInteger) or (uqDtl.eof) then
            break;

        end;

      end;

      uqtabela.Next;
    end;

    TotaisDtls.EnableControls;

    { * SQLBaseTotais := '';

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

      if uqTotais.Params.FindParam('flacodigo') <> nil then
      uqTotais.ParamByName('flacodigo').AsInteger := Acesso.Filial;

      uqTotais.Open; }



    // TotaisDtls.EnableControls;

    plResumoModalidades.Visible := True;



    // vlTotalBruto := uqTotaismesvalor.AsFloat;
    // vlTotalDesconto := uqTotaismesdeconto.AsFloat;

    vlTotalLiquido := vlTotalBruto - vlTotalDesconto;

    // vlTotalNF := uqTotaismestotalnf.AsFloat;

    // vlTotalProdutos := uqTotaismestotalprodutos.AsFloat;
    // vlTotalServicos := uqTotaismestotalservicos.AsFloat;

    // vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;
    // vlTotalRefaturado := uqTotaismesrfaturado.AsFloat;

    Pltotalvendas.Caption := 'Bruto: ' + FormatFloat('##,###,##0.00', vlTotalBruto { *+ vlTotalCancelado* } - vlTotalRefaturado);
    Pltotaldescontos.Caption := '(-) Descontos: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
    PltotalDoacao.Caption := '(-) Doações: ' + FormatFloat('##,###,##0.00', vlTotalDoacoes);

    Pltotalliquido.Caption := '(=) : ' + FormatFloat('##,###,##0.00', { vlTotalTroco + } vlTotalLiquido -
      (vlTotalTrocaDevo + vlTotalRefaturado + vlTotalDoacoes  + vlTotalCancelado  ));
    PlTotalRefaturado.Caption := 'Refaturado: ' + FormatFloat('##,###,##0.00', vlTotalRefaturado);

    Pltotalnfe.Caption := 'FISCAL: ' + FormatFloat('##,###,##0.00', vlTotalNF);

    PlTotalProdutos.Caption := 'Produtos: ' + FormatFloat('##,###,##0.00', vlTotalProdutos);
    PlTotalServicos.Caption := 'Serviços: ' + FormatFloat('##,###,##0.00', vlTotalServicos);

    if vlTotalRefaturado = 0 then
      PlTotalRefaturado.Visible := false;

    if vlTotalServicos = 0 then
    begin
      PlTotalProdutos.Visible := false;
      PlTotalServicos.Visible := false;
    end;

    if vlTotalCancelado > 0 then
    begin
      PlTotalCancelado.Caption := 'Cancelados: ' + FormatFloat('##,###,##0.00', vlTotalCancelado);
      PlTotalCancelado.Visible := True;
    end
    else
      PlTotalCancelado.Visible := false;

    plTrocaDevol.Caption := '(-) Dev/Vale: ' + FormatFloat('##,###,##0.00', vlTotalTrocaDevo { + vlTotalTroco } );

    TotaisDtls.Filter := 'mdacodigo<>11';
    TotaisDtls.Filtered := True;

    TotaisDtls.IndexFieldNames := 'mdacodigo';
  finally
    uqtabela.RecNo := registroatual;
    uqtabela.EnableControls;
    dtl.EnableControls;
    TotaisDtls.EnableControls;

    mostracalculototal.Position := 0;
    Application.ProcessMessages;

  end;
end;



end.
