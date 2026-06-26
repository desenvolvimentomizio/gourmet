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
  JOSE.Core.JWT, JOSE.Core.JWA, JOSE.Consumer, JOSE.Context,
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
  Result := (APath = '/health')
    or APath.StartsWith('/api/v1/auth/')
    or APath.StartsWith('/swagger');
end;

procedure EnsureAuthenticated(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LHeader, LToken: string;
  LConsumer: IJOSEConsumer;
  LContext: TJOSEContext;
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
  begin
    RespondError(Res, 401, 'Unauthorized', 'Token ausente');
    raise EHorseCallbackInterrupted.Create; // short-circuit (Horse para a cadeia)
  end;

  LToken := LHeader.Substring(7).Trim;

  // Validacao completa: assinatura (HS256 pinado) + issuer + exp obrigatorio.
  LConsumer := TJOSEConsumerBuilder.NewConsumer
    .SetClaimsClass(TJWTClaims)
    .SetVerificationKey(TConfig.JwtSecret)
    .SetExpectedAlgorithms([TJOSEAlgorithmId.HS256])
    .SetExpectedIssuer(True, TConfig.JwtIssuer)
    .SetRequireExpirationTime
    .Build;

  LContext := TJOSEContext.Create(LToken, TJWTClaims);
  try
    try
      LConsumer.ProcessContext(LContext); // lanca se invalido/expirado/issuer
    except
      on E: EHorseCallbackInterrupted do
        raise;
      on E: Exception do
      begin
        RespondError(Res, 401, 'Unauthorized', 'Token invalido ou expirado');
        raise EHorseCallbackInterrupted.Create;
      end;
    end;

    LClaims := LContext.GetClaims.JSON;
    GAuth.UserId     := ClaimStr(LClaims, 'sub');
    GAuth.TenantSlug := ClaimStr(LClaims, 'tenant');
    GAuth.Roles      := ClaimStr(LClaims, 'roles');

    if GAuth.TenantSlug = '' then
    begin
      RespondError(Res, 401, 'Unauthorized', 'Token sem tenant');
      raise EHorseCallbackInterrupted.Create;
    end;
  finally
    LContext.Free;
  end;

  Next();
end;

end.
