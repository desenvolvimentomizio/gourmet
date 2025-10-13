object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 786
  Width = 636
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
        IgnoreErrors = True
      end
      item
        DBType = 211
        FieldType = ftInteger
        IgnoreErrors = True
      end>
    ProviderName = 'MySQL'
    Database = 'kuskao1006'
    Options.DisconnectedMode = True
    PoolingOptions.Validate = True
    Pooling = True
    Debug = True
    Username = 'root'
    Server = '192.168.5.135'
    LoginPrompt = False
    Left = 40
    Top = 32
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 152
    Top = 32
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select cfgcodigo, cfgmgoumesas, cfgmgoutaxaatendimento, cfgmgouq' +
        'tdmesas, cfgmgounomelocal from cfgmgou')
    Left = 40
    Top = 96
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmgoutaxaatendimento: TFloatField
      FieldName = 'cfgmgoutaxaatendimento'
      Required = True
    end
    object cfgcfgmgouqtdmesas: TIntegerField
      FieldName = 'cfgmgouqtdmesas'
    end
    object cfgcfgmgounomelocal: TStringField
      FieldName = 'cfgmgounomelocal'
      Size = 15
    end
  end
  object cde: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  cdecodigo,'
      '  cdeidentificacao,'
      '  sipcodigo'
      '  FROM'
      '  cde where sipcodigo=1')
    Left = 40
    Top = 176
    object cdecdecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cdecodigo'
    end
    object cdecdeidentificacao: TStringField
      FieldName = 'cdeidentificacao'
      Size = 50
    end
    object cdesipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
  end
  object ide: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  idechave,'
      '  cdecodigo,'
      '  ide.sbrcodigo,'
      '  sbr.sbridentificacao,  '
      '  ide.sipcodigo'
      '  FROM'
      ' ide,sbr where ide.sbrcodigo=sbr.sbrcodigo  and ide.sipcodigo=1 ')
    MasterSource = dscde
    MasterFields = 'cdecodigo'
    DetailFields = 'cdecodigo'
    Left = 120
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cdecodigo'
        ParamType = ptInput
        Value = 1
      end>
    object ideidechave: TIntegerField
      FieldName = 'idechave'
    end
    object idecdecodigo: TIntegerField
      FieldName = 'cdecodigo'
    end
    object idesbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object idesbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object idesipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
  end
  object dscde: TUniDataSource
    DataSet = cde
    Left = 72
    Top = 176
  end
  object pro: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ide.idechave,'
      '  sbr.sbridentificacao,'
      '  pro.pronome'
      '  FROM'
      '  ide'
      '    INNER JOIN sbr'
      '      ON ide.sbrcodigo = sbr.sbrcodigo'
      '    INNER JOIN isa'
      '      ON isa.sbrcodigo = sbr.sbrcodigo'
      '    INNER JOIN pro'
      '      ON isa.procodigo = pro.procodigo'
      'where ide.sipcodigo=1 and isa.sipcodigo=1 ')
    MasterSource = dside
    MasterFields = 'idechave'
    DetailFields = 'idechave'
    Left = 216
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idechave'
        Value = nil
      end>
    object proidechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idechave'
    end
    object prosbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object propronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
  end
  object dside: TUniDataSource
    DataSet = ide
    Left = 168
    Top = 176
  end
end
