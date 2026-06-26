program tst_jwt;
{$APPTYPE CONSOLE}
uses System.SysUtils, System.DateUtils,
  JOSE.Core.JWT, JOSE.Core.Builder, JOSE.Consumer, JOSE.Context, JOSE.Core.JWA;
const
  SEC = 'segredo_super_forte_com_32_chars_ok!!'; // >= 256 bits
  ISS = 'gourmet-saas';
function MakeToken(const ASecret, AIssuer: string; AExpMin: Integer): string;
var J: TJWT;
begin
  J := TJWT.Create;
  try
    J.Claims.Issuer := AIssuer;
    J.Claims.IssuedAt := IncMinute(Now, -1);
    J.Claims.Expiration := IncMinute(Now, AExpMin);
    J.Claims.JSON.AddPair('tenant', 'danielentrega');
    Result := TJOSE.SHA256CompactToken(ASecret, J);
  finally J.Free; end;
end;
function Valid(const ASecret, AIssuer, AToken: string): Boolean;
var C: IJOSEConsumer; Ctx: TJOSEContext;
begin
  C := TJOSEConsumerBuilder.NewConsumer
    .SetClaimsClass(TJWTClaims).SetSkipDefaultAudienceValidation
    .SetVerificationKey(ASecret).SetExpectedAlgorithms([TJOSEAlgorithmId.HS256])
    .SetExpectedIssuer(True, AIssuer).SetRequireExpirationTime.Build;
  Ctx := TJOSEContext.Create(AToken, TJWTClaims);
  try
    try C.ProcessContext(Ctx); Result := True; except Result := False; end;
  finally Ctx.Free; end;
end;
procedure Chk(const N: string; B: Boolean);
begin
  if B then Writeln('OK   ', N) else begin Writeln('FAIL ', N); ExitCode := 1; end;
end;
begin
  Chk('token valido aceito',          Valid(SEC, ISS, MakeToken(SEC, ISS, 60)));
  Chk('token EXPIRADO rejeitado',  not Valid(SEC, ISS, MakeToken(SEC, ISS, -5)));
  Chk('issuer errado rejeitado',   not Valid(SEC, ISS, MakeToken(SEC, 'intruso', 60)));
  Chk('assinatura errada rejeitada', not Valid('chave_diferente_porem_com_32_chars_ok', ISS, MakeToken(SEC, ISS, 60)));
  Writeln('exitcode=', ExitCode);
end.
