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
  System.SysUtils, System.JSON, Horse,
  Gourmet.Clientes.Service;

class procedure TClientesController.RegisterRoutes;
begin
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
