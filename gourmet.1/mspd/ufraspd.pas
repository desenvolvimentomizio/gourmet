unit ufraspd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.SysUtils,
  IdMessageClient, IdSMTPBase, IdSMTP, IdAttachment, IdAttachmentFile,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdComponent,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdMessage, ufuncoes, UniProvider, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  DateUtils, Vcl.ComCtrls, IdSSLOpenSSLHeaders, IdIntercept, IdInterceptSimLog, IdIOHandlerStream,
  IdZLibCompressorBase, IdCompressorZLib, IdFTP, IdFTPCommon, dialogs, IdLogBase, IdLogFile,
  System.ImageList, Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc 

type
  Tfraspd = class(Tfrabase)
    uqtabelaspdchave: TIntegerField;
    uqtabelaspdexercicio: TIntegerField;
    uqtabelaspddatainicial: TDateField;
    uqtabelaspddatafinal: TDateField;
    uqtabelaspddatabalanco: TDateField;
    uqtabelaspdativo: TIntegerField;
    uqtabelaativo: TStringField;
    ActVendasnosCartoes: TAction;
    ActSpedFiscal: TAction;
    ActGerarInventario: TAction;
    ActSpedEmail: TAction;
    cfgemail: TUniQuery;
    IntegerField1: TIntegerField;
    cfgcfgmensagempdv: TStringField;
    cfgcfgtrmimpfis1: TIntegerField;
    cfgcfgtrmimpfis2: TIntegerField;
    cfgcfgtrmtef1: TIntegerField;
    cfgcfgtrmtef2: TIntegerField;
    cfgcfgimpnfe1: TIntegerField;
    cfgcfgimpnfe2: TIntegerField;
    cfgcfgimpnfc1: TIntegerField;
    cfgcfgimpnfc2: TIntegerField;
    cfgcfgimpnfc3: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcfgsenhacertificado: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    cfgedrinscest: TStringField;
    cfgedrrua: TStringField;
    cfgedrnumero: TStringField;
    cfgedrbairro: TStringField;
    cfgedrcep: TStringField;
    cfgcddnome: TStringField;
    cfgufssigla: TStringField;
    cfgetftelefone: TStringField;
    cfgctdboxedominio: TStringField;
    cfgcfgmodonfe: TIntegerField;
    cfgemailctdemail: TStringField;
    uqtabelaspdregistro: TDateTimeField;
    uqtabelaspdenvio: TDateTimeField;
    uqtabelaspdpasta: TStringField;
    mizioonline: TUniConnection;
    mizio_gab: TUniQuery;
    mizio_gabmizio_gabchave: TIntegerField;
    mizio_gabmizio_gabdoc1: TStringField;
    mizio_gabmizio_gabnome: TStringField;
    mizio_gabmizio_gabbackup: TDateField;
    mizio_gabmizio_gabcontigencia: TDateField;
    mizio_gabmizio_gabversao: TStringField;
    mizio_gabmizio_gabenviosped: TDateTimeField;
    mad: TUniQuery;
    adc: TUniQuery;
    adcadccodigo: TIntegerField;
    adcadcidentificacao: TStringField;
    adcetdcodigo: TIntegerField;
    madmadchave: TIntegerField;
    madspdchave: TIntegerField;
    madetdcodigo: TIntegerField;
    madmadvalorccredito: TFloatField;
    madmadvalorcdebito: TFloatField;
    madmadapurccredito: TFloatField;
    madmadapurcdebito: TFloatField;
    csv: TUniQuery;
    ivt: TUniQuery;
    ActSpedContribuicoes: TAction;
    plemail: TPanel;
    Image3: TImage;
    plSutuacao: TPanel;
    mostra: TProgressBar;
    IdCompressorZLib1: TIdCompressorZLib;
    IdIOHandlerStream1: TIdIOHandlerStream;
    IdLogFile1: TIdLogFile;
    IdFTP1: TIdFTP;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    madadcencerramento: TDateField;
    adcadcencerramento: TDateField;
    procedure DBGListaDblClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActVendasnosCartoesExecute(Sender: TObject);
    procedure ActSpedFiscalExecute(Sender: TObject);
    procedure ActGerarInventarioExecute(Sender: TObject);
    procedure ActSpedEmailExecute(Sender: TObject);
    procedure ActSpedContribuicoesExecute(Sender: TObject);
    procedure SMTPConnected(Sender: TObject);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure SMTPTLSNotAvailable(ASender: TObject; var VContinue: Boolean);
    procedure SMTPDisconnected(Sender: TObject);
    procedure SMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure SMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
    procedure IO_OpenSSLStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure IO_OpenSSLStatusInfo(const AMsg: string);
    procedure IO_OpenSSLStatusInfoEx(ASender: TObject; const AsslSocket: PSSL; const AWhere, Aret: Integer; const AType, AMsg: string);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
  private
    procedure DoUnLoadPackage(Module: HModule);
    function EnviaEmail(vArqZip, vSPEDArq, vPeriodo: String): Boolean;
    function EnviarEmail(destino, copias, texto, assunto, Xml, pdf, nome_cliente, nome_empresa: String): Boolean;
    procedure Inicializar;
    procedure RegistraAtualizacao;
  public
    { Public declarations }
    vtamanho: Integer;
  end;

  Tgeracaospedfiscal = function(owner: Tapplication; zcone: TUniConnection; vspdchave: string; Acesso: TAcesso): string;

var
  fraspd: Tfraspd;

  // Início ID do Módulo fraspd
const
  vPlIdMd = '03.08.81.002-01';
  vPlTitMdl = 'Períodos Fiscais';

  // Fim ID do Módulo fraspd

implementation

{$R *.dfm}

uses ufspd, ufivg;

Function tbFileSize(Const FileName: String): Integer;
Var
  SR: TSearchRec;
  i: Integer;
Begin
  i := FindFirst(FileName, faArchive, SR);
  Try
    If i = 0 Then
      Result := SR.Size
    Else
      Result := -1;
  Finally
    FindClose(SR);
  End;
End;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraspd := Tfraspd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraspd := Tfraspd.Create(pCargaFrame);
  try
    fraspd.CriaAcoesDeAcesso;
  finally
    fraspd.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraspd.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfspd, Self.uqtabelaspdchave.AsString, '');
end;

procedure Tfraspd.ActGerarInventarioExecute(Sender: TObject);
var
  vlIvgChave: string;
begin
  inherited;
  vlIvgChave := '';
  consulta.Close;
  consulta.SQL.Text := 'select ivgchave from ivg where spdchaveinventario=' + Self.uqtabelaspdchave.AsString;
  consulta.Open;
  vlIvgChave := consulta.Fields[0].AsString;
  consulta.Close;

  CriaFormulario(Tfivg, vlIvgChave, Self.uqtabelaspdchave.AsString);
end;

procedure Tfraspd.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfspd, '', '');
end;

procedure Tfraspd.ActSpedContribuicoesExecute(Sender: TObject);
begin
  inherited;
  { gerar }
end;

procedure Tfraspd.ActSpedEmailExecute(Sender: TObject);
var
  vlDiretorio: string;
  vlCaminho: string;

begin
  Self.ActAtualizar.Execute;
  inherited;
  try

    vlDiretorio := Self.uqtabelaspdpasta.AsString;

    if EnviaEmail(FormatDateTime('mmmmyyyy', uqtabelaspddatafinal.AsFloat) + '.zip', '\SpedEFD-' + FormatDateTime('mmmmyyyy', uqtabelaspddatafinal.AsFloat) + '.txt',
      FormatDateTime('mmmmyyyy', uqtabelaspddatafinal.AsFloat)) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update spd set spdenvio=' + QuotedStr(agora(application, zcone)) + ' where spdchave=' + uqtabelaspdchave.AsString;
      consulta.ExecSQL;
      Self.ActAtualizar.Execute;
    end;

  except

  end;

end;

procedure Tfraspd.ActSpedFiscalExecute(Sender: TObject);
var
  geracaospedfiscal: Tgeracaospedfiscal;
  vPack: Cardinal;
  vlLicencaDLL: string;
  vlLicencaCaptcha: string;
  vlCertificado: string;
  vlVerificaCartoes: Boolean;
  vlVerificaContaConsumo: Boolean;
  vlVerificaInventario: Boolean;
begin
  // verfificar se foi registrado valores de cartões
  vlVerificaCartoes := true;

  consulta.Close;
  consulta.SQL.Text := 'SELECT count(dtlchave) FROM dtl,lte WHERE dtl.ltechave=lte.ltechave and mdacodigo IN (4,5) and ltedata BETWEEN :datainicial and :datafinal';
  consulta.ParamByName('datainicial').AsDate := uqtabelaspddatainicial.AsFloat;
  consulta.ParamByName('datafinal').AsDate := uqtabelaspddatafinal.AsFloat;
  consulta.Open;

  if consulta.Fields[0].AsInteger > 0 then
  begin
    adc.Close;
    adc.Open;

    adc.First;
    while not adc.Eof do
    begin
      if (adcadcencerramento.AsString = '') then
      begin
        mad.Close;
        mad.ParamByName('spdchave').AsInteger := uqtabelaspdchave.AsInteger;
        mad.ParamByName('etdcodigo').AsInteger := adcetdcodigo.AsInteger;
        mad.Open;

        if (mad.IsEmpty) then
        begin

          vlVerificaCartoes := False;
          application.MessageBox(PChar('Falha na geração do SPED FISCAL!' + #13 + #13 + 'Favor informar valores de operações com Cartões de CRÉDITO/DÉBITO!'), 'Atenção',
            MB_OK + MB_ICONERROR);
          break;
        end;

      end;
      adc.Next;
    end;

  end;

  vlVerificaContaConsumo := true;
  csv.Close;
  csv.ParamByName('datainicial').AsDate := uqtabelaspddatainicial.AsFloat;
  csv.ParamByName('datafinal').AsDate := uqtabelaspddatafinal.AsFloat;
  csv.Open;

  if csv.IsEmpty then
  begin
    application.MessageBox(PChar('Falha na geração do SPED FISCAL!' + #13 + #13 + 'Não foi localizado registro de CONTAS DE CONSUMO!'), 'Atenção', MB_OK + MB_ICONWARNING);

    If application.MessageBox(PChar('Gerar o SPED FISCAL sem informar CONTAS DE CONSUMO?' + #13 + 'Considera-se CONTAS DE CONSUMO: ' + #13 +
      'Energia Elétrica, Contas Telefonicas, Contas de Água' + #13 + #13 + 'Somente se estiverem registrada no CNPJ da empresa!'), 'Atenção',
      MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      vlVerificaContaConsumo := true;
    End
    else
    begin
      vlVerificaContaConsumo := False;
      exit;
    end;

  end;

  vlVerificaInventario := true;
  if MonthOf(uqtabelaspddatainicial.AsFloat) = 2 then
  begin
    ivt.Close;
    ivt.ParamByName('databalanco').AsDate := uqtabelaspddatabalanco.AsFloat;
    ivt.Open;

    if ivt.Fields[0].AsInteger = 0 then
    begin
      application.MessageBox(PChar('Falha na geração do SPED FISCAL!' + #13 + #13 + 'No mes de FEVEREIRO deve ser informado o INVENTÁRIO com base em último dia do ANO ANTERIOR!'),
        'Atenção', MB_OK + MB_ICONWARNING);
      vlVerificaInventario := False;
      exit;

    end;

  end;

  if (vlVerificaCartoes) and (vlVerificaContaConsumo) and (vlVerificaInventario) then
  begin
    if fileexists(extractfilepath(application.ExeName) + 'modulos\mgsp.bpl') then
      vPack := LoadPackage('modulos\mgsp.bpl');
    if vPack <> 0 then
      try
        @geracaospedfiscal := GetProcAddress(vPack, PChar('geracaospedfiscal'));
        if Assigned(geracaospedfiscal) then
        begin
          geracaospedfiscal(application, zcone, Self.uqtabelaspdchave.AsString, Acesso);
        end;

      finally
        DoUnLoadPackage(vPack);
      end;

  end;
end;

procedure Tfraspd.DoUnLoadPackage(Module: HModule);
var
  i: Integer;
  M: TMemoryBasicInformation;
begin
  for i := application.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(application.Components[i].ClassName), M, SizeOf(M));
    if (Module = 0) or (HModule(M.AllocationBase) = Module) then
      application.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);
  UnLoadPackage(Module);
end;

procedure Tfraspd.ActVendasnosCartoesExecute(Sender: TObject);
begin
  inherited;
  Self.MostraLista('mmad', '', Self.uqtabelaspdchave.AsString);
end;

procedure Tfraspd.DBGListaDblClick(Sender: TObject);
Begin
  { inherited; }
  Self.UQTabela.DisableControls;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE spd SET spdativo = ''0''';
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE spd SET spdativo = ''1'' WHERE spdchave = ' + Self.uqtabelaspdchave.AsString;;
  consulta.ExecSQL;

  Self.UQTabela.EnableControls;
  Self.ActAtualizar.Execute;
end;

function Tfraspd.EnviaEmail(vArqZip: String; vSPEDArq: String; vPeriodo: String): Boolean;
var
  emails: String;
  emailscc: string;
  narqzip: String;
  nsped: String;
  IdCli: string;
  vlDiretorio: string;
begin

  PlRodaPe.Visible := true;
  plemail.Visible := true;
  application.ProcessMessages;
  try

    cfgemail.Close;
    cfgemail.Params[0].AsInteger := Acesso.Filial;
    cfgemail.Open;

    if uqtabelaspdpasta.AsString = '' then
    begin
      // C:\gourmet\sped\junho2019\C:\gourmet\sped\junho2019\SpedEFD-junho2019.txt".

      vlDiretorio := extractfilepath(application.ExeName) + 'sped\' + FormatDateTime('mmmmyyyy', uqtabelaspddatafinal.AsFloat);;
      if fileexists(vlDiretorio + '\' + vSPEDArq) then
      begin
        UQTabela.Edit;
        uqtabelaspdpasta.AsString := vlDiretorio;
        UQTabela.post;
      end;

    end;

    narqzip := uqtabelaspdpasta.AsString + '\' + vArqZip;
    nsped := uqtabelaspdpasta.AsString + '\' + vSPEDArq;

    if fileexists(uqtabelaspdpasta.AsString + '\' + vSPEDArq) = False then
    begin
      Showmessage('Arquivo do SPED não localizado: ' + uqtabelaspdpasta.AsString + '\' + vSPEDArq);
      exit;

    end;
    emailscc := cfgctdboxedominio.AsString;
    emails := cfgemailctdemail.AsString;

    vtamanho := tbFileSize(narqzip);

    IdCli := sonumeros(Self.cfgetddoc1.AsString);
    // Envia BACKUP DO BANCO.
    Try
      IdFTP1.TransferType := ftBinary;
      IdFTP1.Connect;
      If IdFTP1.Connected Then
      Begin

        Try
          IdFTP1.MakeDir(IdCli);
        Except
        End;

        IdFTP1.ChangeDir(IdCli);

        IdFTP1.Put(narqzip);
        sleep(500);
        IdFTP1.Put(nsped);
        sleep(500);

      End;
      IdFTP1.Disconnect;
    except
      on e: Exception do
      begin
        Showmessage('Mensagem: ' + e.Message);
      end;
    End;

    If EnviarEmail(emails, emailscc, 'Segue, abaixo, endereço para download dos arquivos de SPED e XMLS recebidos e emitidos pela empresa ' + cfgetdapelido.AsString +
      ' referentes ao periodo: ' + vPeriodo + #13 + #13 + #13 + 'Arquivos: ' + #13 + 'http://www.miziosistemas.com.br/arquivos/' + IdCli + '/' + vArqZip + #13 + #13 +
      'http://www.miziosistemas.com.br/arquivos/' + IdCli + '/' + vSPEDArq + #13 + #13 + #13 + 'Contato para maiores esclarecimentos: sac@miziosistemas.com.br',
      'SPED e XMLS da empresa: ' + cfgetdapelido.AsString, '', '', '', cfgetdapelido.AsString) Then
    begin
      application.MessageBox(PChar('Email enviado com sucesso para Contabilidade.' + #13 + 'Email: ' + emails + #13 + 'Cópias: ' + emailscc), 'ENVIO CONCLUÍDO',
        MB_OK + MB_ICONINFORMATION);

      RegistraAtualizacao;

    end;
  except

  end;

  plemail.Visible := False;
  PlRodaPe.Visible := False;
  application.ProcessMessages;

end;

Function Tfraspd.EnviarEmail(destino, copias, texto, assunto, Xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
  vlMensagemErro, vlDiretorioErro: String;

Begin
  try
    PlRodaPe.Visible := true;
    plemail.Visible := true;
    application.ProcessMessages;
    Inicializar;
    vEnviado := False;
    Result := vEnviado;

    cfgemail.Close;
    cfgemail.Params[0].AsInteger := Acesso.Filial;
    cfgemail.Open;

    if Trim(cfgctdboxedominio.AsString) = '' then
    begin
      application.MessageBox(PChar('Email do setor não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO',
        MB_OK + MB_ICONWARNING);
      exit;
    end;

    if (Trim(destino) = '') and (Trim(copias) = '') then
    begin
      application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
      exit;
    end;

    Try

      IdMessage1.Clear;
      IdMessage1.Body.Clear;
      IdMessage1.Body.Text := texto; // Corpo da mensagem.
      IdMessage1.Subject := assunto; // Assunto
      IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
      IdMessage1.From.Name := nome_empresa; // Nome para apresentação
      IdMessage1.CCList.EMailAddresses := copias; // Com cópia
      IdMessage1.BccList.EMailAddresses := 'suporte@miziosistemas.com.br';
      IdMessage1.Recipients.EMailAddresses := destino; // email destino

      { if xml <> '' then
        if fileexists(xml) then
        Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml); }

      { if pdf <> '' then
        if fileexists(pdf) then
        Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf); }

      // Conectando e enviando
      Try
        SMTP.Connect; // Inicia conexão

        If SMTP.Connected Then
        Begin

          SMTP.Send(IdMessage1); // Se conectado envia email
          vEnviado := true;
          SMTP.Disconnect; // Desconecta
          { if  Attachmentxml<>nil then
            Attachmentxml.Free;

            if  Attachmentpdf<>nil then
            Attachmentpdf.Free; }
        End;
      Except
        On e: Exception Do // Definição da variável e do tipo Exception
        Begin
          vEnviado := False;

          vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + e.Message;
          application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);

          SMTP.Disconnect;
          sleep(1000);

          If SMTP.Connected Then
            SMTP.Disconnect;
        End;
      End;
    Finally
    End;

    Result := vEnviado;

    plSutuacao.Caption := 'Email enviado!';

    application.ProcessMessages;
    sleep(1000);
    plemail.Visible := False;
    PlRodaPe.Visible := False;
    application.ProcessMessages;
  except

  end;
End;

procedure Tfraspd.IdFTP1Status(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  inherited;
  plSutuacao.Caption := 'Aguarde. Enviando ...';

  application.ProcessMessages;
end;

procedure Tfraspd.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  inherited;
  if plSutuacao.Caption = 'Aguarde. Enviando ...' then
    plSutuacao.Caption := 'Aguarde. Enviando'
  else if plSutuacao.Caption = 'Aguarde. Enviando' then
    plSutuacao.Caption := 'Aguarde. Enviando .'
  else if plSutuacao.Caption = 'Aguarde. Enviando .' then
    plSutuacao.Caption := 'Aguarde. Enviando ..'
  else if plSutuacao.Caption = 'Aguarde. Enviando ..' then
    plSutuacao.Caption := 'Aguarde. Enviando ...';
  mostra.Position := AWorkCount;
end;

procedure Tfraspd.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  mostra.max := vtamanho;
  mostra.Visible := true;
  mostra.Position := 0;
end;

procedure Tfraspd.Inicializar;
begin

  cfgemail.Close;
  cfgemail.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfgemail.Open;

  // Define configurações do servidor para envio de email.
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase(cfgcfgemailservidornfe.AsString); // 'smtp.live.com'; // 'smtp.gmail.com';
    Username := LowerCase(cfgcfgemailnfe.AsString); // 'email@hotmail.com'; // 'email@gmail.com';
    Password := Trim(cfgcfgemailsenhanfe.AsString); // 'senha';
    Port := cfgcfgmailportnfe.AsInteger; // 587; // 465;
    case cfgcfgemailusatls.AsInteger of
      0:
        UseTLS := UtNoTLSSupport;
      1:
        UseTLS := UtUseExplicitTLS;
      2:
        UseTLS := UtUseImplicitTLS;
      3:
        UseTLS := UtUseRequireTLS;
    end;
    AuthType := SatDefault;
    ConnectTimeout := 10000;
    ReadTimeout := 10000;
  end;

  with IO_OpenSSL do
  begin
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := sslmClient;
  end;

  // fnfe.LerConfiguracao;
end;

procedure Tfraspd.IO_OpenSSLStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  inherited;
  plSutuacao.Caption := AStatusText;
  application.ProcessMessages;
end;

procedure Tfraspd.IO_OpenSSLStatusInfo(const AMsg: string);
begin
  inherited;
  plSutuacao.Caption := AMsg;
  application.ProcessMessages;

end;

procedure Tfraspd.IO_OpenSSLStatusInfoEx(ASender: TObject; const AsslSocket: PSSL; const AWhere, Aret: Integer; const AType, AMsg: string);
begin
  inherited;
  plSutuacao.Caption := AMsg;
  application.ProcessMessages;
end;

procedure Tfraspd.RegistraAtualizacao;
begin

  try
    // conecta ao banco remoto
    mizioonline.Disconnect;
    mizioonline.Connect;
  except
    // exit;
  end;

  try
    // salva registro da verificacao da contigencia
    mizio_gab.Close;
    mizio_gab.Connection := mizioonline;
    mizio_gab.Params[0].AsString := sonumeros(cfgetddoc1.AsString);
    mizio_gab.Open;

    if mizio_gab.IsEmpty then
      mizio_gab.Append
    else
      mizio_gab.Edit;

    mizio_gabmizio_gabdoc1.AsString := sonumeros(cfgetddoc1.AsString);
    mizio_gabmizio_gabnome.AsString := cfgetdapelido.AsString;
    mizio_gabmizio_gabenviosped.AsString := FormatDateTime('yy-mm-dd hh:nn:ss', strtodatetime(agora(application, zcone)));

    mizio_gab.post;

  except

  end;

end;

procedure Tfraspd.SMTPConnected(Sender: TObject);
begin
  inherited;
  plSutuacao.Caption := 'Conectado ...';
  application.ProcessMessages;
end;

procedure Tfraspd.SMTPDisconnected(Sender: TObject);
begin
  inherited;
  plSutuacao.Caption := 'Descconectado ...';
  application.ProcessMessages;
end;

procedure Tfraspd.SMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
begin
  inherited;

  VContinue := true;
end;

procedure Tfraspd.SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  inherited;
  if plSutuacao.Caption = 'Aguarde. Enviando ...' then
    plSutuacao.Caption := ''
  else
    plSutuacao.Caption := 'Aguarde. Enviando ...';

  application.ProcessMessages;

end;

procedure Tfraspd.SMTPTLSNotAvailable(ASender: TObject; var VContinue: Boolean);
begin
  inherited;

  SMTP.UseTLS := UtNoTLSSupport;
  VContinue := true;
end;

procedure Tfraspd.SMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  inherited;

  IF AWorkMode = wmWrite THEN
  BEGIN

    mostra.Position := AWorkCount;
  END;

  if plSutuacao.Caption = 'Aguarde. Enviando ...' then
    plSutuacao.Caption := 'Aguarde. Enviando'
  else if plSutuacao.Caption = 'Aguarde. Enviando' then
    plSutuacao.Caption := 'Aguarde. Enviando .'
  else if plSutuacao.Caption = 'Aguarde. Enviando .' then
    plSutuacao.Caption := 'Aguarde. Enviando ..'
  else if plSutuacao.Caption = 'Aguarde. Enviando ..' then
    plSutuacao.Caption := 'Aguarde. Enviando ...';

  application.ProcessMessages;

end;

procedure Tfraspd.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  IF AWorkMode = wmWrite THEN
  BEGIN
    mostra.max := 35000000;
  END;
end;

end.
