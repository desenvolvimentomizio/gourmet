unit MizioUP.Controllers.pedido;

interface

uses
  System.SysUtils,
  RESTRequest4D,
  REST.Types,
  System.JSON;

function CarregarPedidos(Const AIpServer:String; aSetor:String):TJsonArray;

implementation


function CarregarPedidos(Const AIpServer:String; aSetor:String):TJsonArray;
var
  resposta: IResponse;
begin

  resposta := TRequest.New.BaseURL('http://' + AIpServer + ':9191/v1/imm/'+aSetor)
            .Get;

  if (resposta.StatusCode <> 200) and (resposta.StatusCode <> 204) then
    raise Exception.Create(resposta.Content);

  result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(resposta.Content), 0) as TJSONArray;

end;


end.
