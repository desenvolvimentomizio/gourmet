unit Gourmet.Password;

{ Hash e verificacao de senha com PBKDF2-HMAC-SHA256 (lib hashlib4pascal, ja
  presente via JOSE). Formato armazenado (estilo Django):
      pbkdf2_sha256$<iteracoes>$<saltB64>$<hashB64>
  Comparacao em tempo constante para evitar timing attack. }

interface

type
  TPassword = record
  public
    /// Gera o hash codificado para armazenar em saas_control.usuarios.senha_hash.
    class function Hash(const APlain: string): string; static;
    /// Verifica a senha contra o hash codificado.
    class function Verify(const APlain, AEncoded: string): Boolean; static;
  end;

implementation

uses
  System.SysUtils, System.NetEncoding,
  HlpHashFactory, HlpIHashInfo, HlpHashLibTypes;

const
  ITERACOES = 120000;
  TAM_HASH  = 32;
  TAM_SALT  = 16;

function B64Encode(const ABytes: TBytes): string;
var
  LEnc: TBase64Encoding;
begin
  LEnc := TBase64Encoding.Create(0, ''); // sem quebra de linha
  try
    Result := LEnc.EncodeBytesToString(ABytes);
  finally
    LEnc.Free;
  end;
end;

function B64Decode(const AStr: string): TBytes;
var
  LEnc: TBase64Encoding;
begin
  LEnc := TBase64Encoding.Create(0, '');
  try
    Result := LEnc.DecodeStringToBytes(AStr);
  finally
    LEnc.Free;
  end;
end;

function Pbkdf2(const APlain: string; const ASalt: TBytes; AIter: Integer): TBytes;
var
  LKdf: IPBKDF2_HMAC;
begin
  LKdf := TKDF.TPBKDF2_HMAC.CreatePBKDF2_HMAC(
    THashFactory.TCrypto.CreateSHA2_256,
    TEncoding.UTF8.GetBytes(APlain),
    ASalt,
    UInt32(AIter));
  Result := LKdf.GetBytes(TAM_HASH);
end;

function RandomSalt: TBytes;
var
  LGuid: TGUID;
begin
  // GUID v4 fornece aleatoriedade suficiente p/ salt (salt nao precisa ser secreto).
  LGuid := TGUID.NewGuid;
  SetLength(Result, TAM_SALT);
  Move(LGuid, Result[0], TAM_SALT);
end;

function ConstTimeEqual(const A, B: TBytes): Boolean;
var
  I, Diff: Integer;
begin
  if Length(A) <> Length(B) then
    Exit(False);
  Diff := 0;
  for I := 0 to High(A) do
    Diff := Diff or (A[I] xor B[I]);
  Result := Diff = 0;
end;

class function TPassword.Hash(const APlain: string): string;
var
  LSalt, LHash: TBytes;
begin
  LSalt := RandomSalt;
  LHash := Pbkdf2(APlain, LSalt, ITERACOES);
  Result := Format('pbkdf2_sha256$%d$%s$%s',
    [ITERACOES, B64Encode(LSalt), B64Encode(LHash)]);
end;

class function TPassword.Verify(const APlain, AEncoded: string): Boolean;
var
  LParts: TArray<string>;
  LIter: Integer;
  LSalt, LExpected, LActual: TBytes;
begin
  LParts := AEncoded.Split(['$']);
  if (Length(LParts) <> 4) or (LParts[0] <> 'pbkdf2_sha256') then
    Exit(False);
  LIter := StrToIntDef(LParts[1], 0);
  if LIter <= 0 then
    Exit(False);
  LSalt := B64Decode(LParts[2]);
  LExpected := B64Decode(LParts[3]);
  LActual := Pbkdf2(APlain, LSalt, LIter);
  Result := ConstTimeEqual(LActual, LExpected);
end;

end.
