unit ufprincichat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uHelper.JsonToDataSet, Data.DB, Datasnap.DBClient, uService.WhatsApp,uModel.ContactWhats,uModel.MessageReceivedWhats, uModel.StatusPhone,uModel.StatusWhats,
  Vcl.StdCtrls, IdIntercept, IdLogBase, IdLogEvent, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    ServiceWhtasApp1: TServiceWhtasApp;
    CdsContacts: TClientDataSet;
    CdsBroadcast: TClientDataSet;
    CdsBroadcastid: TStringField;
    CdsBroadcastname: TStringField;
    CdsBroadcasttotalParticipants: TStringField;
    DsBroadcast: TDataSource;
    Memo1: TMemo;
    Label7: TLabel;
    LbStatus: TLabel;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdLogEvent1: TIdLogEvent;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID: TStringField;
    ClientDataSet1NAME: TStringField;
    ClientDataSet1NUMBER: TStringField;
    ClientDataSet1ISGROUP_BROADCAST: TIntegerField;
    procedure ServiceWhtasApp1Broadcasts(Sender: TObject;
      const JsonArrayList: string);
    procedure ServiceWhtasApp1ContactsVerifyAccount(Sender: TObject;
      const Number: string; Exist: Boolean);
    procedure ServiceWhtasApp1Groups(Sender: TObject;
      const JsonArrayList: string);
    procedure ServiceWhtasApp1ReceiveMessage(Sender: TObject;
      const Contact: IContactWhats; MessageReceived: IMessageReceivedWhats);
    procedure ServiceWhtasApp1Started(Sender: TObject; const Started: Boolean);
    procedure ServiceWhtasApp1StatusContact(Sender: TObject;
      const Status: string);
    procedure ServiceWhtasApp1StatusPhone(Sender: TObject;
      const Status: IStatusPhone);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ServiceWhtasApp1Status(Sender: TObject;
      const Status: IStatusWhats);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

   if not ServiceWhtasApp1.ServiceStatusPhone.Status.Connected then
        begin
          ServiceWhtasApp1.ShowWhatsApp;
        end;


//  ServiceWhtasApp1.GetStatus;
//  ServiceWhtasApp1.GetStatus;



//  ServiceWhtasApp1.ShowWhatsApp;
  // LbStatus.Caption := 'Conectado';

  Application.ProcessMessages;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ServiceWhtasApp1.StopMonitoringWhtas;
  sleep(3000);
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Active := True;
  CdsBroadcast.CreateDataSet;
  CdsBroadcast.Active := True;

end;

procedure TForm1.ServiceWhtasApp1Broadcasts(Sender: TObject;
  const JsonArrayList: string);
begin
  THelperJsonToDataSet.New().JsonToDataSet(JsonArrayList, CdsBroadcast);
end;

procedure TForm1.ServiceWhtasApp1ContactsVerifyAccount(Sender: TObject;
  const Number: string; Exist: Boolean);
var
  sExist: string;
begin
  if Exist then
  begin
    sExist := 'True';
  end
  else
  begin
    sExist := 'False';
  end;
  // ShowMessage(Number + ':' + sExist);

end;

procedure TForm1.ServiceWhtasApp1Groups(Sender: TObject;
  const JsonArrayList: string);
begin
  THelperJsonToDataSet.New().JsonToDataSet(JsonArrayList, CdsBroadcast);
end;

procedure TForm1.ServiceWhtasApp1ReceiveMessage(Sender: TObject;
  const Contact: IContactWhats; MessageReceived: IMessageReceivedWhats);
var
  vlmensage: string;
begin
  vlmensage := MessageReceived.FROM_ID + '|' + MessageReceived.MESSAGE;
  Memo1.Lines.Add(vlmensage);



end;

procedure TForm1.ServiceWhtasApp1Started(Sender: TObject;
  const Started: Boolean);
begin
  ServiceWhtasApp1.GetStatus;
end;

procedure TForm1.ServiceWhtasApp1Status(Sender: TObject;
  const Status: IStatusWhats);
begin
  // ShowMessage('Meu nome:' + Status.MyName +#13+
  // 'Meu ID:' + Status.MyID+#13+
  // 'Meu Numero:' + Status.MyNumber+#13+
  // 'Conetado:' + BoolToStr(Status.Connected)+#13+
  // 'Charging' +  BoolToStr(Status.Charging)+#13+
  // 'Loading' +BoolToStr(Status.Loading)+#13+
  // 'OnQrPage' +BoolToStr(Status.OnQrPage)+#13+
  // 'NeedsCharging' +BoolToStr(Status.NeedsCharging)+#13+
  // 'BatteryLevel' +IntToStr(Status.BatteryLevel)+#13+
  // 'QrCodeBase64' +Status.QrCodeBase64 +#13+
  // 'QrCodeExpiresAt' +DateToStr(Status.QrCodeExpiresAt)+#13+
  // 'QrCodeExpired' +BoolToStr(Status.QrCodeExpired)+#13+
  // 'Conflicted' +BoolToStr(Status.Conflicted)+#13+
  // 'Stopped' +BoolToStr(Status.Stopped)+#13+
  // 'Starting' +BoolToStr(Status.Starting)
  // );

end;

procedure TForm1.ServiceWhtasApp1StatusContact(Sender: TObject;
  const Status: string);
begin
  Label7.Caption := Status;
  if Status = 'Online' then
  begin
    Label7.Font.Color := clGreen;
  end
  else
  begin
    Label7.Font.Color := clRed;
  end;

end;

procedure TForm1.ServiceWhtasApp1StatusPhone(Sender: TObject;
  const Status: IStatusPhone);
begin
  if Status.Connected then
  begin
    LbStatus.Font.Color := clGreen;
    LbStatus.Caption := 'Conectado';
  end
  else
  begin
    LbStatus.Font.Color := clRed;
    LbStatus.Caption := 'Desconectado';
  end;

end;

end.
