unit GourmetAIQ.Controller.CZN;

interface

uses
  REST.Types,
  System.Json,
  REST.Json,
  REST.Client,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  GourmetServer.Model.Entity.aiq.aiqcfg,
  GourmetAIQ.DataModulo.CZN,
  GourmetAIQ.Service.Funcoes,
  GourmetAIQ.DataModulo.Connection;

function BuscacznChaveAberta: Integer;

implementation

uses
  System.SysUtils, System.Generics.Collections;

function BuscacznChaveAberta: Integer;
var
  vDMczn: TDMczn;
  vlCznChave: Integer;
  vlJSONData: TJsonvalue;
  vlItensczn: TJsonarray;
begin
  Result := 0;
  vlCznChave := 0;

  vDMczn := TDMczn.Create(nil);
  try
    vDMczn.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;
    vDMczn.RESTResponseGourmet.ContentType := 'application/json; charset=utf-8';
    try
      vDMczn.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      try
        vDMczn.RESTRequestGourmet.Execute;
      except
        Exit; // Result ja eh 0
      end;
    end;

    if vDMczn.RESTResponseGourmet.StatusCode = 200 then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vDMczn.RESTResponseGourmet.Content, False);
      try
        if vlJSONData <> nil then
        begin
          vlItensczn := vlJSONData.getvalue<TJsonarray>;
          if (vlItensczn <> nil) and (vlItensczn.Count > 0) then
            vlCznChave := vlItensczn[0].getvalue('cznchave', '').ToInteger;
        end;
      finally
        vlJSONData.Free;
      end;
    end;

    Result := vlCznChave;
  finally
    vDMczn.Free;
  end;
end;

end.
