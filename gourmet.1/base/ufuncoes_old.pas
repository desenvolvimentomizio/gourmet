unit ufuncoes;

interface

uses SysUtils, System.Classes, Winapi.Windows, Winsock, idstack, Vcl.DBCtrls, Vcl.DBGrids,
  Datasnap.DBClient, IdHashMessageDigest, idHash, zlib, uni, Vcl.Forms, Data.DB,
  System.Math, Vcl.Consts;

type
  Impressao = function(AOwner: TComponent; Conexao: tuniconnection; vtabela: tunidatasource; DirRelatorio: String): string;

Function TBTruncate(Valor: Real; Decimal: Integer): Real;
Function TBRound(Value: Extended; Decimals: Integer): Extended;
Function SoNumeros(Const Texto: String): String;
Function SoLetras(Const Texto: String): String;
Function desprotegertexto(senha: String): String;
Function protegertexto(senha: String): String;
Function CalculaDigEAN13(Cod: String): String;
Function BuscaTroca(Text, Busca, Troca: String): String;
Function ajustadata(dia: String): String;
Function voltadata(dia: String): String;
Function Modulo11(Numero: String): String;
function StreamToString(Stream: TStream): String;
function MemoryStreamToString(aStream: TStream): string;
Function NomeComputador: String;
function funCountChar(psTexto: string; pcChar: Char): Integer;
function RemoverAcento(Key: Char): Char;
function semacento(Texto: string): string;
function buscaips: tstringlist;
procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);
function CountChar(MyChar: Char; MyString: String): Integer;
function StrIsFloat(const S: string): boolean;
function MD5texto(const Texto: string): string;
function EncodeBase64(const inStr: string): string;
function DecodeBase64(const CinLine: string): string;
function ComprimeZeros(S: string): string;
function DesComprimeZeros(S: string): string;
function Encripta(S: string): string;
function DEcripta(S: string): string;
Function Mod11(iNumero: String): string;
function criptografa(pTexto: string; pTipo: Integer): string;
Function mrfrImprimir(Application: TApplication; Conexao: tuniconnection; Dados: tunidatasource; DirRelatorio: String; TipoImpressao: Integer): String;

const

  PEG_COR_SELCGRID: Integer = $00D1B198;
  PEG_COR_VALORPADRAO: Integer = $00D1B198;

  C1 = 52845;
  C2 = 22719;
  // Chaves de encriptação
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';
  Codesenc = 'BEIJAFLORZ';
  Codesdec = '0123456789';

  (* Modo do Orçamento - moccodigo *)
  mocOrcamento = 1;
  mocCondicional = 2;
  mocOrdemServico = 3;
  mocAFaturar = 4;

  (* Situação do Orçamento - stocodigo *)
  stoEmDigitacao = 1;
  stoEmAberto = 2;
  stoVendido = 3;
  stoUnificado = 4;
  stoRetornado = 8;
  stoCancelado = 88;

  (* Preço Utilizado no Orçamento - puocodigo *)
  puoAVista = 0;
  puoAPrazo = 1;

  (* Tipo de Impressão *)
  tiImprimir = 0;
  tiGerador = 1;

  (* Tipo de Financeiro de Registro *)
  tfdOutros = 0;
  tfdPagar = 1;
  tfdReceber = 2;
  tfdContaCorrente = 3;
  tfdPagamentos = 22;
  tfdVenda = 32;
  tfdRecebimentos = 42;
  tfdCompras = 52;
  tfdBancariaDébito = 80;
  tfdBancariaCrédito = 81;


  (* Situacao dos Registros Financeiros *)
  srfEmAberto = 0;
  srfBaixaParcial = 1;
  srfQuitado = 2;
  srfCancelado = 9;

  (* Tipo de Movimento Financeiro *)
  tmfAPagar = 1;
  tmfAReceber = 2;
  tmfJurosaDebito = 3;
  tmfDescontoaDebito = 4;
  tmfAjusteaDebito = 6;
  tmfMultaaDebito = 8;
  tmfPagamento = 11;
  tmfRecebimento = 22;
  tmfJurosaCredito = 33;
  tmfDescontoaCredito = 44;
  tmfAjusteaCredito = 66;
  tmfMultaaCredito = 88;
  tmfBaixaporZeramento = 99;

  (* Tabela de Formas de Pagamento *)
  tfpAVista = 0;
  tfpAPrazo = 1;
  tfpoutras = 2;

  { * Tipos de Documentos Financeiros * }
  tfiCheque = 1;
  tfiBoleto = 2;
  tfiFatura = 3;
  tfiRecibo = 4;
  tfiDeposito = 5;
  tfiOutros = 9;
  tfiDuplicata = 10;

<<<<<<< .mine


=======
  (* Tipos de Documentos Fiscais *)
  tdfMovimentoEmAndamento = '00';
  tdfNotaFiscal = '01';
  tdfNotaFiscalDeVendaAConsumidor = '02';
  tdfNotaFiscalDeProdutor = '04';
  tdfNotaFiscalContaDeEnergiaElétrica = '06';
  tdfConhecimentoDeTransporteRodoviárioDeCargas = '08';
  tdfResumoDeMovimentoDiário = '18';
  tdfNotaFiscalAvulsa = '1B';
  tdfGNRE = '23';
  tdfAutorizaçãoDeCarregamentoETransporte = '24';
  tdfNotaFiscalContaDeFornecimentoDeAguaCanaliza = '29';
  tdfCupomFiscalEmitidoPorECF = '2D';
  tdfNotaFiscalEletrônica = '55';
  tdfConhecimentoDeTransporteEletronico = '57';
  tdfMovimentoAFaturar = '99';

>>>>>>> .r755
implementation

Function mrfrImprimir(Application: TApplication; Conexao: tuniconnection; Dados: tunidatasource; DirRelatorio: String; TipoImpressao: Integer): String;

Var
  Pack: Cardinal;
  Exec: Impressao;
  vNomeRotina: String;
  Vu: String;
Begin

  case TipoImpressao of
    tiImprimir:
      vNomeRotina := 'mrfrImpressao';
    tiGerador:
      vNomeRotina := 'mrfrGerador';
  end;

  Pack := LoadPackage('modulos\mrfr.bpl');
  If Pack <> 0 Then
    Try
      @Exec := GetProcAddress(Pack, PChar(vNomeRotina));

      If Assigned(Exec) Then
        Vu := Exec(Application, Conexao, Dados, DirRelatorio);

    Finally
      DoUnLoadPackage(Application, Pack);
    End;

End;

Function TBTruncate(Valor: Real; Decimal: Integer): Real;
Var
  Aux: String;
Begin
  Valor := Valor * 100000;
  Aux := Formatfloat('00000000000000000000', Valor);
  Aux := Copy(Aux, 1, 15) + Copy(Aux, 16, Decimal);
  Case Decimal Of
    2:
      Valor := Strtofloat(Aux) / 100;
    3:
      Valor := Strtofloat(Aux) / 1000;
    4:
      Valor := Strtofloat(Aux) / 10000;
    5:
      Valor := Strtofloat(Aux) / 100000;
  End;
  Result := Valor;
End;

Function TBRound(Value: Extended; Decimals: Integer): Extended;
Var
  Factor, Fraction: Extended;
Begin
  Factor := IntPower(10, Decimals);
  { A conversão para string e depois para float evita
    erros de arredondamentos indesejáveis. }
  Value := Strtofloat(floattostr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  If (Fraction >= 0.5) Then
    Result := Result + 1
  Else If (Fraction <= -0.5) Then
    Result := Result - 1;
  Result := Result / Factor;

End;

function criptografa(pTexto: string; pTipo: Integer): string;

Const
  vEncripta: Array [1 .. 64] Of Char = ('p', 'ç', 'l', 'v', 'x', 'm', 'c', 'j', 'n', 's', 'h', '5', 't', 'W', 'w', 'Y', 'y', 'z', 'b', 'd', 'g', 'k',
    'a', 'f', 'q', 'o', 'i', 'u', 'e', 'r', ']', '[', '0', '6', '7', 'R', 'E', 'U', 'I', 'T', 'Q', 'F', 'A', 'K', 'G', 'V', 'B', 'Z', '4', '3', '8',
    '2', '9', '1', 'H', 'S', 'N', 'J', 'C', 'M', 'D', 'O', 'L', 'P');
  vDecripta: Array [1 .. 64] Of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
    'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '+', '/');

var
  vPos: Integer;
  vCont: Integer;
  vLetra: String;
  vResultado: String;
begin
  vResultado := '';
  For vPos := 1 To Length(pTexto) Do
  Begin
    // Criptografando
    vLetra := '';
    For vCont := 1 To 64 Do
    Begin
      If pTipo = 1 Then
      Begin
        If pTexto[vPos] = vDecripta[vCont] Then
          vLetra := vEncripta[vCont];
      End
      Else If pTipo = 2 Then
      Begin
        If pTexto[vPos] = vEncripta[vCont] Then
          vLetra := vDecripta[vCont];
      End;
    End;
    // Se o caracter procurado não for encontrado no array mantem o caracter original
    If vLetra = '' Then
      vLetra := pTexto[vPos];

    vResultado := vResultado + vLetra;
  End;
  Result := vResultado
end;

function StrZero(Zeros: string; Quant: Integer): string;
begin
  Result := Zeros;
  Quant := Quant - Length(Result);
  if Quant > 0 then
    Result := StringOfChar('0', Quant) + Result;
end;

Function Mod11(iNumero: String): string;

var
  sCadeia: String;
  iX: Integer;
  iY: Integer;
  iValor: Integer;
  iDigito: Integer;
  sPosicao: String;
  iPosicao: Integer;

Begin
  iValor := 0;
  sCadeia := StrZero(iNumero, 16);
  For iY := 2 DownTo 1 do
  Begin
    For iX := 8 DownTo 1 do
    Begin
      sPosicao := Copy(sCadeia, (17 - (iX + (8 * (iY - 1)))), 1);
      iPosicao := StrToInt(sPosicao);
      iValor := iValor + (iPosicao * (iX + 1))
    End;
  End;

  iDigito := ((iValor * 10) mod 11);

  If iDigito >= 10 Then
    iDigito := 0;

  Result := StrZero(inttostr(iDigito), 1);

End;

function Encripta(S: string): string;

var
  i, m: Integer;
  Texto: string;
  masca: string;
  x: string;
begin
  Result := '';
  m := 0;
  for i := 1 to Length(S) do
  begin
    x := S[i];
    Texto := Texto + Copy(Codesenc, StrToInt(x) + 1, 1);
    m := m + 1;
    if m = 5 then
    begin
      Texto := Texto + '-';
      m := 0;
    end;
  end;

  // evitar que o código da chave seja gerado com um traço no final

  if Copy(Texto, Length(Texto), 1) = '-' then
  begin
    Texto := Copy(Texto, 1, Length(Texto) - 1);
  end;

  Result := Texto;
end;

function DEcripta(S: string): string;

var
  i, l: Integer;
  Texto: string;
  x: string;
begin
  Result := '';
  for i := 1 to Length(S) do
  begin
    x := S[i];
    for l := 1 to Length(S) do
    begin

      if Copy(Codesenc, l, 1) = x then
      begin
        break
      end;
    end;

    Texto := Texto + Copy(Codesdec, l, 1);
  end;
  Result := Texto;
end;

function ComprimeZeros(S: string): string;

var
  i: Integer;
  x: Char;
  ini: Integer;
  fin: Integer;
  qtd: Integer;
  Texto: string;
begin
  Result := '';
  ini := 0;
  for i := 1 to Length(S) do
  begin
    x := S[i];
    if (ini > 0) and (StrToInt(x) > 0) then
    begin
      fin := i;
      Texto := Texto + '0' + Formatfloat('00', (fin - ini)) + x;
      ini := 0;
    end
    else if (StrToInt(x) = 0) and (ini = 0) then
    begin
      ini := i;
    end
    else if (StrToInt(x) <> 0) then
    begin
      Texto := Texto + x;
    end;
  end;
  Result := Texto;
end;

function DesComprimeZeros(S: string): string;

var
  i: Integer;
  Texto: string;
  x: Char;
  ini: Integer;
  fin: Integer;
  qtd: Integer;
  Zeros: string;
begin
  Zeros := '000000000000000000000000000000000000000000000000000000000000000000000000000000000';
  Result := '';
  Result := '';
  ini := 0;
  Texto := '';
  i := 1;
  while True do
  begin
    x := S[i];
    if (StrToInt(x) = 0) and (StrToInt(S[i - 1]) > 0) then
    begin
      qtd := +StrToInt(S[i + 1] + S[i + 2]);
      Texto := Texto + Copy(Zeros, 1, qtd);
      i := i + 3;

    end
    else
    begin
      Texto := Texto + x;
      i := i + 1;
    end;
    if i > Length(S) then
    begin
      break
    end;
  end;
  Result := Texto;
end;

function EncodeBase64(const inStr: string): string;

  function Encode_Byte(b: Byte): Ansichar;

  const
    Base64Code: string[64] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  begin
    Result := Base64Code[(b and $3F) + 1];
  end;

var
  i: Integer;
begin
  i := 1;
  Result := '';
  while i <= Length(inStr) do
  begin
    Result := Result + Encode_Byte(Byte(inStr[i]) shr 2);
    Result := Result + Encode_Byte((Byte(inStr[i]) shl 4) or (Byte(inStr[i + 1]) shr 4));
    if i + 1 <= Length(inStr) then
      Result := Result + Encode_Byte((Byte(inStr[i + 1]) shl 2) or (Byte(inStr[i + 2]) shr 6))
    else
      Result := Result + '=';
    if i + 2 <= Length(inStr) then
      Result := Result + Encode_Byte(Byte(inStr[i + 2]))
    else
      Result := Result + '=';
    Inc(i, 3);
  end;
end;

function DecodeBase64(const CinLine: string): string;

const
  RESULT_ERROR = -2;

var
  inLineIndex: Integer;
  c: Char;
  x: SmallInt;
  c4: Word;
  StoredC4: array [0 .. 3] of SmallInt;
  InLineLength: Integer;
begin
  Result := '';
  inLineIndex := 1;
  c4 := 0;
  InLineLength := Length(CinLine);

  while inLineIndex <= InLineLength do
  begin
    while (inLineIndex <= InLineLength) and (c4 < 4) do
    begin
      c := CinLine[inLineIndex];
      case c of
        '+':
          x := 62;
        '/':
          x := 63;
        '0' .. '9':
          x := Ord(c) - (Ord('0') - 52);
        '=':
          x := -1;
        'A' .. 'Z':
          x := Ord(c) - Ord('A');
        'a' .. 'z':
          x := Ord(c) - (Ord('a') - 26);
      else
        x := RESULT_ERROR;
      end;
      if x <> RESULT_ERROR then
      begin
        StoredC4[c4] := x;
        Inc(c4);
      end;
      Inc(inLineIndex);
    end;

    if c4 = 4 then
    begin
      c4 := 0;
      Result := Result + Char((StoredC4[0] shl 2) or (StoredC4[1] shr 4));
      if StoredC4[2] = -1 then
        Exit;
      Result := Result + Char((StoredC4[1] shl 4) or (StoredC4[2] shr 2));
      if StoredC4[3] = -1 then
        Exit;
      Result := Result + Char((StoredC4[2] shl 6) or (StoredC4[3]));
    end;
  end;
end;

function MD5texto(const Texto: string): string;

var
  idmd5: TIdHashMessageDigest5;
  hash: T4x4LongWordRecord;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(Texto);
  finally
    idmd5.Free;
  end;
end;

function StrIsFloat(const S: string): boolean;
begin
  try
    Strtofloat(S);
    Result := True;
  except
    Result := false;
  end;
end;

function CountChar(MyChar: Char; MyString: String): Integer;

var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(MyString) do
  begin
    if MyString[i] = MyChar then
    begin
      Inc(Result);
    end;
  end;
end;

procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);

var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  for i := AOwner.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
    if (Module = 0) or (HModule(m.AllocationBase) = Module) then
      AOwner.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);

  System.Classes.UnRegisterClass(Tdbmemo);
  System.Classes.UnRegisterClass(TCustomdbgrid);

  UnLoadPackage(Module);
end;

function buscaips: tstringlist;

var
  lista: tstringlist;
begin
  try
    lista := tstringlist.Create;
    TIdStack.IncUsage;
    GStack.AddLocalAddressesToList(lista);
    Result := lista;
    // FreeAndNil(lista);
  finally
    TIdStack.DecUsage;
    // FreeAndNil(lista);
  end;
end;

function semacento(Texto: string): string;

Var
  S: String;
  i: Integer;
begin
  for i := 1 to Length(Texto) do
  begin
    S := S + RemoverAcento(Texto[i]);;
  end;
  Result := S;
end;

function RemoverAcento(Key: Char): Char;
begin
  if (Key in ['é', 'è', 'ê']) then
  begin
    Result := 'e';
  end
  else if (Key in ['É', 'È', 'Ê']) then
  begin
    Result := 'E';
  end
  else if (Key in ['á', 'à', 'ã', 'â']) then
  begin
    Result := 'a';
  end
  else if (Key in ['Á', 'À', 'Ã', 'Â']) then
  begin
    Result := 'A';
  end
  else if (Key in ['í', 'ì', 'Í', 'Ì', 'î', 'Î']) then
  begin
    Result := 'i';
  end
  else if (Key in ['Í', 'Ì', 'Î']) then
  begin
    Result := 'I';
  end
  else if (Key in ['ó', 'ò', 'õ', 'ô']) then
  begin
    Result := 'O';
  end
  else if (Key in ['Ó', 'Ò', 'Õ', 'Ô']) then
  begin
    Result := 'O';
  end
  else if (Key in ['ú', 'ù']) then
  begin
    Result := 'u';
  end
  else if (Key in ['Ú', 'Ù']) then
  begin
    Result := 'U';
  end
  else if (Key in ['ç']) then
  begin
    Result := 'c';
  end
  else if (Key in ['Ç']) then
  begin
    Result := 'C';
  end
  else
    Result := Key;
end;

function funCountChar(psTexto: string; pcChar: Char): Integer;

var
  i, ivTot: Integer;

begin
  ivTot := 0;
  psTexto := Trim(psTexto);
  for i := 1 to Length(psTexto) do
  begin
    if (UpCase(psTexto[i]) = UpCase(pcChar)) then
      ivTot := ivTot + 1;
  end;
  Result := ivTot;
end;

Function NomeComputador: String;

Var
  lpBuffer: PChar;
  nSize: DWord;

Const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
Begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
End;

Function Encode(Const S: ansistring): ansistring;

Const
  map: Array [0 .. 63] Of Char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

Var
  i: longint;
Begin
  i := 0;
  Move(S[1], i, Length(S));
  Case Length(S) Of
    1:
      Result := map[i Mod 64] + map[(i Shr 6) Mod 64];
    2:
      Result := map[i Mod 64] + map[(i Shr 6) Mod 64] + map[(i Shr 12) Mod 64];
    3:
      Result := map[i Mod 64] + map[(i Shr 6) Mod 64] + map[(i Shr 12) Mod 64] + map[(i Shr 18) Mod 64];
  End;
End;

Function PostProcess(Const S: ansistring): ansistring;

Var
  SS: ansistring;
Begin
  SS := S;
  Result := '';
  While SS <> '' Do
  Begin
    Result := Result + Encode(Copy(SS, 1, 3));
    Delete(SS, 1, 3);
  End;
End;

Function InternalEncrypt(Const S: ansistring; Key: Word): ansistring;

Var
  i: Word;
  Seed: int64;
Begin
  Result := S;
  Seed := Key;
  For i := 1 To Length(Result) Do
  Begin
    Result[i] := Ansichar(Byte(Result[i]) Xor (Seed Shr 8));
    Seed := (Byte(Result[i]) + Seed) * Word(C1) + Word(C2);
  End;
End;

Function InternalDecrypt(Const S: ansistring; Key: Word): ansistring;

Var
  i: Word;
  Seed: int64;
Begin
  Result := S;
  Seed := Key;
  For i := 1 To Length(Result) Do
  Begin
    Result[i] := Ansichar(Byte(Result[i]) Xor (Seed Shr 8));
    Seed := (Byte(S[i]) + Seed) * Word(C1) + Word(C2);
  End;
End;

Function Encrypt(Const S: ansistring; Key: Word): ansistring;
Begin
  Result := PostProcess(InternalEncrypt(S, Key));
End;

function MemoryStreamToString(aStream: TStream): string;

var
  SS: TStringStream;
begin
  if aStream <> nil then
  begin
    SS := TStringStream.Create('');
    try
      SS.CopyFrom(aStream, 0); // No need to position at 0 nor provide size
      Result := SS.DataString;
    finally
      SS.Free;
    end;
  end
  else
  begin
    Result := '';
  end;
end;

function StreamToString(Stream: TStream): String;

var
  ms: TMemoryStream;
begin
  Result := '';
  ms := TMemoryStream.Create;
  try
    ms.LoadFromStream(Stream);
    SetString(Result, PChar(ms.memory), ms.Size);
  finally
    ms.Free;
  end;
end;

function chInt(ch: Char): ShortInt;
begin
  Result := Ord(ch) - Ord('0');
end;

function intCh(Int: ShortInt): Char;
begin
  Result := Chr(Int + Ord('0'));
end;

Function Modulo11(Numero: String): String;

Var
  i, j, k: Integer;
  Soma: Integer;
  Digito: Integer;
  CNPJ: boolean;
Begin
  Result := '';
  Try
    Soma := 0;
    k := 2;
    For i := Length(Numero) Downto 1 Do
    Begin
      Soma := Soma + (StrToInt(Numero[i]) * k);
      Inc(k);
      If k > 9 Then
        k := 2;
    End;
    Digito := 11 - Soma Mod 11;
    If Digito >= 10 Then
      Digito := 0;
    Result := Result + Chr(Digito + Ord('0'));
  Except
    Result := 'X';
  End;
End;

Function voltadata(dia: String): String;

Var
  d: String;
  di, me, an: String;
Begin
  d := dia;
  di := Copy(d, 9, 2);
  me := Copy(d, 6, 2);
  an := Copy(d, 1, 4);
  d := di + '/' + me + '/' + an;
  Result := d;
End;

Function ajustadata(dia: String): String;

Var
  d: String;
  di, me, an: String;
Begin
  d := dia;
  di := Copy(d, 1, 2);
  me := Copy(d, 4, 2);
  an := Copy(d, 7, 4);
  d := an + '-' + me + '-' + di;
  Result := d;
End;

Function BuscaTroca(Text, Busca, Troca: String): String;

Var
  n: Integer;
Begin

  For n := 1 To Length(Text) Do
  Begin
    If Copy(Text, n, 1) = Busca Then
    Begin
      Delete(Text, n, 1);
      Insert(Troca, Text, n);
    End;
  End;

  Result := Text;
End;

Function CalculaDigEAN13(Cod: String): String;
  Function Par(Cod: Integer): boolean;
  Begin
    Result := Cod Mod 2 = 0;
  End;

Var
  i, SomaPar, SomaImpar: Integer;
Begin
  SomaPar := 0;
  SomaImpar := 0;
  For i := 1 To 12 Do
    If Par(i) Then
      SomaPar := SomaPar + StrToInt(Cod[i])
    Else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  While i < (SomaPar + SomaImpar) Do
    Inc(i, 10);
  Result := inttostr(i - (SomaPar + SomaImpar));
End;

Function desprotegertexto(senha: String): String;

Var
  i: Integer;
  S: String[255];
  c: Array [0 .. 255] Of Byte Absolute S;

Begin
  S := senha;
  For i := 1 To Length(S) Do
    S[i] := Ansichar(23 Xor Ord(c[i]));
  Result := S;
End;

Function protegertexto(senha: String): String;

Var
  i: Integer;
  S: String[255];
  c: Array [0 .. 255] Of Byte Absolute S;
Begin
  S := senha;
  For i := 1 To Ord(S[0]) Do
    c[i] := 23 Xor c[i];
  Result := S;
End;

Function SoLetras(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas letras
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 0 To Length(lowercase(Texto)) Do
  Begin
    If (Texto[i] In ['a' .. 'z', 'A' .. 'Z']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  Result := S;
End;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To Length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  Result := S;
End;

end.
