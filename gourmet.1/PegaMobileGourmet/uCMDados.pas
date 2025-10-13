unit uCMDados;

interface

uses
  System.SysUtils, System.Classes, uCCDados, Datasnap.DSClientRest,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TClientModule = class(TDataModule)
    DSRestConnection: TDSRestConnection;
    clb: TFDMemTable;
    clbclbidentificacao: TStringField;
    procedure DataModuleCreate(Sender: TObject);
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
  ClientModule: TClientModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TClientModule.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

procedure TClientModule.DataModuleCreate(Sender: TObject);
begin
clb.Open;
end;

destructor TClientModule.Destroy;
begin
  FSMServerGourmetClient.Free;
  inherited;
end;

function TClientModule.GetSMServerGourmetClient: TSMServerGourmetClient;
begin
  if FSMServerGourmetClient = nil then
    FSMServerGourmetClient:= TSMServerGourmetClient.Create(DSRestConnection, FInstanceOwner);
  Result := FSMServerGourmetClient;
end;

end.
