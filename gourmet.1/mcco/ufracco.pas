unit ufracco;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls,
  Vcl.Dialogs, Vcl.Graphics, System.SysUtils, System.StrUtils, uFuncoes,
  uPegaBase, System.ImageList, Vcl.ImgList,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfracco = class(Tfrabase)
    fcc: tuniquery;
    fccfccchave: TIntegerField;
    fccclbcodigo: TIntegerField;
    fccctacodigo: TIntegerField;
    fccfccdataini: TDateField;
    fccfccdatafin: TDateField;
    PlFiltroCta: TPanel;
    Dfcc: tunidatasource;
    tfc: tuniquery;
    PlDatas: TPanel;
    fccdatafin: TDBEdit;
    PlEtiDataFinal: TPanel;
    fccdataini: TDBEdit;
    PlEtiDataInicial: TPanel;
    Dtfc: tunidatasource;
    fcctfccodigo: TIntegerField;
    tfctfccodigo: TIntegerField;
    tfctfcidentificacao: TStringField;
    uqtabelaccochave: TIntegerField;
    uqtabelaccovencimento: TDateField;
    bcalefin: TSpeedButton;
    bcaleini: TSpeedButton;
    extrato: tuniquery;
    uqtabelactacodigo: TIntegerField;
    uqtabelatoccodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatficodigo: TIntegerField;
    uqtabelamoecodigo: TIntegerField;
    uqtabelaccoemissao: TDateField;
    uqtabelacconumero: TStringField;
    uqtabelaccohistorico: TStringField;
    uqtabelaccovalor: TFloatField;
    uqtabelaccochaveorig: TIntegerField;
    uqtabelaccochavedest: TIntegerField;
    uqtabelaccoextenso: TStringField;
    uqtabelasaldo: TFloatField;
    uqtabelausuario: TIntegerField;
    dtl: tuniquery;
    PlDetalhe: TPanel;
    DBlistadtpl: TDBGrid;
    Pltitdetlote: TPanel;
    Ddtl: tunidatasource;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    PlDetFinche: TPanel;
    PlTitDetFinalizador: TPanel;
    DBlistafin: TDBGrid;
    uqtabelacconatureza: TStringField;
    dtltfdcodigo: TIntegerField;
    dtlmdaidentificacao: TStringField;
    che: tuniquery;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    chechenome: TStringField;
    chebcocodigo: TStringField;
    chechevalor: TFloatField;
    Dche: tunidatasource;
    dtlmdacodigo: TIntegerField;
    ActEstornar: TAction;
    ActTransferirCheques: TAction;
    uqtabelatfdcodigo: TIntegerField;
    uqtabelatfdidentificacao: TStringField;
    uqtabelaccofavorecido: TStringField;
    uqtabelaccodataregistro: TDateField;
    uqtabelaccohoraregistro: TTimeField;
    cheschcodigo: TIntegerField;
    chechechave: TIntegerField;
    ActResgatarCheques: TAction;
    ActDepositarCheques: TAction;
    ActChequesDisponiveis: TAction;
    ActDevolucaoCheque: TAction;
    chedis: tuniquery;
    chedischechave: TIntegerField;
    chedischeemissao: TDateField;
    chedischevencimento: TDateField;
    chedischenumero: TStringField;
    chedischeconta: TStringField;
    chedischeagencia: TStringField;
    chedisbcocodigo: TStringField;
    chedischenome: TStringField;
    chedischedocumento: TStringField;
    chedischetelefone: TStringField;
    chedischevalor: TFloatField;
    chedisschcodigo: TIntegerField;
    plResumoCCO: TPanel;
    plTitDebito: TPanel;
    plDebitoCCO: TPanel;
    plTitSaldoAnterior: TPanel;
    plSaldoAnteriorCCo: TPanel;
    plTitCredito: TPanel;
    plCreditoCCO: TPanel;
    plTitSaldoAtual: TPanel;
    plSaldoAtualCCO: TPanel;
    plTituyloResumo: TPanel;
    plResumoConciliado: TPanel;
    Panel8: TPanel;
    plDebitoConciliado: TPanel;
    Panel10: TPanel;
    plSaldoAnteriorConciliado: TPanel;
    Panel12: TPanel;
    plCreditoConciliado: TPanel;
    Panel14: TPanel;
    plSaldoAtualConciliado: TPanel;
    plTitualoConcilado: TPanel;
    ActConciliar: TAction;
    ActDesconciliar: TAction;
    ccbsaldoante: tuniquery;
    ccbsaldoantevalor: TFloatField;
    Panel1: TPanel;
    plFuturoCCO: TPanel;
    Panel2: TPanel;
    plSaldoFinalCCO: TPanel;
    ActTransferir: TAction;
    ccm: tuniquery;
    ccmmeamotivo: TStringField;
    ccmmeacodigo: TIntegerField;
    ccmccmmotivo: TStringField;
    ccmerfchave: TIntegerField;
    Dccm: TDataSource;
    erf: tuniquery;
    erferfdata: TDateField;
    erferfhora: TTimeField;
    erfclbidentificacao: TStringField;
    Derf: TDataSource;
    plMensagemFixa: TPanel;
    plEstorno: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    meacodigo: TDBEdit;
    meamotivo: TDBMemo;
    ccmmotivo: TDBMemo;
    erfdata: TDBEdit;
    erfhora: TDBEdit;
    clbidentificacao: TDBEdit;
    fct: tuniquery;
    fctctacodigo: TIntegerField;
    acoesflh: TActionList;
    ActLancamento: TAction;
    fctfctchave: TIntegerField;
    ActPagamento: TAction;
    ActEstornarLanFlh: TAction;
    efcefg: tuniquery;
    efcefgevachave: TIntegerField;
    efcefgetdcodigo: TIntegerField;
    efcefgflhchave: TIntegerField;
    efcefgeflcodigo: TIntegerField;
    efcefgevfcodigo: TIntegerField;
    mUtilitarios: TMenuItem;
    mAjustaDtl: TMenuItem;
    ajustadtl: tuniquery;
    cfg: tuniquery;
    cfgcfgusactb: TIntegerField;
    rmg: tuniquery;
    rmgrmgchave: TIntegerField;
    rmgmlgchave: TIntegerField;
    rmgpcgcodigo: TIntegerField;
    rmgpcgidentificacao: TStringField;
    rmgcedcodigo: TIntegerField;
    rmgcedidentificacao: TStringField;
    rmgrmgvalor: TFloatField;
    plContabilizacao: TPanel;
    Panel4: TPanel;
    DBlistarmg: TDBGrid;
    DSrmg: TDataSource;
    ActContabilizacao: TAction;
    lte: tuniquery;
    lteltechave: TIntegerField;
    pcr: tuniquery;
    Dpcr: TDataSource;
    Panel3: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    AjustarContabilizao1: TMenuItem;
    Plpcr: TPanel;
    Panel7: TPanel;
    DBGridDrg: TDBGrid;
    drg: tuniquery;
    Ddrg: TDataSource;
    ActDepositar: TAction;
    ActCentrodeCustos: TAction;
    uqtabelaconciliado: TStringField;
    uqtabelaccoconciliado: TStringField;
    mcg: tuniquery;
    mcgmcgchave: TIntegerField;
    mcgccgcodigo: TIntegerField;
    mcgccgidentificacao: TStringField;
    mcgmcgvalor: TFloatField;
    mcgmcgdata: TDateField;
    cfgcfgctbusaccg: TIntegerField;
    mcgatu: tuniquery;
    mcgatumcgchave: TIntegerField;
    mcgatuccgcodigo: TIntegerField;
    mcgatumcgvalor: TFloatField;
    mcgatumcgtabela: TStringField;
    mcgatumcgchaveorigem: TIntegerField;
    mcgatumcgsituacao: TIntegerField;
    mcgatuclbcodigo: TIntegerField;
    mcgatumcgregistro: TDateTimeField;
    mcgaturfichave: TIntegerField;
    cfgcfgccgcodigo: TIntegerField;
    mcgatumcgdata: TDateField;
    Plbaixa: TPanel;
    Panel6: TPanel;
    DBGDetalheBaixa: TDBGrid;
    rfi: tuniquery;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfisrfidentificacao: TStringField;
    rfiltechave: TIntegerField;
    Drfi: tunidatasource;
    mcgmcgsituacao: TIntegerField;
    mnAjustarEstorno: TMenuItem;
    mnAjustarCentroDeCustos: TMenuItem;
    mcgmcgcompetencia: TStringField;
    mcgatumcgcompetencia: TStringField;
    ActiCustodiarCheques: TAction;
    ActSacarCheque: TAction;

    procedure ActAtualizarExecute(Sender: TObject);
    procedure tfccodigoCloseUp(Sender: TObject);
    procedure bcaleiniClick(Sender: TObject);
    procedure bcalefinClick(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaTitleClick(Column: TColumn);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBlistadtplDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBlistafinDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActEstornarExecute(Sender: TObject);
    procedure ActTransferirChequesExecute(Sender: TObject);
    procedure ActResgatarChequesExecute(Sender: TObject);
    procedure ActDepositarChequesExecute(Sender: TObject);
    procedure ActChequesDisponiveisExecute(Sender: TObject);
    procedure ActDevolucaoChequeExecute(Sender: TObject);
    procedure DBlistadtplKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBlistafinKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActConciliarExecute(Sender: TObject);
    procedure ActDesconciliarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BLegendaClick(Sender: TObject);
    procedure ActTransferirExecute(Sender: TObject);
    procedure fccdatainiKeyPress(Sender: TObject; var Key: Char);
    procedure fccdatafinKeyPress(Sender: TObject; var Key: Char);
    procedure ActLancamentoExecute(Sender: TObject);
    procedure ActPagamentoExecute(Sender: TObject);
    procedure ActEstornarLanFlhExecute(Sender: TObject);
    procedure fccBeforePost(DataSet: TDataSet);
    procedure mAjustaDtlClick(Sender: TObject);
    procedure DBlistarmgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBlistarmgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActContabilizacaoExecute(Sender: TObject);
    procedure AjustarContabilizao1Click(Sender: TObject);
    procedure ActDepositarExecute(Sender: TObject);
    procedure ActCentrodeCustosExecute(Sender: TObject);
    procedure DBGridDrgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGDetalheBaixaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnAjustarEstornoClick(Sender: TObject);
    procedure mnAjustarCentroDeCustosClick(Sender: TObject);
    procedure ActiCustodiarChequesExecute(Sender: TObject);
    procedure ActSacarChequeExecute(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
    vpCtaCodigo: String;
    vpTctCodigo: Integer;
    vpEvaChave: string;

    procedure Carregar; override;

  end;

  tformuflh = function(AOwner: TComponent; conexao: tuniconnection; acesso: Tacesso; vtipolista: Integer; vmodulo: string; vfiltro: string; vmodo: string; vchave: string): string;

var
  fracco: Tfracco;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-01';
  vPlTitMdl = 'Contas Correntes';

  // Fim ID do Módulo fracco

implementation

{$R *.dfm}

uses ufcco, ufdpch, ufdvch, ufrech, uftrch, ufresgte, ulccb, ufccb, uflegenda,
  ufccoestornorfi, ufccoestorno, ufccotransf;

type
  TCellGrid = class(TCustomGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracco := Tfracco.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracco := Tfracco.Create(pCargaFrame);
  try
    fracco.CriaAcoesDeAcesso;
  finally
    fracco.Free;
  end;
end;

exports defineacesso, formuFrame;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfracco.ActAlterarExecute(Sender: TObject);
var
  vlTemCredito: boolean;

begin
  vlTemCredito := False;

  if dtl.Locate('mdacodigo', 8, []) then
    vlTemCredito := True;

  inherited;
  if (Self.dtltfdcodigo.AsInteger = tfdcontacorrente) and (Self.uqtabelatoccodigo.AsInteger = tocNormal) and (vlTemCredito = False) then
  begin
    if (plResumoConciliado.Visible) then
    begin
      if Self.uqtabelaccoconciliado.AsString = '1' then
      begin
        showmessage('Somente lançamentos Conciliados não podem ser alterados!');
        Exit;
      end;
      { Self.zcone.StartTransaction;
        if CriaFormulario(Tfcco, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
        Self.zcone.Commit
        else
        Self.zcone.Rollback; }

      CriaFormulario(Tfcco, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo);

    end
    else
    begin
      { Self.zcone.StartTransaction;
        if CriaFormulario(Tfcco, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
        Self.zcone.Commit
        else
        Self.zcone.Rollback; }

      CriaFormulario(Tfcco, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo);

    end;
  end
  else
  begin
    showmessage('Somente lançamentos Manuais podem ser alterados no conta corrente!');
  end;
  Self.ActAtualizar.Execute;
end;

procedure Tfracco.ActAtualizarExecute(Sender: TObject);
Var
  rgi: string;
  t: string;
  I, X, c: Integer;

  vfiltro: string;
  vsaldo: double;
  vltctcodigo: Integer;

  vlTotalDeb: double;
  vlTotalCre: double;
  vlTotalAnt: double;
  vlTotalAtu: double;
  vlTotalFut: double;
  vlTotalFin: double;

  vlTotalDebCon: double;
  vlTotalCreCon: double;
  vlTotalAntCon: double;
  vlTotalAtuCon: double;

Begin
  { inherited; }
  PlBotaoFiltroEsp.Visible := False;
  PlBotaoFiltro.Visible := False;
  PlBotaoFiltroEsp2.Visible := False;

  if uqtabela.Active then
  begin
    rgi := uqtabelaccochave.AsString;
  end;

  for I := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[I] is tuniquery then
    begin
      (Self.Components[I] as tuniquery).Connection := Self.zcone;
    end;
  end;

  if fcc.Active then
  begin
    if fcc.State <> dsbrowse then
    begin
      fcc.Post;
    end;
  end;





  // carrega ultima selecao de pediodo do usuario atual.

  fcc.Close;
  fcc.Params[0].AsInteger := acesso.Usuario;
  fcc.Params[1].AsString := Self.vpCtaCodigo;
  fcc.Open;

  if fcc.RecordCount = 0 then
  begin
    fcc.Append;
    fccclbcodigo.AsInteger := acesso.Usuario;
    fccctacodigo.AsString := Self.vpCtaCodigo;

    if fccfccdataini.AsString = '' then
      fccfccdataini.AsFloat := date;

    if fccfccdatafin.AsString = '' then
      fccfccdatafin.AsFloat := date;

    fcctfccodigo.AsInteger := 1;
    fcc.Post;

    fccdataini.Color := clwhite;
    fccdataini.Font.Color := clblack;

    fccdatafin.Color := clwhite;
    fccdatafin.Font.Color := clblack;

  end
  else
  begin
    if fcctfccodigo.AsInteger = 1 then
    begin

      PlDatas.Enabled := True;
      fccdataini.Color := clwhite;
      fccdataini.Font.Color := clblack;

      fccdatafin.Color := clwhite;
      fccdatafin.Font.Color := clblack;

    end
    else
    begin
      fcc.Edit;
      if fcctfccodigo.AsInteger = 2 then
      begin
        fccfccdataini.AsFloat := date - 7;
        fccfccdatafin.AsFloat := date;
      end
      else if fcctfccodigo.AsInteger = 3 then
      begin
        fccfccdataini.AsFloat := date - 15;
        fccfccdatafin.AsFloat := date;
      end
      else if fcctfccodigo.AsInteger = 4 then
      begin
        fccfccdataini.AsFloat := date - 30;
        fccfccdatafin.AsFloat := date;
      end
      else if fcctfccodigo.AsInteger = 5 then
      begin
        fccfccdataini.AsFloat := date - 60;
        fccfccdatafin.AsFloat := date;
      end
      else if fcctfccodigo.AsInteger = 6 then
      begin
        fccfccdataini.AsFloat := date - 180;
        fccfccdatafin.AsFloat := date;
      end
      else if fcctfccodigo.AsInteger = 9 then
      begin
        fccfccdataini.AsFloat := date - 20000;
        fccfccdatafin.AsFloat := date + 20000;
      end;

      fccdataini.Color := clsilver;
      fccdataini.Font.Color := clred;

      fccdatafin.Color := clsilver;
      fccdatafin.Font.Color := clred;

      PlDatas.Enabled := False;

    end;
  end;

  if fccdataini.Field.AsFloat > fccdatafin.Field.AsFloat then
  begin
    showmessage('Data Inicial não pode ser maior que Data Final');
    fccdataini.SetFocus;
    Exit;
  end;

  // monta sql na uqtabela para exibir extrato
  fil.Close;
  fil.SQL.Clear;
  fil.SQL.Add('SELECT filcodigo, clscodigo, clbcodigo, filsqloriginal ');
  fil.SQL.Add('  FROM fil');
  fil.SQL.Add(' WHERE clscodigo = ' + Self.clsclscodigo.AsString);
  fil.SQL.Add('   AND clbcodigo = ' + acesso.Usuario.ToString);
  fil.Open;

  vfiltro := montafiltro;
  if vfiltro <> '' then
  begin
    if pos('where', Self.filfilsqloriginal.AsString) = 0 then
    begin
      Self.uqtabela.SQL.Text := Self.filfilsqloriginal.AsString + ' where ' + vfiltro;
    end
    else
    begin
      Self.uqtabela.SQL.Text := Self.filfilsqloriginal.AsString + ' and ' + vfiltro;
    end;
  end
  else
  begin
    if Self.filfilsqloriginal.AsString <> '' then
    begin
      Self.uqtabela.SQL.Text := Self.filfilsqloriginal.AsString;
    end;
  end;

  if fcc.State <> dsbrowse then
  begin
    fcc.Post;
  end;

  Self.extrato.Close;
  Self.extrato.Params[0].AsDate := Self.fccfccdataini.AsFloat;
  Self.extrato.Params[1].AsDate := Self.fccfccdatafin.AsFloat;
  Self.extrato.Params[2].AsString := Self.vpCtaCodigo;
  Self.extrato.Params[3].AsInteger := acesso.Usuario;
  Self.extrato.ExecSQL;

  Self.uqtabela.Close;
  Self.uqtabela.Open;
  Self.uqtabela.IndexFieldNames := 'ccovencimento,ccochave';

  PlQtdRecno.Caption := 'Registros: ' + inttostr(Self.uqtabela.RecordCount);

  // mostra nome da conta no titulo da tela
  Self.consulta.Close;
  Self.consulta.SQL.Text := 'select ctacodigo, ctaidentificacao, ctanumero, tctcodigo from cta where ctacodigo=' + Self.vpCtaCodigo;
  Self.consulta.Open;
  vltctcodigo := consulta.fields[3].AsInteger;

  PlTitulo.Caption := consulta.fields[0].AsString + ' ' + consulta.fields[1].AsString + ' ' + consulta.fields[2].AsString;
  Application.ProcessMessages;
  Self.consulta.Close;

  vlTotalDeb := 0;
  vlTotalCre := 0;
  vlTotalAnt := 0;
  vlTotalAtu := 0;
  vlTotalFut := 0;
  vlTotalFin := 0;

  vlTotalDebCon := 0;
  vlTotalCreCon := 0;
  vlTotalAntCon := 0;
  vlTotalAtuCon := 0;

  uqtabela.DisableControls;
  uqtabela.First;
  while not uqtabela.Eof do
  begin
    if Self.uqtabelaccochave.AsInteger = 0 then
    begin
      vlTotalAnt := Self.uqtabelasaldo.AsFloat;
    end
    else
    begin
      if uqtabelacconatureza.AsString = 'D' then
      begin
        if Self.uqtabelaccoconciliado.AsString = '1' then
          vlTotalDebCon := vlTotalDebCon + uqtabelaccovalor.AsFloat;

        if uqtabelaccovencimento.AsFloat > date then
          vlTotalFut := vlTotalFut + uqtabelaccovalor.AsFloat;

        vlTotalDeb := vlTotalDeb + uqtabelaccovalor.AsFloat;
      end
      else
      begin
        vlTotalCre := vlTotalCre + uqtabelaccovalor.AsFloat;

        if uqtabelaccovencimento.AsFloat > date then
          vlTotalFut := vlTotalFut + uqtabelaccovalor.AsFloat;

        if Self.uqtabelaccoconciliado.AsString = '1' then
          vlTotalCreCon := vlTotalCreCon + uqtabelaccovalor.AsFloat;

      end;
    end;
    if uqtabelaccovencimento.AsFloat <= date then
      vlTotalAtu := Self.uqtabelasaldo.AsFloat;

    uqtabela.Next;
  end;
  vlTotalFin := Self.uqtabelasaldo.AsFloat;

  uqtabela.EnableControls;

  if uqtabela.Active then
  begin
    try
      uqtabela.Locate('ccochave', rgi, []);
    except

    end;
  end;

  if vltctcodigo <> tctContaBancaria then
  begin
    X := Self.DBLista.Columns.Count - 1;
    for I := 0 to X do
    begin
      if Self.DBLista.Columns[I].FieldName = 'ccoconciliado' then
      begin
        Self.DBLista.Columns[I].Visible := False;
        Break;
      end;
    end;
  end;

  plSaldoAnteriorCCo.Caption := formatfloat('##,###,##0.00', vlTotalAnt);
  plDebitoCCO.Caption := formatfloat('##,###,##0.00', vlTotalDeb);
  plCreditoCCO.Caption := formatfloat('##,###,##0.00', vlTotalCre);
  plSaldoAtualCCO.Caption := formatfloat('##,###,##0.00', vlTotalAtu);

  plFuturoCCO.Caption := formatfloat('##,###,##0.00', vlTotalFut);
  plSaldoFinalCCO.Caption := formatfloat('##,###,##0.00', vlTotalFin);

  if plResumoConciliado.Visible then
  begin
    ccbsaldoante.Close;
    ccbsaldoante.Params[0].AsDate := fccdataini.Field.AsFloat;
    ccbsaldoante.Params[1].AsString := Self.vpCtaCodigo;
    ccbsaldoante.Open;
    vlTotalAntCon := ccbsaldoantevalor.AsFloat;

    vlTotalAtuCon := vlTotalAntCon + vlTotalCreCon + vlTotalDebCon;
    plSaldoAnteriorConciliado.Caption := formatfloat('##,###,##0.00', vlTotalAntCon);
    plDebitoConciliado.Caption := formatfloat('##,###,##0.00', vlTotalDebCon);
    plCreditoConciliado.Caption := formatfloat('##,###,##0.00', vlTotalCreCon);
    plSaldoAtualConciliado.Caption := formatfloat('##,###,##0.00', vlTotalAtuCon);

  end;

end;

procedure Tfracco.ActCentrodeCustosExecute(Sender: TObject);
var
  vlPcbChave: string;
begin
  inherited;
  if (cfgcfgusactb.AsInteger = 1) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select pcbchave from pcb where ccochave=' + uqtabelaccochave.AsString;
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      vlPcbChave := consulta.FieldByName('pcbchave').AsString;
      MostraLista('mprg', '', vlPcbChave);
    end;
  end
  else if (cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
  begin
    if Plbaixa.Visible then
      MostraLista('mmcg', 'mcgtabela=' + QuotedStr('cco'), uqtabelaccochave.AsString)

    else
      MostraLista('mmcg', 'mcgtabela=' + QuotedStr('cco'), uqtabelaccochave.AsString);
  end;

end;

procedure Tfracco.ActChequesDisponiveisExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mcch', 'ctacodigo=' + Self.uqtabelactacodigo.AsString);
end;

procedure Tfracco.ActConciliarExecute(Sender: TObject);
begin
  inherited;
  { try
    Self.zcone.StartTransaction;
    if CriaFormulario(Tfccb, '', Self.vpCtaCodigo) then
    Self.zcone.Commit
    else
    Self.zcone.Rollback;
    except
    Self.zcone.Rollback;
    end; }

  CriaFormulario(Tfccb, '', Self.vpCtaCodigo);

end;

procedure Tfracco.ActContabilizacaoExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mccormg', '', dtlltechave.AsString);

end;

procedure Tfracco.ActDepositarChequesExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdpch, '0', Self.vpCtaCodigo);
end;

procedure Tfracco.ActDepositarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfccotransf, '0', Self.vpCtaCodigo, 'CHEQUE');
end;

procedure Tfracco.ActDesconciliarExecute(Sender: TObject);
var
  smsg: string;
  vlCCoChave: Integer;
begin
  inherited;

    smsg := 'Deseja Desconciliar o registro Selecionado ?';

    If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin

      vlCCoChave := Self.uqtabelaccochave.AsInteger;

      consulta.Close;
      consulta.SQL.Text := 'select cnbchave from cnb where ccochave=' + inttostr(vlCCoChave);
      consulta.Open;

      if not consulta.IsEmpty then
        consulta.Delete;

      consulta.Close;
      consulta.SQL.Text := 'update cco set ccoconciliado=' + chr(39) + '0' + chr(39) + ' where ccochave=' + inttostr(vlCCoChave);
      consulta.ExecSQL;

      Self.ActAtualizar.Execute;

    End;



end;

procedure Tfracco.ActDevolucaoChequeExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfdvch, '0', Self.vpCtaCodigo);
end;

procedure Tfracco.ActEstornarExecute(Sender: TObject);
begin
  inherited;

  if not che.IsEmpty then
  begin
    while not che.Eof do
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT c.chechave FROM che c, ltc l ';
      consulta.SQL.Add('WHERE c.chechave=' + Self.chechechave.AsString + ' and c.chechave = l.chechave AND (SELECT ltc.schcodigo ');
      consulta.SQL.Add('FROM ltc  WHERE ltc.chechave = c.chechave ');
      consulta.SQL.Add('ORDER BY ltc.schcodigo DESC LIMIT 1) = (1)');
      consulta.Open;
      che.Next;
    end;
    if consulta.IsEmpty then
    begin
      showmessage('Este registro possui um cheque que já foi utilizado para outra finalidade.' + #13 + 'Não pode mais ser ESTORNADO !');
      consulta.Close;
      Exit;
    end;
    consulta.Close;
  end;

  if ((dtltfdcodigo.AsInteger = tfdcontacorrente) and (uqtabelatoccodigo.AsInteger = tocNormal)) then
  begin
    if CriaFormulario(Tfccoestorno, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgchaveorigem=' + uqtabelaccochave.AsString + ' and mcgtabela=' + QuotedStr('cco');
      consulta.ExecSQL;

    end;

    {
      Self.zcone.StartTransaction;
      if CriaFormulario(Tfccoestorno, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
      Self.zcone.Commit
      else
      Self.zcone.Rollback;

    }

  end
  { else if ((dtltfdcodigo.AsInteger = tfdRecebimentos) and (uqtabelatoccodigo.AsInteger = tocNormal)) then
    begin
    if CriaFormulario(Tfccoestornorfi, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
    Self.zcone.Commit
    else
    Self.zcone.Rollback;

    end }

  else
  begin

    if (uqtabelaccochavedest.AsInteger <> 0) or (uqtabelaccochaveorig.AsInteger <> 0) then
    begin

      If Application.MessageBox(PChar('Este registro é uma transferência, deseja excluir a transferência ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
      Begin

        consulta.Close;
        consulta.SQL.Text := 'delete from cco where ccochave=' + uqtabelaccochave.AsString;
        consulta.ExecSQL;

        if (uqtabelaccochavedest.AsInteger <> 0) then
        begin

          consulta.Close;
          consulta.SQL.Text := 'delete from cco where ccochaveorig=' + uqtabelaccochavedest.AsString;
          consulta.ExecSQL;

        end
        else
        begin

          consulta.Close;
          consulta.SQL.Text := 'delete from cco where ccochavedest=' + uqtabelaccochaveorig.AsString;
          consulta.ExecSQL;

        end;

        ActAtualizar.Execute;

      End;

    end
    else
    begin
      showmessage('Somente lançamentos Manuais podem ser estornados no conta corrente!');
    end;

  end;

end;

procedure Tfracco.ActEstornarLanFlhExecute(Sender: TObject);
var
  vlCCoChave: string;
  vlEvaChave: string;
  vlFlhChave: string;
  vlEtdCodigo: string;
  vlEflCodigo: Integer;
  vlEvfCodigo: Integer;
  vlEvfCodigoCFG: Integer;
begin
  inherited;

  if not che.IsEmpty then
  begin
    while not che.Eof do
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT c.chechave FROM che c, ltc l ';
      consulta.SQL.Add('WHERE c.chechave=' + Self.chechechave.AsString + ' and c.chechave = l.chechave AND (SELECT ltc.schcodigo ');
      consulta.SQL.Add('FROM ltc  WHERE ltc.chechave = c.chechave ');
      consulta.SQL.Add('ORDER BY ltc.schcodigo DESC LIMIT 1) = (1)');
      consulta.Open;
      che.Next;
    end;
    if consulta.IsEmpty then
    begin
      showmessage('Este registro possui um cheque que já foi utilizado para outra finalidade.' + #13 + 'Não pode mais ser ESTORNADO !');
      consulta.Close;
      Exit;
    end;
    consulta.Close;
  end;

  if ((dtltfdcodigo.AsInteger = tfdcontacorrente) and (uqtabelatoccodigo.AsInteger = tocVerba)) then
  begin
    vlCCoChave := uqtabelaccochave.AsString;

    efcefg.Close;
    efcefg.Params[0].AsString := vlCCoChave;
    efcefg.Open;

    if efcefg.IsEmpty then
    begin
      Application.MessageBox(PChar('Estorno não permitido para este lançamento.'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    vlEvaChave := efcefgevachave.AsString;
    vlFlhChave := efcefgflhchave.AsString;
    vlEtdCodigo := efcefgetdcodigo.AsString;
    vlEflCodigo := efcefgeflcodigo.AsInteger;
    vlEvfCodigo := efcefgevfcodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'SELECT cfgevfpagto FROM cfgmflh;';
    consulta.Open;
    vlEvfCodigoCFG := consulta.fields[0].AsInteger;

    (*
      * Tratativa para estorno de Folha de Colaborador com estágio "Liquidada"
      - Se estiver "Liquidada" somente lançamentos do tipo "Pagamento" podem ser estornados
    *)
    if (vlEflCodigo in [eflFechada, eflLiquidada]) and (vlEvfCodigo <> vlEvfCodigoCFG) then
    begin
      Application.MessageBox(PChar('Estorno não permitido para este lançamento.' + #13 + #13 + 'A Folha deste funcionário está ' + IfThen(vlEflCodigo = eflFechada, 'Fechada.',
        'Liquidada.')), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    if CriaFormulario(Tfccoestorno, Self.uqtabelaccochave.AsString, Self.vpCtaCodigo) then
    begin

      { consulta.Open;
        consulta.SQL.Text := 'UPDATE eva  ';
        consulta.SQL.Add('SET eva.eflcodigo = ' + inttostr(eflEstorno) + ' WHERE eva.evachave = ' + vlEvaChave);
        consulta.ExecSQL; }

      consulta.Close;
      consulta.SQL.Text := 'delete from eva WHERE eva.evachave = ' + vlEvaChave;
      consulta.ExecSQL;

      if vlEflCodigo in [eflFechada, eflLiquidada] then
      begin
        consulta.Close;
        consulta.SQL.Text := 'UPDATE flh  ';
        consulta.SQL.Add('SET flh.eflcodigo = ' + inttostr(eflFechada) + ' WHERE flh.flhchave = ' + vlFlhChave);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE efg  ';
        consulta.SQL.Add('SET efg.eflcodigo = ' + inttostr(eflFechada) + ' ');
        consulta.SQL.Add('WHERE efg.flhchave = ' + vlFlhChave + ' ');
        consulta.SQL.Add('AND etdcodigo = ' + vlEtdCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE eva SET ';
        consulta.SQL.Add('eflcodigo = ' + inttostr(eflFechada) + ' ');
        consulta.SQL.Add('WHERE eflcodigo NOT IN (' + inttostr(eflEstorno) + ') ');
        consulta.SQL.Add('AND flhchave = ' + vlFlhChave + ' ');
        consulta.SQL.Add('AND etdcodigo = ' + vlEtdCodigo);
        consulta.ExecSQL;
      end;
    end;
  end
  else
  begin
    showmessage('Somente lançamentos Manuais da Folha podem ser alterados!');
  end;

end;

procedure Tfracco.ActiCustodiarChequesExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftrch, '0', Self.vpCtaCodigo);
end;

procedure Tfracco.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  { Self.zcone.StartTransaction;

    if CriaFormulario(Tfcco, '', Self.vpCtaCodigo) then
    Self.zcone.Commit
    else
    Self.zcone.Rollback; }

  CriaFormulario(Tfcco, '', Self.vpCtaCodigo);

end;

procedure Tfracco.ActLancamentoExecute(Sender: TObject);
var
  exec: tformuflh;
  pack: Cardinal;
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select count(flhchave) from flh where (eflcodigo=1 or eflcodigo=2)';
  consulta.Open;

  if consulta.fields[0].AsInteger = 0 then
  begin
    showmessage('Atenção: Não há Folha Gerencial disponíveis para pagamento!');
    Exit;
  end;

  pack := LoadPackage('modulos\meva.bpl');
  if pack <> 0 then
    try
      vpEvaChave := '';
      @exec := GetProcAddress(pack, PChar('FormuFlh'));
      if Assigned(exec) then
      begin
        vpEvaChave := exec(Application, zcone, acesso, 1, 'Conta Corrente', vpCtaCodigo, 'Pagamento', '');

        if vpEvaChave <> '' then
        begin

          consulta.Close;
          consulta.SQL.Text := 'select ccovalor, ccovencimento from cco where ccochave=' + vpEvaChave;
          consulta.Open;
          if (cfgcfgccgcodigo.AsString <> '0') and (cfgcfgccgcodigo.AsString <> '') then
          begin
            mcgatu.Open;
            mcgatu.Append;
            mcgatuccgcodigo.AsInteger := cfgcfgccgcodigo.AsInteger;
            mcgatumcgdata.AsDateTime := consulta.FieldByName('ccovencimento').AsDateTime;
            mcgatumcgvalor.AsCurrency := consulta.FieldByName('ccovalor').AsCurrency;
            mcgatumcgtabela.AsString := 'cco';

            consulta.Close;
            consulta.SQL.Text := 'SELECT flh.flhmes,flh.flhano  FROM eva,flh WHERE eva.flhchave=flh.flhchave and eva.evachave=' + vpEvaChave;
            consulta.Open;
            mcgatumcgcompetencia.AsString := consulta.FieldByName('flhmes').AsString + '-' + copy(consulta.FieldByName('flhano').AsString, 3, 2);

            mcgatumcgchaveorigem.AsString := vpEvaChave;
            mcgatumcgcompetencia.AsString := copy(mcgatumcgdata.AsString, 4, 2) + '-' + copy(mcgatumcgdata.AsString, 9, 2);
            mcgatumcgsituacao.AsInteger := 0;
            mcgatuclbcodigo.AsInteger := acesso.Usuario;
            mcgatumcgregistro.AsString := agora(Application, zcone);
            mcgaturfichave.AsInteger := 0;
            mcgatu.Post;
          end;
        end;
      end;
    finally
      // UnLoadPackage(pack);
      Self.ActAtualizar.Execute;
    end;
end;

procedure Tfracco.ActPagamentoExecute(Sender: TObject);
var
  exec: tformuflh;
  pack: Cardinal;
  vlFlhChave: string;
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select count(flhchave) from flh where eflcodigo=3';
  consulta.Open;

  if consulta.fields[0].AsInteger = 0 then
  begin
    showmessage('Atenção: Não há Folha Gerencial fechada para pagamento!');
    Exit;
  end;

  vlFlhChave := MostraLista('mflh', 'eflcodigo = 3');
  if vlFlhChave <> '' then
  begin

    pack := LoadPackage('modulos\mflh.bpl');
    if pack <> 0 then
      try
        vpEvaChave := '';
        @exec := GetProcAddress(pack, PChar('FormuPgtoFlh'));
        if Assigned(exec) then
        begin
          vpEvaChave := exec(Application, zcone, acesso, 1, 'Conta Corrente', vpCtaCodigo, 'Pagamento', vlFlhChave);
        end;
      finally
        // UnLoadPackage(pack);
        Self.ActAtualizar.Execute;
      end; { }
  end;
end;

procedure Tfracco.ActResgatarChequesExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrech, '0', Self.vpCtaCodigo);
end;

procedure Tfracco.ActSacarChequeExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfccotransf, '0', Self.vpCtaCodigo, 'SAQUECHEQUE');
end;

procedure Tfracco.ActTransferirChequesExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftrch, '0', Self.vpCtaCodigo);
end;

procedure Tfracco.ActTransferirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfccotransf, '0', Self.vpCtaCodigo, 'DINHEIRO');
end;

procedure Tfracco.AjustarContabilizao1Click(Sender: TObject);
var
  vlPcgconta: string;
begin
  inherited;
  uqtabela.First;
  while not uqtabela.Eof do
  begin

    rmg.First;
    while not rmg.Eof do
    begin

      consulta.Close;
      consulta.SQL.Text := 'select pcgcodigo from cta where ctacodigo=' + uqtabelactacodigo.AsString;
      consulta.Open;

      vlPcgconta := consulta.FieldByName('pcgcodigo').AsString;

      if pcr.RecordCount > 0 then
      begin
        pcr.First;
        while not pcr.Eof do
        begin
          if pcr.FieldByName('rfivalor').AsCurrency = rmg.FieldByName('rmgvalor').AsCurrency then
          begin
            vlPcgconta := pcr.FieldByName('pcgcodigo').AsString;
            if rmgpcgcodigo.AsString <> vlPcgconta then
            begin

              consulta.Close;
              consulta.SQL.Text := 'update rmg set cedcodigo=0, phgcodigo=' + pcr.FieldByName('phgcodigo').AsString + ' , pcgcodigo=' + pcr.FieldByName('pcgcodigo').AsString +
                ' where rmgchave=' + rmgrmgchave.AsString;
              consulta.ExecSQL;

            end;
          end;
          pcr.Next;
        end;
      end;

      if pcr.RecordCount > 0 then
      begin
        if drg.Locate('drgvalor', rmg.FieldByName('rmgvalor').AsCurrency, []) then
        begin
          if drg.FieldByName('pcgcodigo').AsString <> vlPcgconta then
          begin

            consulta.Close;
            consulta.SQL.Text := 'update drg set pcgcodigo=' + pcr.FieldByName('pcgcodigo').AsString + ' where drgchave=' + drg.FieldByName('drgchave').AsString;
            consulta.ExecSQL;

          end;
        end;
      end;

      if rmgpcgcodigo.AsString <> vlPcgconta then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update rmg set cedcodigo=(select cedcodigo from pcg where pcgcodigo=' + rmgpcgcodigo.AsString + ') where rmgchave=' + rmgrmgchave.AsString;
        consulta.ExecSQL;
      end;

      rmg.Next;
    end;

    uqtabela.Next;
  end;

end;

procedure Tfracco.bcalefinClick(Sender: TObject);
begin
  inherited;

  bcalefin.Hint := '';
  chamacalendario(Sender);

  if bcalefin.Hint <> '' then
  begin
    fccdatafin.DataSource.DataSet.Edit;
    fccdatafin.Field.AsString := bcalefin.Hint;
    fccdatafin.DataSource.DataSet.Post;
    Self.ActAtualizar.Execute;
  end;

end;

procedure Tfracco.bcaleiniClick(Sender: TObject);
begin
  inherited;
  bcaleini.Hint := '';
  chamacalendario(Sender);

  if bcaleini.Hint <> '' then
  begin
    fccdataini.DataSource.DataSet.Edit;
    fccdataini.Field.AsString := bcaleini.Hint;
    fccdataini.DataSource.DataSet.Post;
    Self.ActAtualizar.Execute;
  end;
end;

procedure Tfracco.BLegendaClick(Sender: TObject);
begin
  { inherited; }
  Application.CreateForm(tflegenda, flegenda);
  flegenda.ShowModal;
end;

procedure Tfracco.Carregar;
var
  I: Integer;
begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  if cfgcfgusactb.AsInteger = 1 then
  begin
    PlRodaPe.Visible := True;
    SplLista.Visible := True;
    plContabilizacao.Visible := True;
    ActContabilizacao.Enabled := True;
    ActCentrodeCustos.Enabled := False;
  end
  else
  begin
    ActContabilizacao.Enabled := False;
    if cfgcfgctbusaccg.AsInteger = 1 then
    begin
      ActCentrodeCustos.Enabled := True;
    end;
    PlRodaPe.Visible := False;
    SplLista.Visible := False;
  end;

  vpCtaCodigo := vchave;
  Self.Name := 'fracco' + vpCtaCodigo;

  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + vpCtaCodigo;
  consulta.Open;
  vpTctCodigo := consulta.fields[0].AsInteger;

  if vpTctCodigo = tctContaBancaria then
  begin
    plResumoConciliado.Visible := True;
    BLegenda.Visible := True;
    ActResgatarCheques.Enabled := False;
    ActDepositarCheques.Enabled := False;
    ActTransferirCheques.Enabled := False;
    ActConciliar.Enabled := True;
    ActDesconciliar.Enabled := True;

    chedis.Close;
    chedis.Params[0].AsInteger := 2;
    chedis.Params[1].AsString := vpCtaCodigo;
    chedis.Open;
    ActDevolucaoCheque.Enabled := True;
  end
  else if vpTctCodigo = tctContaCaixa then
  begin

    plResumoConciliado.Visible := False;
    BLegenda.Visible := False;

    // ActConciliar.Enabled := False;
    // ActDesconciliar.Enabled := False;

    chedis.Close;
    chedis.Params[0].AsInteger := 1;
    chedis.Params[1].AsString := vpCtaCodigo;
    chedis.Open;
    ActDevolucaoCheque.Enabled := False;
    ActResgatarCheques.Enabled := True;
    ActDepositarCheques.Enabled := True;
    ActTransferirCheques.Enabled := True;
  end;

  (* Método Carregar do FrameBase *)
  inherited Carregar;

  fct.Close;
  fct.Params[0].AsString := vpCtaCodigo;
  fct.Open;

  if not fct.IsEmpty then
    montamenu(acoesflh);

  if vpTctCodigo = tctContaCaixa then
  begin
    for I := 0 to DBGLista.Columns.Count - 1 do
      if DBGLista.Columns[I].FieldName = 'ccoconciliado' then
      begin
        DBGLista.Columns[I].Visible := False;
        Break;
      end;
  end
  else if vpTctCodigo <> tctContaBancaria then
  begin
    { if FindComponent('ActConciliar') <> nil then
      (FindComponent('ActConciliar') as TAction).Enabled := False; }

    { if FindComponent('ActDesconciliar') <> nil then
      (FindComponent('ActDesconciliar') as TAction).Enabled := False; }
  end;
end;

procedure Tfracco.DBGDetalheBaixaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tfracco.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;
  end;

  if plResumoConciliado.Visible then
  begin
    if Self.uqtabelaccoconciliado.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clGreen;
    end
    else
    begin
      DBGLista.Canvas.Font.Color := clblack;
    end;
    if Self.uqtabelaccovencimento.AsFloat > date then
    begin
      DBGLista.Canvas.Font.Color := clred;

    end;

  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
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

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
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

  if Column.FieldName = 'conciliado' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if uqtabelaconciliado.AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tfracco.DBGListaTitleClick(Column: TColumn);
var
  vccochave: Integer;
begin
  if uqtabela.Active then
  begin
    vccochave := uqtabela.FieldByName('ccochave').AsInteger;
  end;
  inherited;
  Self.uqtabela.IndexFieldNames := 'ccovencimento,ccochave';

  try
    uqtabela.Locate('ccochave', vccochave, []);
  except

  end;

end;

procedure Tfracco.DBGridDrgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

    DBGridDrg.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGridDrg.Canvas.Brush.Color := clwhite;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridDrg) do
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
  if Self.mcgmcgsituacao.AsString = '9' then
  begin
    DBGridDrg.Canvas.Font.Color := clgray;
  end
  else
  begin
    DBGridDrg.Canvas.Font.Color := clblack;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGridDrg) do
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

procedure Tfracco.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Self.uqtabelaccochave.AsString <> '' then
  begin
    PlDetFinche.Visible := False;
    dtl.Close;
    dtl.Params[0].AsInteger := Self.uqtabelaccochave.AsInteger;
    dtl.Open;

    if not dtl.IsEmpty then
    begin

      che.Close;
      che.Params[0].AsInteger := Self.dtlltechave.AsInteger;
      che.Params[1].AsDate := Self.uqtabelaccovencimento.AsDateTime;
      che.Open;

      if che.IsEmpty then
      begin
        PlDetFinche.Visible := False;
        che.Close;
      end
      else
      begin
        PlDetFinche.Visible := True;
      end;

    end;

    { if uqtabelaccoconciliado.AsString = 'S' then
      begin
      if vpTctCodigo = tctContaBancaria then
      begin
      ActDesconciliar.Enabled := True;
      end;
      end
      else
      begin
      ActDesconciliar.Enabled := False;
      end; }

    ccm.Close;
    ccm.Params[0].AsInteger := uqtabelaccochave.AsInteger;
    ccm.Open;

    erf.Close;
    erf.Params[0].AsInteger := ccmerfchave.AsInteger;
    erf.Open;

    rfi.Close;
    rfi.ParamByName('ltechave').AsInteger := dtlltechave.AsInteger;
    rfi.Open;

    if rfi.IsEmpty then
      Plbaixa.Visible := False
    else
      Plbaixa.Visible := True;

    if not ccm.IsEmpty then
      plEstorno.Visible := True
    else
      plEstorno.Visible := False;

    if cfgcfgusactb.AsInteger in [1, 9] then
    begin
      rmg.Close;
      rmg.ParamByName('ltechave').AsInteger := dtlltechave.AsInteger;
      rmg.Open;

      pcr.Close;
      pcr.ParamByName('ltechave').AsInteger := dtlltechave.AsInteger;
      pcr.Open;
      Dpcr.DataSet := pcr;

      drg.Close;
      drg.ParamByName('ltechave').AsInteger := dtlltechave.AsInteger;
      drg.Open;

      Ddrg.DataSet := drg;

      PlRodaPe.Visible := True;
      Plpcr.Visible := True;
      SplLista.Visible := True;

    end
    else
    begin
      if (Self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
      begin
        PlRodaPe.Visible := True;
        Plpcr.Visible := True;
        SplLista.Visible := True;
        Application.ProcessMessages;
        mcg.Close;
        mcg.ParamByName('mcgchaveorigem').AsInteger := uqtabelaccochave.AsInteger;
        mcg.ParamByName('rfivalor').AsCurrency := 0;
        mcg.Open;
        Ddrg.DataSet := mcg;

      end;
    end;

  end;

end;

procedure Tfracco.fccBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fccfccdataini.AsFloat > fccfccdatafin.AsFloat then
    fccfccdataini.AsFloat := fccfccdatafin.AsFloat;

end;

procedure Tfracco.fccdatafinKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    DBGLista.SetFocus;
  end;
end;

procedure Tfracco.fccdatainiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    fccdatafin.SetFocus;

  end;
end;

procedure Tfracco.mAjustaDtlClick(Sender: TObject);
begin
  inherited;
  ajustadtl.Close;
  ajustadtl.SQL.Text := 'SELECT dtl.dtlchave, lte.flacodigo FROM dtl, lte WHERE  dtl.ltechave=lte.ltechave and dtl.flacodigo<>lte.flacodigo AND dtl.dtlvalor=lte.lteprincipal';
  ajustadtl.SQL;
  while not ajustadtl.Eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'update dtl set flacodigo=' + ajustadtl.FieldByName('flacodigo').AsString + ' where dtlchave=' + ajustadtl.FieldByName('dtlchave').AsString;
    consulta.ExecSQL;

    ajustadtl.Next;
  end;
  showmessage('Ajuste realizado com sucesso!');

end;

procedure Tfracco.mnAjustarCentroDeCustosClick(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.Eof do
  begin
    rfi.First;
    while not rfi.Eof do
    begin

      if mcg.Locate('mcgvalor', rfirfivalor.AsCurrency, []) then
      begin

        consulta.Close;
        consulta.SQL.Text := 'update mcg set rfichave=' + rfirfichave.AsString + ' where mcgchave=' + mcgmcgchave.AsString + ' and rfichave=0';
        consulta.ExecSQL;

      end;
      rfi.Next;
    end;

    uqtabela.Next;
  end;

end;

procedure Tfracco.mnAjustarEstornoClick(Sender: TObject);
var
  vlHistorico: string;
  vlJaEstornados: TStringList;

begin
  inherited;
  uqtabela.First;
  vlJaEstornados := TStringList.Create;
  while not uqtabela.Eof do
  begin

    vlHistorico := 'Estorno Lcto. dia ' + uqtabelaccovencimento.AsString + ' ' + uqtabelaccohistorico.AsString;
    consulta.Close;
    consulta.SQL.Text := 'select ccochave from cco where ccohistorico=' + QuotedStr(vlHistorico);
    consulta.Open;

    if not consulta.IsEmpty then
    begin

      if pos(vlHistorico, vlJaEstornados.Text) = 0 then
      begin
        vlJaEstornados.Add(vlHistorico);
        mcg.First;
        while not mcg.Eof do
        begin

          consulta.Close;
          consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgchave=' + mcgmcgchave.AsString;
          consulta.ExecSQL;

          mcg.Next;
        end;

      end;

    end;
    uqtabela.Next;
  end;
end;

procedure Tfracco.DBlistadtplDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

var
  fixRect: TRect;
begin
  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Ddtl.DataSet.RecNo) Then
    DBlistadtpl.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBlistadtpl.Canvas.Brush.Color := clwhite;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBlistadtpl) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBlistadtpl) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfracco.DBlistadtplKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure Tfracco.DBlistafinDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Dche.DataSet.RecNo) Then
  begin
    DBlistafin.Canvas.Brush.Color := PEG_COR_BASE;
    if Self.cheschcodigo.AsInteger = -1 then
    begin
      DBlistafin.Canvas.Font.Color := clred;
    end
    else
    begin
      DBlistafin.Canvas.Font.Color := clblack;
    end;

  end
  Else
  begin
    DBlistafin.Canvas.Brush.Color := clwhite;
    if Self.cheschcodigo.AsInteger = -1 then
    begin
      DBlistafin.Canvas.Font.Color := clred;
    end
    else
    begin
      DBlistafin.Canvas.Font.Color := clblack;
    end;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBlistafin) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBlistafin) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfracco.DBlistafinKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure Tfracco.DBlistarmgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfracco.DBlistarmgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure Tfracco.tfccodigoCloseUp(Sender: TObject);
begin
  inherited;
  Self.ActAtualizar.Execute;
end;

end.
