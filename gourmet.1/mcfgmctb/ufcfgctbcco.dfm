inherited fcfgctbcco: Tfcfgctbcco
  ActiveControl = cfgctbpcgchemcob
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Contas Correntes'
  ClientHeight = 91
  ExplicitHeight = 130
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 62
    ExplicitTop = 247
  end
  inherited paginas: TPageControl
    Height = 62
    ExplicitHeight = 247
    inherited Principal: TTabSheet
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 219
      object Label11: TLabel
        Left = 8
        Top = 6
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta para Cheques Devolvidos'
        FocusControl = cfgctbpcgchemcob
      end
      object cfgctbpcgchemcob: TDBEdit
        Left = 249
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgchemcob'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 572
    Top = 32
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgchemcob'
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 516
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgchemcob: TIntegerField
      FieldName = 'cfgctbpcgchemcob'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgchemcob'
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
    Left = 164
    Top = 88
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
end
