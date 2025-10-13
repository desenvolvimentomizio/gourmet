inherited fctr: Tfctr
  ActiveControl = ctacodigo
  Caption = 'Conta Corrente do Terminal'
  ClientHeight = 89
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 60
  end
  inherited paginas: TPageControl
    Height = 60
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta do Terminal'
        FocusControl = ctacodigo
      end
      object ctacodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.03.81.001-03'
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ctrcodigo, ctacodigo, trmcodigo from ctr where  ctrcodigo' +
        '=:ctrcodigo and  trmcodigo=:trmcodigo'
      ' ')
    Left = 548
    Top = 65532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object registroctrcodigo: TIntegerField
      FieldName = 'ctrcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'Conta do Terminal'
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
    Left = 504
    Top = 65532
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
