unit Gourmet.Documento;

{ Normalizacao e validacao de documento (CPF/CNPJ) e derivacao da CHAVE UNICA
  da entidade. Regra acordada:
    - CNPJ/CPF valido (com digito verificador conferido) -> e a chave.
    - Sem doc valido -> a entidade recebe CODIGO_UNICO sequencial (gerado no
      registro global; ver Gourmet.Entidades.*), nunca compartilhado.

  CNPJ ALFANUMERICO (Receita Federal, vigencia jul/2026):
    - 14 posicoes; as 12 primeiras aceitam [0-9A-Z]; as 2 ultimas (DV) sao
      sempre numericas.
    - DV: valor de cada caractere = ASCII(c) - 48  ('0'..'9'->0..9,
      'A'..'Z'->17..42). Mesmos pesos do CNPJ classico, modulo 11.
    - Retrocompativel: CNPJ 100% numerico valida pelo mesmo algoritmo.
  CPF permanece 11 digitos numericos.

  Migracao: ~50 mil etd tem doc placeholder ('0','', '000...') = consumidor
  final; caem na trilha CODIGO_UNICO (nao deduplicam). }

interface

type
  TTipoChave = (tcCNPJ, tcCPF, tcCodigoUnico);

  TDocumento = record
  public
    /// Mantem apenas digitos (uso do CPF e dos DVs).
    class function OnlyDigits(const S: string): string; static;
    /// Normaliza CNPJ: maiusculas, mantem apenas [0-9A-Z] (remove . / - espaco).
    class function NormalizeCNPJ(const S: string): string; static;
    /// Valida CPF (11 digitos + DV). Rejeita sequencias iguais.
    class function IsCPF(const S: string): Boolean; static;
    /// Valida CNPJ numerico OU alfanumerico (14 pos + DV numerico).
    class function IsCNPJ(const S: string): Boolean; static;
    /// Doc valido = CPF ou CNPJ valido.
    class function IsValid(const S: string): Boolean; static;
    /// Tipo da chave a partir do doc (CODIGO_UNICO quando invalido).
    class function TipoChave(const S: string): TTipoChave; static;
    /// Chave canonica p/ doc valido: 'CNPJ:<norm>' ou 'CPF:<digitos>'.
    /// Para doc invalido retorna '' (o chamador gera CODIGO_UNICO).
    class function ChaveCanonica(const S: string): string; static;
  end;

implementation

uses
  System.SysUtils, System.Character;

class function TDocumento.OnlyDigits(const S: string): string;
var
  C: Char;
begin
  Result := '';
  for C in S do
    if C.IsDigit then
      Result := Result + C;
end;

class function TDocumento.NormalizeCNPJ(const S: string): string;
var
  C: Char;
begin
  Result := '';
  for C in UpperCase(S) do
    if (C >= '0') and (C <= '9') or (C >= 'A') and (C <= 'Z') then
      Result := Result + C;
end;

// Valor do caractere no CNPJ alfanumerico: ASCII - 48.
function CharVal(C: Char): Integer; inline;
begin
  Result := Ord(C) - Ord('0');
end;

function IsAlnumUpper(C: Char): Boolean; inline;
begin
  Result := ((C >= '0') and (C <= '9')) or ((C >= 'A') and (C <= 'Z'));
end;

// Rejeita base toda igual (ex.: 00000000000000), placeholder invalido.
function BaseAllSame(const D: string; ALen: Integer): Boolean;
var
  I: Integer;
begin
  for I := 2 to ALen do
    if D[I] <> D[1] then
      Exit(False);
  Result := True;
end;

class function TDocumento.IsCPF(const S: string): Boolean;
var
  D: string;
  I, Soma, Resto, Dv1, Dv2: Integer;
begin
  D := OnlyDigits(S);
  if (Length(D) <> 11) or BaseAllSame(D, 11) then
    Exit(False);

  Soma := 0;
  for I := 1 to 9 do
    Soma := Soma + (Ord(D[I]) - Ord('0')) * (11 - I);
  Resto := (Soma * 10) mod 11;
  if Resto = 10 then Resto := 0;
  Dv1 := Resto;
  if Dv1 <> (Ord(D[10]) - Ord('0')) then
    Exit(False);

  Soma := 0;
  for I := 1 to 10 do
    Soma := Soma + (Ord(D[I]) - Ord('0')) * (12 - I);
  Resto := (Soma * 10) mod 11;
  if Resto = 10 then Resto := 0;
  Dv2 := Resto;
  Result := Dv2 = (Ord(D[11]) - Ord('0'));
end;

class function TDocumento.IsCNPJ(const S: string): Boolean;
const
  P1: array[0..11] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
  P2: array[0..12] of Integer = (6,5,4,3,2,9,8,7,6,5,4,3,2);
var
  D: string;
  I, Soma, Resto, Dv1, Dv2: Integer;
begin
  D := NormalizeCNPJ(S);
  if Length(D) <> 14 then
    Exit(False);

  // 12 primeiras posicoes: alfanumericas; 13-14: DV numerico.
  for I := 1 to 12 do
    if not IsAlnumUpper(D[I]) then
      Exit(False);
  if not (D[13].IsDigit and D[14].IsDigit) then
    Exit(False);
  if BaseAllSame(D, 12) then
    Exit(False);

  // 1o DV
  Soma := 0;
  for I := 0 to 11 do
    Soma := Soma + CharVal(D[I + 1]) * P1[I];
  Resto := Soma mod 11;
  if Resto < 2 then Dv1 := 0 else Dv1 := 11 - Resto;
  if Dv1 <> (Ord(D[13]) - Ord('0')) then
    Exit(False);

  // 2o DV (inclui o 1o DV ja calculado)
  Soma := 0;
  for I := 0 to 11 do
    Soma := Soma + CharVal(D[I + 1]) * P2[I];
  Soma := Soma + Dv1 * P2[12];
  Resto := Soma mod 11;
  if Resto < 2 then Dv2 := 0 else Dv2 := 11 - Resto;
  Result := Dv2 = (Ord(D[14]) - Ord('0'));
end;

class function TDocumento.IsValid(const S: string): Boolean;
begin
  Result := IsCPF(S) or IsCNPJ(S);
end;

class function TDocumento.TipoChave(const S: string): TTipoChave;
begin
  if IsCNPJ(S) then
    Result := tcCNPJ
  else if IsCPF(S) then
    Result := tcCPF
  else
    Result := tcCodigoUnico;
end;

class function TDocumento.ChaveCanonica(const S: string): string;
begin
  case TipoChave(S) of
    tcCNPJ: Result := 'CNPJ:' + NormalizeCNPJ(S);
    tcCPF:  Result := 'CPF:' + OnlyDigits(S);
  else
    Result := ''; // chamador gera CODIGO_UNICO
  end;
end;

end.
