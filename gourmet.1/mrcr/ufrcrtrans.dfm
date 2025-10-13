inherited frcrtrans: Tfrcrtrans
  Caption = 'Transfer'#234'ncia de Cr'#233'ditos'
  ClientHeight = 584
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 555
    Width = 739
    ExplicitTop = 555
    ExplicitWidth = 739
    inherited bconfirma: TBitBtn
      Left = 585
      ExplicitLeft = 585
    end
    inherited bcancela: TBitBtn
      Left = 660
      ExplicitLeft = 660
    end
    inherited bfechar: TBitBtn
      Left = 520
      ExplicitLeft = 520
    end
  end
  inherited paginas: TPageControl
    Width = 739
    Height = 555
    ExplicitWidth = 739
    ExplicitHeight = 555
    inherited Principal: TTabSheet
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
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente de Destino'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 407
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rcrvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 434
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
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
      object rcrvalor: TDBEdit
        Left = 148
        Top = 404
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcrvalor'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object rcrhistorico: TDBMemo
        Left = 148
        Top = 431
        Width = 565
        Height = 69
        CustomHint = BalloonHint
        DataField = 'rcrhistorico'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 4
        OnExit = rcrhistoricoExit
      end
      object plItens: TPanel
        Left = 148
        Top = 84
        Width = 565
        Height = 314
        CustomHint = BalloonHint
        Caption = 'plItens'
        TabOrder = 5
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 627
    ExplicitLeft = 627
  end
  object bSelecionar: TBitBtn [3]
    Left = 510
    Top = 72
    Width = 75
    Height = 25
    CustomHint = BalloonHint
    Caption = 'bSelecionar'
    TabOrder = 3
  end
  inherited DSRegistro: TUniDataSource
    Left = 668
    Top = 136
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
    Left = 668
    Top = 88
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
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
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
      '  mecregistro'
      'FROM mce where rcrchave=:rcrchave and tmccodigo=1')
    Constraints = <>
    Left = 336
    Top = 168
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
  object tfr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tfrchave,'
      '  rcrdestino,'
      '  rcrorigem'
      'FROM tfr limit 0')
    Constraints = <>
    Left = 368
    Top = 168
    object tfrtfrchave: TIntegerField
      FieldName = 'tfrchave'
    end
    object tfrrcrorigem: TIntegerField
      FieldName = 'rcrorigem'
    end
    object tfrrcrdestino: TIntegerField
      FieldName = 'rcrdestino'
    end
  end
end
