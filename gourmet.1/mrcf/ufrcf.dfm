inherited frcf: Tfrcf
  ActiveControl = rcfdata
  Caption = 'Registro de Cr'#233'dito'
  ClientHeight = 249
  ClientWidth = 778
  ExplicitWidth = 794
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 220
    Width = 778
    ExplicitTop = 222
    ExplicitWidth = 735
    inherited bconfirma: TBitBtn
      Left = 624
      ExplicitLeft = 581
    end
    inherited bcancela: TBitBtn
      Left = 699
      ExplicitLeft = 656
    end
    inherited bfechar: TBitBtn
      Left = 559
      ExplicitLeft = 516
    end
  end
  inherited paginas: TPageControl
    Width = 778
    Height = 220
    ExplicitWidth = 735
    ExplicitHeight = 222
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rcfchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data'
        FocusControl = rcfdata
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rcfvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
      end
      object rcfchave: TDBEdit
        Left = 148
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rcfdata: TDBEdit
        Left = 148
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcfdata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rcfvalor: TDBEdit
        Left = 148
        Top = 84
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcfvalor'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object rcfhistorico: TDBMemo
        Left = 148
        Top = 111
        Width = 565
        Height = 69
        CustomHint = BalloonHint
        DataField = 'rcfhistorico'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcfchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcfvalor,'
      '  rcfdata,'
      '  rcfhistorico,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcfhora'
      'FROM rcf where rcfchave=:rcfchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcfchave'
        Value = nil
      end>
    object registrorcfchave: TIntegerField
      FieldName = 'rcfchave'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrorcfvalor: TFloatField
      FieldName = 'rcfvalor'
      Required = True
    end
    object registrorcfdata: TDateField
      FieldName = 'rcfdata'
    end
    object registrorcfhistorico: TStringField
      FieldName = 'rcfhistorico'
      Size = 200
    end
    object registrotcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
      Required = True
    end
    object registrotsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object registrotnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object registrorcfhora: TTimeField
      FieldName = 'rcfhora'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT etdcodigo'
      '     , etdidentificacao'
      '  FROM etd'
      ' WHERE etd.etdcodigo > 0')
    Constraints = <>
    Left = 608
    Top = 132
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 80
    end
  end
  object mce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce where rcrchave=:rcrchave and tmccodigo=1')
    Constraints = <>
    Left = 336
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcemcemotivo: TStringField
      FieldName = 'mcemotivo'
      Size = 250
    end
    object mcemecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltechave,'
      '  tfdcodigo,'
      '  ltedata,'
      '  lteprincipal,'
      '  ltemulta,'
      '  ltejuros,'
      '  ltedesconto,'
      '  ltetotal,'
      '  lteextenso'
      'FROM lte'
      'ORDER BY ltechave ASC LIMIT 1')
    Constraints = <>
    Left = 68
    Top = 132
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object lteltedata: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'ltedata'
    end
    object ltelteprincipal: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'lteprincipal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltemulta: TFloatField
      DisplayLabel = 'Valor da Multa R$'
      FieldName = 'ltemulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltejuros: TFloatField
      DisplayLabel = 'Valor do Juros R$'
      FieldName = 'ltejuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltedesconto: TFloatField
      DisplayLabel = 'Valor do Desconto R$'
      FieldName = 'ltedesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltetotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'ltetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let limit 0')
    Constraints = <>
    Left = 96
    Top = 128
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
