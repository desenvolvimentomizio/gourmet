object DMAIQ: TDMAIQ
  OldCreateOrder = False
  Height = 562
  Width = 694
  object RESTClientAIQ: TRESTClient
    Authenticator = HTTPBasicAuthenticatorAIQ
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://sandbox-raimundo.aiqfome.com:8889/alfredo/auth/token'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 136
    Top = 56
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
    Left = 136
    Top = 136
  end
  object RESTResponseAIQ: TRESTResponse
    ContentType = 'application/json'
    Left = 136
    Top = 200
  end
  object HTTPBasicAuthenticatorAIQ: THTTPBasicAuthenticator
    Username = 'pegasus'
    Password = '69014ac1-c8a7-4a11-b891-7290558fb18b'
    Left = 136
    Top = 264
  end
  object OAuth2AuthenticatorAIQ: TOAuth2Authenticator
    Left = 136
    Top = 328
  end
end
