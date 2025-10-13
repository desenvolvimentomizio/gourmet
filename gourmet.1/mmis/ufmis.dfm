inherited fmis: Tfmis
  ActiveControl = bplcodigo
  Caption = 'Uso de instru'#231#245'es pelos m'#243'dulos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mischave
      end
      object Label3: TLabel
        Left = 16
        Top = 33
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#243'dulo'
        FocusControl = bplcodigo
      end
      object mischave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mischave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bplcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT mischave'
      '     , itscodigo'
      '     , bplcodigo'
      'FROM mis'
      'WHERE mis.mischave = :mischave'
      'AND itscodigo = :itscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mischave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itscodigo'
        Value = nil
      end>
    object registromischave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'mischave'
    end
    object registroitscodigo: TIntegerField
      FieldName = 'itscodigo'
    end
    object registrobplcodigo: TIntegerField
      FieldName = 'bplcodigo'
    end
    object registrobplidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'bplidentificacao'
      LookupDataSet = bpl
      LookupKeyFields = 'bplcodigo'
      LookupResultField = 'bplidentificacao'
      KeyFields = 'bplcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object bpl: TUniQuery
    SQL.Strings = (
      'SELECT bplcodigo'
      '     , bplidentificacao'
      'FROM bpl')
    Left = 280
    Top = 272
    object bplbplcodigo: TIntegerField
      FieldName = 'bplcodigo'
    end
    object bplbplidentificacao: TStringField
      FieldName = 'bplidentificacao'
      Size = 255
    end
  end
end
