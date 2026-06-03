unit GourmetAIQ.Controller.AIQSRV;

interface

uses

  GourmetAIQ.Service.Constants,
  GourmetAIQ.Service.Funcoes,
  GourmetAIQ.Service.AuthenticationAIQ,
  GourmetAIQ.DataModulo.AIQ,
  GourmetServer.Model.Entity.AIQ.AIQCFG;

Function CarregaIDLojaAIQ(vAIQ: TAIQCFG): TAIQCFG;
Function GerarTokenAIQ(vAIQ: TAIQCFG): TAIQCFG;

implementation

uses
  REST.Client,
  REST.Types,
  System.JSON,
  System.Generics.Collections,
  DateUtils,
  System.SysUtils,
  GourmetAIQ.Service.HealthMonitor;

Function CarregaIDLojaAIQ(vAIQ: TAIQCFG): TAIQCFG;
var
  vlDMAIQ: TDMAIQ;
  vlJSONData: TJsonvalue;
  vJSONItens: TJSONArray;
  vJSONPair: TJSONPair;
  vJSONObject: TJSONObject;
begin
  vlJSONData := nil;
  vlDMAIQ := TDMAIQ.Create(nil);
  try
    vlDMAIQ.RESTClientAIQ.Authenticator := AjustaAutenticacaoAIQ(vlDMAIQ.OAuth2AuthenticatorAIQ, vAIQ.cfgmgouTokenAIQ);
    vlDMAIQ.RESTClientAIQ.BaseURL := urlbase + PATH_ID_LOJA;
    vlDMAIQ.RESTRequestAIQ.Method := TRESTRequestMethod.rmGET;

    vlDMAIQ.RESTClientAIQ.Authenticator := vlDMAIQ.OAuth2AuthenticatorAIQ;
    vlDMAIQ.RESTRequestAIQ.Params.Clear;
    vlDMAIQ.RESTRequestAIQ.Params.AddHeader('Aiq-User-Agent', 'Pegasus (' + vAIQ.cfgmgouemaillojaaiq + ')');

    HealthMonitor.Track('AIQ.IDLoja',
      procedure
      begin
        try
          vlDMAIQ.RESTRequestAIQ.Execute;
        except
          sleep(2000);
          vlDMAIQ.RESTRequestAIQ.Execute;
        end;
      end);

    if vlDMAIQ.RESTResponseAIQ.StatusCode = 200 then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vlDMAIQ.RESTResponseAIQ.Content, False);
      if vlJSONData <> nil then
      begin
        vJSONItens := vlJSONData.GetValue<TJSONArray>('data');
        if (vJSONItens <> nil) and (vJSONItens.Count > 0) then
        begin
          vJSONObject := vJSONItens.Items[0].GetValue<TJSONObject>();

          vJSONPair := vJSONObject.Get('id');
          vAIQ.cfgmgouIDlojaAIQ := StringReplace(vJSONPair.JsonValue.ToString, '"', '', [rfReplaceAll, rfIgnoreCase]);

          vJSONPair := vJSONObject.Get('status');
          vAIQ.cfgmgousituacaolojaaiq := StringReplace(vJSONPair.JsonValue.ToString, '"', '', [rfReplaceAll, rfIgnoreCase]);
        end;
      end;
    end;
    Result := vAIQ;
  finally
    if Assigned(vlJSONData) then
      vlJSONData.Free;
    vlDMAIQ.Free;
  end;
end;

Function GerarTokenAIQ(vAIQ: TAIQCFG): TAIQCFG;
var
  vlDMAIQ: TDMAIQ;
  vlJSONData: TJsonvalue;
  vJSONItem: TJSONObject;
  vJSONPair: TJSONPair;
  vlExpiresIn: string;
begin
  vlJSONData := nil;
  vlDMAIQ := TDMAIQ.Create(nil);
  try
    vlDMAIQ.RESTClientAIQ.Authenticator := vlDMAIQ.HTTPBasicAuthenticatorAIQ;

    vlDMAIQ.HTTPBasicAuthenticatorAIQ.Username := Client_ID;
    vlDMAIQ.HTTPBasicAuthenticatorAIQ.Password := Client_Secret;

    vlDMAIQ.RESTClientAIQ.BaseURL := urlbase + PATH_TOKEN;
    vlDMAIQ.RESTRequestAIQ.Params.Clear;
    vlDMAIQ.RESTRequestAIQ.Params.AddHeader('Aiq-User-Agent', 'pegasus(' + Developer_ID + ')');

    vlDMAIQ.RESTRequestAIQ.Body.Add(
      '{"username" : "' + vAIQ.cfgmgouemaillojaaiq + '", "password" : "' + vAIQ.cfgmgousenhalojaaiq + '"}',
      TRESTContentType.ctAPPLICATION_JSON);

    HealthMonitor.Track('AIQ.Token',
      procedure
      begin
        try
          vlDMAIQ.RESTRequestAIQ.Execute;
        except
          sleep(2000);
          vlDMAIQ.RESTRequestAIQ.Execute;
        end;
      end);

    if vlDMAIQ.RESTResponseAIQ.StatusCode = 200 then
    begin
      vlJSONData := TJSONObject.ParseJSONValue(vlDMAIQ.RESTResponseAIQ.Content, False);
      if vlJSONData <> nil then
      begin
        vJSONItem := vlJSONData.GetValue<TJSONObject>('data');

        vJSONPair := vJSONItem.Get('access_token');
        vAIQ.cfgmgoutokenaiq :=
          StringReplace(vJSONPair.JsonValue.ToString, '"', '', [rfReplaceAll, rfIgnoreCase]);

        vJSONPair := vJSONItem.Get('expires_in');
        vlExpiresIn := vJSONPair.JsonValue.ToString;

        // expires_in vem em segundos. A divisao por 8 era aplicada no codigo
        // original sem comentario. Mantida ate confirmacao do comportamento
        // esperado da AIQ. Validade efetiva = agora + (expires_in / 8) segundos.
        vAIQ.cfgmgouValidadeAIQ :=
          IncSecond(now(), StrToInt(vlExpiresIn) div 8);
      end;
    end;
    Result := vAIQ;
  finally
    if Assigned(vlJSONData) then
      vlJSONData.Free;
    vlDMAIQ.Free;
  end;
end;

end.
