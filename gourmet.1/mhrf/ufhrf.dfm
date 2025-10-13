inherited fhrf: Tfhrf
  ActiveControl = phgcodigo
  Caption = 'Hist'#243'rico de Receitas'
  ClientHeight = 299
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 270
    ExplicitTop = 105
  end
  inherited paginas: TPageControl
    Height = 270
    ExplicitHeight = 105
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 77
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = hrfchave
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = phgcodigo
      end
      object hrfchave: TDBEdit
        Left = 128
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hrfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object phgcodigo: TDBEdit
        Left = 128
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select hrfchave, phgcodigo, pcgcodigo,clbcodigo, hrfregistro fro' +
        'm hrf where hrfchave=:hrfchave ')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hrfchave'
        Value = nil
      end>
    object registrohrfchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'hrfchave'
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registropcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrohrfregistro: TDateTimeField
      FieldName = 'hrfregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Constraints = <>
    Left = 604
    Top = 128
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
