unit ProducaoUPServer.controller.SFN;

interface

Uses
  Horse,
  System.Json,
  Horse.GBSwagger,
  idHashMessageDigest,
  ProducaoUPServer.Model.DAOGeneric,
  ProducaoUPServer.model.entity.SFN;


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
  App.Get('/v1/sfn/:id', V1Get);
   Swagger
      .BasePath('v1')
      .Path('sfn')
        .Tag('sfn')

        .GET('List All', 'List All sfn')
          .AddResponse(200, 'successful operation')
            .Schema(TSFN)
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
  FDAO: IDAOGeneric<TSFN>;
begin
  FDAO := TDaogeneric<TSFN>.New;
  FDAO
    .DAO
    .SQL
      .Fields(
      '    puncodigo,  CAP_FIRST(pronomereduzido) as pronomereduzido ,  punprecoav,  sfnquantidade '
      )
      .Where('grpcodigo='+Req.Params.Items['id'])
    .&End
   .Find;
  Res.Send<TJsonarray>(FDAO.DataSetAsJsonArray);
end;






end.
