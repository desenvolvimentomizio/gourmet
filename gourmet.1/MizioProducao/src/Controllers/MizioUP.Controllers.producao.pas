unit MizioUP.Controllers.producao;

interface

uses
  System.SysUtils,
  RESTRequest4D,
  REST.Types,
  System.JSON;

function GravaProducao(Const AIpServer:String; aRegistro: TJsonArray):Integer;

implementation


function GravaProducao(Const AIpServer:String; aRegistro:TJsonArray):Integer;
var
  resposta: IResponse;
  a:String;
begin
 a:=aRegistro.ToString;

  resposta := TRequest.New.BaseURL('http://' + AIpServer + ':9191/v1/rmp')
            .AddBody(aRegistro.ToString)
            .Post;

  result := resposta.StatusCode;

end;


end.
