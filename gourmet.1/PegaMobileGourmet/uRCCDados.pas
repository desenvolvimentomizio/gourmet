//
// Created by the DataSnap proxy generator.
// 18/11/2018 19:28:56
//

unit uRCCDados;

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
    FQuantidadeMesasCommand: TDSRestCommand;
    FQuantidadeMesasCommand_Cache: TDSRestCommand;
    FDadosTgrCommand: TDSRestCommand;
    FDadosTgrCommand_Cache: TDSRestCommand;
    FDadosCgrCommand: TDSRestCommand;
    FDadosCgrCommand_Cache: TDSRestCommand;
    FDadosGrpCommand: TDSRestCommand;
    FDadosGrpCommand_Cache: TDSRestCommand;
    FDadosSfnCommand: TDSRestCommand;
    FDadosSfnCommand_Cache: TDSRestCommand;
    FDadosProCommand: TDSRestCommand;
    FDadosProCommand_Cache: TDSRestCommand;
    FConsultaUniaoMesaCommand: TDSRestCommand;
    FConsultaUniaoMesaCommand_Cache: TDSRestCommand;
    FConsultaMesaCommand: TDSRestCommand;
    FConsultaMesaCommand_Cache: TDSRestCommand;
    FAbreMesaCommand: TDSRestCommand;
    FAbreMesaCommand_Cache: TDSRestCommand;
    FCarregaItoCommand: TDSRestCommand;
    FCarregaItoCommand_Cache: TDSRestCommand;
    FVerificaEstadoCozinhaCommand: TDSRestCommand;
    FVerificaEstadoCozinhaCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function RetornaRegistros(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function RetornaRegistros_Cache(vClbUsuario: string; vClbSenha: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function QuantidadeMesas(const ARequestFilter: string = ''): TFDJSONDataSets;
    function QuantidadeMesas_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function DadosTgr(const ARequestFilter: string = ''): TFDJSONDataSets;
    function DadosTgr_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function DadosCgr(const ARequestFilter: string = ''): TFDJSONDataSets;
    function DadosCgr_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function DadosGrp(const ARequestFilter: string = ''): TFDJSONDataSets;
    function DadosGrp_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function DadosSfn(const ARequestFilter: string = ''): TFDJSONDataSets;
    function DadosSfn_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function DadosPro(const ARequestFilter: string = ''): TFDJSONDataSets;
    function DadosPro_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function ConsultaUniaoMesa(vNumMesa: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function ConsultaUniaoMesa_Cache(vNumMesa: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function ConsultaMesa(vNumMesa: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function ConsultaMesa_Cache(vNumMesa: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function AbreMesa(vClbUsuario: string; vNumMesa: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function AbreMesa_Cache(vClbUsuario: string; vNumMesa: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function CarregaIto(vOrcChave: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function CarregaIto_Cache(vOrcChave: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function VerificaEstadoCozinha(const ARequestFilter: string = ''): TFDJSONDataSets;
    function VerificaEstadoCozinha_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
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

  TSMServerGourmet_QuantidadeMesas: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_QuantidadeMesas_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_DadosTgr: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_DadosTgr_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_DadosCgr: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_DadosCgr_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_DadosGrp: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_DadosGrp_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_DadosSfn: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_DadosSfn_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_DadosPro: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_DadosPro_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_ConsultaUniaoMesa: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_ConsultaUniaoMesa_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_ConsultaMesa: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_ConsultaMesa_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_AbreMesa: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'vClbUsuario'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_AbreMesa_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'vClbUsuario'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vNumMesa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_CarregaIto: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vOrcChave'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_CarregaIto_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'vOrcChave'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TSMServerGourmet_VerificaEstadoCozinha: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TSMServerGourmet_VerificaEstadoCozinha_Cache: array [0..0] of TDSRestParameterMetaData =
  (
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

function TSMServerGourmetClient.QuantidadeMesas(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FQuantidadeMesasCommand = nil then
  begin
    FQuantidadeMesasCommand := FConnection.CreateCommand;
    FQuantidadeMesasCommand.RequestType := 'GET';
    FQuantidadeMesasCommand.Text := 'TSMServerGourmet.QuantidadeMesas';
    FQuantidadeMesasCommand.Prepare(TSMServerGourmet_QuantidadeMesas);
  end;
  FQuantidadeMesasCommand.Execute(ARequestFilter);
  if not FQuantidadeMesasCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FQuantidadeMesasCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FQuantidadeMesasCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FQuantidadeMesasCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.QuantidadeMesas_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FQuantidadeMesasCommand_Cache = nil then
  begin
    FQuantidadeMesasCommand_Cache := FConnection.CreateCommand;
    FQuantidadeMesasCommand_Cache.RequestType := 'GET';
    FQuantidadeMesasCommand_Cache.Text := 'TSMServerGourmet.QuantidadeMesas';
    FQuantidadeMesasCommand_Cache.Prepare(TSMServerGourmet_QuantidadeMesas_Cache);
  end;
  FQuantidadeMesasCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FQuantidadeMesasCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.DadosTgr(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FDadosTgrCommand = nil then
  begin
    FDadosTgrCommand := FConnection.CreateCommand;
    FDadosTgrCommand.RequestType := 'GET';
    FDadosTgrCommand.Text := 'TSMServerGourmet.DadosTgr';
    FDadosTgrCommand.Prepare(TSMServerGourmet_DadosTgr);
  end;
  FDadosTgrCommand.Execute(ARequestFilter);
  if not FDadosTgrCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FDadosTgrCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FDadosTgrCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FDadosTgrCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.DadosTgr_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FDadosTgrCommand_Cache = nil then
  begin
    FDadosTgrCommand_Cache := FConnection.CreateCommand;
    FDadosTgrCommand_Cache.RequestType := 'GET';
    FDadosTgrCommand_Cache.Text := 'TSMServerGourmet.DadosTgr';
    FDadosTgrCommand_Cache.Prepare(TSMServerGourmet_DadosTgr_Cache);
  end;
  FDadosTgrCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FDadosTgrCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.DadosCgr(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FDadosCgrCommand = nil then
  begin
    FDadosCgrCommand := FConnection.CreateCommand;
    FDadosCgrCommand.RequestType := 'GET';
    FDadosCgrCommand.Text := 'TSMServerGourmet.DadosCgr';
    FDadosCgrCommand.Prepare(TSMServerGourmet_DadosCgr);
  end;
  FDadosCgrCommand.Execute(ARequestFilter);
  if not FDadosCgrCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FDadosCgrCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FDadosCgrCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FDadosCgrCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.DadosCgr_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FDadosCgrCommand_Cache = nil then
  begin
    FDadosCgrCommand_Cache := FConnection.CreateCommand;
    FDadosCgrCommand_Cache.RequestType := 'GET';
    FDadosCgrCommand_Cache.Text := 'TSMServerGourmet.DadosCgr';
    FDadosCgrCommand_Cache.Prepare(TSMServerGourmet_DadosCgr_Cache);
  end;
  FDadosCgrCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FDadosCgrCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.DadosGrp(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FDadosGrpCommand = nil then
  begin
    FDadosGrpCommand := FConnection.CreateCommand;
    FDadosGrpCommand.RequestType := 'GET';
    FDadosGrpCommand.Text := 'TSMServerGourmet.DadosGrp';
    FDadosGrpCommand.Prepare(TSMServerGourmet_DadosGrp);
  end;
  FDadosGrpCommand.Execute(ARequestFilter);
  if not FDadosGrpCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FDadosGrpCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FDadosGrpCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FDadosGrpCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.DadosGrp_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FDadosGrpCommand_Cache = nil then
  begin
    FDadosGrpCommand_Cache := FConnection.CreateCommand;
    FDadosGrpCommand_Cache.RequestType := 'GET';
    FDadosGrpCommand_Cache.Text := 'TSMServerGourmet.DadosGrp';
    FDadosGrpCommand_Cache.Prepare(TSMServerGourmet_DadosGrp_Cache);
  end;
  FDadosGrpCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FDadosGrpCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.DadosSfn(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FDadosSfnCommand = nil then
  begin
    FDadosSfnCommand := FConnection.CreateCommand;
    FDadosSfnCommand.RequestType := 'GET';
    FDadosSfnCommand.Text := 'TSMServerGourmet.DadosSfn';
    FDadosSfnCommand.Prepare(TSMServerGourmet_DadosSfn);
  end;
  FDadosSfnCommand.Execute(ARequestFilter);
  if not FDadosSfnCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FDadosSfnCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FDadosSfnCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FDadosSfnCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.DadosSfn_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FDadosSfnCommand_Cache = nil then
  begin
    FDadosSfnCommand_Cache := FConnection.CreateCommand;
    FDadosSfnCommand_Cache.RequestType := 'GET';
    FDadosSfnCommand_Cache.Text := 'TSMServerGourmet.DadosSfn';
    FDadosSfnCommand_Cache.Prepare(TSMServerGourmet_DadosSfn_Cache);
  end;
  FDadosSfnCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FDadosSfnCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.DadosPro(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FDadosProCommand = nil then
  begin
    FDadosProCommand := FConnection.CreateCommand;
    FDadosProCommand.RequestType := 'GET';
    FDadosProCommand.Text := 'TSMServerGourmet.DadosPro';
    FDadosProCommand.Prepare(TSMServerGourmet_DadosPro);
  end;
  FDadosProCommand.Execute(ARequestFilter);
  if not FDadosProCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FDadosProCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FDadosProCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FDadosProCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.DadosPro_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FDadosProCommand_Cache = nil then
  begin
    FDadosProCommand_Cache := FConnection.CreateCommand;
    FDadosProCommand_Cache.RequestType := 'GET';
    FDadosProCommand_Cache.Text := 'TSMServerGourmet.DadosPro';
    FDadosProCommand_Cache.Prepare(TSMServerGourmet_DadosPro_Cache);
  end;
  FDadosProCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FDadosProCommand_Cache.Parameters[0].Value.GetString);
end;

function TSMServerGourmetClient.ConsultaUniaoMesa(vNumMesa: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FConsultaUniaoMesaCommand = nil then
  begin
    FConsultaUniaoMesaCommand := FConnection.CreateCommand;
    FConsultaUniaoMesaCommand.RequestType := 'GET';
    FConsultaUniaoMesaCommand.Text := 'TSMServerGourmet.ConsultaUniaoMesa';
    FConsultaUniaoMesaCommand.Prepare(TSMServerGourmet_ConsultaUniaoMesa);
  end;
  FConsultaUniaoMesaCommand.Parameters[0].Value.SetWideString(vNumMesa);
  FConsultaUniaoMesaCommand.Execute(ARequestFilter);
  if not FConsultaUniaoMesaCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FConsultaUniaoMesaCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FConsultaUniaoMesaCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FConsultaUniaoMesaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.ConsultaUniaoMesa_Cache(vNumMesa: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FConsultaUniaoMesaCommand_Cache = nil then
  begin
    FConsultaUniaoMesaCommand_Cache := FConnection.CreateCommand;
    FConsultaUniaoMesaCommand_Cache.RequestType := 'GET';
    FConsultaUniaoMesaCommand_Cache.Text := 'TSMServerGourmet.ConsultaUniaoMesa';
    FConsultaUniaoMesaCommand_Cache.Prepare(TSMServerGourmet_ConsultaUniaoMesa_Cache);
  end;
  FConsultaUniaoMesaCommand_Cache.Parameters[0].Value.SetWideString(vNumMesa);
  FConsultaUniaoMesaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FConsultaUniaoMesaCommand_Cache.Parameters[1].Value.GetString);
end;

function TSMServerGourmetClient.ConsultaMesa(vNumMesa: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FConsultaMesaCommand = nil then
  begin
    FConsultaMesaCommand := FConnection.CreateCommand;
    FConsultaMesaCommand.RequestType := 'GET';
    FConsultaMesaCommand.Text := 'TSMServerGourmet.ConsultaMesa';
    FConsultaMesaCommand.Prepare(TSMServerGourmet_ConsultaMesa);
  end;
  FConsultaMesaCommand.Parameters[0].Value.SetWideString(vNumMesa);
  FConsultaMesaCommand.Execute(ARequestFilter);
  if not FConsultaMesaCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FConsultaMesaCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FConsultaMesaCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FConsultaMesaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.ConsultaMesa_Cache(vNumMesa: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FConsultaMesaCommand_Cache = nil then
  begin
    FConsultaMesaCommand_Cache := FConnection.CreateCommand;
    FConsultaMesaCommand_Cache.RequestType := 'GET';
    FConsultaMesaCommand_Cache.Text := 'TSMServerGourmet.ConsultaMesa';
    FConsultaMesaCommand_Cache.Prepare(TSMServerGourmet_ConsultaMesa_Cache);
  end;
  FConsultaMesaCommand_Cache.Parameters[0].Value.SetWideString(vNumMesa);
  FConsultaMesaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FConsultaMesaCommand_Cache.Parameters[1].Value.GetString);
end;

function TSMServerGourmetClient.AbreMesa(vClbUsuario: string; vNumMesa: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FAbreMesaCommand = nil then
  begin
    FAbreMesaCommand := FConnection.CreateCommand;
    FAbreMesaCommand.RequestType := 'GET';
    FAbreMesaCommand.Text := 'TSMServerGourmet.AbreMesa';
    FAbreMesaCommand.Prepare(TSMServerGourmet_AbreMesa);
  end;
  FAbreMesaCommand.Parameters[0].Value.SetWideString(vClbUsuario);
  FAbreMesaCommand.Parameters[1].Value.SetWideString(vNumMesa);
  FAbreMesaCommand.Execute(ARequestFilter);
  if not FAbreMesaCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FAbreMesaCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FAbreMesaCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FAbreMesaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.AbreMesa_Cache(vClbUsuario: string; vNumMesa: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FAbreMesaCommand_Cache = nil then
  begin
    FAbreMesaCommand_Cache := FConnection.CreateCommand;
    FAbreMesaCommand_Cache.RequestType := 'GET';
    FAbreMesaCommand_Cache.Text := 'TSMServerGourmet.AbreMesa';
    FAbreMesaCommand_Cache.Prepare(TSMServerGourmet_AbreMesa_Cache);
  end;
  FAbreMesaCommand_Cache.Parameters[0].Value.SetWideString(vClbUsuario);
  FAbreMesaCommand_Cache.Parameters[1].Value.SetWideString(vNumMesa);
  FAbreMesaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FAbreMesaCommand_Cache.Parameters[2].Value.GetString);
end;

function TSMServerGourmetClient.CarregaIto(vOrcChave: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FCarregaItoCommand = nil then
  begin
    FCarregaItoCommand := FConnection.CreateCommand;
    FCarregaItoCommand.RequestType := 'GET';
    FCarregaItoCommand.Text := 'TSMServerGourmet.CarregaIto';
    FCarregaItoCommand.Prepare(TSMServerGourmet_CarregaIto);
  end;
  FCarregaItoCommand.Parameters[0].Value.SetInt32(vOrcChave);
  FCarregaItoCommand.Execute(ARequestFilter);
  if not FCarregaItoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FCarregaItoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FCarregaItoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FCarregaItoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.CarregaIto_Cache(vOrcChave: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FCarregaItoCommand_Cache = nil then
  begin
    FCarregaItoCommand_Cache := FConnection.CreateCommand;
    FCarregaItoCommand_Cache.RequestType := 'GET';
    FCarregaItoCommand_Cache.Text := 'TSMServerGourmet.CarregaIto';
    FCarregaItoCommand_Cache.Prepare(TSMServerGourmet_CarregaIto_Cache);
  end;
  FCarregaItoCommand_Cache.Parameters[0].Value.SetInt32(vOrcChave);
  FCarregaItoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FCarregaItoCommand_Cache.Parameters[1].Value.GetString);
end;

function TSMServerGourmetClient.VerificaEstadoCozinha(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FVerificaEstadoCozinhaCommand = nil then
  begin
    FVerificaEstadoCozinhaCommand := FConnection.CreateCommand;
    FVerificaEstadoCozinhaCommand.RequestType := 'GET';
    FVerificaEstadoCozinhaCommand.Text := 'TSMServerGourmet.VerificaEstadoCozinha';
    FVerificaEstadoCozinhaCommand.Prepare(TSMServerGourmet_VerificaEstadoCozinha);
  end;
  FVerificaEstadoCozinhaCommand.Execute(ARequestFilter);
  if not FVerificaEstadoCozinhaCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FVerificaEstadoCozinhaCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FVerificaEstadoCozinhaCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FVerificaEstadoCozinhaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMServerGourmetClient.VerificaEstadoCozinha_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FVerificaEstadoCozinhaCommand_Cache = nil then
  begin
    FVerificaEstadoCozinhaCommand_Cache := FConnection.CreateCommand;
    FVerificaEstadoCozinhaCommand_Cache.RequestType := 'GET';
    FVerificaEstadoCozinhaCommand_Cache.Text := 'TSMServerGourmet.VerificaEstadoCozinha';
    FVerificaEstadoCozinhaCommand_Cache.Prepare(TSMServerGourmet_VerificaEstadoCozinha_Cache);
  end;
  FVerificaEstadoCozinhaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FVerificaEstadoCozinhaCommand_Cache.Parameters[0].Value.GetString);
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
  FQuantidadeMesasCommand.DisposeOf;
  FQuantidadeMesasCommand_Cache.DisposeOf;
  FDadosTgrCommand.DisposeOf;
  FDadosTgrCommand_Cache.DisposeOf;
  FDadosCgrCommand.DisposeOf;
  FDadosCgrCommand_Cache.DisposeOf;
  FDadosGrpCommand.DisposeOf;
  FDadosGrpCommand_Cache.DisposeOf;
  FDadosSfnCommand.DisposeOf;
  FDadosSfnCommand_Cache.DisposeOf;
  FDadosProCommand.DisposeOf;
  FDadosProCommand_Cache.DisposeOf;
  FConsultaUniaoMesaCommand.DisposeOf;
  FConsultaUniaoMesaCommand_Cache.DisposeOf;
  FConsultaMesaCommand.DisposeOf;
  FConsultaMesaCommand_Cache.DisposeOf;
  FAbreMesaCommand.DisposeOf;
  FAbreMesaCommand_Cache.DisposeOf;
  FCarregaItoCommand.DisposeOf;
  FCarregaItoCommand_Cache.DisposeOf;
  FVerificaEstadoCozinhaCommand.DisposeOf;
  FVerificaEstadoCozinhaCommand_Cache.DisposeOf;
  inherited;
end;

end.

