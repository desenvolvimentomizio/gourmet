unit ufracpa;

interface

uses

  Winapi.Windows, Vcl.Forms, ufrarfi, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs,
  System.SysUtils, uFuncoes, uPegaBase, Vcl.Graphics, System.ImageList,
  Vcl.ImgList,   Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
;

type
  Tfracpa = class(Tfrarfi)
    ActPagamento: TAction;
    ActEstorno: TAction;
    ActDetalhe: TAction;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cfgcfgusactb: TIntegerField;
    pcr: TUniQuery;
    pcrpcrchave: TIntegerField;
    pcrtitcodigo: TIntegerField;
    pcrpcgcodigo: TIntegerField;
    pcrpcgestrutural: TStringField;
    pcrpcgidentificacao: TStringField;
    pcrphgcodigo: TIntegerField;
    pcrphgidentificacao: TStringField;
    pcrpcrvalor: TFloatField;
    pcrpcrcomplhist: TStringField;
    DBGridPcr: TDBGrid;
    Dpcr: TDataSource;
    ActAjustarNucleo: TAction;
    ActContabilizacao: TAction;
    ActGerarPlanilha: TAction;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittitnumero: TStringField;
    tittitvalor: TFloatField;
    tittitemissao: TDateField;
    tittitvctoinicial: TDateField;
    tittfdcodigo: TIntegerField;
    titsrfcodigo: TIntegerField;
    tittficodigo: TIntegerField;
    tittithora: TTimeField;
    tittithistorico: TStringField;
    titclbcodigo: TIntegerField;
    tittitvalorparcela: TFloatField;
    tittitparcelas: TIntegerField;
    tittitprevisao: TIntegerField;
    titmoecodigo: TIntegerField;
    tittitmoradia: TFloatField;
    tittitvalomulta: TFloatField;
    tittitpercmesmora: TFloatField;
    tittitvalodesc: TFloatField;
    tittitpercmulta: TFloatField;
    titflacodigo: TIntegerField;
    titbcocodigo: TStringField;
    titcarcodigo: TIntegerField;
    tittitdiasmulta: TIntegerField;
    tittitdiasdesc: TIntegerField;
    ActVencimento: TAction;
    mcg: TUniQuery;
    mcgmcgchave: TIntegerField;
    mcgccgcodigo: TIntegerField;
    mcgccgidentificacao: TStringField;
    mcgmcgvalor: TFloatField;
    mcgmcgdata: TDateField;
    cfgcfgctbusaccg: TIntegerField;
    ActCentroCustos: TAction;
    titcan: TUniQuery;
    mnUtilitarios: TMenuItem;
    mnVerificarCentrosdeCustos: TMenuItem;
    mcgaju: TUniQuery;
    mcgajumcgchave: TIntegerField;
    mcgajuccgcodigo: TIntegerField;
    mcgajumcgvalor: TFloatField;
    mcgajumcgdata: TDateField;
    mcgajumcgtabela: TStringField;
    mcgajumcgchaveorigem: TIntegerField;
    mcgajumcgsituacao: TIntegerField;
    mcgajuclbcodigo: TIntegerField;
    mcgajumcgregistro: TDateTimeField;
    mcgajurfichave: TIntegerField;
    plLInhadabaixa: TPanel;
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    mcggccidentificacao: TStringField;
    mcgmcgsituacao: TIntegerField;
    ccomfivalor: TFloatField;
    rfi: TUniQuery;
    ccorfi: TUniQuery;
    mcgrfichave: TIntegerField;
    uqtabelarfiinclusao: TDateTimeField;
    mcgmcgcompetencia: TStringField;
    ActPagarEste: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPagamentoExecute(Sender: TObject);
    procedure ActEstornoExecute(Sender: TObject);
    procedure ActDetalheExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure bConfirmaSelecaoClick(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActAjustarNucleoExecute(Sender: TObject);
    procedure ActContabilizacaoExecute(Sender: TObject);
    procedure ActGerarPlanilhaExecute(Sender: TObject);
    procedure ActVencimentoExecute(Sender: TObject);
    procedure DBGridPcrDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActCentroCustosExecute(Sender: TObject);
    procedure mnVerificarCentrosdeCustosClick(Sender: TObject);
    procedure ActPagarEsteExecute(Sender: TObject);
  private
    function CreateWorkbook: IXLSWorkbook;
    function AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao, vtitvctoinicial: TDate; vtfdcodigo, vtficodigo: Integer;
      vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia, vtitvalomulta, vtitpercmesmora, vtitvalodesc, vtitpercmulta, vtitpercmesmulta: Double;
      vbcocodigo: String; vcarcodigo, vtitdiasmulta, vtitdiasdesc: Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fracpa: Tfracpa;

  // Início ID do Módulo fracpa
const
  vPlIdMd = '02.02.15.004-01';
  vPlTitMdl = 'Contas a Pagar';

  // Fim ID do Módulo fracpa

implementation

{$R *.dfm}

uses ufcpa, ufcpamlt, ufajustatng;

type
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracpa := Tfracpa.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracpa := Tfracpa.Create(pCargaFrame);
  try
    fracpa.CriaAcoesDeAcesso;
  finally
    fracpa.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracpa.ActAjustarNucleoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfajustatng, self.uqtabelatitcodigo.AsString, '');
  ActAtualizar.Execute;
end;

function Tfracpa.AjustaTit(vtitcodigo: string; vetdcodigo: Integer; vtitnumero: String; vtitvalor: Double; vtitemissao: TDate; vtitvctoinicial: TDate; vtfdcodigo: Integer;
  vtficodigo: Integer; vtithistorico: String; vtitvalorparcela: Double; vtitparcelas: Integer; vtitmoradia: Double; vtitvalomulta: Double; vtitpercmesmora: Double;
  vtitvalodesc: Double; vtitpercmulta: Double; vtitpercmesmulta: Double; vbcocodigo: String; vcarcodigo: Integer; vtitdiasmulta: Integer; vtitdiasdesc: Integer): Integer;

begin

  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo, tit.titvalor, tit.titnumero, tit.titemissao, ';
  tit.SQL.Add('tit.titvalorparcela, tit.titparcelas, tit.titvctoinicial, tit.tfdcodigo, tit.srfcodigo,');
  tit.SQL.Add('tit.tficodigo, tit.tithora, tit.clbcodigo, tit.tithistorico, tit.flacodigo, tit.bcocodigo,');
  tit.SQL.Add('tit.carcodigo, tit.titprevisao, tit.moecodigo, tit.titmoradia, tit.titdiasmulta, tit.titvalomulta,');
  tit.SQL.Add('tit.titpercmesmora, tit.titvalodesc, tit.titdiasdesc, tit.titpercmulta ');
  tit.SQL.Add('FROM tit ');

  if (vtitcodigo <> '') and (vtitcodigo <> '0') then
  begin
    tit.SQL.Add('WHERE tit.titcodigo=' + vtitcodigo);
    tit.Open;
    tit.Edit;
  end
  else
  begin
    tit.SQL.Add('limit 1');
    tit.Open;
    tit.Append;
  end;
  if vtitcodigo <> '' then
    tittitcodigo.AsString := vtitcodigo;

  tittithora.AsString := timetostr(time);
  titclbcodigo.AsInteger := Acesso.Usuario;
  tittitprevisao.AsInteger := 0;

  titflacodigo.AsInteger := Acesso.Filial;

  titmoecodigo.AsInteger := 1;
  titsrfcodigo.AsInteger := srfEmAberto;
  titetdcodigo.AsInteger := vetdcodigo;
  tittitnumero.AsString := vtitnumero;
  tittitvalor.AsFloat := vtitvalor;
  tittitemissao.AsFloat := vtitemissao;
  tittitvctoinicial.AsFloat := vtitvctoinicial;
  tittfdcodigo.AsInteger := vtfdcodigo;
  tittficodigo.AsInteger := vtficodigo;
  tittithistorico.AsString := vtithistorico;
  tittitvalorparcela.AsFloat := vtitvalorparcela;
  tittitparcelas.AsInteger := vtitparcelas;
  tittitmoradia.AsFloat := vtitmoradia;
  tittitvalomulta.AsFloat := vtitvalomulta;
  tittitpercmesmora.AsFloat := vtitpercmesmora;
  tittitvalodesc.AsFloat := vtitvalodesc;
  tittitpercmulta.AsFloat := vtitpercmulta;
  titbcocodigo.AsString := vbcocodigo;
  titcarcodigo.AsInteger := vcarcodigo;
  tittitdiasmulta.AsInteger := vtitdiasmulta;
  tittitdiasdesc.AsInteger := vtitdiasdesc;
  tit.Post;

  Result := tittitcodigo.AsInteger;

  self.ActAtualizar.Execute;
end;

procedure Tfracpa.ActContabilizacaoExecute(Sender: TObject);
var
  vlTitCodigo: String;
  vlTitValor: Double;
  vlEmissao: TDate;
  vlVencimento: TDate;
  vlTficodigo: Integer;
  vlRfiHistorico: String;
  vlTitParcelas: Integer;
  vlCarCodigo: Integer;
  vlBcoCodigo: string;
begin
  inherited;
  vlTitCodigo := '';
  vlTitValor := 0;

  consulta.Close;
  consulta.SQL.Text := 'select titcodigo from tit where titcodigo=' + uqtabelatitcodigo.AsString;
  consulta.Open;
  vlTitCodigo := consulta.FieldByName('titcodigo').AsString;

  consulta.Close;
  consulta.SQL.Text := 'select rfiemissao, sum(rfivalor) as titvalor, min(rfivencimento) rfivencimento, tficodigo, ';
  consulta.SQL.Add(' rfihistorico, count(rfichave) titparcelas, bcocodigo, carcodigo from rfi where titcodigo=' + uqtabelatitcodigo.AsString + ' group by titcodigo');
  consulta.Open;
  vlEmissao := consulta.FieldByName('rfiemissao').AsFloat;
  vlVencimento := consulta.FieldByName('rfivencimento').AsFloat;
  vlTitValor := consulta.FieldByName('titvalor').AsFloat;
  vlTficodigo := consulta.FieldByName('tficodigo').AsInteger;
  vlRfiHistorico := consulta.FieldByName('rfihistorico').AsString;
  vlTitParcelas := consulta.FieldByName('titparcelas').AsInteger;

  vlBcoCodigo := consulta.FieldByName('bcocodigo').AsString;
  vlCarCodigo := consulta.FieldByName('carcodigo').AsInteger;

  if vlTitCodigo = '' then
  begin
    if uqtabelatitcodigo.AsString <> '' then
    begin
      vlTitCodigo := uqtabelatitcodigo.AsString;
    end;

    vlTitCodigo := Inttostr(AjustaTit(vlTitCodigo, uqtabelaetdcodigo.AsInteger, uqtabelarfinumero.AsString, vlTitValor, vlEmissao, vlVencimento, tfdPagar, vlTficodigo,
      vlRfiHistorico, uqtabelarfivalor.AsCurrency, vlTitParcelas, 0, 0, 0, 0, 0, 0, vlBcoCodigo, vlCarCodigo, 0, 0));

  end;

  MostraLista('mpcr', '', vlTitCodigo);
end;

procedure Tfracpa.ActAlterarExecute(Sender: TObject);
begin
  inherited;

  if uqtabelasrfcodigo.AsInteger <> srfEmAberto then
  begin
    application.MessageBox(PChar('Registros já foi baixado, não pode ser alterado.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if uqtabelarfirepetir.AsInteger <> 1 then
  begin
    CriaFormulario(Tfcpa, self.uqtabelarfichave.AsString, '');
  end
  else
    CriaFormulario(Tfcpamlt, self.uqtabelatitcodigo.AsString, '');
end;

procedure Tfracpa.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;
  inherited;

end;

procedure Tfracpa.ActCancelarExecute(Sender: TObject);
var
  vlAcao: string;

begin
  inherited;
  if uqtabelasrfcodigo.AsInteger <> srfEmAberto then
  begin
    application.MessageBox(PChar('Somente Parcelas com situação "Em Aberto" podem ser Canceladas.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if uqtabelameschave.AsInteger > 0 then
  begin

    if application.MessageBox(PChar('Parcela originada de Compra!' + #13 + 'Deseja Cancelar essa parcela?'), 'Atenção', MB_ICONQUESTION + MB_YESNO) = IDNO then
      Exit;
  end;

  if uqtabelarngchave.AsInteger > 0 then
  begin
    application.MessageBox(PChar('Parcela originada de Renegociação não pode ser cancelada.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if application.MessageBox(PChar('Confirma cancelamento da parcela?'), 'Atenção', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;

  vlAcao := Inttostr((Sender as TAction).Tag);

  if RegistroAcessoOperacao(vlAcao, 'Registro') then
  begin
    if uqtabelasrfcodigo.AsInteger = srfEmAberto then
    begin

      consulta.Close;
      consulta.SQL.Text := 'UPDATE rfi r SET r.srfcodigo = ' + Inttostr(srfCancelado) + ' WHERE r.rfichave = ' + uqtabelarfichave.AsString;
      consulta.ExecSQL;

      titcan.Close;
      titcan.SQL.Text := 'SELECT SUM(rfivalor) rfivalor FROM rfi WHERE titcodigo=' + uqtabelatitcodigo.AsString + ' AND srfcodigo<>9';
      titcan.Open;
      if (not titcan.IsEmpty) and (titcan.FieldByName('rfivalor').AsString <> '') then
      begin

        consulta.Close;
        consulta.SQL.Text := 'UPDATE tit SET titvalor = ' + ' (SELECT SUM(rfivalor) FROM rfi WHERE titcodigo=' + uqtabelatitcodigo.AsString + ' AND srfcodigo<>9) ' +
          ' WHERE titcodigo = ' + uqtabelatitcodigo.AsString;
        consulta.ExecSQL;
      end
      else
      begin
        consulta.Close;
        consulta.SQL.Text := 'UPDATE tit SET srfcodigo= 9 WHERE titcodigo = ' + uqtabelatitcodigo.AsString;
        consulta.ExecSQL;
      end;

      consulta.Close;
      consulta.SQL.Text := 'update mcg set mcgsituacao=9 where rfichave=' + uqtabelarfichave.AsString + ' and mcgtabela=' + QuotedStr('rfi');
      consulta.ExecSQL;

      ActAtualizar.Execute;
    end;

  end
  else
  begin
    ShowMessage('Usuário não autorizado!');
  end;

end;

procedure Tfracpa.ActCentroCustosExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mmcg', 'mcgtabela=' + QuotedStr('rfi') + '#' + uqtabelarfichave.AsString, uqtabelatitcodigo.AsString);
end;

procedure Tfracpa.ActDetalheExecute(Sender: TObject);
begin
  inherited;
  if uqtabelasrfcodigo.AsInteger <> srfEmAberto then
  begin
    chamabaixas('mmfi', 'formuver', self.uqtabelarfichave.AsString);
  end;
end;

procedure Tfracpa.ActEstornoExecute(Sender: TObject);
var
  vlAcao: string;
begin
  inherited;

  if uqtabelasrfcodigo.AsInteger <> srfEmAberto then
  begin

    vlAcao := Inttostr((Sender as TAction).Tag);

    if RegistroAcessoOperacao(vlAcao, 'Registro') then
    begin
      if uqtabelasrfcodigo.AsInteger <> srfEmAberto then
      begin
        chamabaixas('mmfi', 'formuest', self.uqtabelarfichave.AsString);

        titcan.Close;
        titcan.SQL.Text := 'select rfichave from rfi where titcodigo=' + uqtabelatitcodigo.AsString;
        titcan.Open;

        titcan.First;
        while not titcan.Eof do
        begin
          consulta.Close;
          consulta.SQL.Text := 'update mfi set mfisituacao=0 where rfichave=' + titcan.FieldByName('rfichave').AsString;
          consulta.ExecSQL;
          titcan.Next;
        end;

        self.ActAtualizar.Execute;
      end;

    end
    else
    begin
      ShowMessage('Usuário não autorizado!');
    end;
  end
  else
  begin
    ShowMessage('Somente títulos baixados podem ser estornados!');
  end;
end;

procedure Tfracpa.ActGerarPlanilhaExecute(Sender: TObject);
Var
  Book: IXLSWorkbook;
begin
  inherited;
  uqtabela.IndexFieldNames := 'etdidentificacao';

  Book := CreateWorkbook;




  // Save workbook

  Book.SaveAs(extractfilepath(application.ExeName) + 'planilha - ' + uqtabela.FieldByName('flhidentificacao').AsString + '.xls');
  MessageDlg('Planilha criada com sucesso', mtInformation, [mbOk], 0);
end;

function Tfracpa.CreateWorkbook: IXLSWorkbook;
Var
  Book: IXLSWorkbook;
  ws: IXLSWorksheet;
begin

  // Create workbook
  Book := TXLSWorkbook.Create;
  ws := Book.Sheets.Add;
  ws.Name := 'Atividades Adicionais';
end;

procedure Tfracpa.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcpamlt, '', '');
end;

procedure Tfracpa.ActPagamentoExecute(Sender: TObject);
var
  vlEtdCodigo: string;

begin

  vlEtdCodigo := uqtabelaetdcodigo.AsString;

  inherited;
  chamabaixas('mbrp', 'Pagar', Inttostr(tfdPagar), vlEtdCodigo);
  self.ActAtualizar.Execute;
end;

procedure Tfracpa.ActPagarEsteExecute(Sender: TObject);
var
  vlEtdCodigo: string;
begin

  vlEtdCodigo := uqtabelaetdcodigo.AsString;

  inherited;
  chamabaixas('mbrp', 'Pagar', uqtabelarfichave.AsString, vlEtdCodigo);
  self.ActAtualizar.Execute;
end;

procedure Tfracpa.ActVencimentoExecute(Sender: TObject);
var
  smsg: String;
  vlNovoVencimento: string;
  vlDia: TDate;
begin
  inherited;

  vlNovoVencimento := InputBox('Vencimento: Formato DD/MM/AAAA', 'Ajustar o vencimento paraa seguinte data : ', '');
  try
    vlDia := strtodate(vlNovoVencimento);

  except
    ShowMessage('Data invalida!');
    Exit;
  end;

  smsg := 'Deseja realmente alterar a data de ' + uqtabelarfivencimento.AsString + ' para ' + DateToStr(vlDia) + ' ?';

  If application.MessageBox(PChar(smsg), 'Atenção, confirma alteração:', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update rfi set rfivencimento=' + QuotedStr(ajustadata(DateToStr(vlDia))) + ' where rfichave=' + uqtabelarfichave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update mfi set mfisituacao=0' + ' where rfichave=' + uqtabelarfichave.AsString;;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update mcg set mcgdata=' + QuotedStr(ajustadata(DateToStr(vlDia))) + ' where  mcgchaveorigem=' + uqtabelatitcodigo.AsString + ' and mcgtabela=' +
      QuotedStr('rfi') + ' and rfichave=' + uqtabelarfichave.AsString;
    consulta.ExecSQL;

    ActAtualizar.Execute;

    ShowMessage('Ajuste de data realizado com sucesso!');

  End;

end;

procedure Tfracpa.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  inherited AtualizaFiltroUQTabela;
  CalculaTotais;

end;

procedure Tfracpa.Carregar;
begin
  vtfdcodigo := tfdPagar;
  cfg.Connection := ZCone;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  ActContabilizacao.Enabled := false;
  ActCentroCustos.Enabled := false;

  if (self.cfgcfgusactb.AsInteger = 1) then
  begin
    ActContabilizacao.Enabled := true;
    ActCentroCustos.Enabled := false;
  end
  else
  begin
    if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
    begin
      ActContabilizacao.Enabled := false;
      ActCentroCustos.Enabled := true;

    end;
  end;

  inherited;

  if PlBotoes.FindComponent('b' + spbEmAberto.Name) <> nil then
    TSpeedButton(PlBotoes.FindComponent('b' + spbEmAberto.Name)).Down := true;

end;

procedure Tfracpa.DBGridPcrDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Dpcr.DataSet.RecNo) Then
  begin

    DBGridPcr.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGridPcr.Canvas.Brush.Color := clwhite;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridPcr) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;
  if self.mcgmcgsituacao.AsString = '9' then
  begin
    DBGridPcr.Canvas.Font.Color := clgray;
  end
  else
  begin
    DBGridPcr.Canvas.Font.Color := clBlack;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGridPcr) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfracpa.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dstabela.DataSet.Active then
  begin
    if self.cfgcfgusactb.AsInteger in [1, 9] then
    begin
      pcr.Close;
      pcr.Params[0].AsInteger := uqtabelatitcodigo.AsInteger;
      pcr.Open;
      Dpcr.DataSet := pcr;
    end
    else
    begin

      if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
      begin
        mcg.Close;
        mcg.ParamByName('mcgchaveorigem').AsInteger := uqtabelatitcodigo.AsInteger;
        mcg.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
        mcg.Open;

        Dpcr.DataSet := mcg;
      end;
    end;
  end;
end;

procedure Tfracpa.mnVerificarCentrosdeCustosClick(Sender: TObject);
var
  I: Integer;

begin
  inherited;

  uqtabela.First;
  while not uqtabela.Eof do
  begin


    // ajusta situacao para cancelado o regustro gerencial

    if uqtabelasrfcodigo.AsInteger = srfCancelado then
    begin
      mcg.First;

      while not mcg.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgchave=' + mcgmcgchave.AsString;
        consulta.ExecSQL;
        mcg.Next;
      end;
    end;

    cco.Close;
    cco.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
    // cco.ParamByName('mfichave').AsInteger := mfimfichave.AsInteger;
    cco.Open;

    if not cco.IsEmpty then
    begin
      cco.First;
      while not cco.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT mcg.mcgchave,mcg.ccgcodigo, mcg.mcgvalor, mcgdata FROM mcg WHERE rfichave=' + uqtabelarfichave.AsString + '  and mcgchaveorigem=' +
          uqtabelatitcodigo.AsString + '  and mcgtabela=' + QuotedStr('rfi'); // + ' and  mcg.mcgvalor=' + buscatroca(ccomfivalor.AsString, ',', '.');
        consulta.Open;

        if not consulta.IsEmpty then
        begin
          while not consulta.Eof do
          begin

            mcgaju.Close;
            mcgaju.ParamByName('mcgchaveorigem').AsInteger := cco.FieldByName('ccochave').AsInteger;
            mcgaju.ParamByName('rfichave').AsInteger := 0;
            mcgaju.ParamByName('ccgcodigo').AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
            mcgaju.Open;

            if mcgmcgsituacao.AsInteger = 9 then
            begin
              mcgaju.Edit;
              mcgajumcgsituacao.AsInteger := 9;
              mcgaju.Post;
            end;

            if uqtabelarfivalor.AsCurrency = mcgajumcgvalor.AsCurrency then
            begin
              mcgaju.Edit;
              mcgajurfichave.AsInteger := uqtabelarfichave.AsInteger;
              mcgaju.Post;
            end;

            rfi.Close;
            rfi.ParamByName('mcgchaveorigem').AsInteger := uqtabela.FieldByName('titcodigo').AsInteger;
            rfi.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
            rfi.Open;

            while not rfi.Eof do
            begin

              ccorfi.Close;
              ccorfi.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
              ccorfi.ParamByName('ccgcodigo').AsInteger := rfi.FieldByName('ccgcodigo').AsInteger;
              ccorfi.Open;
              if (ccorfi.IsEmpty) and (rfi.FieldByName('mcgvalor').AsCurrency <> 0) then
              begin
                ccorfi.Append;
                for I := 1 to rfi.Fields.Count - 1 do
                begin
                  ccorfi.FieldByName(rfi.Fields[I].FieldName).AsString := rfi.FieldByName(rfi.Fields[I].FieldName).AsString;

                end;
                ccorfi.FieldByName('mcgtabela').AsString := 'cco';
                ccorfi.FieldByName('mcgchaveorigem').AsString := cco.FieldByName('ccochave').AsString;
                ccorfi.Post;

              end
              else
              begin

                if (ccorfi.FieldByName('mcgvalor').AsCurrency <> rfi.FieldByName('mcgvalor').AsCurrency) and (rfi.FieldByName('mcgvalor').AsCurrency <> 0) then
                begin
                  ccorfi.Edit;
                  ccorfi.FieldByName('mcgvalor').AsCurrency := rfi.FieldByName('mcgvalor').AsCurrency;
                  ccorfi.Post;
                end;

                if (ccorfi.FieldByName('rfichave').AsInteger = 0) then
                begin
                  ccorfi.Edit;
                  ccorfi.FieldByName('rfichave').AsInteger := rfi.FieldByName('rfichave').AsInteger;
                  ccorfi.Post;
                end;

              end;

              rfi.Next;
            end;

            consulta.Next;
          end;
        end;
        cco.Next;
      end;
    end;

    uqtabela.Next;
  end;

  uqtabela.First;
  while not uqtabela.Eof do
  begin

    // ajusta situacao para cancelado o regustro gerencial

    if uqtabelasrfcodigo.AsInteger = srfCancelado then
    begin
      mcg.First;

      while not mcg.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgchave=' + mcgmcgchave.AsString;
        consulta.ExecSQL;
        mcg.Next;
      end;
    end;

    cco.Close;
    cco.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
    // cco.ParamByName('mfichave').AsInteger := mfimfichave.AsInteger;
    cco.Open;

    if not cco.IsEmpty then
    begin
      cco.First;
      while not cco.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'SELECT mcg.mcgchave,mcg.ccgcodigo, mcg.mcgvalor, mcgdata FROM mcg WHERE rfichave=' + uqtabelarfichave.AsString + '  and mcgchaveorigem=' +
          uqtabelatitcodigo.AsString + '  and mcgtabela=' + QuotedStr('rfi') + ' and  mcg.mcgvalor=' + buscatroca(ccomfivalor.AsString, ',', '.');
        consulta.Open;

        if not consulta.IsEmpty then
        begin
          while not consulta.Eof do
          begin

            mcgaju.Close;
            mcgaju.ParamByName('mcgchaveorigem').AsInteger := cco.FieldByName('ccochave').AsInteger;
            mcgaju.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
            mcgaju.ParamByName('ccgcodigo').AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
            mcgaju.Open;

            if mcgaju.IsEmpty then
            begin
              mcgaju.Append;
              mcgajuccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
              mcgajumcgvalor.AsCurrency := consulta.FieldByName('mcgvalor').AsCurrency;
              mcgajumcgdata.AsDateTime := consulta.FieldByName('mcgdata').AsDateTime;
              mcgajumcgtabela.AsString := 'cco';
              mcgajumcgchaveorigem.AsInteger := cco.FieldByName('ccochave').AsInteger;
              mcgajumcgsituacao.AsInteger := 0;
              mcgajuclbcodigo.AsInteger := Acesso.Usuario;
              mcgajumcgregistro.AsString := agora(application, ZCone);
              mcgajurfichave.AsInteger := uqtabelarfichave.AsInteger;
              mcgaju.Post;
            end
            else
            begin
              if mcgajumcgdata.AsDateTime <> consulta.FieldByName('mcgdata').AsDateTime then
              begin
                mcgaju.Edit;
                mcgajumcgdata.AsDateTime := consulta.FieldByName('mcgdata').AsDateTime;

                mcgaju.Post;

              end;
              if mcgmcgsituacao.AsInteger = 9 then
              begin
                mcgaju.Edit;
                mcgajumcgsituacao.AsInteger := 9;
                mcgaju.Post;

              end;
              mcgaju.Edit;
              mcgajurfichave.AsInteger := uqtabelarfichave.AsInteger;
              mcgaju.Post;
            end;

            consulta.Next;
          end;
        end;
        cco.Next;
      end;
    end;

    uqtabela.Next;
  end;

  { uqtabela.First;
    while not uqtabela.Eof do
    begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT mcg.mcgchave,mcg.ccgcodigo FROM mcg WHERE  mcgchaveorigem=' + uqtabelarfichave.AsString + '  and mcgtabela=' + QuotedStr('rfi');
    consulta.Open;

    if not consulta.IsEmpty then
    begin
    mcgaju.Close;
    mcgaju.ParamByName('mcgchaveorigem').AsInteger := uqtabelatitcodigo.AsInteger;
    mcgaju.ParamByName('rfichave').AsInteger := uqtabelarfichave.AsInteger;
    mcgaju.Open;

    if mcgaju.IsEmpty then
    mcgaju.Append
    else
    mcgaju.Edit;

    mcgajuccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
    mcgajumcgvalor.AsCurrency := uqtabelarfivalor.AsCurrency;
    mcgajumcgdata.AsDateTime := uqtabelarfivencimento.AsDateTime;
    mcgajumcgtabela.AsString := 'rfi';
    mcgajumcgchaveorigem.AsInteger := uqtabelatitcodigo.AsInteger;
    mcgajumcgsituacao.AsInteger := 0;
    mcgajuclbcodigo.AsInteger := Acesso.Usuario;
    mcgajumcgregistro.AsString := agora(application, ZCone);
    mcgajurfichave.AsInteger := uqtabelarfichave.AsInteger;
    mcgaju.Post;
    end;

    uqtabela.Next;
    end; }

end;

end.
