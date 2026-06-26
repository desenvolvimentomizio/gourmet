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
  System.SysUtils, System.JSON, Horse,
  Gourmet.Auth.Service, Gourmet.Shared.Errors;

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
