unit GourmetAIQ.Controller.CCX;

interface

uses
  REST.Types,
  System.Json,
  REST.Json,
  REST.Client,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  GourmetAIQ.DataModulo.CCX,
  GourmetAIQ.Service.Funcoes,
  GourmetAIQ.DataModulo.Connection;

function BuscaccxChaveAberta: Integer;

implementation

uses
  System.SysUtils, System.Generics.Collections;

function BuscaccxChaveAberta: Integer;
var
  vDMccx: TDMccx;
  vlccxChave: Integer;
  vlJSONData: TJsonvalue;
  vlItensccx: TJsonarray;
begin
  Result := 0;
  vlccxChave := 0;

  vDMccx := TDMccx.Create(nil);
  try
    vDMccx.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;
    vDMccx.RESTResponseGourmet.ContentType := 'application/json; charset=utf-8';
    try
      vDMccx.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      try
        vDMccx.RESTRequestGourmet.Execute;
      except
        Exit; // Result ja eh 0
      end;
    end;

    if vDMccx.RESTResponseGourmet.StatusCode = 200 then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vDMccx.RESTResponseGourmet.Content, False);
      try
        if vlJSONData <> nil then
        begin
          // getvalue<TJsonarray> devolve referencia interna, nao alocar antes
          vlItensccx := vlJSONData.getvalue<TJsonarray>;
          if (vlItensccx <> nil) and (vlItensccx.Count > 0) then
            vlccxChave := vlItensccx[0].getvalue('ccxchave', '').ToInteger;
        end;
      finally
        vlJSONData.Free;
      end;
    end;

    Result := vlccxChave;
  finally
    vDMccx.Free;
  end;
end;

end.
