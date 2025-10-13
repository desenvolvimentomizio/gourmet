object DmDados: TDmDados
  OldCreateOrder = False
  Height = 778
  Width = 1277
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
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    SpecificOptions.Strings = (
      'MySQL.ConnectionTimeout=30000')
    DefaultTransaction = UniTransaction
    PoolingOptions.Validate = True
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    AfterConnect = ConexaoAfterConnect
    OnConnectionLost = ConexaoConnectionLost
    Left = 32
    Top = 16
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 112
    Top = 15
  end
  object Consulta: TUniQuery
    Connection = Conexao
    Left = 320
    Top = 15
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 197
    Top = 15
  end
  object MobGravaItens: TUniStoredProc
    StoredProcName = 'MobGravaItensGourmet'
    SQL.Strings = (
      
        'CALL MobGravaItensGourmet(:pOrcChave, :pClbCodigo, :pFlaCodigo, ' +
        ':pTipoItem, @pConfirma, @pMensagem); SELECT CAST(@pConfirma AS S' +
        'IGNED) AS '#39'@pConfirma'#39', @pMensagem AS '#39'@pMensagem'#39)
    Connection = Conexao
    Transaction = UniTransaction
    UpdateTransaction = UniTransaction
    OnDeleteError = MobGravaItensDeleteError
    OnEditError = MobGravaItensEditError
    OnPostError = MobGravaItensPostError
    Left = 712
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pOrcChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pFlaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoItem'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pMensagem'
        ParamType = ptOutput
        Size = 65000
        Value = nil
      end>
    CommandStoredProcName = 'MobGravaItensGourmet'
  end
  object clb: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @clbusuario = :clbusuario;'
      ''
      'SELECT clb.clbcodigo '
      '     , clb.clbidentificacao'
      '     , clb.clbdescmaximo'
      '  FROM clb '
      ' WHERE clb.clbcodigo = @clbusuario')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'clbusuario'
        Value = nil
      end>
    object clbclbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object clbclbdescmaximo: TFloatField
      FieldName = 'clbdescmaximo'
      Required = True
    end
  end
  object msa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO msa'
      
        '  (msachave, msaabertura, msafechamento, clbcodigo, orcchave, ms' +
        'asituacao, msanumero)'
      'VALUES'
      
        '  (:msachave, :msaabertura, :msafechamento, :clbcodigo, :orcchav' +
        'e, :msasituacao, :msanumero)')
    SQLDelete.Strings = (
      'DELETE FROM msa'
      'WHERE'
      '  msachave = :Old_msachave')
    SQLUpdate.Strings = (
      'UPDATE msa'
      'SET'
      
        '  msachave = :msachave, msaabertura = :msaabertura, msafechament' +
        'o = :msafechamento, clbcodigo = :clbcodigo, orcchave = :orcchave' +
        ', msasituacao = :msasituacao, msanumero = :msanumero'
      'WHERE'
      '  msachave = :Old_msachave')
    SQLLock.Strings = (
      'SELECT * FROM msa'
      'WHERE'
      '  msachave = :Old_msachave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT msachave, msaabertura, msafechamento, clbcodigo, orcchave' +
        ', msasituacao, msanumero FROM msa'
      'WHERE'
      '  msachave = :msachave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM msa')
    Connection = Conexao
    SQL.Strings = (
      'SELECT msachave'
      '     , msaabertura'
      '     , msafechamento'
      '     , clbcodigo'
      '     , orcchave'
      '     , msasituacao'
      '     , msanumero'
      '  FROM msa'
      ' WHERE msanumero = :msanumero'
      '   AND msaabertura BETWEEN (CURRENT_DATE()-1) AND CURRENT_DATE()'
      '   AND msasituacao = 0')
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'msanumero'
        ParamType = ptInput
        Value = nil
      end>
    object msamsachave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'msachave'
    end
    object msamsaabertura: TDateTimeField
      FieldName = 'msaabertura'
      Required = True
    end
    object msamsafechamento: TDateTimeField
      FieldName = 'msafechamento'
    end
    object msaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object msaorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object msamsasituacao: TIntegerField
      FieldName = 'msasituacao'
      Required = True
    end
    object msamsanumero: TIntegerField
      FieldName = 'msanumero'
      Required = True
    end
  end
  object orc: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO orc'
      
        '  (orcchave, etdcodigo, clbcodigo, stocodigo, orcmesa, orcpessoa' +
        's)'
      'VALUES'
      
        '  (:orcchave, :etdcodigo, :clbcodigo, :stocodigo, :orcmesa, :orc' +
        'pessoas)')
    SQLDelete.Strings = (
      'DELETE FROM orc'
      'WHERE'
      '  orcchave = :Old_orcchave')
    SQLUpdate.Strings = (
      'UPDATE orc'
      'SET'
      '  orcpessoas = :orcpessoas'
      'WHERE'
      '  orcchave = :Old_orcchave')
    SQLLock.Strings = (
      'SELECT * FROM orc'
      'WHERE'
      '  orcchave = :Old_orcchave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT orcchave, etdcodigo, clbcodigo, stocodigo, orcmesa, orcpe' +
        'ssoas FROM orc'
      'WHERE'
      '  orcchave = :orcchave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM orc')
    Connection = Conexao
    SQL.Strings = (
      'SELECT orc.orcchave         -- chave'
      '     , orc.etdcodigo        -- entidade'
      '     , orc.clbcodigo        -- atendente'
      '     , orc.stocodigo        -- 1 Em digita'#231#227'o'
      '     , orc.orcmesa          -- mesa'
      '     , orcpessoas'
      '     , sto.stoidentificacao -- situa'#231#227'o da mesa'
      '     , orc.orcimpressao'
      '    -- , mor.meschave'
      '     , orc.ccxchave'
      '     , orc.orcdataabert '
      '     , orc.cznchave'
      '  FROM orc'
      ' INNER JOIN sto ON orc.stocodigo = sto.stocodigo '
      '-- LEFT JOIN mor on orc.orcchave = mor.orcchave '
      ' WHERE orc.orcmesa   = :orcmesa'
      '   AND orc.moccodigo  IN (1,5)'
      '   AND orc.orcdataencerr IS NULL'
      '   AND orc.stocodigo in (1, 2, 5)'
      '--   and orc.ccxchave=:ccxchave'
      '')
    Left = 32
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'orcmesa'
        Value = 0
      end>
    object orcorcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'orcchave'
    end
    object orcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object orcstocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object orcorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object orcorcpessoas: TIntegerField
      FieldName = 'orcpessoas'
    end
    object orcstoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object orcorcimpressao: TIntegerField
      FieldName = 'orcimpressao'
      Required = True
    end
    object orcccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object orcorcdataabert: TDateField
      FieldName = 'orcdataabert'
    end
    object orccznchave: TIntegerField
      FieldName = 'cznchave'
    end
  end
  object ito: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ito'
      
        '  (itochave, orcchave, procodigo, puncodigo, unicodigo, stocodig' +
        'o, tdecodigo, itoquantidade, itovalorav, itodescontoav, itototal' +
        'av, itosaldoav, itovalorap, itodescontoap, itototalap, itosaldoa' +
        'p, itocontendo, itoitem, itopercdescap, itopercdescav, itoquanti' +
        'condi, itoquantidevolcondi)'
      'VALUES'
      
        '  (:itochave, :orcchave, :procodigo, :puncodigo, :unicodigo, :st' +
        'ocodigo, :tdecodigo, :itoquantidade, :itovalorav, :itodescontoav' +
        ', :itototalav, :itosaldoav, :itovalorap, :itodescontoap, :itotot' +
        'alap, :itosaldoap, :itocontendo, :itoitem, :itopercdescap, :itop' +
        'ercdescav, :itoquanticondi, :itoquantidevolcondi)')
    SQLDelete.Strings = (
      'DELETE FROM ito'
      'WHERE'
      '  itochave = :Old_itochave')
    SQLUpdate.Strings = (
      'UPDATE ito'
      'SET'
      
        '  itochave = :itochave, orcchave = :orcchave, procodigo = :proco' +
        'digo, puncodigo = :puncodigo, unicodigo = :unicodigo, stocodigo ' +
        '= :stocodigo, tdecodigo = :tdecodigo, itoquantidade = :itoquanti' +
        'dade, itovalorav = :itovalorav, itodescontoav = :itodescontoav, ' +
        'itototalav = :itototalav, itosaldoav = :itosaldoav, itovalorap =' +
        ' :itovalorap, itodescontoap = :itodescontoap, itototalap = :itot' +
        'otalap, itosaldoap = :itosaldoap, itocontendo = :itocontendo, it' +
        'oitem = :itoitem, itopercdescap = :itopercdescap, itopercdescav ' +
        '= :itopercdescav, itoquanticondi = :itoquanticondi, itoquantidev' +
        'olcondi = :itoquantidevolcondi'
      'WHERE'
      '  itochave = :Old_itochave')
    SQLLock.Strings = (
      'SELECT * FROM ito'
      'WHERE'
      '  itochave = :Old_itochave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT itochave, orcchave, procodigo, puncodigo, unicodigo, stoc' +
        'odigo, tdecodigo, itoquantidade, itovalorav, itodescontoav, itot' +
        'otalav, itosaldoav, itovalorap, itodescontoap, itototalap, itosa' +
        'ldoap, itocontendo, itoitem, itopercdescap, itopercdescav, itoqu' +
        'anticondi, itoquantidevolcondi FROM ito'
      'WHERE'
      '  itochave = :itochave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ito')
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itochave            -- chave'
      '     , ito.procodigo           -- chave produto'
      '     ,  pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itodescontoav       -- Desconto'
      
        '     , (ito.itototalav-ito.itodescontoav)   itototalav       -- ' +
        'total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.puncodigo           -- pun codigo'
      '     , ito.stocodigo           -- situacao do item'
      '     , sto.stoidentificacao'
      '     , imm.immnumepedido'
      '     , TIME_FORMAT(imm.immhorapedido, '#39'%H:%i'#39') immhorapedido'
      '     , IFNULL(sbr.sbrfracionado, 0) sbrfracionado'
      '     , imm.immmodo'
      
        '     , (select clbidentificacao from clb where clb.clbcodigo=imm' +
        '.clbcodigo) as clbpediu'
      '     , imm.clbcodigo clbpedido'
      '     , ito.orcchave'
      '     , ito.itoacrescimoav'
      
        '     , TIME_FORMAT(imm.immhoraimpresso, '#39'%H:%i'#39')   immhoraimpres' +
        'so '
      '     , pro.tpocodigo tpocodigo'
      '     , grp.grpidentificacao grpidentificacao '
      '     , ito.itooutras'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      ''
      ' left JOIN imm ON imm.itochave = ito.itochave   '
      '  LEFT JOIN sbr ON pro.grpcodigo = sbr.grpcodigo'
      
        '--  LEFT JOIN sfn ON pro.procodigo = sfn.procodigo   AND uni.uni' +
        'codigo = sfn.unicodigo'
      ''
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.stocodigo not in (1,3,4,8,9)'
      
        '   and ito.procodigo<>(select cfgmgouproatendimento from cfgmgou' +
        ')  '
      
        '   and ito.procodigo<>(select cfgmgouproatendimentoparcial from ' +
        'cfgmgou) '
      '   and ito.itoquantidade>0'
      ' ORDER BY ito.itoitem')
    CachedUpdates = True
    Left = 32
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itoitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itoprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itopronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object itoitoquantidade: TFloatField
      Alignment = taCenter
      FieldName = 'itoquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
    end
    object itounisimbolo: TStringField
      Alignment = taCenter
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itoitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itopuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itostocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object itostoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itoimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
      ReadOnly = True
    end
    object itoimmhorapedido: TStringField
      FieldName = 'immhorapedido'
      ReadOnly = True
      Size = 10
    end
    object itoimmmodo: TIntegerField
      FieldName = 'immmodo'
    end
    object itoclbpediu: TStringField
      FieldName = 'clbpediu'
      Size = 25
    end
    object itoclbpedido: TIntegerField
      FieldName = 'clbpedido'
    end
    object itosbrfracionado: TIntegerField
      FieldName = 'sbrfracionado'
    end
    object itoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object itoitoacrescimoav: TCurrencyField
      FieldName = 'itoacrescimoav'
    end
    object itoimmhoraimpresso: TStringField
      FieldName = 'immhoraimpresso'
      Size = 10
    end
    object itotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object itogrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object itoitooutras: TCurrencyField
      FieldName = 'itooutras'
    end
    object itoitodescontoav: TCurrencyField
      FieldName = 'itodescontoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object dClb: TUniDataSource
    DataSet = clb
    Left = 112
    Top = 72
  end
  object dMsa: TUniDataSource
    Left = 112
    Top = 128
  end
  object dOrc: TUniDataSource
    DataSet = orc
    Left = 88
    Top = 176
  end
  object dIto: TUniDataSource
    DataSet = ito
    Top = 232
  end
  object grp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT grp.grpcodigo'
      '     , grp.grpidentificacao'
      '     , pro.tpocodigo'
      '     , IFNULL(sbr.sbrfracionado,0) sbrfracionado'
      ' FROM pro'
      'INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      'INNER JOIN gri on grp.grpcodigo = gri.grpcodigo'
      ' LEFT JOIN sbr ON pro.grpcodigo = sbr.grpcodigo'
      
        'WHERE (pro.tpocodigo = 0 or pro.tpocodigo = 4 or pro.tpocodigo =' +
        ' 9) '
      'and pro.sipcodigo=1'
      'and (gri.gricardapio=1 or gri.griconveniencia=1)'
      'GROUP BY  grp.grpidentificacao'
      'ORDER BY  grp.grpordem, grp.grpidentificacao')
    Left = 32
    Top = 280
    object grpgrpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Required = True
      Size = 30
    end
    object grptpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      ReadOnly = True
      Required = True
    end
    object grpsbrfracionado: TIntegerField
      FieldName = 'sbrfracionado'
      ReadOnly = True
      Required = True
    end
  end
  object proc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      '-- se n'#227'o existir resultado na pesquisa snf '#233' produto comum'
      ''
      ''
      'SELECT pro.procodigo'
      
        '     , namecase((CAST(pro.pronome as char(40) CHARSET Latin1))) ' +
        'pronomereduzido'
      '     , punprecoav'
      '     , punbarra'
      '  FROM pro '
      ' left JOIN sbr ON pro.procodigo=sbr.procodigo'
      ' INNER JOIN gri'
      
        '         ON pro.grpcodigo = gri.grpcodigo and gri.grpcodigo=:grp' +
        'codigo '
      ' INNER JOIN (SELECT pun.procodigo '
      '                  , pun.unicodigo'
      
        '                  , RTRIM(CAST(GROUP_CONCAT(RTRIM(CONCAT(uni.uni' +
        'simbolo,'#39' '#39',FormatValor(pun.punprecoav,2)))  ORDER BY pun.punpre' +
        'coav ASC SEPARATOR '#39' '#39') AS char(40) charset Latin1)) AS punpreco' +
        'av'
      '                  , punbarra'
      '               FROM pun '
      '              INNER JOIN pro pr'
      
        '                      ON pun.procodigo = pr.procodigo  AND tunco' +
        'digo<>0'
      '              INNER JOIN uni on pun.unicodigo = uni.unicodigo'
      '              WHERE 0 = (SELECT COUNT(*)'
      '                           FROM pro p'
      '                          INNER JOIN sfn s'
      '                                  ON s.procodigo = p.procodigo '
      
        '                          WHERE p.grpcodigo=pr.grpcodigo AND p.g' +
        'rpcodigo=:grpcodigo)'
      '              GROUP BY pun.procodigo)tpun'
      '         ON pro.procodigo = tpun.procodigo'
      
        ' WHERE (pro.sipcodigo=1) and pro.tpocodigo = 9 or (pro.tpocodigo' +
        ' = 0 or pro.tpocodigo = 4 or pro.tpocodigo = 99)  '
      '   AND 0 = (SELECT COUNT(*)'
      '               FROM pro p'
      '              INNER JOIN sfn s'
      '                      ON s.procodigo = p.procodigo '
      '              WHERE p.grpcodigo=pro.grpcodigo)'
      '   AND pro.grpcodigo=:grpcodigo '
      '   and pro.sipcodigo=1'
      ' ORDER BY ifnull(sbr.sbrordem,0), pro.pronome'
      ''
      '')
    Left = 32
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grpcodigo'
        Value = nil
      end>
    object procprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object procpronomereduzido: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronomereduzido'
      ReadOnly = True
      Size = 255
    end
    object procpunprecoav: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Valor'
      FieldName = 'punprecoav'
      ReadOnly = True
      Size = 40
    end
    object procpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 25
    end
  end
  object sfn: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      '-- verificar se '
      'SELECT distinct pro.procodigo'
      '     , pun.puncodigo'
      
        '     , CONCAT(pro.pronomereduzido,'#39' '#39',if(UPPER(uni.uninome)='#39'UNI' +
        'DADE'#39','#39#39',uni.uninome),'#39' (Sb: '#39',formatValor(sfnquantidade,0),'#39')'#39')' +
        ' as pronomereduzido'
      '     , formatValor(pun.punprecoav,2) punprecoav'
      '     , pro.unicodigo as unipro'
      '     , pun.unicodigo as unipun'
      '     , uni.unisimbolo   '
      '     , sfn.sfnquantidade'
      '     , sfn.sfncodigo'
      '  FROM pun '
      ' INNER JOIN pro'
      '         ON pun.procodigo = pro.procodigo '
      ' INNER JOIN uni'
      '         ON pun.unicodigo = uni.unicodigo '
      ' INNER JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      
        ' WHERE (pro.tpocodigo = 9 or pro.tpocodigo = 0 or pro.tpocodigo ' +
        '= 4)'
      '   AND pro.grpcodigo=:grpcodigo and sfn.sipcodigo=1'
      ' ORDER BY pun.punprecoav -- pro.pronomereduzido, uni.uninome')
    Left = 32
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grpcodigo'
        Value = nil
      end>
    object sfnprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object sfnpuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
      ReadOnly = True
    end
    object sfnpronomereduzido: TStringField
      FieldName = 'pronomereduzido'
      ReadOnly = True
      Size = 98
    end
    object sfnpunprecoav: TStringField
      Alignment = taRightJustify
      FieldName = 'punprecoav'
      ReadOnly = True
      Size = 30
    end
    object sfnunipro: TIntegerField
      FieldName = 'unipro'
      Required = True
    end
    object sfnunipun: TIntegerField
      FieldName = 'unipun'
      ReadOnly = True
      Required = True
    end
    object sfnunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object sfnsfnquantidade: TFloatField
      FieldName = 'sfnquantidade'
      ReadOnly = True
      Required = True
    end
    object sfnsfncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'sfncodigo'
      ReadOnly = True
    end
  end
  object dsfn: TUniDataSource
    DataSet = sfn
    Left = 112
    Top = 376
  end
  object vtItens: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 195
    Top = 72
    object vtItensitoitem: TIntegerField
      DisplayLabel = 'It.'
      FieldName = 'itoitem'
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
    object vtItenscopos: TIntegerField
      FieldName = 'copos'
    end
    object vtItenspratos: TIntegerField
      FieldName = 'pratos'
    end
  end
  object dVtiItens: TUniDataSource
    DataSet = vtItens
    Left = 264
    Top = 71
  end
  object pun: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT pun.puncodigo'
      '     , uni.unisimbolo'
      '     , pun.punprecoav'
      '     , formatvalor(pun.punprecoav,2) vlvenda'
      '     , punbarra'
      '  FROM pun'
      ' INNER JOIN uni'
      '         ON pun.unicodigo = uni.unicodigo'
      
        ' WHERE pun.sipcodigo=1 and procodigo = :procodigo and pun.tuncod' +
        'igo in (9,1)'
      ' ORDER BY pun.punprecoav')
    Left = 192
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object punpuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
    end
    object pununisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object punvlvenda: TStringField
      Alignment = taRightJustify
      FieldName = 'vlvenda'
      ReadOnly = True
      Size = 30
    end
    object punpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 25
    end
  end
  object tito: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tito'
      
        '  (ID, procodigo, puncodigo, clbcodigo, qtde, pessoas, obs, sfni' +
        'd, sfncodigo, copos, pratos)'
      'VALUES'
      
        '  (:ID, :procodigo, :puncodigo, :clbcodigo, :qtde, :pessoas, :ob' +
        's, :sfnid, :sfncodigo, :copos, :pratos)')
    SQLDelete.Strings = (
      'DELETE FROM tito'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tito'
      'SET'
      
        '  ID = :ID, procodigo = :procodigo, puncodigo = :puncodigo, clbc' +
        'odigo = :clbcodigo, qtde = :qtde, pessoas = :pessoas, obs = :obs' +
        ', sfnid = :sfnid, sfncodigo = :sfncodigo, copos = :copos, pratos' +
        ' = :pratos  '
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tito'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, procodigo, puncodigo, clbcodigo, qtde, pessoas, obs, ' +
        'sfnid, sfncodigo FROM tito'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tito')
    Connection = Conexao
    SQL.Strings = (
      ' DROP TABLE IF EXISTS tito;'
      ' DROP TEMPORARY TABLE IF EXISTS tito;'
      '   '
      'CREATE TEMPORARY  TABLE tito'
      '     ( ID INT NOT NULL AUTO_INCREMENT'
      '     , procodigo int'
      '     , puncodigo int'
      '     , clbcodigo int '
      '     , qtde      decimal(9,3) default 1'
      '     , pessoas   int'
      '     , obs       varchar(100)'
      '     , sfnid     int'
      '     , sfncodigo int'
      '     , copos     int'
      '     , pratos    int     '
      '     , total     decimal(9,2)'
      '     , itoacrescimoav decimal(9,2)'
      '     , clbatendente int'
      '     , PRIMARY KEY (ID)'
      ''
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , procodigo '
      '     , '#39#39' pronome'
      '     , puncodigo '
      '     , clbcodigo'
      '     , qtde   '
      '     , pessoas'
      '     , obs'
      '     , sfnid'
      '     , sfncodigo'
      '     , copos     '
      '     , pratos         '
      '     , total'
      '     , itoacrescimoav'
      '     , clbatendente'
      '  FROM tito; '
      ''
      ''
      ' '
      ''
      '')
    CachedUpdates = True
    AfterInsert = titoAfterInsert
    Left = 320
    Top = 176
    object titoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object titoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object titopronome: TStringField
      FieldName = 'pronome'
      Size = 65530
    end
    object titopuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object titoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object titoqtde: TFloatField
      FieldName = 'qtde'
    end
    object titopessoas: TIntegerField
      FieldName = 'pessoas'
    end
    object titoobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object titosfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object titosfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object titocopos: TIntegerField
      FieldName = 'copos'
    end
    object titopratos: TIntegerField
      FieldName = 'pratos'
    end
    object titototal: TCurrencyField
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object titoitoacrescimoav: TFloatField
      FieldName = 'itoacrescimoav'
    end
    object titoclbatendente: TIntegerField
      FieldName = 'clbatendente'
    end
  end
  object sbr: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @tsicodigo        = :tsicodigo;'
      
        'SET @tsiidentificacao = (SELECT tsiidentificacao FROM tsi WHERE ' +
        'tsicodigo = @tsicodigo and tsitipo=0);'
      ''
      'SELECT isa.sbrcodigo'
      '     , sbr.procodigo sbrprocodigo'
      '     , isa.procodigo'
      '     , pro.pronome'
      '     , CONVERT(@tsicodigo, UNSIGNED) tsicodigo '
      '     , CONVERT(@tsiidentificacao, CHAR(15)) tsiidentificacao'
      '     , 0 tipo'
      '     , cast('#39#39' as char(100)) obs'
      '     , IFNULL(sbr.sbrfracionado,0) sbrfracionado'
      '  FROM isa'
      ' INNER JOIN sbr '
      
        '         ON isa.sbrcodigo = sbr.sbrcodigo -- and senadicionavel=' +
        '0'
      ' INNER JOIN pro '
      '         ON isa.procodigo = pro.procodigo'
      '         '
      ' WHERE sbr.procodigo = :procodigo'
      ' ORDER BY pro.pronome')
    CachedUpdates = True
    Left = 192
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tsicodigo'
        Value = 3
      end
      item
        DataType = ftInteger
        Name = 'procodigo'
        Value = 171
      end>
    object sbrsbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object sbrsbrprocodigo: TIntegerField
      FieldName = 'sbrprocodigo'
    end
    object sbrprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object sbrpronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object sbrtsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object sbrtsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      Size = 15
    end
    object sbrtipo: TIntegerField
      FieldName = 'tipo'
      ReadOnly = True
      Required = True
    end
    object sbrobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object sbrtsiopcao: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'tsiopcao'
      LookupDataSet = tsi
      LookupKeyFields = 'tsicodigo'
      LookupResultField = 'tsiidentificacao'
      KeyFields = 'tsicodigo'
      Lookup = True
    end
    object sbrsbrfracionado: TIntegerField
      FieldName = 'sbrfracionado'
      ReadOnly = True
      Required = True
    end
  end
  object tsi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT tsicodigo'
      '     , tsiidentificacao '
      '  FROM tsi')
    Left = 184
    Top = 280
    object tsitsicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tsicodigo'
    end
    object tsitsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      Size = 15
    end
  end
  object dtsi: TUniDataSource
    DataSet = tsi
    Left = 264
    Top = 280
  end
  object Adc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @tsicodigo        = :tsicodigo;'
      
        'SET @tsiidentificacao = (SELECT tsiidentificacao FROM tsi WHERE ' +
        'tsicodigo = @tsicodigo);'
      ''
      ''
      'SELECT DISTINCT'
      '  pro.procodigo,'
      '  pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE pro.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo,'
      '  pro.procodigo sbrordem'
      'FROM pro'
      ''
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      ''
      ''
      'WHERE pro.tpocodigo IN (1)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo '
      ''
      ''
      'ORDER BY 2'
      '/*'
      ''
      ''
      ''
      ' SELECT DISTINCT'
      '  isa.procodigo,'
      '  (SELECT'
      '      p.pronome'
      '    FROM pro p'
      '    WHERE p.procodigo = isa.procodigo) pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE isa.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo,'
      '  sbr.sbrordem'
      'FROM pro'
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN sbr'
      '    ON sbr.procodigo = pro.procodigo'
      '  JOIN isa'
      '    ON isa.sbrcodigo = sbr.sbrcodigo -- and senadicionavel=1'
      'WHERE pro.tpocodigo IN (0)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo'
      ''
      ''
      'UNION DISTINCT'
      ''
      'SELECT DISTINCT'
      '  isa.procodigo,'
      '  (SELECT'
      '      p.pronome'
      '    FROM pro p'
      '    WHERE p.procodigo = isa.procodigo) pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE isa.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo,'
      '  sbr.sbrordem'
      'FROM pro'
      ''
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN sbr'
      '    ON sbr.grpcodigo = pro.grpcodigo'
      ''
      '  JOIN isa'
      '    ON isa.sbrcodigo = sbr.sbrcodigo -- and senadicionavel=1'
      'WHERE pro.tpocodigo IN (0)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo'
      ''
      ''
      ''
      'ORDER BY 9,2'
      '*/'
      ''
      ''
      ''
      '/* SET @tsicodigo        = :tsicodigo;'
      
        'SET @tsiidentificacao = (SELECT tsiidentificacao FROM tsi WHERE ' +
        'tsicodigo = @tsicodigo);'
      ''
      ''
      'SELECT DISTINCT'
      '  isa.procodigo,'
      '  (SELECT'
      '      p.pronome'
      '    FROM pro p'
      '    WHERE p.procodigo = isa.procodigo) pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE isa.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo'
      'FROM pro'
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN sbr'
      '    ON sbr.procodigo = pro.procodigo'
      '  JOIN isa'
      '    ON isa.sbrcodigo = sbr.sbrcodigo -- and senadicionavel=1'
      'WHERE pro.tpocodigo IN (0)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo'
      ''
      ''
      'UNION DISTINCT'
      ''
      'SELECT DISTINCT'
      '  isa.procodigo,'
      '  (SELECT'
      '      p.pronome'
      '    FROM pro p'
      '    WHERE p.procodigo = isa.procodigo) pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE isa.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo'
      'FROM pro'
      ''
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN sbr'
      '    ON sbr.grpcodigo = pro.grpcodigo'
      ''
      '  JOIN isa'
      '    ON isa.sbrcodigo = sbr.sbrcodigo -- and senadicionavel=1'
      'WHERE pro.tpocodigo IN (0)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo'
      ''
      ''
      'UNION DISTINCT'
      ''
      'SELECT DISTINCT'
      '  pro.procodigo,'
      '  pronome,'
      '  (SELECT'
      '      u.punprecoav'
      '    FROM pun u'
      '    WHERE pro.procodigo = u.procodigo'
      '    AND pro.unicodigo = u.unicodigo) punprecoav,'
      '  pro.grpcodigo,'
      '  CONVERT(@tsicodigo, UNSIGNED) tsicodigo,'
      '  CONVERT('#39'1'#39', char(15)) tsiidentificacao,'
      '  1 isiquantidade,'
      '  3 tipo'
      'FROM pro'
      ''
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      ''
      ''
      'WHERE pro.tpocodigo IN (1)'
      'AND pro.sipcodigo = 1'
      'AND pro.grpcodigo = :grpcodigo'
      ''
      ''
      'ORDER BY 2'
      '*/')
    Left = 208
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tsicodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'grpcodigo'
        Value = nil
      end>
    object Adcprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object Adcpronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object Adcpunprecoav: TFloatField
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object Adcgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object Adctsicodigo: TIntegerField
      FieldName = 'tsicodigo'
      ReadOnly = True
    end
    object Adctsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      ReadOnly = True
      Size = 15
    end
    object Adcisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
    end
    object Adctsiopcao: TStringField
      FieldKind = fkLookup
      FieldName = 'tsiopcao'
      LookupDataSet = tsq
      LookupKeyFields = 'tsqcodigo'
      LookupResultField = 'tsqidentificacao'
      KeyFields = 'isiquantidade'
      Lookup = True
    end
    object Adctipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object dAdc: TUniDataSource
    DataSet = Adc
    Left = 260
    Top = 232
  end
  object tisi: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tisi'
      
        '  (sbrcodigo, tsicodigo, procodigo, isitipo, sfncodigo, sfnid,  ' +
        'obs, isiitem, bprchave, isiquantidade)'
      'VALUES'
      
        '  (:sbrcodigo, :tsicodigo, :procodigo, :isitipo, :sfncodigo, :sf' +
        'nid,  :obs, :isiitem, :bprchave, :isiquantidade)')
    SQLDelete.Strings = (
      'DELETE FROM tisi'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tisi'
      'SET'
      
        '  sbrcodigo = :sbrcodigo, tsicodigo = :tsicodigo, procodigo = :p' +
        'rocodigo, isitipo = :isitipo, sfncodigo = :sfncodigo, sfnid = :s' +
        'fnid, obs = :obs, isiitem = :isiitem, bprchave = :bprchave, isiq' +
        'uantidade=:isiquantidade'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tisi'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT sbrcodigo, tsicodigo, procodigo, isitipo, sfncodigo, sfni' +
        'd, obs, isiitem, bprchave,isiquantidade FROM tisi'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tisi')
    Connection = Conexao
    SQL.Strings = (
      'DROP  TABLE  IF EXISTS tisi;'
      'DROP  TEMPORARY TABLE  IF EXISTS tisi;'
      '   '
      'CREATE  TEMPORARY TABLE IF NOT EXISTS tisi'
      '     ( ID        INT NOT NULL AUTO_INCREMENT'
      '     , sbrcodigo INT'
      '     , tsicodigo INT'
      '     , procodigo INT '
      '     , isitipo   INT'
      '     , sfncodigo int'
      '     , sfnid     int'
      '     , obs       varchar(100)'
      '     , isiitem  int'
      '     , bprchave int'
      '     , isiquantidade int'
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
      '     , isiitem'
      '     , bprchave'
      '     , isiquantidade'
      '  FROM tisi '
      '')
    CachedUpdates = True
    Left = 512
    Top = 328
    object tisisbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object tisitsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object tisiprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object tisiisitipo: TIntegerField
      FieldName = 'isitipo'
    end
    object tisisfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object tisisfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object tisiobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object tisiisiitem: TIntegerField
      FieldName = 'isiitem'
    end
    object tisibprchave: TIntegerField
      FieldName = 'bprchave'
    end
    object tisiisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
      LookupDataSet = act
    end
  end
  object vtpro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 448
    Top = 160
    object vtprosfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object vtprosfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object vtprosbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object vtprodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object vtproobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
  end
  object fIngrediente: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @tsicodigo        = :tsicodigo;'
      'SET @sfnid            = :sfnid;'
      'SET @sfncodigo        = :sfncodigo;'
      '   '
      
        'SET @tsiidentificacao = (SELECT tsiidentificacao FROM tsi WHERE ' +
        'tsicodigo = @tsicodigo);'
      ''
      'SELECT isa.sbrcodigo'
      '     , isa.procodigo'
      '     , pro.pronome '
      '     , CONVERT(@tsicodigo, UNSIGNED) tsicodigo '
      '     , CONVERT(@tsiidentificacao, CHAR(15)) tsiidentificacao'
      '     , 0 tipo'
      '     , cast('#39#39' as char(100)) obs'
      '     , CONVERT(@sfnid, UNSIGNED)      sfnid'
      '     , CONVERT(@sfncodigo, UNSIGNED)  sfncodigo'
      '     , 1 isiquantidade'
      '  FROM isa,pro '
      ' WHERE isa.procodigo = pro.procodigo '
      '   AND sbrcodigo = :sbrcodigo'
      ' ORDER BY pro.pronome')
    CachedUpdates = True
    AfterPost = fIngredienteAfterPost
    BeforeDelete = fIngredienteBeforeDelete
    Left = 448
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tsicodigo'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'sfnid'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'sfncodigo'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'sbrcodigo'
        Value = nil
      end>
    object fIngredientesbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object fIngredienteprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object fIngredientepronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object fIngredientetsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object fIngredientetipo: TIntegerField
      FieldName = 'tipo'
    end
    object fIngredienteobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object fIngredientetsiopcao: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'tsiopcao'
      LookupDataSet = tsi
      LookupKeyFields = 'tsicodigo'
      LookupResultField = 'tsiidentificacao'
      KeyFields = 'tsicodigo'
      Size = 50
      Lookup = True
    end
    object fIngredientesfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object fIngredientesfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object fIngredienteisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
    end
    object fIngredientetsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      Size = 30
    end
  end
  object dfIngrediente: TUniDataSource
    DataSet = fIngrediente
    OnDataChange = dfIngredienteDataChange
    Left = 520
    Top = 224
  end
  object vtfIng: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 520
    Top = 160
    object vtfIngsfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object vtfIngsfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object vtfIngsbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object vtfIngprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vtfIngtsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object vtfIngtipo: TIntegerField
      FieldName = 'tipo'
    end
    object vtfIngquantidade: TIntegerField
      FieldName = 'quantidade'
    end
  end
  object brd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT 0 sel'
      '     , brd.brdcodigo'
      '     , brdidentificacao'
      '  FROM brd'
      ' INNER JOIN brg '
      '         ON brd.brdcodigo = brg.brdcodigo'
      ' WHERE brg.grpcodigo = :grpcodigo and brd.sipcodigo=1')
    CachedUpdates = True
    Left = 448
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'grpcodigo'
        Value = 2
      end>
    object brdsel: TIntegerField
      FieldName = 'sel'
    end
    object brdbrdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'brdcodigo'
    end
    object brdbrdidentificacao: TStringField
      FieldName = 'brdidentificacao'
      Required = True
      Size = 50
    end
  end
  object dbrd: TUniDataSource
    DataSet = brd
    Left = 512
    Top = 280
  end
  object tbrd: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tbrd'
      '  (sfnid, sfncodigo, brdcodigo)'
      'VALUES'
      '  (:sfnid, :sfncodigo, :brdcodigo)')
    SQLDelete.Strings = (
      'DELETE FROM tbrd'
      'WHERE'
      '  sfnid = :Old_sfnid AND sfncodigo = :Old_sfncodigo')
    SQLUpdate.Strings = (
      'UPDATE tbrd'
      'SET'
      '  sfnid = :sfnid, sfncodigo = :sfncodigo, brdcodigo = :brdcodigo'
      'WHERE'
      '  sfnid = :Old_sfnid AND sfncodigo = :Old_sfncodigo')
    SQLLock.Strings = (
      'SELECT * FROM tbrd'
      'WHERE'
      '  sfnid = :Old_sfnid AND sfncodigo = :Old_sfncodigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT sfnid, sfncodigo, brdcodigo FROM tbrd'
      'WHERE'
      '  sfnid = :sfnid AND sfncodigo = :sfncodigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tbrd')
    Connection = Conexao
    SQL.Strings = (
      'DROP TABLE IF EXISTS tbrd;'
      'DROP TEMPORARY TABLE IF EXISTS tbrd;'
      ''
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
      '  FROM tbrd'
      ''
      ''
      '')
    CachedUpdates = True
    Left = 448
    Top = 324
    object tbrdsfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object tbrdsfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object tbrdbrdcodigo: TIntegerField
      FieldName = 'brdcodigo'
    end
  end
  object fsbr: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT sbrcodigo'
      '     , sbridentificacao'
      '     , procodigo'
      '  FROM sbr'
      ' WHERE grpcodigo = :grpcodigo  and sbr.sipcodigo = 1'
      ' ORDER BY sbrordem'
      '        , sbridentificacao'
      '')
    Left = 448
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grpcodigo'
        Value = nil
      end>
    object fsbrsbrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'sbrcodigo'
    end
    object fsbrsbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      Required = True
      Size = 100
    end
    object fsbrprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  object dfsbr: TUniDataSource
    DataSet = fsbr
    Left = 520
    Top = 96
  end
  object dsbr: TUniDataSource
    DataSet = sbr
    Left = 256
    Top = 176
  end
  object dpun: TUniDataSource
    DataSet = pun
    Left = 260
    Top = 128
  end
  object dstito: TUniDataSource
    DataSet = tito
    Left = 368
    Top = 178
  end
  object vtsbradc: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 424
    Top = 424
    object vtsbradcsbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object vtsbradcprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vtsbradcpronome: TStringField
      FieldName = 'pronome'
    end
    object vtsbradctsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object vtsbradctsiopcao: TStringField
      FieldKind = fkLookup
      FieldName = 'tsiopcao'
      LookupDataSet = tsq
      LookupKeyFields = 'tsqcodigo'
      LookupResultField = 'tsqidentificacao'
      KeyFields = 'tsicodigo'
      Lookup = True
    end
    object vtsbradctsitipo: TIntegerField
      DefaultExpression = '1'
      FieldName = 'tsitipo'
    end
  end
  object dvtsbradc: TUniDataSource
    DataSet = vtsbradc
    Left = 512
    Top = 424
  end
  object cfgmcfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT etd.etdapelido'
      '     , if(cfgmodonfe = 1, '#39'Produ'#231#227'o'#39', '#39'Homologa'#231#227'o'#39') modonfe'
      '     , CURRENT_DATE() dtAtual'
      '     , cfgmgou.cfgmgoupedidounificado'
      '     , cfgmgou.cfgmgouproatendimento'
      '     , cfgmgou.cfgmgouproatendimentoparcial'
      '     , cfgmgou.cfgmgoutaxaatendimento'
      '     , cfgmsai.cfgviascomprovante'
      '     , cfgmsai.cfgusaafaturar'
      '     , cfg.flacodigo'
      '     , cfgmsai.cfgdigitosbalanca'
      '     , cfgmsai.cfgdigitosbalanca'
      '     , cfgmsai.cfgetiquetabalanca'
      '     , cfgmgou.cfgmgouttulocomposicao'
      '     , cfgusapdv '
      '     , cfgmcre.cfgcontrolalimite'
      '     , cfgprevisualizarimpressao'
      '     , cfgmgounomelocal'
      '     , cfgmgouqtdmesas'
      '     , cfgmgoufinalizadelivery'
      '     , cfgusaadc'
      '     , cfgnumecertif'
      '     , cfgsenhacertificadoa1'
      '     , cfg.cfgctacaixa'
      '     , cfg.cfgctacodigopix'
      '     ,cfg.cfgusanfc'
      '     , cfgmgouprorefeicao'
      ',cfg.cfgusanfe'
      ',cfgusaeconf'
      ''
      ',cfgusanfe'
      ',cfgusanfc'
      ''
      ''
      ''
      '  FROM cfgmcfg'
      ' INNER JOIN etd ON cfgetdempresa = etd.etdcodigo'
      ' INNER JOIN cfgmnfe ON cfgmcfg.cfgcodigo = cfgmnfe.cfgcodigo'
      ' INNER JOIN cfgmsai ON cfgmcfg.cfgcodigo = cfgmsai.cfgcodigo'
      ' INNER JOIN cfgmcre ON cfgmcfg.cfgcodigo = cfgmcre.cfgcodigo'
      ''
      ' INNER JOIN cfg ON cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      ' INNER JOIN cfgmgou ON cfg.cfgcodigo = cfgmgou.cfgcodigo'
      ' WHERE cfg.flacodigo=:flacodigo'
      '')
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgmcfgetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object cfgmcfgmodonfe: TStringField
      FieldName = 'modonfe'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object cfgmcfgdtAtual: TDateField
      FieldName = 'dtAtual'
      ReadOnly = True
      Required = True
    end
    object cfgmcfgcfgmgoupedidounificado: TIntegerField
      FieldName = 'cfgmgoupedidounificado'
    end
    object cfgmcfgcfgmgouproatendimento: TIntegerField
      FieldName = 'cfgmgouproatendimento'
    end
    object cfgmcfgcfgmgoutaxaatendimento: TFloatField
      FieldName = 'cfgmgoutaxaatendimento'
    end
    object cfgmcfgcfgviascomprovante: TIntegerField
      FieldName = 'cfgviascomprovante'
    end
    object cfgmcfgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object cfgmcfgcfgdigitosbalanca: TIntegerField
      FieldName = 'cfgdigitosbalanca'
    end
    object cfgmcfgcfgetiquetabalanca: TIntegerField
      FieldName = 'cfgetiquetabalanca'
    end
    object cfgmcfgcfgusapdv: TIntegerField
      FieldName = 'cfgusapdv'
    end
    object cfgmcfgcfgmgouttulocomposicao: TStringField
      FieldName = 'cfgmgouttulocomposicao'
      Size = 50
    end
    object cfgmcfgcfgmgouproatendimentoparcial: TIntegerField
      FieldName = 'cfgmgouproatendimentoparcial'
    end
    object cfgmcfgcfgcontrolalimite: TIntegerField
      FieldName = 'cfgcontrolalimite'
    end
    object cfgmcfgcfgprevisualizarimpressao: TIntegerField
      FieldName = 'cfgprevisualizarimpressao'
    end
    object cfgmcfgcfgmgounomelocal: TStringField
      FieldName = 'cfgmgounomelocal'
      Size = 30
    end
    object cfgmcfgcfgmgouqtdmesas: TIntegerField
      FieldName = 'cfgmgouqtdmesas'
    end
    object cfgmcfgcfgmgoufinalizadelivery: TIntegerField
      FieldName = 'cfgmgoufinalizadelivery'
    end
    object cfgmcfgcfgusaadc: TIntegerField
      FieldName = 'cfgusaadc'
    end
    object cfgmcfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 50
    end
    object cfgmcfgcfgsenhacertificadoa1: TStringField
      FieldName = 'cfgsenhacertificadoa1'
      Size = 50
    end
    object cfgmcfgcfgctacaixa: TIntegerField
      FieldName = 'cfgctacaixa'
    end
    object cfgmcfgcfgctacodigopix: TIntegerField
      FieldName = 'cfgctacodigopix'
    end
    object cfgmcfgcfgusanfe: TIntegerField
      FieldName = 'cfgusanfe'
    end
    object cfgmcfgcfgusanfc: TIntegerField
      FieldName = 'cfgusanfc'
    end
    object cfgmcfgcfgusaafaturar: TIntegerField
      FieldName = 'cfgusaafaturar'
    end
    object cfgmcfgcfgmgouprorefeicao: TIntegerField
      FieldName = 'cfgmgouprorefeicao'
    end
    object cfgmcfgcfgusaeconf: TIntegerField
      FieldName = 'cfgusaeconf'
    end
  end
  object fpun: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT pun.puncodigo'
      '     , uni.unisimbolo'
      '     , pun.punprecoav'
      '     , formatvalor(pun.punprecoav,2) vlvenda'
      '  FROM pun'
      ' INNER JOIN uni'
      '         ON pun.unicodigo = uni.unicodigo'
      ' WHERE puncodigo = :puncodigo')
    Left = 448
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
    end
    object StringField1: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'punprecoav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object StringField2: TStringField
      Alignment = taRightJustify
      FieldName = 'vlvenda'
      ReadOnly = True
      Size = 30
    end
  end
  object dfpun: TUniDataSource
    DataSet = fpun
    Left = 516
    Top = 376
  end
  object tro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tro'
      '  (trochave, orcchaveorigem, orcchavedestino)'
      'VALUES'
      
        '  (:trochave, :orcchaveorigem, :orcchavedestino ON DUPLICATE KEY' +
        ' UPDATE orcchaveorigem = :orcchaveorigem, orcchavedestino = :orc' +
        'chavedestino )'
      '')
    SQLDelete.Strings = (
      'DELETE FROM tro'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLUpdate.Strings = (
      'UPDATE tro'
      'SET'
      
        '  trochave = :trochave, orcchaveorigem = :orcchaveorigem, orccha' +
        'vedestino = :orcchavedestino'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLLock.Strings = (
      'SELECT * FROM tro'
      'WHERE'
      '  trochave = :Old_trochave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT trochave, orcchaveorigem, orcchavedestino FROM tro'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tro')
    Connection = Conexao
    SQL.Strings = (
      'SELECT tro.trochave'
      '     , tro.orcchaveorigem'
      '     , tro.orcchavedestino '
      '     , tro.clbcodigo'
      '     , tro.troregistro'
      '  FROM tro')
    CachedUpdates = True
    Left = 156
    Top = 429
    object trotrochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'trochave'
    end
    object troorcchaveorigem: TIntegerField
      FieldName = 'orcchaveorigem'
      Required = True
    end
    object troorcchavedestino: TIntegerField
      FieldName = 'orcchavedestino'
      Required = True
    end
    object troclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object trotroregistro: TDateTimeField
      FieldName = 'troregistro'
    end
  end
  object trfmesa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tro'
      '  (trochave, orcchaveorigem, orcchavedestino)'
      'VALUES'
      
        '  (:trochave, :orcchaveorigem, :orcchavedestino ON DUPLICATE KEY' +
        ' UPDATE orcchaveorigem = :orcchaveorigem, orcchavedestino = :orc' +
        'chavedestino )')
    SQLDelete.Strings = (
      'DELETE FROM tro'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLUpdate.Strings = (
      'UPDATE tro'
      'SET'
      
        '  trochave = :trochave, orcchaveorigem = :orcchaveorigem, orccha' +
        'vedestino = :orcchavedestino'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLLock.Strings = (
      'SELECT * FROM tro'
      'WHERE'
      '  trochave = :Old_trochave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT trochave, orcchaveorigem, orcchavedestino FROM tro'
      'WHERE'
      '  trochave = :Old_trochave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tro')
    DataTypeMap = <
      item
        DBType = 226
        FieldType = ftString
        FieldLength = 30
      end
      item
        DBType = 227
        FieldType = ftString
        FieldLength = 30
      end>
    Connection = Conexao
    SQL.Strings = (
      'SET @Orcchave  = :orcchave;'
      'SET @Titutlo   = :TituloOperador;'
      ''
      'SELECT DISTINCT'
      '       orc.orcchave '
      '    -- , CONCAT(@Titutlo,'#39' '#39',orc.orcmesa) mesa'
      '     , CONVERT(orc.orcmesa,  CHAR) mesa'
      '     , orc.orcmesa'
      '     , 0 sel'
      '  FROM orc'
      ' INNER JOIN ito'
      '         ON orc.orcchave = ito.orcchave'
      '        AND ito.stocodigo = 2    '
      ' WHERE orc.moccodigo = 5'
      '   AND orc.orcdataencerr IS NULL'
      '   AND orc.stocodigo = 2'
      '   AND orc.orcchave != @Orcchave'
      '  ORDER BY orc.orcmesa')
    CachedUpdates = True
    Left = 188
    Top = 381
    ParamData = <
      item
        DataType = ftInteger
        Name = 'orcchave'
        Value = 0
      end
      item
        DataType = ftUnknown
        Name = 'TituloOperador'
        Value = nil
      end>
    object trfmesaorcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'orcchave'
    end
    object trfmesamesa: TStringField
      FieldName = 'mesa'
      Size = 30
    end
    object trfmesaorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object trfmesasel: TIntegerField
      FieldName = 'sel'
    end
  end
  object ttro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ttro'
      '  (ID, orcchave, mesa, orcmesa,clbcodigo,registro)'
      'VALUES'
      '  (:ID, :orcchave, :mesa, :orcmesa,:clbcodigo,:registro)')
    SQLDelete.Strings = (
      'DELETE FROM ttro'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE ttro'
      'SET'
      
        '  ID = :ID, orcchave = :orcchave, mesa = :mesa, orcmesa = :orcme' +
        'sa, clbcodigo=:clbcodigo, registro=:registro'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM ttro'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, orcchave, mesa, orcmesa, clbcodigo, registro FROM ttr' +
        'o'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ttro')
    Connection = Conexao
    SQL.Strings = (
      ''
      'DROP TEMPORARY TABLE IF EXISTS ttro;'
      '   '
      'CREATE TEMPORARY TABLE if not exists ttro'
      '     ( ID INT NOT NULL AUTO_INCREMENT'
      '     , orcchave  int'
      '     , mesa      VARCHAR(20)'
      '     , orcmesa   int'
      '     , clbcodigo int'
      '     , registro datetime'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , orcchave '
      '     , mesa'
      '     , orcmesa'
      '     , clbcodigo'
      '     , registro '
      '  FROM ttro;'
      ''
      '/*'
      ''
      ''
      ''
      'DROP TABLE IF EXISTS ttro;'
      '   '
      'CREATE TABLE if not exists ttro'
      '     ( ID INT NOT NULL AUTO_INCREMENT'
      '     , orcchave  int'
      '     , mesa      VARCHAR(20)'
      '     , orcmesa   int'
      '     , clbcodigo int'
      '     , registro datetime'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , orcchave '
      '     , mesa'
      '     , orcmesa'
      '     , clbcodigo'
      '     , registro '
      '  FROM ttro; '
      ''
      ''
      '*/'
      '')
    CachedUpdates = True
    Left = 187
    Top = 428
    object ttroID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object ttroorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object ttromesa: TStringField
      FieldName = 'mesa'
    end
    object ttroorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object ttroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ttroregistro: TDateTimeField
      FieldName = 'registro'
    end
  end
  object dtrfmesa: TUniDataSource
    DataSet = trfmesa
    Left = 244
    Top = 381
  end
  object dttro: TUniDataSource
    DataSet = ttfm
    Left = 220
    Top = 477
  end
  object TransfereMesa: TUniStoredProc
    StoredProcName = 'TransfereMesa'
    Connection = Conexao
    Transaction = UniTransaction
    Options.ReturnParams = True
    Left = 712
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pOrcChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pMensagem'
        ParamType = ptOutput
        Size = 255
        Value = nil
      end>
    CommandStoredProcName = 'TransfereMesa'
  end
  object rel: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT mre.bplcodigo'
      '              , rel.reltitulo'
      '              , rel.relnomearquivo'
      '              , rel.relarquivo'
      '              , rel.relidentificacao'
      '              , bpl.bplfranome'
      '              , rel.relcodigo'
      'FROM mre'
      '  INNER JOIN rel'
      '    ON mre.relcodigo = rel.relcodigo'
      '  INNER JOIN bpl'
      '    ON mre.bplcodigo = bpl.bplcodigo'
      '  LEFT JOIN rau'
      '    ON rel.relcodigo = rau.relcodigo'
      'WHERE bpl.bplfranome = :franome'
      'AND rel.relsituacao = 1'
      'AND rau.rauativo = 1'
      
        'AND IF(:clbcodigo = 1, rel.relcodigo, rau.clbcodigo = :clbcodigo' +
        ')'
      'ORDER BY rel.relidentificacao')
    Left = 456
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'franome'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'clbcodigo'
        Value = nil
      end>
    object relbplcodigo: TIntegerField
      FieldName = 'bplcodigo'
      Required = True
    end
    object relreltitulo: TStringField
      FieldName = 'reltitulo'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object relrelnomearquivo: TStringField
      FieldName = 'relnomearquivo'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object relrelarquivo: TBlobField
      FieldName = 'relarquivo'
      ReadOnly = True
    end
    object relrelidentificacao: TStringField
      FieldName = 'relidentificacao'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object relbplfranome: TStringField
      FieldName = 'bplfranome'
      ReadOnly = True
    end
    object relrelcodigo: TStringField
      FieldName = 'relcodigo'
      ReadOnly = True
      Required = True
      Size = 11
    end
  end
  object titem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO titem'
      '  (ID, procodigo, qtde, obs, itototalav, itochave)'
      'VALUES'
      '  (:ID, :procodigo, :qtde, :obs, :itototalav, :itochave)')
    SQLDelete.Strings = (
      'DELETE FROM titem'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE titem'
      'SET'
      
        '  ID = :ID, procodigo = :procodigo, qtde = :qtde, obs = :obs, it' +
        'ototalav = :itototalav, itochave = :itochave'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM titem'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT ID, procodigo, qtde, obs, itototalav, itochave FROM titem'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM titem')
    Connection = Conexao
    SQL.Strings = (
      'DROP TEMPORARY TABLE IF EXISTS titem;'
      'DROP TABLE IF EXISTS titem;'
      ''
      'CREATE TEMPORARY TABLE titem'
      '     ( ID         INT NOT NULL AUTO_INCREMENT'
      '     , procodigo  INT'
      '     , qtde       DECIMAL(10,3)'
      '     , obs        VARCHAR(20)'
      '     , itototalav FLOAT'
      '     , itochave   INT'
      '     , itoacrescimoav FLOAT'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , procodigo '
      '     , '#39#39' pronome'
      '     , qtde   '
      '     , obs'
      '     , itototalav'
      '     , itoacrescimoav'
      '     , itochave'
      '  FROM titem;'
      ''
      ''
      '')
    CachedUpdates = True
    Left = 319
    Top = 300
    object titemID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object titemprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object titempronome: TStringField
      FieldName = 'pronome'
      Size = 65530
    end
    object titemqtde: TFloatField
      FieldName = 'qtde'
      DisplayFormat = '#,###0.000'
    end
    object titemobs: TStringField
      FieldName = 'obs'
    end
    object titemitototalav: TFloatField
      FieldName = 'itototalav'
      DisplayFormat = '#,##0.00'
    end
    object titemitoacrescimoav: TFloatField
      FieldName = 'itoacrescimoav'
    end
    object titemitochave: TIntegerField
      FieldName = 'itochave'
    end
  end
  object dtitem: TUniDataSource
    DataSet = titem
    Left = 368
    Top = 301
  end
  object etd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT etd.etdcodigo'
      '     , etd.etddoc1'
      '     , etd.etdidentificacao'
      '     , edr.edrcodigo'
      '     , edr.edrrua'
      '     , edr.edrnumero'
      '     , edr.edrbairro'
      '     , etf.etftelefone'
      '     , etd.tsecodigo'
      '     , edr.edrinscest'
      '     , edr.edritem'
      '     , etl.etldescontopadrao'
      'FROM etd'
      '  LEFT JOIN edr'
      '    ON etd.etdcodigo = edr.etdcodigo'
      '    AND edr.tedcodigo = 1'
      '  LEFT JOIN etf'
      '    ON etd.etdcodigo = etf.etdcodigo'
      '    AND etf.ttfcodigo = 1'
      '  LEFT JOIN ted'
      '    ON edr.tedcodigo = ted.tedcodigo'
      ''
      '  LEFT JOIN etl'
      '    ON etl.etdcodigo = etd.etdcodigo'
      ''
      'WHERE etd.etdcodigo = :etdcodigo')
    Left = 320
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etdedrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Size = 50
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Size = 10
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Size = 60
    end
    object etdetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
    end
    object etdtsecodigo: TIntegerField
      FieldName = 'tsecodigo'
      Required = True
    end
    object etdedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
    end
    object etdedritem: TIntegerField
      FieldName = 'edritem'
      ReadOnly = True
    end
    object etdetldescontopadrao: TFloatField
      FieldName = 'etldescontopadrao'
    end
  end
  object detd: TUniDataSource
    DataSet = etd
    Left = 360
    Top = 368
  end
  object trfi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      ''
      'DROP temporary TABLE IF EXISTS trfi;'
      '   '
      'CREATE temporary TABLE trfi'
      '     ( ID         INT NOT NULL AUTO_INCREMENT'
      '     , etdcodigo  INT NOT NULL'
      '     , mdacodigo  INT NOT NULL'
      '     , tfdcodigo  INT NOT NULL'
      '     , numparc    INT NOT NULL'
      '     , dtvecto    DATE NOT NULL '
      '     , vlrparcela DECIMAL(12,2)'
      '     , numero     varchar(20)'
      '     , PRIMARY KEY (ID)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , etdcodigo'
      '     , mdacodigo'
      '     , tfdcodigo'
      '     , numparc'
      '     , dtvecto '
      '     , vlrparcela'
      '     , numero'
      '  FROM trfi;'
      '')
    CachedUpdates = True
    BeforeScroll = trfiBeforeScroll
    Left = 584
    Top = 401
    object trfiID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object trfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object trfimdacodigo: TIntegerField
      FieldName = 'mdacodigo'
      Required = True
    end
    object trfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
      Required = True
    end
    object trfinumparc: TIntegerField
      FieldName = 'numparc'
      Required = True
    end
    object trfidtvecto: TDateField
      FieldName = 'dtvecto'
      OnSetText = trfidtvectoSetText
      EditMask = '!99/99/0000;1;_'
    end
    object trfivlrparcela: TFloatField
      FieldName = 'vlrparcela'
      DisplayFormat = '#,##0.00'
    end
    object trfinumero: TStringField
      FieldName = 'numero'
    end
  end
  object dtrfi: TUniDataSource
    DataSet = trfi
    Left = 632
    Top = 409
  end
  object FechaMesa: TUniStoredProc
    StoredProcName = 'FechaMesa'
    SQL.Strings = (
      
        'CALL FechaMesa(:pOrcChave, :pTipo, :pNome, :pFlaCodigo, :pClbCod' +
        'igo, :pCtaCodigo, :pLtePrincipal, :pLteJuros, :pLteDesconto, :pL' +
        'teMulta, :pLteTroco, :pRefeicao, :pTipoTaxa, :pTaxa, :pTipoFecha' +
        'mento, @pConfirma, @pMensagem, @pMesChave, @pLteChave); SELECT C' +
        'AST(@pConfirma AS SIGNED) AS '#39'@pConfirma'#39', @pMensagem AS '#39'@pMens' +
        'agem'#39', CAST(@pMesChave AS SIGNED) AS '#39'@pMesChave'#39', CAST(@pLteCha' +
        've AS SIGNED) AS '#39'@pLteChave'#39)
    Connection = Conexao
    Transaction = UniTransaction
    Options.ReturnParams = True
    AutoCalcFields = False
    ObjectView = True
    Left = 704
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pOrcChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pFlaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pCtaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLtePrincipal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteJuros'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteDesconto'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteMulta'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteTroco'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pRefeicao'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoTaxa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pTaxa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoFechamento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pMensagem'
        ParamType = ptOutput
        Size = 65000
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pMesChave'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pLteChave'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'FechaMesa'
  end
  object tdtl: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      ''
      'DROP TABLE IF EXISTS tdtl;  '
      'DROP TEMPORARY  TABLE IF EXISTS tdtl;'
      ''
      'CREATE TEMPORARY TABLE IF not  EXISTS tdtl '
      '     ( ID        INT(11) NOT NULL AUTO_INCREMENT'
      '     , dtlvalor  FLOAT(9, 2) NOT NULL DEFAULT 0.00'
      '     , mdacodigo INT(11) NOT NULL  '
      '     , ccxchave  INT(11) NOT NULL  '
      '     , dtlregistro  datetime NOT NULL  '
      ''
      '     , PRIMARY KEY (ID)'
      '     ) ENGINE = INNODB;'
      ''
      'SELECT ID        '
      '     , dtlvalor  '
      '     , mdacodigo  '
      '     , ccxchave '
      '     , dtlregistro'
      '  FROM tdtl'
      ''
      ''
      '')
    CachedUpdates = True
    Left = 584
    Top = 144
    object tdtlID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tdtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
      Required = True
    end
    object tdtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
      Required = True
    end
    object tdtlccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object tdtldtlregistro: TDateTimeField
      FieldName = 'dtlregistro'
    end
  end
  object dtdtl: TUniDataSource
    DataSet = tdtl
    Left = 640
    Top = 144
  end
  object olt: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT  distinct'
      '       olt.oltchave'
      '     , olt.oltidentificacao'
      '     , lte.ctacodigo '
      '     , lte.lteregistro'
      '     , lte.lteprincipal'
      '     , lte.ltedesconto     '
      '     , lte.ltetotal'
      '     , olttipo tipobaixa'
      '     , olt.orcchave'
      '     , lte.ltechave'
      '     , if(ltesituacao=0,'#39'Normal'#39','#39'Cancelado'#39') ltesituacao'
      '  FROM olt'
      ' INNER JOIN lte ON olt.ltechave = lte.ltechave'
      ' INNER JOIN dtl ON lte.ltechave = dtl.ltechave'
      ' WHERE (olt.orcchave = :orcchave)'
      ''
      '')
    Left = 1096
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object oltoltchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'oltchave'
    end
    object oltoltidentificacao: TStringField
      FieldName = 'oltidentificacao'
    end
    object oltctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      ReadOnly = True
    end
    object oltlteregistro: TDateTimeField
      FieldName = 'lteregistro'
      ReadOnly = True
    end
    object oltlteprincipal: TFloatField
      FieldName = 'lteprincipal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object oltltedesconto: TFloatField
      FieldName = 'ltedesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object oltltetotal: TFloatField
      FieldName = 'ltetotal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object olttipobaixa: TIntegerField
      FieldName = 'tipobaixa'
      ReadOnly = True
      Required = True
    end
    object oltorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object oltltechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ltechave'
      ReadOnly = True
    end
    object oltltesituacao: TStringField
      FieldName = 'ltesituacao'
      Size = 30
    end
  end
  object itoparcial: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT ito.procodigo           -- chave produto'
      
        '     , IF(sfn.sfncodigo IS NULL, pro.pronome, CONCAT(pro.pronome' +
        'reduzido,'#39' '#39',if(UPPER(uni.uninome)='#39'UNIDADE'#39','#39#39',uni.uninome),'#39' (' +
        'Sb: '#39',formatValor(sfn.sfnquantidade,0),'#39')'#39')) pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.orcchave'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      
        '  LEFT JOIN sfn ON pro.procodigo = sfn.procodigo AND uni.unicodi' +
        'go = sfn.unicodigo'
      'WHERE ito.orcchave = :orcchave'
      ' ORDER BY ito.itoitem')
    Left = 32
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoparcialprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itoparcialpronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Size = 150
    end
    object itoparcialitoquantidade: TFloatField
      FieldName = 'itoquantidade'
      Required = True
    end
    object itoparcialunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itoparcialitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoparcialitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoparcialitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itoparcialorcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
  object ditoparc: TUniDataSource
    DataSet = itoparcial
    Left = 112
    Top = 440
  end
  object tche: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'DROP TEMPORARY TABLE IF EXISTS tche;'
      ''
      'CREATE TEMPORARY TABLE IF NOT EXISTS tche ('
      '  chechave int(11) NOT NULL AUTO_INCREMENT'
      ', cheemissao date DEFAULT NULL'
      ', chevencimento date DEFAULT NULL'
      ', chenumero varchar(10) DEFAULT NULL'
      ', checonta varchar(15) DEFAULT NULL'
      ', cheagencia varchar(10) DEFAULT NULL'
      ', bcocodigo varchar(3) DEFAULT NULL'
      ', chenome varchar(50) DEFAULT NULL'
      ', chedocumento varchar(30) DEFAULT NULL'
      ', chetelefone varchar(20) DEFAULT NULL'
      ', chevalor float(9, 2) DEFAULT 0.00'
      ', etdcodigo int(11) NOT NULL DEFAULT 0'
      ', tescodigo int(11) NOT NULL DEFAULT 0'
      
        ', tchcodigo int(11) DEFAULT NULL COMMENT '#39'C'#243'digo do talon'#225'rio ao' +
        ' qual o cheque pr'#243'prio pertence.'#39
      ', PRIMARY KEY (chechave)'
      ')'
      'ENGINE = INNODB'
      'COMMENT = '#39'Registro de Cheques - Tempor'#225'rio'#39';'
      ''
      'SELECT tche.chechave'
      '     , tche.cheemissao'
      '     , tche.chevencimento'
      '     , tche.chenumero'
      '     , tche.checonta'
      '     , tche.cheagencia'
      '     , tche.bcocodigo'
      '     , tche.chenome'
      '     , tche.chedocumento'
      '     , tche.chetelefone'
      '     , tche.chevalor'
      '     , tche.etdcodigo'
      '     , tche.tescodigo'
      '     , tche.tchcodigo'
      '  FROM tche;')
    Left = 584
    Top = 264
  end
  object dtche: TUniDataSource
    DataSet = tche
    Left = 632
    Top = 264
  end
  object trdc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'DROP TABLE IF EXISTS trdc;'
      'DROP TEMPORARY TABLE IF EXISTS trdc;'
      ' '
      ''
      'CREATE  TEMPORARY TABLE trdc ('
      '    rdcchave    int(11)     NOT NULL AUTO_INCREMENT'
      
        '  , rdcvalor    float(9, 3) NOT NULL DEFAULT 0.000 COMMENT '#39'valo' +
        'r da operacao de cartao'#39
      
        '  , rdcnrauto   varchar(50) DEFAULT NULL COMMENT '#39'numero da auto' +
        'riza'#231'ao gerada pela operadora de cartao'#39
      
        '  , rdcvia1     varchar(1000) DEFAULT NULL COMMENT '#39'numero da au' +
        'toriza'#231'ao gerada pela operadora de cartao'#39
      
        '  , rdcvalorope float(9, 3) NOT NULL DEFAULT 0.000 COMMENT '#39'valo' +
        'r processado no retorno da operador'#39
      '  , rdcsituacao int(11)     NOT NULL DEFAULT 0'
      
        '  , rdcdata     date        DEFAULT NULL COMMENT '#39'data do regist' +
        'ro'#39
      '  , adccodigo   int(11)     NOT NULL'
      
        '  , rdcparcelas int(3)      NOT NULL DEFAULT 1 COMMENT '#39'Quantida' +
        'de de parcelas da transa'#231#227'o. Default 1 pois cart. d'#233'bito n'#227'o tem' +
        ' parcelas.'#39
      '  , tescodigo   int(11)     NOT NULL DEFAULT 0'
      '  , mdacodigo   INT(2)      NOT NULL DEFAULT 0'
      '  , bdccodigo   int(11)     NOT NULL DEFAULT 0'
      '  , PRIMARY KEY (rdcchave)'
      '  )'
      'ENGINE = INNODB'
      'COMMENT = '#39'Registro dos detalhes da opera'#231'ao com cart'#227'o'#39';'
      ''
      'SELECT trdc.rdcchave'
      '     , trdc.rdcvalor'
      '     , trdc.rdcnrauto'
      '     , trdc.rdcvia1     '
      '     , trdc.rdcvalorope'
      '     , trdc.rdcsituacao'
      '     , trdc.rdcdata'
      '     , trdc.adccodigo'
      '     , trdc.rdcparcelas'
      '     , trdc.tescodigo'
      '     , trdc.mdacodigo'
      '     , trdc.bdccodigo'
      '  FROM trdc;')
    Left = 584
    Top = 328
    object trdcrdcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rdcchave'
    end
    object trdcrdcvalor: TFloatField
      FieldName = 'rdcvalor'
      Required = True
    end
    object trdcrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 50
    end
    object trdcrdcvalorope: TFloatField
      FieldName = 'rdcvalorope'
      Required = True
    end
    object trdcrdcsituacao: TIntegerField
      FieldName = 'rdcsituacao'
      Required = True
    end
    object trdcrdcdata: TDateField
      FieldName = 'rdcdata'
    end
    object trdcadccodigo: TIntegerField
      FieldName = 'adccodigo'
      Required = True
    end
    object trdcrdcparcelas: TIntegerField
      FieldName = 'rdcparcelas'
      Required = True
    end
    object trdctescodigo: TIntegerField
      FieldName = 'tescodigo'
      Required = True
    end
    object trdcmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
      Required = True
    end
    object trdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object trdcrdcvia1: TStringField
      FieldName = 'rdcvia1'
      Size = 1000
    end
  end
  object dtrdc: TUniDataSource
    DataSet = trdc
    Left = 632
    Top = 329
  end
  object dConsulta: TUniDataSource
    DataSet = Consulta
    Left = 256
    Top = 15
  end
  object msaocupada: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT orcmesa'
      '     , stocodigo'
      '     , item'
      '     , orcchave'
      '     , orcimpressao'
      ''
      '  FROM (SELECT orc.orcmesa'
      '             , orc.stocodigo     '
      '             , COUNT(ito.orcchave) item'
      '             , orc.orcchave'
      '             , orcimpressao'
      '          FROM orc'
      '         INNER JOIN ito ON orc.orcchave = ito.orcchave'
      '         WHERE orc.orcmesa > 0'
      '           AND orc.orcdataencerr IS NULL'
      '           AND orc.moccodigo = 5'
      '           AND orc.stocodigo in (1, 2, 5)'
      '          GROUP BY orc.orcchave) torc'
      'UNION ALL'
      ''
      'SELECT unmmesa orcmesa'
      '     , 99      stocodigo'
      '     , 1       item'
      '     , unm.orcchave '
      '     , orcimpressao'
      '  FROM unm'
      ' INNER JOIN orc ON unm.orcchave = orc.orcchave'
      ' WHERE orc.stocodigo in (1,2,5)'
      ''
      'ORDER by orcmesa')
    Left = 512
    Top = 16
    object msaocupadaorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object msaocupadastocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object msaocupadaitem: TIntegerField
      FieldName = 'item'
      ReadOnly = True
      Required = True
    end
    object msaocupadaorcchave: TIntegerField
      FieldName = 'orcchave'
      ReadOnly = True
      Required = True
    end
    object msaocupadaorcimpressao: TIntegerField
      FieldName = 'orcimpressao'
    end
  end
  object orcdlv: TUniQuery
    SQLLock.Strings = (
      'SELECT * FROM orc'
      'WHERE'
      '  orcchave = :Old_orcchave'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT orcchave, stocodigo, moccodigo, orctotalav, orctelefone F' +
        'ROM orc'
      'WHERE'
      '  orcchave = :Old_orcchave')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM orc')
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       orc.orcchave'
      '     , orc.etdcodigo   '
      '     , etd.etdidentificacao'
      '     , orc.orctelefone'
      '     , (SELECT MIN(imm.immhorapedido) '
      '          FROM imm '
      '         INNER JOIN ito '
      '                 ON imm.itochave = ito.itochave'
      '         WHERE ito.orcchave = orc.orcchave) immhorapedido'
      '     , (SELECT MAX(imm.immhoraentrega) '
      '          FROM imm '
      '         INNER JOIN ito '
      '                 ON imm.itochave = ito.itochave'
      '         WHERE ito.orcchave = orc.orcchave) immhoraentrega'
      '     , orc.moccodigo'
      '     , orc.stocodigo '
      
        '     , CONCAT(edr.edrrua,'#39', '#39',edr.edrnumero, IF(LENGTH(edr.edrco' +
        'mple)>0, CONCAT('#39' - '#39',edr.edrcomple),'#39#39')) endereco'
      '     , edr.edrbairro'
      '     , CONCAT(cdd.cddnome,'#39' / '#39',ufssigla) cidade'
      '     , etg.etdidentificacao etgidentificacao'
      '     , orc.orctotalav'
      '     , imm.immnumepedido'
      '     , sto.stoidentificacao'
      '     , '#39'0'#39' sel'
      '     , orcobs'
      '  FROM orc'
      ' INNER JOIN ito ON orc.orcchave = ito.orcchave'
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      '  LEFT JOIN etd etg ON imm.etdcodigoent = etg.etdcodigo'
      ' INNER JOIN moc ON orc.moccodigo = moc.moccodigo'
      ' INNER JOIN sto ON orc.stocodigo = sto.stocodigo'
      ' INNER JOIN etd ON orc.etdcodigo = etd.etdcodigo'
      ' INNER JOIN edr on orc.edrcodigo = edr.edrcodigo '
      ' INNER JOIN cdd ON edr.cddcodigo = cdd.cddcodigo'
      ' INNER JOIN ufs ON edr.ufscodigo = ufs.ufscodigo'
      
        '  WHERE moc.moccodigo = 7 and orc.etdcodigo<>0 AND imm.cznchave=' +
        ':cznchave'
      'and orc.stocodigo NOT IN (3,8,9)'
      ' ORDER by imm.cznchave, imm.immnumepedido')
    CachedUpdates = True
    Left = 712
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object orcdlvorcchave: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'orcchave'
      ReadOnly = True
    end
    object orcdlvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcdlvetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Size = 60
    end
    object orcdlvorctelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'orctelefone'
      ReadOnly = True
    end
    object orcdlvimmhorapedido: TDateTimeField
      DisplayLabel = 'Hora Pedido'
      FieldName = 'immhorapedido'
      ReadOnly = True
    end
    object orcdlvimmhoraentrega: TDateTimeField
      DisplayLabel = 'Hora Entrega'
      FieldName = 'immhoraentrega'
      ReadOnly = True
    end
    object orcdlvmoccodigo: TIntegerField
      FieldName = 'moccodigo'
      ReadOnly = True
    end
    object orcdlvstocodigo: TIntegerField
      FieldName = 'stocodigo'
      ReadOnly = True
    end
    object orcdlvedrbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'edrbairro'
      ReadOnly = True
      Size = 60
    end
    object orcdlvcidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      ReadOnly = True
      Size = 56
    end
    object orcdlvetgidentificacao: TStringField
      DisplayLabel = 'Clb. Entrega'
      FieldName = 'etgidentificacao'
      ReadOnly = True
      Size = 60
    end
    object orcdlvorctotalav: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'orctotalav'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object orcdlvimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
      ReadOnly = True
    end
    object orcdlvsel: TStringField
      FieldName = 'sel'
      Size = 1
    end
    object orcdlvorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object orcdlvstoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object orcdlvendereco: TStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 1105
    end
  end
  object dorcdlv: TUniDataSource
    DataSet = orcdlv
    OnDataChange = dorcdlvDataChange
    Left = 712
    Top = 328
  end
  object itodlv: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT ito.procodigo           -- chave produto'
      
        '     , IF(sfn.sfncodigo IS NULL, pro.pronome, CONCAT(pro.pronome' +
        'reduzido,'#39' '#39',if(UPPER(uni.uninome)='#39'UNIDADE'#39','#39#39',uni.uninome),'#39' (' +
        'Sb: '#39',formatValor(sfn.sfnquantidade,0),'#39')'#39')) pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.clbconferencia'
      '     ,  ito.itoacrescimoav'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      'WHERE ito.orcchave = :orcchave'
      ' ORDER BY ito.itoitem')
    Left = 712
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itodlvprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
      Required = True
    end
    object itodlvpronome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pronome'
      ReadOnly = True
      Size = 150
    end
    object itodlvitoquantidade: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'itoquantidade'
      Required = True
    end
    object itodlvunisimbolo: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itodlvitovalorav: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itodlvitototalav: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itodlvitoitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itoitem'
      Required = True
    end
    object itodlvclbconferencia: TIntegerField
      FieldName = 'clbconferencia'
    end
    object itodlvitoacrescimoav: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'itoacrescimoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object ditodlv: TUniDataSource
    DataSet = itodlv
    Left = 712
    Top = 432
  end
  object Item: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT ito.itoitem             -- item do orcamento'
      '     , ito.procodigo           -- chave produto'
      
        '     , IF(sfn.sfncodigo IS NULL, pro.pronome, CONCAT(pro.pronome' +
        'reduzido,'#39' '#39',if(UPPER(uni.uninome)='#39'UNIDADE'#39','#39#39',uni.uninome),'#39' (' +
        'Sb: '#39',formatValor(sfn.sfnquantidade,0),'#39')'#39')) pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.itochave = :itochave'
      '   AND ito.stocodigo not in (1,3,4,5,8,9)')
    Left = 352
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object Itemitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object Itemprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object Itempronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Size = 150
    end
    object Itemitoquantidade: TFloatField
      FieldName = 'itoquantidade'
      Required = True
    end
    object Itemunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object Itemitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Itemitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
  end
  object ItemBorda: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itoitem             -- item do orcamento'
      '     , brd.brdidentificacao    -- borda'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      '  LEFT JOIN bri ON ito.itochave = bri.itochave'
      '  LEFT JOIN brd ON bri.brdcodigo = brd.brdcodigo'
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.itochave = :itochave'
      '   AND brd.brdidentificacao IS NOT NULL '
      '   AND ito.stocodigo not in (1,3,4,5,8,9)'
      '   AND bri.briincluir = 1'
      ' ORDER BY  brd.brdidentificacao')
    Left = 416
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object ItemBordaitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object ItemBordabrdidentificacao: TStringField
      FieldName = 'brdidentificacao'
      ReadOnly = True
      Size = 50
    end
  end
  object ItemSabor: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itoitem             -- item do orcamento'
      '     , sbr.sbridentificacao    -- saberes'
      '     , sbi.sbichave'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      '  LEFT JOIN bri ON ito.itochave = bri.itochave'
      '  LEFT JOIN brd ON bri.brdcodigo = brd.brdcodigo'
      '  LEFT JOIN sbi ON ito.itochave = sbi.itochave'
      '  LEFT JOIN sbr ON sbi.sbrcodigo = sbr.sbrcodigo'
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.itochave = :itochave'
      '   AND sbr.sbridentificacao IS NOT NULL'
      '   AND ito.stocodigo not in (1,3,4,5,8,9)'
      ' ORDER BY sbr.sbridentificacao;')
    Left = 488
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object ItemSaboritoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object ItemSaborsbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      ReadOnly = True
      Size = 100
    end
    object ItemSaborsbichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'sbichave'
      ReadOnly = True
    end
  end
  object ItemIngredienteFra: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itoitem         '
      '     , isi.procodigo'
      '     , isi.isitipo'
      '     , sbi.sbiobs'
      '     , ing.pronome ingnome'
      '     , tsi.tsiidentificacao'
      '     , isi.isiquantidade'
      '     , pun.punprecoav'
      '  FROM ito'
      
        ' INNER JOIN pro ON ito.procodigo = pro.procodigo and pro.sipcodi' +
        'go=1'
      ' INNER JOIN sbi ON ito.itochave = sbi.itochave'
      ' INNER JOIN isi ON sbi.sbichave = isi.sbichave'
      ''
      ' INNER JOIN pun ON isi.procodigo = pun.procodigo '
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      '  LEFT JOIN bri ON ito.itochave = bri.itochave'
      '  LEFT JOIN brd ON bri.brdcodigo = brd.brdcodigo'
      '  LEFT JOIN sbr ON sbi.sbrcodigo = sbr.sbrcodigo'
      ''
      '  left JOIN tsi ON isi.tsicodigo = tsi.tsicodigo '
      '  LEFT JOIN pro ing ON isi.procodigo = ing.procodigo'
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.itochave = :itochave'
      '   AND sbi.sbichave = :sbichave'
      '   AND isi.procodigo IS NOT null'
      '   AND ing.pronome IS NOT NULL '
      
        '   AND ((isi.isitipo = 0 AND isi.tsicodigo !=3) OR isi.isitipo =' +
        ' 1)   '
      '   AND ito.stocodigo not in (1,3,4,5,8,9)'
      ' ORDER BY ing.pronome;')
    Left = 552
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sbichave'
        Value = nil
      end>
    object ItemIngredienteFraitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object ItemIngredienteFraprocodigo: TIntegerField
      FieldName = 'procodigo'
      ReadOnly = True
    end
    object ItemIngredienteFraisitipo: TIntegerField
      FieldName = 'isitipo'
      ReadOnly = True
    end
    object ItemIngredienteFrasbiobs: TStringField
      FieldName = 'sbiobs'
      ReadOnly = True
      Size = 255
    end
    object ItemIngredienteFraingnome: TStringField
      FieldName = 'ingnome'
      ReadOnly = True
      Size = 150
    end
    object ItemIngredienteFratsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      ReadOnly = True
      Size = 15
    end
    object ItemIngredienteFraisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
    end
    object ItemIngredienteFrapunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
  end
  object ItemIngredienteNormal: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT distinct ito.itoitem           -- item do orcamento'
      '     , ito.procodigo         -- chave produto'
      '     , isi.isitipo'
      '     , sbi.sbiobs'
      '     , ing.pronome ingnome'
      '     , tsi.tsiidentificacao'
      '     , isi.isiquantidade'
      '     , pun.punprecoav'
      '  FROM ito'
      
        ' INNER JOIN pro ON ito.procodigo = pro.procodigo and pro.sipcodi' +
        'go=1'
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      ' INNER JOIN sbi ON ito.itochave = sbi.itochave'
      ' INNER JOIN isi ON sbi.sbichave = isi.sbichave'
      ' INNER JOIN tsi ON isi.tsicodigo = tsi.tsicodigo '
      ' INNER JOIN pro ing ON isi.procodigo = ing.procodigo'
      'INNER JOIN pun ON isi.procodigo = pun.procodigo '
      ' WHERE ito.orcchave  = :orcchave '
      '    AND ito.itochave = :itochave '
      '   AND ito.stocodigo not in (1,3,4,5,8,9)'
      ' ORDER BY ing.pronome')
    Left = 696
    Top = 519
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object ItemIngredienteNormalitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object ItemIngredienteNormalprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object ItemIngredienteNormalisitipo: TIntegerField
      FieldName = 'isitipo'
      ReadOnly = True
      Required = True
    end
    object ItemIngredienteNormalsbiobs: TStringField
      FieldName = 'sbiobs'
      ReadOnly = True
      Size = 255
    end
    object ItemIngredienteNormalingnome: TStringField
      FieldName = 'ingnome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object ItemIngredienteNormaltsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      ReadOnly = True
      Size = 15
    end
    object ItemIngredienteNormalisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
    end
    object ItemIngredienteNormalpunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
  end
  object unm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT unm.unmchave'
      '     , unm.orcchave'
      '     , unm.unmmesa'
      '     , orc.orcmesa '
      '  FROM unm'
      ' INNER JOIN orc ON unm.orcchave = orc.orcchave'
      ' WHERE unm.unmmesa = :unimesa'
      '   AND orc.stocodigo IN (1,2,5);')
    CachedUpdates = True
    Left = 32
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unimesa'
        Value = nil
      end>
    object unmunmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'unmchave'
    end
    object unmorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object unmunmmesa: TIntegerField
      FieldName = 'unmmesa'
      Required = True
    end
    object unmorcmesa: TIntegerField
      FieldName = 'orcmesa'
      ReadOnly = True
    end
  end
  object vtmesa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 496
    object vtmesaid: TIntegerField
      FieldName = 'id'
    end
    object vtmesamesa: TStringField
      FieldName = 'mesa'
    end
    object vtmesasel: TIntegerField
      FieldName = 'sel'
    end
  end
  object dvtmesa: TUniDataSource
    DataSet = vtmesa
    Left = 152
    Top = 496
  end
  object vtmsajuncao: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 552
    object vtmsajuncaoid: TIntegerField
      FieldName = 'id'
    end
    object vtmsajuncaomesa: TStringField
      FieldName = 'mesa'
    end
  end
  object dvtmsajuncao: TUniDataSource
    DataSet = vtmsajuncao
    Left = 184
    Top = 552
  end
  object msapgto: TUniQuery
    DataTypeMap = <
      item
        DBType = 226
        FieldType = ftString
        FieldLength = 30
        IgnoreErrors = True
      end
      item
        DBType = 227
        FieldType = ftString
        FieldLength = 30
        IgnoreErrors = True
      end
      item
        DBType = 224
        FieldType = ftString
        FieldLength = 30
        IgnoreErrors = True
      end
      item
        DBType = 225
        FieldType = ftString
        FieldLength = 30
        IgnoreErrors = True
      end>
    Connection = Conexao
    SQL.Strings = (
      'SET @Titutlo =:Titutlo;'
      ''
      'SELECT DISTINCT'
      '       orc.orcchave'
      '     ,  CAST(orc.orcmesa as CHAR(10))  mesa'
      '     , orc.orcdataabert'
      '     , lte.lteprincipal orctotalav'
      '     , orchoraencerr '
      '     , etd.etdidentificacao '
      '     , orc.stocodigo  '
      '     , sto.stoidentificacao'
      '     , orc.clbcodigo'
      '     , olt.oltidentificacao'
      '     , olt.olttipo'
      '     , orc.cznchave'
      '  FROM orc '
      ' INNER JOIN czn ON orc.cznchave = czn.cznchave'
      ' INNER join etd on orc.etdcodigo = etd.etdcodigo'
      '  INNER JOIN ito ON orc.orcchave = ito.orcchave'
      '  INNER JOIN sto ON orc.stocodigo = sto.stocodigo '
      '  INNER JOIN imm ON ito.itochave = imm.itochave'
      '  INNER JOIN olt ON olt.orcchave = orc.orcchave'
      '  INNER JOIN lte ON olt.ltechave = lte.ltechave'
      ''
      ''
      ' WHERE orc.foacodigo = 1  '
      '   AND czn.cznfechamento IS NULL'
      '   and orc.stocodigo=3'
      '  order by orc.orcmesa, orc.orcdataencerr DESC;'
      ''
      ''
      ''
      '/*'
      'SET @Titutlo =:Titutlo;'
      ''
      'SELECT DISTINCT'
      '       orc.orcchave'
      '     ,  CAST(orc.orcmesa as CHAR(10))  mesa'
      '     , orc.orcdataabert'
      '     , lte.lteprincipal orctotalav'
      '     , orchoraencerr '
      '     , etd.etdidentificacao '
      '     , orc.stocodigo  '
      '     , sto.stoidentificacao'
      '     , orc.clbcodigo'
      '     , olt.oltidentificacao'
      '     , olt.olttipo'
      '  FROM orc '
      ' INNER join etd on orc.etdcodigo = etd.etdcodigo'
      ' INNER JOIN ito ON orc.orcchave = ito.orcchave'
      ' INNER JOIN sto ON orc.stocodigo = sto.stocodigo '
      ' INNER JOIN imm ON ito.itochave = imm.itochave'
      ' INNER JOIN olt ON olt.orcchave = orc.orcchave'
      'INNER JOIN lte ON olt.ltechave = lte.ltechave'
      ' INNER JOIN czn ON imm.cznchave = czn.cznchave'
      ''
      ' WHERE orc.foacodigo = 1 and orc.clbcodigo=:clbcodigo'
      '--  AND orc.stocodigo=3'
      ''
      '  and imm.immhorapedido >=:dataabertccx'
      
        '--   and CAST(CONCAT(orc.orcdataabert, '#39' '#39', orc.orchoraabert) AS' +
        ' DATETIME)>=:dataabertccx'
      ' '
      ''
      '   AND czn.cznfechamento IS NULL'
      ''
      ' --  AND orc.orcdataencerr IS NOT NULL'
      '  order by orc.orcmesa, orc.orcdataencerr DESC'
      '*/')
    Left = 576
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Titutlo'
        Value = nil
      end>
    object msapgtoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object msapgtomesa: TStringField
      FieldName = 'mesa'
      ReadOnly = True
      Size = 30
    end
    object msapgtoorcdataabert: TDateField
      FieldName = 'orcdataabert'
      Required = True
    end
    object msapgtoorctotalav: TFloatField
      FieldName = 'orctotalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object msapgtoorchoraencerr: TTimeField
      FieldName = 'orchoraencerr'
      Required = True
    end
    object msapgtoetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object msapgtostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object msapgtostoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
    end
    object msapgtoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object msapgtooltidentificacao: TStringField
      FieldName = 'oltidentificacao'
    end
    object msapgtoolttipo: TIntegerField
      FieldName = 'olttipo'
    end
  end
  object BuscaPro: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       pro.procodigo'
      '     , grp.grpcodigo'
      '     , pro.tpocodigo'
      '     , tsfn.sfnqtde'
      '     , IFNULL(sbr.sbrfracionado,0) sbrfracionado'
      '  FROM pro'
      ' INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      ' INNER JOIN uni ON pro.unicodigo = uni.unicodigo'
      '  LEFT JOIN sbr ON pro.grpcodigo = sbr.grpcodigo'
      '  LEFT JOIN (SELECT sfn.procodigo'
      '                  , count(*) sfnqtde'
      '               FROM sfn ) tsfn'
      '                ON tsfn.procodigo = pro.procodigo'
      ' WHERE pro.procodigo = :procodigo')
    Left = 336
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object BuscaProprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object BuscaProgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
      ReadOnly = True
    end
    object BuscaProtpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      Required = True
    end
    object BuscaProsfnqtde: TIntegerField
      FieldName = 'sfnqtde'
      ReadOnly = True
    end
    object BuscaProsbrfracionado: TIntegerField
      FieldName = 'sbrfracionado'
      ReadOnly = True
      Required = True
    end
  end
  object imm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  immchave,'
      '  itochave,'
      '  tcicodigo,'
      '  immmodo,'
      '  immhoraimprimir,'
      '  immhoraimpresso,'
      '  immhoraentrega,'
      '  immrecebido,'
      '  dorchave,'
      '  immdestino,'
      '  immtemporetardo,'
      '  immmodoimpressao,'
      '  immgarsom,'
      '  trmcodigo,'
      '  immhorapedido,'
      '  immnumepedido,'
      '  immidentificacao,'
      '  immimpresso,'
      '  immentregue,'
      '  ccxchave,'
      '  cznchave,'
      '  etdcodigoent,'
      '  immpratos,'
      '  immcopos,'
      '  immnumepedidoint,'
      '  clbcodigo'
      'FROM imm limit 0')
    Left = 32
    Top = 560
    object immimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object immitochave: TIntegerField
      FieldName = 'itochave'
      Required = True
    end
    object immtcicodigo: TIntegerField
      FieldName = 'tcicodigo'
      Required = True
    end
    object immimmmodo: TIntegerField
      FieldName = 'immmodo'
      Required = True
    end
    object immimmhoraimprimir: TDateTimeField
      FieldName = 'immhoraimprimir'
    end
    object immimmhoraimpresso: TDateTimeField
      FieldName = 'immhoraimpresso'
    end
    object immimmhoraentrega: TDateTimeField
      FieldName = 'immhoraentrega'
    end
    object immimmrecebido: TIntegerField
      FieldName = 'immrecebido'
      Required = True
    end
    object immdorchave: TIntegerField
      FieldName = 'dorchave'
    end
    object immimmdestino: TIntegerField
      FieldName = 'immdestino'
    end
    object immimmtemporetardo: TIntegerField
      FieldName = 'immtemporetardo'
    end
    object immimmmodoimpressao: TIntegerField
      FieldName = 'immmodoimpressao'
    end
    object immimmgarsom: TIntegerField
      FieldName = 'immgarsom'
    end
    object immtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object immimmhorapedido: TDateTimeField
      FieldName = 'immhorapedido'
    end
    object immimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object immimmidentificacao: TStringField
      FieldName = 'immidentificacao'
      Size = 50
    end
    object immimmimpresso: TIntegerField
      FieldName = 'immimpresso'
    end
    object immimmentregue: TIntegerField
      FieldName = 'immentregue'
    end
    object immccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object immcznchave: TIntegerField
      FieldName = 'cznchave'
      Required = True
    end
    object immetdcodigoent: TIntegerField
      FieldName = 'etdcodigoent'
    end
    object immimmpratos: TIntegerField
      FieldName = 'immpratos'
    end
    object immimmcopos: TIntegerField
      FieldName = 'immcopos'
    end
    object immimmnumepedidoint: TIntegerField
      FieldName = 'immnumepedidoint'
    end
    object immclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
  end
  object act: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select actcodigo, mdlcodigo, actidentificacao, actformulario, ac' +
        'tacao,actativa from act where mdlcodigo=:mdlcodigo and actacao=:' +
        'actacao')
    Left = 520
    Top = 612
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'actacao'
        Value = nil
      end>
    object actactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
  end
  object dau: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT act.actcodigo'
      '     , dau.clbcodigo'
      '     , dau.dauativo'
      '  FROM dau'
      ' INNER JOIN act ON dau.actcodigo = act.actcodigo'
      ' INNER JOIN mdl ON act.mdlcodigo = mdl.mdlcodigo'
      ' WHERE mdl.mdlnome = :mdlnome'
      '   AND dau.clbcodigo = :clbcodigo;')
    Left = 611
    Top = 615
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlnome'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
  object gpd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select gpdchave, gpdorcpdv, gpdorcgor from gpd where gpdorcpdv=:' +
        'orcchave')
    Left = 354
    Top = 607
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object gpdgpdchave: TIntegerField
      FieldName = 'gpdchave'
    end
    object gpdgpdorcpdv: TIntegerField
      FieldName = 'gpdorcpdv'
    end
    object gpdgpdorcgor: TIntegerField
      FieldName = 'gpdorcgor'
    end
  end
  object cpb: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select procodigo from cpb where cpbcodbalanca=:cpbcodbalanca')
    Left = 320
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cpbcodbalanca'
        Value = nil
      end>
    object cpbprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  object MobAbreMesa: TUniStoredProc
    StoredProcName = 'MobAbreOrcamento'
    SQL.Strings = (
      
        'CALL MobAbreOrcamento(:pEtdCodigo, :pClbCodigo, :pMocCodigo, :pO' +
        'rcMesa, :pFlacodigo, :pTrmCodigo, @pOrcChave); SELECT CAST(@pOrc' +
        'Chave AS SIGNED) AS '#39'@pOrcChave'#39)
    Connection = Conexao
    Transaction = UniTransaction
    UpdateTransaction = UniTransaction
    OnDeleteError = MobAbreMesaDeleteError
    OnEditError = MobAbreMesaEditError
    OnPostError = MobAbreMesaPostError
    Left = 712
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pEtdCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pMocCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pOrcMesa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pFlacodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTrmCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pOrcChave'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'MobAbreOrcamento'
    StoredProcIsQuery = True
  end
  object ets: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select etscodigo, ets.tsecodigo, etdcodigo, etsdata, etshistoric' +
        'o,tseidentificacao from ets,tse where ets.tsecodigo=tse.tsecodig' +
        'o and etdcodigo=:etdcodigo order by etscodigo desc limit 1')
    Left = 820
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etsetscodigo: TIntegerField
      FieldName = 'etscodigo'
    end
    object etstsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object etsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etsetsdata: TDateField
      FieldName = 'etsdata'
    end
    object etsetshistorico: TStringField
      FieldName = 'etshistorico'
      Size = 250
    end
    object etstseidentificacao: TStringField
      FieldName = 'tseidentificacao'
      Size = 35
    end
  end
  object disponivel: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rfi.etdcodigo,'
      '  SUM(rfi.rfisaldocapital) AS rfisaldocapital'
      'FROM v_rfi rfi'
      'WHERE rfi.tfdcodigo = 2'
      'AND rfi.srfcodigo NOT IN (2, 9)'
      'AND rfi.etdcodigo = :etdcodigo'
      'GROUP BY rfi.etdcodigo'
      'ORDER BY rfi.etdcodigo')
    Left = 820
    Top = 471
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object disponivelrfisaldocapital: TFloatField
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object limite: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  IFNULL(etl.etllimitetotal, 0) AS etllimitetotal'
      'FROM etd'
      '  LEFT JOIN (SELECT'
      '      etdcodigo,'
      '      etllimitetotal'
      '    FROM etl) etl'
      '    ON etd.etdcodigo = etl.etdcodigo'
      'WHERE etd.etdcodigo = :etdcodigo')
    Left = 818
    Top = 519
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object limiteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object limiteetllimitetotal: TFloatField
      FieldName = 'etllimitetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dccx: TDataSource
    DataSet = ccx
    Left = 75
    Top = 623
  end
  object ccx: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ccx.ccxchave,'
      '  ccx.clbcodigo,'
      '  ccx.ctacodigo,'
      '  ccx.ccxturno,'
      '  ccx.ccxdataber,'
      '  ccx.ccxhoraaber,'
      '  ccx.ccxsaldoaber,'
      '  ccx.ccxdatafecha,'
      '  ccx.ccxhorafecha,'
      '  ccx.ccxsaldofecha,'
      '  ccx.ccxsangrias,'
      '  ccx.ccxsuprimentos'
      'FROM ccx'
      'where ccx.clbcodigo=:clbcodigo -- and ccx.ctacodigo=:ctacodigo'
      ''
      'ORDER BY ccx.ccxchave desc')
    Left = 40
    Top = 620
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object ccxccxchave: TIntegerField
      FieldName = 'ccxchave'
      Required = True
    end
    object ccxclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object ccxctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object ccxccxturno: TIntegerField
      FieldName = 'ccxturno'
      Required = True
    end
    object ccxccxdataber: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'ccxdataber'
      Required = True
    end
    object ccxccxhoraaber: TTimeField
      DisplayLabel = 'Hora Abertura'
      FieldName = 'ccxhoraaber'
      Required = True
    end
    object ccxccxsaldoaber: TFloatField
      FieldName = 'ccxsaldoaber'
      Required = True
    end
    object ccxccxdatafecha: TDateField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'ccxdatafecha'
    end
    object ccxccxhorafecha: TTimeField
      DisplayLabel = 'Hora Fechamento'
      FieldName = 'ccxhorafecha'
    end
    object ccxccxsaldofecha: TFloatField
      DisplayLabel = 'Saldo Fechamento'
      FieldName = 'ccxsaldofecha'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccxccxsangrias: TFloatField
      FieldName = 'ccxsangrias'
      Required = True
    end
    object ccxccxsuprimentos: TFloatField
      FieldName = 'ccxsuprimentos'
      Required = True
    end
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.titcodigo,'
      '  tit.etdcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titvalorparcela,'
      '  tit.titparcelas,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.clbcodigo,'
      '  tit.tithistorico,'
      '  tit.flacodigo,'
      '  tit.bcocodigo,'
      '  tit.carcodigo,'
      '  tit.titprevisao,'
      '  tit.moecodigo,'
      '  tit.titmoradia,'
      '  tit.titdiasmulta,'
      '  tit.titvalomulta,'
      '  tit.titpercmesmora,'
      '  tit.titvalodesc,'
      '  tit.titdiasdesc,'
      '  tit.titpercmulta,'
      '  tit.titpercmesmulta'
      'FROM tit'
      'where titcodigo=:titcodigo')
    Left = 196
    Top = 615
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object tittitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object tittitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object tittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object titsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object tittficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object tittithora: TTimeField
      FieldName = 'tithora'
    end
    object tittithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object titclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object tittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object tittitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object titmoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object tittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object titflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object titbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object titcarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object tittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object tittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
  end
  object rfi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rfichave,'
      '  etdcodigo,'
      '  tfdcodigo,'
      '  flacodigo,'
      '  tficodigo,'
      '  bcocodigo,'
      '  carcodigo,'
      '  rfiemissao,'
      '  rfivencimento,'
      '  rfinumero,'
      '  rfivalor,'
      '  rfihistorico,'
      '  srfcodigo,'
      '  frrcodigo,'
      '  rfimoradia,'
      '  rfipercmesmora,'
      '  rfirepetir,'
      '  rfiprevisao,'
      '  rfivalorparcela,'
      '  moecodigo,'
      '  titcodigo,'
      '  rdcnrauto'
      'FROM rfi LIMIT 2')
    Left = 232
    Top = 615
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object rfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object rfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object rfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object rfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object rficarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object rfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object rfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object rfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
    end
    object rfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object rfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
    end
    object rfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
    end
    object rfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
    end
    object rfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
    end
    object rfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object rfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object rfirdcnrauto: TStringField
      FieldName = 'rdcnrauto'
    end
  end
  object rfm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select  rfmchave, rfichave, meschave, flacodigo from rfm limit 1')
    Left = 156
    Top = 615
    object rfmrfmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfmchave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object rfmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object mfi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select mfichave, rfichave, tmfcodigo, moecodigo,  mfivalor,'
      
        'mfidata, mfihistorico, mfivalorori, mfiparcela,flacodigo from mf' +
        'i limit 2')
    Left = 288
    Top = 583
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object mlt: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select mltchave,mfichave, ltechave,flacodigo from mlt limit 2')
    Left = 266
    Top = 615
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object mltflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object RegistraRefeicao: TUniStoredProc
    StoredProcName = 'RegistraRefeicao'
    SQL.Strings = (
      
        'CALL RegistraRefeicao(:pFlaCodigo, :pTipoChave, :pChave, :pClbCo' +
        'digo, :pValor, :pLteChave, :pChamada, @pConfirma, @pMesChave); S' +
        'ELECT CAST(@pConfirma AS SIGNED) AS '#39'@pConfirma'#39', CAST(@pMesChav' +
        'e AS SIGNED) AS '#39'@pMesChave'#39)
    Connection = Conexao
    Transaction = UniTransaction
    Left = 704
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pFlaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pValor'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pLteChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pChamada'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pMesChave'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'RegistraRefeicao'
  end
  object tickets: TUniQuery
    Connection = Conexao
    Left = 816
    Top = 48
  end
  object oltmes: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @orcchave = :orcchave;'
      'SELECT  distinct'
      '   mes.meschave'
      '  FROM olt'
      ' INNER JOIN lte ON olt.ltechave = lte.ltechave'
      ' INNER JOIN mlt ON lte.ltechave = mlt.ltechave'
      ' INNER JOIN mfi ON mlt.mfichave = mfi.mfichave'
      ' INNER JOIN rfm ON mfi.rfichave = rfm.rfichave'
      ' INNER JOIN mes ON rfm.meschave = mes.meschave'
      
        ' WHERE (olt.orcchave = @orcchave OR olt.orcchave IN (SELECT orcc' +
        'havedestino FROM tro WHERE tro.orcchaveorigem = @orcchave))')
    Left = 640
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object oltmesmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object UniTransaction: TUniTransaction
    DefaultConnection = Conexao
    OnError = UniTransactionError
    Left = 144
    Top = 680
  end
  object rdc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdcvalor,'
      '  rdcnrauto,'
      '  rdcvalorope,'
      '  rdcsituacao,'
      '  rdcdata,'
      '  adccodigo,'
      '  rdcparcelas,'
      '  tescodigo,'
      '  bdccodigo,'
      '  dtlchave,'
      '  rdccomprovante1via,'
      '  rdccomprovante2via'
      'FROM rdc LIMIT 0')
    Left = 248
    Top = 512
    object rdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object rdcrdcvalor: TFloatField
      FieldName = 'rdcvalor'
      Required = True
    end
    object rdcrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 50
    end
    object rdcrdcvalorope: TFloatField
      FieldName = 'rdcvalorope'
      Required = True
    end
    object rdcrdcsituacao: TIntegerField
      FieldName = 'rdcsituacao'
      Required = True
    end
    object rdcrdcdata: TDateField
      FieldName = 'rdcdata'
    end
    object rdcadccodigo: TIntegerField
      FieldName = 'adccodigo'
      Required = True
    end
    object rdcrdcparcelas: TIntegerField
      FieldName = 'rdcparcelas'
      Required = True
    end
    object rdctescodigo: TIntegerField
      FieldName = 'tescodigo'
      Required = True
    end
    object rdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object rdcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object rdcrdccomprovante1via: TStringField
      FieldName = 'rdccomprovante1via'
      Size = 5000
    end
    object rdcrdccomprovante2via: TStringField
      FieldName = 'rdccomprovante2via'
      Size = 5000
    end
  end
  object dtl: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  dtlchave,'
      '  ltechave,'
      '  cedcodigo,'
      '  dtlvalor,'
      '  mdacodigo,'
      '  dtlvalorinfo,'
      '  flacodigo,'
      '  rdcnrauto'
      'FROM dtl where ltechave=:ltechave and mdacodigo in (6,5,4) ')
    Left = 288
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
      Required = True
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
      Required = True
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
      Required = True
    end
    object dtldtlvalorinfo: TFloatField
      FieldName = 'dtlvalorinfo'
      Required = True
    end
    object dtlflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object dtlrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
    end
  end
  object ltr: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ltrchave,'
      '  rdcchave,'
      '  dtlchave'
      'FROM ltr  where rdcchave not in (select rdcchave from ltr)')
    Left = 304
    Top = 520
    object ltrltrchave: TIntegerField
      FieldName = 'ltrchave'
    end
    object ltrrdcchave: TIntegerField
      FieldName = 'rdcchave'
      Required = True
    end
    object ltrdtlchave: TIntegerField
      FieldName = 'dtlchave'
      Required = True
    end
  end
  object vrdc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdcvalor,'
      '  rdcnrauto,'
      '  rdcvalorope,'
      '  rdcsituacao,'
      '  rdcdata,'
      '  adccodigo,'
      '  rdcparcelas,'
      '  tescodigo,'
      '  mdacodigo,'
      '  bdccodigo'
      'FROM trdc')
    Left = 456
    Top = 488
    object vrdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object vrdcrdcvalor: TFloatField
      FieldName = 'rdcvalor'
      Required = True
    end
    object vrdcrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 50
    end
    object vrdcrdcvalorope: TFloatField
      FieldName = 'rdcvalorope'
      Required = True
    end
    object vrdcrdcsituacao: TIntegerField
      FieldName = 'rdcsituacao'
      Required = True
    end
    object vrdcrdcdata: TDateField
      FieldName = 'rdcdata'
    end
    object vrdcadccodigo: TIntegerField
      FieldName = 'adccodigo'
      Required = True
    end
    object vrdcrdcparcelas: TIntegerField
      FieldName = 'rdcparcelas'
      Required = True
    end
    object vrdctescodigo: TIntegerField
      FieldName = 'tescodigo'
      Required = True
    end
    object vrdcmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
      Required = True
    end
    object vrdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
      Required = True
    end
  end
  object imc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  imcchave,'
      '  clbcodigo,'
      '  itmchave,'
      '  imcpercentual,'
      '  flacodigo'
      'FROM imc limit 0')
    Left = 320
    Top = 432
    object imcimcchave: TIntegerField
      FieldName = 'imcchave'
    end
    object imcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object imcitmchave: TIntegerField
      FieldName = 'itmchave'
      Required = True
    end
    object imcimcpercentual: TFloatField
      FieldName = 'imcpercentual'
      Required = True
    end
    object imcflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
  end
  object itm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select itmchave, itochave,flacodigo, itmitem from itm where mesc' +
        'have=:meschave')
    Left = 360
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmitochave: TIntegerField
      FieldName = 'itochave'
    end
    object itmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object itmitmitem: TIntegerField
      FieldName = 'itmitem'
    end
  end
  object itoimc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itochave            -- chave'
      '     , ito.procodigo           -- chave produto'
      '     , pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.puncodigo           -- pun codigo'
      '     , ito.stocodigo           -- situacao do item'
      '     , sto.stoidentificacao'
      '     , imm.immnumepedido'
      '     , TIME_FORMAT(imm.immhorapedido, '#39'%H:%i'#39') immhorapedido'
      '     , imm.immmodo'
      
        '     , (select clbidentificacao from clb where clb.clbcodigo=imm' +
        '.clbcodigo) as clbpediu'
      '     , imm.clbcodigo clbpedido'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN imm ON imm.itochave = ito.itochave   '
      ''
      ''
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.stocodigo in (3)'
      ' ORDER BY ito.itoitem')
    Left = 104
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoimcitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itoimcitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itoimcprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itoimcpronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object itoimcitoquantidade: TFloatField
      Alignment = taCenter
      FieldName = 'itoquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
    end
    object itoimcunisimbolo: TStringField
      Alignment = taCenter
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itoimcitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoimcitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoimcpuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itoimcstocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object itoimcstoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itoimcimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
      ReadOnly = True
    end
    object itoimcimmhorapedido: TStringField
      FieldName = 'immhorapedido'
      ReadOnly = True
      Size = 10
    end
    object itoimcimmmodo: TIntegerField
      FieldName = 'immmodo'
    end
    object itoimcclbpediu: TStringField
      FieldName = 'clbpediu'
      Size = 30
    end
    object itoimcclbpedido: TIntegerField
      FieldName = 'clbpedido'
    end
  end
  object immtransf: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  immchave,'
      '  itochave,'
      '  tcicodigo,'
      '  immmodo,'
      '  immhoraimprimir,'
      '  immhoraimpresso,'
      '  immhoraentrega,'
      '  immrecebido,'
      '  dorchave,'
      '  immdestino,'
      '  immtemporetardo,'
      '  immmodoimpressao,'
      '  immgarsom,'
      '  trmcodigo,'
      '  immhorapedido,'
      '  immnumepedido,'
      '  immidentificacao,'
      '  immimpresso,'
      '  immentregue,'
      '  ccxchave,'
      '  cznchave,'
      '  etdcodigoent,'
      '  immpratos,'
      '  immcopos,'
      '  immnumepedidoint,'
      '  clbcodigo'
      
        'FROM imm where itochave in (select itochave from ito where orcch' +
        'ave=:orcchave)')
    Left = 808
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object immtransfimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object immtransfitochave: TIntegerField
      FieldName = 'itochave'
      Required = True
    end
    object immtransftcicodigo: TIntegerField
      FieldName = 'tcicodigo'
      Required = True
    end
    object immtransfimmmodo: TIntegerField
      FieldName = 'immmodo'
      Required = True
    end
    object immtransfimmhoraimprimir: TDateTimeField
      FieldName = 'immhoraimprimir'
    end
    object immtransfimmhoraimpresso: TDateTimeField
      FieldName = 'immhoraimpresso'
    end
    object immtransfimmhoraentrega: TDateTimeField
      FieldName = 'immhoraentrega'
    end
    object immtransfimmrecebido: TIntegerField
      FieldName = 'immrecebido'
      Required = True
    end
    object immtransfdorchave: TIntegerField
      FieldName = 'dorchave'
    end
    object immtransfimmdestino: TIntegerField
      FieldName = 'immdestino'
    end
    object immtransfimmtemporetardo: TIntegerField
      FieldName = 'immtemporetardo'
    end
    object immtransfimmmodoimpressao: TIntegerField
      FieldName = 'immmodoimpressao'
    end
    object immtransfimmgarsom: TIntegerField
      FieldName = 'immgarsom'
    end
    object immtransftrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object immtransfimmhorapedido: TDateTimeField
      FieldName = 'immhorapedido'
    end
    object immtransfimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object immtransfimmidentificacao: TStringField
      FieldName = 'immidentificacao'
      Size = 50
    end
    object immtransfimmimpresso: TIntegerField
      FieldName = 'immimpresso'
    end
    object immtransfimmentregue: TIntegerField
      FieldName = 'immentregue'
    end
    object immtransfccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object immtransfcznchave: TIntegerField
      FieldName = 'cznchave'
      Required = True
    end
    object immtransfetdcodigoent: TIntegerField
      FieldName = 'etdcodigoent'
    end
    object immtransfimmpratos: TIntegerField
      FieldName = 'immpratos'
    end
    object immtransfimmcopos: TIntegerField
      FieldName = 'immcopos'
    end
    object immtransfimmnumepedidoint: TIntegerField
      FieldName = 'immnumepedidoint'
    end
    object immtransfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
  end
  object itomesa: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itochave            -- chave'
      '     , ito.procodigo           -- chave produto'
      '     , pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.puncodigo           -- pun codigo'
      '     , ito.stocodigo           -- situacao do item'
      '     , sto.stoidentificacao'
      '     , imm.immnumepedido'
      '     , TIME_FORMAT(imm.immhorapedido, '#39'%H:%i'#39') immhorapedido'
      '     , imm.immmodo'
      
        '     , (select clbidentificacao from clb where clb.clbcodigo=imm' +
        '.clbcodigo) as clbpediu'
      '     , imm.clbcodigo clbpedido'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' INNER JOIN imm ON imm.itochave = ito.itochave   '
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.stocodigo not in (1,3,4,8,9)'
      ' ORDER BY ito.itoitem')
    Left = 80
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itomesaitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itomesaitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itomesaprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itomesapronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object itomesaitoquantidade: TFloatField
      Alignment = taCenter
      FieldName = 'itoquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
    end
    object itomesaunisimbolo: TStringField
      Alignment = taCenter
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itomesaitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itomesaitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itomesapuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itomesastocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object itomesastoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itomesaimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
      ReadOnly = True
    end
    object itomesaimmhorapedido: TStringField
      FieldName = 'immhorapedido'
      ReadOnly = True
      Size = 10
    end
    object itomesaimmmodo: TIntegerField
      FieldName = 'immmodo'
    end
    object itomesaclbpediu: TStringField
      FieldName = 'clbpediu'
      Size = 30
    end
    object itomesaclbpedido: TIntegerField
      FieldName = 'clbpedido'
    end
  end
  object itorec: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '       ito.itochave            /* chave */'
      '     , ito.procodigo           /* chave produto */'
      '     , pronome'
      '     , ito.itoquantidade       /* quantidade vendida */'
      '     , uni.unisimbolo'
      '     , ito.itodescontoav'
      
        '     , ito.itovalorav+itooutras  itovalorav          /* pre'#231'o a ' +
        'vista */'
      
        '     , ito.itototalav-(itodescontoav)  itototalav               ' +
        '              /* total liquido a vista */'
      '     , ito.itoitem             /* item do orcamento */'
      '     , ito.puncodigo           /* pun codigo */'
      '     , ito.stocodigo           /* situacao do item */'
      '     , sto.stoidentificacao'
      '     , imm.immnumepedido'
      '     , TIME_FORMAT(imm.immhorapedido, '#39'%H:%i'#39') immhorapedido'
      '     , imm.immmodo'
      
        '     , (select clbidentificacao from clb where clb.clbcodigo=imm' +
        '.clbcodigo) as clbpediu'
      '     , imm.clbcodigo clbpedido'
      '     '
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' left JOIN imm ON imm.itochave = ito.itochave   '
      ''
      
        '/* WHERE ito.orcchave in (SELECT DISTINCT orcchavedestino FROM t' +
        'ro WHERE orcchaveorigem=:orcchave) */'
      
        'WHERE ito.stocodigo=3 and  ito.orcchave in (SELECT orcchavedesti' +
        'no FROM tro WHERE orcchaveorigem=:orcchave ORDER BY orcchavedest' +
        'ino desc ) '
      
        '-- and ito.orcchave not in (SELECT itochave FROM ito WHERE orcch' +
        'ave=:orcchaveatual )'
      ''
      ' ORDER BY ito.itoitem')
    ReadOnly = True
    Left = 160
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itorecitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itorecitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itorecprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itorecpronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object itorecitoquantidade: TFloatField
      Alignment = taCenter
      FieldName = 'itoquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
    end
    object itorecunisimbolo: TStringField
      Alignment = taCenter
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itorecitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itorecpuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itorecstocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object itorecstoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itorecimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
      ReadOnly = True
    end
    object itorecimmhorapedido: TStringField
      FieldName = 'immhorapedido'
      ReadOnly = True
      Size = 10
    end
    object itorecimmmodo: TIntegerField
      FieldName = 'immmodo'
    end
    object itorecclbpediu: TStringField
      FieldName = 'clbpediu'
      Size = 30
    end
    object itorecclbpedido: TIntegerField
      FieldName = 'clbpedido'
    end
    object itorecitodescontoav: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itodescontoav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itorecitototalav: TFloatField
      FieldName = 'itototalav'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Ditorec: TDataSource
    DataSet = itorec
    Left = 160
    Top = 192
  end
  object trorec: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT tro.trochave'
      '     , tro.orcchaveorigem'
      '     , tro.orcchavedestino '
      '  FROM tro where tro.orcchaveorigem=:orcchave'
      ' ')
    ReadOnly = True
    Left = 160
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object trorectrochave: TIntegerField
      FieldName = 'trochave'
    end
    object trorecorcchaveorigem: TIntegerField
      FieldName = 'orcchaveorigem'
    end
    object trorecorcchavedestino: TIntegerField
      FieldName = 'orcchavedestino'
    end
  end
  object tropar: TUniQuery
    Connection = Conexao
    ReadOnly = True
    Left = 376
    Top = 120
  end
  object bpr: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT bprchave, pronome, bpr.procodigo, bpr.procodigoborda, brd' +
        '.brdcodigo FROM bpr,pro, brd WHERE bpr.procodigoborda=pro.procod' +
        'igo  AND bpr.procodigoborda=brd.procodigo  AND bpr.procodigo=:pr' +
        'ocodigo'
      ''
      
        '-- SELECT bprchave, pronome, bpr.procodigo, bpr.procodigoborda F' +
        'ROM bpr,pro WHERE bpr.procodigoborda=pro.procodigo AND bpr.proco' +
        'digo=:procodigo')
    Left = 800
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object bprbprchave: TIntegerField
      FieldName = 'bprchave'
    end
    object bprpronome: TStringField
      FieldName = 'pronome'
      Size = 35
    end
    object bprprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object bprprocodigoborda: TIntegerField
      FieldName = 'procodigoborda'
    end
    object bprbrdcodigo: TIntegerField
      FieldName = 'brdcodigo'
    end
  end
  object Dbpr: TDataSource
    DataSet = bpr
    Left = 848
    Top = 168
  end
  object tsq: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select tsqcodigo, tsqidentificacao from tsq')
    Left = 480
    Top = 424
    object tsqtsqcodigo: TIntegerField
      FieldName = 'tsqcodigo'
    end
    object tsqtsqidentificacao: TStringField
      FieldName = 'tsqidentificacao'
      Size = 10
    end
  end
  object gri: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT rel.relarquivo FROM gri,rel WHERE gri.relcompleto=rel.rel' +
        'codigo LIMIT 1;')
    Left = 816
    Top = 344
    object grirelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object recalculaadional: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  SUM(pun.punprecoav * isiquantidade) punprecoav'
      'FROM ito,'
      '     sbi,'
      '     isi,'
      '     sbr,'
      '     pro,'
      '     pun'
      'WHERE ito.itochave = sbi.itochave'
      'AND sbi.sbichave = isi.sbichave'
      'AND ito.itochave = :itochave'
      'AND sbi.sbrcodigo = sbr.sbrcodigo'
      'AND isi.procodigo = pro.procodigo'
      
        'and isi.procodigo not in (SELECT isa.procodigo FROM isa INNER JO' +
        'IN sbr  ON isa.sbrcodigo = sbr.sbrcodigo  INNER JOIN pro  ON isa' +
        '.procodigo = pro.procodigo WHERE sbr.procodigo = ito.procodigo)'
      'AND pro.procodigo = pun.procodigo'
      'AND pro.unicodigo = pun.unicodigo'
      'AND sbrcobraadicional = 1;'
      '')
    Left = 816
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object recalculaadionalpunprecoav: TFloatField
      FieldName = 'punprecoav'
      ReadOnly = True
    end
  end
  object itorecalculoadicional: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select itochave from ito where orcchave=:orcchave and stocodigo=' +
        '2')
    Left = 656
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itorecalculoadicionalitochave: TIntegerField
      FieldName = 'itochave'
    end
  end
  object ajustaadicional: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'UPDATE ito'
      '                    SET ito.itovalorav = (ito.itovalorav),'
      '                        ito.itovalorap = (ito.itovalorap),'
      
        '                        ito.itototalav = ROUND((ito.itovalorav *' +
        ' ito.itoquantidade) + (:vlradicional * ito.itoquantidade), 2),'
      
        '                        ito.itototalap = ROUND((ito.itovalorap *' +
        ' ito.itoquantidade) + (:vlradicional * ito.itoquantidade), 2),'
      
        '                        ito.itosaldoav = ROUND((ito.itovalorav *' +
        ' ito.itoquantidade), 2) - ito.itodescontoav,'
      
        '                        ito.itosaldoap = ROUND((ito.itovalorap *' +
        ' ito.itoquantidade), 2) - ito.itodescontoav,'
      '                        ito.itooutras = ito.itoacrescimoav'
      '                    WHERE ito.itochave = :itochave;')
    Left = 752
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vlradicional'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
  end
  object vIngrediente: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 224
    object vIngredientesbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object vIngredienteprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vIngredientepronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object vIngredientetsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object vIngredientetipo: TIntegerField
      FieldName = 'tipo'
    end
    object vIngredienteobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object vIngredientesfnid: TIntegerField
      FieldName = 'sfnid'
    end
    object vIngredientesfncodigo: TIntegerField
      FieldName = 'sfncodigo'
    end
    object vIngredienteisiquantidade: TIntegerField
      FieldName = 'isiquantidade'
    end
    object vIngredientetsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      Size = 30
    end
  end
  object situacaoetd: TUniQuery
    Connection = Conexao
    Left = 448
    Top = 608
  end
  object FechaMesaParcial: TUniStoredProc
    StoredProcName = 'FechaMesaParcial'
    SQL.Strings = (
      
        'CALL FechaMesaParcial(:pOrcChave, :pTipo, :pNome, :pFlaCodigo, :' +
        'pClbCodigo, :pCtaCodigo, :pLtePrincipal, :pLteJuros, :pLteDescon' +
        'to, :pLteMulta, :pLteTroco, :pRefeicao, :pTipoTaxa, :pTaxa, :pTi' +
        'poFechamento, @pConfirma, @pMensagem, @pMesChave, @pLteChave); S' +
        'ELECT CAST(@pConfirma AS SIGNED) AS '#39'@pConfirma'#39', @pMensagem AS ' +
        #39'@pMensagem'#39', CAST(@pMesChave AS SIGNED) AS '#39'@pMesChave'#39', CAST(@' +
        'pLteChave AS SIGNED) AS '#39'@pLteChave'#39)
    Connection = Conexao
    Transaction = UniTransaction
    Options.ReturnParams = True
    AutoCalcFields = False
    ObjectView = True
    Left = 808
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pOrcChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pFlaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pCtaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLtePrincipal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteJuros'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteDesconto'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteMulta'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pLteTroco'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pRefeicao'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoTaxa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pTaxa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoFechamento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pMensagem'
        ParamType = ptOutput
        Size = 65000
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pMesChave'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pLteChave'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'FechaMesaParcial'
  end
  object UniDataSource1: TUniDataSource
    DataSet = rdc
    Left = 656
    Top = 480
  end
  object ttfm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      ''
      'DROP TEMPORARY TABLE IF EXISTS ttfm;'
      '   '
      'CREATE TEMPORARY TABLE if not exists ttfm'
      '     ( ID INT NOT NULL AUTO_INCREMENT'
      '     , orcchave  int'
      '     , mesa      VARCHAR(20)'
      '     , orcmesa   int'
      '     , clbcodigo int'
      '     , registro datetime'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , orcchave '
      '     , mesa'
      '     , orcmesa'
      '     , clbcodigo'
      '     , registro '
      '  FROM ttfm;'
      ''
      '')
    CachedUpdates = True
    Left = 184
    Top = 480
    object ttfmID: TIntegerField
      FieldName = 'ID'
    end
    object ttfmorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object ttfmmesa: TStringField
      FieldName = 'mesa'
    end
    object ttfmorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object ttfmclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ttfmregistro: TDateTimeField
      FieldName = 'registro'
    end
  end
  object orctfm: TUniQuery
    Connection = Conexao
    Left = 232
    Top = 432
  end
  object tfm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  tfmchave,'
      '  orcchaveorigem,'
      '  orcchavedestino,'
      '  clbcodigo,'
      '  tfmregistro'
      'FROM tfm limit 0')
    Left = 200
    Top = 536
    object tfmtfmchave: TIntegerField
      FieldName = 'tfmchave'
    end
    object tfmorcchaveorigem: TIntegerField
      FieldName = 'orcchaveorigem'
    end
    object tfmorcchavedestino: TIntegerField
      FieldName = 'orcchavedestino'
    end
    object tfmclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object tfmtfmregistro: TDateTimeField
      FieldName = 'tfmregistro'
    end
  end
  object ajustaitoitem: TUniQuery
    Connection = Conexao
    Left = 736
    Top = 632
  end
  object numeroauto: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rfi.rfichave,'
      '  rdc.rdcnrauto,'
      '  adc.adcliquidaautomatico,'
      '  rfi.rfivalor'
      'FROM mlt,'
      '     mfi,'
      '     lte,'
      '     rfi,'
      '     dtl,'
      '     ltr,'
      '     rdc,'
      '     adc'
      'WHERE mlt.mfichave = mfi.mfichave'
      'AND mlt.ltechave = lte.ltechave'
      'AND lte.ltechave = :ltechave'
      'AND mfi.rfichave = rfi.rfichave'
      'AND mfi.tmfcodigo = 2'
      'AND lte.ltechave = dtl.ltechave'
      'AND dtl.mdacodigo IN (4, 5)'
      'AND ltr.dtlchave = dtl.dtlchave'
      'AND ltr.rdcchave = rdc.rdcchave'
      'AND rdc.adccodigo = adc.adccodigo')
    Left = 392
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object numeroautorfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object numeroautordcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 100
    end
    object numeroautoadcliquidaautomatico: TIntegerField
      FieldName = 'adcliquidaautomatico'
    end
    object numeroautorfivalor: TCurrencyField
      FieldName = 'rfivalor'
    end
  end
  object caixas: TUniQuery
    Connection = Conexao
    Left = 560
    Top = 616
  end
  object DsCaixas: TUniDataSource
    DataSet = caixas
    Left = 560
    Top = 576
  end
  object sqlticket: TUniQuery
    Connection = Conexao
    Left = 872
    Top = 392
  end
  object dsSqlTicket: TUniDataSource
    DataSet = sqlticket
    Left = 872
    Top = 344
  end
  object imp: TUniQuery
    Connection = Conexao
    Left = 616
    Top = 704
  end
  object itmproducao: TUniQuery
    Connection = Conexao
    Left = 568
    Top = 456
  end
  object itoresumo: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '       ito.itochave            -- chave'
      '     , ito.procodigo           -- chave produto'
      '     ,  pronome'
      
        '     , IF((SELECT count(sbrcodigo) FROM sbr WHERE sbr.grpcodigo=' +
        'pro.grpcodigo)=0,SUM(ito.itoquantidade),ito.itoquantidade) itoqu' +
        'antidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      
        '     , IF((SELECT count(sbrcodigo) FROM sbr WHERE sbr.grpcodigo=' +
        'pro.grpcodigo)=0,  SUM(itototalav),itototalav  ) -itodescontoav ' +
        '  itototalav          -- total liquido a vista'
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.puncodigo           -- pun codigo'
      '     , ito.stocodigo           -- situacao do item'
      '     , sto.stoidentificacao'
      '     , ito.orcchave'
      '     , SUM(ito.itoacrescimoav) itoacrescimoav'
      '  FROM ito'
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ''
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.stocodigo not in (1,3,4,8,9,88)'
      
        '   and ito.procodigo<>(select cfgmgouproatendimento from cfgmgou' +
        ')  '
      
        '   and ito.procodigo<>(select cfgmgouproatendimentoparcial from ' +
        'cfgmgou) '
      '   and ito.itoquantidade>0'
      'group by pro.pronome, (ito.itovalorav+ito.itoacrescimoav)')
    Left = 88
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoresumoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itoresumoitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itoresumoprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itoresumopronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object itoresumoitoquantidade: TFloatField
      Alignment = taCenter
      FieldName = 'itoquantidade'
      Required = True
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object itoresumounisimbolo: TStringField
      Alignment = taCenter
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itoresumoitovalorav: TFloatField
      FieldName = 'itovalorav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoresumoitototalav: TFloatField
      FieldName = 'itototalav'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object itoresumopuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itoresumostocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object itoresumostoidentificacao: TStringField
      FieldName = 'stoidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itoresumoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object itoresumoitoacrescimoav: TCurrencyField
      FieldName = 'itoacrescimoav'
    end
  end
  object UniDataSource2: TUniDataSource
    DataSet = orc
    Left = 216
    Top = 328
  end
  object dsitoresumo: TUniDataSource
    DataSet = itoresumo
    Left = 144
    Top = 208
  end
  object creditos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  tcridentificacao,'
      '  tscidentificacao,'
      '  etdidentificacao,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  mcechave,'
      '  tmcidentificacao,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  clbidentificacao,'
      '  rcrvalor,'
      '  mcrvalorbaixa,'
      '  rcrsaldo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora,'
      '  tsccodigo'
      'FROM v_rcr where tnccodigo=1')
    Left = 736
    Top = 696
    object creditosrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object creditostcridentificacao: TStringField
      FieldName = 'tcridentificacao'
      Required = True
      Size = 35
    end
    object creditostscidentificacao: TStringField
      FieldName = 'tscidentificacao'
      Required = True
      Size = 255
    end
    object creditosetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object creditosetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object creditoscedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object creditosrcrdata: TDateField
      FieldName = 'rcrdata'
    end
    object creditosrcrhistorico: TStringField
      FieldName = 'rcrhistorico'
      Size = 200
    end
    object creditosmcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object creditostmcidentificacao: TStringField
      FieldName = 'tmcidentificacao'
      Required = True
      Size = 255
    end
    object creditostmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object creditosclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object creditosclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object creditosrcrvalor: TFloatField
      FieldName = 'rcrvalor'
      Required = True
    end
    object creditosmcrvalorbaixa: TFloatField
      FieldName = 'mcrvalorbaixa'
    end
    object creditosrcrsaldo: TFloatField
      FieldName = 'rcrsaldo'
    end
    object creditosmcemotivo: TStringField
      FieldName = 'mcemotivo'
      Required = True
      Size = 255
    end
    object creditosmecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object creditostcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
      Required = True
    end
    object creditostsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object creditostnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object creditosrcrhora: TTimeField
      FieldName = 'rcrhora'
    end
    object creditostsccodigo_1: TIntegerField
      FieldName = 'tsccodigo_1'
    end
  end
  object mce: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce where rcrchave=:rcrchave')
    Left = 808
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object mcemcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
      Required = True
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object mcemcemotivo: TStringField
      FieldName = 'mcemotivo'
      Required = True
      Size = 255
    end
    object mcemecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object mcr: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  mcrchave,'
      '  rcrchave,'
      '  mcrvalor,'
      '  mcechave'
      'FROM mcr where rcrchave=:rcrchave')
    Left = 856
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object mcrmcrchave: TIntegerField
      FieldName = 'mcrchave'
    end
    object mcrrcrchave: TIntegerField
      FieldName = 'rcrchave'
      Required = True
    end
    object mcrmcrvalor: TFloatField
      FieldName = 'mcrvalor'
      Required = True
    end
    object mcrmcechave: TIntegerField
      FieldName = 'mcechave'
    end
  end
  object ccxs: TUniQuery
    Connection = Conexao
    Left = 280
    Top = 704
  end
  object DSccxs: TUniDataSource
    DataSet = ccxs
    Left = 240
    Top = 696
  end
  object msaimprime: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  orc.orcmesa,'
      '  orc.stocodigo,'
      '  COUNT(ito.orcchave) item,'
      '  orc.orcchave,'
      '  orcimpressao'
      'FROM orc'
      '  INNER JOIN ito'
      '    ON orc.orcchave = ito.orcchave'
      'WHERE orc.orcmesa > 0'
      ' AND orc.orcdataencerr IS NULL'
      ' AND orc.moccodigo = 5'
      ' AND orc.stocodigo IN (5)'
      ' AND orcimpressao=0'
      'GROUP BY orc.orcchave'
      'ORDER BY orcmesa')
    Left = 512
    Top = 64
    object msaimprimeorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object msaimprimeorcmesa: TIntegerField
      FieldName = 'orcmesa'
    end
    object msaimprimestocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object msaimprimeitem: TIntegerField
      FieldName = 'item'
      ReadOnly = True
      Required = True
    end
    object msaimprimeorcimpressao: TIntegerField
      FieldName = 'orcimpressao'
      Required = True
    end
  end
  object dmsaimprime: TUniDataSource
    DataSet = msaimprime
    Left = 568
    Top = 72
  end
  object sbrfra: TUniQuery
    Connection = Conexao
    Left = 768
    Top = 488
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 440
    Top = 680
  end
  object toetaxa: TUniQuery
    Connection = Conexao
    Left = 344
    Top = 696
  end
  object taxaparcial: TUniQuery
    Connection = Conexao
    Left = 32
    Top = 712
  end
  object itmtrib: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select '
      ' itmchave'
      ',procodigo'
      ',itmquantidade'
      ',meschave'
      ',cstcodigo'
      ',itmvalor'
      ',itmdesconto'
      ',itmtotal'
      ',toecodigo'
      ',cfocfop'
      ',itmbicm'
      ',icmcodigo'
      ',itmaliqicm'
      ',itmicm'
      ',itmbicms'
      ',itmaliqicms'
      ',itmicms'
      ',itmapuipi'
      ',csicodigo'
      ',ceicodigo'
      ',itmbipi'
      ',itmaliqipi'
      ',itmipi'
      ',cspcodigo'
      ',itmbpis'
      ',itmaliqpis'
      ',itmpis'
      ',itmquantpis'
      ',itmaliqpisvalor'
      ',itmbcofins'
      ',csfcodigo'
      ',itmaliqcofins'
      ',itmquantcofins'
      ',itmaliqcofinsvalor'
      ',itmcofins'
      ',cfocfopdestinacao'
      ',itmoutras'
      ',itmseguro'
      ',itmfrete'
      ',itmpercreducaobaseicm'
      ',itmmva'
      ',itmvalofcpicm'
      ',itmbasefcpicm'
      ',itmpercfcpicm'
      'from itm where meschave=:meschave')
    Left = 992
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmtribitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itmchave'
    end
    object itmtribprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object itmtribmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itmtribcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmtribitmvalor: TFloatField
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtribitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtribitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtribtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmtribcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmtribitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmtribicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmtribitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmtribitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmtribitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmtribitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
    end
    object itmtribitmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmtribitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmtribcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmtribceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmtribitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
    end
    object itmtribitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
    end
    object itmtribitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
    end
    object itmtribcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmtribitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
    end
    object itmtribitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmtribitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmtribitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmtribitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmtribitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
    end
    object itmtribcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmtribitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmtribitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmtribitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmtribitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmtribcfocfopdestinacao: TStringField
      DisplayLabel = 'CFOP Destino'
      FieldName = 'cfocfopdestinacao'
      Required = True
      Size = 5
    end
    object itmtribitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmtribitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmtribitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmtribitmpercreducaobaseicm: TFloatField
      FieldName = 'itmpercreducaobaseicm'
    end
    object itmtribitmmva: TFloatField
      FieldName = 'itmmva'
    end
    object itmtribitmvalofcpicm: TFloatField
      FieldName = 'itmvalofcpicm'
    end
    object itmtribitmbasefcpicm: TFloatField
      FieldName = 'itmbasefcpicm'
    end
    object itmtribitmpercfcpicm: TFloatField
      FieldName = 'itmpercfcpicm'
    end
    object itmtribitmquantidade: TFloatField
      FieldName = 'itmquantidade'
    end
  end
  object mestrib: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select '
      'meschave'
      ',toecodigo'
      ',mesvalor'
      ',mesdesconto'
      ',mestotal'
      ',mesfrete'
      ',messeguro'
      ',mesoutras'
      ',mesbicm'
      ',mesicm'
      ',mesbicms'
      ',mesicms'
      ',mesipi'
      ',mespis'
      ',mescofins'
      ',mespiss'
      ',mescofinss'
      'from mes where meschave=:meschave')
    Left = 992
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mestribmeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object mestribtoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object mestribmesvalor: TFloatField
      FieldName = 'mesvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesdesconto: TFloatField
      FieldName = 'mesdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmestotal: TFloatField
      FieldName = 'mestotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesfrete: TFloatField
      FieldName = 'mesfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesseguro: TFloatField
      FieldName = 'messeguro'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesoutras: TFloatField
      FieldName = 'mesoutras'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesbicm: TFloatField
      FieldName = 'mesbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesicm: TFloatField
      FieldName = 'mesicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesbicms: TFloatField
      FieldName = 'mesbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesicms: TFloatField
      FieldName = 'mesicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmesipi: TFloatField
      FieldName = 'mesipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmespis: TFloatField
      FieldName = 'mespis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestribmescofins: TFloatField
      FieldName = 'mescofins'
      Required = True
    end
    object mestribmespiss: TFloatField
      FieldName = 'mespiss'
      Required = True
    end
    object mestribmescofinss: TFloatField
      FieldName = 'mescofinss'
      Required = True
    end
  end
  object icm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  icmcodigo,'
      '  icmaliquotas'
      'FROM icm')
    Left = 992
    Top = 192
    object icmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object icmicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Size = 8
    end
  end
  object protrib: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select '
      'procodigo'
      ',icmcodigo'
      ',tpocodigo'
      ',proncm'
      ',cstcodigo'
      ',csicodigo'
      ',cspcodigo'
      ',csfcodigo'
      ',prounitrib'
      ',propisaliquota'
      ',procofinsaliquota'
      ',procest'
      ',promva'
      ',cfocfopfora'
      ',cfocfop'
      ',propercfcp'
      ',icmcodigofora'
      ',propercreducaobaseicm'
      'from pro where procodigo=:procodigo'
      '')
    Left = 992
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object protribprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object protribicmcodigo: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmcodigo'
      Required = True
      Size = 3
    end
    object protribtpocodigo: TIntegerField
      DisplayLabel = 'Tipo de Produto'
      FieldName = 'tpocodigo'
      Required = True
    end
    object protribproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Required = True
      Size = 15
    end
    object protribcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object protribcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object protribcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object protribcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object protribprounitrib: TIntegerField
      DisplayLabel = 'Unidade Tribut'#225'ria'
      FieldName = 'prounitrib'
      Required = True
    end
    object protribpropisaliquota: TFloatField
      FieldName = 'propisaliquota'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object protribprocofinsaliquota: TFloatField
      FieldName = 'procofinsaliquota'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object protribprocest: TStringField
      FieldName = 'procest'
    end
    object protribpromva: TStringField
      DisplayLabel = 'MVA'
      FieldName = 'promva'
      Size = 10
    end
    object protribcfocfopfora: TStringField
      FieldName = 'cfocfopfora'
      Size = 5
    end
    object protribcfocfop: TStringField
      FieldName = 'cfocfop'
      EditMask = '0.000;1;_'
      Size = 5
    end
    object protribpropercfcp: TStringField
      DisplayLabel = '% Combate a Pobreza'
      FieldName = 'propercfcp'
      Size = 10
    end
    object protribicmcodigofora: TStringField
      FieldName = 'icmcodigofora'
      Required = True
      Size = 3
    end
    object protribpropercreducaobaseicm: TFloatField
      FieldName = 'propercreducaobaseicm'
    end
  end
  object pco: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  pcocodigo,'
      '  procodigo,'
      '  pcosubproduto,'
      '  unicodigo,'
      '  pcoquantidade,'
      '  pcosaborfixo'
      'FROM pco where procodigo=:procodigo')
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object pcopcocodigo: TIntegerField
      FieldName = 'pcocodigo'
    end
    object pcoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pcopcosubproduto: TIntegerField
      FieldName = 'pcosubproduto'
    end
    object pcounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object pcopcoquantidade: TFloatField
      FieldName = 'pcoquantidade'
    end
    object pcopcosaborfixo: TIntegerField
      FieldName = 'pcosaborfixo'
    end
  end
  object servicos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      ''
      '      SUM(ito.itoquantidade * ito.itovalorav) itmtotal'
      '    FROM ito,'
      '         pro'
      '    WHERE  ito.orcchave= :orcchave'
      '    AND ito.itoquantidade > 0'
      '    AND ito.procodigo = pro.procodigo'
      '    AND pro.tpocodigo = 9'
      '    AND ito.stocodigo <> 88;')
    Left = 520
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object produtos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      ''
      '      SUM(ito.itoquantidade * ito.itovalorav) itmtotal'
      '    FROM ito,'
      '         pro'
      '    WHERE  ito.orcchave= :orcchave'
      '    AND ito.itoquantidade > 0'
      '    AND ito.procodigo = pro.procodigo'
      '    AND pro.tpocodigo = 0'
      '    AND ito.stocodigo <> 88;')
    Left = 936
    Top = 704
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object Descontomes: TUniQuery
    Connection = Conexao
    Left = 960
    Top = 368
  end
  object ltedesconto: TUniQuery
    Connection = Conexao
    Left = 920
    Top = 560
  end
  object idcoic: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  idc.idccodigo,'
      '  idcnome,'
      '  idcdoc'
      
        'FROM idc,oic where oic.idccodigo=idc.idccodigo and oic.orcchave=' +
        ':orcchave')
    Left = 1080
    Top = 517
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object oic: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select oicchave, oic.idccodigo, orcchave,idcdoc as oicdoc from o' +
        'ic,idc WHERE oic.idccodigo=idc.idccodigo and oic.orcchave=:orcch' +
        'ave')
    Left = 1080
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object oicoicchave: TIntegerField
      FieldName = 'oicchave'
    end
    object oicidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object oicorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object oicoicdoc: TStringField
      FieldName = 'oicdoc'
      Size = 30
    end
  end
  object dtltef: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT dtl.dtlchave'
      '     , mda.mdaidentificacao'
      '     , dtl.dtlvalor'
      '     , dtl.ltechave'
      '     , dtl.mdacodigo'
      '     , dtl.rdcnrauto'
      '  FROM mes'
      ' INNER JOIN rfm ON mes.meschave = rfm.meschave   '
      ' INNER JOIN rfi ON rfm.rfichave = rfi.rfichave   '
      ' INNER JOIN mfi ON mfi.rfichave = rfi.rfichave'
      ' INNER JOIN mlt ON mlt.mfichave = mfi.mfichave'
      ' INNER JOIN dtl ON dtl.ltechave = mlt.ltechave'
      ' INNER JOIN mda ON dtl.mdacodigo = mda.mdacodigo'
      ' WHERE rfi.tfdcodigo IN (32,2)'
      '   AND mes.meschave = :meschave'
      'GROUP BY dtl.rdcnrauto'
      '')
    Left = 1104
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dtltefdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtltefltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtltefmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtltefdtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltefmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object rdctef: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdccomprovante1via,'
      '  dtlchave,'
      '  rdcnrauto,'
      '  bdccodigo,'
      '  rdcvalor'
      'FROM rdc where dtlchave=:dtlchave')
    Left = 1102
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
  end
  object trm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '  trm.trmcodigo'
      '     , trm.trmidentificacao'
      '     , tci.tciporta'
      '     , mit.ecfcodigo'
      '     , mit.tipcodigo'
      '     , ctr.ctacodigo'
      '     , trm.trmbalamodelo'
      '     , trm.trmbalaporta'
      '     , trm.trmbalabaud'
      '     , trm.trmbalahandshake'
      '     , trm.trmbalaparity'
      '     , trm.trmbalastop'
      '     , trm.trmbaladata'
      '     , trm.trmgaveta '
      '     , trm.trmestabelecimentotipotef'
      '     , trm.trmterminalcomprovante1via'
      '     , trm.trmintegrapagarme'
      ''
      '  FROM trm '
      '  INNER JOIN ctr ON trm.trmcodigo = ctr.trmcodigo'
      '  INNER JOIN tci ON trm.trmcodigo = tci.trmcodigo'
      '  INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN cit ON trm.trmcodigo = cit.trmcodigo'
      '  WHERE trm.trmcodigo'#160'='#160':trmcodigo')
    Left = 992
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object trmtrmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'trmcodigo'
    end
    object trmtrmidentificacao: TStringField
      FieldName = 'trmidentificacao'
      Size = 50
    end
    object trmtciporta: TStringField
      FieldName = 'tciporta'
      Size = 30
    end
    object trmecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
    end
    object trmtipcodigo: TIntegerField
      FieldName = 'tipcodigo'
    end
    object trmctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object trmtrmbalamodelo: TStringField
      FieldName = 'trmbalamodelo'
      Size = 50
    end
    object trmtrmbalaporta: TStringField
      FieldName = 'trmbalaporta'
      Size = 50
    end
    object trmtrmbalabaud: TStringField
      FieldName = 'trmbalabaud'
      Size = 50
    end
    object trmtrmbalahandshake: TStringField
      FieldName = 'trmbalahandshake'
      Size = 50
    end
    object trmtrmbalaparity: TStringField
      FieldName = 'trmbalaparity'
      Size = 50
    end
    object trmtrmbalastop: TStringField
      FieldName = 'trmbalastop'
      Size = 50
    end
    object trmtrmbaladata: TStringField
      FieldName = 'trmbaladata'
      Size = 50
    end
    object trmtrmgaveta: TIntegerField
      FieldName = 'trmgaveta'
    end
    object trmtrmestabelecimentotipotef: TStringField
      FieldName = 'trmestabelecimentotipotef'
      Size = 50
    end
    object trmtrmterminalcomprovante1via: TStringField
      FieldName = 'trmterminalcomprovante1via'
      Size = 6000
    end
    object trmtrmintegrapagarme: TIntegerField
      FieldName = 'trmintegrapagarme'
    end
  end
  object adctef: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcidentificacao,'
      '  adcchaveintegracao,'
      '  adcserviconome'
      '  '
      'FROM adc WHERE adcencerramento IS NULL')
    Left = 1104
    Top = 208
  end
  object orctef: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select orcchave, orcgeralav, orcmesa, orcdescontoav, clbidentifi' +
        'cacao'
      '  from orc '
      '  LEFT JOIN clb ON orc.clbencerrou=clb.clbcodigo'
      '  where orcchave=:orcchave and orc.stocodigo<>3')
    Left = 1104
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object dtltefparcial: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  dtl.dtlchave,'
      '  mda.mdaidentificacao,'
      '  dtl.dtlvalor,'
      '  dtl.ltechave,'
      '  dtl.mdacodigo,'
      '  dtl.rdcnrauto'
      ''
      'FROM olt'
      '  INNER JOIN lte'
      '    ON olt.ltechave = lte.ltechave'
      '  INNER JOIN dtl'
      '    ON lte.ltechave = dtl.ltechave'
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN rdc'
      '    ON dtl.dtlchave = rdc.dtlchave'
      'WHERE olt.ltechave = :ltechave')
    Left = 1096
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object dtltefparcialdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtltefparcialltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtltefparcialmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtltefparcialdtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltefparcialmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object rct: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rctchave,'
      '  rctvalor,'
      '  rctnrauto,'
      '  adccodigo,'
      '  rctparcelas,'
      '  bdccodigo,'
      '  rctcomprovante1via,'
      '  rctcomprovante2via,'
      '  rcthora,'
      '  orcchave,'
      '  rctstatus,'
      '  rctrede'
      'FROM rct'
      'WHERE rctnrauto = :rctnrauto'
      'AND bdccodigo = :bdccodigo'
      'AND rctvalor = :rctvalor'
      'AND rctstatus <> '#39'PENDENTE'#39)
    Left = 1104
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rctnrauto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bdccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rctvalor'
        Value = nil
      end>
  end
  object consultacomprovante: TUniQuery
    Connection = Conexao
    Left = 976
    Top = 456
  end
  object centavos: TUniQuery
    Connection = Conexao
    Left = 992
    Top = 544
  end
  object dadosrelatorio: TUniQuery
    Connection = Conexao
    Left = 920
    Top = 640
  end
  object DSDadosRelatorio: TUniDataSource
    DataSet = dadosrelatorio
    Left = 992
    Top = 632
  end
  object mor: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      ' mor.morchave,'
      ' mes.mesrefeicao'
      'FROM mor,mes'
      
        '  WHERE mor.meschave=mes.meschave AND mes.mesrefeicao=1  and  mo' +
        'r.orcchave=:orcchave;')
    Left = 1088
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object itodes: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       ito.itochave            -- chave'
      '     , ito.itodescontoav       -- Desconto'
      '     , ito.itoquantidade'
      '     , ito.stocodigo'
      '     , ito.procodigo'
      '     , ito.itototalav'
      '  FROM ito'
      ''
      ' WHERE ito.orcchave = :orcchave'
      '   AND ito.stocodigo not in (1,3,4,8,9)'
      
        '   and ito.procodigo<>(select cfgmgouproatendimento from cfgmgou' +
        ')  '
      
        '   and ito.procodigo<>(select cfgmgouproatendimentoparcial from ' +
        'cfgmgou) '
      '   and ito.itoquantidade>0'
      ' ORDER BY ito.itoitem')
    Left = 128
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object trmstone: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select trmcodigo, trmintegrapagarme from trm where trmcodigo=:tr' +
        'mcodigo')
    Left = 880
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object trmstonetrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object trmstonetrmintegrapagarme: TIntegerField
      FieldName = 'trmintegrapagarme'
    end
  end
  object rpwemaberto: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rpwchave,'
      '  rpwtoken,'
      '  rpwmesa,'
      '  rpwstatus,'
      '  orcchave'
      'FROM rpw where rpwstatus='#39'EM ABERTO'#39)
    Left = 1164
    Top = 520
    object rpwemabertorpwchave: TIntegerField
      FieldName = 'rpwchave'
    end
    object rpwemabertorpwtoken: TStringField
      FieldName = 'rpwtoken'
      Size = 200
    end
    object rpwemabertorpwmesa: TStringField
      FieldName = 'rpwmesa'
      Size = 10
    end
    object rpwemabertorpwstatus: TStringField
      FieldName = 'rpwstatus'
      Size = 50
    end
    object rpwemabertoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
  object rpw: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  rpwchave,'
      '  rpwtoken,'
      '  rpwmesa,'
      '  rpwstatus,'
      '  orcchave'
      'FROM rpw where rpwstatus='#39'EM ABERTO'#39' and  orcchave=:orcchave')
    Left = 1144
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object rpwrpwchave: TIntegerField
      FieldName = 'rpwchave'
    end
    object rpwrpwtoken: TStringField
      FieldName = 'rpwtoken'
      Size = 200
    end
    object rpwrpwmesa: TStringField
      FieldName = 'rpwmesa'
      Size = 10
    end
    object rpwrpwstatus: TStringField
      FieldName = 'rpwstatus'
      Size = 50
    end
    object rpworcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
  object itoref: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select itochave, orcchave, itovalorav, itototalav,itoquantidade,' +
        ' itosaldoav from ito where orcchave=:orcchave')
    Left = 80
    Top = 680
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object mfimlt: TUniQuery
    Connection = Conexao
    Left = 672
    Top = 648
  end
  object oltmlt: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT ltechave from olt where orcchave=:orcchave')
    Left = 680
    Top = 712
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object ltemlt: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT mltchave,'
      '  mfichave,'
      '  ltechave,'
      
        '  flacodigo from mlt where ltechave=:ltechave and mfichave=:mfic' +
        'have')
    Left = 632
    Top = 656
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mfichave'
        Value = nil
      end>
  end
  object lteclt: TUniQuery
    Connection = Conexao
    Left = 1056
    Top = 448
  end
  object ccodtl: TUniQuery
    Connection = Conexao
    Left = 1128
    Top = 464
  end
  object rfmrfi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select  rfmchave, rfichave, meschave, flacodigo from rfm where m' +
        'eschave=:meschave and rfichave=:rfichave')
    Left = 248
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
  end
  object ccoclt: TUniQuery
    Connection = Conexao
    Left = 920
    Top = 56
  end
  object dtlclt: TUniQuery
    Connection = Conexao
    Left = 920
    Top = 120
  end
  object itmsaldo: TUniQuery
    Connection = Conexao
    Left = 904
    Top = 272
  end
  object idc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  idccodigo,'
      '  idcnome,'
      '  idcdoc'
      'FROM idc where idcdoc=:idcdoc')
    Left = 864
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idcdoc'
        Value = nil
      end>
    object idcidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object idcidcnome: TStringField
      FieldName = 'idcnome'
      Size = 50
    end
    object idcidcdoc: TStringField
      FieldName = 'idcdoc'
      Size = 50
    end
  end
  object mic: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  micchave,'
      '  idccodigo,'
      '  meschave'
      'FROM mic where meschave=:meschave and idccodigo=:idccodigo')
    Left = 896
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'idccodigo'
        Value = nil
      end>
    object micmicchave: TIntegerField
      FieldName = 'micchave'
    end
    object micidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object micmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
end
