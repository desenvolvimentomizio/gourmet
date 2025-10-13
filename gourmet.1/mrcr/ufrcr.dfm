inherited frcr: Tfrcr
  ActiveControl = rcrdata
  Caption = 'Registro de Cr'#233'ditos'
  ClientHeight = 269
  ClientWidth = 733
  ExplicitWidth = 749
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 240
    Width = 733
    ExplicitTop = 240
    ExplicitWidth = 733
    inherited bconfirma: TBitBtn
      Left = 579
      ExplicitLeft = 579
    end
    inherited bcancela: TBitBtn
      Left = 654
      ExplicitLeft = 654
    end
    inherited bfechar: TBitBtn
      Left = 514
      ExplicitLeft = 514
    end
  end
  inherited paginas: TPageControl
    Width = 733
    Height = 240
    ExplicitWidth = 733
    ExplicitHeight = 240
    inherited Principal: TTabSheet
      ExplicitWidth = 725
      ExplicitHeight = 212
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rcrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data'
        FocusControl = rcrdata
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rcrvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
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
      object rcrchave: TDBEdit
        Left = 148
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rcrdata: TDBEdit
        Left = 148
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcrdata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object rcrvalor: TDBEdit
        Left = 148
        Top = 84
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcrvalor'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object rcrhistorico: TDBMemo
        Left = 148
        Top = 111
        Width = 565
        Height = 69
        CustomHint = BalloonHint
        DataField = 'rcrhistorico'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 4
        OnExit = rcrhistoricoExit
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
        OnEnter = etdcodigoEnter
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 627
    ExplicitLeft = 627
  end
  inherited DSRegistro: TUniDataSource
    Left = 660
    Top = 88
  end
  inherited cfg: TUniQuery
    Left = 580
    Top = 44
  end
  inherited consulta: TUniQuery
    Left = 504
    Top = 36
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrvalor,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora'
      'FROM rcr where rcrchave=:rcrchave')
    Left = 660
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object registrorcrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rcrchave'
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
      Size = 80
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object registrorcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorcrdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rcrdata'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrorcrhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcrhistorico'
      Required = True
      Size = 250
    end
    object registrotcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
    end
    object registrotsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object registrotnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object registrorcrhora: TTimeField
      FieldName = 'rcrhora'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT etdcodigo'
      '     , etdidentificacao'
      '  FROM etd'
      ' WHERE etd.etdcodigo > 0')
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
      '  mecregistro'
      'FROM mce where rcrchave=:rcrchave and tmccodigo=1')
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
  end
end
