object ServerMethodsmizio: TServerMethodsmizio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 511
  Width = 523
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'bello0305'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=10')
    Options.LocalFailover = True
    Options.DefaultSortType = stCaseInsensitive
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '192.168.5.150'
    LoginPrompt = False
    Left = 32
    Top = 32
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 32
    Top = 80
  end
  object UniSQLMonitor: TUniSQLMonitor
    Active = False
    Left = 32
    Top = 128
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 32
    Top = 192
  end
end
