object ServerContainermizio: TServerContainermizio
  OldCreateOrder = False
  Height = 271
  Width = 415
  object DSServermizio: TDSServer
    Left = 96
    Top = 11
  end
  object DSServerClassmizio: TDSServerClass
    OnGetClass = DSServerClassmizioGetClass
    Server = DSServermizio
    Left = 200
    Top = 11
  end
end
