unit Gourmet.Middleware.Auth;

{ Autenticacao via JWT (HS256).

  - Rotas publicas (login, health) passam direto.
  - Demais rotas exigem Authorization: Bearer <token> com assinatura valida.
  - Os claims relevantes (sub = usuario, tenant = slug, roles) ficam no
    contexto da request (threadvar) para os middlewares/controllers seguintes.

  Assinatura verificada com a biblioteca JOSE (a mesma usada pelo horse-jwt).
  Instale via boss: `boss install horse/horse-jwt`. }

interface

uses
  System.SysUtils, Horse;

type
  /// Contexto autenticado da request atual (por thread).
  TAuthContext = record
    UserId: string;
    TenantSlug: string;
    Roles: string; // CSV
  end;

procedure EnsureAuthenticated(Req: THorseRequest; Res: THorseResponse; Next: TProc);
function CurrentAuth: TAuthContext;

implementation

uses
  System.StrUtils, System.JSON,
  JOSE.Core.JWT, JOSE.Core.Builder, JOSE.Consumer, JOSE.Consumer.Validators,
  Gourmet.Config, Gourmet.Shared.Errors;

threadvar
  GAuth: TAuthContext;

function CurrentAuth: TAuthContext;
begin
  Result := GAuth;
end;

// Leitura segura de claim string (compativel com 10.4; nao usa GetValue<T>
// com default, cujo overload nem sempre esta disponivel).
function ClaimStr(AObj: TJSONObject; const AKey: string): string;
var
  LValue: TJSONValue;
begin
  Result := '';
  if AObj = nil then
    Exit;
  LValue := AObj.GetValue(AKey);
  if Assigned(LValue) then
    Result := LValue.Value;
end;

function IsPublicRoute(const APath: string): Boolean;
begin
  Result := (APath = '/health') or APath.StartsWith('/api/v1/auth/');
end;

procedure EnsureAuthenticated(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LHeader, LToken: string;
  LJWT: TJWT;
  LClaims: TJSONObject;
begin
  GAuth := Default(TAuthContext);

  if IsPublicRoute(Req.RawWebRequest.PathInfo) then
  begin
    Next();
    Exit;
  end;

  LHeader := Req.Headers['Authorization'];
  if not LHeader.StartsWith('Bearer ', True) then
    raise EUnauthorized.Create('Token ausente');

  LToken := LHeader.Substring(7).Trim;

  LJWT := TJOSE.Verify(TConfig.JwtSecret, LToken);
  try
    if (LJWT = nil) or (not LJWT.Verified) then
      raise EUnauthorized.Create('Token invalido');

    LClaims := LJWT.Claims.JSON;
    GAuth.UserId     := ClaimStr(LClaims, 'sub');
    GAuth.TenantSlug := ClaimStr(LClaims, 'tenant');
    GAuth.Roles      := ClaimStr(LClaims, 'roles');

    if GAuth.TenantSlug = '' then
      raise EUnauthorized.Create('Token sem tenant');
  finally
    LJWT.Free;
  end;

  Next();
end;

end.
