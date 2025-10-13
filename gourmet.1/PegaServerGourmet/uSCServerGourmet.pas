unit uSCServerGourmet;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth;

type
  TSCServerGourmet = class(TDataModule)
    DSServer1: TDSServer;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

function DSServer: TDSServer;

implementation


{$R *.dfm}

uses
  uSMServerGourmet;

var
  FModule: TComponent;
  FDSServer: TDSServer;

function DSServer: TDSServer;
begin
  Result := FDSServer;
end;

constructor TSCServerGourmet.Create(AOwner: TComponent);
begin
  inherited;
  FDSServer := DSServer1;
end;

destructor TSCServerGourmet.Destroy;
begin
  inherited;
  FDSServer := nil;
end;

procedure TSCServerGourmet.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSMServerGourmet.TSMServerGourmet;
end;

initialization
  FModule := TSCServerGourmet.Create(nil);
finalization
  FModule.Free;
end.

