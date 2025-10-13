object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 304
  Width = 550
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
    Database = 'kuskao2708_fran'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=10')
    Options.LocalFailover = True
    Options.DefaultSortType = stCaseInsensitive
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '192.168.5.166'
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
  object FDStanStorageJSONLink: TFDStanStorageJSONLink
    Left = 240
    Top = 72
  end
  object FDStanStorageBinLink: TFDStanStorageBinLink
    Left = 240
    Top = 120
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=kuskao_fran'
      'User_Name=root'
      'Password=xda973'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 432
    Top = 32
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorHome = 'C:\mysql'
    VendorLib = 'libmysql.dll'
    Left = 432
    Top = 88
  end
  object imm: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  imm.immchave,'
      '  TIME_FORMAT(  imm.immhoraimpresso, '#39'%H:%i'#39') horapedido ,'
      '  pro.pronome,'
      '  clb.clbidentificacao,'
      '  LPAD( CONVERT(imm.immnumepedido, char), 4,'#39'0'#39') AS pdgnumero,'
      '    0 marca,'
      
        '    TIME_FORMAT( TIMEDIFF(now(), immhoraimpresso), '#39'%H:%i'#39')  AS ' +
        'tempo,'
      '    orc.oricodigo,'
      '     mit.mitidentificacao,'
      '    imm.cznchave'
      'FROM orc,'
      '     clb,'
      '     ito,'
      '     imm,'
      '     pro,   '
      '     tci,'
      '     mit,'
      '     gri,'
      '     czn'
      'WHERE  orc.clbcodigo = clb.clbcodigo'
      'AND orc.orcchave = ito.orcchave'
      'AND ito.procodigo = pro.procodigo'
      'AND ito.itochave = imm.itochave'
      'AND orc.stocodigo <> 88'
      
        'AND gri.tcicodigo = imm.tcicodigo AND gri.grpcodigo=pro.grpcodig' +
        'o'
      'AND imm.clbcodigoent = 0 '
      'AND imm.tcicodigo = gri.tcicodigo'
      'AND mit.mitcodigo=tci.mitcodigo  AND tci.tcicodigo=imm.tcicodigo'
      'AND gri.gricontrolaproducao=1'
      'AND imm.cznchave= czn.cznchave'
      'AND cznfechamento IS null'
      '-- AND imm.immhoraimpresso is not null'
      'order by imm.immchave')
    Left = 432
    Top = 152
    object immimmchave: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'immchave'
      Origin = 'immchave'
    end
    object immhorapedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'horapedido'
      Origin = 'horapedido'
      Size = 10
    end
    object immpronome: TStringField
      FieldName = 'pronome'
      Origin = 'pronome'
      Required = True
      Size = 150
    end
    object immclbidentificacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'clbidentificacao'
      Origin = 'clbidentificacao'
      Size = 30
    end
    object immpdgnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pdgnumero'
      Origin = 'pdgnumero'
      Size = 4
    end
    object immmarca: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
    end
    object immtempo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tempo'
      Origin = 'tempo'
      Size = 10
    end
    object immoricodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'oricodigo'
      Origin = 'oricodigo'
    end
    object immmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Origin = 'mitidentificacao'
      Required = True
      Size = 50
    end
    object immcznchave: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cznchave'
      Origin = 'cznchave'
    end
  end
end
