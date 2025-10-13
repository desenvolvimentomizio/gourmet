inherited fgrrdc: Tfgrrdc
  ActiveControl = adccodigo
  Caption = 'Registro de Cart'#245'es'
  ClientHeight = 200
  ClientWidth = 435
  ExplicitWidth = 451
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 171
    Width = 435
    ExplicitTop = 171
    ExplicitWidth = 435
    inherited bconfirma: TBitBtn
      Left = 281
      ExplicitLeft = 281
    end
    inherited bcancela: TBitBtn
      Left = 356
      ExplicitLeft = 356
    end
    inherited bfechar: TBitBtn
      Left = 216
      ExplicitLeft = 216
    end
  end
  inherited paginas: TPageControl
    Width = 435
    Height = 171
    ExplicitWidth = 435
    ExplicitHeight = 171
    inherited Principal: TTabSheet
      ExplicitWidth = 427
      ExplicitHeight = 143
      object Label1: TLabel
        Left = 8
        Top = 114
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total R$'
        FocusControl = rdcvalor
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Autoriza'#231#227'o'
        FocusControl = rdcnrauto
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Parcelas'
        FocusControl = rdcparcelas
      end
      object Label3: TLabel
        Left = 8
        Top = 6
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Administradora'
        FocusControl = adccodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bandeira do Cart'#227'o'
        FocusControl = bdccodigo
      end
      object rdcvalor: TDBEdit
        Left = 136
        Top = 111
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rdcvalor'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = rdcparcelasExit
      end
      object rdcnrauto: TDBEdit
        Left = 136
        Top = 57
        Width = 130
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rdcnrauto'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rdcparcelas: TDBEdit
        Left = 136
        Top = 84
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rdcparcelas'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = rdcparcelasExit
      end
      object adccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bdccodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bdccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 220
    Top = 184
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdc.rdcchave,'
      '  rdc.rdcvalor,'
      '  rdc.rdcnrauto,'
      '  rdc.rdcdata,'
      '  rdc.adccodigo,'
      '  rdc.rdcparcelas,'
      '  rdc.bdccodigo'
      'FROM trdc rdc'
      'WHERE rdc.rdcchave = :rdcchave')
    BeforePost = registroBeforePost
    Left = 220
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rdcchave'
        Value = nil
      end>
    object registrordcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object registrordcvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rdcvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrordcnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Required = True
      Size = 10
    end
    object registrordcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object registroadccodigo: TIntegerField
      DisplayLabel = 'Administradora'
      FieldName = 'adccodigo'
      Required = True
    end
    object registroadcidentificacao: TStringField
      DisplayLabel = 'Administradora'
      FieldKind = fkLookup
      FieldName = 'adcidentificacao'
      LookupDataSet = adc
      LookupKeyFields = 'adccodigo'
      LookupResultField = 'adcidentificacao'
      KeyFields = 'adccodigo'
      Lookup = True
    end
    object registrordcparcelas: TIntegerField
      DisplayLabel = 'Parcelas'
      FieldName = 'rdcparcelas'
      Required = True
    end
    object registrobdccodigo: TIntegerField
      FieldName = 'bdccodigo'
      Required = True
    end
    object registrobdcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'bdcidentificacao'
      LookupDataSet = bdc
      LookupKeyFields = 'bdccodigo'
      LookupResultField = 'bdcidentificacao'
      KeyFields = 'bdccodigo'
      Size = 50
      Lookup = True
    end
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adc.adccodigo,'
      '  adc.adcidentificacao'
      'FROM adc')
    Left = 308
    Top = 232
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcidentificacao: TStringField
      FieldName = 'adcidentificacao'
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltr.dtlchave,'
      '  dtl.dtlvalor - SUM(IFNULL(rdc.rdcvalor, 0)) AS dtlsaldo,'
      '  dtl.mdacodigo'
      'FROM dtl'
      '  LEFT JOIN ltr'
      '    ON dtl.dtlchave = ltr.dtlchave'
      '  LEFT JOIN rdc'
      '    ON ltr.rdcchave = rdc.rdcchave'
      'WHERE dtl.dtlchave = :dtlchave')
    Left = 293
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtldtlsaldo: TFloatField
      FieldName = 'dtlsaldo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object bdc: TUniQuery
    SQL.Strings = (
      'select bdccodigo, bdcidentificacao from bdc')
    Left = 472
    Top = 24
    object bdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object bdcbdcidentificacao: TStringField
      FieldName = 'bdcidentificacao'
      Size = 50
    end
  end
end
