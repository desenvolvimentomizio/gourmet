unit uFprinciEnvioXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor,
  Data.DB, DBAccess, Uni, Inifiles, MemDS, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, IdComponent, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdAttachment, Vcl.ComCtrls, IdAttachmentFile, IdAntiFreezeBase,Wininet,
  System.Zip, ACBrBase, ACBrDFe, ACBrNFe, IdIntercept, IdSSLOpenSSLHeaders, dateutils, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXCtrls, IdFTP, IdFTPCommon, IdAntiFreeze, IdZLibCompressorBase,
  IdCompressorZLib, IdIOHandlerStream;

type
  TFprinciEnvioXML = class(TForm)
    Conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    consulta: TUniQuery;
    cfg: TUniQuery;
    inicializa: TTimer;
    ctd: TUniQuery;
    cfgmnfe: TUniQuery;
    ctdctdcodigo: TIntegerField;
    ctdctdidentificacao: TStringField;
    ctdctdemail: TStringField;
    ctdctdboxedominio: TStringField;
    cfgmnfecfgcodigo: TIntegerField;
    cfgmnfecfgemailnfe: TStringField;
    cfgmnfecfgemailservidornfe: TStringField;
    cfgmnfecfgemailsenhanfe: TStringField;
    cfgmnfecfgemailusatls: TStringField;
    btEnviar: TSpeedButton;
    btFechar: TSpeedButton;
    Label3: TLabel;
    cbAno: TComboBox;
    Label4: TLabel;
    cbMes: TComboBox;
    Label1: TLabel;
    ctdemail: TDBEdit;
    Dctd: TDataSource;
    mes: TUniQuery;
    mesmeschave: TIntegerField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mesmesarqxml: TBlobField;
    mesmesemitente: TStringField;
    mesmesprotocolo: TStringField;
    mesmesdatanfe: TDateField;
    mestemcodigo: TIntegerField;
    mesmesobs: TStringField;
    mesmescoocupom: TIntegerField;
    mesmesccfcupom: TIntegerField;
    mesmesdatacupom: TDateField;
    mestdecodigo: TIntegerField;
    mesmesinclusao: TDateTimeField;
    mesmeschaverecla: TIntegerField;
    logo: TImage;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    IdAntiFreeze1: TIdAntiFreeze;
    mostraemail: TProgressBar;
    LlMsgEmail: TLabel;
    cfgcfgidentificacao: TStringField;
    cfgcfgcodigo: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumeronfce: TIntegerField;
    cfgcfgserienfce: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgnumecertif: TStringField;
    cfgcfgsenhacertificado: TStringField;
    cfgcfgmodonfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
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
    cfgcfgusanfc: TIntegerField;
    FECHAR: TTimer;
    ACBrNFe: TACBrNFe;
    mensas: TMemo;
    mensagens: TStatusBar;
    btValidar: TButton;
    UniSQLMonitor: TUniSQLMonitor;
    Dmes: TDataSource;
    DBGrid1: TDBGrid;
    mesmesregistro: TDateField;
    PlRodaPe: TPanel;
    plemail: TPanel;
    Image3: TImage;
    plSutuacao: TPanel;
    mostra: TProgressBar;
    cfgemail: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    StringField5: TStringField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    IntegerField26: TIntegerField;
    cfgemailctdemail: TStringField;
    uqtabela: TUniQuery;
    uqtabelaspdchave: TIntegerField;
    uqtabelaspdexercicio: TIntegerField;
    uqtabelaspddatainicial: TDateField;
    uqtabelaspddatafinal: TDateField;
    uqtabelaspddatabalanco: TDateField;
    uqtabelaspdativo: TIntegerField;
    uqtabelaativo: TStringField;
    uqtabelaspdregistro: TDateTimeField;
    uqtabelaspdenvio: TDateTimeField;
    uqtabelaspdpasta: TStringField;
    IdFTP1: TIdFTP;
    IdIOHandlerStream1: TIdIOHandlerStream;
    IdCompressorZLib1: TIdCompressorZLib;
    procedure inicializaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure SMTPConnected(Sender: TObject);
    procedure SMTPDisconnected(Sender: TObject);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure FECHARTimer(Sender: TObject);
    procedure btValidarClick(Sender: TObject);
    procedure SMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure SMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
    procedure SMTPTLSNotAvailable(ASender: TObject; var VContinue: Boolean);
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
  private
    Function conectabanco: Boolean;
    function EnvioXML(destino, copias, texto, assunto, Zip, nome_cliente, nome_empresa: String): Boolean;
    procedure AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
    procedure criaZip(vIdCli: string; vPasta: string);
    procedure processaarquivos(vPasta: string);
    procedure Inicializar;
    function EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    function EnviaEmail(vArqZip: String; vSPEDArq: String; vPeriodo: String; vTipo: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
    vtamanho: Integer;
  end;

var
  FprinciEnvioXML: TFprinciEnvioXML;

implementation

{$R *.dfm}

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

Function SoNumeros(Const texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To Length(texto) Do
  Begin
    If (texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(texto, i, 1);
    End;
  End;
  Result := S;
End;

procedure TFprinciEnvioXML.btEnviarClick(Sender: TObject);
var
  dire: string;
  vlIdCli: string;
  vlAssunto: string;
  vlTexto: string;
  vlZip_nfe: string;
  vlZip_nfce: string;
  i: Integer;
  TextoNFE: TStringList;
  E: Integer;
  C: Integer;
  TextoNFCe: TStringList;
begin

  // try
if InternetCheckConnection('https://www.terra.com.br/', 1, 0) then
 begin
   if ctd.State <> dsbrowse then
    ctd.post;

  if ctdemail.Field.AsString = '' then
  begin
    showmessage('Verifique a configuração da empresa no sistema!');
    exit;
  end;

  if cbAno.Text = '' then
  begin
    showmessage('Verifique o ANO do movimento!');
    exit;
  end;

  if cbMes.Text = '' then
  begin
    showmessage('Verifique o MêS do movimento!');
    exit;
  end;

  dire := extractfilepath(application.ExeName) + 'xmls-contabilidade\' + cbAno.Text + '_' + cbMes.Text;

  vlIdCli := SoNumeros(trim(cfgetddoc1.AsString));

  criaZip(vlIdCli, dire);

  TextoNFE := TStringList.Create;
  TextoNFCe := TStringList.Create;

  TextoNFE.Add(vlIdCli + '-' + cbAno.Text + cbMes.Text + '_nfe.zip' + #13);
  TextoNFCe.Add(vlIdCli + '-' + cbAno.Text + cbMes.Text + '_nfce.zip' + #13);

  for i := 1 to 35 do
  begin
    vlZip_nfe := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfe.zip';
    if fileexists(vlZip_nfe) then
      TextoNFE.Add(vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfe.zip' + #13)

  end;
  E := TextoNFE.Count - 1;
  if E = 0 then
    E := 1;

  for i := 1 to 35 do
  begin
    vlZip_nfce := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfce.zip';
    if fileexists(vlZip_nfce) then
      TextoNFCe.Add(vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfce.zip' + #13)
  end;
  C := TextoNFCe.Count - 1;
  if C = 0 then
    C := 1;

  vlAssunto := 'XMLs NFE emitidos da empresa: ' + cbMes.Text + '/' + cbAno.Text + ' ' + cfgcfgidentificacao.AsString + ' - Arquivo 001 de ' +
    formatfloat('000', E);
  vlTexto := 'Bom dia.' + #13 + #10 + 'Segue, em anexo, os XMLs dos documentos fiscais emitidos do periodo de: ' + cbMes.Text + '/' + cbAno.Text +
    ' pela empresa ' + cfgcfgidentificacao.AsString + #13 + #10 + #13 + #10 + 'Lista Geral de Arquivos: ' + TextoNFE.Text + #13 + #10 + 'Muito Obrigado.';
  vlZip_nfe := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_nfe.zip';

  { if fileexists(vlZip_nfe) then
    EnviarEmail(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip_nfe, '', cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString); }

  vlAssunto := 'XMLs NFCEs emitidos da empresa: ' + cbMes.Text + '/' + cbAno.Text + ' ' + cfgcfgidentificacao.AsString + ' - Arquivo 001 de ' +
    formatfloat('000', C);
  vlTexto := 'Bom dia.' + #13 + #10 + 'Segue, em anexo, os XMLs dos documentos fiscais emitidos do periodo de: ' + cbMes.Text + '/' + cbAno.Text +
    ' pela empresa ' + cfgcfgidentificacao.AsString + #13 + #10 + #13 + #10 + 'Lista Geral de Arquivos:' + TextoNFCe.Text + #13 + #10 + 'Muito Obrigado.';
  vlZip_nfce := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_nfce.zip';

  { if fileexists(vlZip_nfce) then
    EnviarEmail(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip_nfce, '', cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString); }

  { EnvioXML(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip, cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString)

    for i := 1 to 35 do
    begin
    vlZip_nfe := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfe.zip';
    if fileexists(vlZip_nfe) then
    begin
    vlAssunto := 'XMLs NFE emitidos da empresa: ' + cbMes.Text + '/' + cbAno.Text + ' ' + cfgcfgidentificacao.AsString + ' - Arquivo 001 de ' +
    formatfloat('000', E);
    vlTexto := 'Bom dia.' + #13 + #10 + 'Segue, em anexo, os XMLs dos documentos fiscais emitidos do periodo de: ' + cbMes.Text + '/' + cbAno.Text +
    ' pela empresa ' + cfgcfgidentificacao.AsString + #13 + #10 + #13 + #10 + 'Lista Geral de Arquivos: ' + TextoNFE.Text + #13 + #10 + 'Muito Obrigado.';

    EnviarEmail(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip_nfe, '', cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString);
    end;
    end; }

 if fileexists(vlZip_nfe) then
  EnviaEmail(vlZip_nfe, '', cbMes.Text + '/' + cbAno.Text, ' NFE ');

  // EnvioXML(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip_nfe { vlZip } , cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString);

  { for i := 1 to 35 do
    begin
    vlZip_nfce := dire + vlIdCli + '-' + cbAno.Text + cbMes.Text + '_' + formatfloat('000', i) + '_nfce.zip';
    if fileexists(vlZip_nfce) then
    begin
    vlAssunto := 'XMLs NFCEs emitidos da empresa: ' + cbMes.Text + '/' + cbAno.Text + ' ' + cfgcfgidentificacao.AsString + ' - Arquivo 001 de ' +
    formatfloat('000', C);
    vlTexto := 'Bom dia.' + #13 + #10 + 'Segue, em anexo, os XMLs dos documentos fiscais emitidos do periodo de: ' + cbMes.Text + '/' + cbAno.Text +
    ' pela empresa ' + cfgcfgidentificacao.AsString + #13 + #10 + #13 + #10 + 'Lista Geral de Arquivos:' + TextoNFCe.Text + #13 + #10 + 'Muito Obrigado.';

    EnviarEmail(ctdemail.Field.AsString, '', vlTexto, vlAssunto, vlZip_nfce, '', cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString);
    end;
    end; }
 if fileexists(vlZip_nfce) then
  EnviaEmail(vlZip_nfce, '', cbMes.Text + '/' + cbAno.Text, ' NFCe ');

  // EnvioXML(ctdemail.Field.AsString, '', vlTexto, vlAssunto,vlZip_nfce { vlZip}, cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString);

  FECHAR.Enabled := true;

  if FECHAR.Enabled then
    showmessage('Email enviado com sucesso!');

  { except
    showmessage('Falha ao enviar Email dos documentos fiscais para contabilidade!');
    end; }

  btEnviar.Enabled := false;
  end
  else
  begin
    ShowMessage('Verifique sua conexão com a Internet');
  end;
 end;
  

function TFprinciEnvioXML.EnviaEmail(vArqZip: String; vSPEDArq: String; vPeriodo: String; vTipo: string): Boolean;
var
  emails: String;
  emailscc: string;
  narqzip: String;

  IdCli: string;
begin

  PlRodaPe.Visible := true;
  plemail.Visible := true;
  application.ProcessMessages;
 // try

    cfgemail.Close;
    cfgemail.Params[0].AsInteger := 1;
    cfgemail.Open;

    narqzip := vArqZip;

    emailscc := cfgctdboxedominio.AsString;
    emails := cfgemailctdemail.AsString;

    vtamanho := tbFileSize(narqzip);

    IdCli := SoNumeros(Self.cfgetddoc1.AsString);
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

      End;
      IdFTP1.Disconnect;
    except
      on E: Exception do
      begin
        showmessage('Mensagem: ' + E.Message);
      end;
    End;

    If EnviarEmail(emails, emailscc, 'Segue, abaixo, endereço para download dos arquivos de  XMLS emitidos pela empresa ' + cfgetdapelido.AsString +
      ' referentes ao periodo: ' + vPeriodo + #13 + #13 + #13 + 'Arquivos: ' + #13 + 'http://www.miziosistemas.com.br/arquivos/' + IdCli + '/' +
      extractfilename(vArqZip) + #13 + #13 + #13 + 'Contato para maiores esclarecimentos: sac@miziosistemas.com.br',
      ' XMLS das '+vtipo+' da empresa: ' + cfgetdapelido.AsString, '', '', '', cfgetdapelido.AsString) Then
    begin
      application.MessageBox(PChar('Email enviado com sucesso para Contabilidade.' + #13 + 'Email: ' + emails + #13 + 'Cópias: ' + emailscc), 'ENVIO CONCLUÍDO',
        MB_OK + MB_ICONINFORMATION);

    end;


 { except

  end;}

  plemail.Visible := false;
  PlRodaPe.Visible := false;
  application.ProcessMessages;

end;

procedure TFprinciEnvioXML.IdFTP1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  plSutuacao.Caption := 'Aguarde. Enviando ...';
mensas.Lines.Add(AStatusText);
  application.ProcessMessages;
end;

procedure TFprinciEnvioXML.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
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

procedure TFprinciEnvioXML.IdFTP1WorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  mostra.max := AWorkCountMax;
  mostra.Visible := true;
  mostra.Position := 0;
  application.ProcessMessages;

end;

procedure TFprinciEnvioXML.Inicializar;
begin

  cfg.Open;

  // Define configurações do servidor para envio de email.
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase(cfgcfgemailservidornfe.AsString); // 'smtp.live.com'; // 'smtp.gmail.com';
    Username := LowerCase(cfgcfgemailnfe.AsString); // 'email@hotmail.com'; // 'email@gmail.com';
    Password := trim(cfgcfgemailsenhanfe.AsString); // 'senha';
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

{

  procedure TFprinciEnvioXML.Inicializar;
  begin
  with SMTP do
  begin
  IOHandler := IO_OpenSSL;
  Host := LowerCase('mail.miziosistemas.COM.BR');
  Username := LowerCase('nfe@miziosistemas.com.br');
  Password := trim('574jit5s');
  Port := 587;
  UseTLS := utUseRequireTLS;
  AuthType := SatDefault;
  ConnectTimeout := 50000;
  ReadTimeout := 50000;
  end;

  with IO_OpenSSL do
  begin
  SSLOptions.Method := sslvSSLv23;
  SSLOptions.Mode := SslmClient;
  end;
  end; }

procedure TFprinciEnvioXML.processaarquivos(vPasta: string);
var
  vlNomeArq: string;

  vlNfeIni: Integer;
  vlNfeFin: Integer;
  vlNfeAtu: Integer;

  vlNfceIni: Integer;
  vlNfceFin: Integer;
  vlNfceAtu: Integer;

  vlNumeNFe: TStringList;
  vlNumeNFCe: TStringList;
  i: Integer;
  vlPrimeiroDia: string;
  vlUltimoDia: string;

begin
  LlMsgEmail.Caption := 'Analisando arquivos';
  application.ProcessMessages;

  vlNumeNFe := TStringList.Create;
  vlNumeNFCe := TStringList.Create;

  consulta.Close;
  consulta.SQL.Text := 'SELECT DATE_ADD(' + 'DATE(' + QuotedStr(cbAno.Text + '-' + cbMes.Text + '-01') + ')' + ', INTERVAL 0 MONTH) AS primeirodia, ' +
    ' date(LAST_DAY(DATE(' + QuotedStr(cbAno.Text + '-' + cbMes.Text + '-01') + '))) AS  ultimodia ';
  consulta.Open;

  vlPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
  vlUltimoDia := consulta.FieldByName('ultimodia').AsString;
  if mes.Active then
    mes.Close;

  mes.Params[0].AsString := '0';
  mes.ParamByName('datainicial').AsDate := consulta.FieldByName('primeirodia').AsFloat;
  mes.ParamByName('datafinal').AsDate := consulta.FieldByName('ultimodia').AsFloat;
  mes.Open;

  mes.Filter := 'tdfcodigo=' + QuotedStr('55');
  mes.Filtered := true;

  mes.First;
  mensas.Lines.Add('Primeira NFE do Mes: ' + mesmesnumero.AsString);
  vlNfeIni := mesmesnumero.AsInteger;

  mes.Last;
  mensas.Lines.Add('Última   NFE do Mes: ' + mesmesnumero.AsString);
  vlNfeFin := mesmesnumero.AsInteger;

  for i := vlNfeIni to vlNfeFin do
  begin
    vlNumeNFe.Add(formatfloat('00000000', i) + ' ');
  end;

  mes.Filter := 'tdfcodigo=' + QuotedStr('65');
  mes.Filtered := true;
  mes.First;
  mensas.Lines.Add('Primeira NFCE do Mes: ' + mesmesnumero.AsString);
  vlNfceIni := mesmesnumero.AsInteger;

  mes.Last;
  mensas.Lines.Add('Última   NFCE do Mes: ' + mesmesnumero.AsString);
  vlNfceFin := mesmesnumero.AsInteger;

  for i := vlNfceIni to vlNfceFin do
  begin
    vlNumeNFCe.Add(formatfloat('00000000', i) + ' ');
  end;

  mes.Filter := '';
  mes.Filtered := false;

  mes.First;
  mostraemail.Position := 0;
  mostraemail.Max := mes.RecordCount;

  if not DirectoryExists(vPasta + '\nfe') then
    ForceDirectories(vPasta + '\nfe');

  if not DirectoryExists(vPasta + '\nfce') then
    ForceDirectories(vPasta + '\nfce');

  if not DirectoryExists(vPasta + '\xml-semprotocolo') then
    ForceDirectories(vPasta + '\xml-semprotocolo');

  mes.First;
  while not mes.Eof do
  begin

    // LlMsgEmail.Caption := mesmeschavenfe.AsString;
    mostraemail.Position := mostraemail.Position + 1;
    application.ProcessMessages;

    if mestdfcodigo.AsString = '55' then
    begin
      vlNomeArq := vPasta + '\nfe' + '\' + mesmeschavenfe.AsString + '-nfe.xml';

      if pos(formatfloat('00000000', mesmesnumero.AsInteger), vlNumeNFe.Text) = 0 then
        mensas.Lines.Add('NFE não localizada: ' + formatfloat('00000000', mesmesnumero.AsInteger));

      if (mes.FieldByName('mesarqxml') as TBlobField).AsString <> '' then
      begin
        (mes.FieldByName('mesarqxml') as TBlobField).SaveToFile(vlNomeArq);

        ACBrNFe.NotasFiscais.LoadFromFile(vlNomeArq);

        if ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then
        begin
          mensas.Lines.Add('Verificar PROTOCOLO NFE: ' + ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID);
          copyfile(pwideChar(vlNomeArq), pwideChar(StringReplace(vlNomeArq, '\nfe', '\xml-semprotocolo', [rfReplaceAll, rfIgnoreCase])), true);
        end;

      end
      else
        mensas.Lines.Add('Erro mesarqxml: ' + mesmeschave.AsString);

    end;
    mes.Next;
  end;

  for i := vlNfeIni to vlNfeFin do
  begin

    if not mes.Locate('mesnumero', i, []) then
    begin
      mensas.Lines.Add('Numeração falante: ' + formatfloat('00000000', i));
    end;

  end;

  mostraemail.Position := 0;
  mes.First;
  while not mes.Eof do
  begin
    // LlMsgEmail.Caption := mesmeschavenfe.AsString;
    mostraemail.Position := mostraemail.Position + 1;

    application.ProcessMessages;

    if mestdfcodigo.AsString = '65' then
    begin
      vlNomeArq := vPasta + '\nfce' + '\' + mesmeschavenfe.AsString + '-nfe.xml';

      if pos(formatfloat('00000000', mesmesnumero.AsInteger), vlNumeNFCe.Text) = 0 then
        mensas.Lines.Add('NFCe não localizada: ' + formatfloat('00000000', mesmesnumero.AsInteger));

      if (mes.FieldByName('mesarqxml') as TBlobField).AsString <> '' then
      begin
        (mes.FieldByName('mesarqxml') as TBlobField).SaveToFile(vlNomeArq);

        ACBrNFe.NotasFiscais.LoadFromFile(vlNomeArq);

        if ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then
        begin
          mensas.Lines.Add('Verificar PROTOCOLO NFE: ' + ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID);
          copyfile(pwideChar(vlNomeArq), pwideChar(StringReplace(vlNomeArq, '\nfce', '\xml-semprotocolo', [rfReplaceAll, rfIgnoreCase])), true);
        end
        else
        begin
          if ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat <> 100 then
          begin
            mensas.Lines.Add('Verificar STATUS NFE: ' + ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID + ' STATUS: ' +
              InttoStr(ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat));
          end;

        end;
      end
      else
        mensas.Lines.Add('Erro xml vazio mesarqxml: ' + mesmeschave.AsString);

    end;
    mes.Next;
  end;

  mes.First;
  for i := vlNfceIni to vlNfceFin do
  begin
    if not mes.Locate('mesnumero', i, []) then
    begin
      mensas.Lines.Add('NFCe não localizada: ' + formatfloat('00000000', i));
    end;
  end;


  // xml recebidos

  { mes.close;
    mes.Params[0].AsString :='1';
    mes.Params[1].AsString := cbMes.Text;
    mes.Params[2].AsString := cbAno.Text;
    mes.Open;


    mes.First;
    while not mes.Eof do
    begin
    LlMsgEmail.Caption := mesmeschavenfe.AsString;
    mostraemail.Position := mostraemail.Position + 1;
    application.ProcessMessages;

    if mestdfcodigo.AsString = '55' then
    begin
    vlNomeArq := vPasta + '\xml-rec' + '\' + mesmeschavenfe.AsString + '-nfe.xml';

    if (mes.FieldByName('mesarqxml') as TBlobField).AsString <> '' then
    begin
    (mes.FieldByName('mesarqxml') as TBlobField).SaveToFile(vlNomeArq);
    end
    else
    mensas.Lines.Add('Erro mesarqxml: ' + mesmeschave.AsString);

    end;
    mes.Next;
    end; }

  mensas.Lines.Add('Concluido a validação!');
  mensas.Lines.SaveToFile(vPasta + '\log' + FormatDateTime('yyyymmdd', date) + FormatDateTime('hhnnss', now) + '.txt');
  Inicializar;
  // EnviarEmail('daniel@miziosistemas.com.br', '', mensas.Text, 'Envio XMLS', '', '', cfgcfgidentificacao.AsString, cfgcfgidentificacao.AsString);

end;

procedure TFprinciEnvioXML.SMTPConnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Conectado';
  mensas.Lines.Add(LlMsgEmail.Caption);
  application.ProcessMessages;

end;

procedure TFprinciEnvioXML.SMTPDisconnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Desconectado';
  mensas.Lines.Add(LlMsgEmail.Caption);
    application.ProcessMessages;
end;

procedure TFprinciEnvioXML.SMTPFailedRecipient(Sender: TObject; const AAddress, ACode, AText: string; var VContinue: Boolean);
begin
  mensas.Lines.Add(AText);
    application.ProcessMessages;
end;

procedure TFprinciEnvioXML.SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  mensas.Lines.Add('Situacao: ' + AStatusText);

  LlMsgEmail.Caption := AStatusText;
  application.ProcessMessages;
end;

procedure TFprinciEnvioXML.SMTPTLSNotAvailable(ASender: TObject; var VContinue: Boolean);
begin
  mensas.Lines.Add(LlMsgEmail.Caption);
  application.ProcessMessages;
end;

procedure TFprinciEnvioXML.SMTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  // mensas.Lines.Add(LlMsgEmail.Caption);

end;

procedure TFprinciEnvioXML.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  LlMsgEmail.Caption := 'Inicio do Envio';
  mensas.Lines.Add(LlMsgEmail.Caption);
    application.ProcessMessages;
end;

procedure TFprinciEnvioXML.SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  LlMsgEmail.Caption := 'Final do Envio';
  mensas.Lines.Add(LlMsgEmail.Caption);
  application.ProcessMessages;
end;

procedure TFprinciEnvioXML.criaZip(vIdCli: string; vPasta: string);
var
  vArqBaseXMLProp: string;
  vlIdCli: string;
  ZipFile: TZipFile;
  vlRetorno: Integer;
  vlFSearch: TSearchRec;
  vlNomeArq: string;
begin

  vArqBaseXMLProp := vPasta + vIdCli + '-' + cbAno.Text + cbMes.Text + '_nfe.zip';

  if fileexists(vArqBaseXMLProp) then
    DeleteFile(vArqBaseXMLProp);

   { try

    with ZipForge do
    begin

    // Set the name of the archive file we want to create
    FileName := vArqBaseXMLProp;
    // Because we create a new archive,
    // we set Mode to fmCreate
    OpenArchive(fmCreate);
    // Set base (default) directory for all archive operations
    BaseDir := vPasta + '\nfe\';
    // Add the c:\Test folder to the archive with all subfolders
    AddFiles(vPasta + '\nfe\' + '*-nfe.xml');

    CloseArchive();

    end;

    except
    on E: Exception do
    begin
    Writeln('Exception: ', E.Message);
    // Wait for the key to be pressed
    Readln;
    end;
    end;

    vArqBaseXMLProp := vPasta + vIdCli + '-' + cbAno.Text + cbMes.Text + '_nfce.zip';

    if fileexists(vArqBaseXMLProp) then
    DeleteFile(vArqBaseXMLProp);

    try
    with ZipForge do
    begin
    // Set the name of the archive file we want to create
    FileName := vArqBaseXMLProp;
    // Because we create a new archive,
    // we set Mode to fmCreate
    OpenArchive(fmCreate);
    // Set base (default) directory for all archive operations
    BaseDir := vPasta + '\nfce\';
    // Add the c:\Test folder to the archive with all subfolders
    AddFiles(vPasta + '\nfce\' + '*-nfe.xml');

    CloseArchive();

    end;
    except
    on E: Exception do
    begin
    Writeln('Exception: ', E.Message);
    // Wait for the key to be pressed
    Readln;
    end;
    end;}

  ZipFile := TZipFile.Create; // Zipfile: TZipFile

  try
    ZipFile.Open(vArqBaseXMLProp, zmWrite);

    vlRetorno := FindFirst(vPasta + '\nfe\*.xml', faAnyFile, vlFSearch);
    // NFE
    while vlRetorno = 0 do
    begin
      If (vlFSearch.Attr And faDirectory) <> faDirectory Then
      Begin

        vlNomeArq := vPasta + '\nfe\' + vlFSearch.Name;
        ZipFile.Add(vlNomeArq, '\nfe\'+extractfilename(vlNomeArq), zcDeflate);

      End;
      vlRetorno := FindNext(vlFSearch)
    end;

    // NFCE
    vlRetorno := FindFirst(vPasta + '\nfce\*.xml', faAnyFile, vlFSearch);

    while vlRetorno = 0 do
    begin
      If (vlFSearch.Attr And faDirectory) <> faDirectory Then
      Begin

        vlNomeArq := vPasta + '\nfce\' + vlFSearch.Name;
        ZipFile.Add(vlNomeArq, '\nfce\'+extractfilename(vlNomeArq),zcDeflate {zcStored});
        // ZipFile.Add(vlNomeArq);

      End;
      vlRetorno := FindNext(vlFSearch)
    end;

    ZipFile.Close;
  finally
    ZipFile.Free;
  end;


end;

procedure TFprinciEnvioXML.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFprinciEnvioXML.btValidarClick(Sender: TObject);
var
  dire: string;
  vlIdCli: string;
  vlAssunto: string;
  vlTexto: string;
  vlZip: string;
begin
  // try

  if ctd.State <> dsbrowse then
    ctd.post;

  if ctdemail.Field.AsString = '' then
  begin
    showmessage('Verifique a configuração da empresa no sistema!');
    exit;
  end;

  if cbAno.Text = '' then
  begin
    showmessage('Verifique o ANO do movimento!');
    exit;
  end;

  if cbMes.Text = '' then
  begin
    showmessage('Verifique o MêS do movimento!');
    exit;
  end;

  dire := extractfilepath(application.ExeName) + 'xmls-contabilidade\' + cbAno.Text + '_' + cbMes.Text;

  if not DirectoryExists(dire) then
    ForceDirectories(dire);

  processaarquivos(dire);

  vlIdCli := SoNumeros(trim(cfgetddoc1.AsString));

  { except
    showmessage('Falha ao enviar Email dos documentos fiscais para contabilidade!');
    end; }
  btValidar.Enabled := false;
  btEnviar.Enabled := true;

end;

function TFprinciEnvioXML.conectabanco: Boolean;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
Begin
  Result := false;
  try
    arquini := TIniFile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
    With arquini Do
    Begin
      vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
      vservidor := ReadString('posi', 'servidor', '127.0.0.1');
      vusuario := ReadString('posi', 'usuario', 'root');
      vsenha := ReadString('posi', 'senha', 'xda973');
      vportabanco := ReadString('posi', 'portabanco', '3306');
    End;
    arquini.Free;

    Conexao.Connected := false;
    Conexao.Database := vnomebanco;
    Conexao.Username := vusuario;
    Conexao.Password := vsenha;
    Conexao.Port := StrToInt(vportabanco);
    Conexao.Server := vservidor;
    Conexao.Connected := true;

    (* Chama execução dos Scripts e CSVs *)

    consulta.Connection := Conexao;
    consulta.SQL.Text := 'SELECT max(vdbversao) FROM vdb';
    consulta.Open;

    mensagens.Panels[0].Text := 'IP: ' + vservidor;
    mensagens.Panels[1].Text := 'BD: ' + vnomebanco + '-' + consulta.Fields[0].AsString;
    cfg.Connection := Self.Conexao;
    cfg.Open;

    if cfgcfgmodonfe.AsInteger = 1 then
    begin
      mensagens.Panels[2].Text := 'NFe: ' + 'Produção';

    end
    else if cfgcfgmodonfe.AsInteger = 2 then
    begin
      mensagens.Panels[2].Text := 'NFe: ' + 'Homologação';

    end
    else
    begin
      mensagens.Panels[2].Text := 'NFe: ' + cfgcfgmodonfe.AsString + ' verificar';

    end;

    consulta.Close;

    Result := true;
  except
    Result := false;

  end;

End;

procedure TFprinciEnvioXML.FECHARTimer(Sender: TObject);
begin
  FECHAR.Enabled := false;
  // close;
end;

procedure TFprinciEnvioXML.FormShow(Sender: TObject);
begin
  inicializa.Enabled := true;
end;

procedure TFprinciEnvioXML.inicializaTimer(Sender: TObject);
begin
  inicializa.Enabled := false;
  if conectabanco = false then
  begin
    showmessage('Não foi possível conectar ao banco de dados!');
    application.Terminate;
  end
  else
  begin
    ctd.Open;
    ctd.Edit;
  end;
end;

Procedure TFprinciEnvioXML.AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
begin
  mostraemail.Position := Posicao;
  LlMsgEmail.Caption := Mensagem;
  sleep(10);
end;

Function TFprinciEnvioXML.EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
  vlMensagemErro, vlDiretorioErro: String;

Begin
  mostraemail.Position := 0;
  mostraemail.Max := 10;

  vEnviado := false;
  Result := vEnviado;

  if trim(cfgcfgemailnfe.AsString) = '' then
  begin
    application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'),
      'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  if (trim(destino) = '') and (trim(copias) = '') then
  begin
    application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  mostraemail.Visible := true;

  AtualizaMensagemEmail(1, 'Cerregando configuração.');

  Try
    AtualizaMensagemEmail(2, 'Criando mensagem.');

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto; // Corpo da mensagem.
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias+';'+'sac@miziosistemas.com.br'; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino
    IdMessage1.ReceiptRecipient.Text := 'sac@miziosistemas.com.br';
    AtualizaMensagemEmail(3, 'Anexando XML');

    if fileexists(xml) then
      Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml);

    AtualizaMensagemEmail(4, 'Anexando PDF');

    mostraemail.Repaint;

    if fileexists(pdf) then
      Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf);

    AtualizaMensagemEmail(5, 'Conectando...');

    // Conectando e enviando
    Try
      SMTP.Connect; // Inicia conexão

      AtualizaMensagemEmail(6, 'Iniciando protocolo');

      If SMTP.Connected Then
      Begin
        AtualizaMensagemEmail(7, 'Conectado ao servidor de email');

        SMTP.Send(IdMessage1); // Se conectado envia email
        sleep(2000);
        AtualizaMensagemEmail(8, 'Enviando. Aguarde ...');

        vEnviado := true;

        SMTP.Disconnect; // Desconecta

        AtualizaMensagemEmail(9, 'Desconectado');

        Attachmentxml.Free;
        Attachmentpdf.Free;
      End;
    Except
      On E: Exception Do // Definição da variável e do tipo Exception
      Begin
        vEnviado := false;

        // vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + E.Message;
        // application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);
        mensas.Lines.Add('Nova Tentativa: ' + vlMensagemErro);
        SalvarLogErro(E.Message, E.StackTrace);

        SMTP.Disconnect;
        sleep(3000);

        If SMTP.Connected Then
          SMTP.Disconnect;
      End;
    End;
  Finally
    AtualizaMensagemEmail(10, 'Final do envio. Aguarde processamento ...');
  End;

  Result := vEnviado;
End;

procedure TFprinciEnvioXML.SalvarLogErro(eMessage, eStackTrace: String);
begin
end;

Function TFprinciEnvioXML.EnvioXML(destino, copias, texto, assunto, Zip, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
Begin

  mostraemail.Max := 10;
  mostraemail.Position := 0;
  application.ProcessMessages;
  vEnviado := false;
  Result := vEnviado;

  if trim(ctdemail.Field.AsString) = '' then
  begin
    application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'),
      'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  if (trim(destino) = '') and (trim(copias) = '') then
  begin
    application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    exit;
  end;

  mostraemail.Visible := true;

  AtualizaMensagemEmail(1, 'Cerregando configuração.');

  Try
    AtualizaMensagemEmail(2, 'Criando mensagem.');

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto; // Corpo da mensagem.
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(ctdemail.Field.AsString); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino

    AtualizaMensagemEmail(3, 'Anexando ZIP');

    if fileexists(Zip) then
      Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, Zip);

    AtualizaMensagemEmail(4, 'Anexando ZIP');

    mostraemail.Repaint;

    AtualizaMensagemEmail(5, 'Conectando...');

    // Conectando e enviando
    Try
      SMTP.Connect; // Inicia conexão

      AtualizaMensagemEmail(6, '');

      If SMTP.Connected Then
      Begin
        AtualizaMensagemEmail(7, '');

        SMTP.Send(IdMessage1); // Se conectado envia email

        AtualizaMensagemEmail(8, '');

        vEnviado := true;
        SMTP.Disconnect; // Desconecta

        AtualizaMensagemEmail(9, '');

        Attachmentxml.Free;
        Attachmentpdf.Free;
      End;
    Except
      On E: Exception Do // Definição da variável e do tipo Exception
      Begin
        vEnviado := false;

        application.MessageBox(PChar('Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + E.Message), 'Erro Envio de Email',
          MB_OK + MB_ICONERROR);

        SMTP.Disconnect;
        sleep(1000);

        If SMTP.Connected Then
          SMTP.Disconnect;
      End;
    End;
  Finally
    AtualizaMensagemEmail(10, '');
  End;

  Result := vEnviado;
End;

end.
