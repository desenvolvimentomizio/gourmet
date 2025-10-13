object DMczn: TDMczn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 612
  Width = 376
  object RESTClientGourmet: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AutoCreateParams = False
    BaseURL = 'http://localhost:8091/v1/cfgaiq'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 64
    Top = 160
  end
  object RESTRequestGourmet: TRESTRequest
    AutoCreateParams = False
    Client = RESTClientGourmet
    Method = rmPUT
    Params = <>
    Response = RESTResponseGourmet
    SynchronizedEvents = False
    Left = 64
    Top = 88
  end
  object RESTResponseGourmet: TRESTResponse
    Left = 72
    Top = 232
  end
end
