object SC: TSC
  OldCreateOrder = False
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    ChannelQueueSize = 1000
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    OnConnect = DSTCPServerTransport1Connect
    OnDisconnect = DSTCPServerTransport1Disconnect
    KeepAliveEnablement = kaEnabled
    KeepAliveTime = 3000000
    Left = 96
    Top = 73
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 192
    Top = 11
  end
end
