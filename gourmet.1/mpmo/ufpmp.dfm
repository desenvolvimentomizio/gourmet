inherited fpmp: Tfpmp
  ActiveControl = procodigo
  Caption = 'Produto na Promo'#231#227'o'
  ClientHeight = 119
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    ExplicitTop = 90
  end
  inherited paginas: TPageControl
    Height = 90
    ExplicitHeight = 90
    inherited Principal: TTabSheet
      ExplicitHeight = 62
      object Label1: TLabel
        Left = 8
        Top = 35
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pmpchave
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 32
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pmpchave: TDBEdit
        Left = 136
        Top = 5
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmpchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pmpchave,'
      '  pmocodigo,'
      '  procodigo,'
      '  pmpregistro,'
      '  clbregistro,'
      '  pmpexclusao,'
      '  clbexclusao'
      'FROM pmp where pmpchave=:pmpchave and pmocodigo=:pmocodigo')
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmpchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pmocodigo'
        Value = nil
      end>
    object registropmpchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'pmpchave'
    end
    object registropmocodigo: TIntegerField
      FieldName = 'pmocodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
      Visible = False
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 50
      Lookup = True
    end
    object registropmpregistro: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'pmpregistro'
    end
    object registroclbregistro: TIntegerField
      FieldName = 'clbregistro'
    end
    object registropmpexclusao: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'pmpexclusao'
    end
    object registroclbexclusao: TIntegerField
      FieldName = 'clbexclusao'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 356
    Top = 24
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
end
