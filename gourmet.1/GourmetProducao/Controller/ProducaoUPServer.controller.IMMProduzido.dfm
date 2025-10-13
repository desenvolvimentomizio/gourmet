object dmIMMProduzido: TdmIMMProduzido
  OldCreateOrder = False
  Height = 631
  Width = 285
  object RESTClientBase: TRESTClient
    BaseURL = 'http://localhost:9191/grp'
    Params = <>
    Left = 56
    Top = 24
  end
  object RESTRequestBase: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientBase
    Params = <>
    Response = RESTResponseBase
    Left = 56
    Top = 120
  end
  object RESTResponseBase: TRESTResponse
    Left = 56
    Top = 184
  end
  object RESTResponseDSBase: TRESTResponseDataSetAdapter
    Dataset = RESTImm
    FieldDefs = <>
    Response = RESTResponseBase
    Left = 56
    Top = 256
  end
  object RESTImm: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 328
    object RESTImmimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object RESTImmimmrecebido: TIntegerField
      FieldName = 'immrecebido'
    end
  end
end
