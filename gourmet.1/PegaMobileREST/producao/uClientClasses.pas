// 
// Created by the DataSnap proxy generator.
// 10/09/2019 15:21:03
// 

unit uClientClasses;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.FireDACJSONReflect, Data.DBXJSONReflect;

type

  IDSRestCachedTFDJSONDataSets = interface;

  TServerMethodsClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FConectaBancoCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FRegistraRetornoEntregaCommand: TDSRestCommand;
    FRegistraLiberadoEntregaCommand: TDSRestCommand;
    FPedidosCommand: TDSRestCommand;
    FPedidosCommand_Cache: TDSRestCommand;
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
    function Pedidos(const ARequestFilter: string = ''): TFDJSONDataSets;
    function Pedidos_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  IDSRestCachedTFDJSONDataSets = interface(IDSRestCachedObject<TFDJSONDataSets>)
  end;

  TDSRestCachedTFDJSONDataSets = class(TDSRestCachedObject<TFDJSONDataSets>, IDSRestCachedTFDJSONDataSets, IDSRestCachedCommand)
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

  TServerMethods1_RegistraRetornoEntrega: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_RegistraLiberadoEntrega: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_Pedidos: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_Pedidos_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

implementation

procedure TServerMethodsClient.DataModuleCreate(Sender: TObject);
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

function TServerMethodsClient.ConectaBanco(const ARequestFilter: string): Boolean;
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

function TServerMethodsClient.EchoString(Value: string; const ARequestFilter: string): string;
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

function TServerMethodsClient.ReverseString(Value: string; const ARequestFilter: string): string;
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

function TServerMethodsClient.RegistraRetornoEntrega(Value: string; const ARequestFilter: string): string;
begin
  if FRegistraRetornoEntregaCommand = nil then
  begin
    FRegistraRetornoEntregaCommand := FConnection.CreateCommand;
    FRegistraRetornoEntregaCommand.RequestType := 'GET';
    FRegistraRetornoEntregaCommand.Text := 'TServerMethods1.RegistraRetornoEntrega';
    FRegistraRetornoEntregaCommand.Prepare(TServerMethods1_RegistraRetornoEntrega);
  end;
  FRegistraRetornoEntregaCommand.Parameters[0].Value.SetWideString(Value);
  FRegistraRetornoEntregaCommand.Execute(ARequestFilter);
  Result := FRegistraRetornoEntregaCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.RegistraLiberadoEntrega(Value: string; const ARequestFilter: string): string;
begin
  if FRegistraLiberadoEntregaCommand = nil then
  begin
    FRegistraLiberadoEntregaCommand := FConnection.CreateCommand;
    FRegistraLiberadoEntregaCommand.RequestType := 'GET';
    FRegistraLiberadoEntregaCommand.Text := 'TServerMethods1.RegistraLiberadoEntrega';
    FRegistraLiberadoEntregaCommand.Prepare(TServerMethods1_RegistraLiberadoEntrega);
  end;
  FRegistraLiberadoEntregaCommand.Parameters[0].Value.SetWideString(Value);
  FRegistraLiberadoEntregaCommand.Execute(ARequestFilter);
  Result := FRegistraLiberadoEntregaCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.Pedidos(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FPedidosCommand = nil then
  begin
    FPedidosCommand := FConnection.CreateCommand;
    FPedidosCommand.RequestType := 'GET';
    FPedidosCommand.Text := 'TServerMethods1.Pedidos';
    FPedidosCommand.Prepare(TServerMethods1_Pedidos);
  end;
  FPedidosCommand.Execute(ARequestFilter);
  if not FPedidosCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FPedidosCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FPedidosCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FPedidosCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethodsClient.Pedidos_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FPedidosCommand_Cache = nil then
  begin
    FPedidosCommand_Cache := FConnection.CreateCommand;
    FPedidosCommand_Cache.RequestType := 'GET';
    FPedidosCommand_Cache.Text := 'TServerMethods1.Pedidos';
    FPedidosCommand_Cache.Prepare(TServerMethods1_Pedidos_Cache);
  end;
  FPedidosCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FPedidosCommand_Cache.Parameters[0].Value.GetString);
end;

constructor TServerMethodsClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethodsClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethodsClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FConectaBancoCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FRegistraRetornoEntregaCommand.DisposeOf;
  FRegistraLiberadoEntregaCommand.DisposeOf;
  FPedidosCommand.DisposeOf;
  FPedidosCommand_Cache.DisposeOf;
  inherited;
end;

end.
