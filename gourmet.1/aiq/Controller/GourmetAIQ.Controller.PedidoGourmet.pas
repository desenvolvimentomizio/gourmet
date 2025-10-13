unit GourmetAIQ.Controller.PedidoGourmet;

interface

uses
  REST.Types,
  System.Json,
  REST.Json,
  REST.Client,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  GourmetAIQ.DataModulo.cfgaiq,

  GourmetAIQ.Service.Funcoes;


function GravaPedidoGourmet(vPedidoGourmet: TPedidoGourmet): TPedidoGourmet;

implementation


function GravaPedidoGourmet(vPedidoGourmet: TPedidoGourmet): TPedidoGourmet;
var
  vDMcfgaiq: TDMcfgaiq;
  vlParam: TRESTRequestParameter;
begin
  try
    vDMcfgaiq := TDMcfgaiq.Create(nil);
    vDMcfgaiq.RESTRequestGourmet.Params.Clear;
    vDMcfgaiq.RESTRequestGourmet.Method := TRESTRequestMethod.rmPUT;

    vDMcfgaiq.RESTRequestGourmet.Params.Add;
    vDMcfgaiq.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMcfgaiq.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMcfgaiq.RESTRequestGourmet.Params[0].name := 'body';
    vDMcfgaiq.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];

  if pos('/',vAIQ.ValidadeAIQ)>0 then
     vAIQ.ValidadeAIQ:=datahoratexttosql(vAIQ.ValidadeAIQ);


    vDMcfgaiq.RESTRequestGourmet.Body.Add(TJson.ObjectToJsonString(vAIQ));

    vDMcfgaiq.RESTRequestGourmet.Execute;
    result := vDMcfgaiq.RESTResponseGourmet.StatusCode;

  finally
    vDMcfgaiq.free;
  end;
end;

