unit MizioUP.Controllers.colaborador;

interface

uses
  System.SysUtils,
  RESTRequest4D,
  REST.Types,
  System.JSON;

function CarregarColaboradores(Const AIpServer:String):TJsonArray;

implementation


function CarregarColaboradores(Const AIpServer:String):TJsonArray;
var
  resposta: IResponse;
begin

  resposta := TRequest.New.BaseURL('http://' + AIpServer + ':9191/v1/')
            .Resource('clb')
            .Get;

  if (resposta.StatusCode <> 200) and (resposta.StatusCode <> 204) then
    raise Exception.Create(resposta.Content);

  result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(resposta.Content), 0) as TJSONArray;

end;


end.
