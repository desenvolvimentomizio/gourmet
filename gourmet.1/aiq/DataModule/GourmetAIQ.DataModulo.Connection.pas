unit GourmetAIQ.DataModulo.Connection;

interface

uses
  Inifiles;

function CarregaIni(vArquivo: string): string;

implementation

function CarregaIni(vArquivo: string): string;
Var
  arquini: TIniFile;
  vlServidorGourmet: string;
  vlPortaGourmet: string;

Begin
  arquini := TIniFile.Create(vArquivo);
  With arquini Do
  Begin
    vlServidorGourmet := ReadString('Gourmet', 'servidor', '127.0.0.1');
    vlPortaGourmet := ReadString('Gourmet', 'porta', '8091');
  End;
  arquini.Free;

  result := vlServidorGourmet + ':' + vlPortaGourmet;

End;

end.
