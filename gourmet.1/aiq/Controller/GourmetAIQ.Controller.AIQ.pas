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
  System.SysUtils, uFormGourmetAIQ;

function CarregaDadosAIQ(vAIQ: TAIQ): TAIQ;
var
  vDMAIQ: TDMPedidoAIQGourmet;
  aObject: TJSONObject;
  vlJSONData: TJsonvalue;
  Texto: String;

  vJSONScenarioEntry: TJSONString;
  vJSONScenarioValue: string;
  vParseResult: Integer;

  vJSONBytes: TBytes;
  vJSONScenario: TJSONObject;

var
  vlUrl: string;

begin
  if vAIQ.aiqpedido.ToString <> '' then
  begin

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

      FormGourmetAIQ.logs.Lines.Add(datetimetostr(now()) + ' 60 url pedido: ');
      FormGourmetAIQ.logs.Lines.Add(datetimetostr(now()) + ' 61 Leitura pedido: ' + IntToStr(vDMAIQ.RESTResponseGourmet.StatusCode));

      if vDMAIQ.RESTResponseGourmet.StatusCode = 200 then
      begin

        Texto := vDMAIQ.RESTResponseGourmet.Content;
        Texto := copy(Texto, 2, length(Texto) - 1);
        Texto := copy(Texto, 1, length(Texto) - 1);

        vlJSONData := TJSONObject.ParseJSONValue(Texto, False);

        if vlJSONData <> nil then
        begin
          Texto := vlJSONData.ToString;

          vAIQ.aiqchave := vlJSONData.getvalue('aiqchave', '').ToInteger;
          vAIQ.aiqpedido := vlJSONData.getvalue('aiqpedido', '').ToInteger;
          vAIQ.aiqstatus := vlJSONData.getvalue('aiqstatus', '').ToInteger;
          vAIQ.aiqjson := vlJSONData.getvalue('aiqjson', '');
          vAIQ.aiqvalor := vlJSONData.getvalue('aiqvalor', '');
          vAIQ.aiqentrega := vlJSONData.getvalue('aiqentrega', '');

          vAIQ.aiqjson := stringreplace(vAIQ.aiqjson, '\', '', [rfReplaceAll, rfIgnoreCase]);

        end;
      end;
      result := vAIQ;

    finally
      if vlJSONData <> nil then
      begin
        vlJSONData.Free;
      end;

      vDMAIQ.Free;
    end;

  end;
end;

end.
