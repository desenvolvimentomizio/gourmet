inherited fenc: Tfenc
  Caption = 'Conta Corrente'
  ClientHeight = 123
  ExplicitHeight = 162
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 94
  end
  inherited paginas: TPageControl
    Height = 94
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = encchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Corrente'
        FocusControl = ctacodigo
      end
      object encchave: TDBEdit
        Left = 144
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'encchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctacodigo: TDBEdit
        Left = 144
        Top = 30
        Width = 49
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
      
        'select encchave, etdcodigo, ctacodigo from enc where encchave=:e' +
        'ncchave ')
    Left = 284
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'encchave'
        Value = nil
      end>
    object registroencchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'encchave'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Conta Corrente'
      FieldName = 'ctacodigo'
      Required = True
      Visible = False
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
    Constraints = <>
    Left = 388
    Top = 312
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
