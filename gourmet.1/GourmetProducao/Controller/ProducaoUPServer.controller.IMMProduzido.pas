unit ProducaoUPServer.controller.IMMProduzido;

interface

Uses
  Horse,
  System.Json,
  Horse.GBSwagger,
  idHashMessageDigest,
  DataSet.Serialize,
  ProducaoUPServer.Model.DAOGeneric,
  ProducaoUPServer.Model.entity.IMM;

procedure Registry(App: THorse);
procedure V1Update(Req: THorseRequest; Res: THorseResponse; Next: TProc);


type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation



procedure Registry(App: THorse);
begin
  App.Get('/v1/imm/:id', V1Update);
   Swagger
      .BasePath('v1')
      .Path('imm')
        .Tag('imm')

        .GET('List All', 'List All Imms')
          .AddResponse(200, 'successful operation')
            .Schema(TIMM)
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







function V1GetImm(aValue:string):TJSONObject;
var
  FDAO: IDAOGeneric<TIMM>;

begin
 FDAO := TDaogeneric<TIMM>.New;
 FDAO
    .DAO
    .SQL
      .Fields('chave, identificacao, pedido, tempo, item, destino, impressora, produto, quantidade, unidade, inicio')
      .Where('item='+aValue)
    .&End
   .Find;

 result :=FDAO.DataSetAsJsonObject ;
end;

procedure V1GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO: IDAOGeneric<TIMM>;
begin
  FDAO := TDaogeneric<TIMM>.New;
  FDAO
    .DAO
    .SQL
      .Fields('chave, identificacao, pedido, tempo, item, destino, impressora, produto, quantidade, unidade, inicio')
      .Where('if('+Req.Params.Items['id']+'=0, impressora<>0, impressora='+Req.Params.Items['id']+')'  )
      .OrderBy('chave')
    .&End
   .Find;

  Res.Send<TJsonarray>(FDAO.DataSetAsJsonArray);
end;


end.
