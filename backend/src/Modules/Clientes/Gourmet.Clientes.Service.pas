unit Gourmet.Clientes.Service;

{ Servico de Clientes - regras de negocio do modulo (porta MCLI/fracli).

  Na Fase A so ha leitura/paginacao. Aqui e onde, nas proximas fases, entram
  as regras portadas do modulo legado (validacao de documento, situacao,
  bloqueios, etc.), mantendo a UI/HTTP fora da regra. }

interface

uses
  System.JSON, Gourmet.Clientes.Repository;

type
  TClientesService = class
  public
    class function List(const ASearch: string; APage, APageSize: Integer): TJSONObject;
  end;

implementation

uses
  System.SysUtils, System.Math;

class function TClientesService.List(const ASearch: string; APage, APageSize: Integer): TJSONObject;
var
  LQuery: TClientesQuery;
begin
  // Saneamento de parametros (regra de apresentacao/seguranca).
  LQuery.Search := ASearch.Trim;
  LQuery.Page := Max(1, APage);
  LQuery.PageSize := EnsureRange(APageSize, 1, 200); // teto p/ proteger o banco
  Result := TClientesRepository.List(LQuery);
end;

end.
