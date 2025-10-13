object DMDados: TDMDados
  OldCreateOrder = False
  Height = 736
  Width = 1014
  object memcgr: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 736
    Top = 56
    object memcgrcgrcodigo: TIntegerField
      FieldName = 'cgrcodigo'
    end
    object memcgrcgridentificacao: TStringField
      FieldName = 'cgridentificacao'
      Size = 25
    end
  end
  object memtgr: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 736
    Top = 112
    object memtgrtgrcodigo: TIntegerField
      FieldName = 'tgrcodigo'
    end
    object memtgrtgridentificacao: TStringField
      FieldName = 'tgridentificacao'
      Size = 35
    end
    object memtgrcgrcodigo: TIntegerField
      FieldName = 'cgrcodigo'
    end
  end
  object memgrp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 736
    Top = 176
    object memgrpgrpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grpcodigo'
    end
    object memgrpgrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Required = True
      Size = 30
    end
    object memgrptpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object memgrptgrcodigo: TIntegerField
      FieldName = 'tgrcodigo'
    end
  end
  object memClb: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 160
  end
  object json: TFDStanStorageJSONLink
    Left = 320
    Top = 88
  end
  object memCfg: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 216
  end
  object memOrc: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 336
  end
  object memUnm: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 288
  end
  object tisi: TFDQuery
    SQL.Strings = (
      'DROP TEMPORARY TABLE IF EXISTS tisi;'
      '   '
      'CREATE TEMPORARY TABLE tisi'
      '     ( ID        INT NOT NULL AUTO_INCREMENT'
      '     , sbrcodigo INT'
      '     , tsicodigo INT'
      '     , procodigo INT '
      '     , isitipo   INT'
      '     , sfncodigo int'
      '     , sfnid     int'
      '     , obs       varchar(100)'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT sbrcodigo'
      '     , tsicodigo'
      '     , procodigo'
      '     , isitipo '
      '     , sfncodigo'
      '     , sfnid'
      '     , obs'
      '  FROM tisi')
    Left = 448
    Top = 272
  end
  object tbrd: TFDQuery
    SQL.Strings = (
      'DROP TEMPORARY TABLE IF EXISTS tbrd;'
      '   '
      'CREATE TEMPORARY TABLE tbrd'
      '     ( sfnid     INT'
      '     , sfncodigo INT'
      '     , brdcodigo INT'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT sfnid'
      '     , sfncodigo'
      '     , brdcodigo'
      '  FROM tbrd')
    Left = 448
    Top = 336
  end
  object memito: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 400
    object memitoitochave: TIntegerField
      FieldName = 'itochave'
    end
    object memitoorcchave: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'orcchave'
      Calculated = True
    end
    object memitoitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object memitoprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object memitopronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object memitoitoquantidade: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itoquantidade'
      Origin = 'itoquantidade'
      Precision = 18
      Size = 6
    end
    object memitounisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object memitoitovalorav: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itovalorav'
      Origin = 'itovalorav'
      Precision = 15
      Size = 2
    end
    object memitoitototalav: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itototalav'
      Origin = 'itototalav'
      Precision = 15
      Size = 2
    end
    object memitopuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
  end
  object vtItens: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 448
    Top = 88
    object vtItensitoitem: TIntegerField
      DisplayLabel = 'It.'
      FieldName = 'itoitem'
    end
    object vtItensorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object vtItensprocodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'procodigo'
    end
    object vtItenspronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 150
    end
    object vtItenspuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object vtItensitoquantidade: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'itoquantidade'
      DisplayFormat = '#,#00'
      EditFormat = '#,#00'
    end
    object vtItensunisimbolo: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object vtItensStatus: TIntegerField
      FieldName = 'Status'
    end
    object vtItensObs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
    object vtItenstipo: TIntegerField
      FieldName = 'tipo'
    end
    object vtItenssfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object vtItensitochave: TIntegerField
      FieldName = 'itochave'
    end
    object vtItenscopos: TIntegerField
      FieldName = 'copos'
      Required = True
    end
    object vtItenspratos: TIntegerField
      FieldName = 'pratos'
      Required = True
    end
  end
  object memczn: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 456
    object memczncznchave: TIntegerField
      FieldName = 'cznchave'
    end
  end
  object memsfn: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 200
    Top = 296
    object memsfnprocodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'procodigo'
      Origin = 'procodigo'
    end
    object memsfnpuncodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'puncodigo'
      Origin = 'puncodigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object memsfnpronomereduzido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pronomereduzido'
      Origin = 'pronomereduzido'
      Size = 98
    end
    object memsfnpunprecoav: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'punprecoav'
      Origin = 'punprecoav'
      Size = 30
    end
    object memsfnunipro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unipro'
      Origin = 'unipro'
    end
    object memsfnunipun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unipun'
      Origin = 'unipun'
    end
    object memsfnunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Origin = 'unisimbolo'
      Required = True
      Size = 6
    end
    object memsfnsfnquantidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'sfnquantidade'
      Origin = 'sfnquantidade'
    end
    object memsfnsfncodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sfncodigo'
      Origin = 'sfncodigo'
    end
    object memsfngrpcodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grpcodigo'
      Origin = 'grpcodigo'
    end
  end
  object mempro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 200
    Top = 368
    object memproprocodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'procodigo'
      Origin = 'procodigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mempropronomereduzido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pronomereduzido'
      Origin = 'pronomereduzido'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object mempropunprecoav: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'punprecoav'
      Origin = 'punprecoav'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object memprogrpcodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grpcodigo'
      Origin = 'grpcodigo'
    end
  end
end
