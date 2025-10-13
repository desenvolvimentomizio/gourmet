// 
// Created by the DataSnap proxy generator.
// 02/03/2018 19:20:49
// 

unit uClientClasses;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FConectaBancoCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FRegistraRetornoEntrergaCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function ConectaBanco(const ARequestFilter: string = ''): Boolean;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function RegistraRetornoEntrega(Value: string; const ARequestFilter: string = ''): string;
    function RegistraLiberadoEntrega(Value: string; const ARequestFilter: string = ''): string;

  end;

const
  TServerMethods1_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TServerMethods1_ConectaBanco: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_RegistraRetornoEntrerga: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

implementation

procedure TServerMethods1Client.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TServerMethods1."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TServerMethods1_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TServerMethods1Client.ConectaBanco(const ARequestFilter: string): Boolean;
begin
  if FConectaBancoCommand = nil then
  begin
    FConectaBancoCommand := FConnection.CreateCommand;
    FConectaBancoCommand.RequestType := 'GET';
    FConectaBancoCommand.Text := 'TServerMethods1.ConectaBanco';
    FConectaBancoCommand.Prepare(TServerMethods1_ConectaBanco);
  end;
  FConectaBancoCommand.Execute(ARequestFilter);
  Result := FConectaBancoCommand.Parameters[0].Value.GetBoolean;
end;

function TServerMethods1Client.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare(TServerMethods1_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare(TServerMethods1_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.RegistraRetornoEntrega(Value: string; const ARequestFilter: string): string;
begin
  if FRegistraRetornoEntrergaCommand = nil then
  begin
    FRegistraRetornoEntrergaCommand := FConnection.CreateCommand;
    FRegistraRetornoEntrergaCommand.RequestType := 'GET';
    FRegistraRetornoEntrergaCommand.Text := 'TServerMethods1.RegistraRetornoEntrega';
    FRegistraRetornoEntrergaCommand.Prepare(TServerMethods1_RegistraRetornoEntrerga);
  end;
  FRegistraRetornoEntrergaCommand.Parameters[0].Value.SetWideString(Value);
  FRegistraRetornoEntrergaCommand.Execute(ARequestFilter);
  Result := FRegistraRetornoEntrergaCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.RegistraLiberadoEntrega(Value: string; const ARequestFilter: string): string;
begin
  if FRegistraRetornoEntrergaCommand = nil then
  begin
    FRegistraRetornoEntrergaCommand := FConnection.CreateCommand;
    FRegistraRetornoEntrergaCommand.RequestType := 'GET';
    FRegistraRetornoEntrergaCommand.Text := 'TServerMethods1.RegistraLiberadoEntrega';
    FRegistraRetornoEntrergaCommand.Prepare(TServerMethods1_RegistraRetornoEntrerga);
  end;
  FRegistraRetornoEntrergaCommand.Parameters[0].Value.SetWideString(Value);
  FRegistraRetornoEntrergaCommand.Execute(ARequestFilter);
  Result := FRegistraRetornoEntrergaCommand.Parameters[1].Value.GetWideString;
end;


constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FConectaBancoCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FRegistraRetornoEntrergaCommand.DisposeOf;
  inherited;
end;

end.
