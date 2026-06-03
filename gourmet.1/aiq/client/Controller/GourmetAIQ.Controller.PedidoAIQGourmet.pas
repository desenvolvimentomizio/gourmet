unit GourmetAIQ.Controller.PedidoAIQGourmet;

interface

uses
  REST.Types,
  System.Json,
  REST.Json,
  REST.Client,
  System.Generics.Collections,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  GourmetAIQ.DataModulo.PedidoAIQGourmet,
  GourmetAIQ.Model.Entity.PedidoAIQGourmet,
  GourmetAIQ.Service.Funcoes,
  System.Classes;

function BuscaPedidosRegistradosGourmet(vcznchave: Integer; vListaPedidos: TList): Integer;
function BuscaPedidosProcessadosGourmet(vcznchave: Integer; vListaPedidos: TList): Integer;
function GravaPedidoGourmet(vPedidoGourmet: TPedidoAIQGourmet): Integer;
function ConsultaPedidoAIQGourmet(vPedido: String): Integer;
function CarregaPedidosRegistradosGourmet(vcznchave: Integer): TList;
function CarregaPedidosGourmet(vcznchave: Integer): TList;
function RemoveOrcamentoGourmet(vPedido: string): Integer;
function AjustaStatusPedidoGourmet(vNumeroPedido: string; vStatus: string): Integer;

implementation

uses
  System.SysUtils, GourmetAIQ.Service.Log;

// Quem chama eh dono da TList retornada (Free apos uso). Os itens da lista
// (TPedidoAIQGourmet) tambem sao de propriedade de quem chama.
function CarregaPedidosRegistradosGourmet(vcznchave: Integer): TList;
var
  vlListaPedidos: TList;
begin
  vlListaPedidos := TList.Create;
  if BuscaPedidosRegistradosGourmet(vcznchave, vlListaPedidos) = 200 then
    Result := vlListaPedidos
  else
  begin
    vlListaPedidos.Free; // evita leak quando status != 200
    Result := nil;
  end;
end;

function CarregaPedidosGourmet(vcznchave: Integer): TList;
var
  vlListaPedidos: TList;
  vStatus: Integer;
begin
  vlListaPedidos := TList.Create;
  vStatus := BuscaPedidosProcessadosGourmet(vcznchave, vlListaPedidos);
  if (vStatus = 200) or (vStatus = 204) then
    Result := vlListaPedidos
  else
  begin
    vlListaPedidos.Free;
    Result := nil;
  end;
end;

function ConsultaPedidoAIQGourmet(vPedido: String): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
begin
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];

    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoaiq/' + vPedido;

    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;
  finally
    vDMPedidoAIQGourmet.Free;
  end;
end;

function RemoveOrcamentoGourmet(vPedido: string): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
begin
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmDELETE;
    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoaiq/' + vPedido;

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];

    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;
  finally
    vDMPedidoAIQGourmet.Free;
  end;
end;

function AjustaStatusPedidoGourmet(vNumeroPedido: string; vStatus: string): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
  vBody: TJSONObject;
begin
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmPOST;
    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoaiq/' + vNumeroPedido;

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];

    // RESTRequest.Body.Add com TJSONObject toma posse do objeto.
    vBody := TJSONObject.Create.AddPair('status', vStatus);
    vDMPedidoAIQGourmet.RESTRequestGourmet.Body.Add(vBody);

    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;
  finally
    vDMPedidoAIQGourmet.Free;
  end;
end;

function GravaPedidoGourmet(vPedidoGourmet: TPedidoAIQGourmet): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
begin
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmPOST;
    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoaiq/';

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];

    Log.Info('GravaPedidoGourmet: url=' + vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL);

    vDMPedidoAIQGourmet.RESTRequestGourmet.Body.Add(vPedidoGourmet);
    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;
    Log.Info('GravaPedidoGourmet: status=' + IntToStr(Result));
  finally
    vDMPedidoAIQGourmet.Free;
  end;
end;

function BuscaPedidosRegistradosGourmet(vcznchave: Integer; vListaPedidos: TList): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
  PedidoGourmet: TPedidoAIQGourmet;
  vlJSONData: TJsonvalue;
  vlArrayPedidos: TJsonarray;
  i: Integer;
  vlHora: string;
begin
  Result := 0;
  vlJSONData := nil;
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];
    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoaiqczn/' + vcznchave.ToString;

    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      try
        vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
      except
        Exit;
      end;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;

    if Result = 200 then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vDMPedidoAIQGourmet.RESTResponseGourmet.Content, False);
      if vlJSONData <> nil then
      begin
        // GetValue<TJsonarray> devolve referencia interna do vlJSONData,
        // nao alocar TJsonarray.Create antes (causaria leak).
        vlArrayPedidos := vlJSONData.GetValue<TJsonarray>;
        if vlArrayPedidos <> nil then
        begin
          for i := 0 to vlArrayPedidos.Count - 1 do
          begin
            PedidoGourmet := TPedidoAIQGourmet.Create;
            PedidoGourmet.aiqchave := vlArrayPedidos[i].getvalue('aiqchave', '').ToInteger;
            PedidoGourmet.aiqpedido := vlArrayPedidos[i].getvalue('aiqpedido', '');
            PedidoGourmet.aiqstatus := vlArrayPedidos[i].getvalue('aiqstatus', '');
            PedidoGourmet.orcchave := vlArrayPedidos[i].getvalue('orcchave', '').ToInteger;
            PedidoGourmet.etdidentificacao := vlArrayPedidos[i].getvalue('etdidentificacao', '');
            PedidoGourmet.immnumepedido := vlArrayPedidos[i].getvalue('immnumepedido', '');
            PedidoGourmet.aiqregistro := vlArrayPedidos[i].getvalue('aiqregistro', '');
            vlHora := vlArrayPedidos[i].getvalue('immhoraimpresso', '');
            if vlHora <> '0' then
              PedidoGourmet.immhoraimpresso := vlHora;
            vListaPedidos.Add(PedidoGourmet);
          end;
        end;
      end;
    end;
  finally
    if Assigned(vlJSONData) then
      vlJSONData.Free;
    vDMPedidoAIQGourmet.Free;
  end;
end;

function BuscaPedidosProcessadosGourmet(vcznchave: Integer; vListaPedidos: TList): Integer;
var
  vDMPedidoAIQGourmet: TDMPedidoAIQGourmet;
  PedidoGourmet: TPedidoAIQGourmet;
  vlJSONData: TJsonvalue;
  vlArrayPedidos: TJsonarray;
  i: Integer;
begin
  Result := 0;
  vlJSONData := nil;
  vDMPedidoAIQGourmet := TDMPedidoAIQGourmet.Create(nil);
  try
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Clear;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Method := TRESTRequestMethod.rmGET;

    vDMPedidoAIQGourmet.RESTRequestGourmet.Params.Add;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].ContentType := ctAPPLICATION_JSON;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Kind := pkREQUESTBODY;
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Name := 'body';
    vDMPedidoAIQGourmet.RESTRequestGourmet.Params[0].Options := [poDoNotEncode];
    vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL :=
      vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL + '/pedidoprocessadoaiqczn/' + vcznchave.ToString;

    Log.Debug('BuscaPedidosProcessados: url=' + vDMPedidoAIQGourmet.RESTClientGourmet.BaseURL);

    try
      vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
    except
      sleep(2000);
      try
        vDMPedidoAIQGourmet.RESTRequestGourmet.Execute;
      except
        Exit;
      end;
    end;

    Result := vDMPedidoAIQGourmet.RESTResponseGourmet.StatusCode;
    Log.Debug('BuscaPedidosProcessados: status=' + IntToStr(Result));

    if (Result = 200) or (Result = 204) then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vDMPedidoAIQGourmet.RESTResponseGourmet.Content, False);
      if vlJSONData <> nil then
      begin
        vlArrayPedidos := vlJSONData.GetValue<TJsonarray>;
        if vlArrayPedidos <> nil then
        begin
          Log.Debug('BuscaPedidosProcessados: count=' + IntToStr(vlArrayPedidos.Count));
          for i := 0 to vlArrayPedidos.Count - 1 do
          begin
            PedidoGourmet := TPedidoAIQGourmet.Create;
            PedidoGourmet.aiqchave := vlArrayPedidos[i].getvalue('aiqchave', '').ToInteger;
            PedidoGourmet.aiqpedido := vlArrayPedidos[i].getvalue('aiqpedido', '');
            PedidoGourmet.aiqstatus := vlArrayPedidos[i].getvalue('aiqstatus', '');
            PedidoGourmet.orcchave := vlArrayPedidos[i].getvalue('orcchave', '').ToInteger;
            PedidoGourmet.etdidentificacao := vlArrayPedidos[i].getvalue('etdidentificacao', '');
            PedidoGourmet.immnumepedido := vlArrayPedidos[i].getvalue('immnumepedido', '');
            PedidoGourmet.immhoraimpresso := vlArrayPedidos[i].getvalue('immhoraimpresso', '');
            PedidoGourmet.aiqsaida := vlArrayPedidos[i].getvalue('orchoraentrega', '');
            vListaPedidos.Add(PedidoGourmet);
          end;
        end
        else
          Log.Info('BuscaPedidosProcessados: sem pedidos');
      end;
    end;
  finally
    if Assigned(vlJSONData) then
      vlJSONData.Free;
    vDMPedidoAIQGourmet.Free;
  end;
end;

end.
