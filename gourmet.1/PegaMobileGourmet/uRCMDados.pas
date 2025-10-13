unit uRCMDados;

interface

uses
  System.SysUtils, System.Classes, uRCCDados, Datasnap.DSClientRest,
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin;

type
  TRCMDados = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
  private
    FInstanceOwner: Boolean;
    FSMServerGourmetClient: TSMServerGourmetClient;
    function GetSMServerGourmetClient: TSMServerGourmetClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMServerGourmetClient: TSMServerGourmetClient read GetSMServerGourmetClient write FSMServerGourmetClient;

end;

var
  RCMDados: TRCMDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TRCMDados.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TRCMDados.Destroy;
begin
  FSMServerGourmetClient.Free;
  inherited;
end;

function TRCMDados.GetSMServerGourmetClient: TSMServerGourmetClient;
begin
  if FSMServerGourmetClient = nil then
    FSMServerGourmetClient:= TSMServerGourmetClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FSMServerGourmetClient;
end;

end.
