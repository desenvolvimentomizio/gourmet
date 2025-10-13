unit ufracpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, Vcl.Graphics, Vcl.DbCtrls,
  System.SysUtils, uFuncoes, uPegaBase, Vcl.WinXCtrls, Vcl.Clipbrd, Vcl.Mask,
  System.ImageList, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfracpr = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesregistro: TDateField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    itm: tuniquery;
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
    itmitmcusto: TFloatField;
    Ditm: tunidatasource;
    PlResumoItens: TPanel;
    listaitm: TDBGrid;
    Dcfg: tunidatasource;
    cfg: tuniquery;
    etd: tuniquery;
    ete: tuniquery;
    dtm: tuniquery;
    dtmdtmchave: TIntegerField;
    dtmdtmplaca: TStringField;
    dtmdtmvolumes: TFloatField;
    dtmdtmpesobruto: TFloatField;
    dtmdtmpesoliq: TFloatField;
    dtmmeschave: TIntegerField;
    dtmetdcodigo: TIntegerField;
    dtmufscodigo: TStringField;
    dtmedrrua: TStringField;
    dtmcddnome: TStringField;
    dtmufssigla: TStringField;
    dtmetddoc1: TStringField;
    dtmetdidentificacao: TStringField;
    dtmdtmespecie: TStringField;
    dtmdtmmarcas: TStringField;
    dtmedrinscest: TStringField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemidentificacao: TStringField;
    eteeteemail: TStringField;
    eteetecodigo: TIntegerField;
    uqtabelatdfcodigo: TStringField;
    tto: tuniquery;
    ttottocodigo: TIntegerField;
    ttottoidentificacao: TStringField;
    uqtabelattocodigo: TIntegerField;
    itmtoecodigo: TIntegerField;
    itmcfocfopdestinacao: TStringField;
    uqTotais: tuniquery;
    uqTotaismesvalor: TFloatField;
    uqTotaismesdeconto: TFloatField;
    uqTotaismestotal: TFloatField;
    uqTotaismestotalcancelado: TFloatField;
    uqTotaismestotalnf: TFloatField;
    uqItmTotais: tuniquery;
    uqItmTotaismeschave: TIntegerField;
    uqItmTotaisitmitens: TIntegerField;
    uqItmTotaisitmtotal: TFloatField;
    uqItmTotaisitmdesconto: TFloatField;
    uqItmTotaisitmtotalliq: TFloatField;
    plQtdItens: TPanel;
    plBrutoItens: TPanel;
    plDescontoItens: TPanel;
    plLiquidoItens: TPanel;
    ActTransferencia: TAction;
    mesdtf: tuniquery;
    itmdtf: tuniquery;
    mesfla: tuniquery;
    itmfla: tuniquery;
    dtf: tuniquery;
    cfgetdcodigo: TIntegerField;
    cfgcfgtoetransentflainte: TIntegerField;
    cfgcfgtoetransentflafora: TIntegerField;
    cfgcfgusafla: TIntegerField;
    uqtabelamesreclassicacao: TIntegerField;
    ActVerificarCFOP: TAction;
    ActChaveXML: TAction;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    mUtilitarios: TMenuItem;
    mAjustarCFOpItens: TMenuItem;
    uqtabelatoecodigo: TIntegerField;
    itmitmipi: TFloatField;
    ActGerarEtiquetas: TAction;
    eti: tuniquery;
    etietichave: TIntegerField;
    eticlbcodigo: TIntegerField;
    etitrmcodigo: TIntegerField;
    etipuncodigo: TIntegerField;
    etieetcodigo: TIntegerField;
    etietiquanti: TIntegerField;
    etietiemissao: TDateTimeField;
    etivrpcodigo: TIntegerField;
    etirelcodigo: TStringField;
    itmpuncodigo: TIntegerField;
    imv: tuniquery;
    imvimvchave: TIntegerField;
    imvvrpcodigo: TIntegerField;
    imvimvquantidade: TFloatField;
    cfgetirelcodigo: TStringField;
    imvitmchave: TIntegerField;
    mnAjustarRegimeTributario: TMenuItem;
    pro: tuniquery;
    procstcodigo: TStringField;
    uqtabelatoecfopsaida: TStringField;
    proprocodigo: TIntegerField;
    pltotais: TPanel;
    PltotalBruto: TPanel;
    PlValortotalBruto: TPanel;
    Pltotaldescontos: TPanel;
    PlTotalCancelado: TPanel;
    tom: tuniquery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    tomtofidentificacao: TStringField;
    Dtom: tunidatasource;
    DBGridTom: TDBGrid;
    Plvalortotalliquido: TPanel;
    uqtabelamesfrete: TFloatField;
    uqtabelamesipi: TFloatField;
    itmitmcontendo: TFloatField;
    itmitmvaloritem: TFloatField;
    itmitmquantidadeitens: TFloatField;
    ActGerarMDFe: TAction;
    uqtabelameschavenfe: TStringField;
    mae: tuniquery;
    maemaechave: TIntegerField;
    ActImprimirMDFe: TAction;
    uqtabelamesicms: TCurrencyField;
    itmitmicms: TCurrencyField;
    ActPrecificacao: TAction;
    cfgmetcodigo: TIntegerField;
    mit: tuniquery;
    mitmitcodigo: TIntegerField;
    mitmitidentificacao: TStringField;
    etimitcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    ActRegistraCPA: TAction;
    ajustacusto: TUniQuery;
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActImportarNFEExecute(Sender: TObject);
    procedure cfgcpriniEnter(Sender: TObject);
    procedure cfgcprfinEnter(Sender: TObject);
    procedure cfgcpriniExit(Sender: TObject);
    procedure cfgcprfinExit(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure uqItmTotaisAfterOpen(DataSet: TDataSet);
    procedure uqItmTotaisAfterRefresh(DataSet: TDataSet);
    procedure ActTransferenciaExecute(Sender: TObject);
    procedure ActVerificarCFOPExecute(Sender: TObject);
    procedure ActChaveXMLExecute(Sender: TObject);
    procedure bConfirmaSelecaoClick(Sender: TObject);
    procedure mAjustarCFOpItensClick(Sender: TObject);
    procedure ActGerarEtiquetasExecute(Sender: TObject);
    procedure mnAjustarRegimeTributarioClick(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActGerarMDFeExecute(Sender: TObject);
    procedure ActImprimirMDFeExecute(Sender: TObject);
    procedure ActPrecificacaoExecute(Sender: TObject);
    procedure ActRegistraCPAExecute(Sender: TObject);
  private
    vatualizando: Boolean;
    FSQLBaseTotais: String;
    function validaentidade(vetdcodigo: String): Boolean;
    function validatransporte(vmeschave: String): Boolean;
    procedure AtualizaTotais;
    procedure AtualizaTotaisItens;
    procedure AtualizarDetalhe;
    procedure modulomdfe(Rotina, chave: String);
    procedure CalcularSaldo(vProcodigo: String);
    { Private declarations }

  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  public
    { Public declarations }
    vpitmprocodigo: string;
    procedure Carregar; override;

  end;

  tmodnfe = procedure(AOwner: TComponent; conexao: tuniconnection; varq: string; vchave: string; vmodulo: string);
  TImpCFOPNfe = function(AOwner: TComponent; conexao: tuniconnection; vchave: string): string;

var
  fracpr: Tfracpr;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '02.04.08.001-01';
  vPlTitMdl = 'Compras';

  // Fim ID do Módulo fracpr

implementation

{$R *.dfm}

uses midaslib, ufcpr, ufcprsimples, ufmdfcpr, ufprecificacao, System.DateUtils;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracpr := Tfracpr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracpr := Tfracpr.Create(pCargaFrame);
  try
    fracpr.CriaAcoesDeAcesso;
  finally
    fracpr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure DoUnLoadPackage(Module: HModule);
var
  i: Integer;
  M: TMemoryBasicInformation;
begin
  for i := Application.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(Application.Components[i].ClassName), M, SizeOf(M));
    if (Module = 0) or (HModule(M.AllocationBase) = Module) then
      Application.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);

  UnRegisterClass(TDBMemo);
  UnRegisterClass(TCustomDBGrid);

  UnLoadPackage(Module);
end;

procedure Tfracpr.Carregar;
begin
  PlTitulo.Color := PEG_COR_TITULO;
  PltotalBruto.Color := PEG_COR_TOTAIS;
  Pltotaldescontos.Color := PEG_COR_TOTAIS;
  PlTotalCancelado.Color := PEG_COR_TOTAIS;
  Plvalortotalliquido.Color := PEG_COR_TOTAIS;
  plQtdItens.Color := PEG_COR_TOTAIS;
  PltotalBruto.Color := PEG_COR_TOTAIS;

  plBrutoItens.Color := PEG_COR_TOTAIS;
  plDescontoItens.Color := PEG_COR_TOTAIS;
  plLiquidoItens.Color := PEG_COR_TOTAIS;

  cfg.Connection := ZCone;
  cfg.Close;
  cfg.Params[0].AsInteger := acesso.Filial;
  cfg.Open;

  consulta.Close;
  consulta.SQL.Text := 'select count(flacodigo) from fla';
  consulta.Open;

  if consulta.Fields[0].AsInteger > 1 then
    self.ActTransferencia.Enabled := True
  else
    self.ActTransferencia.Enabled := False;

  consulta.Close;

  if FormaFrame = ffFormu then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;

  end;

  inherited;


  CarregarColunas(listaitm);



end;

procedure Tfracpr.ActAlterarExecute(Sender: TObject);
begin
  if (uqtabelatdfcodigo.AsString = tdfNotaFiscalEletronica) or (uqtabelatdfcodigo.AsString = tdfPedido) or
    (uqtabelatdfcodigo.AsString = tdfMovimentoEmAndamento) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT spddatainicial, spddatafinal FROM spd WHERE spdativo = 1';
    consulta.Open;

    if (self.uqtabelamesregistro.AsFloat >= consulta.Fields[0].AsFloat) and (self.uqtabelamesregistro.AsFloat <= consulta.Fields[1].AsFloat) then
    begin
      if (uqtabelatemcodigo.AsInteger <> temNFEEmitida) and (uqtabelatemcodigo.AsInteger <> temExcluida) and
        (uqtabelatemcodigo.AsInteger <> temEmDigitacaoo) then
      begin
       if  CriaFormulario(tfcprsimples, self.uqtabelameschave.AsString, '') then
       begin
        AtualizarDetalhe;

             itm.first;
    while not itm.eof do
    begin
      CalcularSaldo(itmprocodigo.asstring);
      itm.next;
    end;
    itm.first;

       end;
      end
      else
      begin
        ShowMessage('Atenção: Registros no estágio NFE Emitida, Em Digitação ou Excluída não pode ser alterado !');
      end
    end
    else
    begin
      consulta.Close;
      ShowMessage('Atenção: Lançamento fora do período Ativo!');
      exit;
    end;

  end
  else
  begin
    ShowMessage('Atenção: Não pode ser alterada !');

  end;

end;

procedure Tfracpr.ActAtualizarExecute(Sender: TObject);
begin

  inherited;

  AtualizaTotais;

  if not itm.Active then
    itm.Open;

  if not uqItmTotais.Active then
    uqItmTotais.Open;
end;

procedure Tfracpr.ActChaveXMLExecute(Sender: TObject);
var
  s: string;
  M: TClipboard;
  xndoc1: String;
  xnnfe: String;
  vData: Tdate;
  vnrser: Integer;
  vnrnfe: Integer;
begin
  inherited;

  try

    consulta.Close;
    consulta.SQL.Text := 'select meschavenfe from mes where meschave=' + uqtabelameschave.AsString;
    consulta.Open;

    xnnfe := SomenteNumeros(consulta.Fields[0].AsString);

    s := xnnfe;
    M := TClipboard.Create;
    M.SetTextBuf(PChar(s));
    ShowMessage('A Chave de Acesso da NFe nr.: ' + self.uqtabelamesnumero.AsString + ' está disponível na memória.' + #13 + #13 + s + #13 + #13 +
      'Para utilizar basta, posicionar o cursor e clicar Ctrl+V no local desejado.');

  finally
    FreeAndNil(M);
  end;

  { TRY
    consulta.Close;
    consulta.SQL.Text := 'select etddoc1, cddcodigo from etd, edr where etd.etdcodigo=edr.etdcodigo and edr.tedcodigo=1 and etd.etdcodigo=' +
    uqtabelaetdcodigo.AsString;
    consulta.Open;

    xndoc1 := SomenteNumeros(consulta.Fields[0].AsString);
    vData := uqtabelamesemissao.AsDateTime;
    if uqtabelamesserie.AsString <> '' then
    vnrser := uqtabelamesserie.AsInteger
    else
    vnrser := 1;

    vnrnfe := uqtabelamesnumero.AsInteger;

    xnnfe := Copy(consulta.Fields[1].AsString, 1, 2);
    xnnfe := xnnfe + formatdatetime('yymm', vData);
    xnnfe := xnnfe + xndoc1;
    xnnfe := xnnfe + '55';
    xnnfe := xnnfe + FormatFloat('000', vnrser);
    xnnfe := xnnfe + FormatFloat('000000000', vnrnfe);
    xnnfe := xnnfe + '1';
    xnnfe := xnnfe + FormatFloat('00000000', vnrnfe);
    xnnfe := xnnfe + Modulo11(Trim(xnnfe));

    try
    s := xnnfe;
    M := TClipboard.Create;
    M.SetTextBuf(PChar(s));
    ShowMessage('A Chave de Acesso da NFe nr.: ' + self.uqtabelamesnumero.AsString + ' está disponível na memória.' + #13 + #13 + s + #13 + #13 +
    'Para utilizar basta, posicionar o cursor e clicar Ctrl+V no local desejado.');

    finally
    FreeAndNil(M);
    end;

    except
    ShowMessage('Falha ao gerar CHAVE da nota!');
    END;

  }

end;

function MapeiaSubDiretorio(vArquivo: String; vCaminho: String): String;
var
  Search: TSearchRec;
  Retorno, i: Integer;
  Achou: String;
begin
  Achou := '';
  Retorno := FindFirst(vCaminho + '*.*', faDirectory, Search);

  repeat
    if Search.Name = vArquivo then
    begin
      Achou := vCaminho + Search.Name;
      Result := Achou;
      break;
    end
    else if (Search.Name[1] <> '.') and ((Search.Attr and faDirectory) = faDirectory) then
      Achou := MapeiaSubDiretorio(vArquivo, vCaminho + Search.Name + '\');

    Retorno := FindNext(Search)
  until (Retorno <> 0) or (Achou <> '');

  Result := Achou;
end;

function MapeiaDiretorio(vArquivo: String; vCaminho: String): string;
var
  Search: TSearchRec;
  Retorno, i: Integer;
  Achou: String;
begin
  Achou := '';
  Retorno := FindFirst(vCaminho + '*.*', faDirectory, Search);

  repeat
    if Search.Name = vArquivo then
    begin
      Achou := Search.Name;

    end
    else if (Search.Name[1] <> '.') and ((Search.Attr and faDirectory) = faDirectory) then
      Achou := MapeiaSubDiretorio(vArquivo, vCaminho + Search.Name + '\');

    if (Achou = '') then
      Retorno := FindNext(Search);
  until (Retorno <> 0) or (Achou <> '');

  Result := Achou;
end;

procedure Tfracpr.ActExcluirExecute(Sender: TObject);
var
  vMesChaveNFE: String;
  vArquivo: string;
  vnovoarquivo: string;
  vlListapro: Tstringlist;
  vlqtdpro: Integer;
begin
  vlListapro := Tstringlist.Create;
  itm.First;
  while not itm.Eof do
  begin
    vlListapro.Add(itmprocodigo.AsString);
    itm.Next;
  end;

  // inherited;
  If ActExcluir.Enabled = False Then
  Begin
    ShowMessage('Excluir não autorizada!');
  End
  Else
  Begin
    if (uqtabelatemcodigo.AsInteger <> temNFEEmitida) then
    begin
      if (uqtabelatoecfopsaida.AsString <> '1.926') then
      begin
        If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'),
          MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
        Begin
          consulta.Close;
          consulta.SQL.Text := 'select meschavenfe from mes where meschave=' + self.uqtabelameschave.AsString;
          consulta.Open;

          if not consulta.IsEmpty then
          begin
            vMesChaveNFE := consulta.FieldByName('meschavenfe').AsString;
          end;

          vArquivo := MapeiaDiretorio(vMesChaveNFE + '.xml', extractfilepath(Application.ExeName));

          if FileExists(vArquivo) then
          begin
            MoveFile(PChar(vArquivo), PChar(extractfilepath(Application.ExeName) + 'xml-recebidos\' + vMesChaveNFE + '.xml'));
          end;

          consulta.Close;
          consulta.SQL.Text := 'UPDATE mes SET temcodigo=90 ,sdecodigo = ' + QuotedStr('02') + ' WHERE meschave = ' + self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text :=
            'UPDATE tit,rfi,rfm SET tit.srfcodigo=9  WHERE tit.titcodigo=rfi.titcodigo and rfi.rfichave=rfm.rfichave and rfm.meschave=' +
            self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'UPDATE rfi,rfm SET rfi.srfcodigo=9  WHERE rfi.rfichave=rfm.rfichave and rfm.meschave= ' +
            self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'UPDATE v_rfi,rfm SET v_rfi.srfcodigo=9 WHERE v_rfi.rfichave=rfm.rfichave and rfm.meschave= ' +
            self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'UPDATE mcg,rfm SET mcg.mcgsituacao=9  WHERE  mcg.rfichave=rfm.rfichave and rfm.meschave = ' +
            self.uqtabelameschave.AsString;
          consulta.ExecSQL;

          self.ActAtualizar.Execute;
        End;
      end
      else
      begin
        ShowMessage('Atenção: Registros de Reclassificação, deve ser cancelado na tela da Reclassificação !');
      end
    end
    else
    begin
      ShowMessage('Atenção: Registros no estágio NFE Emitida, deve ser cancelado na tela da NFe !');

    end

  End;

  for vlqtdpro := 0 to vlListapro.Count - 1 do
  begin

    vpitmprocodigo := vlListapro.Strings[vlqtdpro];

    CalcularSaldo(vpitmprocodigo);

   { consulta.Close;
    consulta.SQL.Text := 'UPDATE pun set puncusto=(select  (itmcusto/ itmcontendo) as itmcusto from  itm, toe,mes ';
    consulta.SQL.Add(' where itm.toecodigo=toe.toecodigo AND itm.procodigo=pun.procodigo and itm.meschave=mes.meschave ');
    consulta.SQL.Add(' and toe.ttocodigo=1 AND ttecodigo=0 and sdecodigo<>''02'' ');
    consulta.SQL.Add(' ORDER BY itmchave DESC LIMIT 1)');
    consulta.SQL.Add('WHERE  pun.procodigo = ' + vpitmprocodigo);
    consulta.ExecSQL;}


    ajustacusto.Close;
    ajustacusto.SQL.Text :='UPDATE pun ';
    ajustacusto.SQL.Add('INNER JOIN (SELECT ');
    ajustacusto.SQL.Add('itmchave, itm.meschave,  puncodigo, itmcusto ');
    ajustacusto.SQL.Add('FROM itm, toe, mes ');
    ajustacusto.SQL.Add('WHERE itm.toecodigo = toe.toecodigo ');
    ajustacusto.SQL.Add('AND itm.procodigo =' + vpitmprocodigo+ ' ');
    ajustacusto.SQL.Add('AND itm.meschave = mes.meschave ');
    ajustacusto.SQL.Add('AND toe.ttocodigo = 1 ');
    ajustacusto.SQL.Add('AND ttecodigo = 0 ');
    ajustacusto.SQL.Add('AND sdecodigo <> '+QuotedStr('02')+'  ');
    ajustacusto.SQL.Add('ORDER BY itmchave DESC LIMIT 1) AS custo  ');
    ajustacusto.SQL.Add('ON pun.puncodigo = custo.puncodigo  ');
    ajustacusto.SQL.Add('SET puncusto = itmcusto');
    ajustacusto.ExecSQL;


  end;

  vlListapro.Free;

end;


procedure Tfracpr.CalcularSaldo(vProcodigo: String);

var
  r: Integer;
  i: Integer;
  vlSaldo: Double;
  vlSpdChave: Integer;

  vlSaldoDisp: Double;

begin
  inherited;
  try
    consulta.Close;
    consulta.SQL.Text := 'SELECT   spdchave,  spdexercicio,  spddatainicial,  spddatafinal,  spddatabalanco, ';
    consulta.SQL.Add('pcccodigo,   spdativo,  spdmotivoinv,  spdvalortotal,  spdarquivo,  spdgeracao,  flacodigo,  spdpasta, ');
    consulta.SQL.Add(' spdregistro,  spdenvio FROM spd order by spdchave limit 1');
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlSpdChave := 1;
      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('spdexercicio').AsString := FormatDateTime('yyyy', StrToDate(hoje(Application, zcone)));
      consulta.FieldByName('spddatainicial').AsFloat := StrToDate(hoje(Application, zcone));
      consulta.FieldByName('spddatafinal').AsFloat := EndOfTheMonth(consulta.FieldByName('spddatainicial').AsFloat);
      consulta.FieldByName('spddatabalanco').AsFloat := consulta.FieldByName('spddatafinal').AsFloat;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('spdativo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.Post;

    end
    else
    begin
      vlSpdChave := consulta.FieldByName('spdchave').AsInteger;
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT   ivtchave,  spdchave,  procodigo,  pcccodigo,  ivtquantidade,';
    consulta.SQL.Add('ivtvalor,   ivttotal,  ivtproprietario,  ivtdescricao,  etdcodigo,  flacodigo, ivtregistro FROM ivt where procodigo=' + vProcodigo);
    consulta.Open;

    if consulta.IsEmpty then
    begin

      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('procodigo').AsString := vProcodigo;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('ivtquantidade').AsInteger := 0;
      consulta.FieldByName('ivtvalor').AsInteger := 0;
      consulta.FieldByName('ivttotal').AsInteger := 0;
      consulta.FieldByName('ivtproprietario').AsInteger := 1;
      consulta.FieldByName('ivtdescricao').AsString := 'Inventário de inclusão do produto';
      consulta.FieldByName('etdcodigo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.FieldByName('ivtregistro').AsDatetime := strtodatetime('01/01/2000 00:00:01');
      consulta.Post;
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT   ivdchave,  spdchave,  procodigo,  pcccodigo,  ivdquantidade,';
    consulta.SQL.Add('ivdvalor,   ivdtotal,  ivdproprietario,  ivddescricao,  etdcodigo,  flacodigo FROM ivd where procodigo=' + vProcodigo);
    consulta.Open;

    if consulta.IsEmpty then
    begin

      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('procodigo').AsString := vProcodigo;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('ivdquantidade').AsInteger := 0;
      consulta.FieldByName('ivdvalor').AsInteger := 0;
      consulta.FieldByName('ivdtotal').AsInteger := 0;
      consulta.FieldByName('ivdproprietario').AsInteger := 1;
      consulta.FieldByName('ivddescricao').AsString := 'Inventário de inclusão do produto';
      consulta.FieldByName('etdcodigo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.Post;

    end;

    vlSaldo := 0;
    consulta.Close;
    consulta.SQL.Text := 'select calcSaldoProduto(' + vProcodigo + ')';
    consulta.Open;
    vlSaldo := consulta.Fields[0].AsFloat;

    vlSaldoDisp := 0;
    consulta.Close;
    consulta.SQL.Text := 'select calcSaldoProdutoDisp(' + vProcodigo + ')';
    consulta.Open;
    vlSaldoDisp := consulta.Fields[0].AsFloat;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE pro SET prosaldo = ' + buscatroca(floattostr(vlSaldo), ',', '.') + ', prosaldodisp =  ' +
      buscatroca(floattostr(vlSaldoDisp), ',', '.') + ' where procodigo=' + vProcodigo;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE pro SET sipcodigo=1 where  ((prosaldo>0) or (prosaldodisp>0)) and procodigo=' + vProcodigo;
    consulta.ExecSQL;

  finally
  end;
end;




procedure Tfracpr.ActGerarEtiquetasExecute(Sender: TObject);
begin
  inherited;
  try
    ZCone.StartTransaction;
    eti.Close;
    eti.Open;

    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
    cfg.Open;

    mit.Close;
    mit.Open;

    itm.First;
    while not itm.Eof do
    begin

      imv.Close;
      imv.ParamByName('itmchave').AsInteger := itmitmchave.AsInteger;
      imv.Open;

      if not imv.IsEmpty then
      begin

        imv.First;
        while not imv.Eof do
        begin
          if eti.State <> dsInsert then
            eti.Append;

          eticlbcodigo.AsInteger := acesso.Usuario;
          etitrmcodigo.AsInteger := 1;
          etieetcodigo.AsInteger := 1;
          etietiemissao.AsFloat := Now;

          consulta.Close;
          consulta.SQL.Text := 'select puncodigo from pun where tuncodigo in (1,9) and  procodigo=' + itmprocodigo.AsString;
          consulta.Open;

          etipuncodigo.AsInteger := consulta.FieldByName('puncodigo').AsInteger;

          etietiquanti.AsInteger := imvimvquantidade.AsInteger;

          if imvvrpcodigo.AsInteger > 0 then
            etivrpcodigo.AsInteger := imvvrpcodigo.AsInteger;

          if self.cfgetirelcodigo.AsString <> '' then
            etirelcodigo.AsString := self.cfgetirelcodigo.AsString;

          etimitcodigo.AsInteger := mitmitcodigo.AsInteger;

          eti.Post;
          imv.Next;
        end;
      end
      else
      begin

        if eti.State <> dsInsert then
          eti.Append;

        eticlbcodigo.AsInteger := acesso.Usuario;
        etitrmcodigo.AsInteger := 1;
        etieetcodigo.AsInteger := 1;
        etietiemissao.AsFloat := Now;

        consulta.Close;
        consulta.SQL.Text := 'select puncodigo from pun where tuncodigo in (1,9) and  procodigo=' + itmprocodigo.AsString;
        consulta.Open;

        etipuncodigo.AsInteger := consulta.FieldByName('puncodigo').AsInteger;

        etietiquanti.AsInteger := itmitmquantidadeitens.AsInteger;

        if self.cfgetirelcodigo.AsString <> '' then
          etirelcodigo.AsString := self.cfgetirelcodigo.AsString;

        if (cfgmetcodigo.AsInteger = metGondola) or (cfgmetcodigo.AsInteger = metGondolaZD220) or (cfgmetcodigo.AsInteger = metGondolaZD220s) then
        begin
          etietiquanti.AsInteger := 1;
        end;

        etimitcodigo.AsInteger := mitmitcodigo.AsInteger;

        eti.Post;
      end;

      itm.Next;
    end;

    ZCone.Commit;
    ShowMessage('Etiquetas geradas com sucesso!');

  except
    ZCone.Rollback;
  end;

end;

Procedure Tfracpr.modulomdfe(Rotina: String; chave: String);
type
  TModuloMDFe = function(AOwner: TComponent; conexao: tuniconnection; vmeschave: string; vNomeRotina: string; acesso: TAcesso; vImprimir: Boolean;
    vConsultouSefaz: Boolean; vemail: string): Boolean;
var
  modmdfe: TModuloMDFe;

  ch: string;
  vu: string;
  vpackmdfe: cardinal;
begin
  vpackmdfe := LoadPackage('modulos\mnfemercato.bpl');
  if vpackmdfe <> 0 then
    try
      @modmdfe := GetProcAddress(vpackmdfe, PChar('moduloMDFes'));
      if Assigned(modmdfe) then
      begin
        modmdfe(Application, self.ZCone, chave, Rotina, acesso, False, True, '');

      end;
    finally

      // DoUnLoadPackage( vpackmdfe);
    end;
End;

procedure Tfracpr.ActGerarMDFeExecute(Sender: TObject);
Var
  Retorno: String;
  arq: String;
  vmeschave: String;
  ventcodigo: String;
  vrec: Integer;
Begin

  if self.uqtabelameschavenfe.AsString = '' then
  begin
    ShowMessage('ATENÇÃO: Este registro não é uma NFE !');
    exit;
  end;

  if (uqtabelattocodigo.AsInteger = ttoDevolucao) or (uqtabelattocodigo.AsInteger = ttoRemessaRetorno) or (uqtabelattocodigo.AsInteger = ttoOutros) or
    (uqtabelattocodigo.AsInteger = ttoComplemento) then
  begin

  end
  else
  begin

  end;

  vrec := self.uqtabela.RecNo;
  vmeschave := self.uqtabelameschave.AsString;
  ventcodigo := self.uqtabelaetdcodigo.AsString;

  inherited;

  if uqtabelameschavenfe.AsString <> '' then
  begin
    mae.Close;
    mae.ParamByName('meschavenfe').AsString := uqtabelameschavenfe.AsString;
    mae.Open;

    { if not mae.IsEmpty then
      begin
      Self.modulomdfe('ImprimeMDFe', vmeschave);
      end
      else
      begin }

    if CriaFormulario(tfmdfcpr, '', uqtabelameschavenfe.AsString) then
    begin
      self.modulomdfe('EmiteMDFe', vmeschave);
    end;
    { end; }

  end;
  // ActAtualizar.Execute;

end;

procedure Tfracpr.ActImportarNFEExecute(Sender: TObject);
begin
  inherited;
 if CriaFormulario(tfcpr, '0', '') then
 begin
    AtualizarDetalhe;



    itm.first;
    while not itm.eof do
    begin
      CalcularSaldo(itmprocodigo.asstring);
      itm.next;
    end;
    itm.first;

 end;
end;

procedure Tfracpr.ActImprimirMDFeExecute(Sender: TObject);
Var
  Retorno: String;
  arq: String;
  vmeschave: String;
  ventcodigo: String;
  vrec: Integer;
Begin

  if self.uqtabelamesprotocolo.AsString = '' then
  begin
    ShowMessage('ATENÇÃO: Este registro não é uma NFE !');
    exit;
  end;

  vrec := self.uqtabela.RecNo;
  vmeschave := self.uqtabelameschave.AsString;
  ventcodigo := self.uqtabelaetdcodigo.AsString;

  inherited;

  if uqtabelameschavenfe.AsString <> '' then
  begin
    mae.Close;
    mae.ParamByName('meschavenfe').AsString := uqtabelameschavenfe.AsString;
    mae.Open;

    if not mae.IsEmpty then
    begin
      self.modulomdfe('ImprimeMDFe', vmeschave);
    end
    else
    begin
      ShowMessage('Não foi gerado MDFe desta nota!');
    end;

  end;
  // ActAtualizar.Execute;

end;

procedure Tfracpr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  if CriaFormulario(tfcprsimples, '', '') then
  begin
          AtualizarDetalhe;
    itm.first;
    while not itm.eof do
    begin
      CalcularSaldo(itmprocodigo.asstring);
      itm.next;
    end;
    itm.first;
  end;
end;

procedure Tfracpr.ActPrecificacaoExecute(Sender: TObject);
var
  vlrpmchave: string;
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select rpmchave from rpm where meschave=' + uqtabelameschave.AsString;
  consulta.Open;

  vlrpmchave := consulta.FieldByName('rpmchave').AsString;

  CriaFormulario(Tfprecificacao, vlrpmchave, uqtabelameschave.AsString);

end;

procedure Tfracpr.ActRegistraCPAExecute(Sender: TObject);
var
  Confirma: Integer;
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select titcodigo from rfi, rfm where rfi.rfichave=rfm.rfichave and rfm.meschave=' + uqtabelameschave.AsString;
  consulta.Open;

  if consulta.FieldByName('titcodigo').AsString = '' then
  begin

    Confirma := Application.MessageBox(PChar('Efetuar o registro manual do Contas a Pagar desta Compra?'), 'Atenção',
      MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

    If (Confirma = idYes) Then
    Begin
      MostraFormu('mcpa', '', '', 'RegistraCPA', uqtabelameschave.AsString);
    End;
  end
  else
  begin
    ShowMessage('Esta compra já tem o registro de Contas a Pagar!');
  end;

end;

procedure Tfracpr.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(listaitm);

  inherited;
end;

procedure Tfracpr.ActTransferenciaExecute(Sender: TObject);
var
  vch: string;
  i: Integer;
begin
  inherited;

  vch := '';
  vch := MostraLista('mdtf', acesso.Filial.ToString);

  if vch <> '' then
  begin
    // try
    self.ZCone.StartTransaction;

    mesfla.Close;
    mesfla.SQL.Text := 'select * from mes where meschave=' + vch;
    mesfla.Open;

    itmfla.Close;
    itmfla.SQL.Text := 'select * from itm where meschave=' + vch;
    itmfla.Open;

    mesdtf.Close;
    mesdtf.SQL.Text := 'select * from mes limit 0';
    mesdtf.Open;

    itmdtf.Close;
    itmdtf.SQL.Text := 'select * from itm limit 0';
    itmdtf.Open;

    mesdtf.Append;
    for i := 1 to mesdtf.Fields.Count - 1 do
    begin
      mesdtf.FieldByName(mesdtf.Fields[i].FieldName).AsString := mesfla.FieldByName(mesdtf.Fields[i].FieldName).AsString
    end;

    mesdtf.FieldByName('flacodigo').AsInteger := acesso.Filial;

    // esta engessado para filiais no estado apenas, é necessário melhorar
    mesdtf.FieldByName('toecodigo').AsInteger := cfgcfgtoetransentflainte.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo from fla where flacodigo=' + mesfla.FieldByName('flacodigo').AsString;
    consulta.Open;

    mesdtf.FieldByName('etdcodigo').AsInteger := consulta.FieldByName('etdcodigo').AsInteger;

    mesdtf.Post;

    while not itmfla.Eof do
    begin
      itmdtf.Append;
      for i := 1 to itmdtf.Fields.Count - 1 do
      begin
        itmdtf.FieldByName(itmdtf.Fields[i].FieldName).AsString := itmfla.FieldByName(itmdtf.Fields[i].FieldName).AsString
      end;

      itmdtf.FieldByName('meschave').AsInteger := mesdtf.FieldByName('meschave').AsInteger;
      itmdtf.FieldByName('toecodigo').AsInteger := mesdtf.FieldByName('toecodigo').AsInteger;
      consulta.Close;
      consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + itmdtf.FieldByName('toecodigo').AsString;
      consulta.Open;
      itmdtf.FieldByName('cfocfop').AsString := consulta.Fields[0].AsString;
      consulta.Close;

      itmdtf.Post;

      itmfla.Next;
    end;

    dtf.Close;
    dtf.Params[0].AsString := vch;
    dtf.Open;

    dtf.Edit;
    dtf.FieldByName('meschave').AsInteger := mesdtf.FieldByName('meschave').AsInteger;
    dtf.Post;

    ZCone.Commit;
    if not CriaFormulario(tfcprsimples, mesdtf.FieldByName('meschave').AsString, '') then
    begin
      consulta.Close;

      dtf.Close;
      dtf.Params[0].AsString := vch;
      dtf.Open;

      dtf.delete;

      consulta.Close;
      consulta.SQL.Text := 'delete from mes where meschave=' + mesdtf.FieldByName('meschave').AsString;
      consulta.ExecSQL;

    end;

    { except
      ZCone.Rollback;
      end; }

    { dfa.Close;
      dfa.Filter := 'tdfcodigo <> ''RF''';
      dfa.Filtered := True;
      dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
      dfa.Open;

      dfa.First;
      while not dfa.Eof do
      begin

      itmfat.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmfat.Open;

      itmref.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmref.Open;

      while not itmfat.Eof do
      begin
      itmref.Append;
      itmrefmeschave.AsInteger := Self.meschave.Field.AsInteger;

      for i := 3 to itmfat.FieldCount - 1 do
      itmref.FieldByName(itmref.Fields[i].FieldName).AsString := itmfat.FieldByName(itmref.Fields[i].FieldName).AsString;

      (* Gabriel - 24/04/2014 - Removido para atender Sorrigas - Análisar real necessidade desse trecho *)
      (* itmreftoecodigo.AsInteger := registrotoecodigo.AsInteger;

      toe.Locate('toecodigo', registrotoecodigo.AsInteger, []);
      itmrefcfocfop.Asstring := toetoecfopsaida.Asstring;
      itmrefcfocfopdestinacao.Asstring := toetoecfopsaida.Asstring; *)

      itmref.Post;

      itmfat.Next;
      end;

      consulta.Close;
      consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr(tdfRefaturado) + ' where meschave=' + Self.dfadfameschave.AsString;
      consulta.ExecSQL;

      dfa.Next;
      end;

      dfa.Filtered := False;
      dfa.Refresh;

      itm.Refresh; }

  end;

end;

procedure Tfracpr.ActVerificarCFOPExecute(Sender: TObject);
var
  vlCFOCFOP: String;

  vlCFOPEntrada: String;

  vlToeCodigo: String;
  vlToeEntrada: String;

begin
  inherited;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    itm.First;

    while not itm.Eof do
    begin
      vlCFOPEntrada := itmcfocfop.AsString;
      vlToeCodigo := itmtoecodigo.AsString;
      vlCFOCFOP := itmcfocfop.AsString;

      consulta.Close;
      consulta.SQL.Text := 'select toeentrada from toe where toecfopsaida=' + QuotedStr(vlCFOPEntrada);
      consulta.Open;

      vlToeEntrada := consulta.Fields[0].AsString;

      if vlToeEntrada <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + vlToeCodigo;
        consulta.Open;
        vlCFOPEntrada := consulta.Fields[0].AsString;

        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + vlToeEntrada;
        consulta.Open;
        vlCFOCFOP := consulta.Fields[0].AsString;

        if vlCFOPEntrada <> vlCFOCFOP then
        begin
          consulta.Close;
          consulta.SQL.Text := 'update itm set toecodigo=' + vlToeEntrada + ', cfocfopdestinacao=' + QuotedStr(vlCFOCFOP) + ' where itmchave=' +
            itmitmchave.AsString;
          consulta.ExecSQL;
        end;

      end;

      itm.Next;
    end;

    uqtabela.Next;
  end;

  ShowMessage('Verificação Realizada com sucesso!');
end;

procedure Tfracpr.cfgcprfinEnter(Sender: TObject);
begin
  inherited;
  If cfg.State = dsBrowse Then
    cfg.Edit;
end;

procedure Tfracpr.cfgcprfinExit(Sender: TObject);
begin
  inherited;
  If cfg.State <> dsBrowse Then
    cfg.Post;

  self.ActAtualizar.Execute;
end;

procedure Tfracpr.cfgcpriniEnter(Sender: TObject);
begin
  inherited;
  If cfg.State = dsBrowse Then
    cfg.Edit;
end;

procedure Tfracpr.cfgcpriniExit(Sender: TObject);
begin
  inherited;
  If cfg.State <> dsBrowse Then
    cfg.Post;

  self.ActAtualizar.Execute;
end;

procedure Tfracpr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  fixRect: TRect;
Begin

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
      Font.Color := CLWHITE;
    End;

  DBGLista.Canvas.Font.Style := [];

  If (self.uqtabelasdecodigo.AsString = '02') Or (self.uqtabelasdecodigo.AsString = '03') Or (self.uqtabelasdecodigo.AsString = '04') Then
    DBGLista.Canvas.Font.Color := clRed;

  If (self.uqtabelatemcodigo.AsString = '90') Then
    DBGLista.Canvas.Font.Color := clRed;

  with TFriendly(DBGLista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfracpr.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (not uqtabela.Executing) and (not uqtabela.Fetching) then
  begin

    AtualizarDetalhe;

  end;
end;

procedure Tfracpr.AtualizarDetalhe;
begin
  if uqtabelameschave.AsString <> '' then
  begin
    tom.Close;
    tom.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    tom.Open;
    itm.Close;
    itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    itm.Open;

    if tom.IsEmpty then
    begin
      DBGridTom.Visible := False;
      PnlRodapeGrid.Height := 32;

    end
    else
    begin
      DBGridTom.Visible := True;
      PnlRodapeGrid.Height := 84;
    end;

  end;

end;

Function Tfracpr.validaentidade(vetdcodigo: String): Boolean;
Var
  Retorno: String;
  valiedr: Boolean;
  valietf: Boolean;
  valiete: Boolean;
Begin
  valiedr := False;
  valietf := False;
  valiete := False;

  etd.Close;
  etd.SQL.Text := 'SELECT etd.etdcodigo, etddoc1, ufs.ufssigla, edr.edrcodigo, edrrua, edrnumero, edrbairro, edr.cddcodigo, ';
  etd.SQL.Add('cddnome, edrcep, etf.etfcodigo, etftelefone, tpecodigo, edrinscest, etdidentificacao ');
  etd.SQL.Add('FROM etd, cdd, ufs, edr, etf WHERE ');
  etd.SQL.Add('edr.cddcodigo = cdd.cddcodigo AND ');
  etd.SQL.Add('cdd.ufscodigo = ufs.ufscodigo AND ');
  etd.SQL.Add('etd.etdcodigo = etf.etdcodigo AND ');
  etd.SQL.Add('etd.etdcodigo = edr.etdcodigo AND ');
  etd.SQL.Add('etf.ttfcodigo = ''1'' AND ');
  etd.SQL.Add('edr.tedcodigo = ''1'' AND ');
  etd.SQL.Add('etd.etdcodigo = ' + vetdcodigo);
  etd.Open;

  If (etd.FieldByName('edrrua').AsString = '') Or (etd.FieldByName('edrnumero').AsString = '') Or (etd.FieldByName('edrbairro').AsString = '') Or
    (Length(etd.FieldByName('edrcep').AsString) < 8) Or (etd.FieldByName('edrinscest').AsString = '') Then
  Begin
    MostraFormu('medr', etd.FieldByName('edrcodigo').AsString, etd.FieldByName('etdcodigo').AsString);
  End
  Else
  Begin
    valiedr := True;
  End;

  If (etd.FieldByName('etftelefone').AsString = '') Then
    MostraFormu('metf', etd.FieldByName('etfcodigo').AsString, etd.FieldByName('etdcodigo').AsString)
  Else
    valietf := True;

  ete.Close;
  ete.SQL.Text := 'SELECT eteemail, etecodigo FROM ete WHERE ete.etdcodigo = ' + vetdcodigo + ' AND eteenvianfe = ''1''';
  ete.Open;

  If ete.FieldByName('eteemail').AsString = '' Then
    MostraFormu('mete', ete.FieldByName('etecodigo').AsString, etd.FieldByName('etdcodigo').AsString)
  Else
    valiete := True;

  If (valiedr) And (valietf) And (valiete) Then
    Result := True
  Else
    Result := False;
End;

Function Tfracpr.validatransporte(vmeschave: String): Boolean;
Var
  validtm: Boolean;
  Retorno: String;
  vchave: String;
Begin
  validtm := False;

  dtm.Close;
  dtm.SQL.Text := 'SELECT dtmchave, dtmplaca, dtmvolumes, dtmpesobruto, dtmpesoliq, meschave, dtm.etdcodigo, cdd.ufscodigo, ';
  dtm.SQL.Add('edrrua, cddnome, ufssigla, edrinscest, etddoc1, etdidentificacao, dtmespecie, dtmmarcas ');
  dtm.SQL.Add('FROM dtm, etd, edr, cdd, ufs WHERE ');
  dtm.SQL.Add('dtm.etdcodigo = etd.etdcodigo AND ');
  dtm.SQL.Add('etd.etdcodigo = edr.etdcodigo AND ');
  dtm.SQL.Add('edr.cddcodigo = cdd.cddcodigo AND ');
  dtm.SQL.Add('cdd.ufscodigo = ufs.ufscodigo AND ');
  dtm.SQL.Add('edr.tedcodigo=''1'' AND ');
  dtm.SQL.Add('dtm.meschave= ' + vmeschave);
  dtm.Open;

  If dtm.RecordCount = 0 Then
    vchave := '0'
  Else
    vchave := dtm.FieldByName('dtmchave').AsString;

  validtm := True;
  Result := validtm;
End;

procedure Tfracpr.AtualizaTotais;
var
  vlFiltros: String;

  vlTotalBruto: Double;
  vlTotalDesconto: Double;
  vlTotalLiquido: Double;

  vlTotalNF: Double;

  vlTotalCancelado: Double;
begin
  if SQLBaseTotais = '' then
    SQLBaseTotais := uqTotais.SQL.Text;

  vlFiltros := uqtabela.SQL.Text;
  vlFiltros := Trim(Copy(vlFiltros, pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqTotais.Close;
  uqTotais.SQL.Text := SQLBaseTotais;
  uqTotais.SQL.Add(vlFiltros);
  uqTotais.FilterSQL := uqtabela.FilterSQL;

  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido := uqTotaismestotal.AsCurrency;

  vlTotalNF := uqTotaismestotalnf.AsFloat;

  vlTotalCancelado := uqTotaismestotalcancelado.AsFloat;

  PlValortotalBruto.Caption := 'Total Bruto: ' + FormatFloat('##,###,##0.00', vlTotalBruto);
  Pltotaldescontos.Caption := 'Total Descontos: ' + FormatFloat('##,###,##0.00', vlTotalDesconto);
  Plvalortotalliquido.Caption := 'Total Líquido: ' + FormatFloat('##,###,##0.00', vlTotalLiquido);

  if vlTotalCancelado > 0 then
  begin
    PlTotalCancelado.Caption := 'Total Cancelados: ' + FormatFloat('##,###,##0.00', vlTotalCancelado);
    PlTotalCancelado.Visible := True;
  end
  else
    PlTotalCancelado.Visible := False;
end;

procedure Tfracpr.AtualizaTotaisItens;
begin
  plQtdItens.Caption := 'Qt.Itens : ' + uqItmTotaisitmitens.AsString;
  plBrutoItens.Caption := 'Total Bruto: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotal.AsFloat);
  plDescontoItens.Caption := 'Total Desconto: ' + FormatFloat('#,##0.00', uqItmTotaisitmdesconto.AsFloat);
  plLiquidoItens.Caption := 'Total Líquido: ' + FormatFloat('#,##0.00', uqItmTotaisitmtotalliq.AsFloat);
end;

procedure Tfracpr.bConfirmaSelecaoClick(Sender: TObject);
begin
  // inherited;
  inherited AtualizaFiltroUQTabela;
  CalculaTotais;

end;

procedure Tfracpr.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  If Odd(Ditm.DataSet.RecNo) Then
    listaitm.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listaitm.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfracpr.mAjustarCFOpItensClick(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.Eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'update itm set toecodigo=' + uqtabelatoecodigo.AsString + ' where meschave=' + uqtabelameschave.AsString;
    consulta.ExecSQL;
    uqtabela.Next;
  end;

end;

procedure Tfracpr.mnAjustarRegimeTributarioClick(Sender: TObject);
begin
  inherited;
  {
    REGIME LUCRO PRESUMIDO

    Vamos fazer algumas alterações tanto nas entradas dos produtos como na saída.

    - Na Compra de mercadoria (ENTRADA DE MERCADORIA) separar os CFOP quando a empresa Dupe comprar com CFOP 5.102 (entrada 1.102) a venda de mercadoria sairá com CFOP 5102.

    - CST - ICMS = 090 - OUTROS

    - Na Compra de mercadoria (ENTRADA DE MERCADORIA) separar os CFOP quando a empresa Dupe comprar com CFOP 5.403 ou 5.405 (entrada 1.403 - 1.405) a venda de mercadoria sairá com CFOP 5.405.

    - CST - ICMS = 060 - ICMS COBRADO ANTERIORMENTE POR SUBSTITUIÇÃO TRIBUTARIA





  }

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    itm.First;
    while not itm.Eof do
    begin

      if (itmcfocfop.AsString = '5.102') then
      begin

        pro.Close;
        pro.ParamByName('procodigo').AsString := itmprocodigo.AsString;
        pro.Open;

        pro.Edit;
        procstcodigo.AsString := '090';
        pro.Post;

      end;

      if (itmcfocfop.AsString = '5.403') or (itmcfocfop.AsString = '5.405') then
      begin

        pro.Close;
        pro.ParamByName('procodigo').AsString := itmprocodigo.AsString;
        pro.Open;

        pro.Edit;
        procstcodigo.AsString := '060';
        pro.Post;

      end;

      itm.Next;
    end;
    uqtabela.Next;
  end;
end;

procedure Tfracpr.uqItmTotaisAfterOpen(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

procedure Tfracpr.uqItmTotaisAfterRefresh(DataSet: TDataSet);
begin
  AtualizaTotaisItens;
end;

end.
