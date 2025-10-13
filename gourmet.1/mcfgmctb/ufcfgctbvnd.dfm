inherited fcfgctbvnd: Tfcfgctbvnd
  ActiveControl = cfgctbpcgvnddesccom
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Vendas'
  ClientHeight = 175
  ExplicitHeight = 214
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 146
    ExplicitTop = 146
  end
  inherited paginas: TPageControl
    Height = 146
    ExplicitHeight = 146
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 118
      object Label31: TLabel
        Left = 8
        Top = 6
        Width = 219
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta para Desconto Comercial sobre Vendas'
        FocusControl = cfgctbpcgvnddesccom
      end
      object cfgctbpcgvnddesccom: TDBEdit
        Left = 249
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgvnddesccom'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgvnddesccom'
      '  '
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgvnddesccom: TIntegerField
      FieldName = 'cfgctbpcgvnddesccom'
      Required = True
    end
    object registroccgcfgctbpcgvnddesccom: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgvnddesccom'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgvnddesccom'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pcg: TUniQuery
    SQL.Strings = (
      
        'select pcgcodigo,concat(pcgestrutural,'#39' - '#39', pcgidentificacao) a' +
        's pcgidentificacao from pcg')
    Left = 656
    Top = 88
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 80
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 656
    Top = 136
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object ccg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo,concat(ccgestrutural,'#39' - '#39', ccgidentificacao) a' +
        's ccgidentificacao from ccg')
    Left = 508
    Top = 44
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
end
