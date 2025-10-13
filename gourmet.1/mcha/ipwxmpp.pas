unit ipwxmpp;

{$DEFINE USEIPWORKSDLL}

interface

uses
{$IFDEF fpc}  // Lazarus
  SysUtils, Classes, ipwcore, ipwkeys;
{$ELSE}
{$IF CompilerVersion >= 23}System.SysUtils{$ELSE}SysUtils{$IFEND}, {$IF CompilerVersion >= 23}System.Classes{$ELSE}Classes{$IFEND}, ipwcore, ipwkeys;
{$ENDIF}

type

  TipwxmppXMPPBuddySubscriptions = (

    stNone,

    stTo,

    stFrom,

    stBoth,

    stRemove);

  TipwxmppBuddySubscriptions = TipwxmppXMPPBuddySubscriptions;

  TipwxmppFirewallTypes = (

    fwNone,

    fwTunnel,

    fwSOCKS4,

    fwSOCKS5);

  TipwxmppTJabberMessageTypes = (

    mtNormal,

    mtChat,

    mtGroupChat,

    mtHeadline,

    mtError);

  TipwxmppMessageTypes = TipwxmppTJabberMessageTypes;

  TipwxmppTJabberPresenceCodes = (

    pcOffline,

    pcChat,

    pcAway,

    pcXA,

    pcDND);

  TipwxmppPresences = TipwxmppTJabberPresenceCodes;

  TBuddyUpdateEvent = procedure(Sender: TObject; BuddyIdx: Integer) of Object;
  TConnectedEvent = procedure(Sender: TObject; StatusCode: Integer; const Description: String) of Object;
  TConnectionStatusEvent = procedure(Sender: TObject; const ConnectionEvent: String; StatusCode: Integer; const Description: String) of Object;
  TDisconnectedEvent = procedure(Sender: TObject; StatusCode: Integer; const Description: String) of Object;
  TEndTransferEvent = procedure(Sender: TObject; Direction: Integer; const FileId: String; const Filename: String; Success: Boolean) of Object;
  TErrorEvent = procedure(Sender: TObject; ErrorCode: Integer; const Description: String) of Object;
  TIQEvent = procedure(Sender: TObject; const Iq: String; const Id: String; const From: String; const IqType: String; var Ignore: Boolean) of Object;
  TMessageInEvent = procedure(Sender: TObject; const MessageId: String; const From: String; const Domain: String; const Resource: String; MessageType: Integer;
    const Subject: String; const MessageThread: String; const MessageText: String; const MessageHTML: String; const Other: String) of Object;
  TPITrailEvent = procedure(Sender: TObject; Direction: Integer; const Pi: String) of Object;
  TPresenceEvent = procedure(Sender: TObject; const User: String; const Domain: String; const Resource: String; Availability: Integer; const Status: String)
    of Object;
  TReadyToSendEvent = procedure(Sender: TObject) of Object;
  TStartTransferEvent = procedure(Sender: TObject; Direction: Integer; const FileId: String; const User: String; const Domain: String; const Resource: String;
    var Filename: String; const Datetime: String; Size: Int64; var Accept: Boolean) of Object;
  TSubscriptionRequestEvent = procedure(Sender: TObject; const From: String; const Domain: String; var Accept: Boolean) of Object;
  TSyncEvent = procedure(Sender: TObject) of Object;
  TTransferEvent = procedure(Sender: TObject; Direction: Integer; const FileId: String; const Filename: String; BytesTransferred: Int64; PercentDone: Integer;
    Text: String; var Cancel: Boolean) of Object;

  EipwXMPP = class(EIPWorks)
  end;
{$IFDEF fpc}  // Lazarus
{$ELSE}
{$IF CompilerVersion >= 23}[ComponentPlatformsAttribute(pidWin32 or pidWin64)]
{$ELSE}{$IFEND}
{$ENDIF}

  TipwXMPP = class(TipwCore)
  public
    FOnBuddyUpdate: TBuddyUpdateEvent;
    FOnConnected: TConnectedEvent;
    FOnConnectionStatus: TConnectionStatusEvent;
    FOnDisconnected: TDisconnectedEvent;
    FOnEndTransfer: TEndTransferEvent;
    FOnError: TErrorEvent;
    FOnIQ: TIQEvent;
    FOnMessageIn: TMessageInEvent;
    FOnPITrail: TPITrailEvent;
    FOnPresence: TPresenceEvent;
    FOnReadyToSend: TReadyToSendEvent;
    FOnStartTransfer: TStartTransferEvent;
    FOnSubscriptionRequest: TSubscriptionRequestEvent;
    FOnSync: TSyncEvent;
    FOnTransfer: TTransferEvent;

  private
    tmp_IQIgnore: Boolean;
    tmp_StartTransferFilename: String;
    tmp_StartTransferAccept: Boolean;
    tmp_SubscriptionRequestAccept: Boolean;
    tmp_TransferCancel: Boolean;

{$IFDEF UNICODE}
    tmp_TransferTextB: RawByteString;

{$ENDIF}
    m_ctl: Pointer;

    function HasData: Boolean;
    procedure ReadHnd(Reader: TStream);
    procedure WriteHnd(Writer: TStream);

    procedure SetOK(key: String);
    function GetOK: String;

  protected
    procedure AboutDlg; override;
    procedure DefineProperties(Filer: TFiler); override;

    function ThrowCoreException(Err: Integer; const Desc: AnsiString): EIPWorks;

    procedure TreatErr(Err: Integer; const Desc: string);

    function get_AuthDomain: String;
    procedure set_AuthDomain(valAuthDomain: String);
    function get_AuthMethods: String;
    procedure set_AuthMethods(valAuthMethods: String);
    function get_BuddyCount: Integer;

    function get_BuddyGroup(BuddyIndex: Word): String;
    procedure set_BuddyGroup(BuddyIndex: Word; valBuddyGroup: String);

    function get_BuddyId(BuddyIndex: Word): String;

    function get_BuddyNickName(BuddyIndex: Word): String;
    procedure set_BuddyNickName(BuddyIndex: Word; valBuddyNickName: String);

    function get_BuddyRealName(BuddyIndex: Word): String;

    function get_BuddySubscription(BuddyIndex: Word): TipwxmppBuddySubscriptions;

    function get_Connected: Boolean;
    procedure set_Connected(valConnected: Boolean);

    function get_FirewallAutoDetect: Boolean;
    procedure set_FirewallAutoDetect(valFirewallAutoDetect: Boolean);
    function get_FirewallType: TipwxmppFirewallTypes;
    procedure set_FirewallType(valFirewallType: TipwxmppFirewallTypes);
    function get_FirewallHost: String;
    procedure set_FirewallHost(valFirewallHost: String);
    function get_FirewallPassword: String;
    procedure set_FirewallPassword(valFirewallPassword: String);
    function get_FirewallPort: Integer;
    procedure set_FirewallPort(valFirewallPort: Integer);
    function get_FirewallUser: String;
    procedure set_FirewallUser(valFirewallUser: String);
    function get_IMPort: Integer;
    procedure set_IMPort(valIMPort: Integer);
    function get_IMServer: String;
    procedure set_IMServer(valIMServer: String);
    function get_LocalDirectory: String;
    procedure set_LocalDirectory(valLocalDirectory: String);
    function get_LocalFile: String;
    procedure set_LocalFile(valLocalFile: String);
    function get_LocalHost: String;
    procedure set_LocalHost(valLocalHost: String);
    function get_MessageHTML: String;
    procedure set_MessageHTML(valMessageHTML: String);

    function get_MessageOtherData: String;
    procedure set_MessageOtherData(valMessageOtherData: String);
    function get_MessageSubject: String;
    procedure set_MessageSubject(valMessageSubject: String);

    function get_MessageText: String;
    procedure set_MessageText(valMessageText: String);

    function get_MessageThread: String;
    procedure set_MessageThread(valMessageThread: String);

    function get_MessageType: TipwxmppMessageTypes;
    procedure set_MessageType(valMessageType: TipwxmppMessageTypes);

    function get_Password: String;
    procedure set_Password(valPassword: String);
    function get_Presence: TipwxmppPresences;
    procedure set_Presence(valPresence: TipwxmppPresences);

    function get_Resource: String;
    procedure set_Resource(valResource: String);
    function get_ServerDomain: String;
    procedure set_ServerDomain(valServerDomain: String);
    function get_Status: String;
    procedure set_Status(valStatus: String);

    function get_Timeout: Integer;
    procedure set_Timeout(valTimeout: Integer);
    function get_User: String;
    procedure set_User(valUser: String);
    function get_UserDomain: String;
    procedure set_UserDomain(valUserDomain: String);
    function get_UserInfoCount: Integer;
    procedure set_UserInfoCount(valUserInfoCount: Integer);

    function get_UserInfoField(FieldIndex: Word): String;
    procedure set_UserInfoField(FieldIndex: Word; valUserInfoField: String);

    function get_UserInfoValue(FieldIndex: Word): String;
    procedure set_UserInfoValue(FieldIndex: Word; valUserInfoValue: String);

{$IFDEF UNICODE}
    function get_TransferTextB: RawByteString;

{$ENDIF}
  public

    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; OEMKey: string); reintroduce; overload;
    destructor Destroy; override;

    property OK: String read GetOK write SetOK;

    property BuddyCount: Integer read get_BuddyCount;
    property BuddyGroup[BuddyIndex: Word]: String read get_BuddyGroup write set_BuddyGroup;
    property BuddyId[BuddyIndex: Word]: String read get_BuddyId;
    property BuddyNickName[BuddyIndex: Word]: String read get_BuddyNickName write set_BuddyNickName;
    property BuddyRealName[BuddyIndex: Word]: String read get_BuddyRealName;
    property BuddySubscription[BuddyIndex: Word]: TipwxmppBuddySubscriptions read get_BuddySubscription;
    property Connected: Boolean read get_Connected write set_Connected;

    property MessageHTML: String read get_MessageHTML write set_MessageHTML;

    property MessageSubject: String read get_MessageSubject write set_MessageSubject;
    property MessageText: String read get_MessageText write set_MessageText;
    property MessageThread: String read get_MessageThread write set_MessageThread;
    property MessageType: TipwxmppMessageTypes read get_MessageType write set_MessageType;

    property Presence: TipwxmppPresences read get_Presence write set_Presence;

    property Status: String read get_Status write set_Status;

    property UserInfoCount: Integer read get_UserInfoCount write set_UserInfoCount;
    property UserInfoField[FieldIndex: Word]: String read get_UserInfoField write set_UserInfoField;
    property UserInfoValue[FieldIndex: Word]: String read get_UserInfoValue write set_UserInfoValue;

{$IFDEF UNICODE}
    property TransferTextB: RawByteString read get_TransferTextB;

{$ENDIF}
{$IFNDEF DELPHI3}
    procedure Add(JabberId: String; Name: String; Groups: String);

    procedure Cancel(JabberId: String);

    procedure ChangePassword(Password: String);

    procedure ChangePresence(PresenceCode: Integer; Status: String);

    function Config(ConfigurationString: String): String;
    procedure Connect(User: String; Password: String);

    procedure Disconnect();

    procedure DoEvents();

    procedure Interrupt();

    procedure ProbePresence(JabberId: String);

    procedure QueryRegister(XMPPServer: String);

    procedure Register(XMPPServer: String);

    procedure Remove(JabberId: String; Name: String; Group: String);

    procedure RetrieveRoster();

    procedure SendCommand(Command: String);

    procedure SendFile(JabberId: String);

    function SendMessage(JabberId: String): String;
    procedure SetUserInfoField(Field: String; Value: String);

    procedure SubscribeTo(JabberId: String);

    procedure Unregister();

    procedure UnsubscribeTo(JabberId: String);

{$ENDIF}
  published

    property AuthDomain: String read get_AuthDomain write set_AuthDomain

      ;
    property AuthMethods: String read get_AuthMethods write set_AuthMethods

      ;

    property FirewallAutoDetect: Boolean read get_FirewallAutoDetect write set_FirewallAutoDetect default False;
    property FirewallType: TipwxmppFirewallTypes read get_FirewallType write set_FirewallType default fwNone;
    property FirewallHost: String read get_FirewallHost write set_FirewallHost

      ;
    property FirewallPassword: String read get_FirewallPassword write set_FirewallPassword

      ;
    property FirewallPort: Integer read get_FirewallPort write set_FirewallPort default 0;
    property FirewallUser: String read get_FirewallUser write set_FirewallUser

      ;
    property IMPort: Integer read get_IMPort write set_IMPort default 5222;
    property IMServer: String read get_IMServer write set_IMServer

      ;
    property LocalDirectory: String read get_LocalDirectory write set_LocalDirectory

      ;
    property LocalFile: String read get_LocalFile write set_LocalFile

      ;
    property LocalHost: String read get_LocalHost write set_LocalHost stored False

      ;

    property MessageOtherData: String read get_MessageOtherData write set_MessageOtherData

      ;

    property Password: String read get_Password write set_Password

      ;

    property Resource: String read get_Resource write set_Resource

      ;
    property ServerDomain: String read get_ServerDomain write set_ServerDomain

      ;

    property Timeout: Integer read get_Timeout write set_Timeout default 60;
    property User: String read get_User write set_User

      ;
    property UserDomain: String read get_UserDomain write set_UserDomain

      ;

    property OnBuddyUpdate: TBuddyUpdateEvent read FOnBuddyUpdate write FOnBuddyUpdate;
    property OnConnected: TConnectedEvent read FOnConnected write FOnConnected;
    property OnConnectionStatus: TConnectionStatusEvent read FOnConnectionStatus write FOnConnectionStatus;
    property OnDisconnected: TDisconnectedEvent read FOnDisconnected write FOnDisconnected;
    property OnEndTransfer: TEndTransferEvent read FOnEndTransfer write FOnEndTransfer;
    property OnError: TErrorEvent read FOnError write FOnError;
    property OnIQ: TIQEvent read FOnIQ write FOnIQ;
    property OnMessageIn: TMessageInEvent read FOnMessageIn write FOnMessageIn;
    property OnPITrail: TPITrailEvent read FOnPITrail write FOnPITrail;
    property OnPresence: TPresenceEvent read FOnPresence write FOnPresence;
    property OnReadyToSend: TReadyToSendEvent read FOnReadyToSend write FOnReadyToSend;
    property OnStartTransfer: TStartTransferEvent read FOnStartTransfer write FOnStartTransfer;
    property OnSubscriptionRequest: TSubscriptionRequestEvent read FOnSubscriptionRequest write FOnSubscriptionRequest;
    property OnSync: TSyncEvent read FOnSync write FOnSync;
    property OnTransfer: TTransferEvent read FOnTransfer write FOnTransfer;

  end;

procedure Register;

implementation

{$T-}
{$IFDEF fpc}
// Lazarus
uses Messages;
{$ELSE}

uses {$IF CompilerVersion >= 23}Winapi.Windows{$ELSE}Windows{$IFEND}, {$IF CompilerVersion >= 23}Winapi.Messages{$ELSE}Messages{$IFEND};
{$ENDIF}

const
  PID_XMPP_AuthDomain = 1;
  PID_XMPP_AuthMethods = 2;
  PID_XMPP_BuddyCount = 3;
  PID_XMPP_BuddyGroup = 4;
  PID_XMPP_BuddyId = 5;
  PID_XMPP_BuddyNickName = 6;
  PID_XMPP_BuddyRealName = 7;
  PID_XMPP_BuddySubscription = 8;
  PID_XMPP_Connected = 9;
  PID_XMPP_FirewallAutoDetect = 10;
  PID_XMPP_FirewallType = 11;
  PID_XMPP_FirewallHost = 12;
  PID_XMPP_FirewallPassword = 13;
  PID_XMPP_FirewallPort = 14;
  PID_XMPP_FirewallUser = 15;
  PID_XMPP_IMPort = 16;
  PID_XMPP_IMServer = 17;
  PID_XMPP_LocalDirectory = 18;
  PID_XMPP_LocalFile = 19;
  PID_XMPP_LocalHost = 20;
  PID_XMPP_MessageHTML = 21;
  PID_XMPP_MessageOtherData = 22;
  PID_XMPP_MessageSubject = 23;
  PID_XMPP_MessageText = 24;
  PID_XMPP_MessageThread = 25;
  PID_XMPP_MessageType = 26;
  PID_XMPP_Password = 27;
  PID_XMPP_Presence = 28;
  PID_XMPP_Resource = 29;
  PID_XMPP_ServerDomain = 30;
  PID_XMPP_Status = 31;
  PID_XMPP_Timeout = 32;
  PID_XMPP_User = 33;
  PID_XMPP_UserDomain = 34;
  PID_XMPP_UserInfoCount = 35;
  PID_XMPP_UserInfoField = 36;
  PID_XMPP_UserInfoValue = 37;

  EID_XMPP_BuddyUpdate = 1;
  EID_XMPP_Connected = 2;
  EID_XMPP_ConnectionStatus = 3;
  EID_XMPP_Disconnected = 4;
  EID_XMPP_EndTransfer = 5;
  EID_XMPP_Error = 6;
  EID_XMPP_IQ = 7;
  EID_XMPP_MessageIn = 8;
  EID_XMPP_PITrail = 9;
  EID_XMPP_Presence = 10;
  EID_XMPP_ReadyToSend = 11;
  EID_XMPP_StartTransfer = 12;
  EID_XMPP_SubscriptionRequest = 13;
  EID_XMPP_Sync = 14;
  EID_XMPP_Transfer = 15;

  MID_XMPP_Add = 2;
  MID_XMPP_Cancel = 3;
  MID_XMPP_ChangePassword = 4;
  MID_XMPP_ChangePresence = 5;
  MID_XMPP_Config = 6;
  MID_XMPP_Connect = 7;
  MID_XMPP_Disconnect = 8;
  MID_XMPP_DoEvents = 9;
  MID_XMPP_Interrupt = 10;
  MID_XMPP_ProbePresence = 11;
  MID_XMPP_QueryRegister = 12;
  MID_XMPP_Register = 13;
  MID_XMPP_Remove = 14;
  MID_XMPP_RetrieveRoster = 15;
  MID_XMPP_SendCommand = 16;
  MID_XMPP_SendFile = 17;
  MID_XMPP_SendMessage = 18;
  MID_XMPP_SetUserInfoField = 21;
  MID_XMPP_SubscribeTo = 22;
  MID_XMPP_Unregister = 23;
  MID_XMPP_UnsubscribeTo = 24;

{$IFDEF LINUX}
{$DEFINE USEIPWORKSDLL}
  DLLNAME = 'libipworks.so.9';
{$ELSE}
  DLLNAME = 'IPWORKS9.DLL';
{$ENDIF}
{$IFNDEF USEIPWORKSDLL}
{$IFDEF WIN64}
{$R 'ipwxmpp64.dru'}
{$ELSE}
{$R 'ipwxmpp.dru'}
{$ENDIF}
{$ENDIF}
{$WARNINGS OFF}

type
  VOIDARR = array [0 .. 32] of Pointer;
  LPVOIDARR = ^VOIDARR;
  INTARR = array [0 .. 32] of Integer;
  LPINTARR = ^INTARR;
  LPINT = ^Cardinal;
  MEventHandle = function(lpContext: TipwXMPP; event_id: Integer; cparam: Integer; params: LPVOIDARR; cbparam: LPINTARR): Integer;
{$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  PEventHandle = ^MEventHandle;

{$IFNDEF USEIPWORKSDLL}

var
  pEntryPoint: Pointer;
  pBaseAddress: Pointer;
  iLoadCount: Integer;
{$ENDIF USEIPWORKSDLL}
{$IFNDEF USEIPWORKSDLL}
  _IPWorks_XMPP_Create: function(pMethod: PEventHandle; pObject: TipwXMPP; pKey: Pointer): Pointer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_Destroy: function(p: Pointer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_Set: function(p: Pointer; index: Integer; arridx: Integer; Value: Pointer; len: Cardinal): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_Get: function(p: Pointer; index: Integer; arridx: Integer; len: LPINT): Pointer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_GetLastError: function(p: Pointer): PAnsiChar; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_StaticInit: function(instance: Pointer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_CheckIndex: function(p: Pointer; index: Integer; arridx: Integer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  _IPWorks_XMPP_Do: function(p: Pointer; method_id: Integer; cparam: Integer; params: LPVOIDARR; cbparam: LPINTARR): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
{$ELSE}

function _IPWorks_XMPP_Create(pMethod: PEventHandle; pObject: TipwXMPP; pKey: Pointer): Pointer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
external DLLNAME name 'IPWorks_XMPP_Create';
  function _IPWorks_XMPP_Destroy(p: Pointer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
  external DLLNAME name 'IPWorks_XMPP_Destroy';
    function _IPWorks_XMPP_Set(p: Pointer; index: Integer; arridx: Integer; Value: Pointer; len: Cardinal): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
    external DLLNAME name 'IPWorks_XMPP_Set';
      function _IPWorks_XMPP_Get(p: Pointer; index: Integer; arridx: Integer; len: LPINT): Pointer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
      external DLLNAME name 'IPWorks_XMPP_Get';
        function _IPWorks_XMPP_GetLastError(p: Pointer): PAnsiChar; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
        external DLLNAME name 'IPWorks_XMPP_GetLastError';
          function _IPWorks_XMPP_StaticInit(instance: Pointer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
          external DLLNAME name 'IPWorks_XMPP_StaticInit';
            function _IPWorks_XMPP_CheckIndex(p: Pointer; index: Integer; arridx: Integer): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
            external DLLNAME name 'IPWorks_XMPP_CheckIndex';
              function _IPWorks_XMPP_Do(p: Pointer; method_id: Integer; cparam: Integer; params: LPVOIDARR; cbparam: LPINTARR): Integer; {$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
              external DLLNAME name 'IPWorks_XMPP_Do';
{$ENDIF}
{$HINTS OFF}
                function FireEvents(lpContext: TipwXMPP; event_id: Integer; cparam: Integer; params: LPVOIDARR; cbparam: LPINTARR): Integer;
{$IFDEF LINUX}cdecl{$ELSE}stdcall{$ENDIF};
                var
                  x: Integer;
                  tmp64: PInt64;
                  bANSI: Boolean;

                  tmp_BuddyUpdateBuddyIdx: Integer;
                  tmp_ConnectedStatusCode: Integer;
                  tmp_ConnectedDescription: String;
                  tmp_ConnectionStatusConnectionEvent: String;
                  tmp_ConnectionStatusStatusCode: Integer;
                  tmp_ConnectionStatusDescription: String;
                  tmp_DisconnectedStatusCode: Integer;
                  tmp_DisconnectedDescription: String;
                  tmp_EndTransferDirection: Integer;
                  tmp_EndTransferFileId: String;
                  tmp_EndTransferFilename: String;
                  tmp_EndTransferSuccess: Boolean;
                  tmp_ErrorErrorCode: Integer;
                  tmp_ErrorDescription: String;
                  tmp_IQIq: String;
                  tmp_IQId: String;
                  tmp_IQFrom: String;
                  tmp_IQIqType: String;
                  tmp_MessageInMessageId: String;
                  tmp_MessageInFrom: String;
                  tmp_MessageInDomain: String;
                  tmp_MessageInResource: String;
                  tmp_MessageInMessageType: Integer;
                  tmp_MessageInSubject: String;
                  tmp_MessageInMessageThread: String;
                  tmp_MessageInMessageText: String;
                  tmp_MessageInMessageHTML: String;
                  tmp_MessageInOther: String;
                  tmp_PITrailDirection: Integer;
                  tmp_PITrailPi: String;
                  tmp_PresenceUser: String;
                  tmp_PresenceDomain: String;
                  tmp_PresenceResource: String;
                  tmp_PresenceAvailability: Integer;
                  tmp_PresenceStatus: String;
                  tmp_StartTransferDirection: Integer;
                  tmp_StartTransferFileId: String;
                  tmp_StartTransferUser: String;
                  tmp_StartTransferDomain: String;
                  tmp_StartTransferResource: String;
                  tmp_StartTransferDatetime: String;
                  tmp_StartTransferSize: Int64;
                  tmp_SubscriptionRequestFrom: String;
                  tmp_SubscriptionRequestDomain: String;
                  tmp_TransferDirection: Integer;
                  tmp_TransferFileId: String;
                  tmp_TransferFilename: String;
                  tmp_TransferBytesTransferred: Int64;
                  tmp_TransferPercentDone: Integer;
                  tmp_TransferText: AnsiString;

                begin

                  result := 0;
                  bANSI := true;

{$IFDEF UNICODE}
                  if event_id > 10000 then
                  begin
                    event_id := event_id - 10000;
                    bANSI := False;
                  end;
{$ENDIF}
                  case event_id of

                    EID_XMPP_BuddyUpdate:
                      begin
                        if Assigned(lpContext.FOnBuddyUpdate) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_BuddyUpdateBuddyIdx := Integer(params^[0]);

                          lpContext.FOnBuddyUpdate(lpContext, tmp_BuddyUpdateBuddyIdx);

                        end;
                      end;
                    EID_XMPP_Connected:
                      begin
                        if Assigned(lpContext.FOnConnected) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_ConnectedStatusCode := Integer(params^[0]);
                          tmp_ConnectedDescription :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          lpContext.FOnConnected(lpContext, tmp_ConnectedStatusCode, tmp_ConnectedDescription);

                        end;
                      end;
                    EID_XMPP_ConnectionStatus:
                      begin
                        if Assigned(lpContext.FOnConnectionStatus) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_ConnectionStatusConnectionEvent :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[0]));

                          tmp_ConnectionStatusStatusCode := Integer(params^[1]);
                          tmp_ConnectionStatusDescription :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          lpContext.FOnConnectionStatus(lpContext, tmp_ConnectionStatusConnectionEvent, tmp_ConnectionStatusStatusCode,
                            tmp_ConnectionStatusDescription);

                        end;
                      end;
                    EID_XMPP_Disconnected:
                      begin
                        if Assigned(lpContext.FOnDisconnected) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_DisconnectedStatusCode := Integer(params^[0]);
                          tmp_DisconnectedDescription :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          lpContext.FOnDisconnected(lpContext, tmp_DisconnectedStatusCode, tmp_DisconnectedDescription);

                        end;
                      end;
                    EID_XMPP_EndTransfer:
                      begin
                        if Assigned(lpContext.FOnEndTransfer) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_EndTransferDirection := Integer(params^[0]);
                          tmp_EndTransferFileId :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_EndTransferFilename :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp_EndTransferSuccess := Boolean(params^[3]);

                          lpContext.FOnEndTransfer(lpContext, tmp_EndTransferDirection, tmp_EndTransferFileId, tmp_EndTransferFilename, tmp_EndTransferSuccess);

                        end;
                      end;
                    EID_XMPP_Error:
                      begin
                        if Assigned(lpContext.FOnError) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_ErrorErrorCode := Integer(params^[0]);
                          tmp_ErrorDescription :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          lpContext.FOnError(lpContext, tmp_ErrorErrorCode, tmp_ErrorDescription);

                        end;
                      end;
                    EID_XMPP_IQ:
                      begin
                        if Assigned(lpContext.FOnIQ) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_IQIq := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[0]));

                          tmp_IQId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_IQFrom := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp_IQIqType := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[3]));

                          lpContext.tmp_IQIgnore := Boolean(params^[4]);

                          lpContext.FOnIQ(lpContext, tmp_IQIq, tmp_IQId, tmp_IQFrom, tmp_IQIqType, lpContext.tmp_IQIgnore);

                          params^[4] := Pointer(lpContext.tmp_IQIgnore);

                        end;
                      end;
                    EID_XMPP_MessageIn:
                      begin
                        if Assigned(lpContext.FOnMessageIn) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_MessageInMessageId :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[0]));

                          tmp_MessageInFrom :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_MessageInDomain :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp_MessageInResource :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[3]));

                          tmp_MessageInMessageType := Integer(params^[4]);
                          tmp_MessageInSubject :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[5]));

                          tmp_MessageInMessageThread :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[6]));

                          tmp_MessageInMessageText :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[7]));

                          tmp_MessageInMessageHTML :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[8]));

                          tmp_MessageInOther :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[9]));

                          lpContext.FOnMessageIn(lpContext, tmp_MessageInMessageId, tmp_MessageInFrom, tmp_MessageInDomain, tmp_MessageInResource,
                            tmp_MessageInMessageType, tmp_MessageInSubject, tmp_MessageInMessageThread, tmp_MessageInMessageText, tmp_MessageInMessageHTML,
                            tmp_MessageInOther);

                        end;
                      end;
                    EID_XMPP_PITrail:
                      begin
                        if Assigned(lpContext.FOnPITrail) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_PITrailDirection := Integer(params^[0]);
                          tmp_PITrailPi := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          lpContext.FOnPITrail(lpContext, tmp_PITrailDirection, tmp_PITrailPi);

                        end;
                      end;
                    EID_XMPP_Presence:
                      begin
                        if Assigned(lpContext.FOnPresence) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_PresenceUser :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[0]));

                          tmp_PresenceDomain :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_PresenceResource :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp_PresenceAvailability := Integer(params^[3]);
                          tmp_PresenceStatus :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[4]));

                          lpContext.FOnPresence(lpContext, tmp_PresenceUser, tmp_PresenceDomain, tmp_PresenceResource, tmp_PresenceAvailability,
                            tmp_PresenceStatus);

                        end;
                      end;
                    EID_XMPP_ReadyToSend:
                      begin
                        if Assigned(lpContext.FOnReadyToSend) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          lpContext.FOnReadyToSend(lpContext);

                        end;
                      end;
                    EID_XMPP_StartTransfer:
                      begin
                        if Assigned(lpContext.FOnStartTransfer) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_StartTransferDirection := Integer(params^[0]);
                          tmp_StartTransferFileId :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_StartTransferUser :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp_StartTransferDomain :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[3]));

                          tmp_StartTransferResource :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[4]));

                          lpContext.tmp_StartTransferFilename :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[5]));

                          tmp_StartTransferDatetime :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[6]));

                          tmp64 := PInt64(params^[7]);
                          tmp_StartTransferSize := tmp64^;

                          lpContext.tmp_StartTransferAccept := Boolean(params^[8]);

                          lpContext.FOnStartTransfer(lpContext, tmp_StartTransferDirection, tmp_StartTransferFileId, tmp_StartTransferUser,
                            tmp_StartTransferDomain, tmp_StartTransferResource, lpContext.tmp_StartTransferFilename, tmp_StartTransferDatetime,
                            tmp_StartTransferSize, lpContext.tmp_StartTransferAccept);

                          params^[5] := Pointer(lpContext.tmp_StartTransferFilename);
                          cbparam^[5] := Length(lpContext.tmp_StartTransferFilename);

                          params^[8] := Pointer(lpContext.tmp_StartTransferAccept);

                        end;
                      end;
                    EID_XMPP_SubscriptionRequest:
                      begin
                        if Assigned(lpContext.FOnSubscriptionRequest) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_SubscriptionRequestFrom :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[0]));

                          tmp_SubscriptionRequestDomain :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          lpContext.tmp_SubscriptionRequestAccept := Boolean(params^[2]);

                          lpContext.FOnSubscriptionRequest(lpContext, tmp_SubscriptionRequestFrom, tmp_SubscriptionRequestDomain,
                            lpContext.tmp_SubscriptionRequestAccept);

                          params^[2] := Pointer(lpContext.tmp_SubscriptionRequestAccept);

                        end;
                      end;
                    EID_XMPP_Sync:
                      begin
                        if Assigned(lpContext.FOnSync) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          lpContext.FOnSync(lpContext);

                        end;
                      end;
                    EID_XMPP_Transfer:
                      begin
                        if Assigned(lpContext.FOnTransfer) then
                        begin
{$IFDEF UNICODE}
                          if bANSI then
                          begin

                            SetString(lpContext.tmp_TransferTextB, PAnsiChar(params^[5]), cbparam^[5]);

                            result := -10000;
                            exit;
                          end;
{$ENDIF}
                          tmp_TransferDirection := Integer(params^[0]);
                          tmp_TransferFileId :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[1]));

                          tmp_TransferFilename :=
                          {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[2]));

                          tmp64 := PInt64(params^[3]);
                          tmp_TransferBytesTransferred := tmp64^;

                          tmp_TransferPercentDone := Integer(params^[4]);
                          SetString(tmp_TransferText, {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(params^[5]), cbparam^[5]);

                          lpContext.tmp_TransferCancel := Boolean(params^[6]);

                          lpContext.FOnTransfer(lpContext, tmp_TransferDirection, tmp_TransferFileId, tmp_TransferFilename, tmp_TransferBytesTransferred,
                            tmp_TransferPercentDone, tmp_TransferText, lpContext.tmp_TransferCancel);

                          params^[6] := Pointer(lpContext.tmp_TransferCancel);

                        end;
                      end;

                    99999:
                      begin
                        x := 0;
                      end;
                  end;
                end;

                procedure Register;
                begin
                  ipwcore.Register;
                  RegisterComponents('IP*Works!', [TipwXMPP]);
                end;

                constructor TipwXMPP.Create(AOwner: TComponent);
                begin
                  Create(AOwner, IPWORKS_OEMKEY_70);
                end;

                constructor TipwXMPP.Create(AOwner: TComponent; OEMKey: string);
                begin
                  inherited Create(AOwner);
                  m_ctl := nil;

                  if @_IPWorks_XMPP_Create <> nil then
                    m_ctl := _IPWorks_XMPP_Create(@FireEvents, self, nil);

                  if m_ctl = nil then
                    TreatErr(-1, 'IP*Works! XMPP: Error creating component');

                  _IPWorks_XMPP_Set(m_ctl, 255, 0, Pointer(PAnsiChar(AnsiString(OEMKey))), 0);

                  try
                    set_AuthDomain('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_AuthMethods('*')
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallAutoDetect(False)
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallType(fwNone)
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallHost('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallPassword('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallPort(0)
                  except
                    on E: Exception do
                  end;
                  try
                    set_FirewallUser('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_IMPort(5222)
                  except
                    on E: Exception do
                  end;
                  try
                    set_IMServer('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_LocalDirectory('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_LocalFile('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_MessageOtherData('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_Password('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_Resource('IP*Works! XMPP Agent')
                  except
                    on E: Exception do
                  end;
                  try
                    set_ServerDomain('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_Timeout(60)
                  except
                    on E: Exception do
                  end;
                  try
                    set_User('')
                  except
                    on E: Exception do
                  end;
                  try
                    set_UserDomain('')
                  except
                    on E: Exception do
                  end;

                end;

                destructor TipwXMPP.Destroy;
                begin
                  if m_ctl <> nil then
                  begin
                    if @_IPWorks_XMPP_Destroy <> nil then
                      _IPWorks_XMPP_Destroy(m_ctl);
                  end;
                  m_ctl := nil;
                  inherited Destroy;
                end;

                function TipwXMPP.ThrowCoreException(Err: Integer; const Desc: AnsiString): EIPWorks;
                begin
                  result := EipwXMPP.CreateCode(Err, Desc);
                end;

              { ********************************************************************************* }

                procedure TipwXMPP.AboutDlg;
                var
                  p: LPVOIDARR;
                  pc: LPINTARR;
                begin
{$IFDEF LINUX}
                  inherited AboutDlg;
{$ELSE}
                  p := nil;
                  pc := nil;
                  if @_IPWorks_XMPP_Do <> nil then
                    _IPWorks_XMPP_Do(m_ctl, 255, 0, p, pc);
{$ENDIF}
                end;

              { ********************************************************************************* }

                procedure TipwXMPP.SetOK(key: String);
                begin
                end;

                function TipwXMPP.GetOK: String;
                begin
                  result := '';
                end;

              { ********************************************************************************* }

                function TipwXMPP.HasData: Boolean;
                begin
                  result := False;
                end;

                procedure TipwXMPP.ReadHnd(Reader: TStream);
                begin
                end;

                procedure TipwXMPP.WriteHnd(Writer: TStream);
                begin
                end;

                procedure TipwXMPP.DefineProperties(Filer: TFiler);
                begin
                  inherited DefineProperties(Filer);
                  Filer.DefineBinaryProperty('RegHnd', ReadHnd, WriteHnd, HasData);
                end;

              { ********************************************************************************* }

                procedure TipwXMPP.TreatErr(Err: Integer; const Desc: String);
                var
                  msg: AnsiString;
                begin
                  msg := AnsiString(Desc);
                  if Length(msg) = 0 then
                  begin
                    if @_IPWorks_XMPP_GetLastError <> nil then
                      msg := _IPWorks_XMPP_GetLastError(m_ctl);
                  end;
                  raise ThrowCoreException(Err, msg);
                end;

              { ********************************************************************************* }

                function TipwXMPP.get_AuthDomain: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_AuthDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_AuthDomain(valAuthDomain: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valAuthDomain);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_AuthDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_AuthMethods: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_AuthMethods{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_AuthMethods(valAuthMethods: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valAuthMethods);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_AuthMethods{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_BuddyCount: Integer;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Integer(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddyCount{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Integer(tmp); {$ELSE}result := Integer(tmp); {$ENDIF}
                end;

                function TipwXMPP.get_BuddyGroup(BuddyIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_BuddyGroup, BuddyIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for BuddyGroup');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddyGroup{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_BuddyGroup(BuddyIndex: Word; valBuddyGroup: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valBuddyGroup);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_BuddyGroup{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_BuddyId(BuddyIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_BuddyId, BuddyIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for BuddyId');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddyId{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;

                function TipwXMPP.get_BuddyNickName(BuddyIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_BuddyNickName, BuddyIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for BuddyNickName');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddyNickName{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_BuddyNickName(BuddyIndex: Word; valBuddyNickName: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valBuddyNickName);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_BuddyNickName{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_BuddyRealName(BuddyIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_BuddyRealName, BuddyIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for BuddyRealName');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddyRealName{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;

                function TipwXMPP.get_BuddySubscription(BuddyIndex: Word): TipwxmppBuddySubscriptions;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := TipwxmppBuddySubscriptions(0);
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_BuddySubscription, BuddyIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for BuddySubscription');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_BuddySubscription{$IFDEF UNICODE} + 10000{$ENDIF}, BuddyIndex, nil);
{$IFDEF UNICODE}result := TipwxmppBuddySubscriptions(tmp); {$ELSE}result := TipwxmppBuddySubscriptions(tmp); {$ENDIF}
                end;

                function TipwXMPP.get_Connected: Boolean;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Boolean(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Connected{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Boolean(tmp); {$ELSE}result := Boolean(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_Connected(valConnected: Boolean);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Connected, 0, Pointer(valConnected), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallAutoDetect: Boolean;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Boolean(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallAutoDetect{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Boolean(tmp); {$ELSE}result := Boolean(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallAutoDetect(valFirewallAutoDetect: Boolean);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallAutoDetect, 0, Pointer(valFirewallAutoDetect), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallType: TipwxmppFirewallTypes;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := TipwxmppFirewallTypes(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallType{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := TipwxmppFirewallTypes(tmp); {$ELSE}result := TipwxmppFirewallTypes(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallType(valFirewallType: TipwxmppFirewallTypes);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallType, 0, Pointer(valFirewallType), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallHost: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallHost{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallHost(valFirewallHost: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valFirewallHost);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallHost{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallPassword: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallPassword{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallPassword(valFirewallPassword: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valFirewallPassword);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallPassword{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallPort: Integer;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Integer(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallPort{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Integer(tmp); {$ELSE}result := Integer(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallPort(valFirewallPort: Integer);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallPort, 0, Pointer(valFirewallPort), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_FirewallUser: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_FirewallUser{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_FirewallUser(valFirewallUser: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valFirewallUser);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_FirewallUser{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_IMPort: Integer;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Integer(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_IMPort{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Integer(tmp); {$ELSE}result := Integer(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_IMPort(valIMPort: Integer);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_IMPort, 0, Pointer(valIMPort), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_IMServer: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_IMServer{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_IMServer(valIMServer: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valIMServer);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_IMServer{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_LocalDirectory: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_LocalDirectory{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_LocalDirectory(valLocalDirectory: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valLocalDirectory);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_LocalDirectory{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_LocalFile: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_LocalFile{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_LocalFile(valLocalFile: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valLocalFile);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_LocalFile{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_LocalHost: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_LocalHost{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_LocalHost(valLocalHost: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valLocalHost);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_LocalHost{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageHTML: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageHTML{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageHTML(valMessageHTML: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valMessageHTML);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageHTML{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageOtherData: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageOtherData{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageOtherData(valMessageOtherData: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valMessageOtherData);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageOtherData{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageSubject: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageSubject{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageSubject(valMessageSubject: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valMessageSubject);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageSubject{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageText: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageText{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageText(valMessageText: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valMessageText);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageText{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageThread: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageThread{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageThread(valMessageThread: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valMessageThread);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageThread{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_MessageType: TipwxmppMessageTypes;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := TipwxmppMessageTypes(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_MessageType{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := TipwxmppMessageTypes(tmp); {$ELSE}result := TipwxmppMessageTypes(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_MessageType(valMessageType: TipwxmppMessageTypes);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_MessageType, 0, Pointer(valMessageType), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_Password: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Password{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_Password(valPassword: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valPassword);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Password{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_Presence: TipwxmppPresences;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := TipwxmppPresences(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Presence{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := TipwxmppPresences(tmp); {$ELSE}result := TipwxmppPresences(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_Presence(valPresence: TipwxmppPresences);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Presence, 0, Pointer(valPresence), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_Resource: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Resource{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_Resource(valResource: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valResource);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Resource{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_ServerDomain: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_ServerDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_ServerDomain(valServerDomain: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valServerDomain);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_ServerDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_Status: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Status{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_Status(valStatus: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valStatus);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Status{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_Timeout: Integer;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Integer(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_Timeout{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Integer(tmp); {$ELSE}result := Integer(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_Timeout(valTimeout: Integer);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_Timeout, 0, Pointer(valTimeout), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_User: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_User{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_User(valUser: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valUser);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_User{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_UserDomain: String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_UserDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_UserDomain(valUserDomain: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valUserDomain);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_UserDomain{$IFDEF UNICODE} + 10000{$ENDIF}, 0,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_UserInfoCount: Integer;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := Integer(0);

                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_UserInfoCount{$IFDEF UNICODE} + 10000{$ENDIF}, 0, nil);
{$IFDEF UNICODE}result := Integer(tmp); {$ELSE}result := Integer(tmp); {$ENDIF}
                end;
                procedure TipwXMPP.set_UserInfoCount(valUserInfoCount: Integer);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_UserInfoCount, 0, Pointer(valUserInfoCount), 0);
                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_UserInfoField(FieldIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_UserInfoField, FieldIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for UserInfoField');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_UserInfoField{$IFDEF UNICODE} + 10000{$ENDIF}, FieldIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_UserInfoField(FieldIndex: Word; valUserInfoField: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valUserInfoField);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_UserInfoField{$IFDEF UNICODE} + 10000{$ENDIF}, FieldIndex,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

                function TipwXMPP.get_UserInfoValue(FieldIndex: Word): String;
                var

                  tmp: Pointer;

                  Err: Integer;

                begin
                  result := '';
                  if @_IPWorks_XMPP_CheckIndex = nil then
                    exit;
                  Err := _IPWorks_XMPP_CheckIndex(m_ctl, PID_XMPP_UserInfoValue, FieldIndex);
                  if Err <> 0 then
                    TreatErr(Err, 'Invalid array index value for UserInfoValue');
                  if @_IPWorks_XMPP_Get = nil then
                    exit;
                  tmp := _IPWorks_XMPP_Get(m_ctl, PID_XMPP_UserInfoValue{$IFDEF UNICODE} + 10000{$ENDIF}, FieldIndex, nil);

{$IFDEF UNICODE}result := String(PWideChar(tmp)); {$ELSE}result := String(PAnsiChar(tmp)); {$ENDIF}
                end;
                procedure TipwXMPP.set_UserInfoValue(FieldIndex: Word; valUserInfoValue: String);
                var
                  Err: Integer;
                  tmp: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                begin
                  if @_IPWorks_XMPP_Set = nil then
                    exit;
                  tmp := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(valUserInfoValue);
                  Err := _IPWorks_XMPP_Set(m_ctl, PID_XMPP_UserInfoValue{$IFDEF UNICODE} + 10000{$ENDIF}, FieldIndex,
                    Pointer({$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp)), 0);

                  if Err <> 0 then
                    TreatErr(Err, '');
                end;

              { ********************************************************************************* }
{$IFDEF UNICODE}
                function TipwXMPP.get_TransferTextB: RawByteString;
                begin
                  result := tmp_TransferTextB;
                end;

{$ENDIF}
              { ********************************************************************************* }

{$IFNDEF DELPHI3}
                procedure TipwXMPP.Add(JabberId: String; Name: String; Groups: String);

                var
                  param: array [0 .. 4] of Pointer;
                  paramcb: array [0 .. 4] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Name: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Groups: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 4 do
                    param[i] := nil;
                  for i := 0 to 4 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Name := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Name);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Name);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Groups := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Groups);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Groups);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Add{$IFDEF UNICODE} + 10000{$ENDIF}, 3, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Cancel(JabberId: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Cancel{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.ChangePassword(Password: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_Password: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_Password := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Password);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Password);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_ChangePassword{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.ChangePresence(PresenceCode: Integer; Status: String);

                var
                  param: array [0 .. 3] of Pointer;
                  paramcb: array [0 .. 3] of Integer;
                  i, Err: Integer;
                  tmp_Status: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 3 do
                    param[i] := nil;
                  for i := 0 to 3 do
                    paramcb[i] := 0;

                  i := 0;

                  param[i] := Pointer(PresenceCode);
                  paramcb[i] := 0;
                  i := i + 1;
                  tmp_Status := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Status);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Status);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_ChangePresence{$IFDEF UNICODE} + 10000{$ENDIF}, 2, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                function TipwXMPP.Config(ConfigurationString: String): String;
                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_ConfigurationString: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  result := '';

                  tmp_ConfigurationString := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(ConfigurationString);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_ConfigurationString);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Config{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                  result := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(param[i]);

                end;

                procedure TipwXMPP.Connect(User: String; Password: String);

                var
                  param: array [0 .. 3] of Pointer;
                  paramcb: array [0 .. 3] of Integer;
                  i, Err: Integer;
                  tmp_User: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Password: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 3 do
                    param[i] := nil;
                  for i := 0 to 3 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_User := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(User);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_User);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Password := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Password);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Password);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Connect{$IFDEF UNICODE} + 10000{$ENDIF}, 2, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Disconnect();

                var
                  param: array [0 .. 1] of Pointer;
                  paramcb: array [0 .. 1] of Integer;
                  i, Err: Integer;

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 1 do
                    param[i] := nil;
                  for i := 0 to 1 do
                    paramcb[i] := 0;

                  i := 0;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Disconnect{$IFDEF UNICODE} + 10000{$ENDIF}, 0, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.DoEvents();

                var
                  param: array [0 .. 1] of Pointer;
                  paramcb: array [0 .. 1] of Integer;
                  i, Err: Integer;

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 1 do
                    param[i] := nil;
                  for i := 0 to 1 do
                    paramcb[i] := 0;

                  i := 0;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_DoEvents{$IFDEF UNICODE} + 10000{$ENDIF}, 0, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Interrupt();

                var
                  param: array [0 .. 1] of Pointer;
                  paramcb: array [0 .. 1] of Integer;
                  i, Err: Integer;

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 1 do
                    param[i] := nil;
                  for i := 0 to 1 do
                    paramcb[i] := 0;

                  i := 0;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Interrupt{$IFDEF UNICODE} + 10000{$ENDIF}, 0, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.ProbePresence(JabberId: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_ProbePresence{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.QueryRegister(XMPPServer: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_XMPPServer: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_XMPPServer := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(XMPPServer);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_XMPPServer);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_QueryRegister{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Register(XMPPServer: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_XMPPServer: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_XMPPServer := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(XMPPServer);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_XMPPServer);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Register{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Remove(JabberId: String; Name: String; Group: String);

                var
                  param: array [0 .. 4] of Pointer;
                  paramcb: array [0 .. 4] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Name: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Group: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 4 do
                    param[i] := nil;
                  for i := 0 to 4 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Name := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Name);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Name);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Group := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Group);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Group);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Remove{$IFDEF UNICODE} + 10000{$ENDIF}, 3, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.RetrieveRoster();

                var
                  param: array [0 .. 1] of Pointer;
                  paramcb: array [0 .. 1] of Integer;
                  i, Err: Integer;

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 1 do
                    param[i] := nil;
                  for i := 0 to 1 do
                    paramcb[i] := 0;

                  i := 0;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_RetrieveRoster{$IFDEF UNICODE} + 10000{$ENDIF}, 0, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.SendCommand(Command: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_Command: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_Command := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Command);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Command);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_SendCommand{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.SendFile(JabberId: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_SendFile{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                function TipwXMPP.SendMessage(JabberId: String): String;
                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  result := '';

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_SendMessage{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                  result := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(param[i]);

                end;

                procedure TipwXMPP.SetUserInfoField(Field: String; Value: String);

                var
                  param: array [0 .. 3] of Pointer;
                  paramcb: array [0 .. 3] of Integer;
                  i, Err: Integer;
                  tmp_Field: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};
                  tmp_Value: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 3 do
                    param[i] := nil;
                  for i := 0 to 3 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_Field := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Field);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Field);
                  paramcb[i] := 0;

                  i := i + 1;
                  tmp_Value := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(Value);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_Value);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_SetUserInfoField{$IFDEF UNICODE} + 10000{$ENDIF}, 2, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.SubscribeTo(JabberId: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_SubscribeTo{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.Unregister();

                var
                  param: array [0 .. 1] of Pointer;
                  paramcb: array [0 .. 1] of Integer;
                  i, Err: Integer;

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 1 do
                    param[i] := nil;
                  for i := 0 to 1 do
                    paramcb[i] := 0;

                  i := 0;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_Unregister{$IFDEF UNICODE} + 10000{$ENDIF}, 0, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

                procedure TipwXMPP.UnsubscribeTo(JabberId: String);

                var
                  param: array [0 .. 2] of Pointer;
                  paramcb: array [0 .. 2] of Integer;
                  i, Err: Integer;
                  tmp_JabberId: {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF};

                begin

{$IFDEF WIN64}
                  m_ctl := m_ctl; // Without this, the method can't be invoked correctly in 64bit. (Delphi XE Version 16.0.4115.38113)
{$ENDIF}
                  for i := 0 to 2 do
                    param[i] := nil;
                  for i := 0 to 2 do
                    paramcb[i] := 0;

                  i := 0;

                  tmp_JabberId := {$IFDEF UNICODE}WideString{$ELSE}AnsiString{$ENDIF}(JabberId);
                  param[i] := {$IFDEF UNICODE}PWideChar{$ELSE}PAnsiChar{$ENDIF}(tmp_JabberId);
                  paramcb[i] := 0;

                  i := i + 1;

                  if @_IPWorks_XMPP_Do = nil then
                    exit;
                  Err := _IPWorks_XMPP_Do(m_ctl, MID_XMPP_UnsubscribeTo{$IFDEF UNICODE} + 10000{$ENDIF}, 1, @param, @paramcb);
                  if Err <> 0 then
                    TreatErr(Err, '');

                end;

{$ENDIF}
{$IFNDEF LINUX}
{$IFNDEF USEIPWORKSDLL}
                procedure LoadRESDLL;
                var
                  hResInfo: HRSRC;
                  hResData: HGLOBAL;
                  pResData: Pointer;

                begin

                  _IPWorks_XMPP_Create := nil;
                  _IPWorks_XMPP_Destroy := nil;
                  _IPWorks_XMPP_Set := nil;
                  _IPWorks_XMPP_Get := nil;
                  _IPWorks_XMPP_GetLastError := nil;
                  _IPWorks_XMPP_StaticInit := nil;
                  _IPWorks_XMPP_CheckIndex := nil;
                  _IPWorks_XMPP_Do := nil;

                  hResInfo := FindResource(HInstance, 'ipworks9_xmpp_dta', RT_RCDATA);
                  if hResInfo = 0 then
                    exit;

                  hResData := LoadResource(HInstance, hResInfo);
                  if hResData = 0 then
                    exit;

                  pResData := LockResource(hResData);
                  if pResData = nil then
                    exit;

                  pBaseAddress := IPWorksLoadDRU(pResData, pEntryPoint);
                  if Assigned(pBaseAddress) then
                  begin
                    @_IPWorks_XMPP_Create := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_Create');
                    @_IPWorks_XMPP_Destroy := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_Destroy');
                    @_IPWorks_XMPP_Set := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_Set');
                    @_IPWorks_XMPP_Get := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_Get');
                    @_IPWorks_XMPP_GetLastError := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_GetLastError');
                    @_IPWorks_XMPP_CheckIndex := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_CheckIndex');
                    @_IPWorks_XMPP_Do := IPWorksFindFunc(pBaseAddress, 'IPWorks_XMPP_Do');
                  end;

                  FreeResource(hResData);

                end;

initialization

begin
  iLoadCount := iLoadCount + 1;
  if iLoadCount > 1 then
    exit;
  pBaseAddress := nil;
  pEntryPoint := nil;
  LoadRESDLL;
end;

finalization

begin
  iLoadCount := iLoadCount - 1;
  if iLoadCount > 0 then
    exit;
  @_IPWorks_XMPP_Create := nil;
  @_IPWorks_XMPP_Destroy := nil;
  @_IPWorks_XMPP_Set := nil;
  @_IPWorks_XMPP_Get := nil;
  @_IPWorks_XMPP_GetLastError := nil;
  @_IPWorks_XMPP_CheckIndex := nil;
  @_IPWorks_XMPP_Do := nil;
  IPWorksFreeDRU(pBaseAddress, pEntryPoint);
  pBaseAddress := nil;
  pEntryPoint := nil;
  iLoadCount := 0;
end;
{$ENDIF}
{$ENDIF}

end.
