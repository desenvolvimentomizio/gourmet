unit Gourmet.Auth.Controller;

{ Rotas de autenticacao (publicas). }

interface

type
  TAuthController = class
  public
    class procedure RegisterRoutes;
  end;

implementation

uses
  System.SysUtils, System.JSON, Horse, Horse.GBSwagger,
  Gourmet.Auth.Service, Gourmet.Shared.Errors, Gourmet.Swagger.Models;

// Extrai campo string obrigatorio do body (422 se ausente).
function ReqStr(ABody: TJSONObject; const AKey: string): string;
var
  LValue: TJSONValue;
begin
  LValue := ABody.GetValue(AKey);
  if not Assigned(LValue) then
    raise EApiError.Create(422, Format('Campo "%s" obrigatorio', [AKey]));
  Result := LValue.Value;
end;

class procedure TAuthController.RegisterRoutes;
begin
  // --- Documentacao OpenAPI (mantida junto da rota) ---
  Swagger
    .Path('auth/login')
      .Tag('Auth')
      .POST('Login', 'Autentica usuario e emite JWT (Bearer)')
        .AddParamBody('credenciais', 'tenant, email e senha')
          .Required(True).Schema(TLoginRequest).&End
        .AddResponse(200, 'Autenticado').Schema(TLoginResponse).&End
        .AddResponse(401, 'Credenciais invalidas').Schema(TApiErrorModel).&End
        .AddResponse(422, 'Dados invalidos').Schema(TApiErrorModel).&End
      .&End
    .&End;

  // POST /api/v1/auth/login  { "tenant": "...", "email": "...", "password": "..." }
  THorse.Post('/api/v1/auth/login',
    procedure(Req: THorseRequest; Res: THorseResponse)
    var
      LBody: TJSONObject;
      LResult: TLoginResult;
      LOut: TJSONObject;
    begin
      LBody := Req.Body<TJSONObject>;
      if LBody = nil then
        raise EApiError.Create(422, 'Body JSON ausente');

      LResult := TAuthService.Login(
        ReqStr(LBody, 'tenant'),
        ReqStr(LBody, 'email'),
        ReqStr(LBody, 'password'));

      LOut := TJSONObject.Create;
      LOut.AddPair('access_token', LResult.Token);
      LOut.AddPair('token_type', LResult.TokenType);
      LOut.AddPair('expires_in', TJSONNumber.Create(LResult.ExpiresIn));
      Res.Send<TJSONObject>(LOut);
    end);
end;

end.
