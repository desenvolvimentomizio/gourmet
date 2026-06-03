object DMPedidoAIQ: TDMPedidoAIQ
  OldCreateOrder = False
  Height = 736
  Width = 426
  object RESTClientAIQ: TRESTClient
    Authenticator = OAuth2AuthenticatorAIQ
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://sandbox-raimundo.aiqfome.com:8889/alfredo/auth/token'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 56
    Top = 40
  end
  object RESTRequestAIQ: TRESTRequest
    Client = RESTClientAIQ
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Aiq-User-Agent'
        Value = 'pegasus (daniel.pegasus@gmail.com)'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponseAIQ
    SynchronizedEvents = False
    Left = 56
    Top = 120
  end
  object RESTResponseAIQ: TRESTResponse
    ContentType = 'application/json'
    Left = 56
    Top = 184
  end
  object OAuth2AuthenticatorAIQ: TOAuth2Authenticator
    Left = 304
    Top = 81
  end
  object HTTPBasicAuthenticatorAIQ: THTTPBasicAuthenticator
    Username = 'pegasus'
    Password = '69014ac1-c8a7-4a11-b891-7290558fb18b'
    Left = 304
    Top = 144
  end
end
