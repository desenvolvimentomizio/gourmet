unit Gourmet.ControlPlane;

{ Acesso ao banco control-plane (saas_control): registro de tenants.
  Resolve o "slug" do tenant (vindo do JWT) -> nome do schema MySQL +
  status da assinatura. Resultado cacheado em memoria para evitar ida ao
  banco a cada request. }

interface

uses
  System.SysUtils, System.Generics.Collections, System.SyncObjs;

type
  TTenantInfo = record
    Slug: string;
    Schema: string;
    Active: Boolean;
  end;

  TControlPlane = class
  private
    class var FCache: TDictionary<string, TTenantInfo>;
    class var FLock: TCriticalSection;
  public
    class constructor Create;
    class destructor Destroy;
    /// Resolve o tenant pelo slug. Lanca ETenantNotFound se nao existir/inativo.
    class function ResolveTenant(const ASlug: string): TTenantInfo;
    class procedure InvalidateCache;
  end;

  ETenantNotFound = class(Exception);
  ETenantInactive = class(Exception);

implementation

uses
  Data.DB, Uni, MySQLUniProvider, Gourmet.Config;

class constructor TControlPlane.Create;
begin
  FCache := TDictionary<string, TTenantInfo>.Create;
  FLock := TCriticalSection.Create;
end;

class destructor TControlPlane.Destroy;
begin
  FCache.Free;
  FLock.Free;
end;

class procedure TControlPlane.InvalidateCache;
begin
  FLock.Enter;
  try
    FCache.Clear;
  finally
    FLock.Leave;
  end;
end;

class function TControlPlane.ResolveTenant(const ASlug: string): TTenantInfo;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
  LInfo: TTenantInfo;
begin
  FLock.Enter;
  try
    if FCache.TryGetValue(ASlug, LInfo) then
    begin
      if not LInfo.Active then
        raise ETenantInactive.CreateFmt('Tenant "%s" inativo/suspenso', [ASlug]);
      Exit(LInfo);
    end;
  finally
    FLock.Leave;
  end;

  LConn := TUniConnection.Create(nil);
  LQry := TUniQuery.Create(nil);
  try
    LConn.ProviderName := 'MySQL';
    LConn.Server := TConfig.ControlHost;
    LConn.Port := TConfig.ControlPort;
    LConn.Username := TConfig.ControlUser;
    LConn.Password := TConfig.ControlPassword;
    LConn.Database := TConfig.ControlSchema;
    LConn.LoginPrompt := False;
    LConn.Connected := True;

    LQry.Connection := LConn;
    LQry.SQL.Text :=
      'SELECT db_schema, status FROM tenants WHERE slug = :slug LIMIT 1';
    LQry.ParamByName('slug').AsString := ASlug;   // parametrizado
    LQry.Open;

    if LQry.IsEmpty then
      raise ETenantNotFound.CreateFmt('Tenant "%s" nao encontrado', [ASlug]);

    LInfo.Slug := ASlug;
    LInfo.Schema := LQry.FieldByName('db_schema').AsString;
    LInfo.Active := SameText(LQry.FieldByName('status').AsString, 'active');

    FLock.Enter;
    try
      FCache.AddOrSetValue(ASlug, LInfo);
    finally
      FLock.Leave;
    end;

    if not LInfo.Active then
      raise ETenantInactive.CreateFmt('Tenant "%s" inativo/suspenso', [ASlug]);

    Result := LInfo;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

end.
