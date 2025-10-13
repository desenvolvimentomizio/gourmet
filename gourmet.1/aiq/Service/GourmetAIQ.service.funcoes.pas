unit GourmetAIQ.Service.Funcoes;

interface

Function datahorasqltotext(vdatahorasql: String): String;
Function datahoratexttosql(vdatahorasql: String): String;

Function truefalsetonumero(vTrueFalse: String): Integer;

implementation

uses
  System.SysUtils;

Function truefalsetonumero(vTrueFalse: String): Integer;
begin
  if uppercase(vTrueFalse) = 'TRUE' then
    result := 1
  else
    result := 0;
end;

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
