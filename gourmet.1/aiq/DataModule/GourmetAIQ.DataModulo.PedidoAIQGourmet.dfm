object DMPedidoAIQGourmet: TDMPedidoAIQGourmet
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 541
  Width = 242
  object RESTClientGourmet: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://localhost:8091/v1/cfgaiq'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 64
    Top = 120
  end
  object RESTRequestGourmet: TRESTRequest
    Client = RESTClientGourmet
    Params = <>
    Response = RESTResponseGourmet
    SynchronizedEvents = False
    Left = 64
    Top = 48
  end
  object RESTResponseGourmet: TRESTResponse
    Left = 64
    Top = 184
  end
end
