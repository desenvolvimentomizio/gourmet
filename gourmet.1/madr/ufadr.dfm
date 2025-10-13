inherited fadr: Tfadr
  ActiveControl = adrdatainicial
  Caption = 'Apura'#231#227'o da DRE'
  ExplicitWidth = 812
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = adrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = adrdatainicial
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = adrdatafinal
      end
      object adrchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object adrdatainicial: TDBEdit
        Left = 136
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adrdatainicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object adrdatafinal: TDBEdit
        Left = 136
        Top = 57
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adrdatafinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adrchave,'
      '  adrdatainicial,'
      '  adrdatafinal,'
      '  clbcodigo,'
      '  adrsituacao'
      'FROM adr where adrchave=:adrchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'adrchave'
        Value = nil
      end>
    object registroadrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'adrchave'
    end
    object registroadrdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'adrdatainicial'
      Required = True
    end
    object registroadrdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'adrdatafinal'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroadrsituacao: TIntegerField
      FieldName = 'adrsituacao'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object rdr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdrchave,'
      '  adrchave,'
      '  pcgcodigo,'
      '  rdrvalor,'
      '  cedcodigo,'
      '  phgcodigo,'
      '  grecodigo,'
      '  pcrcomplhist'
      'FROM rdr where adrchave=:adrchave')
    Left = 352
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'adrchave'
        Value = nil
      end>
    object rdrrdrchave: TIntegerField
      FieldName = 'rdrchave'
    end
    object rdradrchave: TIntegerField
      FieldName = 'adrchave'
    end
    object rdrpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object rdrrdrvalor: TFloatField
      FieldName = 'rdrvalor'
    end
    object rdrcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rdrphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rdrgrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object rdrpcrcomplhist: TStringField
      FieldName = 'pcrcomplhist'
      Size = 250
    end
  end
  object fat: TUniQuery
    SQL.Strings = (
      '-- Faturamento - Revenda de Mercadoria'
      
        '        SELECT 196                                 AS pcgcodigo ' +
        '-- Revenda de Mercadoria'
      '             , SUM(itm.itmtotal - itm.itmdesconto) AS pcrvalor'
      
        '             , 103                                 AS phgcodigo ' +
        '-- Venda de mercadorias'
      '          FROM itm'
      '         INNER JOIN mes ON itm.meschave = mes.meschave'
      '         INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      '         WHERE toe.ttocodigo = 2 -- Opera'#231#227'o de Venda'
      '           AND mes.sdecodigo != '#39'02'#39' '
      
        '           AND mes.mesemissao BETWEEN :datainicial AND :datafina' +
        'l')
    Left = 356
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object fatpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object fatpcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object fatphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
  end
  object cmv: TUniQuery
    SQL.Strings = (
      '-- CMV'
      
        '        SELECT 232                           AS pcgcodigo -- Cus' +
        'to de mercadoria vendida'
      '             , SUM(IFNULL(itmcpa.vlcusto,0)) AS pcrvalor'
      
        '             , 11                            AS phgcodigo -- Com' +
        'pra de mercadoria'
      '          FROM itm'
      '         INNER JOIN mes ON itm.meschave = mes.meschave'
      '         INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      '                   '
      '          LEFT JOIN (SELECT ii.itmchave'
      '                          , ii.procodigo'
      
        '                          , ROUND(((ii.itmvalor + ((ii.itmicms +' +
        ' ii.itmipi + ii.itmfrete + ii.itmseguro + ii.itmoutras - ii.itmd' +
        'esconto) / ii.itmquantidade))/ii.itmcontendo), 2) AS vlcusto'
      
        '                          , ROUND((ii.itmvalor/ii.itmcontendo), ' +
        '3) vlrcompra'
      '                       FROM itm ii'
      '                       JOIN (SELECT i.procodigo'
      '                                  , MAX(i.itmchave) itmchave'
      '                               FROM itm i'
      '                               JOIN toe t'
      '                                 ON i.toecodigo = t.toecodigo'
      
        '                                AND t.ttocodigo = 1 -- Opera'#231#227'o ' +
        'de Compra'
      '                              GROUP BY i.procodigo) ultcpa'
      '                         ON ii.procodigo = ultcpa.procodigo'
      '                        AND ii.itmchave  = ultcpa.itmchave) '
      '                    itmcpa ON itm.procodigo = itmcpa.procodigo  '
      '  '
      '         WHERE toe.ttocodigo = 2 -- Opera'#231#227'o de Venda'
      '           AND mes.sdecodigo != '#39'02'#39' '
      
        '           AND mes.mesemissao BETWEEN :datainicial AND :datafina' +
        'l')
    Left = 352
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object cmvpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object cmvpcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object cmvphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
  end
  object cus: TUniQuery
    SQL.Strings = (
      '     -- Custos e Despesas - Contas a Pagar'
      '       SELECT pcr.pcgcodigo'
      
        '             , sum(IF(pcr.pcrvalor > v_rfi.rfivalor, v_rfi.rfiva' +
        'lor, pcr.pcrvalor)) AS pcrvalor'
      '             , pcr.phgcodigo'
      '          FROM v_rfi'
      '         INNER JOIN pcr ON v_rfi.titcodigo = pcr.titcodigo'
      '         WHERE v_rfi.tfdcodigo = 1           -- Contas a Pagar'
      
        '           AND v_rfi.srfcodigo NOT IN (3, 9) -- Oculta as parcel' +
        'as Canceladas e Renegociadas'
      
        '           AND v_rfi.rfidtultbaixa BETWEEN  :datainicial AND :da' +
        'tafinal group by pcr.pcgcodigo                      ')
    Left = 356
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object cuspcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object cuspcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object cusphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
  end
  object flh: TUniQuery
    SQL.Strings = (
      '  -- Folha de Pagamento'
      '        SELECT pcg.pcgcodigo'
      '             , SUM(eva.evavalor) AS pcrvalor'
      '             , eva.phgcodigo'
      '          FROM evf'
      '         INNER JOIN pcg ON evf.pcgcodigo = pcg.pcgcodigo'
      '         INNER JOIN eva ON evf.evfcodigo = eva.evfcodigo'
      '         INNER JOIN flh ON eva.flhchave = flh.flhchave'
      
        '         WHERE evf.cedcodigo = 1 -- Eventos de Cr'#233'dito para o Fu' +
        'ncion'#225'rio'
      '           AND flh.flhdtinicial >= :datainicial '
      '           AND flh.flhdtfinal   <= :datafinal'
      '         GROUP BY pcg.pcgcodigo')
    Left = 352
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object flhpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object flhpcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object flhphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
  end
end
