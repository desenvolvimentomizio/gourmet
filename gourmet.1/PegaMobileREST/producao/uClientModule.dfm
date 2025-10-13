object ClientModule: TClientModule
  OldCreateOrder = False
  Height = 391
  Width = 532
  object DSRestConexao: TDSRestConnection
    Host = '192.168.5.245'
    Port = 8088
    LoginPrompt = False
    OnBeforeExecute = DSRestConexaoBeforeExecute
    Left = 80
    Top = 64
    UniqueId = '{F52E65BA-8834-422C-97C7-C77C19B63704}'
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 79
    Top = 135
  end
end
