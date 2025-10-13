inherited fctc: Tfctc
  ActiveControl = ctacodigo
  Caption = 'Permiss'#227'o de Acesso a Conta'
  ClientHeight = 121
  ClientWidth = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 92
    Width = 564
    inherited bconfirma: TBitBtn
      Left = 410
    end
    inherited bcancela: TBitBtn
      Left = 485
    end
    inherited bfechar: TBitBtn
      Left = 345
    end
  end
  inherited paginas: TPageControl
    Width = 564
    Height = 92
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ctccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Conta'
        FocusControl = ctacodigo
      end
      object ctccodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctacodigo: TDBEdit
        Left = 148
        Top = 30
        Width = 45
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
      '  ctccodigo,'
      '  clbcodigo,'
      '  ctacodigo'
      'FROM ctc where ctccodigo=:ctccodigo and clbcodigo=:clbcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object registroctccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ctccodigo'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'Conta'
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
    Left = 656
    Top = 200
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
