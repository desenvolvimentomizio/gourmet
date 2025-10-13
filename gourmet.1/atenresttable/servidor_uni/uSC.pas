unit uSC;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer;

type
  TSC = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSTCPServerTransport1Connect(Event: TDSTCPConnectEventObject);
    procedure DSTCPServerTransport1Disconnect(
      Event: TDSTCPDisconnectEventObject);
  private
    { Private declarations }
  public
  end;

var
  SC: TSC;

implementation

uses Winapi.Windows, uSM, ufprinciServRest;

{$R *.dfm}

procedure TSC.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSM.TSM;
end;


procedure TSC.DSTCPServerTransport1Connect(Event: TDSTCPConnectEventObject);
begin
fprinciServRest.erros.lines.Add('Nova Conexão');
end;

procedure TSC.DSTCPServerTransport1Disconnect(
  Event: TDSTCPDisconnectEventObject);
begin
fprinciServRest.erros.lines.Add('Desconexão');

end;

end.

