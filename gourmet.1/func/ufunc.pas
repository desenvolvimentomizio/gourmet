unit ufunc;

interface

uses
  ACBrUtil, ACBrExtenso, Vcl.Forms;

implementation

Function ValorExtenso(Valor: Double): String;
var
  ACBrExtenso: TACBrExtenso;
begin
  ACBrExtenso := TACBrExtenso.Create(Application);
  try
    ACBrExtenso.Valor := Valor;
    Result := ACBrExtenso.Texto;
  finally
    ACBrExtenso.Free;
  end;
end;
exports ValorExtenso;

Function OnlyNumber(Const AValue: AnsiString): String;
Var
  i: Integer;
  LenValue: Integer;
Begin
  Result := '';
  LenValue := Length(AValue);
  For i := 1 To LenValue Do
  Begin
    If CharIsNum(AValue[i]) Then
      Result := Result + String(AValue[i]);
  End;
End;
exports OnlyNumber;

Function OnlyText(Const AValue: AnsiString): String;
Var
  i: Integer;
  LenValue: Integer;
Begin
  Result := '';
  LenValue := Length(AValue);
  For i := 1 To LenValue Do
  Begin
    If CharIsAlpha(AValue[i]) Then
      Result := Result + String(AValue[i]);
  End;
End;
exports OnlyText;

end.
