object ClientModule: TClientModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 271
  Width = 415
  object DSRestConnection: TDSRestConnection
    Host = '192.168.5.240'
    Port = 8099
    LoginPrompt = False
    Left = 120
    Top = 48
    UniqueId = '{BB4CE37C-98BB-48AA-8A23-386CC30D834B}'
  end
  object clb: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 120
    Top = 104
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
