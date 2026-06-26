unit Gourmet.Documento;

{ Normalizacao e validacao de documento (CPF/CNPJ) e derivacao da CHAVE UNICA
  da entidade. Regra acordada:
    - CNPJ/CPF valido (sem mascara, com digito verificador conferido) -> e a chave.
    - Sem doc valido -> a entidade recebe CODIGO_UNICO sequencial (gerado no
      registro global; ver Gourmet.Entidades.*), nunca compartilhado.

  Importante p/ a migracao: hoje ~50 mil etd tem doc placeholder ('0', '',
  '00000000000'...) = consumidor final. Esses NAO deduplicam: caem na trilha
  CODIGO_UNICO. }

interface

type
  TTipoChave = (tcCNPJ, tcCPF, tcCodigoUnico);

  TDocumento = record
  public
    /// Mantem apenas digitos.
    class function OnlyDigits(const S: string): string; static;
    /// Valida CPF (11 digitos + DV). Rejeita sequencias iguais.
    class function IsCPF(const S: string): Boolean; static;
    /// Valida CNPJ (14 digitos + DV). Rejeita sequencias iguais.
    class function IsCNPJ(const S: string): Boolean; static;
    /// Doc valido = CPF ou CNPJ valido.
    class function IsValid(const S: string): Boolean; static;
    /// Tipo da chave a partir do doc (CODIGO_UNICO quando invalido).
    class function TipoChave(const S: string): TTipoChave; static;
    /// Chave canonica p/ doc valido: 'CNPJ:<digitos>' ou 'CPF:<digitos>'.
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

function AllSame(const D: string): Boolean;
var
  I: Integer;
begin
  for I := 2 to Length(D) do
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
  if (Length(D) <> 11) or AllSame(D) then
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
  D := OnlyDigits(S);
  if (Length(D) <> 14) or AllSame(D) then
    Exit(False);

  Soma := 0;
  for I := 0 to 11 do
    Soma := Soma + (Ord(D[I + 1]) - Ord('0')) * P1[I];
  Resto := Soma mod 11;
  if Resto < 2 then Dv1 := 0 else Dv1 := 11 - Resto;
  if Dv1 <> (Ord(D[13]) - Ord('0')) then
    Exit(False);

  Soma := 0;
  for I := 0 to 12 do
    Soma := Soma + (Ord(D[I + 1]) - Ord('0')) * P2[I];
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
    tcCNPJ: Result := 'CNPJ:' + OnlyDigits(S);
    tcCPF:  Result := 'CPF:' + OnlyDigits(S);
  else
    Result := ''; // chamador gera CODIGO_UNICO
  end;
end;

end.
