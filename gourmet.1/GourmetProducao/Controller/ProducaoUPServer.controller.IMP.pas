unit ProducaoUPServer.controller.IMP;

interface

Uses
  Horse,
  System.Json,
  Horse.GBSwagger,
  idHashMessageDigest,
  ProducaoUPServer.Model.DAOGeneric,
  ProducaoUPServer.model.entity.IMP;


procedure Registry(App: THorse);
procedure V1Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);



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
  App.Post('/v1/imp', V1Insert);
   Swagger
      .BasePath('v1')
      .Path('imp')
        .Tag('imp')
      .&End
    .&End;
end;


procedure V1Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO: IDAOGeneric<TIMP>;
  IMP:TJSONObject;
begin


  FDAO := TDaogeneric<TIMP>.New;
  IMP:=Req.Body<TJSONObject>;



  Res.Send<TJSONObject>(FDAO.Insert(Req.Body<TJSONObject>));
end;


end.
