unit ufEnvioXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, inifiles,
  ACBrNFe, Data.DB, MemDS, pcnConversao, System.Zip,
  ufuncoes, IdComponent, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdAttachment, Vcl.ComCtrls, IdAttachmentFile, IdAntiFreezeBase,
  Vcl.IdAntiFreeze, ComObj, ACBrBase, ACBrDFe, ACBrUtil;

type
  TfEnvioXML = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bfechar: TBitBtn;
    PlTitulo: TPanel;
    Label1: TLabel;
    edemail: TEdit;
    mmObs: TMemo;
    Label2: TLabel;
    ACBrNFe: TACBrNFe;
    Label3: TLabel;
    cbAno: TComboBox;
    cbMes: TComboBox;
    Label4: TLabel;
    mArqProcessar: TMemo;
    mNumeros: TMemo;
    mNumeroErro: TMemo;
    mNumerosFaltantes: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    mostraemail: TProgressBar;
    LlMsgEmail: TLabel;
    Label7: TLabel;
    edcnpj: TEdit;
    IdAntiFreeze1: TIdAntiFreeze;
    Button1: TButton;
    nfcesefaz: TMemo;
    EdNomeArquivo: TEdit;
    Button2: TButton;
    FileOpenDialog: TFileOpenDialog;
    btprocessar: TButton;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure edemailExit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure edcnpjExit(Sender: TObject);
    procedure SMTPConnected(Sender: TObject);
    procedure SMTPDisconnected(Sender: TObject);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btprocessarClick(Sender: TObject);
  private
    procedure LeConfigINI;
    procedure SalvaConfigINI;
    function ConsultaNFCe(vArqNFCe: String): Boolean;
    procedure LocalizaArquivos(vPasta: string);
    procedure ValidaArquivos;
    function mizioLerConfiguracao: Boolean;
    function mizioLerConfiguracaoDAV: Boolean;
    procedure OrdenaMemo(Lines: TStrings);
    procedure VerificaNotasFaltantes;
    procedure criaZip(vPasta: string; vTipo: string);
    function EnvioXML(destino, copias, texto, assunto, Zip, nome_cliente, nome_empresa: String): Boolean;
    procedure AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
    procedure Inicializar;
    procedure PuxarDadosXLS;

    { Private declarations }
  public
    { Public declarations }
    vpDirApp: string;
    vpDirNFEs: string;
    vpDirNFCEs: string;
    vpemailfiscal: string;
    vpnomeempresa: string;

  end;

var
  fEnvioXML: TfEnvioXML;
  Excel: OleVariant;

implementation

{$R *.dfm}

procedure TfEnvioXML.bconfirmaClick(Sender: TObject);
var
  vlPastaProcessar: string;
  Zip: string;
  vlRnis: string;
begin
  if edemail.Text = '' then
  begin
    ShowMessage('Favor informar o email de destino!');
    Exit;
  end;

  if edcnpj.Text = '' then
  begin
    ShowMessage('Favor informar a identificação da empresa de destino!');
    Exit;
  end;

  SalvaConfigINI;

  Inicializar;

  vlPastaProcessar := vpDirNFEs + '\' + cbAno.Text + cbMes.Text;

  Zip := self.vpDirNFEs + '\' + self.cbAno.Text + self.cbMes.Text + '\ctb\' + vpnomeempresa + '-' + 'NFEs' + '-' + cbAno.Text + cbMes.Text + '.zip';

  EnvioXML(self.edemail.Text, '', 'Notas Fiscais Eletronicas emitidas no periodo: ' + self.cbMes.Text + '/' + self.cbAno.Text + #13 + #13 +
    mmObs.Lines.Text + #13 + #13, 'NFEs de ' + vpnomeempresa, Zip, vpnomeempresa, vpnomeempresa);

  vlPastaProcessar := vpDirNFCEs + '\' + cbAno.Text + cbMes.Text;

  Zip := self.vpDirNFCEs + '\' + self.cbAno.Text + self.cbMes.Text + '\ctb\' + vpnomeempresa + '-' + 'NFCEs' + '-' + cbAno.Text + cbMes.Text + '.zip';

  EnvioXML(self.edemail.Text, '', 'Notas Fiscais Consumidor Eletronicas emitidas no periodo: ' + self.cbMes.Text + '/' + self.cbAno.Text + #13 + #13 +
    mmObs.Lines.Text + #13 + #13 + vlRnis, 'NFCEs de ' + vpnomeempresa, Zip, vpnomeempresa, vpnomeempresa);

  ShowMessage('Processamento concluído.');

end;

Function TfEnvioXML.EnvioXML(destino, copias, texto, assunto, Zip, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
Begin

  vEnviado := False;
  Result := vEnviado;

  if Trim(edemail.Text) = '' then
  begin
    Application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 +
      'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if (Trim(destino) = '') and (Trim(copias) = '') then
  begin
    Application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  mostraemail.Visible := True;

  AtualizaMensagemEmail(1, 'Cerregando configuração.');

  Try
    AtualizaMensagemEmail(2, 'Criando mensagem.');

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto; // Corpo da mensagem.
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(edemail.Text); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino

    AtualizaMensagemEmail(3, 'Anexando ZIP');

    if FileExists(Zip) then
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

        vEnviado := True;
        SMTP.Disconnect; // Desconecta

        AtualizaMensagemEmail(9, '');

        Attachmentxml.Free;
        Attachmentpdf.Free;
      End;
    Except
      On E: Exception Do // Definição da variável e do tipo Exception
      Begin
        vEnviado := False;

        Application.MessageBox(PChar('Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + E.Message), 'Erro Envio de Email',
          MB_OK + MB_ICONERROR);

        SMTP.Disconnect;
        Sleep(1000);

        If SMTP.Connected Then
          SMTP.Disconnect;
      End;
    End;
  Finally
    AtualizaMensagemEmail(10, '');
  End;

  Result := vEnviado;
End;

procedure TfEnvioXML.bfecharClick(Sender: TObject);
begin
  Close;
end;

Procedure TfEnvioXML.AtualizaMensagemEmail(Posicao: Integer; Mensagem: String);
begin
  mostraemail.Position := Posicao;
  LlMsgEmail.Caption := Mensagem;
  Sleep(10);
end;

procedure TfEnvioXML.OrdenaMemo(Lines: TStrings);
var
  Temp: TStringList;
begin
  Temp := TStringList.Create;
  Temp.Assign(Lines);
  Temp.Sort;
  Lines.Assign(Temp);
  Temp.Free;

end;

procedure TfEnvioXML.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfEnvioXML.Button1Click(Sender: TObject);
begin
  if not FileExists(EdNomeArquivo.Text) then
  begin
    ShowMessage('Arquivo nao localizado!');
    Exit;
  end;

  PuxarDadosXLS;
  label8.Caption:=inttostr(nfcesefaz.Lines.Count);

end;

procedure TfEnvioXML.Button2Click(Sender: TObject);
begin
  FileOpenDialog.Execute;
  EdNomeArquivo.Text := FileOpenDialog.FileName;
end;

procedure TfEnvioXML.btprocessarClick(Sender: TObject);
var
  vlPastaProcessar: string;
  Zip: string;
  vlRnis: string;
begin

  Inicializar;

  vlPastaProcessar := vpDirNFEs + '\' + cbAno.Text + cbMes.Text;

  if not DirectoryExists(vlPastaProcessar + '\ctb') then
    CreateDir(vlPastaProcessar + '\ctb');

  if DirectoryExists(vlPastaProcessar) then
  begin

    mNumeros.Lines.Clear;
    mNumerosFaltantes.Lines.Clear;

    LocalizaArquivos(vlPastaProcessar);

    if mArqProcessar.Lines.Count > 0 then
    begin
      mizioLerConfiguracao;

      ValidaArquivos;

      self.criaZip(vlPastaProcessar + '\ctb\', 'NFEs');
      Zip := self.vpDirNFEs + '\' + self.cbAno.Text + self.cbMes.Text + '\ctb\' + vpnomeempresa + '-' + 'NFEs' + '-' + cbAno.Text +
        cbMes.Text + '.zip';
    end;
  end;

  vlPastaProcessar := vpDirNFCEs + '\' + cbAno.Text + cbMes.Text;

  if not DirectoryExists(vlPastaProcessar + '\ctb') then
    CreateDir(vlPastaProcessar + '\ctb');

  if DirectoryExists(vlPastaProcessar) then
  begin
    mNumeros.Lines.Clear;
    mNumerosFaltantes.Lines.Clear;
    LocalizaArquivos(vlPastaProcessar);
    if mArqProcessar.Lines.Count > 0 then
    begin
      mizioLerConfiguracaoDAV;
      ValidaArquivos;

      self.criaZip(vlPastaProcessar + '\ctb\', 'NFCEs');
      Zip := self.vpDirNFCEs + '\' + self.cbAno.Text + self.cbMes.Text + '\ctb\' + vpnomeempresa + '-' + 'NFCEs' + '-' + cbAno.Text +
        cbMes.Text + '.zip';

    end;
  end;

  ShowMessage('Processamento concluído.');

end;

procedure TfEnvioXML.PuxarDadosXLS;
var
  Excel: Variant;
  Linha: Integer;
  fim: string;
  texto: string;
begin
  nfcesefaz.Lines.Clear;
  Excel := CreateOleObject('Excel.Application');
  Excel.DisplayAlerts := False;
  Excel.Visible := False;
  { Excel.Workbooks.Add; }
  Excel.WorkBooks.Open('c:\arquivo.xls');
  Linha := 8;
  fim := Excel.WorkBooks[1].Sheets[1].Cells[Linha, 4];
  While fim <> '' do
  Begin
    texto := Excel.WorkBooks[1].Sheets[1].Cells[Linha, 4];
    nfcesefaz.Lines.Add(OnlyNumber(texto));
    Linha := Linha + 1;
    fim := Excel.WorkBooks[1].Sheets[1].Cells[Linha, 4];
  end;
  Excel.Application.quit;
end;

procedure TfEnvioXML.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SalvaConfigINI;
end;

procedure TfEnvioXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

procedure TfEnvioXML.FormShow(Sender: TObject);
begin
  vpDirApp := ExtractFilePath(Application.ExeName);
  vpDirNFEs := vpDirApp + 'arqnfes';
  vpDirNFCEs := vpDirApp + 'arqnfces';
  LeConfigINI;

end;

Procedure TfEnvioXML.SalvaConfigINI;
Var
  arquini: TIniFile;
  vlNomeArqIni: string;
Begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini') then
    vlNomeArqIni := ExtractFilePath(Application.ExeName) + 'gourmeterp.ini'
  else
    vlNomeArqIni := ExtractFilePath(Application.ExeName) + 'posi2010.ini';

  arquini := TIniFile.Create(vlNomeArqIni);
  With arquini Do
  Begin

    WriteString('posi', 'emailfiscal', vpemailfiscal);
    WriteString('posi', 'nomeempresa', vpnomeempresa);

  End;

  arquini.Free;
End;

procedure TfEnvioXML.SMTPConnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Conectado';
end;

procedure TfEnvioXML.SMTPDisconnected(Sender: TObject);
begin
  LlMsgEmail.Caption := 'Desconectado';
end;

procedure TfEnvioXML.SMTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  LlMsgEmail.Caption := AStatusText;
  Application.ProcessMessages;
end;

procedure TfEnvioXML.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  LlMsgEmail.Caption := 'Inicio do Envio';
end;

procedure TfEnvioXML.SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  LlMsgEmail.Caption := 'Final do Envio';
end;

Procedure TfEnvioXML.LeConfigINI;
Var
  arquini: TIniFile;
  vlNomeArqIni: string;
  vlnomebanco: string;
  vlservidor: string;
  vlUsuario: string;
  vlsenha: string;
Begin
  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini') then
      vlNomeArqIni := ExtractFilePath(Application.ExeName) + 'gourmeterp.ini'
    else
      vlNomeArqIni := ExtractFilePath(Application.ExeName) + 'posi2010.ini';

    arquini := TIniFile.Create(vlNomeArqIni);
    With arquini Do
    Begin
      vpemailfiscal := ReadString('posi', 'emailfiscal', '');
      vpnomeempresa := ReadString('posi', 'nomeempresa', '');
      vlnomebanco := ReadString('posi', 'nomebanco', 'mizio');
      vlservidor := ReadString('posi', 'servidor', '127.0.0.1');
      vlUsuario := ReadString('posi', 'usuario', 'root');
      vlsenha := ReadString('posi', 'senha', 'xda973');
      self.edemail.Text := vpemailfiscal;
      self.edcnpj.Text := OnlyNumber(vpnomeempresa);

    End;
    arquini.Free;
  except
    ShowMessage('Falha de conexao com o Banco de Dados, verifique o arquivo de configuração!');
  end;
End;

procedure TfEnvioXML.LocalizaArquivos(vPasta: string);
var
  vlFSearch: TSearchRec;
  vlRetorno: Integer;
begin
  try
    mArqProcessar.Lines.Clear;

    vlRetorno := FindFirst(vPasta + '\*-nfe.xml', faAnyFile, vlFSearch);

    while vlRetorno = 0 do
    begin
      mArqProcessar.Lines.Add(vPasta + '\' + vlFSearch.Name);

      vlRetorno := FindNext(vlFSearch)
    end;

  finally
    FindClose(vlFSearch);
  end;
end;

procedure TfEnvioXML.ValidaArquivos;
var
  i: Integer;
  vlNomeArqXML: string;
  vlDireCTB: string;
  vlNome: string;
begin
  for i := 0 to mArqProcessar.Lines.Count - 1 do
  begin

    vlNomeArqXML := mArqProcessar.Lines.Strings[i];
    if ConsultaNFCe(vlNomeArqXML) then
    begin
      vlDireCTB := ExtractFilePath(vlNomeArqXML);
      vlNome := vlDireCTB + 'ctb\' + ExtractFileName(vlNomeArqXML);

      CopyFile(PChar(vlNomeArqXML), PChar(vlNome), False);
    end;
  end;

  VerificaNotasFaltantes;

end;

procedure TfEnvioXML.VerificaNotasFaltantes;
var
  i: Integer;
  v1: Integer;
  v2: Integer;
  vlNumeGerador: TStringList;
  vlNumero: String;
begin
  if mNumeros.Lines.Count = 0 then
    Exit;

  vlNumeGerador := TStringList.Create;

  self.OrdenaMemo(mNumeros.Lines);

  v1 := StrToInt(mNumeros.Lines.Strings[0]);
  v2 := StrToInt(mNumeros.Lines.Strings[mNumeros.Lines.Count - 1]);

  for i := v1 to v2 do
    vlNumeGerador.Add(FormatFloat('00000000', i));

  for i := 0 to vlNumeGerador.Count do
    try
      vlNumero := vlNumeGerador[i];

      if Pos(vlNumero, mNumeros.Lines.Text) = 0 then
        mNumerosFaltantes.Lines.Add(vlNumeGerador[i]);
    except
    end;
end;

function TfEnvioXML.ConsultaNFCe(vArqNFCe: String): Boolean;
Var
  nProt: String;
  vnrnfe: String;
  vchNFe: String;
  vdtNFe: String;
  vhrNFe: String;
  vCodStatusNFe: String;
  vMsgStatusNFe: String;
  vRetorno: Boolean;
Begin
  vRetorno := False;

  try
    If not FileExists(vArqNFCe) Then
      Exit;

    ACBrNFe.NotasFiscais.Clear;

    ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);
    vdtNFe := DateToStr(ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.dhRecbto);
    vhrNFe := TimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.dhRecbto);
    nProt := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
    vchNFe := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    vCodStatusNFe := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat);
    vMsgStatusNFe := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.xMotivo;
    vnrnfe := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
    (* Verifica código de retorno é igual a 100 - Uso Autorizado *)
    If ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat = 100 Then
    begin
      Try
        mNumeros.Lines.Add(FormatFloat('00000000', StrToInt(vnrnfe)));
        vRetorno := True;
      Except
      End;
    end
    else
    begin
      mNumeroErro.Lines.Add(vnrnfe + ' - ' + vCodStatusNFe + ' ' + vMsgStatusNFe);
    end;
  finally
    Result := vRetorno;
  end;
End;

procedure TfEnvioXML.Inicializar;
begin
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase('mail.miziosistemas.COM.BR');
    Username := LowerCase('nfe@miziosistemas.com.br');
    Password := Trim('574jit5s');
    Port := 587;
    UseTLS := utUseRequireTLS;
    AuthType := SatDefault;
    ConnectTimeout := 10000;
    ReadTimeout := 10000;
  end;

  with IO_OpenSSL do
  begin
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := SslmClient;
  end;
end;

procedure TfEnvioXML.criaZip(vPasta: string; vTipo: string);
var
  vArqBaseXMLProp: string;
  vlIdCli: string;
  ZipFile: TZipFile;
  vlRetorno: Integer;
  vlFSearch: TSearchRec;
  vlNomeArq: string;
begin
  vlIdCli := OnlyNumber(edcnpj.Text);

  vArqBaseXMLProp := vPasta + vlIdCli + '-' + vTipo + '-' + cbAno.Text + cbMes.Text + '.zip';

  if FileExists(vArqBaseXMLProp) then
    DeleteFile(vArqBaseXMLProp);

  ZipFile := TZipFile.Create; // Zipfile: TZipFile
  try
    ZipFile.Open(vArqBaseXMLProp, zmWrite);

    vlRetorno := FindFirst(vPasta + '*.xml', faAnyFile, vlFSearch);

    while vlRetorno = 0 do
    begin
      If (vlFSearch.Attr And faDirectory) <> faDirectory Then
      Begin

        vlNomeArq := vPasta + vlFSearch.Name;
        ZipFile.Add(vlNomeArq);

      End;
      vlRetorno := FindNext(vlFSearch)
    end;

    ZipFile.Close;
  finally
    ZipFile.Free;
  end;

end;

function TfEnvioXML.mizioLerConfiguracao: Boolean;
Var
  Ok: Boolean;
Begin
  Result := True;
End;

function TfEnvioXML.mizioLerConfiguracaoDAV: Boolean;
Begin
End;

procedure TfEnvioXML.edcnpjExit(Sender: TObject);
begin
  vpnomeempresa := OnlyNumber(edcnpj.Text);
end;

procedure TfEnvioXML.edemailExit(Sender: TObject);
begin
  vpemailfiscal := edemail.Text;
end;

end.
