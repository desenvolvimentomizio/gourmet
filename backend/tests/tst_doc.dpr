program tst_doc;
{$APPTYPE CONSOLE}
uses
  System.SysUtils,
  Gourmet.Documento in '..\src\Shared\Gourmet.Documento.pas';

procedure Chk(const Name: string; Cond: Boolean);
begin
  if Cond then
    Writeln('OK   ', Name)
  else
  begin
    Writeln('FAIL ', Name);
    ExitCode := 1;
  end;
end;

begin
  Chk('CNPJ alfanum 12ABC34501DE35', TDocumento.IsCNPJ('12ABC34501DE35'));
  Chk('CNPJ alfanum mascarado',      TDocumento.IsCNPJ('12.ABC.345/01DE-35'));
  Chk('CNPJ alfanum DV errado',  not TDocumento.IsCNPJ('12ABC34501DE34'));
  Chk('CNPJ numerico valido',        TDocumento.IsCNPJ('11222333000181'));
  Chk('CNPJ numerico DV errado', not TDocumento.IsCNPJ('11222333000182'));
  Chk('CNPJ placeholder',        not TDocumento.IsCNPJ('00000000000000'));
  Chk('CPF valido',                  TDocumento.IsCPF('52998224725'));
  Chk('CPF invalido (repetido)', not TDocumento.IsCPF('11111111111'));
  Chk('Chave CNPJ canonica',
      TDocumento.ChaveCanonica('12.ABC.345/01DE-35') = 'CNPJ:12ABC34501DE35');
  Chk('Chave vazia p/ doc invalido', TDocumento.ChaveCanonica('abc') = '');
  Writeln('exitcode=', ExitCode);
end.
