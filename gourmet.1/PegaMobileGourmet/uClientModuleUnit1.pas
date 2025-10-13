unit uClientModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit1, Datasnap.DSClientRest;

type
  TClientModule1 = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
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
  ClientModule1: TClientModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule1.Destroy;
begin
  FSMServerGourmetClient.Free;
  inherited;
end;

function TClientModule1.GetSMServerGourmetClient: TSMServerGourmetClient;
begin
  if FSMServerGourmetClient = nil then
    FSMServerGourmetClient:= TSMServerGourmetClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FSMServerGourmetClient;
end;

end.
