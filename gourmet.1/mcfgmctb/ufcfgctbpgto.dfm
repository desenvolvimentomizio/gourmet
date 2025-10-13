inherited fcfgctbpgto: Tfcfgctbpgto
  ActiveControl = cfgctbpcgpgtodesc
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Despesas e Custos'
  ClientHeight = 151
  ExplicitHeight = 190
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 122
    ExplicitTop = 456
  end
  inherited paginas: TPageControl
    Height = 122
    ExplicitHeight = 456
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 428
      object Label13: TLabel
        Left = 8
        Top = 6
        Width = 203
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto Recebido ao efetuar Pagamento'
        FocusControl = cfgctbpcgpgtodesc
      end
      object Label14: TLabel
        Left = 8
        Top = 33
        Width = 137
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Multa ao efetuar Pagamento'
        FocusControl = cfgctbpcgpgtomulta
      end
      object Label15: TLabel
        Left = 8
        Top = 60
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pagamento de Juros'
        FocusControl = cfgctbpcgpgtojuros
      end
      object cfgctbpcgpgtodesc: TDBEdit
        Left = 249
        Top = 3
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgpgtodesc'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgctbpcgpgtomulta: TDBEdit
        Left = 249
        Top = 30
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgpgtomulta'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgctbpcgpgtojuros: TDBEdit
        Left = 249
        Top = 57
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgpgtojuros'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 364
    Top = 168
  end
  inherited consulta: TUniQuery
    Left = 320
    Top = 316
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgpgtodesc,'
      '  cfgctbpcgpgtomulta,'
      '  cfgctbpcgpgtojuros'
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 316
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgpgtodesc: TIntegerField
      FieldName = 'cfgctbpcgpgtodesc'
      Required = True
    end
    object registroccgcfgctbpcgpgtodesc: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgpgtodesc'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgpgtodesc'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgpgtomulta: TIntegerField
      FieldName = 'cfgctbpcgpgtomulta'
      Required = True
    end
    object registroccgcfgctbpcgpgtomulta: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgpgtomulta'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgpgtomulta'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgpgtojuros: TIntegerField
      FieldName = 'cfgctbpcgpgtojuros'
      Required = True
    end
    object registroccgcfgctbpcgpgtojuros: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgpgtojuros'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgpgtojuros'
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
