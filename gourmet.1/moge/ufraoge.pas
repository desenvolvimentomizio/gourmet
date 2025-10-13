unit ufraoge;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegabase, uFuncoes, Vcl.ComCtrls, StrUtils, COMOBJ, SHELLAPI,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type

  TDBGrid = class(Vcl.DBGrids.TDBGrid)
    procedure WMHScroll(var Msg: TWMHScroll); message WM_HSCROLL;
  end;

  Tfraoge = class(Tfrabase)
    uqtabelaogechave: TIntegerField;
    uqtabelaogeidentificacao: TStringField;
    uqtabelaogedatainicial: TDateField;
    uqtabelaogedatafinal: TDateField;
    uqtabelaogepercotimista: TFloatField;
    uqtabelaogeperpecimista: TFloatField;
    uqtabelaogeestagio: TStringField;
    ActItens: TAction;
    dog: TUniQuery;
    dogdogchave: TIntegerField;
    dogogechave: TIntegerField;
    dogpcgcodigo: TIntegerField;
    dogpcgidentificacao: TStringField;
    dogdogprevisao: TFloatField;
    dogdogrealizado: TFloatField;
    dogdogpercentual: TFloatField;
    dogdogsaldo: TFloatField;
    Ddog: TDataSource;
    uqtabelaogeano: TIntegerField;
    ActRealizarApuracao: TAction;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    ogedog: TUniQuery;
    ogedogdogchave: TIntegerField;
    ogedogogechave: TIntegerField;
    ogedogpcgcodigo: TIntegerField;
    ogedogdogprevisao: TFloatField;
    ogedogdogmes: TIntegerField;
    ogedogdogano: TIntegerField;
    ogedogdogrealizado: TFloatField;
    ogedogdogpercotimista: TFloatField;
    ogedogdogperpessimista: TFloatField;
    ogedogdogsituacao: TIntegerField;
    ogedogclbcodigo: TIntegerField;
    ogedogdogregistro: TDateTimeField;
    plRealizaApuracao: TPanel;
    pbMostraApuracao: TProgressBar;
    oge: TUniQuery;
    Doge: TDataSource;
    Panel1: TPanel;
    DBGridApuracao: TDBGrid;
    aog: TUniQuery;
    aogaogchave: TIntegerField;
    aogogechave: TIntegerField;
    aogpcgcodigo: TIntegerField;
    aogpcgidentificacao: TStringField;
    aogpcgtitulo: TStringField;
    aogaogprevisto01: TFloatField;
    aogaogrealizado01: TFloatField;
    aogaogsaldo01: TFloatField;
    aogaogpercentual01: TFloatField;
    aogaogprevisto02: TFloatField;
    aogaogrealizado02: TFloatField;
    aogaogsaldo02: TFloatField;
    aogaogpercentual02: TFloatField;
    aogaogprevisto03: TFloatField;
    aogaogrealizado03: TFloatField;
    aogaogsaldo03: TFloatField;
    aogaogpercentual03: TFloatField;
    aogaogprevisto04: TFloatField;
    aogaogrealizado04: TFloatField;
    aogaogsaldo04: TFloatField;
    aogaogpercentual04: TFloatField;
    aogaogprevisto05: TFloatField;
    aogaogrealizado05: TFloatField;
    aogaogsaldo05: TFloatField;
    aogaogpercentual05: TFloatField;
    aogaogprevisto06: TFloatField;
    aogaogrealizado06: TFloatField;
    aogaogsaldo06: TFloatField;
    aogaogpercentual06: TFloatField;
    aogaogprevisto07: TFloatField;
    aogaogrealizado07: TFloatField;
    aogaogsaldo07: TFloatField;
    aogaogpercentual07: TFloatField;
    aogaogprevisto08: TFloatField;
    aogaogrealizado08: TFloatField;
    aogaogsaldo08: TFloatField;
    aogaogpercentual08: TFloatField;
    aogaogprevisto09: TFloatField;
    aogaogrealizado09: TFloatField;
    aogaogsaldo09: TFloatField;
    aogaogpercentual09: TFloatField;
    aogaogprevisto10: TFloatField;
    aogaogrealizado10: TFloatField;
    aogaogsaldo10: TFloatField;
    aogaogpercentual10: TFloatField;
    aogaogprevisto11: TFloatField;
    aogaogrealizado11: TFloatField;
    aogaogsaldo11: TFloatField;
    aogaogpercentual11: TFloatField;
    aogaogprevisto12: TFloatField;
    aogaogrealizado12: TFloatField;
    aogaogsaldo12: TFloatField;
    aogaogpercentual12: TFloatField;
    aogaogprevistogeral: TFloatField;
    aogaogrealizadogeral: TFloatField;
    aogaogsaldogeral: TFloatField;
    aogaogpercentualgeral: TFloatField;
    Daog: TDataSource;
    sea: TUniQuery;
    seaseacodigo: TIntegerField;
    seapcgcodigo: TIntegerField;
    ogepcgcodigo: TIntegerField;
    ogepcgidentificacao: TStringField;
    ogeogerealizado01: TFloatField;
    ogeogeprevisto01: TFloatField;
    ogeogesaldo01: TFloatField;
    ogeogerealizado02: TFloatField;
    ogeogeprevisto02: TFloatField;
    ogeogesaldo02: TFloatField;
    ogeogerealizado03: TFloatField;
    ogeogeprevisto03: TFloatField;
    ogeogesaldo03: TFloatField;
    ogeogerealizado04: TFloatField;
    ogeogeprevisto04: TFloatField;
    ogeogesaldo04: TFloatField;
    ogeogerealizado05: TFloatField;
    ogeogeprevisto05: TFloatField;
    ogeogesaldo05: TFloatField;
    ogeogerealizado06: TFloatField;
    ogeogeprevisto06: TFloatField;
    ogeogesaldo06: TFloatField;
    ogeogerealizado07: TFloatField;
    ogeogeprevisto07: TFloatField;
    ogeogesaldo07: TFloatField;
    ogeogerealizado08: TFloatField;
    ogeogeprevisto08: TFloatField;
    ogeogesaldo08: TFloatField;
    ogeogerealizado09: TFloatField;
    ogeogeprevisto09: TFloatField;
    ogeogesaldo09: TFloatField;
    ogeogerealizado10: TFloatField;
    ogeogeprevisto10: TFloatField;
    ogeogesaldo10: TFloatField;
    ogeogerealizado11: TFloatField;
    ogeogeprevisto11: TFloatField;
    ogeogesaldo11: TFloatField;
    ogeogerealizado12: TFloatField;
    ogeogeprevisto12: TFloatField;
    ogeogesaldo12: TFloatField;
    rmg: TUniQuery;
    rmgrmgchave: TIntegerField;
    rmgmlgchave: TIntegerField;
    rmgflacodigo: TIntegerField;
    rmgflaidentificacao: TStringField;
    rmgpcgcodigo: TIntegerField;
    rmgcedcodigo: TIntegerField;
    rmgcedidentificacao: TStringField;
    rmgrmgvalor: TFloatField;
    rmgrmgdata: TDateField;
    rmgrmgcomplemento: TStringField;
    rmgphgcodigo: TIntegerField;
    rmgphgidentificacao: TStringField;
    rmgrmgcompetencia: TDateField;
    rmgrmginclusao: TDateTimeField;
    Drmg: TDataSource;
    plRealizado: TPanel;
    plPrevisto: TPanel;
    DBGridRmg: TDBGrid;
    Panel4: TPanel;
    rmgctacodigo: TIntegerField;
    seacedcodigo: TIntegerField;
    ogecedcodigo: TIntegerField;
    pcr: TUniQuery;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Dpcr: TDataSource;
    pcrrfichave: TIntegerField;
    pcretdidentificacao: TStringField;
    pcrrfivencimento: TDateField;
    pcrrfihistorico: TStringField;
    pcrpcrvalor: TFloatField;
    Splitter1: TSplitter;
    aogpcgestrutural: TStringField;
    pcrr: TUniQuery;
    Dpcrr: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    pcrrrfichave: TIntegerField;
    pcrretdidentificacao: TStringField;
    pcrrrfivencimento: TDateField;
    pcrrrfihistorico: TStringField;
    pcrrpcrvalor: TFloatField;
    aogseacodigo: TIntegerField;
    ogeseacodigo: TIntegerField;
    ActGerarPlanilha: TAction;
    ActContabilizacao: TAction;
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
    ActGerarPlanilhaPrimeiroSemestre: TAction;
    ActGerarPlanilhaSegundoSemestre: TAction;
    analisevertical: TUniQuery;
    ActGeraPlanilhaAnaliseVertical: TAction;
    ActProgramacaoLimite: TAction;
    aogcedcodigo: TIntegerField;
    aogcred: TUniQuery;
    aogcredaogchave: TIntegerField;
    aogcredogechave: TIntegerField;
    aogcredpcgcodigo: TIntegerField;
    aogcredpcgestrutural: TStringField;
    aogcredpcgidentificacao: TStringField;
    aogcredpcgtitulo: TStringField;
    aogcredaogprevisto01: TFloatField;
    aogcredaogrealizado01: TFloatField;
    aogcredaogsaldo01: TFloatField;
    aogcredaogpercentual01: TFloatField;
    aogcredaogprevisto02: TFloatField;
    aogcredaogrealizado02: TFloatField;
    aogcredaogsaldo02: TFloatField;
    aogcredaogpercentual02: TFloatField;
    aogcredaogprevisto03: TFloatField;
    aogcredaogrealizado03: TFloatField;
    aogcredaogsaldo03: TFloatField;
    aogcredaogpercentual03: TFloatField;
    aogcredaogprevisto04: TFloatField;
    aogcredaogrealizado04: TFloatField;
    aogcredaogsaldo04: TFloatField;
    aogcredaogpercentual04: TFloatField;
    aogcredaogprevisto05: TFloatField;
    aogcredaogrealizado05: TFloatField;
    aogcredaogsaldo05: TFloatField;
    aogcredaogpercentual05: TFloatField;
    aogcredaogprevisto06: TFloatField;
    aogcredaogrealizado06: TFloatField;
    aogcredaogsaldo06: TFloatField;
    aogcredaogpercentual06: TFloatField;
    aogcredaogprevisto07: TFloatField;
    aogcredaogrealizado07: TFloatField;
    aogcredaogsaldo07: TFloatField;
    aogcredaogpercentual07: TFloatField;
    aogcredaogprevisto08: TFloatField;
    aogcredaogrealizado08: TFloatField;
    aogcredaogsaldo08: TFloatField;
    aogcredaogpercentual08: TFloatField;
    aogcredaogprevisto09: TFloatField;
    aogcredaogrealizado09: TFloatField;
    aogcredaogsaldo09: TFloatField;
    aogcredaogpercentual09: TFloatField;
    aogcredaogprevisto10: TFloatField;
    aogcredaogrealizado10: TFloatField;
    aogcredaogsaldo10: TFloatField;
    aogcredaogpercentual10: TFloatField;
    aogcredaogprevisto11: TFloatField;
    aogcredaogrealizado11: TFloatField;
    aogcredaogsaldo11: TFloatField;
    aogcredaogpercentual11: TFloatField;
    aogcredaogprevisto12: TFloatField;
    aogcredaogrealizado12: TFloatField;
    aogcredaogsaldo12: TFloatField;
    aogcredaogpercentual12: TFloatField;
    aogcredaogprevistogeral: TFloatField;
    aogcredaogrealizadogeral: TFloatField;
    aogcredaogsaldogeral: TFloatField;
    aogcredaogpercentualgeral: TFloatField;
    aogcredseacodigo: TIntegerField;
    aogcredcedcodigo: TIntegerField;
    ActGerarPlanilhaPrimeiroTrimestre: TAction;
    ActGerarPlanilhaSegundoTrimestre: TAction;
    ActGerarPlanilhaTerceiroTrimestre: TAction;
    ActGerarPlanilhaQuartoTrimestre: TAction;
    ActHistoricosReceita: TAction;
    dogdogmes: TIntegerField;
    hrf: TUniQuery;
    hrfhrfchave: TIntegerField;
    hrfpcgcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActItensExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGridDogDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActRealizarApuracaoExecute(Sender: TObject);
    procedure DBGridApuracaoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridApuracaoColEnter(Sender: TObject);
    procedure DBGridApuracaoMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DaogDataChange(Sender: TObject; Field: TField);
    procedure DBGridApuracaoCellClick(Column: TColumn);
    procedure DBGridRmgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

    procedure CarregaPlanilha(vNomeArquivo: string);
    procedure ActContabilizacaoExecute(Sender: TObject);
    procedure ActProgramacaoLimiteExecute(Sender: TObject);
    procedure ActHistoricosReceitaExecute(Sender: TObject);
  private
    procedure AjustaTitulos(Column: TColumn; const Rect: TRect);
    procedure AjustaRegistrosContabeis;
    function ExtensoMes(n: Integer): String;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fraoge: Tfraoge;

  // Início ID do Módulo fraoge
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Orçamentos Gerenciais';

  // Fim ID do Módulo fraoge

implementation

uses
  ufoge;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraoge := Tfraoge.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraoge := Tfraoge.Create(pCargaFrame);
  try
    fraoge.CriaAcoesDeAcesso;
  finally
    fraoge.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure TDBGrid.WMHScroll(var Msg: TWMHScroll);
begin
  case Msg.ScrollCode of
    SB_ENDSCROLL:
      OutputDebugString('SB_ENDSCROLL');
    SB_LEFT:
      OutputDebugString('SB_LEFT');
    SB_RIGHT:
      OutputDebugString('SB_RIGHT');
    SB_LINELEFT:
      OutputDebugString('SB_LINELEFT');
    SB_LINERIGHT:
      OutputDebugString('SB_LINERIGHT');
    SB_PAGELEFT:
      OutputDebugString('SB_PAGELEFT');
    SB_PAGERIGHT:
      OutputDebugString('SB_PAGERIGHT');
    SB_THUMBPOSITION:
      OutputDebugString('SB_THUMBPOSITION');
  end;

  Repaint;

  inherited; // to keep the expected behavior
end;

procedure Tfraoge.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfoge, self.uqtabelaogechave.AsString, '');
end;

procedure Tfraoge.CarregaPlanilha(vNomeArquivo: string);
begin
  ShellExecute(Handle, 'open', 'excel.exe', pchar('"' + QuotedStr(vNomeArquivo) + '"'), nil, SW_SHOWNORMAL);
end;

function Tfraoge.ExtensoMes(n: Integer): String;
begin
  Case n Of
    01:
      Result := 'Janeiro';
    02:
      Result := 'Fevereiro';
    03:
      Result := 'Março';
    04:
      Result := 'Abril';
    05:
      Result := 'Maio';
    06:
      Result := 'Junho';
    07:
      Result := 'Julho';
    08:
      Result := 'Agosto';
    09:
      Result := 'Setembro';
    10:
      Result := 'Outubro';
    11:
      Result := 'Novembro';
    12:
      Result := 'Dezembro';
  end;
end;

procedure ExecuteAndWait(const aCommando: string);
var
  vlNomeArquivo: string;
  XLApp: OLEVariant;
  X, Y: byte;
  path: variant;
begin

  { vlNomeArquivo := StringReplace(aCommando, '\', '\\', [rfReplaceAll, rfIgnoreCase]);
    XLApp := CreateOleObject('Excel.Application'); // comobj
    XLApp.Visible:=True;
    try
    XLApp.Visible := FALSE; // Hide Excel
    XLApp.DisplayAlerts := FALSE;
    path := vlNomeArquivo;
    XLApp.Workbooks.Open(path); // Open the Workbook



    finally
    // XLApp.Quit;
    // XLAPP := Unassigned;
    end; }

end;

procedure Tfraoge.ActContabilizacaoExecute(Sender: TObject);
var
  vlTitCodigo: string;
begin
  inherited;
  mostralista('mtit', '', '');

  { if CriaFormulario(Tftit, '', '') then
    begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT max(titcodigo) from tit where clbcodigo='+acesso.Usuario.ToString;
    consulta.Open;
    vlTitCodigo := consulta.Fields[0].AsString;

    mostralista('mpcr', '',vlTitCodigo);
    end; }
end;

procedure Tfraoge.ActHistoricosReceitaExecute(Sender: TObject);
begin
  inherited;
  mostralista('mhrf', '', aogpcgcodigo.AsString);
end;

procedure Tfraoge.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfoge, '', '');
end;

procedure Tfraoge.ActItensExecute(Sender: TObject);
begin
  inherited;
  mostralista('mdog', '', self.uqtabelaogechave.AsString);
  ActAtualizar.Execute;
end;

procedure Tfraoge.ActProgramacaoLimiteExecute(Sender: TObject);
begin
  inherited;
  mostralista('mpop', '', self.uqtabelaogechave.AsString);
  ActAtualizar.Execute;
end;

procedure Tfraoge.ActRealizarApuracaoExecute(Sender: TObject);
var
  vPrimeiroDia: string;
  vUltimoDia: string;
  vOrcPrimeiroDia: string;
  vOrcUltimoDia: string;
  vldia: string;
  vlMeses: Integer;
  vlPrimeiroMes: Integer;
  vlUltimoMes: Integer;
  year, month, Day: Word;

  vlValorConta: Double;
  vlValorSaldo: Double;
  vlValorPrevisto: Double;
  vlValorRealizado: Double;

  vlValorContaCorrente: Double;

  i, n, m: Integer;

  vlNivel1: Double;
  vlNivel2: Double;
  vlNivel3: Double;
  vlNivel4: Double;
  vlNivel5: Double;
  vlNivel6: Double;
  vlNivel7: Double;
  vlNivel8: Double;
  vlNivel9: Double;

  vlNivelPrevisto1: Double;
  vlNivelPrevisto2: Double;
  vlNivelPrevisto3: Double;
  vlNivelPrevisto4: Double;
  vlNivelPrevisto5: Double;
  vlNivelPrevisto6: Double;
  vlNivelPrevisto7: Double;
  vlNivelPrevisto8: Double;
  vlNivelPrevisto9: Double;

  vlNivelSaldo1: Double;
  vlNivelSaldo2: Double;
  vlNivelSaldo3: Double;
  vlNivelSaldo4: Double;
  vlNivelSaldo5: Double;
  vlNivelSaldo6: Double;
  vlNivelSaldo7: Double;
  vlNivelSaldo8: Double;
  vlNivelSaldo9: Double;

  vlPercentual: Double;
  vlSPercentual: String;
  vlTotalGrupo: Double;
  vlTotalApurado: Double;

  vlclasse: string;
  vlContaTitulo: string;
  vlNaturezaAtual: Integer;

begin
  inherited;
  // try

  oge.DisableControls;
  aog.DisableControls;

  // mostra painel para andamento da apuração
  plRealizaApuracao.Visible := true;
  pbMostraApuracao.Position := 0;

  // abre plano de contas que vao compor o orçamento
  pcg.Open;

  // Identifica o primeiro mes do orçamento
  vOrcPrimeiroDia := uqtabelaogedatainicial.AsString;
  DecodeDate(uqtabelaogedatainicial.AsDateTime, year, month, Day);
  vlPrimeiroMes := month;

  // Identifica o ultimp mes do orçamento
  vOrcUltimoDia := uqtabelaogedatafinal.AsString;
  DecodeDate(uqtabelaogedatafinal.AsDateTime, year, month, Day);
  vlUltimoMes := month;
  pbMostraApuracao.max := vlUltimoMes;
  application.ProcessMessages;

  // loop para repassar todos os meses do orçamento
  for vlMeses := vlPrimeiroMes to vlUltimoMes do
  begin

    pbMostraApuracao.Position := pbMostraApuracao.Position + 1;
    application.ProcessMessages;

    // loop para repasar todas contas marcadas para participar do orçamento

    pcg.First;
    while not pcg.Eof do
    begin

      ogedog.Close;
      ogedog.ParamByName('dogmes').AsInteger := vlMeses;
      ogedog.ParamByName('dogano').AsInteger := uqtabelaogeano.AsInteger;
      ogedog.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      ogedog.Open;

      // primeiro dia de cada mes
      vldia := '01/' + formatfloat('00', vlMeses) + '/' + uqtabelaogeano.AsString;

      consulta.Close;
      consulta.SQL.Text := 'select  year(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ), LAST_DAY(' +
        QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ') ultimodia ' + ' , CAST(DATE_FORMAT(' +
        QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ,' + QuotedStr('%Y-%m-01') + ') as DATE) primeirodia ';
      consulta.Open;
      vPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
      vUltimoDia := consulta.FieldByName('ultimodia').AsString;
      consulta.Close;

      // apura a soma de todos registros previstos para esta data
      vlValorPrevisto := 0;
      consulta.Close;
      consulta.SQL.Text :=
        'SELECT SUM(rfivalor) pcrtotal FROM pcr,rfi WHERE srfcodigo<>9 and pcr.titcodigo=rfi.titcodigo AND rfivencimento BETWEEN :primeirodia AND :ultimodia and pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
      // 'SELECT SUM(pcrvalor/rfirepetir) pcrtotal FROM pcr,rfi WHERE srfcodigo<>9 and pcr.titcodigo=rfi.titcodigo AND rfivencimento BETWEEN :primeirodia AND :ultimodia and pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
      consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
      consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
      consulta.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlValorPrevisto := consulta.FieldByName('pcrtotal').AsCurrency
      end
      else
        vlValorPrevisto := 0;

      vlValorRealizado := 0;
      consulta.Close;
      // consulta.SQL.Text :=
      // 'SELECT SUM(pcrvalor) rmgtotal FROM pcr,rfi, mfi WHERE mfi.rfichave=rfi.rfichave and mfi.tmfcodigo in (11,21) and srfcodigo<>9 and pcr.titcodigo=rfi.titcodigo AND mfidata BETWEEN :primeirodia AND :ultimodia and pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';

      consulta.SQL.Text :=
        'SELECT SUM(pcrvalor) rmgtotal FROM pcr,rfi, mfi WHERE mfi.rfichave=rfi.rfichave and mfi.tmfcodigo in (11,21) and srfcodigo<>9 and pcr.titcodigo=rfi.titcodigo AND mfidata BETWEEN :primeirodia AND :ultimodia and pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
      { 'SELECT  sum(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtotal FROM pcr INNER JOIN pcg ON pcr.pcgcodigo = pcg.pcgcodigo INNER JOIN phg  ON pcr.phgcodigo = phg.phgcodigo ' +
        ' INNER JOIN v_rfi ON  pcr.titcodigo = v_rfi.titcodigo and srfcodigo <> 9  INNER JOIN mfi ON  mfi.rfichave = v_rfi.rfichave and mfi.tmfcodigo = 11 ' +
        '   where  mfidata BETWEEN :primeirodia AND :ultimodia  AND pcr.pcgcodigo = :pcgcodigo'; }

      consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
      consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
      consulta.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlValorRealizado := consulta.FieldByName('rmgtotal').AsCurrency
      end
      else
        vlValorRealizado := 0;

      vlValorContaCorrente := 0;

      consulta.Close;
      consulta.SQL.Text :=
        'SELECT SUM(ccovalor) ccovalor FROM cco,cta WHERE cco.ctacodigo=cta.ctacodigo AND ccovencimento BETWEEN :primeirodia AND :ultimodia and cta.pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
      consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
      consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
      consulta.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      consulta.Open;

      if not consulta.IsEmpty then
        vlValorContaCorrente := consulta.FieldByName('ccovalor').AsCurrency
      else
        vlValorContaCorrente := 0;




      // se não houver o registro cria. Salva com o valor apurado

      if ogedog.IsEmpty then
      begin
        ogedog.Append;
        ogedogogechave.AsInteger := uqtabelaogechave.AsInteger;
        ogedogpcgcodigo.AsInteger := pcgpcgcodigo.AsInteger;
        ogedogdogprevisao.AsFloat := vlValorPrevisto;
        ogedogdogmes.AsInteger := vlMeses;
        ogedogdogano.AsInteger := uqtabelaogeano.AsInteger;

        ogedogdogrealizado.AsFloat := vlValorRealizado;
        ogedogdogpercotimista.AsFloat := 0;
        ogedogdogperpessimista.AsFloat := 0;
        ogedogdogsituacao.AsInteger := 1;
        ogedogclbcodigo.AsInteger := acesso.Usuario;
        ogedogdogregistro.AsString := agora(application, ZCone);

        ogedog.Post;
      end
      else
      begin
        ogedog.Edit;
        ogedogdogprevisao.AsFloat := vlValorPrevisto;
        ogedogdogrealizado.AsFloat := vlValorRealizado;

        ogedog.Post;
      end;

      pcg.Next;
    end;

    pcg.First;
    while not pcg.Eof do
    begin

      ogedog.Close;
      ogedog.ParamByName('dogmes').AsInteger := vlMeses;
      ogedog.ParamByName('dogano').AsInteger := uqtabelaogeano.AsInteger;
      ogedog.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      ogedog.Open;

      // primeiro dia de cada mes
      vldia := '01/' + formatfloat('00', vlMeses) + '/' + uqtabelaogeano.AsString;

      consulta.Close;
      consulta.SQL.Text := 'select  year(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ), LAST_DAY(' +
        QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ') ultimodia ' + ' , CAST(DATE_FORMAT(' +
        QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ,' + QuotedStr('%Y-%m-01') + ') as DATE) primeirodia ';
      consulta.Open;
      vPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
      vUltimoDia := consulta.FieldByName('ultimodia').AsString;
      consulta.Close;

      vlValorContaCorrente := 0;

      consulta.Close;
      consulta.SQL.Text :=
        'SELECT SUM(ccovalor) ccovalor FROM cco,hrf WHERE hrf.phgcodigo=cco.phgcodigo  and  ccovencimento BETWEEN :primeirodia AND :ultimodia and hrf.pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
      consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
      consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
      consulta.ParamByName('pcgcodigo').AsInteger := pcgpcgcodigo.AsInteger;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlValorContaCorrente := consulta.FieldByName('ccovalor').AsCurrency;

        // se não houver o registro cria. Salva com o valor apurado

        if ogedog.IsEmpty then
        begin
          ogedog.Append;
          ogedogogechave.AsInteger := uqtabelaogechave.AsInteger;
          ogedogpcgcodigo.AsInteger := pcgpcgcodigo.AsInteger;
          // ogedogdogprevisao.AsFloat := vlValorContaCorrente;
          ogedogdogmes.AsInteger := vlMeses;
          ogedogdogano.AsInteger := uqtabelaogeano.AsInteger;
          ogedogdogrealizado.AsFloat := vlValorContaCorrente;
          ogedogdogpercotimista.AsFloat := 0;
          ogedogdogperpessimista.AsFloat := 0;
          ogedogdogsituacao.AsInteger := 1;
          ogedogclbcodigo.AsInteger := acesso.Usuario;
          ogedogdogregistro.AsString := agora(application, ZCone);
          ogedog.Post;
        end
        else
        begin
          ogedog.Edit;
          // ogedogdogprevisao.AsFloat := vlValorContaCorrente;
          ogedogdogrealizado.AsFloat := ogedogdogrealizado.AsFloat + vlValorContaCorrente;

          ogedog.Post;
        end;

      end;

      pcg.Next;
    end;

  end;

  oge.Close;
  oge.ParamByName('ogeano').AsInteger := uqtabelaogeano.AsInteger;
  oge.Open;

  oge.First;

  consulta.Close;
  consulta.SQL.Text := 'delete from aog where ogechave=' + uqtabelaogechave.AsString;
  consulta.ExecSQL;

  pbMostraApuracao.Position := 0;
  pbMostraApuracao.max := oge.RecordCount;
  application.ProcessMessages;

  while not oge.Eof do
  begin

    pbMostraApuracao.Position := pbMostraApuracao.Position + 1;
    application.ProcessMessages;

    aog.Close;
    aog.ParamByName('ogechave').AsInteger := uqtabelaogechave.AsInteger;
    aog.Open;

    if not aog.Locate('pcgcodigo', ogepcgcodigo.AsInteger, []) then
      aog.Append
    else
      aog.Edit;

    aogogechave.AsInteger := uqtabelaogechave.AsInteger;
    aogpcgcodigo.AsInteger := ogepcgcodigo.AsInteger;
    aogpcgidentificacao.AsString := ogepcgidentificacao.AsString;
    consulta.Close;
    consulta.SQL.Text := 'select pcgidentificacao from pcg where pcgcodigo=' + ogepcgcodigo.AsString;
    consulta.Open;
    aogseacodigo.AsInteger := ogeseacodigo.AsInteger;

    aogpcgtitulo.AsString := ogepcgidentificacao.AsString + ' ' + uppernome(consulta.FieldByName('pcgidentificacao').AsString);
    aogseacodigo.AsInteger := ogeseacodigo.AsInteger;

    for i := 1 to 12 do
    begin
      try

        aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsCurrency := oge.FieldByName('ogeprevisto' + formatfloat('00', i)).AsCurrency;

        aog.FieldByName('aogrealizado' + formatfloat('00', i)).AsCurrency := oge.FieldByName('ogerealizado' + formatfloat('00', i)).AsCurrency;

        if ogecedcodigo.AsInteger = 1 then
          aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsCurrency := aog.FieldByName('aogrealizado' + formatfloat('00', i)).AsCurrency;

        if ogecedcodigo.AsInteger = 1 then
          aog.FieldByName('aogsaldo' + formatfloat('00', i)).AsCurrency := 0
        else
          aog.FieldByName('aogsaldo' + formatfloat('00', i)).AsCurrency := aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsCurrency -
            aog.FieldByName('aogrealizado' + formatfloat('00', i)).AsCurrency;

        // oge.FieldByName('ogesaldo' + formatfloat('00', i)).AsCurrency;
        // aog.FieldByName('aogpercentual' + formatfloat('00', i)).AsFloat := (aog.FieldByName('aogsaldo' + formatfloat('00', i)).AsFloat / aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsFloat) * 100;
      except
        showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));

      end;
    end;

    try
      aog.Post;
    except
      showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));
    end;
    oge.Next;
  end;

  hrf.Open;
  hrf.First;

  aog.Close;
  aog.ParamByName('ogechave').AsInteger := uqtabelaogechave.AsInteger;
  aog.Open;

  dog.Close;
  dog.ParamByName('ogechave').AsInteger := uqtabelaogechave.AsInteger;
  dog.Open;

  for i := 1 to 12 do
  begin
    dog.FilterSQL := 'dogmes=' + IntToStr(i);
    dog.First;
    while not dog.Eof do
    begin

      if hrf.Locate('pcgcodigo', dogpcgcodigo.AsInteger, []) then
      begin

        if dogdogmes.AsInteger = i then
        begin

          if dogdogrealizado.AsCurrency <> 0 then
          begin

            if not aog.Locate('pcgcodigo', dogpcgcodigo.AsInteger, []) then
              aog.Append
            else
              aog.Edit;

            aogogechave.AsInteger := uqtabelaogechave.AsInteger;
            // aogpcgcodigo.AsInteger := dogpcgcodigo.AsInteger;
            // aogpcgidentificacao.AsString := dogpcgidentificacao.AsString;

            consulta.Close;
            consulta.SQL.Text := 'select pcgidentificacao,seacodigo, cedcodigo from pcg where pcgcodigo=' + dogpcgcodigo.AsString;
            consulta.Open;
            // aogseacodigo.AsInteger := consulta.FieldByName('seacodigo').AsInteger;
            // aogpcgtitulo.AsString := dogpcgidentificacao.AsString + ' ' + uppernome(consulta.FieldByName('pcgidentificacao').AsString);

            try

              aog.FieldByName('aogrealizado' + formatfloat('00', i)).AsCurrency := dogdogrealizado.AsCurrency;

              if consulta.FieldByName('cedcodigo').AsInteger = 0 then
                aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsCurrency := dogdogrealizado.AsCurrency;

              if consulta.FieldByName('cedcodigo').AsInteger = 1 then
                aog.FieldByName('aogprevisto' + formatfloat('00', i)).AsCurrency := dogdogrealizado.AsCurrency;

            except
              showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));

            end;
            try
              aog.Post;
            except
              showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));
            end;

          end;
        end;

      end;
      dog.Next;
    end;
  end;

  // janeiro
  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=240, aogrealizado01=240 WHERE pcgcodigo=30 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=4131.49, aogrealizado01=4131.49 WHERE pcgcodigo=148 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=650, aogrealizado01=650 WHERE pcgcodigo=92 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=1349.33, aogrealizado01=1349.33 WHERE pcgcodigo=213 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=66511.71, aogrealizado01=66511.71 WHERE pcgcodigo=212 and ogechave=2';
  consulta.ExecSQL;

  // feveriro
  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto02=450, aogrealizado02=450 WHERE pcgcodigo=92 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto02=0 , aogrealizado02=0 WHERE pcgcodigo=30 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto01=1154.36, aogrealizado01=1154.36 WHERE pcgcodigo=31 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto02=1213.68, aogrealizado02=1213.68 WHERE pcgcodigo=31 and ogechave=2';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE aog set aogprevisto03=1093.36, aogrealizado03=1093.36 WHERE pcgcodigo=31 and ogechave=2';
  consulta.ExecSQL;

  for i := 1 to 12 do
  begin

    consulta.Close;
    consulta.SQL.Text := 'UPDATE aog set aogsaldo' + formatfloat('00', i) + '=0';
    consulta.ExecSQL;

    if (i = 1) or (i = 2) then
    begin

      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogprevisto' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) +
        ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.cedcodigo=0';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogsaldo' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) + '-aogprevisto' +
        formatfloat('00', i) + ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.cedcodigo=0';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogsaldo' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) + '-aogprevisto' +
        formatfloat('00', i) + ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.cedcodigo=0';
      consulta.ExecSQL;

    end
    else if (i = 3) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogprevisto' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) +
        ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.pcgcodigo<>35 and pcg.cedcodigo=0';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogsaldo' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) + '-aogprevisto' +
        formatfloat('00', i) + ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.cedcodigo=0';
      consulta.ExecSQL;

    end;
    begin

      consulta.Close;
      consulta.SQL.Text := 'UPDATE aog,pcg set aogsaldo' + formatfloat('00', i) + '=' + 'aogrealizado' + formatfloat('00', i) + '-aogprevisto' +
        formatfloat('00', i) + ' WHERE aog.pcgcodigo=pcg.pcgcodigo and pcg.cedcodigo=0';
      consulta.ExecSQL;

    end;
  end;

  aog.Refresh;

  // finally
  if oge.Active then
    oge.First;
  if aog.Active then
    aog.First;

  m := 0;
  for m := 1 to 12 do
  begin

    aog.Last;
    vlNivel1 := 0;
    vlNivel2 := 0;
    vlNivel3 := 0;
    vlNivel4 := 0;
    vlNivel5 := 0;
    vlNivel6 := 0;
    vlNivel7 := 0;
    vlNivel8 := 0;
    vlNivel9 := 0;

    vlNivelPrevisto1 := 0;
    vlNivelPrevisto2 := 0;
    vlNivelPrevisto3 := 0;
    vlNivelPrevisto4 := 0;
    vlNivelPrevisto5 := 0;
    vlNivelPrevisto6 := 0;
    vlNivelPrevisto7 := 0;
    vlNivelPrevisto8 := 0;
    vlNivelPrevisto9 := 0;

    vlNivelSaldo1 := 0;
    vlNivelSaldo2 := 0;
    vlNivelSaldo3 := 0;
    vlNivelSaldo4 := 0;
    vlNivelSaldo5 := 0;
    vlNivelSaldo6 := 0;
    vlNivelSaldo7 := 0;
    vlNivelSaldo8 := 0;
    vlNivelSaldo9 := 0;

    vlValorConta := 0;
    vlValorPrevisto := 0;
    vlValorSaldo := 0;

    vlclasse := '';
    vlContaTitulo := '';

    vlContaTitulo := aogpcgestrutural.AsString;
    vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
    vlclasse := aogpcgestrutural.AsString;

    n := 1;

    vlNaturezaAtual := aog.FieldByName('cedcodigo').AsInteger;
    while not aog.Bof do
    begin
      if vlNaturezaAtual <> aog.FieldByName('cedcodigo').AsInteger then
      begin
        vlNivel1 := 0;
        vlNivel2 := 0;
        vlNivel3 := 0;
        vlNivel4 := 0;
        vlNivel5 := 0;
        vlNivel6 := 0;
        vlNivel7 := 0;
        vlNivel8 := 0;
        vlNivel9 := 0;

        vlNivelPrevisto1 := 0;
        vlNivelPrevisto2 := 0;
        vlNivelPrevisto3 := 0;
        vlNivelPrevisto4 := 0;
        vlNivelPrevisto5 := 0;
        vlNivelPrevisto6 := 0;
        vlNivelPrevisto7 := 0;
        vlNivelPrevisto8 := 0;
        vlNivelPrevisto9 := 0;

        vlNivelSaldo1 := 0;
        vlNivelSaldo2 := 0;
        vlNivelSaldo3 := 0;
        vlNivelSaldo4 := 0;
        vlNivelSaldo5 := 0;
        vlNivelSaldo6 := 0;
        vlNivelSaldo7 := 0;
        vlNivelSaldo8 := 0;
        vlNivelSaldo9 := 0;

        vlValorConta := 0;
        vlValorPrevisto := 0;
        vlValorSaldo := 0;

        vlNaturezaAtual := aog.FieldByName('cedcodigo').AsInteger;
      end;

      if (aogpcgestrutural.AsString = vlContaTitulo) then
      begin
        aog.Edit;
        aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlValorConta;
        aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlValorPrevisto;
        aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlValorSaldo;
        aog.Post;

        if length(vlclasse) > length(vlContaTitulo) then
        begin
          n := n + 1;
        end
        else
        begin
          if copy(vlContaTitulo, 1, length(vlclasse) - 1) <> vlclasse then
            n := 1;

          vlclasse := vlContaTitulo;
        end;

        case n of
          1:
            begin
              if aog.FieldByName('cedcodigo').AsInteger = 1 then
              begin
                vlNivel1 := vlNivel1 + vlValorConta;
                vlNivelPrevisto1 := vlNivelPrevisto1 + vlValorPrevisto;
                vlNivelSaldo1 := vlNivelSaldo1 + vlValorSaldo;
              end
              else
              begin
                vlNivel1 := vlNivel1 - vlValorConta;
                vlNivelPrevisto1 := vlNivelPrevisto1 - vlValorPrevisto;
                vlNivelSaldo1 := vlNivelSaldo1 - vlValorSaldo;
              end;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlValorConta;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlValorPrevisto;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlValorSaldo;
              aog.Post;

              vlValorConta := 0;
              vlValorPrevisto := 0;
              vlValorSaldo := 0;

              vlclasse := vlContaTitulo;
            end;
          2:
            begin
              if aog.FieldByName('cedcodigo').AsInteger = 1 then
              begin
                vlNivel2 := vlNivel2 + vlNivel1;
                vlNivelPrevisto2 := vlNivelPrevisto2 + vlNivelPrevisto1;
                vlNivelSaldo2 := vlNivelSaldo2 + vlNivelSaldo1;
              end
              else
              begin
                vlNivel2 := vlNivel2 - vlNivel1;
                vlNivelPrevisto2 := vlNivelPrevisto2 - vlNivelPrevisto1;
                vlNivelSaldo2 := vlNivelSaldo2 - vlNivelSaldo1;
              end;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel2;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto2;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo2;
              aog.Post;
              vlNivel1 := 0;
              vlNivelPrevisto1 := 0;
              vlclasse := vlContaTitulo;
            end;
          3:
            begin
              if aog.FieldByName('cedcodigo').AsInteger = 1 then
              begin
                vlNivel3 := vlNivel3 + vlNivel2;
                vlNivelPrevisto3 := vlNivelPrevisto3 + vlNivelPrevisto2;
                vlNivelSaldo3 := vlNivelSaldo3 + vlNivelSaldo2;
              end
              else
              begin
                vlNivel3 := vlNivel3 - vlNivel2;
                vlNivelPrevisto3 := vlNivelPrevisto3 - vlNivelPrevisto2;
                vlNivelSaldo3 := vlNivelSaldo3 - vlNivelSaldo2;

              end;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel3;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto3;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo3;
              aog.Post;
              vlNivel2 := 0;
              vlNivelPrevisto2 := 0;
              vlclasse := vlContaTitulo;

            end;
          4:
            begin
              vlNivel4 := vlNivel4 + vlNivel3;
              vlNivelPrevisto4 := vlNivelPrevisto4 + vlNivelPrevisto3;
              vlNivelSaldo4 := vlNivelSaldo4 + vlNivelSaldo3;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel4;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto4;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo4;
              aog.Post;
              vlNivel3 := 0;
              vlNivelPrevisto3 := 0;
              vlclasse := vlContaTitulo;
            end;
          5:
            begin
              vlNivel5 := vlNivel5 + vlNivel4;
              vlNivelPrevisto5 := vlNivelPrevisto5 + vlNivelPrevisto4;
              vlNivelSaldo5 := vlNivelSaldo5 + vlNivelSaldo4;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel5;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto5;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo5;
              aog.Post;
              vlNivel4 := 0;
              vlNivelPrevisto4 := 0;
              vlclasse := vlContaTitulo;
            end;
          6:
            begin
              vlNivel6 := vlNivel6 + vlNivel5;
              vlNivelPrevisto6 := vlNivelPrevisto6 + vlNivelPrevisto5;
              vlNivelSaldo6 := vlNivelSaldo6 + vlNivelSaldo5;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel6;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto6;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo6;
              aog.Post;
              vlNivel5 := 0;
              vlNivelPrevisto5 := 0;
              vlclasse := vlContaTitulo;
            end;
          7:
            begin
              vlNivel7 := vlNivel7 + vlNivel6;
              vlNivelPrevisto7 := vlNivelPrevisto7 + vlNivelPrevisto6;
              vlNivelSaldo7 := vlNivelSaldo7 + vlNivelSaldo6;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel7;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto7;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo7;
              vlNivel6 := 0;
              vlNivelPrevisto6 := 0;
              vlclasse := vlContaTitulo;
            end;
          8:
            begin
              vlNivel8 := vlNivel8 + vlNivel7;
              vlNivelPrevisto8 := vlNivelPrevisto8 + vlNivelPrevisto7;
              vlNivelSaldo8 := vlNivelSaldo8 + vlNivelSaldo7;

              aog.Edit;
              aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency := vlNivel8;
              aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto8;
              aog.FieldByName('aogsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo8;
              aog.Post;
              vlNivel7 := 0;
              vlNivelPrevisto7 := 0;
              vlclasse := vlContaTitulo;
            end;

        end;

      end
      else
      begin
        if aog.FieldByName('cedcodigo').AsInteger = 1 then
        begin
          vlValorConta := vlValorConta + aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency;
          vlValorPrevisto := vlValorPrevisto + aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency;
          vlValorSaldo := 0;
        end
        else
        begin
          vlValorConta := vlValorConta - aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency;
          vlValorPrevisto := vlValorPrevisto - aog.FieldByName('aogprevisto' + formatfloat('00', m)).AsCurrency;
          vlValorSaldo := 0;
        end;

      end;

      vlContaTitulo := aogpcgestrutural.AsString;
      if pos('.', aogpcgestrutural.AsString) > 0 then
      begin
        vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
      end;

      aog.Prior;
    end;
    aog.Last;

  end;

  vlContaTitulo := aogpcgestrutural.AsString;
  vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
  if pos('.', vlContaTitulo) > 0 then
    vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);

  // finally
  if oge.Active then
    oge.First;

  if aog.Active then
    aog.First;

  oge.EnableControls;
  aog.EnableControls;
  pbMostraApuracao.Position := 0;
  plRealizaApuracao.Visible := FALSE;

  while not aog.Eof do
  begin
    for m := 1 to 12 do
    begin
      if aogseacodigo.AsInteger = 0 then
      begin
        vlContaTitulo := aogpcgidentificacao.AsString;

        if pos('.', vlContaTitulo) > 0 then
          vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);

        vlPercentual := 0;
        vlTotalGrupo := 0;
        analisevertical.Close;
        analisevertical.SQL.Text := ' select SUM(aogrealizado' + formatfloat('00', m) + ') dogtotal FROM aog ';
        analisevertical.SQL.Add('WHERE pcgidentificacao like (' + QuotedStr(vlContaTitulo + '%') + ' ) and LENGTH(pcgidentificacao)=' +
          IntToStr(length(vlContaTitulo)) + ' AND pcgcodigo<>' + aogpcgcodigo.AsString + ' and seacodigo=0 ');
        analisevertical.Open;

        vlTotalGrupo := analisevertical.FieldByName('dogtotal').AsCurrency;

        if vlTotalGrupo < 0 then
          vlTotalGrupo := vlTotalGrupo * -1;

        if aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsString <> '' then
        begin
          vlTotalApurado := aog.FieldByName('aogrealizado' + formatfloat('00', m)).AsCurrency;

          if vlTotalApurado < 0 then
            vlTotalApurado := vlTotalApurado * -1;

        end
        else
        begin
          vlTotalApurado := 0;
        end;

        if (vlTotalGrupo <> 0) and (vlTotalApurado <> 0) then
        begin
          vlPercentual := (vlTotalApurado / vlTotalGrupo) * 100;

          vlSPercentual := Floattostr(vlPercentual);
          try
            consulta.Close;
            consulta.SQL.Text := 'update aog set aogpercentual' + formatfloat('00', m) + '=' + buscatroca(vlSPercentual, ',', '.') +
              ' where pcgcodigo=' + aogpcgcodigo.AsString;
            consulta.ExecSQL;

          except
          end;
        end;

      end;
    end;
    aog.Next;
  end;

  if aog.Active then
    aog.First;

  // end;

end;

procedure Tfraoge.DaogDataChange(Sender: TObject; Field: TField);
var
  vlMes: string;
begin
  inherited;
  if Field = nil then
    exit;

  if pos('01', Field.FieldName) > 0 then
    vlMes := '01'
  else if pos('02', Field.FieldName) > 0 then
    vlMes := '02'
  else if pos('03', Field.FieldName) > 0 then
    vlMes := '03'
  else if pos('04', Field.FieldName) > 0 then
    vlMes := '04'
  else if pos('05', Field.FieldName) > 0 then
    vlMes := '05'
  else if pos('06', Field.FieldName) > 0 then
    vlMes := '06'
  else if pos('07', Field.FieldName) > 0 then
    vlMes := '07'
  else if pos('08', Field.FieldName) > 0 then
    vlMes := '08'
  else if pos('09', Field.FieldName) > 0 then
    vlMes := '09'
  else if pos('10', Field.FieldName) > 0 then
    vlMes := '10'
  else if pos('11', Field.FieldName) > 0 then
    vlMes := '11'
  else if pos('12', Field.FieldName) > 0 then
    vlMes := '12';

  rmg.Close;
  rmg.ParamByName('pcgcodigo').AsInteger := aogpcgcodigo.AsInteger;
  rmg.ParamByName('dataincial').AsDate := strtodate('01/' + vlMes + '/' + uqtabelaogeano.AsString);
  rmg.ParamByName('datafinal').AsDate := strtodate(formatfloat('00', UltimoDiaMes(rmg.ParamByName('dataincial').AsDate)) + '/' + vlMes + '/' +
    uqtabelaogeano.AsString);
  rmg.Open;

end;

procedure Tfraoge.DBGridApuracaoCellClick(Column: TColumn);
begin
  inherited;
  AjustaRegistrosContabeis;
end;

procedure Tfraoge.DBGridApuracaoColEnter(Sender: TObject);
begin
  inherited;
  AjustaRegistrosContabeis;
  DBGridApuracao.Repaint;
end;

procedure Tfraoge.AjustaTitulos(Column: TColumn; const Rect: TRect);
var
  i: Integer;
  m: Integer;
  S1: string;
  S2: string;
begin

  with TFriendly(DBGridApuracao) do
  begin
    // if there is any other code to run in this
    // event it should come before this point
    // DefaultRowHeight := 18;
    RowHeights[0] := 32;
    // assumes 1 fixed row i.e. Title row
    Canvas.Font.Name := 'Tahoma';
    Canvas.Brush.Color := $D6D6D6;
    // Title.Caption has to be cleared at runtime.
    // If it is cleared in the columns editor the grid
    // defaults to using the fieldname as caption.
    i := 0;
    for m := 0 to 12 do
    begin
      if m = 12 then
      begin
        if Column.Index = (i + m) then
        begin
          S1 := '|                    ' + 'SALDO A PAGAR NO ANO ' + '/' + uqtabelaogeano.AsString +
            '                                                            ';
          S2 := '                          ';
        end;
        if Column.Index = (i + m + 1) then
        begin
          S1 := '';
          S2 := '                    ';
        end;
        if Column.Index = (i + m + 2) then
        begin
          S1 := '    Saldo  do ano     ';
          S2 := '                   ';
        end;
        if Column.Index = (i + m + 3) then
        begin
          S1 := '';
          S2 := '               ';
        end;
      end
      else
      begin
        if Column.Index = (i + m) then
        begin
          S1 := '|                    ' + ExtensoMes(m + 1) + '/' + uqtabelaogeano.AsString +
            '                                                            ';
          S2 := '|  Valor Devido               ';
        end;
        if Column.Index = (i + m + 1) then
        begin
          S1 := '';
          S2 := '   Valor Pago                 ';
        end;
        if Column.Index = (i + m + 2) then
        begin
          S1 := '';
          S2 := '   Saldo                    ';
        end;
        if Column.Index = (i + m + 3) then
        begin
          S1 := '';
          S2 := '  % Var.             ';
        end;
      end;
      i := i + 3;
    end;
    // S1 and S2 initialise to empty strings so if there
    // are more columns but they do not require custom
    // text then nothing (i.e. '' ) is written in the title area.
    // DoMyDrawing(Canvas, Rect.Left , 0, Column.Width, 32, clYellow);
    Canvas.Brush.Style := bsSolid;
    Canvas.Pen.Style := psSolid;
    Canvas.Font.Style := [fsbold];
    Canvas.Font.Size := 10;
    Canvas.TextOut(Rect.Left + 1, 0, S1);
    Canvas.Font.Size := 8;
    Canvas.Font.Style := [fsbold];
    Canvas.TextOut(Rect.Left + 1, 17, S2);

  end;

end;

procedure Tfraoge.AjustaRegistrosContabeis;
var
  vlNomeColuna: string;
  vlMes: string;
  vldia: string;
  vlPrimeiroDia: string;
  vlUltimoDia: string;
begin
  vlNomeColuna := DBGridApuracao.Columns[DBGridApuracao.SelectedIndex].FieldName;

  vlMes := '';
  if pos('01', vlNomeColuna) > 0 then
    vlMes := '01'
  else if pos('02', vlNomeColuna) > 0 then
    vlMes := '02'
  else if pos('03', vlNomeColuna) > 0 then
    vlMes := '03'
  else if pos('04', vlNomeColuna) > 0 then
    vlMes := '04'
  else if pos('05', vlNomeColuna) > 0 then
    vlMes := '05'
  else if pos('06', vlNomeColuna) > 0 then
    vlMes := '06'
  else if pos('07', vlNomeColuna) > 0 then
    vlMes := '07'
  else if pos('08', vlNomeColuna) > 0 then
    vlMes := '08'
  else if pos('09', vlNomeColuna) > 0 then
    vlMes := '09'
  else if pos('10', vlNomeColuna) > 0 then
    vlMes := '10'
  else if pos('11', vlNomeColuna) > 0 then
    vlMes := '11'
  else if pos('12', vlNomeColuna) > 0 then
    vlMes := '12';

  if vlMes = '' then
    exit;

  vldia := '01/' + vlMes + '/' + uqtabelaogeano.AsString;
  consulta.Close;
  consulta.SQL.Text := 'select  year(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ), LAST_DAY(' +
    QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ') ultimodia ' + ' , CAST(DATE_FORMAT(' +
    QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ,' + QuotedStr('%Y-%m-01') + ') as DATE) primeirodia ';
  consulta.Open;
  vlPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
  vlUltimoDia := consulta.FieldByName('ultimodia').AsString;

  consulta.Close;
  rmg.Close;
  rmg.ParamByName('pcgcodigo').AsInteger := aogpcgcodigo.AsInteger;
  rmg.ParamByName('datainicial').AsDate := strtodate(vlPrimeiroDia);
  rmg.ParamByName('datafinal').AsDate := strtodate(vlUltimoDia);
  rmg.Open;

  pcr.Close;
  pcr.ParamByName('pcgcodigo').AsInteger := aogpcgcodigo.AsInteger;
  pcr.ParamByName('datainicial').AsDate := strtodate(vlPrimeiroDia);
  pcr.ParamByName('datafinal').AsDate := strtodate(vlUltimoDia);
  pcr.Open;

  pcrr.Close;
  pcrr.ParamByName('pcgcodigo').AsInteger := aogpcgcodigo.AsInteger;
  pcrr.ParamByName('datainicial').AsDate := strtodate(vlPrimeiroDia);
  pcrr.ParamByName('datafinal').AsDate := strtodate(vlUltimoDia);
  pcrr.Open;

end;

procedure Tfraoge.DBGridApuracaoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  Style: Integer;
  i: Integer;
begin

  // AjustaTitulos(Column, Rect);

  fixRect := Rect;

  If odd(Daog.DataSet.RecNo) Then
  begin

    DBGridApuracao.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGridApuracao.Canvas.Brush.Color := clWhite;
  end;

  if self.aogseacodigo.AsString = '0' then
  begin
    DBGridApuracao.Canvas.Font.Style := [fsbold];
    DBGridApuracao.Canvas.Font.Color := clWhite;

    if aogcedcodigo.AsInteger = 1 then
      DBGridApuracao.Canvas.Brush.Color := clNavy
    else
      DBGridApuracao.Canvas.Brush.Color := ClRed;

  end
  else
  begin

    DBGridApuracao.Canvas.Font.Style := [];
    DBGridApuracao.Canvas.Font.Color := clBlack;
    DBGridApuracao.Canvas.Brush.Color := clWhite;

    for i := 1 to 12 do
    begin
      if Column.FieldName = 'aogsaldo' + formatfloat('00', i) then
      begin
        if aog.FieldByName('aogsaldo' + formatfloat('00', i)).AsFloat > 0 then
        begin
          DBGridApuracao.Canvas.Brush.Color := clYellow;
        end
        else if aog.FieldByName('aogsaldo' + formatfloat('00', i)).AsFloat < 0 then
        begin

          DBGridApuracao.Canvas.Brush.Color := clsilver;
        end
        else
        begin

          DBGridApuracao.Canvas.Brush.Color := clWhite;
        end;
      end;
    end;

  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridApuracao) do
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
      Font.Color := clWhite;
    End;

  with TFriendly(DBGridApuracao) do
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
  // ShowScrollBar(DBGridApuracao.handle, SB_HORZ, false); // Remove barra Vertical

end;

procedure Tfraoge.DBGridApuracaoMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  DBGridApuracao.Repaint;
end;

procedure Tfraoge.DBGridDogDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfraoge.DBGridRmgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfraoge.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if uqtabela.Active then
  begin
    if uqtabelaogechave.AsString <> '' then
    begin
      { dog.Close;
        dog.ParamByName('ogechave').AsString := uqtabelaogechave.AsString;
        dog.Open; }

      { oge.Close;
        oge.ParamByName('ogeano').AsInteger := uqtabelaogeano.AsInteger;
        oge.Open; }

      aog.Close;
      aog.ParamByName('ogechave').AsInteger := uqtabelaogechave.AsInteger;
      aog.Open;

    end;
  end;
end;

end.
