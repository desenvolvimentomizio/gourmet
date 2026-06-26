unit Gourmet.Clientes.Controller;

{ Controller de Clientes - mapeia HTTP -> servico. Sem regra de negocio aqui. }

interface

type
  TClientesController = class
  public
    class procedure RegisterRoutes;
  end;

implementation

uses
  System.SysUtils, System.JSON, Horse, Horse.GBSwagger,
  Gourmet.Clientes.Service, Gourmet.Swagger.Models;

class procedure TClientesController.RegisterRoutes;
begin
  // --- Documentacao OpenAPI (mantida junto da rota) ---
  Swagger
    .Path('clientes')
      .Tag('Clientes')
      .GET('Listar', 'Lista clientes do tenant (paginado, com busca). Requer Bearer.')
        .AddParamQuery('search', 'filtro por nome, documento ou telefone').&End
        .AddParamQuery('page', 'pagina (default 1)').&End
        .AddParamQuery('pageSize', 'itens por pagina (default 50, max 200)').&End
        .AddResponse(200, 'OK').Schema(TClientesPageModel).&End
        .AddResponse(401, 'Nao autenticado').Schema(TApiErrorModel).&End
      .&End
    .&End;

  // GET /api/v1/clientes?search=&page=1&pageSize=50
  THorse.Get('/api/v1/clientes',
    procedure(Req: THorseRequest; Res: THorseResponse)
    var
      LSearch: string;
      LPage, LPageSize: Integer;
    begin
      LSearch := Req.Query.Field('search').AsString;
      LPage := StrToIntDef(Req.Query.Field('page').AsString, 1);
      LPageSize := StrToIntDef(Req.Query.Field('pageSize').AsString, 50);
      Res.Send<TJSONObject>(TClientesService.List(LSearch, LPage, LPageSize));
    end);
end;

end.
