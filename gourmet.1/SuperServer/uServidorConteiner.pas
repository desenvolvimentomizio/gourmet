unit uServidorConteiner;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth;

type
  TServidorConteiner = class(TDataModule)
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
   uServidorMetodos;

var
  FModule: TComponent;
  FDSServer: TDSServer;

function DSServer: TDSServer;
begin
  Result := FDSServer;
end;

constructor TServidorConteiner.Create(AOwner: TComponent);
begin
  inherited;
  FDSServer := DSServer1;
end;

destructor TServidorConteiner.Destroy;
begin
  inherited;
  FDSServer := nil;
end;

procedure TServidorConteiner.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uServidorMetodos.TServidorMetodos;
end;

initialization
  FModule := TServidorConteiner.Create(nil);
finalization
  FModule.Free;
end.

