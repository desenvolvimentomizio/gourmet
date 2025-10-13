inherited fprc: Tfprc
  ActiveControl = ccgcodigo
  Caption = 'Percentual de Rateios do Centros de Custos'
  ClientHeight = 149
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 120
    ExplicitTop = 120
  end
  inherited paginas: TPageControl
    Height = 120
    ExplicitHeight = 120
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 92
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = prcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo'
        FocusControl = ccgcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = prcpercentual
      end
      object prcchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object prcpercentual: TDBEdit
        Left = 136
        Top = 57
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prcpercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prcchave,'
      '  pcgcodigo,'
      '  ccgcodigo,'
      '  prcpercentual'
      'FROM prc where prcchave=:prccchave and pcgcodigo=:pcgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prccchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
        Value = nil
      end>
    object registroprcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'prcchave'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 150
      Lookup = True
    end
    object registroprcpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'prcpercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ccg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccgcodigo,'
      
        '  CONCAT(ccgestrutural, '#39' '#39', ccgidentificacao) AS ccgidentificac' +
        'ao'
      'FROM ccg')
    Left = 632
    Top = 216
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 150
    end
  end
end
