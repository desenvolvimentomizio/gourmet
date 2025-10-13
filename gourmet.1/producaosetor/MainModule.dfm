object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  Theme = 'neptune'
  TouchTheme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 539
  Width = 739
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 320
    Top = 40
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 120
    Top = 32
  end
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
    Database = 'cardapio'
    Debug = True
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 40
    Top = 32
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object Consulta: TUniQuery
    Connection = Conexao
    Left = 208
    Top = 32
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select cfgcodigo, cfgmgoumesas, cfgmgoutaxaatendimento, cfgmgouq' +
        'tdmesas, cfgmgounomelocal'
      '  , cfgmgou.cfgmgoutempoatuentrega1'
      '  , cfgmgou.cfgmgoutempoatuentrega2'
      '  , cfgmgou.cfgmgoutempoatuproducao'
      '  , cfgmgou.cfgmgouatualizaproducao'
      ''
      ' from cfgmgou')
    Left = 208
    Top = 88
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
    object cfgcfgmgoutempoatuentrega1: TIntegerField
      DisplayLabel = 'Tem em segundos para atualizar tela de entregas para ATEN'#199#195'O'
      FieldName = 'cfgmgoutempoatuentrega1'
      Required = True
    end
    object cfgcfgmgoutempoatuentrega2: TIntegerField
      DisplayLabel = 'Tem em segundos para tela de entregas para EM ATRAZO'
      FieldName = 'cfgmgoutempoatuentrega2'
      Required = True
    end
    object cfgcfgmgoutempoatuproducao: TIntegerField
      DisplayLabel = 'Tem em segundos para atualizar tela de produ'#231#227'o'
      FieldName = 'cfgmgoutempoatuproducao'
      Required = True
    end
    object cfgcfgmgouatualizaproducao: TIntegerField
      DisplayLabel = 'Permite atualizar tela de Produ'#231#227'o mesmo com marca'#231#245'es'
      FieldName = 'cfgmgouatualizaproducao'
      Required = True
    end
  end
  object imm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '  m.immchave,'
      '  TIME_FORMAT(  m.immhoraimpresso, '#39'%H:%i'#39') horapedido ,'
      '  m.immhoraimpresso,'
      
        '   if(ito.stocodigo=88, concat('#39'<font color="red">'#39',pro.pronome,' +
        #39'</font>'#39'),pro.pronome) pronome,'
      ' '
      '  clb.clbidentificacao,'
      '     LPAD( CONVERT(m.immnumepedido, char), 4,'#39'0'#39') AS pdgnumero,'
      
        '   if(ito.stocodigo=88,concat('#39'<font color="red">'#39','#39'CAN'#39','#39'</font' +
        '>'#39')  ,  if(immrecebido='#39'1'#39','#39'>>'#39','#39'  '#39')) marca,'
      
        '    TIME_FORMAT( TIMEDIFF(now(), immhoraimpresso), '#39'%H:%i'#39')  AS ' +
        'tempo,'
      '    orc.oricodigo,'
      '     mit.mitidentificacao,'
      '    m.cznchave,'
      '    immrecebido,'
      '  ito.itochave,'
      '  m.pdscodigo,'
      '  gri.grpcodigo,'
      '  pro.grpcodigo,'
      '  ito.procodigo,'
      
        '  if(m.immnumepedido<5000,'#39'ENTR'#39',concat('#39'M:'#39' , (SELECT orcmesa F' +
        'ROM imm,ito,orc, czn WHERE imm.cznchave=czn.cznchave and czn.czn' +
        'fechamento is null and imm.itochave=ito.itochave and ito.orcchav' +
        'e=orc.orcchave and imm.immnumepedido=m.immnumepedido limit 1)  )' +
        ') immdestino, '
      '  ito.stocodigo'
      'FROM pro,'
      '     gri,'
      '     ito,'
      '     imm m, '
      '     czn,'
      '     clb,'
      '     orc,'
      '     tci,'
      '     mit '
      'WHERE ito.itochave = m.itochave'
      'AND pro.procodigo = ito.procodigo'
      'AND pro.grpcodigo = gri.grpcodigo'
      'AND m.cznchave= czn.cznchave'
      'AND cznfechamento IS NULL'
      'AND orc.orcchave = ito.orcchave'
      'AND gri.tcicodigo =tci.tcicodigo'
      'AND mit.mitcodigo=tci.mitcodigo  '
      'AND m.clbcodigo=clb.clbcodigo'
      '-- AND orc.stocodigo <> 88'
      '-- AND ito.stocodigo <> 88'
      'AND m.clbcodigoent = 0 '
      'AND gri.gricontrolaproducao=1'
      'and m.immrecebido<>2'
      
        'AND  if(m.immnumepedido<5000, m.immhoraimprimir is not null,true' +
        ')  '
      'and if(:tcicodigo=0,1=1,tci.tcicodigo=:tcicodigo)'
      
        'order by  TIME_FORMAT( TIMEDIFF(now(), immhoraimpresso), '#39'%H:%i'#39 +
        ') DESC, m.immchave'
      ''
      ''
      '')
    Left = 208
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tcicodigo'
        Value = 0
      end>
    object immimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object immhorapedido: TStringField
      FieldName = 'horapedido'
      ReadOnly = True
      Size = 10
    end
    object immpronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object immclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      ReadOnly = True
      Size = 30
    end
    object immpdgnumero: TStringField
      DisplayLabel = 'Nr.Ped'
      FieldName = 'pdgnumero'
      ReadOnly = True
      Size = 4
    end
    object immtempo: TStringField
      DisplayLabel = 'Tempo'
      FieldName = 'tempo'
      ReadOnly = True
      Size = 10
    end
    object immoricodigo: TIntegerField
      DisplayLabel = 'Origem'
      FieldName = 'oricodigo'
      ReadOnly = True
    end
    object immmitidentificacao: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object immcznchave: TIntegerField
      FieldName = 'cznchave'
      Required = True
    end
    object immmarca: TStringField
      FieldName = 'marca'
      Size = 10
    end
    object immimmrecebido: TIntegerField
      FieldName = 'immrecebido'
    end
    object immitochave: TIntegerField
      FieldName = 'itochave'
    end
    object immpdscodigo: TIntegerField
      FieldName = 'pdscodigo'
    end
    object immimmdestino: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'immdestino'
      Size = 15
    end
    object immimmhoraimpresso: TDateTimeField
      FieldName = 'immhoraimpresso'
    end
    object immstocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
  end
  object clb: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select clbcodigo, clbidentificacao, '#39#39' clbmarca from clb where f' +
        'nccodigo=9  and clbativo='#39'1'#39' order by clbidentificacao')
    Left = 208
    Top = 216
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object clbclbmarca: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'clbmarca'
      Size = 3
    end
  end
  object imp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  impchave,'
      '  clbcodigo,'
      '  itmchave,'
      '  itochave,'
      '  impinicio,'
      '  impfinal'
      'FROM imp limit 0')
    Left = 208
    Top = 272
    object impimpchave: TIntegerField
      FieldName = 'impchave'
    end
    object impclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object impitmchave: TIntegerField
      FieldName = 'itmchave'
      Required = True
    end
    object impitochave: TIntegerField
      FieldName = 'itochave'
    end
    object impimpinicio: TDateTimeField
      FieldName = 'impinicio'
    end
    object impimpfinal: TDateTimeField
      FieldName = 'impfinal'
    end
  end
  object mit: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '     tci.tcicodigo,'
      '     mit.mitidentificacao'
      '  '
      'FROM gri,'
      '     tci,'
      '     mit '
      'WHERE gri.tcicodigo =tci.tcicodigo'
      'AND mit.mitcodigo=tci.mitcodigo  '
      'AND gri.gricontrolaproducao=1'
      ''
      'union all'
      'select'
      '    0 tcicodigo,'
      '    '#39'TODOS SETORES'#39' mitidentificacao')
    Left = 208
    Top = 328
    object mittcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object mitmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Size = 30
    end
  end
end
