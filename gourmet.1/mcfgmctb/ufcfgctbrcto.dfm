inherited fcfgctbrcto: Tfcfgctbrcto
  ActiveControl = cfgctbpcgrctodesc
  Caption = 'Configura'#231#245'es de Contabiliza'#231#245'es de Receitas'
  ClientHeight = 148
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 119
    ExplicitTop = 231
  end
  inherited paginas: TPageControl
    Height = 119
    ExplicitHeight = 231
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 203
      object Label16: TLabel
        Left = 8
        Top = 6
        Width = 217
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto Concedido ao efetuar Recebimento'
        FocusControl = cfgctbpcgrctodesc
      end
      object Label17: TLabel
        Left = 8
        Top = 33
        Width = 181
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Multa cobrada a efetuar Recebimento'
        FocusControl = cfgctbpcgrctomulta
      end
      object Label18: TLabel
        Left = 8
        Top = 60
        Width = 186
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Juros cobrados a efetuar Recebimento'
        FocusControl = cfgctbpcgrctojuros
      end
      object cfgctbpcgrctodesc: TDBEdit
        Left = 249
        Top = 3
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgrctodesc'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgctbpcgrctomulta: TDBEdit
        Left = 249
        Top = 30
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgrctomulta'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgctbpcgrctojuros: TDBEdit
        Left = 249
        Top = 57
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgrctojuros'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 364
    Top = 160
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbpcgrctodesc,'
      '  cfgctbpcgrctomulta,'
      '  cfgctbpcgrctojuros'
      ''
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 556
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbpcgrctodesc: TIntegerField
      FieldName = 'cfgctbpcgrctodesc'
      Required = True
    end
    object registroccgcfgctbpcgrctodesc: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrctodesc'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrctodesc'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrctomulta: TIntegerField
      FieldName = 'cfgctbpcgrctomulta'
      Required = True
    end
    object registroccgcfgctbpcgrctomulta: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrctomulta'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrctomulta'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrctojuros: TIntegerField
      FieldName = 'cfgctbpcgrctojuros'
      Required = True
    end
    object registroccgcfgctbpcgrctojuros: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrctojuros'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrctojuros'
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
    Left = 500
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
