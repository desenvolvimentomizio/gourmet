unit GourmetServer.Service.Funcoes;

interface

uses ACBrValidador;

Function GeraProdutoBarra( vProCodigo: Integer; vUniCodigo: Integer): String;
Function SoNumeros(Const Texto: String): String;
Function datahorasqltotext(vdatahorasql: String): String;
Function datahoratexttosql(vdatahorasql: String): String;

implementation

uses
  System.SysUtils;



Function GeraProdutoBarra( vProCodigo: Integer; vUniCodigo: Integer): String;
Var
  ACBrValidadorGtin: TACBrValidador;
  vBarra: string;
  vlMascaraBarra:String;
Begin
  vlMascaraBarra:= '00000000000000';

  ACBrValidadorGtin := TACBrValidador.Create(nil);
  try
    vBarra := FormatFloat(vlMascaraBarra, StrToFloat(IntToStr(vProCodigo) + FormatFloat('000', vUniCodigo) + '0'));
    ACBrValidadorGtin.TipoDocto := docGTIN;
    ACBrValidadorGtin.Documento := vBarra;
    ACBrValidadorGtin.Documento := ACBrValidadorGtin.Formatar;

    if ACBrValidadorGtin.Validar then
      vBarra := ACBrValidadorGtin.Documento
    else
      vBarra := Copy(vBarra, 1, 13) + ACBrValidadorGtin.DigitoCalculado;

    Result := vBarra;
  finally
    ACBrValidadorGtin.Free;
  end;
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
  For i := 1 To length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  Result := S;
End;

Function datahoratexttosql(vdatahorasql: String): String;
Var
  d: String;
  di, me, an, hr: String;
Begin
  d := vdatahorasql;
  an := Copy(d, 7, 4);
  me := Copy(d, 4, 2);
  di := Copy(d, 1, 2);
  hr := Copy(d, 12, 8);

  d := an + '-' + me + '-' + di + ' ' + hr;
  result := d;
End;

Function datahorasqltotext(vdatahorasql: String): String;
Var
  d: String;
  di, me, an, hr: String;
Begin
  d := vdatahorasql;
  an := Copy(d, 1, 4);
  me := Copy(d, 6, 2);
  di := Copy(d, 9, 2);
  hr := Copy(d, 12, 8);
  d := di + '/' + me + '/' + an + ' ' + hr;

  result := d;
End;


end.
