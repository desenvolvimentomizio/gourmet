inherited fcfgmbol: Tfcfgmbol
  ActiveControl = cfgcarteirapadrao
  Caption = 'Configura'#231#245'es de Boletos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Carteira Padr'#227'o'
        FocusControl = cfgcarteirapadrao
      end
      object Label2: TLabel
        Left = 8
        Top = 34
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Diret'#243'rio Boletos'
        FocusControl = cfgdiretorioboletos
      end
      object SPSelecionarioDiretorioNFEs: TSpeedButton
        Left = 442
        Top = 31
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Caption = '...'
        OnClick = SPSelecionarioDiretorioNFEsClick
      end
      object cfgcarteirapadrao: TDBEdit
        Left = 136
        Top = 4
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcarteirapadrao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgdiretorioboletos: TDBEdit
        Left = 136
        Top = 31
        Width = 300
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgdiretorioboletos'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  object DBRadioGroup1: TDBRadioGroup [3]
    Left = 140
    Top = 82
    Width = 185
    Height = 73
    CustomHint = BalloonHint
    Caption = ' Modelo a ser impresso '
    DataField = 'cfglayout'
    DataSource = DSRegistro
    Items.Strings = (
      'Boleto'
      'Carn'#234)
    TabOrder = 3
    Values.Strings = (
      '1'
      '2')
  end
  inherited cfg: TUniQuery
    Top = 116
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgcodigo'
      '     , cfgcarteirapadrao'
      '     , cfgdiretorioboletos'
      '     , cfglayout'
      'FROM cfgmbol'
      'WHERE cfgcodigo = :cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgcarteirapadrao: TIntegerField
      DisplayLabel = 'Carteira Padr'#227'o'
      FieldName = 'cfgcarteirapadrao'
      Required = True
    end
    object registrocaridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'caridentificacao'
      LookupDataSet = car
      LookupKeyFields = 'carcodigo'
      LookupResultField = 'caridentificacao'
      KeyFields = 'cfgcarteirapadrao'
      Size = 30
      Lookup = True
    end
    object registrocfgdiretorioboletos: TStringField
      DisplayLabel = 'Diret'#243'rio Boletos'
      FieldName = 'cfgdiretorioboletos'
      Required = True
      Size = 100
    end
    object registrocfglayout: TIntegerField
      FieldName = 'cfglayout'
    end
  end
  inherited acoesfrm: TActionList
    Left = 372
    Top = 36
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT carcodigo'
      '     , caridentificacao'
      'FROM car')
    Left = 276
    Top = 216
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Size = 50
    end
  end
end
