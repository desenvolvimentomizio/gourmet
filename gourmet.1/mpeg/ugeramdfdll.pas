unit ugeramdfdll;

interface

function Bematech_FI_GeraRegistrosSpedCompleto( cArquivoMFD: ansistring; cArquivoTXT: ansistring; cDataInicial: ansistring; cDataFinal: ansistring; cPerfil: ansistring; cCFOP: ansistring; cCODOBSFiscal: ansistring; cAliqPIS: ansistring; cAliqCOFINS: ansistring; cEmpresa: ansistring; cCodMunicipio: ansistring ): Integer;  StdCall; External 'BEMAFI32.DLL';

implementation



procedure gerarmdf;
var
cArquivoMFD, cArquivoTXT, cDataInicial, cDataFinal, cPerfil, cCFOP, cCODOBSFiscal, cAliqPIS, cAliqCOFINS, cEmpresa, cCodMunicipio : ansistring;
iRetorno:integer;
begin

cArquivoMFD   := 'C:\download.mfd';
cArquivoTXT   := 'C:\resultado.txt';
cDataInicial  := '01/12/2012';
cDataFinal    := '31/12/2012';
cPerfil       := 'A';
cCFOP         := '5929';
cCODOBSFiscal := ' ';
cAliqPIS      := '00,00';
cAliqCOFINS   := '00,00';
cEmpresa      := 'Empresa Tal';
cCodMunicipio := '1234567';

iRetorno := Bematech_FI_GeraRegistrosSpedCompleto( pchar( cArquivoMFD ), pchar( cArquivoTXT ), pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ), pchar( cAliqPIS ), pchar( cAliqCOFINS ), pchar( cEmpresa ), pchar( cCodMunicipio ) );

end;
end.
