inherited fpop: Tfpop
  ActiveControl = pcgcodigo
  Caption = 'Programa'#231#227'o de Limite'
  ClientHeight = 154
  ExplicitWidth = 812
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 125
  end
  inherited paginas: TPageControl
    Height = 125
    inherited Principal: TTabSheet
      ExplicitLeft = 52
      ExplicitTop = -112
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = popchave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 120
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Limite'
        FocusControl = poppercentual
      end
      object popchave: TDBEdit
        Left = 144
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'popchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcgcodigo: TDBEdit
        Left = 144
        Top = 30
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object poppercentual: TDBEdit
        Left = 144
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'poppercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select popchave, ogechave, pcgcodigo, poppercentual from pop whe' +
        're popchave=:popchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'popchave'
        Value = nil
      end>
    object registropopchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'popchave'
    end
    object registroogechave: TIntegerField
      FieldName = 'ogechave'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da conta Cont'#225'bil'
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
    object registropoppercentual: TFloatField
      DisplayLabel = 'Percentual de Limite'
      FieldName = 'poppercentual'
      Required = True
      DisplayFormat = '####0.0000'
      EditFormat = '####0.0000'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 492
    Top = 48
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 50
    end
  end
end
