unit Gourmet.Auth.Service;

{ Regra de autenticacao: valida credenciais no control-plane e emite o JWT
  (HS256) com os claims usados pelo resto da API (sub, tenant, roles).

  O mesmo segredo (TConfig.JwtSecret) e usado aqui para assinar e no
  middleware EnsureAuthenticated para verificar. }

interface

type
  TLoginResult = record
    Token: string;
    TokenType: string;
    ExpiresIn: Integer; // segundos
  end;

  TAuthService = class
  public
    /// Autentica e devolve o JWT. Lanca EUnauthorized se invalido.
    class function Login(const ATenantSlug, AEmail, APassword: string): TLoginResult;
  end;

implementation

uses
  System.SysUtils, System.DateUtils, System.JSON,
  JOSE.Core.JWT, JOSE.Core.Builder,
  Gourmet.Config, Gourmet.Shared.Errors,
  Gourmet.Auth.Repository, Gourmet.Password;

const
  EXPIRA_HORAS = 8;

class function TAuthService.Login(const ATenantSlug, AEmail, APassword: string): TLoginResult;
var
  LUser: TAuthUser;
  LJWT: TJWT;
begin
  if (ATenantSlug.Trim = '') or (AEmail.Trim = '') or (APassword = '') then
    raise EApiError.Create(422, 'Informe tenant, email e senha');

  LUser := TAuthRepository.FindUser(ATenantSlug.Trim, AEmail.Trim);

  // Mensagem generica (nao revela se foi email ou senha) + sempre verifica o
  // hash mesmo sem usuario seria ideal; aqui mantemos simples.
  if (not LUser.Found) or (not TPassword.Verify(APassword, LUser.SenhaHash)) then
    raise EUnauthorized.Create('Credenciais invalidas');
  if not LUser.Ativo then
    raise EForbidden.Create('Usuario inativo');
  if not LUser.TenantActive then
    raise EForbidden.Create('Assinatura inativa ou suspensa');

  LJWT := TJWT.Create;
  try
    LJWT.Claims.Subject := LUser.UserId.ToString;
    LJWT.Claims.Issuer := TConfig.JwtIssuer;
    LJWT.Claims.IssuedAt := Now;
    LJWT.Claims.Expiration := IncHour(Now, EXPIRA_HORAS);
    LJWT.Claims.JSON.AddPair('tenant', LUser.TenantSlug);
    LJWT.Claims.JSON.AddPair('roles', LUser.Roles);

    Result.Token := TJOSE.SHA256CompactToken(TConfig.JwtSecret, LJWT);
    Result.TokenType := 'Bearer';
    Result.ExpiresIn := EXPIRA_HORAS * 3600;
  finally
    LJWT.Free;
  end;
end;

end.
