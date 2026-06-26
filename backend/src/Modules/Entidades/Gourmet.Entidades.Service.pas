unit Gourmet.Entidades.Service;

{ Servico de Entidades - nucleo da identidade compartilhada (ADR-001).

  ResolverOuCriar implementa o fluxo de reuso:
    doc -> chave_unica -> busca no registro global
      existe  -> vincula a empresa + espelha na etd local (sem redigitar)
      ausente -> cria global (CODIGO_UNICO se sem doc) + vincula + espelha

  A persistencia fica no repositorio; aqui mora a REGRA. }

interface

uses
  Gourmet.Entidades.Repository, Gourmet.Entidades.DTO;

type
  TEntidadesService = class
  public
    /// Garante a identidade global da entidade e o vinculo com o tenant atual.
    /// Retorna a entidade resolvida (com id_global = etdcodigo canonico).
    class function ResolverOuCriar(const ADados: TEntidadeInput): TEntidadeResolvida;
  end;

implementation

uses
  System.SysUtils,
  Gourmet.Documento, Gourmet.Middleware.Tenant, Gourmet.Shared.Errors;

class function TEntidadesService.ResolverOuCriar(
  const ADados: TEntidadeInput): TEntidadeResolvida;
var
  LChave: string;
  LGlobal: TEntidadeGlobal;
  LSchema: string;
begin
  if ADados.Nome.Trim = '' then
    raise EApiError.Create(422, 'Nome da entidade e obrigatorio');

  LSchema := CurrentSchema;
  LChave := TDocumento.ChaveCanonica(ADados.Doc);

  if LChave <> '' then
  begin
    // Tem doc valido: tenta reaproveitar a identidade global.
    if TEntidadesRepository.TryGetGlobalPorChave(LChave, LGlobal) then
    begin
      // Atualiza dados de identidade se vierem mais completos (regra simples).
      if (LGlobal.Nome = '') and (ADados.Nome <> '') then
        TEntidadesRepository.AtualizarIdentidade(LGlobal.IdGlobal, ADados);
    end
    else
      LGlobal := TEntidadesRepository.CriarGlobalComChave(LChave, ADados);
  end
  else
  begin
    // Sem doc valido (consumidor final): sempre nova identidade CODIGO_UNICO.
    LGlobal := TEntidadesRepository.CriarGlobalCodigoUnico(ADados);
  end;

  // Vincula a entidade ao tenant atual e espelha na etd local (idempotente:
  // se ja vinculada, apenas retorna o etdcodigo_local existente).
  Result := TEntidadesRepository.VincularEEspelhar(LSchema, LGlobal, ADados);
end;

end.
