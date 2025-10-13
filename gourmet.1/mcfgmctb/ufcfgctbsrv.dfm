inherited fcfgctbsrv: Tfcfgctbsrv
  ActiveControl = cfgctbpcgsrvdesccom
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Servi'#231'os'
  ClientHeight = 94
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 65
  end
  inherited paginas: TPageControl
    Height = 65
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label33: TLabel
        Left = 8
        Top = 3
        Width = 167
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto Comercial sobre Servi'#231'os'
        FocusControl = cfgctbpcgsrvdesccom
      end
      object cfgctbpcgsrvdesccom: TDBEdit
        Left = 249
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgsrvdesccom'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 708
    Top = 224
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgsrvdesccom'
      '  '
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 708
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgsrvdesccom: TIntegerField
      FieldName = 'cfgctbpcgsrvdesccom'
      Required = True
    end
    object registroccgcfgctbpcgsrvdesccom: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgsrvdesccom'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgsrvdesccom'
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
