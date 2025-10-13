inherited ffct: Tffct
  ActiveControl = ctacodigo
  Caption = 'Contas para Folha'
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
        FocusControl = fctchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 130
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta para Folha Gerencial'
        FocusControl = ctacodigo
      end
      object fctchave: TDBEdit
        Left = 144
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fctchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctacodigo: TDBEdit
        Left = 144
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fctchave,'
      '  ctacodigo'
      'FROM fct'
      'where fctchave=:fctchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fctchave'
        Value = nil
      end>
    object registrofctchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'fctchave'
    end
    object registroctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta')
    Left = 360
    Top = 248
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
