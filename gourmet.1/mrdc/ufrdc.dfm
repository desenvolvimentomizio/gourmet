inherited frdc: Tfrdc
  Caption = 'Registro de Cart'#245'es'
  ClientHeight = 201
  ClientWidth = 808
  ExplicitWidth = 824
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 172
    Width = 808
    ExplicitTop = 172
    ExplicitWidth = 808
    inherited bconfirma: TBitBtn
      Left = 654
      ExplicitLeft = 654
    end
    inherited bcancela: TBitBtn
      Left = 729
      ExplicitLeft = 729
    end
    inherited bfechar: TBitBtn
      Left = 589
      ExplicitLeft = 589
    end
  end
  inherited paginas: TPageControl
    Width = 808
    Height = 172
    ExplicitWidth = 808
    ExplicitHeight = 172
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 800
      ExplicitHeight = 144
      object Label1: TLabel
        Left = 8
        Top = 115
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total R$'
        FocusControl = rdcvalor
      end
      object Label2: TLabel
        Left = 8
        Top = 61
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Autoriza'#231#227'o'
        FocusControl = rdcnrauto
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Parcelas'
        FocusControl = rdcparcelas
      end
      object Label3: TLabel
        Left = 8
        Top = 7
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Administradora'
        FocusControl = adccodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 34
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bandeira do Cart'#227'o'
        FocusControl = bdccodigo
      end
      object rdcvalor: TDBEdit
        Left = 136
        Top = 112
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
        Top = 58
        Width = 130
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rdcnrauto'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rdcparcelas: TDBEdit
        Left = 136
        Top = 85
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
        Top = 4
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bdccodigo: TDBEdit
        Left = 136
        Top = 31
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bdccodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = bdccodigoExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 260
    Top = 280
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
      'FROM rdc'
      'WHERE rdc.rdcchave = :rdcchave')
    BeforePost = registroBeforePost
    Left = 596
    Top = 64
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
  inherited dcl: TUniQuery
    Left = 580
    Top = 136
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adc.adccodigo,'
      '  adc.adcidentificacao,'
      '  adc.adcliquidaautomatico '
      'FROM adc where adc.adcpropria=0')
    Constraints = <>
    Left = 308
    Top = 232
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcidentificacao: TStringField
      FieldName = 'adcidentificacao'
    end
    object adcadcliquidaautomatico: TIntegerField
      FieldName = 'adcliquidaautomatico'
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
    Constraints = <>
    Left = 301
    Top = 136
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
    Constraints = <>
    Left = 728
    Top = 280
    object bdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object bdcbdcidentificacao: TStringField
      FieldName = 'bdcidentificacao'
      Size = 50
    end
  end
end
