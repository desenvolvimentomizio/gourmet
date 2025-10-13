object SMServerGourmet: TSMServerGourmet
  OldCreateOrder = False
  Height = 705
  Width = 563
  object conexao: TFDConnection
    Params.Strings = (
      'Database=kuskao2804'
      'User_Name=root'
      'Password=xda973'
      'Server=192.168.5.166'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 96
    Top = 24
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorHome = 'C:\mysql'
    VendorLib = 'libmysql.dll'
    Left = 96
    Top = 80
  end
  object clb: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select clbcodigo,clbidentificacao, clbsenha from clb')
    Left = 96
    Top = 136
  end
  object FDStanStorageJSONLink: TFDStanStorageJSONLink
    Left = 256
    Top = 24
  end
  object FDStanStorageBinLink: TFDStanStorageBinLink
    Left = 264
    Top = 80
  end
  object cfg: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cfgmgoumesas,cfgmgouqtdmesas from cfgmgou')
    Left = 96
    Top = 192
  end
  object grp: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT'
      '  grp.grpcodigo,'
      '  grp.grpidentificacao,'
      '  pro.tpocodigo,'
      '  grp.tgrcodigo'
      'FROM pro'
      '  INNER JOIN grp'
      '    ON pro.grpcodigo = grp.grpcodigo'
      '  INNER JOIN gri'
      '    ON grp.grpcodigo = gri.grpcodigo'
      '    '
      
        'WHERE (pro.tpocodigo = 0 or pro.tpocodigo = 4 or pro.tpocodigo =' +
        ' 9 )'
      'and (gri.gricardapio=1 ) '
      'and pro.sipcodigo=1'
      'GROUP BY grp.grpidentificacao'
      'ORDER BY grp.grpidentificacao')
    Left = 96
    Top = 408
  end
  object cgr: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cgrcodigo, cgridentificacao from cgr')
    Left = 96
    Top = 352
  end
  object tgr: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT'
      '  tgr.tgrcodigo,'
      '  tgridentificacao,'
      '  cgrcodigo'
      'FROM tgr'
      '  INNER JOIN grp'
      '    ON grp.tgrcodigo = tgr.tgrcodigo'
      '  INNER JOIN gri'
      '    ON grp.grpcodigo = gri.grpcodigo  '
      '  INNER JOIN pro'
      '    ON grp.grpcodigo = pro.grpcodigo'
      '    AND pro.tpocodigo NOT IN (7, 8)'
      'WHERE (gri.gricardapio=1 )'
      'GROUP BY tgridentificacao'
      'ORDER BY tgridentificacao')
    Left = 96
    Top = 296
  end
  object unm: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT unm.unmchave'
      '     , unm.orcchave'
      '     , unm.unmmesa'
      '     , orc.orcmesa '
      '  FROM unm'
      ' INNER JOIN orc ON unm.orcchave = orc.orcchave'
      ' WHERE unm.unmmesa = :unimesa'
      '   AND orc.stocodigo IN (1,2,5);')
    Left = 264
    Top = 288
    ParamData = <
      item
        Name = 'UNIMESA'
        ParamType = ptInput
      end>
  end
  object orc: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT orc.orcchave       -- chave'
      '     , orc.etdcodigo      -- entidade'
      '     , orc.clbcodigo      -- atendente'
      '     , orc.stocodigo      -- 1 Em digita'#231#227'o'
      '     , orc.orcmesa        -- mesa'
      '     , orcpessoas'
      '  FROM orc'
      ' WHERE orc.orcmesa = :orcmesa'
      '   AND orc.orcdataencerr IS NULL'
      '   AND orc.stocodigo in (1,2,5)')
    Left = 264
    Top = 344
    ParamData = <
      item
        Name = 'ORCMESA'
        ParamType = ptInput
      end>
  end
  object MobAbreOrcamento: TFDStoredProc
    Connection = conexao
    StoredProcName = 'MobAbreOrcamento'
    Left = 376
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'pEtdCodigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'pClbCodigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'pMocCodigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'pOrcMesa'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'pFlacodigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'pTrmCodigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'pOrcChave'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object tito: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'CREATE TABLE if not exist tito'
      '     ( ID INT NOT NULL AUTO_INCREMENT'
      '     , orcchave  int'
      '     , procodigo int'
      '     , puncodigo int'
      '     , clbcodigo int '
      '     , qtde      float'
      '     , pessoas   int'
      '     , obs       varchar(100)'
      '     , sfnid     int'
      '     , sfncodigo int'
      '     , copos     int'
      '     , pratos    int'
      '     , PRIMARY KEY (ID)'
      '   ) ENGINE = INNODB DEFAULT charset = latin1;'
      '   '
      'SELECT ID '
      '     , orcchave'
      '     , procodigo '
      '     , puncodigo '
      '     , clbcodigo'
      '     , qtde   '
      '     , pessoas'
      '     , obs'
      '     , sfnid'
      '     , sfncodigo'
      '     , copos'
      '     , pratos'
      '  FROM tito;')
    Left = 264
    Top = 408
  end
  object ito: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT ito.itochave            -- chave'
      '     , ito.orcchave            -- orcamento '
      '     , ito.itoitem             -- item do orcamento'
      '     , ito.procodigo           -- chave produto'
      
        '     , IF(sfn.sfncodigo IS NULL, pro.pronome, CONCAT(pro.pronome' +
        'reduzido,'#39' '#39',if(UPPER(uni.uninome)='#39'UNIDADE'#39','#39#39',uni.uninome),'#39' (' +
        'Sb: '#39',formatValor(sfn.sfnquantidade,0),'#39')'#39')) pronome'
      '     , ito.itoquantidade       -- quantidade vendida'
      '     , uni.unisimbolo'
      '     , ito.itovalorav          -- pre'#231'o a vista'
      '     , ito.itototalav          -- total liquido a vista'
      '     , ito.puncodigo           -- pun codigo '
      '  FROM ito'
      '  '
      ' INNER JOIN pro ON ito.procodigo = pro.procodigo'
      ' '
      ' INNER JOIN uni ON ito.unicodigo = uni.unicodigo'
      ' '
      ' INNER JOIN sto ON ito.stocodigo = sto.stocodigo'
      ' '
      '  LEFT JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      '        '
      'WHERE ito.orcchave = :orcchave'
      '  AND ito.stocodigo in (1,2,5)'
      ' ORDER BY ito.itoitem')
    Left = 96
    Top = 480
    ParamData = <
      item
        Name = 'ORCCHAVE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object itoitochave: TIntegerField
      FieldName = 'itochave'
    end
    object itoorcchave: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'orcchave'
      Calculated = True
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
    object itoitoquantidade: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itoquantidade'
      Origin = 'itoquantidade'
      Precision = 18
      Size = 6
    end
    object itounisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object itoitovalorav: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itovalorav'
      Origin = 'itovalorav'
      Precision = 15
      Size = 2
    end
    object itoitototalav: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'itototalav'
      Origin = 'itototalav'
      Precision = 15
      Size = 2
    end
    object itopuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
  end
  object czn: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select cznchave from czn where cznfechamento IS null order by cz' +
        'nchave limit 1')
    Left = 96
    Top = 544
    object czncznchave: TIntegerField
      FieldName = 'cznchave'
    end
  end
  object sfn: TFDQuery
    Connection = conexao
    SQL.Strings = (
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
      '     , pro.grpcodigo'
      '  FROM pun '
      ' INNER JOIN pro'
      '         ON pun.procodigo = pro.procodigo '
      ' INNER JOIN uni'
      '         ON pun.unicodigo = uni.unicodigo '
      ' INNER JOIN sfn '
      '         ON pro.procodigo = sfn.procodigo '
      '        AND uni.unicodigo = sfn.unicodigo'
      ' WHERE (pro.tpocodigo = 0 or pro.tpocodigo = 4)'
      '   '
      ' ORDER BY pun.punprecoav ')
    Left = 160
    Top = 296
    object sfnprocodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'procodigo'
      Origin = 'procodigo'
    end
    object sfnpuncodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'puncodigo'
      Origin = 'puncodigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sfnpronomereduzido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pronomereduzido'
      Origin = 'pronomereduzido'
      Size = 98
    end
    object sfnpunprecoav: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'punprecoav'
      Origin = 'punprecoav'
      Size = 30
    end
    object sfnunipro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unipro'
      Origin = 'unipro'
    end
    object sfnunipun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unipun'
      Origin = 'unipun'
    end
    object sfnunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Origin = 'unisimbolo'
      Required = True
      Size = 6
    end
    object sfnsfnquantidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'sfnquantidade'
      Origin = 'sfnquantidade'
    end
    object sfnsfncodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sfncodigo'
      Origin = 'sfncodigo'
    end
    object sfngrpcodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grpcodigo'
      Origin = 'grpcodigo'
    end
  end
  object pro: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT pro.procodigo'
      
        '     , namecase((CAST(pro.pronomereduzido as char(40) CHARSET La' +
        'tin1))) pronomereduzido'
      '     , punprecoav'
      '     , pro.grpcodigo'
      '  FROM pro '
      ' INNER JOIN gri'
      '         ON pro.grpcodigo = gri.grpcodigo'
      ' INNER JOIN (SELECT pun.procodigo '
      '                  , pun.unicodigo'
      
        '                  , RTRIM(CAST(GROUP_CONCAT(RTRIM(CONCAT(uni.uni' +
        'simbolo,'#39' '#39',FormatValor(pun.punprecoav,2)))  ORDER BY pun.punpre' +
        'coav ASC SEPARATOR '#39' '#39') AS char(40) charset Latin1)) AS punpreco' +
        'av'
      '               FROM pun '
      '              INNER JOIN pro pr'
      
        '                      ON pun.procodigo = pr.procodigo  and pun.t' +
        'uncodigo in (1,9)'
      '              INNER JOIN uni on pun.unicodigo = uni.unicodigo'
      '              WHERE 0 = (SELECT COUNT(*)'
      '                           FROM pro p'
      '                          INNER JOIN sfn s'
      '                                  ON s.procodigo = p.procodigo '
      '                          WHERE p.grpcodigo=pr.grpcodigo)'
      '              GROUP BY pun.procodigo)tpun'
      '         ON pro.procodigo = tpun.procodigo'
      
        ' WHERE (pro.tpocodigo = 0  or pro.tpocodigo = 4  or pro.tpocodig' +
        'o = 9)'
      '   AND 0 = (SELECT COUNT(*)'
      '               FROM pro p'
      '              INNER JOIN sfn s'
      '                      ON s.procodigo = p.procodigo '
      '              WHERE p.grpcodigo=pro.grpcodigo)'
      '   AND pro.sipcodigo=1'
      ' ORDER BY pro.pronomereduzido')
    Left = 160
    Top = 352
    object proprocodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'procodigo'
      Origin = 'procodigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object propronomereduzido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pronomereduzido'
      Origin = 'pronomereduzido'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object propunprecoav: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'punprecoav'
      Origin = 'punprecoav'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object progrpcodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grpcodigo'
      Origin = 'grpcodigo'
    end
  end
end
