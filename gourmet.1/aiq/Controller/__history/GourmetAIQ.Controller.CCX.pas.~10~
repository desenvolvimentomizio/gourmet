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
  System.SysUtils;

function BuscaccxChaveAberta: Integer;
var
  vDMccx: TDMccx;
  vlccxChave: Integer;
  vlJSONData: TJsonvalue;
  vlItensccx: TJsonarray;

  texto: string;
begin

  try
    vlJSONData := Nil;
    vlItensccx := NIl;

    vDMccx := TDMccx.Create(nil);

    vDMccx.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;
    vDMccx.RESTResponseGourmet.ContentType := 'application/json; charset=utf-8';
    try
      vDMccx.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      try
        vDMccx.RESTRequestGourmet.Execute;
      except
        vlccxChave := 0;
        exit;
      end;
    end;

    if vDMccx.RESTResponseGourmet.StatusCode = 200 then
    begin

      vlJSONData := TJSONObject.ParseJSONValue(vDMccx.RESTResponseGourmet.Content, False);
      if vlJSONData <> nil then
      begin
        texto := vlJSONData.ToString;

        vlItensccx := TJsonarray.Create;
        vlItensccx := vlJSONData.getvalue<TJsonarray>;

        vlccxChave := vlItensccx[0].getvalue('ccxchave', '').ToInteger;
      end
      else
      begin
        vlccxChave := 0;
      end;

    end;
    if vlccxChave <> 0 then
    begin
      result := vlccxChave;
    end
    else
    begin
      result := 0;
    end;

  finally
    vDMccx.free;
  end;

end;

end.
