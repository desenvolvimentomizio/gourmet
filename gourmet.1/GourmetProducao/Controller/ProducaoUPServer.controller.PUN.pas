unit ProducaoUPServer.controller.PUN;

interface

Uses
  Horse,
  System.Json,
  Horse.GBSwagger,
  idHashMessageDigest,
  ProducaoUPServer.Model.DAOGeneric,
  ProducaoUPServer.model.entity.PUN;


procedure Registry(App: THorse);
procedure V1Get(Req: THorseRequest; Res: THorseResponse; Next: TProc);



type
 TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;


implementation


uses
  System.SysUtils;



procedure Registry(App: THorse);
begin
  App.Get('/v1/pun/:id', V1Get);
   Swagger
      .BasePath('v1')
      .Path('pun')
        .Tag('pun')

        .GET('List All', 'List All pun')
          .AddResponse(200, 'successful operation')
            .Schema(TPUN)
            .IsArray(True)
          .&End
          .AddResponse(400, 'Bad Request')
            .Schema(TAPIError)
          .&End
          .AddResponse(500, 'Internal Server Error')
            .Schema(TAPIError)
          .&End
        .&End
      .&End
    .&End;
end;



procedure V1Get(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO: IDAOGeneric<TPUN>;
begin
  FDAO := TDaogeneric<TPUN>.New;
  FDAO
    .DAO
    .SQL
      .Fields(
      'puncodigo,  CAP_FIRST(brdidentificacao) AS brdidentificacao,   punprecoav'
      )
      .Where('unicodigo='+Req.Params.Items['id'])
    .&End
   .Find;
  Res.Send<TJsonarray>(FDAO.DataSetAsJsonArray);
end;






end.
