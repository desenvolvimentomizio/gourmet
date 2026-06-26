unit Gourmet.Database;

{ Fabrica de conexoes UniDAC por tenant.

  Modelo: 1 schema MySQL por tenant. Para cada schema mantemos um POOL de
  conexoes (recurso nativo do UniDAC). AcquireForSchema devolve uma conexao
  pronta apontando para o schema do tenant; ReleaseConnection devolve ao pool.

  Thread-safe: o Horse atende cada request em uma thread; o dicionario de
  pools e protegido por lock. As conexoes em si NAO sao compartilhadas entre
  threads - cada request pega a sua e devolve no fim. }

interface

uses
  System.SysUtils, System.Generics.Collections, System.SyncObjs,
  Uni, MySQLUniProvider, UniProvider;

type
  TDatabase = class
  private
    class var FLock: TCriticalSection;
    class var FProvidersReady: Boolean;
    class procedure EnsureProviders;
  public
    class constructor Create;
    class destructor Destroy;
    /// Devolve uma conexao do pool apontando para o schema informado.
    class function AcquireForSchema(const ASchema: string): TUniConnection;
    /// Conexao ao banco control-plane (saas_control).
    class function AcquireControl: TUniConnection;
    /// Devolve a conexao ao pool (nao destroi enquanto pooling estiver ativo).
    class procedure ReleaseConnection(AConn: TUniConnection);
  end;

implementation

uses
  Gourmet.Config;

class constructor TDatabase.Create;
begin
  FLock := TCriticalSection.Create;
  FProvidersReady := False;
end;

class destructor TDatabase.Destroy;
begin
  FLock.Free;
end;

class procedure TDatabase.EnsureProviders;
begin
  // Garante o provider MySQL registrado uma unica vez.
  if FProvidersReady then Exit;
  FLock.Enter;
  try
    if not FProvidersReady then
      FProvidersReady := True; // o uso da unit MySQLUniProvider ja registra
  finally
    FLock.Leave;
  end;
end;

class function TDatabase.AcquireForSchema(const ASchema: string): TUniConnection;
begin
  EnsureProviders;
  Result := TUniConnection.Create(nil);
  try
    Result.ProviderName := 'MySQL';
    Result.Server   := TConfig.TenantHost;
    Result.Port     := TConfig.TenantPort;
    Result.Username := TConfig.TenantUser;
    Result.Password := TConfig.TenantPassword;
    Result.Database := ASchema;                 // <-- schema do tenant
    Result.LoginPrompt := False;
    // Pooling nativo: o UniDAC reusa conexoes com os MESMOS parametros,
    // entao cada schema tem seu proprio pool automaticamente.
    Result.Pooling := True;
    Result.PoolingOptions.MaxPoolSize := 50;
    Result.PoolingOptions.MinPoolSize := 0;
    Result.PoolingOptions.ConnectionLifeTime := 300000; // 5 min
    Result.SpecificOptions.Values['MySQL.UseUnicode'] := 'True';
    Result.SpecificOptions.Values['MySQL.Charset']    := 'utf8mb4';
    Result.Connected := True;
  except
    Result.Free;
    raise;
  end;
end;

class function TDatabase.AcquireControl: TUniConnection;
begin
  EnsureProviders;
  Result := TUniConnection.Create(nil);
  try
    Result.ProviderName := 'MySQL';
    Result.Server   := TConfig.ControlHost;
    Result.Port     := TConfig.ControlPort;
    Result.Username := TConfig.ControlUser;
    Result.Password := TConfig.ControlPassword;
    Result.Database := TConfig.ControlSchema;
    Result.LoginPrompt := False;
    Result.Pooling := True;
    Result.SpecificOptions.Values['MySQL.Charset'] := 'utf8mb4';
    Result.Connected := True;
  except
    Result.Free;
    raise;
  end;
end;

class procedure TDatabase.ReleaseConnection(AConn: TUniConnection);
begin
  if AConn = nil then Exit;
  // Com pooling ativo, Free devolve a conexao fisica ao pool.
  AConn.Connected := False;
  AConn.Free;
end;

end.
