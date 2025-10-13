inherited fdrb: Tfdrb
  ActiveControl = tcbcodigo
  Caption = 'Detalhe da Regra Tribut'#225'ria'
  ClientHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 497
  end
  inherited paginas: TPageControl
    Height = 497
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = drbcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o Tribut'#225'ria'
        FocusControl = otbcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Contribuinte'
        FocusControl = tcbcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST ou CSOSN'
        FocusControl = drbcstcsosn
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual para Base ICM'
        FocusControl = drbperbaicms
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota do ICM'
        FocusControl = drbaliqicms
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota do ICMS ST'
        FocusControl = drbaliqicmsst
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IVA ICM ST'
        FocusControl = drbivaicmsst
      end
      object Label9: TLabel
        Left = 8
        Top = 222
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CFOP'
        FocusControl = cfocfop
      end
      object Label10: TLabel
        Left = 8
        Top = 249
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Destaca ICM'
        FocusControl = drbdestacaicms
      end
      object Label11: TLabel
        Left = 8
        Top = 276
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Destaca ICM ST'
        FocusControl = drbdestacaicmsst
      end
      object Label12: TLabel
        Left = 8
        Top = 303
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Destaca IPI'
        FocusControl = drbdestacaipi
      end
      object Label13: TLabel
        Left = 8
        Top = 330
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Informa'#231#245'es Adicionais'
      end
      object drbcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object otbcodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tcbcodigo: TDBEdit
        Left = 148
        Top = 30
        Width = 21
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object drbcstcsosn: TDBEdit
        Left = 148
        Top = 84
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbcstcsosn'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object drbperbaicms: TDBEdit
        Left = 148
        Top = 111
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbperbaicms'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object drbaliqicms: TDBEdit
        Left = 148
        Top = 138
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbaliqicms'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object drbaliqicmsst: TDBEdit
        Left = 148
        Top = 165
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbaliqicmsst'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object drbivaicmsst: TDBEdit
        Left = 148
        Top = 192
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbivaicmsst'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object cfocfop: TDBEdit
        Left = 148
        Top = 219
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfocfop'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object drbdestacaicms: TDBEdit
        Left = 148
        Top = 246
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbdestacaicms'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object drbdestacaicmsst: TDBEdit
        Left = 148
        Top = 273
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbdestacaicmsst'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object drbdestacaipi: TDBEdit
        Left = 148
        Top = 300
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drbdestacaipi'
        DataSource = DSRegistro
        TabOrder = 11
      end
    end
  end
  object drbinfoadicfisco: TDBMemo [3]
    Left = 152
    Top = 351
    Width = 521
    Height = 122
    CustomHint = BalloonHint
    DataField = 'drbinfoadicfisco'
    DataSource = DSRegistro
    MaxLength = 1000
    TabOrder = 3
  end
  inherited DSRegistro: TUniDataSource
    Left = 604
    Top = 96
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drbcodigo,'
      '  rtbcodigo,'
      '  tcbcodigo,'
      '  drbcstcsosn,'
      '  drbperbaicms,'
      '  drbaliqicms,'
      '  drbaliqicmsst,'
      '  drbivaicmsst,'
      '  drbdestacaicms,'
      '  drbdestacaicmsst,'
      '  drbdestacaipi,'
      '  cfocfop,'
      '  otbcodigo,'
      '  drbinfoadicfisco'
      'FROM drb'
      'where drbcodigo=:drbcodigo and rtbcodigo=:rtbcodigo')
    Left = 604
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'drbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rtbcodigo'
        Value = nil
      end>
    object registrodrbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'drbcodigo'
    end
    object registrortbcodigo: TIntegerField
      DisplayLabel = 'Regra'
      FieldName = 'rtbcodigo'
    end
    object registrodrbinfoadicfisco: TStringField
      DisplayLabel = 'Informa'#231#245'es Adicionais ao Fisco'
      FieldName = 'drbinfoadicfisco'
      Size = 1000
    end
    object registrotcbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tcbcodigo'
      Required = True
    end
    object registrotcbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tcbidentificacao'
      LookupDataSet = tcb
      LookupKeyFields = 'tcbcodigo'
      LookupResultField = 'tcbidentificacao'
      KeyFields = 'tcbcodigo'
      Size = 35
      Lookup = True
    end
    object registrootbcodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o Tribut'#225'ria'
      FieldName = 'otbcodigo'
      Required = True
    end
    object registrootbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'otbidentificacao'
      LookupDataSet = otb
      LookupKeyFields = 'otbcodigo'
      LookupResultField = 'otbidentificacao'
      KeyFields = 'otbcodigo'
      Size = 50
      Lookup = True
    end
    object registrodrbcstcsosn: TStringField
      DisplayLabel = 'CST ou CSOSN'
      FieldName = 'drbcstcsosn'
      Required = True
      Size = 4
    end
    object registrodrbperbaicms: TFloatField
      DisplayLabel = '% Base ICM'
      FieldName = 'drbperbaicms'
      Required = True
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object registrodrbaliqicms: TFloatField
      DisplayLabel = 'Aliq. ICM'
      FieldName = 'drbaliqicms'
      Required = True
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object registrodrbaliqicmsst: TFloatField
      DisplayLabel = 'Aliq. ICMS ST'
      FieldName = 'drbaliqicmsst'
      Required = True
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object registrodrbivaicmsst: TFloatField
      DisplayLabel = 'IVA ICM ST'
      FieldName = 'drbivaicmsst'
      Required = True
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object registrodrbdestacaicms: TIntegerField
      DisplayLabel = 'Destaca ICM'
      FieldName = 'drbdestacaicms'
      Required = True
    end
    object registrosendrbdestacaicms: TStringField
      FieldKind = fkLookup
      FieldName = 'sendrbdestacaicms'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'drbdestacaicms'
      Size = 5
      Lookup = True
    end
    object registrodrbdestacaicmsst: TIntegerField
      DisplayLabel = 'Destaca ICM ST'
      FieldName = 'drbdestacaicmsst'
      Required = True
    end
    object registrosendrbdestacaicmsst: TStringField
      FieldKind = fkLookup
      FieldName = 'sendrbdestacaicmsst'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'drbdestacaicmsst'
      Size = 5
      Lookup = True
    end
    object registrodrbdestacaipi: TIntegerField
      DisplayLabel = 'Destaca IPI'
      FieldName = 'drbdestacaipi'
      Required = True
    end
    object registrosendrbdestacaipi: TStringField
      FieldKind = fkLookup
      FieldName = 'sendrbdestacaipi'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'drbdestacaipi'
      Size = 5
      Lookup = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registrocfoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cfoidentificacao'
      LookupDataSet = cfo
      LookupKeyFields = 'cfocfop'
      LookupResultField = 'cfoidentificacao'
      KeyFields = 'cfocfop'
      Size = 100
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 712
    Top = 180
  end
  inherited dtb: TUniQuery
    Left = 668
    Top = 180
  end
  inherited coa: TUniQuery
    Left = 632
    Top = 180
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tcb: TUniQuery
    SQL.Strings = (
      'select tcbcodigo, tcbidentificacao from tcb')
    Left = 616
    Top = 264
    object tcbtcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
    end
    object tcbtcbidentificacao: TStringField
      FieldName = 'tcbidentificacao'
      Size = 35
    end
  end
  object cfo: TUniQuery
    SQL.Strings = (
      'select cfocfop, cfoidentificacao from cfo')
    Left = 440
    Top = 336
    object cfocfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object cfocfoidentificacao: TStringField
      FieldName = 'cfoidentificacao'
      Size = 200
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 440
    Top = 296
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object otb: TUniQuery
    SQL.Strings = (
      'select otbcodigo, otbidentificacao from otb')
    Left = 672
    Top = 280
    object otbotbcodigo: TIntegerField
      FieldName = 'otbcodigo'
    end
    object otbotbidentificacao: TStringField
      FieldName = 'otbidentificacao'
      Size = 50
    end
  end
end
