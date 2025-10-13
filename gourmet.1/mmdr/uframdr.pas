unit uframdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdAttachment, IdAttachmentFile, ufuncoes, Vcl.ComCtrls;

type
  Tframdr = class(Tfrabase)
    uqtabelamdrchave: TIntegerField;
    uqtabelamdrassunto: TStringField;
    uqtabelamdrenvio: TDateTimeField;
    uqtabelamdrregistro: TDateTimeField;
    Didm: TDataSource;
    DBListaidm: TDBGrid;
    idm: TUniQuery;
    idmidmchave: TIntegerField;
    idmmdrchave: TIntegerField;
    idmetdidentificacao: TStringField;
    idmetdapelido: TStringField;
    idmeteemail: TStringField;
    idmetecontato: TStringField;
    ActDestinatarios: TAction;
    ActEnviar: TAction;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    cfg: TUniQuery;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    uqtabelamdrtexto: TBlobField;
    idmidmenviado: TIntegerField;
    cfgDataAtual: TDateTimeField;
    lbstatusenvioemail: TLabel;
    mostra: TProgressBar;
    cfgetdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBListaidmDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActDestinatariosExecute(Sender: TObject);
    procedure ActEnviarExecute(Sender: TObject);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure SMTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure SMTPConnected(Sender: TObject);
    procedure SMTPDisconnected(Sender: TObject);
    procedure IO_OpenSSLStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IO_OpenSSLStatusInfo(const AMsg: string);
  private
    function EnviaEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente,
      nome_empresa: String): Boolean;
    procedure Inicializar;
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    function NomeArquivoMala: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framdr: Tframdr;

const
  vPlIdMd = '';
  vPlTitMdl = 'Mala Direta';

implementation

uses
  ufmdr;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framdr := Tframdr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framdr := Tframdr.Create(pCargaFrame);
  try
    framdr.CriaAcoesDeAcesso;
  finally
    framdr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tframdr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmdr, uqtabelamdrchave.AsString, '');

end;

procedure Tframdr.ActDestinatariosExecute(Sender: TObject);
begin
  inherited;
  MostraLista('midm', uqtabelamdrchave.AsString, '');
  ActAtualizar.Execute;

end;

Function Tframdr.NomeArquivoMala: string;
var
  vNomeArqTemp: String;
begin
  if not DirectoryExists(extractfilepath(application.ExeName) + 'temp') then
    ForceDirectories(extractfilepath(application.ExeName) + 'temp');
  vNomeArqTemp := extractfilepath(application.ExeName) + 'temp\mala' +
    formatfloat('0000000', uqtabelamdrchave.AsInteger) + '.html';
  Result := vNomeArqTemp;
end;

procedure Tframdr.ActEnviarExecute(Sender: TObject);
var
  vNomeArqTemp: string;
begin
  inherited;

  Inicializar;

  idm.First;
  while not idm.Eof do
  begin
    if (idmidmenviado.AsInteger = 0) and (idmeteemail.AsString <> '') then
    begin

      vNomeArqTemp := NomeArquivoMala;
      uqtabelamdrtexto.SaveToFile(vNomeArqTemp);

      if EnviaEmail(idmeteemail.AsString, '', vNomeArqTemp,
        uqtabelamdrassunto.AsString, '', '', idmetecontato.AsString,
       cfgetdidentificacao.AsString) then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update idm set idmenviado=1 where idmchave=' +
          idmidmchave.AsString;
        consulta.ExecSQL;

      end;
    end;

    idm.Next;
  end;
  mostra.Visible := False;
  lbstatusenvioemail.Visible := False;
end;

procedure Tframdr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmdr, '', '');
end;

procedure Tframdr.DBListaidmDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tframdr.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelamdrchave.AsString <> '' then
    begin
      idm.Close;
      idm.ParamByName('mdrchave').AsInteger := uqtabelamdrchave.AsInteger;
      idm.Open;
    end;
end;

procedure Tframdr.Inicializar;
begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  if cfg.IsEmpty then
  begin
    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger := 1;
    cfg.Open;

  end;

  // Define configurações do servidor para envio de email.
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase(cfgcfgemailservidornfe.AsString);
    // 'smtp.live.com'; // 'smtp.gmail.com';
    Username := LowerCase(cfgcfgemailnfe.AsString);
    // 'email@hotmail.com'; // 'email@gmail.com';
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

procedure Tframdr.IO_OpenSSLStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  inherited;
  lbstatusenvioemail.Caption := AStatusText;
  application.ProcessMessages;
end;

procedure Tframdr.IO_OpenSSLStatusInfo(const AMsg: string);
begin
  inherited;
  lbstatusenvioemail.Caption := AMsg;
  application.ProcessMessages;

end;

Function Tframdr.EnviaEmail(destino, copias, texto, assunto, xml, pdf,
  nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
  vlMensagemErro, vlDiretorioErro: String;

Begin

  vEnviado := False;
  Result := vEnviado;

  if Trim(cfgcfgemailnfe.AsString) = '' then
  begin
    application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13
      + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'),
      'ATENÇÃO', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if (Trim(destino) = '') and (Trim(copias) = '') then
  begin
    application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 +
      #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  Try
  If SMTP.Connected Then
      SMTP.Disconnect; // Desconecta

    IdMessage1.Clear;

    IdMessage1.Body.Clear;
    IdMessage1.ContentType := 'text/html';
    IdMessage1.CharSet := 'utf-8';



    IdMessage1.Body.LoadFromFile(texto);


    // IdMessage1.Body.Text := texto; // Corpo da mensagem.

    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString);
    // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino
    IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text;

    if FileExists(xml) then
      Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml);

    if FileExists(pdf) then
      Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf);

    // Conectando e enviando
    // Try
    SMTP.Connect; // Inicia conexão

    If SMTP.Connected Then
    Begin

      SMTP.Send(IdMessage1); // Se conectado envia email

      vEnviado := True;
      SMTP.Disconnect; // Desconecta

      { if Attachmentxml <> nil then
        if Attachmentxml.FileName <> '' then
        Attachmentxml.Free;

        if Attachmentpdf <> nil then
        if Attachmentpdf.FileName <> '' then
        Attachmentpdf.Free; }
    End;
    { Except
      On E: Exception Do // Definição da variável e do tipo Exception
      Begin
      vEnviado := False;

      vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 +
      'Mensagem: ' + #13 + E.Message;
      Application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email',
      MB_OK + MB_ICONERROR);

      SalvarLogErro(E.Message, E.StackTrace);

      SMTP.Disconnect;
      Sleep(1000);

      If SMTP.Connected Then
      SMTP.Disconnect;
      End;
      End; }

  Finally

  End;

  Result := vEnviado;
End;

procedure Tframdr.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;
  if not DirectoryExists(extractfilepath(application.ExeName) + 'emails\') then
    ForceDirectories(extractfilepath(application.ExeName) + 'emails\');

  vlArquivo := extractfilepath(application.ExeName) + 'emails\' +
    FormatDateTime('yyyymmddhhnnsszzz', cfgDataAtual.AsFloat) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

procedure Tframdr.SMTPConnected(Sender: TObject);
begin
  inherited;
  lbstatusenvioemail.Caption := 'Conectado...';;
  mostra.Visible:=true;
  application.ProcessMessages;
end;

procedure Tframdr.SMTPDisconnected(Sender: TObject);
begin
  inherited;
  lbstatusenvioemail.Caption := 'Desconectado...';
end;

procedure Tframdr.SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  inherited;
  lbstatusenvioemail.Visible := True;
  lbstatusenvioemail.Caption := AStatusText;
  application.ProcessMessages;
end;

procedure Tframdr.SMTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  inherited;
  mostra.Position := AWorkCount;
  application.ProcessMessages;
end;

procedure Tframdr.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  inherited;
  mostra.Visible := True;

  mostra.max := AWorkCountMax;
  application.ProcessMessages;

end;

end.
