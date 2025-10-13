unit  ProducaoUPServer.controller.CLB;

interface

Uses
  System.AnsiStrings,
  Horse,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  System.Json,
  Uni,
  UniProvider,
  MySQLUniProvider,
  ProducaoUP.Services.Connection ;


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



procedure Registry(App: THorse);
begin
  App.Get('/v1/clb', V1Get);
end;



procedure V1Get(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  conexao:TUniConnection;
  CLB:TUniQuery;

begin

  try

    conexao:=TUniConnection.Create(nil);

    if AtivaConexao(conexao) then
    begin

      CLB:=TUniQuery.Create(nil);
      CLB.Connection:=conexao;
      CLB.sql.Text:='select clb.clbcodigo, clb.clbidentificacao from clb '+
                    'Where clb.fnccodigo=9 and clb.clbativo=' +QuotedStr('1')+' '+
                    'order by clb.clbidentificacao '  ;
      CLB.Open;
    end;

    if not CLB.IsEmpty then
    begin
       Res.Send<TJsonarray>(TConverter.New.DataSet(CLB).AsJSONArray);
       CLB.close;
    end
    else
    begin
       res.Status(204);
    end;

  finally

    if conexao.Connected then
    conexao.Connected:=false;


    if CLB<>nil then
      CLB.DisposeOf;

    if conexao<>nil then
      conexao.DisposeOf;

  end;


end;



end.

