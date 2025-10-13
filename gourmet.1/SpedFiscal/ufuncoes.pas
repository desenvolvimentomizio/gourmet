Unit ufuncoes;

Interface

Uses SysUtils, Graphics, Windows, uni, dialogs, db;

Function CalculaDigEAN13(Cod: String): String;
Function BuscaTroca(Text, Busca, Troca: String): String;
Procedure leraquivo(narq: String; tabe: tuniquery; campos: integer);
Function ajustadata(dia: String): String;
Function Modulo11(Numero: String): String;
Function desprotegertexto(senha: String): String;
Function protegertexto(senha: String): String;

Implementation

Function protegertexto(senha: String): String;
Var
  i: integer;
  s: String[255];
  c: Array[0..255] Of Byte Absolute s;

Begin
  s := senha;
  For i := 1 To ord(s[0]) Do
    c[i] := 23 Xor c[i];
  result := s;
End;


Function desprotegertexto(senha: String): String;
Var
  i: integer;
  s: String[255];
  c: Array[0..255] Of Byte Absolute s;

Begin
  s := senha;
  For i := 1 To Length(s) Do
    s[i] := ansichar(23 Xor ord(c[i]));
  result := s;
End;



Function Modulo11(Numero: String): String;
Var
  i, j, k: Integer;
  Soma: Integer;
  Digito: Integer;
  CNPJ: Boolean;
Begin
  Result := '';
  Try
    Soma := 0; k := 2;
    For i := Length(Numero) Downto 1 Do
    Begin
      Soma := Soma + (StrToInt(Numero[i]) * k);
      inc(k);
      If k > 9 Then k := 2;
    End;
    Digito := 11 - Soma Mod 11;
    If Digito >= 10 Then
      Digito := 0;
    Result := Result + Chr(Digito + Ord('0'));
  Except
    Result := 'X';
  End;
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
  result := d;
End;


Procedure leraquivo(narq: String; tabe: tuniquery; campos: integer);
Var
  t: textFile;
  i, x: Integer;
  s, c, v: String;
  f: boolean;
Begin
  If Not fileexists(narq) Then
  Begin
    showmessage('Arquivo não existe!');
    exit;
  End;

  AssignFile(t, narq);
  reset(t);

  If tabe.Active Then
  Begin
    tabe.Open;
  End;

  While Not eof(t) Do
  Begin
    readln(t, s);
    i := 0;
    f := true;
    tabe.insert;
    While f Do
    Begin
      c := tabe.fields[i].FieldName;
      If Pos(';', s) = 0 Then f := false
      Else
      Begin
        v := copy(s, 1, pos(';', s) - 1);
        s := copy(s, pos(';', s) + 1, length(s));
        tabe.fieldbyname(c).AsString := v;
        i := i + 1;
      End;

      If Pos(';', s) = 0 Then
      Begin
       // i := i + 1;
        c := tabe.fields[i].FieldName;
        v := copy(s, 1, length(s));

        If tabe.fieldbyname(c).DataType = ftFloat Then
        Begin
          tabe.fieldbyname(c).AsString :=BuscaTroca(v,'.','');
        End
        Else
        Begin
          tabe.fieldbyname(c).AsString := v;
        End;
        break;
      End;


    End;
    tabe.Post;
  End;
  closefile(t);


End;



Function BuscaTroca(Text, Busca, Troca: String): String;
Var
  n: Integer;
Begin

  For n := 1 To Length(Text) Do
  Begin
    If (Copy(Text, n, 1) = Busca) Then
    Begin
      Delete(Text, n, 1);
      Insert(Troca, Text, n);
    End;
  End;

  Result := Text;
End;

Function CalculaDigEAN13(Cod: String): String;
  Function Par(Cod: Integer): Boolean;
  Begin
    Result := Cod Mod 2 = 0;
  End;

Var
  I, SomaPar, SomaImpar: Integer;
Begin
  SomaPar := 0;
  SomaImpar := 0;
  For I := 1 To 12 Do
    If (Par(I)) Then
      SomaPar := SomaPar + strtoint(Cod[I])
    Else
      SomaImpar := SomaImpar + strtoint(Cod[I]);
  SomaPar := SomaPar * 3;
  I := 0;
  While I < (SomaPar + SomaImpar) Do
    Inc(I, 10);
  Result := inttostr(I - (SomaPar + SomaImpar));
End;




End.

