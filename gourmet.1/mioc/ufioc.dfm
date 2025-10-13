inherited fioc: Tfioc
  ActiveControl = clbcodigo
  Caption = 'Registro de Comiss'#227'o'
  ClientHeight = 150
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 121
    ExplicitTop = 121
  end
  inherited paginas: TPageControl
    Height = 121
    ExplicitHeight = 121
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 93
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = iocchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = clbcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Comiss'#227'o'
        FocusControl = iocpercentual
      end
      object iocchave: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iocchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = clbcodigoExit
      end
      object iocpercentual: TDBEdit
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iocpercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgajustaperccomissao from cfgmsai where cfgcodigo=:cfgco' +
        'digo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgajustaperccomissao: TIntegerField
      FieldName = 'cfgajustaperccomissao'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  iocchave,'
      '  itochave,'
      '  clbcodigo,'
      '  iocpercentual,'
      '  flacodigo'
      'FROM ioc where iocchave=:iocchave and itochave=:itochave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iocchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object registroiocchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'iocchave'
    end
    object registroitochave: TIntegerField
      FieldName = 'itochave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
    object registroiocpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'iocpercentual'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 284
    Top = 56
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
