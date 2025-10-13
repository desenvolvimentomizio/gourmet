unit UfrDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    //############ ATENCAO AQUI ####################
  //units adicionais obrigatorias
   uTWPPConnect.ConfigCEF, uTWPPConnect,            uTWPPConnect.Constant,      uTWPPConnect.JS,     uWPPConnectDecryptFile,
   uTWPPConnect.Console,   uTWPPConnect.Diversos,   uTWPPConnect.AdjustNumber,  uTWPPConnect.Config, uTWPPConnect.Classes,
   uTWPPConnect.Emoticons, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TfrDemo = class(TForm)
    WPPConnect1: TWPPConnect;
    memo_unReadMessage: TMemo;
    lblStatus: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    Button1: TButton;
    StatusBar1: TStatusBar;
    whatsOn: TImage;
    whatsOff: TImage;
    lblNumeroConectado: TLabel;
    Label3: TLabel;
    ed_profilePicThumbURL: TEdit;
    memo_unReadMessageEnv: TMemo;
    Button2: TButton;
    ed_num: TEdit;
    mem_message: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure WPPConnect1GetStatus(Sender: TObject);
    procedure WPPConnect1GetUnReadMessages(const Chats: TChatList);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
     FChatID: string;
  public
    { Public declarations }
  end;

var
  frDemo: TfrDemo;

implementation

{$R *.dfm}

procedure TfrDemo.Button1Click(Sender: TObject);
begin
 if not WPPConnect1.Auth(false) then
  Begin

    WPPConnect1.FormQrCodeType := TFormQrCodeType.Ft_Desktop;
    WPPConnect1.FormQrCodeStart;
  End;

  if not WPPConnect1.FormQrCodeShowing then
     WPPConnect1.FormQrCodeShowing := True;
end;

procedure TfrDemo.Button2Click(Sender: TObject);
var
  options : string;
begin
  try
    if Trim(ed_num.Text) = '' then
    begin
      messageDlg('Informe o Celular para Continuar', mtWarning, [mbOk], 0);
      ed_num.SetFocus;
      Exit;
    end;

    if Trim(mem_message.Text) = '' then
    begin
      messageDlg('Informe o Texto da Mensagem para Continuar', mtWarning, [mbOk], 0);
      mem_message.SetFocus;
      Exit;
    end;

    if not WPPConnect1.Auth then
       Exit;

    options := '';

    WPPConnect1.SendTextMessage(ed_num.Text, mem_message.Text, options);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;

end;

procedure TfrDemo.FormCreate(Sender: TObject);
begin
    GlobalCEFApp.LogConsoleActive := true;
end;


procedure TfrDemo.WPPConnect1GetStatus(Sender: TObject);
begin
  if not Assigned(Sender) Then
     Exit;


  if (TWPPConnect(Sender).Status = Inject_Initialized) then
  begin
    lblStatus.Caption            := 'Online';
    lblStatus.Font.Color         := $0000AE11;
    SpeedButton3.Enabled              := true;
  end else
  begin
    SpeedButton3.Enabled              := false;
    lblStatus.Caption            := 'Offline';
    //lblStatus.Font.Color         := $002894FF;
    lblStatus.Font.Color         := clGrayText;
  end;

  StatusBar1.Panels[1].Text  := lblStatus.Caption;
  whatsOn.Visible            := SpeedButton3.enabled;
  lblNumeroConectado.Visible := whatsOn.Visible;
  whatsOff.Visible           := Not whatsOn.Visible;


  Label3.Visible := False;
  case TWPPConnect(Sender).status of
    Server_ConnectedDown       : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_Disconnected        : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_Disconnecting       : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_Connected           : Label3.Caption := '';
    Server_Connecting          : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Inject_Initializing        : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Inject_Initialized         : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_ConnectingNoPhone   : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_ConnectingReaderCode: Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Server_TimeOut             : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Inject_Destroying          : Label3.Caption := TWPPConnect(Sender).StatusToStr;
    Inject_Destroy             : Label3.Caption := TWPPConnect(Sender).StatusToStr;
  end;
  If Label3.Caption <> '' Then
     Label3.Visible := true;


  If TWPPConnect(Sender).Status in [Server_ConnectingNoPhone, Server_TimeOut] Then
  Begin
    if TWPPConnect(Sender).FormQrCodeType = Ft_Desktop then
    Begin
       if TWPPConnect(Sender).Status = Server_ConnectingNoPhone then
          WPPConnect1.FormQrCodeStop;
    end else
    Begin
      if TWPPConnect(Sender).Status = Server_ConnectingNoPhone then
      Begin
        if not TWPPConnect(Sender).FormQrCodeShowing then
           TWPPConnect(Sender).FormQrCodeShowing := True;
      end else
      begin
        TWPPConnect(Sender).FormQrCodeReloader;
      end;
    end;
  end;

end;

procedure TfrDemo.WPPConnect1GetUnReadMessages(const Chats: TChatList);
var
  AChat: TChatClass;
  AMessage: TMessagesClass;
  contato, telefone, selectedButtonId, quotedMsg_caption, NomeArq_Whats, Extensao_Documento, Automato_Path: string;
  WPPConnectDecrypt: TWPPConnectDecryptFile;
begin
    for AChat in Chats.result do
    begin
      for AMessage in AChat.messages do
      begin
        if not AChat.isGroup then //Não exibe mensages de grupos
        begin

          if not AMessage.sender.isMe then  //Não exibe mensages enviadas por mim
          begin
            //memo_unReadMessage.Clear;
            FChatID := AChat.id;
            telefone  :=  Copy(AChat.id, 3, Pos('@', AChat.id) - 3);
            contato   :=  AMessage.Sender.pushName;

            //Tratando o tipo do arquivo recebido e faz o download para pasta \temp
            {case AnsiIndexStr(UpperCase(AMessage.&type), ['PTT', 'IMAGE', 'VIDEO', 'AUDIO', 'DOCUMENT']) of
              0: begin WPPConnectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
              1: begin WPPConnectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'jpg', AChat.id); end;
              2: begin WPPConnectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp4', AChat.id); end;
              3: begin WPPConnectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
              4: begin WPPConnectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'pdf', AChat.id); end;
            end;}

            Extensao_Documento := AMessage.filename;
            Extensao_Documento := ExtractFileExt(Extensao_Documento);
            NomeArq_Whats := WPPConnectDecrypt.download(AMessage.deprecatedMms3Url,
                            AMessage.mediaKey, Extensao_Documento, AChat.id, Automato_Path + '\Arquivos Recebidos\');

            SleepNoFreeze(100);
            memo_unReadMessage.Lines.Add(PChar('Nome Contato: ' + Trim(AMessage.Sender.pushName)));
            memo_unReadMessage.Lines.Add(PChar('UniqueID: ' + AMessage.id));
            memo_unReadMessage.Lines.Add(PChar('Tipo mensagem: ' + AMessage.&type));
            memo_unReadMessage.Lines.Add(PChar('Chat Id: ' + AChat.id));
            memo_unReadMessage.Lines.Add( StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));
            memo_unReadMessage.Lines.Add(PChar('ACK: ' + FloatToStr(AMessage.ack) ));
            selectedButtonId := AMessage.selectedButtonId;

            try
              quotedMsg_caption := AMessage.quotedMsg.Caption; //Mensagem Original do Click do Botão
            except on E: Exception do
              quotedMsg_caption := '';
            end;

            if selectedButtonId = '' then
              selectedButtonId := AMessage.selectedId;

            ed_profilePicThumbURL.text := AChat.contact.profilePicThumb;


            WPPConnect1.ReadMessages(AChat.id);

           { if chk_AutoResposta.Checked then
              VerificaPalavraChave(AMessage.body, '', telefone, contato);}

          end
          else
          begin
            memo_unReadMessageEnv.Lines.Add(PChar('Nome Contato: ' + Trim(AMessage.Sender.pushName)));
            memo_unReadMessageEnv.Lines.Add(PChar('UniqueID: '      + AMessage.id));
            memo_unReadMessageEnv.Lines.Add(PChar('Tipo mensagem: '      + AMessage.&type));
            memo_unReadMessageEnv.Lines.Add(PChar('Chat Id: ' + AChat.id));
            memo_unReadMessageEnv.Lines.Add(StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));
            memo_unReadMessageEnv.Lines.Add(PChar('ACK: ' + FloatToStr(AMessage.ack) ));
            selectedButtonId := AMessage.selectedButtonId;

            try
              quotedMsg_caption := AMessage.quotedMsg.Caption; //Mensagem Original do Click do Botão
            except on E: Exception do
              quotedMsg_caption := '';
            end;

            if selectedButtonId = '' then
              selectedButtonId := AMessage.selectedId;


          end;
        end;
      end;
    end;
end;

end.
