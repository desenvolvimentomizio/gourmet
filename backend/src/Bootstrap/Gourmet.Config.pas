unit Gourmet.Config;

{ Configuracao central do backend. Carrega de variaveis de ambiente
  (prioridade) e, como fallback, de config\config.ini. NUNCA versionar
  segredos: use config.sample.ini como modelo. }

interface

type
  TConfig = class
  public
    class procedure Load;
    // HTTP
    class function Port: Integer; static;
    // Control-plane (banco central de tenants/auth/billing)
    class function ControlHost: string; static;
    class function ControlPort: Integer; static;
    class function ControlUser: string; static;
    class function ControlPassword: string; static;
    class function ControlSchema: string; static;
    // Servidor MySQL onde vivem os schemas dos tenants
    class function TenantHost: string; static;
    class function TenantPort: Integer; static;
    class function TenantUser: string; static;
    class function TenantPassword: string; static;
    // Seguranca
    class function JwtSecret: string; static;
    class function JwtIssuer: string; static;
  end;

implementation

uses
  System.SysUtils, System.IniFiles, System.IOUtils;

var
  GIni: TIniFile;

function Env(const AName, ADefault: string): string;
begin
  Result := GetEnvironmentVariable(AName);
  if Result = '' then
    Result := ADefault;
end;

class procedure TConfig.Load;
var
  LPath: string;
begin
  LPath := TPath.Combine(TPath.GetDirectoryName(ParamStr(0)), 'config\config.ini');
  if not TFile.Exists(LPath) then
    LPath := TPath.Combine(ExtractFilePath(ParamStr(0)), '..\config\config.ini');
  GIni := TIniFile.Create(LPath);
end;

class function TConfig.Port: Integer;
begin
  Result := StrToIntDef(Env('GOURMET_PORT', GIni.ReadString('http', 'port', '9000')), 9000);
end;

class function TConfig.ControlHost: string;
begin
  Result := Env('CONTROL_HOST', GIni.ReadString('control', 'host', '192.168.5.159'));
end;

class function TConfig.ControlPort: Integer;
begin
  Result := StrToIntDef(Env('CONTROL_PORT', GIni.ReadString('control', 'port', '3306')), 3306);
end;

class function TConfig.ControlUser: string;
begin
  Result := Env('CONTROL_USER', GIni.ReadString('control', 'user', 'gourmet_app'));
end;

class function TConfig.ControlPassword: string;
begin
  Result := Env('CONTROL_PASSWORD', GIni.ReadString('control', 'password', ''));
end;

class function TConfig.ControlSchema: string;
begin
  Result := Env('CONTROL_SCHEMA', GIni.ReadString('control', 'schema', 'saas_control'));
end;

class function TConfig.TenantHost: string;
begin
  Result := Env('TENANT_HOST', GIni.ReadString('tenant', 'host', '192.168.5.159'));
end;

class function TConfig.TenantPort: Integer;
begin
  Result := StrToIntDef(Env('TENANT_PORT', GIni.ReadString('tenant', 'port', '3306')), 3306);
end;

class function TConfig.TenantUser: string;
begin
  Result := Env('TENANT_USER', GIni.ReadString('tenant', 'user', 'gourmet_app'));
end;

class function TConfig.TenantPassword: string;
begin
  Result := Env('TENANT_PASSWORD', GIni.ReadString('tenant', 'password', ''));
end;

class function TConfig.JwtSecret: string;
begin
  Result := Env('JWT_SECRET', GIni.ReadString('security', 'jwt_secret', ''));
  if Result = '' then
    raise Exception.Create('JWT_SECRET nao configurado (env ou config.ini)');
  // HS256 exige chave >= 256 bits; senao o consumer rejeita TODOS os tokens.
  if Length(Result) < 32 then
    raise Exception.Create(
      'JWT_SECRET muito curto: use >= 32 caracteres (256 bits) para HS256');
end;

class function TConfig.JwtIssuer: string;
begin
  Result := Env('JWT_ISSUER', GIni.ReadString('security', 'jwt_issuer', 'gourmet-saas'));
end;

initialization

finalization
  GIni.Free;

end.
