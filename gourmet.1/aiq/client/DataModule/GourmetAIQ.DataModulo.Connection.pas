unit GourmetAIQ.DataModulo.Connection;

// Mantida para retro-compatibilidade dos DataModules existentes.
// Antes lia o ini diretamente; agora delega para Service.Config (que cacheia
// e suporta scheme http/https).

interface

function CarregaIni(vArquivo: string): string;

/// Nova API recomendada: devolve a base URL completa ja com scheme.
/// Ex.: 'http://127.0.0.1:8091' ou 'https://servidor.exemplo:8091'.
function GourmetBaseURL: string;

implementation

uses
  GourmetAIQ.Service.Config;

function CarregaIni(vArquivo: string): string;
var
  vCfg: TGourmetServerConfig;
begin
  // O parametro vArquivo eh ignorado: o Config global usa o caminho
  // padrao (gourmeterp.ini ao lado do exe), que eh o que todos os
  // DataModules ja usavam. Mantido na assinatura para nao quebrar callers.
  vCfg := Config.Gourmet;
  Result := vCfg.Host + ':' + vCfg.Port;
end;

function GourmetBaseURL: string;
begin
  Result := Config.Gourmet.BaseURL;
end;

end.
