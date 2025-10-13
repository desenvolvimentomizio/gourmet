inherited fdog: Tfdog
  ActiveControl = pcgcodigo
  Caption = 'Item do Or'#231'amento Gerencial'
  ClientHeight = 451
  ExplicitWidth = 812
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 422
    ExplicitTop = 373
  end
  inherited paginas: TPageControl
    Height = 422
    ExplicitHeight = 373
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 345
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Previs'#227'o R$'
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Mes da Apura'#231#227'o'
      end
      object dogchave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dogchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dogprevisao: TDBEdit
        Left = 136
        Top = 57
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dogprevisao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object dogmes: TDBLookupComboBox
        Left = 136
        Top = 84
        Width = 145
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dogmes'
        DataSource = DSRegistro
        KeyField = 'mescodigo'
        ListField = 'mesidentificacao'
        ListSource = Dmeses
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 324
    Top = 152
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dogchave,'
      '  ogechave,'
      '  pcgcodigo,'
      '  dogprevisao,'
      '  dogrealizado,'
      '  dogpercotimista,'
      '  dogperpessimista,'
      '  dogsituacao,'
      '  dogmes,'
      '  dogano,'
      '  clbcodigo,'
      '  dogregistro'
      'FROM dog where dogchave=:dogchave ')
    Left = 676
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dogchave'
        Value = nil
      end>
    object registrodogchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'dogchave'
    end
    object registroogechave: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ogechave'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 50
      Lookup = True
    end
    object registrodogprevisao: TFloatField
      DisplayLabel = 'Valor Previs'#227'o R$'
      FieldName = 'dogprevisao'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrodogmes: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'dogmes'
      Required = True
    end
    object registrodogano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'dogano'
      Required = True
    end
    object registrodogrealizado: TFloatField
      FieldName = 'dogrealizado'
    end
    object registrodogpercotimista: TFloatField
      FieldName = 'dogpercotimista'
    end
    object registrodogperpessimista: TFloatField
      FieldName = 'dogperpessimista'
    end
    object registrodogsituacao: TIntegerField
      FieldName = 'dogsituacao'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrodogregistro: TDateTimeField
      FieldName = 'dogregistro'
    end
  end
  inherited dcl: TUniQuery
    Left = 604
    Top = 80
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object meses: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  1 mescodigo,'
      '  '#39'JANEIRO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  2 mescodigo,'
      '  '#39'FEVEREIRO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  3 mescodigo,'
      '  '#39'MAR'#199'O'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  4 mescodigo,'
      '  '#39'ABRIL'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  5 mescodigo,'
      '  '#39'MAIO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  6 mescodigo,'
      '  '#39'JUNHO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  7 mescodigo,'
      '  '#39'JULHO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  8 mescodigo,'
      '  '#39'AGOSTO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  9 mescodigo,'
      '  '#39'SETEMBRO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  10 mescodigo,'
      '  '#39'OUTUBRO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  11 mescodigo,'
      '  '#39'NOVEMBRO'#39' mesidentificacao'
      'UNION ALL'
      'SELECT'
      '  12 mescodigo,'
      '  '#39'DEZEMBRO'#39' mesidentificacao')
    Left = 468
    Top = 320
    object mesesmescodigo: TIntegerField
      FieldName = 'mescodigo'
    end
    object mesesmesidentificacao: TStringField
      FieldName = 'mesidentificacao'
      Size = 25
    end
  end
  object Dmeses: TDataSource
    DataSet = meses
    Left = 292
    Top = 272
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 604
    Top = 120
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 50
    end
  end
end
