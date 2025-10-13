unit Rotinas;

interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,uni,
  Dialogs,StdCtrls, Registry, ScktComp, winsock, Jpeg, Types, Psapi, tlhelp32,dateutils;

type
  TCS = class(TClientSocket);
  TProcessStatus = (pcsNotFound = -1, pcsNotResponding, pcsRunning);
//end;

function ProcessoExiste(ExeFileName: string): boolean;
function FindProcess(ProcessName: string): DWORD;
function ProcessResponding(AProcessName: string): TProcessStatus;
function LimpaNumero(StrNum: String): Extended; // Permite digitar apenas números
function Formatar(Num: Extended; Prec: Integer): String;
function PrinterOnLine: Boolean; //Verifica se uma impressora está on-line
function DataSist: Boolean; //informa se o formato da data é de 4 digitos
function DiasDoMes(pData: TDateTime): Integer; //retorna quantos dias existem em um determindado mês
function Domingo(pData: TDateTime): Boolean; // Verifica se o dia da semana é um domingo
function DiaSemana(pDia: TDateTime): String; // Retorna o dia da semana por extenso
function FormataCGCCPFCEP(const CGCCPFCEP: String): String; //Formata casas de CGC/CPF
function Extenso(valor: real): String; // Escreve um valor em Reais por extenso
function MesExtenso(Mes: Integer): String; //Escreve o nome do mes por extenso
function DataExtenso(Data: TDateTime): String; //Escreve uma determinada data por extenso
function DataValida(StrD: string): Boolean; // Rotina para testar se uma data é válida
function VerificaData(DtFin: TDateTime): Boolean;
function HoraValida(StrH: String): Boolean; // Rotina para testar se a hora é válida
function cpf(num: string): boolean; // Verifica a validade de um número de CPF
function IdadeAtual(Nasc : TDateTime): String;
function AbreviaNome(Nome: String): String;
function RemoveAcentos(Str:String): String; // Remove caracteres acentuados de uma string
function FormataSegToHs(Secs: LongInt): string;  // Converte segundos em horas
function BuscaNet(Maquina: String):Boolean;
function Conecta: Boolean;
function DataPorExtenso:String; // O nome já diz tudo
function Crypt(Action, Src: String): String;  // criptografa e descriptografa strings
function DifHora(Inicio,Fim : String):String; // Retorna a diferença entre duas horas
function AnoBisexto(vAno: Integer): Boolean; // Retorna se o ano é Bi-Sexto
function DiasPorMes(vAno, vMes: Integer): Integer; //Retorna quantos dias tem no mês
function HoraToMin(Hora: String): Integer; //Converte horas para minutos
function DifDias(DtInicial: TDateTime; DtFinal: TDateTime): Integer;
function DiasNoMes(AYear, AMonth: Integer): Integer; // Retorna o número de dias num determinado mês
function AjustaStr(str: String; tam: Integer): String;
function RetZero(ZEROS:string;QUANT:integer):String;
function SomaHoras(Hora, HoraSoma :String):String;
function Subtrai_Hora(wHora1, wHora2: String): String;
function CalcHExtra(vHDia,vHTrb: TDateTime): String;
function CalcHMenor(vHDia,vHTrb: TDateTime): String;
function Calc_HNormal(HE1,HS1,HE2,HS2: TDateTime): TDateTime;
function Calc_HNotur(RHN: String;HE1,HS1,HE2,HS2: TDateTime): TDateTime;
function GeraPercentual(Valor,Percent: Real):Real;
function SerialNum(FDrive: String): String;
function Calc_Hora(HE1, HS1, HE2, HS2: TDateTime): TDateTime;
function Numero_Serial_HD(stg_Unidade : String) :String;
function PasswordInputBox(const ACaption, APrompt:string): string;
function Asc(InString: string): byte;
function SysWinDir: string;
function WordsCount(s: string):integer; // Contador de letras
function HexToBin(HexStr: String): String;
function HexToInt(const HexStr: string): longint;
function MouseShowCursor(const Show: boolean): boolean;
function Busca_Comanda(TipoCom: String): Integer;
procedure Bmp2Jpg(const BmpFileName, JpgFileName: string);
procedure Jpg2Bmp(const BmpFileName, JpgFileName: string);
procedure EscondeBarra(Visivel: Boolean); // Esconde a barra de tarefas do windos
procedure SetDecimalSeparator(Ch: Char); // Altera o separador decimal do sistema
procedure Remove(lpRegKey:string);


implementation



function ProcessoExiste(ExeFileName: string): boolean;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := false;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName))
    or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
    begin
      Result := true;
      exit;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle,FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function FindProcess(ProcessName: string): DWORD;
var
  ContinueLoop                : BOOL;
  FSnapshotHandle             : THandle;
  FProcessEntry32             : TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while ContinueLoop and (not Boolean(Result)) do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ProcessName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ProcessName))) then
      Result := FProcessEntry32.th32ProcessID;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
end;

function ProcessResponding(AProcessName: string): TProcessStatus;
var
  H                           : DWORD;
  lngReturnValue              : longint;
  DWResult                    : DWORD;
begin
  Result := pcsNotFound;
  H := FindProcess(AProcessName);
  if H > 0 then
  begin
    lngReturnValue :=
      SendMessageTimeout(H, WM_NULL, 0, 0, SMTO_ABORTIFHUNG and SMTO_BLOCK,
      1000, DWResult);
    Result := TProcessStatus(Ord((lngReturnValue > 0)));
  end;
end;

Function LimpaNumero(StrNum: String): Extended;
Var
  NumValido: String;
  I: Integer;
Begin
  for I := 1 to Length(StrNum) do
    if StrNum[I] in ['0'..'9', ',', '-'] then
    NumValido := NumValido + StrNum[I];
  Result := StrToFloat(NumValido);
end;

Function Formatar(Num: Extended; Prec: Integer): String;
Var
  I: Integer;
  StrNum: String;
Begin
  StrNum := '#,##0';
  If Prec > 0 then
    StrNum := StrNum + '.';
  for I := 1 to Prec do
    StrNum := StrNum + '0';
  Result := FormatFloat(StrNum, Num);
end;

Function PrinterOnLine: Boolean;
Const
  PrnStInt : Byte = $17;
  StRq : Byte = $02;
  PrnNum : Word = 0; { 0 para LPT1, 1 para LPT2, etc. }
Var
  nResult : byte;
begin
Asm
  mov ah,StRq;
  mov dx,PrnNum;
  Int $17;
  mov nResult,ah;
end;
  PrinterOnLine := (nResult and $80) = $80;
end;

procedure EscondeBarra(Visivel: Boolean);
var
  WndHandle: THandle;
  WndClass: array[0..50] of Char;
begin
  StrCopy(@WndClass[0],'Shell_TrayWnd');
  WndHandle := FindWindow(@WndClass[0],nil);
  if Visivel = True then
  begin
    ShowWindow(WndHandle, SW_RESTORE);
  end
  else begin
    ShowWindow(WndHandle, SW_HIDE);
  end;
end;

Function DataSist: Boolean; //Rotina para saber o formato da data do sistema
begin
  Result := (Pos('yyyy',FormatSettings.ShortDateFormat)>0);
end;

function DiasDoMes(pData: TDateTime): Integer; // Rotina para saber quantos dias tem o mes
var
  y,m,d: Word;
begin
  DecodeDate(pData,y,m,d);
  Case m of
    2: if IsLeapYear(y) then
         Result := 29
       else
         Result := 28;
    1,3,5,7,8,10,12: Result := 31;
    4,6,9,11: Result := 30;
  end;
end;

function Domingo(pData: TDateTime): Boolean; // Rotina p/ verificar se o dia da semana é domingo
begin
  Result := False;
  if DayofWeek(pData) = 1 then
    Result := True;
end;

function DiaSemana(pDia: TDateTime): String;
begin
  Case DayOfWeek(pDia) of
    1: Result := 'Dom';
    2: Result := 'Seg';
    3: Result := 'Ter';
    4: Result := 'Qua';
    5: Result := 'Qui';
    6: Result := 'Sex';
    7: Result := 'Sab';
  end;
end;

function FormataCGCCPFCEP(const CGCCPFCEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CGCCPFCEP) do
  if CGCCPFCEP[I] in ['0'..'9'] then
  Result := Result + CGCCPFCEP[I];
  if Length(Result) = 8 then begin
    Result :=
    Copy(Result, 1, 2) + '.' +
    Copy(Result, 3, 3) + '.' +
    Copy(Result, 6, 3);
  end
  else if Length(Result) = 11 then begin
    Result :=
    Copy(Result, 1, 3) + '.' +
    Copy(Result, 4, 3) + '.' +
    Copy(Result, 7, 3) + '-' +
    Copy(Result, 10,2);
  end
  else if Length(Result) = 14 then begin
    Result :=
    Copy(Result, 1, 2) + '.' +
    Copy(Result, 3, 3) + '.' +
    Copy(Result, 6, 3) + '/' +
    Copy(Result, 9,4) + '-' +
    Copy(Result, 13,2);
  end
  else
    Result := '';
end;

function extenso (valor: real): string;
var
Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
if Expressao
then Result:=CasoVerdadeiro
else Result:=CasoFalso;
end;

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
  begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
 then Centena:='cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';
 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
  + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;
begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
  showmessage(msg);
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
  Result:=Result+' Mil Reais'
  else
  Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
  and (copy(texto,6,1)<>'0')) or (centavos=''))
  and (Centena<>'') then Result:=Result; //+' e ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
  Result:=Centavos
  else
  Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
  Result:=Result+' Centavo.'
 else
  Result:=Result+' Centavos.';
end;
end;

function MesExtenso(Mes: Integer): String;
begin
case Mes of
  1: Result := 'Janeiro';
  2: Result := 'Fevereiro';
  3: Result := 'Março';
  4: Result := 'Abril';
  5: Result := 'Maio';
  6: Result := 'Junho';
  7: Result := 'Julho';
  8: Result := 'Agosto';
  9: Result := 'Setembro';
  10: Result := 'Outubro';
  11: Result := 'Novembro';
  12: Result := 'Dezembro'
  else
    Result := '';
end;
end;

function DataExtenso(Data:TDateTime): String;
{Retorna uma data por extenso}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda feira';
  DiaDasemana [3]:= 'Terça feira';
  DiaDasemana [4]:= 'Quarta feira';
  DiaDasemana [5]:= 'Quinta feira';
  DiaDasemana [6]:= 'Sexta';
  DiaDasemana [7]:= 'Sábado';
{ Meses do ano }
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia] + ', ' +
  IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

function DataValida(StrD: string): Boolean;
begin
  Result := true;
  try
    StrToDate(StrD);
  except
  on EConvertError do
    Result:=False;
  end;
end;

function VerificaData(DtFin: TDateTime): Boolean;
begin
  if (DayofWeek(DtFin) = 7) or (DayofWeek(DtFin) = 1) then
    Result := true
  else
    Result := false;
end;

function HoraValida(StrH: String): Boolean;
begin
  Result := true;
  try
    StrToTime(StrH);
  except
  on EConvertError do
    Result:=False;
  end;
end;

function cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

function IdadeAtual(Nasc : TDateTime): String;
Var
  M_A,AuxIdade, Meses : String;
  MesesFloat : Real;
  IdadeInc, IdadeReal : Integer;
  Agora: TDateTime;
  Mes_A,Ano_A,Dia_A,Mes_B,Ano_B,Dia_B: Word;
begin
  Agora := Now;
  DecodeDate(Agora,Ano_A,Mes_A,Dia_A);
  DecodeDate(Nasc,Ano_B,Mes_B,Dia_B);
  if Ano_A = Ano_B then
  begin
    M_A := 'M'; // Atribui M se para mes;
    Result := IntToStr(Mes_A - Mes_B) + M_A;
    Exit;
  end
  else
    M_A := 'A'; // Atribui A se para ano;
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));
  if AuxIdade = '0' then
  begin
  Result := '';
  Exit;
  end;
  if Meses[1] = '-' then
  begin
  Meses := FloatToStr(StrToFloat(Meses) * -1);
  end;
  Delete(Meses, 1, 2);
  if Length(Meses) = 1 then
  begin
  Meses := Meses + '0';
  end;
  if (Meses <> '0') And (Meses <> '') then
  begin
  MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30.47)
  end
  else
  begin
  MesesFloat := 0;
  end;
  if MesesFloat <> 12 then
  begin
  IdadeReal := Trunc(StrToFloat(AuxIdade)); // + MesesFloat;
  end
  else
  begin
  IdadeInc := Trunc(StrToFloat(AuxIdade));
  Inc(IdadeInc);
  IdadeReal := IdadeInc;
  end;
  Result := IntToStr(IdadeReal) + M_A;
end;

function AbreviaNome(Nome: String): String;
var
  Nomes: array[1..20] of string;
  i, TotalNomes: Integer;
begin
  Nome := Trim(Nome);
  Result := Nome;
  {Insere um espaço para garantir que todas as letras sejam testadas}
  Nome := Nome + #32;
  {Pega a posição do primeiro espaço}
  i := Pos(#32, Nome);
  if i > 0 then
  begin
    TotalNomes := 0;
    {Separa todos os nomes}
    while i > 0 do
    begin
      Inc(TotalNomes);
      Nomes[TotalNomes] := Copy(Nome, 1, i - 1);
      Delete(Nome, 1, i);
      i := Pos(#32, Nome);
    end;
    if TotalNomes > 2 then
    begin
      {Abreviar a partir do segundo nome, exceto o último.}
      for i := 2 to TotalNomes - 1 do
      begin
        {Contém mais de 3 letras? (ignorar de, da, das, do, dos, etc.)}
        if Length(Nomes[i]) > 3 then
          {Pega apenas a primeira letra do nome e coloca um ponto após.}
          Nomes[i] := Nomes[i][1] + ' ';
      end;
      Result := '';
      for i := 1 to TotalNomes do
        Result := Result + Trim(Nomes[i]) + #32;
        Result := Trim(Result);
    end;
  end;
end;

function RemoveAcentos(Str:String): String;
Const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeiou'#199'uAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
  For x := 1 to Length(Str) do
  Begin
    if Pos(Str[x],ComAcento) <> 0 Then
    begin
      Str[x] := SemAcento[Pos(Str[x],ComAcento)];
    end;
  end;
Result := Str;
end;

procedure SetDecimalSeparator(Ch: Char);
var
  DefLCID: LCID;
  Buffer: LPSTR;
begin
  Application.UpdateFormatSettings := True;
  StrPCopy(Buffer, Ch);
  DefLCID := GetThreadLocale;
//  if SetLocaleInfo(DefLCID, LOCALE_SDecimal, Buffer) then
//    DecimalSeparator := StrPas(Buffer)[1];
  Application.UpdateFormatSettings := False;
end;

function FormataSegToHs(Secs: LongInt): string;
var
  Hrs, Min: Word;
begin
  Hrs := Secs div 3600;
  Secs := Secs mod 3600;
  Min := Secs div 60;
  Secs := Secs mod 60;
  Result := Format('%d:%d:%d', [Hrs, Min, Secs]);
end;

function BuscaNet(Maquina: String):Boolean;
var
  err : DWord;
  PServer, PSenha, PLetra : PChar;
Begin
PServer := PChar(Maquina + #0);
PLetra := '';
PSenha := '';

ERR := WNetAddConnection ( PServer , PSenha , PLetra );
Result := true;
CASE ERR of
ERROR_ACCESS_DENIED : Result := false; //ShowMessage ( 'Acesso negado.' );
ERROR_ALREADY_ASSIGNED : Result := false; //ShowMessage ( 'A letra do drive especificada já está conectada.' );
ERROR_BAD_DEV_TYPE : Result := false; //ShowMessage ( 'O tipo de dispositivo e o tipo de recurso não são compatíveis.' );
ERROR_BAD_DEVICE : Result := false; //ShowMessage ( 'Letra inválida.' );
ERROR_BAD_NET_NAME : Result := false; //ShowMessage ( 'Host do servidor não é válido ou não pode ser localizado.' );
ERROR_BAD_PROFILE : Result := false; //ShowMessage ( 'Formato incorreto de parâmetros.' );
ERROR_CANNOT_OPEN_PROFILE : Result := false; //ShowMessage ( 'Conexão permanente não disponível.' );
ERROR_DEVICE_ALREADY_REMEMBERED : Result := false; //ShowMessage ( 'Uma entrada para o dispositivo especificado já está no perfil do usuário.' );
ERROR_EXTENDED_ERROR : Result := false; //ShowMessage ( 'Erro de rede.' );
ERROR_INVALID_PASSWORD : Result := false; //ShowMessage ( 'Senha especificada inválida.' );
ERROR_NO_NET_OR_BAD_PATH : Result := false; //ShowMessage ( 'A operação não foi concluída porque a rede não foi inicializada ou caminho é inválido.' );
ERROR_NO_NETWORK : Result := false; //ShowMessage ( 'A rede não está presente.' );
else if Err > 0 then
begin
  Result := false;
  ShowMessage (IntToStr(Err));
end;
end;

end;

function Conecta: Boolean;
var
  Cliente: TCS;
begin
  Cliente.Active := true;
  Cliente.Address := '192.168.200.2';
  Cliente.Port := 81;
  Cliente.ClientType := ctNonBlocking;
  Cliente.Open;
  Result := true;
end;

Function DataPorExtenso:String;
const
  Meses  :Array [1..12] of String =
                ('Janeiro','Fevereiro','Março','Abril','Maio',
                'Junho','Julho','Agosto','Setembro','Outubro',
                 'Novembro','Dezembro');
  Semana :Array [1..7] of String =
                 ('Domingo','Segunda-Feira','Terça-Feira','Quarta-Feira',
                  'Quinta-Feira','Sexta-Feira','Sábado');
Var
  Dia,Mes,Ano,DiaSem:Word;
begin
  DecodeDate(Date,Ano,Mes,Dia);
  DiaSem := DayOfWeek(Date);
  Result := Semana[DiaSem] + ','+ IntToStr(Dia) +
                   ' de '+ Meses[Mes] + ' de ' + IntToStr(Ano);
end;

function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
    KeyPos : Integer;
    OffSet : Integer;
    Dest, Key : String;
    SrcPos : Integer;
    SrcAsc : Integer;
    TmpSrcAsc : Integer;
    Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key :=
  'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
    if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
    TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
    else TmpSrcAsc := TmpSrcAsc - OffSet;
    Dest := Dest + Chr(TmpSrcAsc);
    OffSet := SrcAsc;
    SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;

function DifHora(Inicio,Fim : String):String;
{Retorna a diferença entre duas horas}
var
  FIni,FFim : TDateTime;
begin
Fini := StrTotime(Inicio);
FFim := StrToTime(Fim);
If (Inicio > Fim) then
  begin
    Result := TimeToStr((StrTotime('23:59:59')+ StrToTime('00:00:01') -Fini)+FFim);
  end
else
  begin
  Result := TimeToStr(FFim-Fini);
  end;
end;

function DifDias(DtInicial:TDateTime; DtFinal:TDateTime): integer;
Var Data: TDateTime;
  dia, mes, ano: Word;
begin
  if DtFinal < DtInicial then
  begin
    Result := 0;
  end
  else
  begin
    Data := (DtFinal - DtInicial);
    DecodeDate(Data, ano, mes, dia);
    Result := StrToInt(FloatToStr(Data));
  end;
end;

function DiasNoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  if AMonth = 2 then begin
    if Ayear mod 4 = 0 then
      Inc(AMonth);
  end;
  Result := DaysInMonth[AMonth];
end;

function AjustaStr(str: String; tam: Integer): String;
begin
  while Length(str) < tam do
    str := str + ' ';
  if Length(str) > tam then
    str := Copy(str,1,tam);
  Result := str;
end;

function RetZero(ZEROS:string;QUANT:integer):String;
var
I,Tamanho:integer;
aux: string;
begin
  aux := ZEROS;
  Tamanho := length(ZEROS);
  ZEROS := '';
  for I := 1 to quant - tamanho do
    ZEROS := ZEROS + '0';
  aux := ZEROS + aux;
  RetZero := aux;
end;

function SomaHoras(Hora, HoraSoma :String):String;
var
  hh, mm :integer;
  vHora, vMinuto :integer;
begin
  if Length(Trim(Hora)) = 5 then
  begin
    hh:= StrToInt(Copy(Hora, 1, 2)) + StrToInt(Copy(HoraSoma, 1, 2));
    mm:= StrToInt(Copy(Hora, 4, 2)) + StrToInt(Copy(HoraSoma, 4, 2));
  end
  else if Length(Trim(Hora)) = 6 then
  begin
    hh:= StrToInt(Copy(Hora, 1, 3)) + StrToInt(Copy(HoraSoma, 1, 2));
    mm:= StrToInt(Copy(Hora, 5, 2)) + StrToInt(Copy(HoraSoma, 4, 2));
  end;

  vMinuto := mm mod 60;
  vHora := hh + (mm div 60);

  if length(IntToStr(vHora)) = 3 then
    Result:= FormatFloat('000:', vHora) + FormatFloat('00', vMinuto)
  else
    Result:= FormatFloat('00:', vHora) + FormatFloat('00', vMinuto);
end;

function Subtrai_Hora(wHora1, wHora2: String): String;
var
  whor1, whor2: Integer;
  wmin1, wmin2: Integer;
  wmin_ : Integer;
  whora, wminu: String;
begin
  whor1 := StrToInt(Trim(copy(wHora1,1,2)))*60;
  wmin1 := StrToInt(Trim(copy(wHora1,4,2)));
  whor2 := StrToInt(Trim(copy(wHora2,1,2)))*60;
  wmin2 := StrToInt(Trim(copy(wHora2,4,2)));

  wmin1 := whor1 + wmin1;
  wmin2 := whor2 + wmin2;

  {if wmin2 < wmin1 then//Parte alterada inicio
  begin
    wmin2 := wmin2+1440;
  end;//Parte alterada final}
  wmin_ := wmin2 - wmin1;

  whora := Format('%.2d',[wmin_ div 60]);
  wminu := Format('%.2d',[wmin_-(StrToInt(whora)*60)]);
  if copy(wminu,1,1) = '-' then
    Result := whora + ':' + copy(wminu,2,4)
  else
    Result := whora+':'+wminu;
end;

function CalcHExtra(vHDia,vHTrb: TDateTime): String;
begin
  if (vHDia < vHTrb) then
    Result := FormatDateTime('hh:mm',(vHTrb-vHDia))
  else
    Result := '00:00';
end;

function CalcHMenor(vHDia,vHTrb: TDateTime): String;
begin
  Result := FormatDateTime('hh:mm',(vHTrb-vHDia))
end;

function Calc_HNormal(HE1,HS1,HE2,HS2: TDateTime): TDateTime;
var
  Trn1,Trn2: TDateTime;
begin
  If (HE1 > HS1) then
  begin
    Trn1 := (StrToTime('23:59:59') + StrToTime('00:00:01') - HE1 + HS1);
  end
  else
  begin
    Trn1 := (HS1-HE1);
  end;
  If (HE2 > HS2) then
  begin
    Trn2 := (StrToTime('23:59:59') + StrToTime('00:00:01') - HE2 + HS2);
  end
  else
  begin
    Trn2 := (HS2-HE2);
  end;
    Result := StrToTime(FormatDateTime('hh:mm',(Trn1 + Trn2)));
end;

function Calc_HNotur(RHN: String;HE1,HS1,HE2,HS2: TDateTime): TDateTime;
var
  vHN: TDateTime;
begin
  if (he1 >= StrToTime('22:00')) then begin
    if (he1 > hs1) and (hs1 <= StrToTime('05:00'))then
      vHN := vHN + ((StrToTime('23:59') - he1) + hs1 + StrToTime('00:01'))
    else if (he1 > hs1) and (hs1 > StrToTime('05:00')) then
      vHN := vHN + (StrToTime('23:59') - he1)+ StrToTime('05:01');
    if (he1 < hs1) then
      vHN := (StrTotime('23:59:59') + StrToTime('00:00:01') -he1)+hs1;
  end;
  if (he1 >= StrToTime('00:00')) and (he1 <= StrToTime('05:00')) and (hs1 <= StrToTime('05:00')) then begin
    if (he1 < hs1) and (hs1 <= StrToTime('05:00'))then
      vHN := vHN + (hs1 - he1);
  end;
  if (he1 >= StrToTime('00:00')) and (he1 <= StrToTime('05:00')) and (hs1 > StrToTime('05:00')) then begin
    if (hs1 > StrToTime('05:00')) then
      vHN := vHN + (StrToTime('05:00')-he1);
  end;
  if (he1 < StrToTime('22:00')) then begin
    if (hs1 > StrToTime('05:00')) and ((he1 - hs1) >= StrToTime('07:00'))then
      vHN := vHN + StrToTime('07:00')
    else if (he1 > StrToTime('00:00')) and (hs1 <= StrToTime('05:00')) and (hs1 < he1) then
      vHN := vHN + (StrToTime('2:00') + (StrToTime('00:00') + hs1))
    else if (hs1 < StrToTime('23:59:59')) and (hs1 > StrToTime('22:00:00')) then
      vHN := vHN + (hs1 - StrToTime('22:00'));
  end;

  if (he2 >= StrToTime('22:00')) then begin
    if (he2 > hs2) and (hs2 <= StrToTime('05:00'))then
      vHN := vHN + ((StrToTime('23:59') - he2) + hs2 + StrToTime('00:01'))
    else if (he2 > hs2) and (hs2 > StrToTime('05:00')) then
      vHN := vHN + (StrToTime('23:59') - he2)+ StrToTime('05:01');
    if (he2 < hs2) then
      vHN := (StrTotime('23:59:59') + StrToTime('00:00:01') - he2)+ hs2;
  end;
  if (he2 >= StrToTime('00:00')) and (he2 <= StrToTime('05:00')) and (hs2 <= StrToTime('05:00')) then begin
    if (he2 < hs2) and (hs2 <= StrToTime('05:00'))then
      vHN := vHN + (hs2 - he2);
  end;
  if (he2 >= StrToTime('00:00')) and (he2 <= StrToTime('05:00')) and (hs2 > StrToTime('05:00')) then begin
    if (hs2 > StrToTime('05:00')) then
      vHN := vHN + (StrToTime('05:00')- he2);
  end;
  if (he2 < StrToTime('22:00')) then begin
    if (hs2 > StrToTime('05:00')) and ((he2 - hs2) >= StrToTime('07:00'))then
      vHN := vHN + StrToTime('07:00')
    else if (he2 > StrToTime('00:00')) and (hs2 <= StrToTime('05:00')) and (hs2 < he2) then
      vHN := vHN + (StrToTime('2:00') + (StrToTime('00:00') + hs2))
    else if (hs2 < StrToTime('23:59:59')) and (hs2 > StrToTime('22:00:00')) then
      vHN := vHN + (hs2 - StrToTime('22:00'));
   if RHN = 'S' then
     Result := (vHN * 1.143)
   else
     Result := vHN;
  end;
end;

function Gerapercentual(valor:real;Percent:Real):real;
begin
  percent := percent / 100;
  try
    valor := valor * Percent;
  finally
    result := valor;
  end;
end;

function AnoBiSexto(vAno: Integer): Boolean;
begin
  Result := (vAno mod 4 = 0) and ((vAno mod 100 <> 0) or (vAno mod 400 = 0));
end;

function HoraToMin(Hora: String): Integer;
begin
  Result := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
end;

function DiasPorMes(vAno, vMes: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[vMes];
  if (vMes = 2) and AnoBiSexto(vAno) then
    Inc(Result);
end;

procedure Remove(lpRegKey:string);
var
  Reg: TRegistry;
begin
  try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run',False);
    if Reg.ValueExists(Trim(lpRegKey)) then
      Reg.DeleteValue(Trim(lpRegKey));
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

procedure Bmp2Jpg(const BmpFileName, JpgFileName: string);
var
  JPG : TJPEGImage;
  BMP : TBitmap;
begin
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  try
    Bmp.LoadFromFile(BmpFileName);
    Jpg.Assign(Bmp);
    Jpg.SaveToFile(JpgFileName);
  finally
    Jpg.Free;
    Bmp.Free;
  end;
end;

procedure Jpg2Bmp(const BmpFileName, JpgFileName: string);
var
  Bmp: TBitmap;
  Jpg: TJPEGImage;
begin
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  try
    Jpg.LoadFromFile(JpgFileName);
    Bmp.Assign(Jpg);
    Bmp.SaveToFile(BmpFileName);
  finally
    Jpg.Free;
    Bmp.Free;
  end;
end;

Function SerialNum(FDrive:String) :String;
Var
  Serial:DWord;
  DirLen,Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
  Try GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
  Result := IntToHex(Serial,8);
  Except Result :='';
  end;
end;

function Calc_Hora(HE1, HS1, HE2, HS2: TDateTime): TDateTime;
var
  Trn1,Trn2: TDateTime;
begin
  If (HE1 > HS1) then
  begin
    Trn1 := (StrToTime('23:59:59') + StrToTime('00:00:01') - HE1 + HS1);
  end
  else
  begin
    Trn1 := (HS1-HE1);
  end;
  If (HE2 > HS2) then
  begin
    Trn2 := (StrToTime('23:59:59') + StrToTime('00:00:01') - HE2 + HS2);
  end
  else
  begin
    Trn2 := (HS2-HE2);
  end;
    Result := (Trn1 + Trn2);
end;

Function Numero_Serial_HD(stg_Unidade : String) :String;
Var
  chr_lpVolumeNameBuffer      : Array[00..11] of Char;
  dw_lpVolumeSerialNumber     : DWord;
  dw_lpMaximumComponentLength : DWord;
  dw_lpFileSystemFlags        : DWord;
Begin
  Try
    GetVolumeInformation(PChar(stg_Unidade + ':\'),
                               chr_lpVolumeNameBuffer,
                               12,
                               @dw_lpVolumeSerialNumber,
                               dw_lpMaximumComponentLength,
                               dw_lpFileSystemFlags,
                               nil,
                               0);
    // Retornará um número hexa com 8 dígitos
    Result := IntToHex(dw_lpVolumeSerialNumber,8);
  Except
    // Retorna Vazio
    Result := '';
  end;
end;

function PasswordInputBox(const ACaption, APrompt:string): string;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  Value: string;
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  Result := '';
  Form := TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
    DialogUnits.X := DialogUnits.X div 52;
    BorderStyle := bsDialog;
    Caption := ACaption;
    ClientWidth := MulDiv(180, DialogUnits.X, 4);
    ClientHeight := MulDiv(63, DialogUnits.Y, 8);
    Position := poScreenCenter;
    Prompt := TLabel.Create(Form);
    with Prompt do
    begin
      Parent := Form;
      AutoSize := True;
      Left := MulDiv(8, DialogUnits.X, 4);
      Top := MulDiv(8, DialogUnits.Y, 8);
      Caption := APrompt;
    end;
    Edit := TEdit.Create(Form);
    with Edit do
    begin
      Parent := Form;
      Left := Prompt.Left;
      Top := MulDiv(19, DialogUnits.Y, 8);
      Width := MulDiv(164, DialogUnits.X, 4);
      MaxLength := 255;
      PasswordChar := '*';
      SelectAll;
    end;
    ButtonTop := MulDiv(41, DialogUnits.Y, 8);
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'OK';
      ModalResult := mrOk;
      Default := True;
      SetBounds(MulDiv(38, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Cancela';
      ModalResult := mrCancel;
      Cancel := True;
      SetBounds(MulDiv(92, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    if ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := Value;
    end;
  finally
    Form.Free;
    Form:=nil;
  end;
end;

function Asc(InString: string): byte;
begin
 if InString = '' then
  ASC:=0
 else
  ASC:=Ord(InString[1]);
end;

function SysWinDir: string;
begin
  SetLength(Result, MAX_PATH);
  Windows.GetSystemDirectory(PChar(Result), MAX_PATH);
  Result := string(PChar(Result));
end;

function WordsCount(s: string):integer;
var
  ps: PChar;
  nSpaces,n,o : integer;
begin
  //total de palavras
  n := 0;
  //total de letras
  o := 0;
  s := s + #0;
  ps := @s[ 1 ];
  while( #0 <> ps^ ) do
  begin
    while((' ' = ps^)and(#0 <> ps^)) do
    begin
      inc( ps );
      //conta total de letras
      inc(o);
    end;
    nSpaces := 0;
      while((' ' <> ps^)and(#0 <> ps^))do
      begin
        inc(nSpaces);
        inc(ps);
        //conta total de letras
        inc(o);
      end;
      if ( nSpaces > 0 ) then
      begin
        inc( n );
      end;
  end;
  //recebe o total de letras contadas incluindo os espacos
  Result := o;
end;

function HexToBin(HexStr: String): String;
const
  BinArray: array[0..15, 0..1] of string =
    (('0000', '0'), ('0001', '1'), ('0010', '2'), ('0011', '3'),
     ('0100', '4'), ('0101', '5'), ('0110', '6'), ('0111', '7'),
     ('1000', '8'), ('1001', '9'), ('1010', 'A'), ('1011', 'B'),
     ('1100', 'C'), ('1101', 'D'), ('1110', 'E'), ('1111', 'F'));
  HexAlpha: set of char = ['0'..'9', 'A'..'F'];
var
  i, j: Integer;
begin
  Result := '';
  HexStr := AnsiUpperCase(HexStr);
  for i := 1 to Length(HexStr) do
    if HexStr[i] in HexAlpha then
    begin
      for j := 1 to 16 do
        if HexStr[i]=BinArray[j-1, 1] then
          Result := Result + BinArray[j-1, 0];
    end
    else begin
      Result := '';
      //ShowMessage('Este número não é hexadecimal');
      Break;
    end;
  if Result <> '' then
   while (Result[1] = '0' ) and (Length(Result) > 1) do
     Delete(result, 1, 1);
end;

function HexToInt(const HexStr: string): longint;
var
  iNdx: integer;
  cTmp: Char;
begin
Result := 0;
for iNdx := 1 to Length(HexStr) do
  begin
    cTmp := HexStr[iNdx];
    case cTmp of
      '0'..'9': Result := 16 * Result + (Ord(cTmp) - $30);
      'A'..'F': Result := 16 * Result + (Ord(cTmp) - $37);
      'a'..'f': Result := 16 * Result + (Ord(cTmp) - $57);
    else
      raise EConvertError.Create('Erro de comunicação');
    end;
  end;
end;

function MouseShowCursor(const Show: boolean): boolean;
var
  I: integer;
begin
  I := ShowCursor(LongBool(true));
  if Show then begin
  Result := I >= 0;
  while I < 0 do begin
  Result := ShowCursor(LongBool(true)) >= 0;
  Inc(I);
  end;
  end else begin
  Result := I < 0;
  while I >= 0 do begin
  Result := ShowCursor(LongBool(false)) < 0;
  Dec(I);
  end;
  end;
end;

function Busca_Comanda(TipoCom: String): Integer;

begin
end;


end.
