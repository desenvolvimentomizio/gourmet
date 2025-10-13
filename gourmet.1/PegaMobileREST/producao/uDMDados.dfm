object DMDados: TDMDados
  OldCreateOrder = False
  Height = 444
  Width = 516
  object pedidos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 144
    object pedidosimmchave: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'immchave'
      Origin = 'immchave'
    end
    object pedidoshorapedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'horapedido'
      Origin = 'horapedido'
      Size = 10
    end
    object pedidospronome: TStringField
      FieldName = 'pronome'
      Origin = 'pronome'
      Required = True
      Size = 150
    end
    object pedidosclbidentificacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'clbidentificacao'
      Origin = 'clbidentificacao'
      Size = 30
    end
    object pedidospdgnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pdgnumero'
      Origin = 'pdgnumero'
      Size = 4
    end
    object pedidosmarca: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
    end
    object pedidostempo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tempo'
      Origin = 'tempo'
      Size = 10
    end
    object pedidosoricodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'oricodigo'
      Origin = 'oricodigo'
    end
    object pedidosmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Origin = 'mitidentificacao'
      Required = True
      Size = 50
    end
    object pedidoscznchave: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cznchave'
      Origin = 'cznchave'
    end
  end
  object json: TFDStanStorageJSONLink
    Left = 232
    Top = 80
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 344
    Top = 176
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 344
    Top = 264
  end
end
