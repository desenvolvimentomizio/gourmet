unit Gourmet.Entidades.Controller;

{ Rotas de Entidades (protegidas). POST cria/reaproveita a identidade global
  e espelha no tenant atual (ver ADR-001). }

interface

type
  TEntidadesController = class
  public
    class procedure RegisterRoutes;
  end;

implementation

uses
  System.SysUtils, System.JSON, Horse, Horse.GBSwagger,
  Gourmet.Entidades.Service, Gourmet.Entidades.DTO, Gourmet.Shared.Errors,
  Gourmet.Swagger.Models;

function OptStr(ABody: TJSONObject; const AKey: string): string;
var
  LValue: TJSONValue;
begin
  LValue := ABody.GetValue(AKey);
  if Assigned(LValue) then
    Result := LValue.Value
  else
    Result := '';
end;

class procedure TEntidadesController.RegisterRoutes;
begin
  // --- Documentacao OpenAPI (mantida junto da rota) ---
  Swagger
    .Path('entidades')
      .Tag('Entidades')
      .POST('Criar/Reaproveitar',
            'Resolve a identidade global por documento (CNPJ alfanumerico/CPF ou ' +
            'CODIGO_UNICO) e espelha no tenant. Requer Bearer.')
        .AddParamBody('entidade', 'dados da entidade')
          .Required(True).Schema(TEntidadeRequest).&End
        .AddResponse(201, 'Criada ou reaproveitada').Schema(TEntidadeResolvidaModel).&End
        .AddResponse(401, 'Nao autenticado').Schema(TApiErrorModel).&End
        .AddResponse(422, 'Dados invalidos').Schema(TApiErrorModel).&End
      .&End
    .&End;

  // POST /api/v1/entidades
  // { "doc":"12ABC34501DE35", "nome":"Fulano", "tipoPessoa":"J",
  //   "ie":"", "papeis":"1,2" }
  THorse.Post('/api/v1/entidades',
    procedure(Req: THorseRequest; Res: THorseResponse)
    var
      LBody: TJSONObject;
      LIn: TEntidadeInput;
      LRes: TEntidadeResolvida;
      LOut: TJSONObject;
    begin
      LBody := Req.Body<TJSONObject>;
      if LBody = nil then
        raise EApiError.Create(422, 'Body JSON ausente');

      LIn.Doc := OptStr(LBody, 'doc');
      LIn.Nome := OptStr(LBody, 'nome');
      LIn.TipoPessoa := OptStr(LBody, 'tipoPessoa');
      if LIn.TipoPessoa = '' then
        LIn.TipoPessoa := 'O';
      LIn.Ie := OptStr(LBody, 'ie');
      LIn.Papeis := OptStr(LBody, 'papeis');

      LRes := TEntidadesService.ResolverOuCriar(LIn);

      LOut := TJSONObject.Create;
      LOut.AddPair('idGlobal', TJSONNumber.Create(LRes.IdGlobal));
      LOut.AddPair('etdCodigoLocal', TJSONNumber.Create(LRes.EtdCodigoLocal));
      LOut.AddPair('reaproveitada', TJSONBool.Create(LRes.Reaproveitada));
      Res.Send<TJSONObject>(LOut).Status(201);
    end);
end;

end.
