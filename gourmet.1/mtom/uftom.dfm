inherited ftom: Tftom
  ActiveControl = tofcodigo
  Caption = 'Informa'#231#227'o Complementar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = tomchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#227'o'
        FocusControl = tofcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 139
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento da observa'#231#227'o'
        FocusControl = tofcodigo
      end
      object tomchave: TDBEdit
        Left = 153
        Top = 3
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tomchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tofcodigo: TDBEdit
        Left = 153
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tofcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tomobs: TDBMemo
        Left = 153
        Top = 57
        Width = 572
        Height = 64
        CustomHint = BalloonHint
        DataField = 'tomobs'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tomchave,'
      '  tofcodigo,'
      '  meschave,'
      '  tomobs'
      'FROM tom where tomchave=:tomchave and meschave=:meschave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tomchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registrotomchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tomchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registrotofcodigo: TIntegerField
      FieldName = 'tofcodigo'
      Required = True
    end
    object registrotofidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tofidentificacao'
      LookupDataSet = tof
      LookupKeyFields = 'tofcodigo'
      LookupResultField = 'tofidentificacao'
      KeyFields = 'tofcodigo'
      Size = 200
      Lookup = True
    end
    object registrotomobs: TStringField
      FieldName = 'tomobs'
      Size = 200
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tof: TUniQuery
    SQL.Strings = (
      'select tofcodigo, tofidentificacao from tof')
    Left = 504
    Top = 248
    object toftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Size = 200
    end
  end
end
