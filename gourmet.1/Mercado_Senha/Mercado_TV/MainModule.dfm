object mm: Tmm
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  ServerMessages.UnavailableErrMsg = 'Falha de comunica'#231#227'o com servidor'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinciar appica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o encerrada....'
  ServerMessages.TerminateMessage = 'Sess'#227'o encerrada'
  Height = 167
  Width = 588
  object conexao: TUniConnection
    ProviderName = 'mySQL'
    Left = 64
    Top = 8
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 152
    Top = 8
  end
  object consulta: TUniQuery
    Connection = conexao
    Left = 256
    Top = 8
  end
  object imagem: TUniQuery
    Connection = conexao
    Left = 312
    Top = 32
  end
  object manipula: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT'
      '  exi.existatus,'
      '  exh.exhsegunda,'
      '  exh.exhterca,'
      '  exh.exhquarta,'
      '  exh.exhquinta,'
      '  exh.exhsexta,'
      '  exh.exhsabado,'
      '  exh.exhdomingo,'
      '  ims.imsimagem,'
      '  exi.exiinicio,'
      '  exi.exifinal,'
      '  exh.exbcodigo,'
      '  ims.imscodigo,'
      '  ims.imsidentificacao,'
      '  exi.exifra'
      ' -- TIME(NOW())'
      '  '
      ' '
      'FROM exi'
      '  INNER JOIN ims'
      '    ON exi.imscodigo = ims.imscodigo'
      '  INNER JOIN exh'
      '    ON exi.exhcodigo = exh.exhcodigo'
      '  --  exiinicio < DATE(NOW()) AND '
      '  WHERE (exifinal>=DATE(NOW()) )'
      
        '  AND  (IF (DAYOFWEEK(DATE(NOW()))=1 AND exhdomingo=1,TRUE, exh.' +
        'exbcodigo=-1)'
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=2 AND exhsegunda=1,TRUE, exh.e' +
        'xbcodigo=-1) '
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=3 AND exhterca=1,TRUE, exh.exb' +
        'codigo=-1)'
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=4 AND exhquarta=1,TRUE, exh.ex' +
        'bcodigo=-1)'
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=5 AND exhquinta=1,TRUE, exh.ex' +
        'bcodigo=-1)'
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=6 AND exhsexta=1,TRUE, exh.exb' +
        'codigo=-1)'
      
        '  or   IF (DAYOFWEEK(DATE(NOW()))=7 AND exhsabado=1,TRUE, exh.ex' +
        'bcodigo=-1)'
      '  )')
    Left = 248
    Top = 56
  end
  object nome: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select cfgidentificacao from cfg')
    Left = 352
    Top = 32
  end
  object logocliente: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT cfgmcfg.cfgcodigo'
      '     , cfgmcfg.cfglogo'
      '     '
      '  FROM cfgmcfg'
      ' WHERE cfgcodigo = :cfgcodigo')
    Left = 360
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object logoclientecfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object logoclientecfglogo: TBlobField
      FieldName = 'cfglogo'
    end
  end
end
