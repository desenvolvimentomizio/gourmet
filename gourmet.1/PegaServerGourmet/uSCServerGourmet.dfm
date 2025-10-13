object SCServerGourmet: TSCServerGourmet
  OldCreateOrder = False
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    Left = 48
    Top = 19
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 112
    Top = 19
  end
end
