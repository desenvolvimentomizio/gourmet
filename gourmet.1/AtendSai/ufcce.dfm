inherited fcce: Tfcce
  ActiveControl = etdcodigo
  Caption = 'Abertura de Caixa do Entregador'
  ClientHeight = 116
  ExplicitWidth = 812
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 87
    ExplicitTop = 349
  end
  inherited paginas: TPageControl
    Height = 87
    ExplicitHeight = 349
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 321
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ccechave
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entregador'
        FocusControl = etdcodigo
      end
      object ccechave: TDBEdit
        Left = 112
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 112
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccechave,'
      '  cznchave,'
      '  etdcodigo,'
      '  cceabertura'
      'FROM cce where ccechave=:ccechave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccechave'
        Value = nil
      end>
    object registroccechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ccechave'
    end
    object registrocznchave: TIntegerField
      FieldName = 'cznchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrocceabertura: TDateTimeField
      FieldName = 'cceabertura'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select distinct etd.etdcodigo, etdidentificacao '
      'from etd '
      '  LEFT JOIN etv'
      '    ON etd.etdcodigo = etv.etdcodigo'
      '  WHERE etv.tvicodigo=3'
      'order by etdidentificacao')
    Left = 660
    Top = 160
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
