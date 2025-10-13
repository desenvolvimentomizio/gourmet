unit SC;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth;

type
  TServerContainermizio = class(TDataModule)
    DSServermizio: TDSServer;
    DSServerClassmizio: TDSServerClass;
    procedure DSServerClassmizioGetClass(DSServerClass: TDSServerClass;
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
  SM;

var
  FModule: TComponent;
  FDSServer: TDSServer;

function DSServer: TDSServer;
begin
  Result := FDSServer;
end;

constructor TServerContainermizio.Create(AOwner: TComponent);
begin
  inherited;
  FDSServer := DSServermizio;
end;

destructor TServerContainermizio.Destroy;
begin
  inherited;
  FDSServer := nil;
end;

procedure TServerContainermizio.DSServerClassmizioGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := SM.TServerMethodsmizio;
end;

initialization
  FModule := TServerContainermizio.Create(nil);
finalization
  FModule.Free;
end.

