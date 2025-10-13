object conexaoDM: TconexaoDM
  OldCreateOrder = False
  Height = 193
  Width = 267
  object gab: TUniQuery
    Connection = conexaoweb
    SQL.Strings = (
      'SELECT'
      '  gabchave,'
      '  gabdoc1,'
      '  gabnome,'
      '  gabbackup,'
      '  gabcontigencia,'
      '  gabcontigencias,'
      '  gabpendentes,'
      '  gabrelease,'
      '  gabenviosped,'
      '  gabatualizacao'
      'FROM gab'
      '  where gabdoc1=:gabdoc1')
    Left = 184
    Top = 77
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gabdoc1'
        Value = nil
      end>
    object gabgabchave: TIntegerField
      FieldName = 'gabchave'
    end
    object gabgabdoc1: TStringField
      FieldName = 'gabdoc1'
      Size = 50
    end
    object gabgabnome: TStringField
      FieldName = 'gabnome'
      Size = 255
    end
    object gabgabbackup: TDateField
      FieldName = 'gabbackup'
    end
    object gabgabcontigencia: TDateTimeField
      FieldName = 'gabcontigencia'
    end
    object gabgabcontigencias: TIntegerField
      FieldName = 'gabcontigencias'
    end
    object gabgabpendentes: TIntegerField
      FieldName = 'gabpendentes'
    end
    object gabgabrelease: TIntegerField
      FieldName = 'gabrelease'
    end
    object gabgabenviosped: TDateTimeField
      FieldName = 'gabenviosped'
    end
    object gabgabatualizacao: TDateTimeField
      FieldName = 'gabatualizacao'
    end
  end
  object cfg: TUniQuery
    Connection = local
    SQL.Strings = (
      'SELECT etd.etdcodigo'
      '     , etd.etddoc1 AS cfgdoc1'
      '     , etd.etdapelido'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo'
      'WHERE cfgcodigo = 1;'
      ''
      ''
      ''
      ''
      '')
    Left = 12
    Top = 8
    object cfgcfgdoc1: TStringField
      FieldName = 'cfgdoc1'
    end
    object cfgetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 50
    end
  end
  object conexaoweb: TUniConnection
    ProviderName = 'mySQL'
    Port = 8369
    Database = 'empresa'
    Username = 'root'
    Server = 'telemetria.miziosistemas.com.br'
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 8
    EncryptedPassword = 'ACFF8AFFADFF96FFBCFF9EFFC6FFC8FFCCFF'
  end
  object local: TUniConnection
    ProviderName = 'mySQL'
    Left = 8
    Top = 72
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 88
    Top = 8
  end
end
