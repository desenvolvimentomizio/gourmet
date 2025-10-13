//
// Created by the DataSnap proxy generator.
// 15/11/2018 09:47:14
//

unit uRCCliente;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.FireDACJSONReflect, Data.DBXJSONReflect;

type

  IDSRestCachedTFDJSONDataSets = interface;

  TSMServerGourmetClient = class(TDSAdminRestClient)
  private
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FRetornaRegistrosCommand: TDSRestCommand;
    FRetornaRegistrosCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function RetornaRegistros(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function RetornaRegistros_Cache(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  IDSRestCachedTFDJSONDataSets = interface(IDSRestCachedObject<TFDJSONDataSets>)
  end;

  TDSRestCachedTFDJSONDataSets = class(TDSRestCachedObject<TFDJSONDataSets>, IDSRestCachedTFDJSONDataSets, IDSRestCachedCommand)
  end;

const
  TSMServerGourmet_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSMServerGourmet_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TSMServerGourmet_RetornaRegistros: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'vClbUsuario'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vClbSenha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_RetornaRegistros_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'vClbUsuario'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vClbSenha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

implementation

function TSMServerGourmetClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TSMServerGourmet.EchoString';
    FEchoStringCommand.Prepare(TSMServerGourmet_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TSMServerGourmetClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TSMServerGourmet.ReverseString';
    FReverseStringCommand.Prepare(TSMServerGourmet_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TSMServerGourmetClient.RetornaRegistros(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FRetornaRegistrosCommand = nil then
  begin
    FRetornaRegistrosCommand := FConnection.CreateCommand;
    FRetornaRegistrosCommand.RequestType := 'GET';
    FRetornaRegistrosCommand.Text := 'TSMServerGourmet.RetornaRegistros';
    FRetornaRegistrosCommand.Prepare(TSMServerGourmet_RetornaRegistros);
  end;
  FRetornaRegistrosCommand.Parameters[0].Value.SetWideString(vClbUsuario);
  FRetornaRegistrosCommand.Parameters[1].Value.SetWideString(vClbSenha);
  FRetornaRegistrosCommand.Execute(ARequestFilter);
  if not FRetornaRegistrosCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FRetornaRegistrosCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FRetornaRegistrosCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FRetornaRegistrosCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.RetornaRegistros_Cache(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FRetornaRegistrosCommand_Cache = nil then
  begin
    FRetornaRegistrosCommand_Cache := FConnection.CreateCommand;
    FRetornaRegistrosCommand_Cache.RequestType := 'GET';
    FRetornaRegistrosCommand_Cache.Text := 'TSMServerGourmet.RetornaRegistros';
    FRetornaRegistrosCommand_Cache.Prepare(TSMServerGourmet_RetornaRegistros_Cache);
  end;
  FRetornaRegistrosCommand_Cache.Parameters[0].Value.SetWideString(vClbUsuario);
  FRetornaRegistrosCommand_Cache.Parameters[1].Value.SetWideString(vClbSenha);
  FRetornaRegistrosCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FRetornaRegistrosCommand_Cache.Parameters[2].Value.GetString);
end;

constructor TSMServerGourmetClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TSMServerGourmetClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TSMServerGourmetClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FRetornaRegistrosCommand.DisposeOf;
  FRetornaRegistrosCommand_Cache.DisposeOf;
  inherited;
end;

end.

