unit GourmetServer.Controller.CZN;

interface

Uses

  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.Intf,
  FireDAC.Phys,
  FireDAC.UI.Intf,
  FireDAC.ConsoleUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,


  Horse,
  Horse.GBSwagger,
  idHashMessageDigest,
  System.Json,
  System.SysUtils,
  GourmetServer.Service.Funcoes,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.CZN;

procedure Registry(App: THorse);
procedure V1GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure V2GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function v1BuscaCozinhaAberta: Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  GourmetServer.Service.Conexoes;

procedure Registry(App: THorse);
begin
  App.Get('/v1/situacaocozinha', V1GetID);
  App.Get('/v2/situacaocozinha', V2GetID);

end;

function v1BuscaCozinhaAberta: Integer;
var
  conexao:TFDconnection;
  czn:TFDQuery;

  vlcznchave: Integer;
begin
  vlcznchave :=0;

  conexao:=TFDconnection.Create(nil);

  if AtivaConexao(conexao)<>nil then
  begin

      czn:=TFDQuery.Create(nil);
      czn.Connection:=Conexao;
      czn.sql.Text:='select cznchave,cznfechamento from czn '+
                    'where cznfechamento IS null order by cznchave desc limit 1';
      czn.Open;

      if not czn.IsEmpty then
       vlcznchave := czn.FieldByName('cznchave').asinteger
      else
       vlcznchave :=1;

      czn.close;

      if czn<>nil then
      czn.DisposeOf;


  end;

  if conexao<>nil then
  conexao.DisposeOf;

  result := vlcznchave;

end;

procedure V1GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO: iDAOGeneric<TCZN>;
  VLString: string;
begin

  FDAO := TDAOGeneric<TCZN>.New;

  VLString := 'cznfechamento IS null order by cznchave limit 1';

  FDAO.DAO.SQL.fields('cznchave,cznfechamento ').where(VLString).&End.Find;

  Res.Send<TJsonarray>(FDAO.DataSetAsJsonArray);

end;

procedure V2GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO: iDAOGeneric<TCZN>;
  VLString: string;
begin

  FDAO := TDAOGeneric<TCZN>.New;

  VLString := 'cznfechamento IS null order by cznchave limit 1';

  FDAO.DAO.SQL.fields('cznchave MOV_ID,cznfechamento MOV_FECHAMENTO').where(VLString).&End.Find;

  Res.Send<TJsonarray>(FDAO.DataSetAsJsonArray);

end;


end.
