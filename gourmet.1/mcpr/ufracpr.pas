unit ufracpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, Vcl.Graphics, Vcl.DbCtrls,
  System.SysUtils, uFuncoes, uPegaBase, Vcl.WinXCtrls, Vcl.Clipbrd, Vcl.Mask,
  System.ImageList, Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc 

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
    uqtabelaflasigla: TStringField;
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
    xml: tuniquery;
    ActVerificarCFOP: TAction;
    plIndicador: TPanel;
    ActivityIndicator: TActivityIndicator;
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
    tom: TUniQuery;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    tomtofidentificacao: TStringField;
    Dtom: TUniDataSource;
    DBGridTom: TDBGrid;
    Plvalortotalliquido: TPanel;
    uqtabelamesfrete: TFloatField;
    uqtabelamesipi: TFloatField;
    itmitmcontendo: TFloatField;
    itmitmvaloritem: TFloatField;
    itmitmquantidadeitem: TFloatField;
    uqtabelamesicms: TCurrencyField;
    itmitmicms: TFloatField;
    uqtabelameschavenfe: TStringField;
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
  private
    vatualizando: Boolean;
    FSQLBaseTotais: String;
    function validaentidade(vetdcodigo: String): Boolean;
    function validatransporte(vmeschave: String): Boolean;
    procedure AtualizaTotais;
    procedure AtualizaTotaisItens;
    procedure AtualizarDetalhe;
    { Private declarations }

  published
    property SQLBaseTotais: String read FSQLBaseTotais write FSQLBaseTotais;

  public
    { Public declarations }
    procedure Carregar; override;

  end;

  tmodnfe = procedure(AOwner: TComponent; conexao: tuniconnection; varq: string; vchave: string; vmodulo: string);
  TImpCFOPNfe = function(AOwner: TComponent; conexao: tuniconnection; vchave: string): string;

var
  fracpr: Tfracpr;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '02.04.08.001-01';
  vPlTitMdl = 'Entradas';

  // Fim ID do Módulo fracpr

implementation

{$R *.dfm}

uses ufcpr, ufcprsimples;

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
 { if uqtabelattocodigo.AsInteger = ttoReclassificacao then
  begin
    Application.MessageBox(PChar('Alteração não permitida para registros de Reclassificação de Mercadoria.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;}

  if (self.uqtabelameschavenfe.asstring='') or  (self.uqtabelameschavenfe.asstring='0') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT spddatainicial, spddatafinal FROM spd WHERE spdativo = 1';
    consulta.Open;

    if (self.uqtabelamesregistro.AsFloat >= consulta.Fields[0].AsFloat) and (self.uqtabelamesregistro.AsFloat <= consulta.Fields[1].AsFloat) then
      CriaFormulario(tfcprsimples, self.uqtabelameschave.AsString, '')
    else
      ShowMessage('Atenção lançamento fora do período permitido para alterações !');

    consulta.Close;
  end
  else
    ShowMessage('Atenção: Este registro é de uma nota importada via XML. '+#13+'Não pode ser alterada !');
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
    consulta.SQL.Text := 'select meschavenfe from mes where meschave=' +
      uqtabelameschave.AsString;
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





{  TRY
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
  END;}

end;

function MapeiaSubDiretorio(vArquivo:String;vCaminho: String): String;
var
  Search: TSearchRec;
  Retorno, I: Integer;
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
      Achou := MapeiaSubDiretorio(vArquivo,vCaminho + Search.Name + '\');

    Retorno := FindNext(Search)
  until (Retorno  <> 0) or (Achou<>'');

  Result := Achou;
end;

function MapeiaDiretorio(vArquivo:String;vCaminho: String):string;
var
  Search: TSearchRec;
  Retorno, I: Integer;
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
      Achou := MapeiaSubDiretorio(vArquivo,vCaminho + Search.Name + '\');

    if (Achou='') then
      Retorno := FindNext(Search);
  until (Retorno  <> 0) or (Achou<>'');

 result:=Achou;
end;



procedure Tfracpr.ActExcluirExecute(Sender: TObject);
var
 vMesChaveNFE:String;
 varquivo:string;
 vnovoarquivo:string;
begin
  // inherited;
  If ActExcluir.Enabled = False Then
  Begin
    ShowMessage('Excluir não autorizada!');
  End
  Else
  Begin
    If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO +
      MB_DEFBUTTON2) = idYes Then
    Begin
      consulta.Close;
      consulta.SQL.Text:='select meschavenfe from mes where meschave=' + self.uqtabelameschave.AsString;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
      vMesChaveNFE:=consulta.FieldByName('meschavenfe').AsString;
      end;



    varquivo:= MapeiaDiretorio(vMesChaveNFE+'.xml',extractfilepath(application.ExeName));

    if FileExists(varquivo) then
    begin
       MoveFile(pchar(varquivo), pchar(extractfilepath(application.ExeName)+'xml-recebidos\'+vMesChaveNFE+'.xml'));
    end;


      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes SET sdecodigo = '+QuotedStr('02') +' WHERE meschave = ' + self.uqtabelameschave.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes SET temcodigo =90  WHERE meschave = ' + self.uqtabelameschave.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE tit SET srfcodigo=9  WHERE titcodigo in (select titcodigo from rfi,rfm where rfm.rfichave=rfi.rfichave and meschave = ' + self.uqtabelameschave.AsString+' )';
      consulta.ExecSQL;


      consulta.Close;
      consulta.SQL.Text := 'UPDATE rfi SET srfcodigo=9  WHERE rfichave in (select rfichave from rfm where meschave = ' + self.uqtabelameschave.AsString+')';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE v_rfi SET srfcodigo=9  WHERE rfichave in (select rfichave from rfm where meschave = ' + self.uqtabelameschave.AsString+')';
      consulta.ExecSQL;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE mcg SET mcgsituacao=9  WHERE rfichave in (select rfichave from rfm where meschave = ' + self.uqtabelameschave.AsString+')';
      consulta.ExecSQL;


      self.ActAtualizar.Execute;
    End;
  End;
end;



procedure Tfracpr.ActGerarEtiquetasExecute(Sender: TObject);
begin
  inherited;
  try
    ZCone.StartTransaction;
    eti.Close;
    eti.Open;

    if cfg.State <> dsBrowse then
      cfg.Post;

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

        etietiquanti.AsInteger := itmitmquantidade.AsInteger;

        if self.cfgetirelcodigo.AsString <> '' then
          etirelcodigo.AsString := self.cfgetirelcodigo.AsString;

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

procedure Tfracpr.ActImportarNFEExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcpr, '0', '');
end;

procedure Tfracpr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcprsimples, '', '');
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

  ActivityIndicator.Animate := True;
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

  ActivityIndicator.Animate := False;
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
  if (self.uqtabelatdfcodigo.AsString = '65') then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select meschave from mesxml where meschave=' + uqtabelameschave.AsString + ' and mesarqxml is not null';
    consulta.Open;

    if not consulta.IsEmpty then
      DBGLista.Canvas.Font.Style := [fsBold];

  end;

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
 if uqtabelameschave.AsString<>'' then
 begin
   tom.close;
   tom.ParamByName('meschave').AsInteger:=uqtabelameschave.AsInteger;
   tom.Open;

   if tom.IsEmpty then
   begin
    DBGridTom.Visible:=False;
    PnlRodapeGrid.Height:=32;

   end
   else
   begin
     DBGridTom.Visible:=True;
    PnlRodapeGrid.Height:=84;
   end;

 end;

end;

Function Tfracpr.validaentidade(vetdcodigo: String): Boolean;
Var
  retorno: String;
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
  retorno: String;
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
  vlFiltros := Trim(Copy(vlFiltros, Pos('-- Filtros', vlFiltros) + 10, Length(vlFiltros)));

  uqTotais.Close;
  uqTotais.SQL.Text := SQLBaseTotais;
  uqTotais.SQL.Add(vlFiltros);
  uqTotais.FilterSQL := uqtabela.FilterSQL;

  if uqtabela.Params.FindParam('flacodigo') <> nil then
    uqTotais.ParamByName('flacodigo').AsInteger := acesso.Filial;
  uqTotais.Open;

  vlTotalBruto := uqTotaismesvalor.AsFloat;
  vlTotalDesconto := uqTotaismesdeconto.AsFloat;
  vlTotalLiquido :=uqTotaismestotal.AsCurrency;

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
