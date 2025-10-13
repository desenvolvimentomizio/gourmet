inherited fcfgctbcpr: Tfcfgctbcpr
  ActiveControl = cfgctbpcgcprdesccom
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Compras'
  ClientHeight = 98
  ExplicitHeight = 137
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 69
    ExplicitTop = 130
  end
  inherited paginas: TPageControl
    Height = 69
    ExplicitHeight = 130
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 102
      object Label32: TLabel
        Left = 8
        Top = 6
        Width = 169
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto Comercial sobre Compras'
        FocusControl = cfgctbpcgcprdesccom
      end
      object cfgctbpcgcprdesccom: TDBEdit
        Left = 249
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgcprdesccom'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgcprdesccom'
      '  '
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 364
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgcprdesccom: TIntegerField
      FieldName = 'cfgctbpcgcprdesccom'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgcprdesccom'
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
    Left = 648
    Top = 56
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
    Left = 648
    Top = 104
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
