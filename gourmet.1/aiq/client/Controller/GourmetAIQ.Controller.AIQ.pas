unit GourmetAIQ.Controller.AIQ;

interface

uses
  REST.Types,
  System.Json,
  REST.Json,
  REST.Client,
  DataSetConverter4D,
  DataSetConverter4D.Impl,

  GourmetAIQ.DataModulo.PedidoAIQGourmet,
  GourmetAIQ.Model.Entity.AIQ,
  GourmetAIQ.Service.Funcoes,
  GourmetAIQ.DataModulo.Connection;

function CarregaDadosAIQ(vAIQ: TAIQ): TAIQ;

implementation

uses
  System.SysUtils, GourmetAIQ.Service.Log;

function CarregaDadosAIQ(vAIQ: TAIQ): TAIQ;
var
  vDMAIQ: TDMPedidoAIQGourmet;
  vlJSONData: TJsonvalue;
  Texto: String;
begin
  Result := vAIQ;
  if (vAIQ = nil) or (vAIQ.aiqpedido = 0) then
    Exit;

  vDMAIQ := nil;
  vlJSONData := nil;

  try
    vDMAIQ := TDMPedidoAIQGourmet.Create(nil);
    vDMAIQ.RESTClientGourmet.BaseURL := vDMAIQ.RESTClientGourmet.BaseURL + '/pedidoaiq/' + vAIQ.aiqpedido.ToString;

    vDMAIQ.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;
    vDMAIQ.RESTResponseGourmet.ContentType := 'application/json; charset=utf-8';
    try
      vDMAIQ.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      vDMAIQ.RESTRequestGourmet.Execute;
    end;

    Log.Info(Format('CarregaDadosAIQ: pedido=%d status=%d',
      [vAIQ.aiqpedido, vDMAIQ.RESTResponseGourmet.StatusCode]));

    if vDMAIQ.RESTResponseGourmet.StatusCode = 200 then
    begin
      Texto := vDMAIQ.RESTResponseGourmet.Content;
      // remove o array [] envolvendo o objeto
      Texto := copy(Texto, 2, length(Texto) - 2);

      vlJSONData := TJSONObject.ParseJSONValue(Texto, False);
      if vlJSONData <> nil then
      begin
        vAIQ.aiqchave := vlJSONData.getvalue('aiqchave', '').ToInteger;
        vAIQ.aiqpedido := vlJSONData.getvalue('aiqpedido', '').ToInteger;
        vAIQ.aiqstatus := vlJSONData.getvalue('aiqstatus', '').ToInteger;
        vAIQ.aiqjson := vlJSONData.getvalue('aiqjson', '');
        vAIQ.aiqvalor := vlJSONData.getvalue('aiqvalor', '');
        vAIQ.aiqentrega := vlJSONData.getvalue('aiqentrega', '');
        vAIQ.aiqjson := stringreplace(vAIQ.aiqjson, '\', '', [rfReplaceAll, rfIgnoreCase]);
      end;
    end;
    Result := vAIQ;
  finally
    if Assigned(vlJSONData) then
      vlJSONData.Free;
    if Assigned(vDMAIQ) then
      vDMAIQ.Free;
  end;
end;

end.
