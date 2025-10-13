inherited fbpr: Tfbpr
  ActiveControl = procodigo
  Caption = 'Produto com Borda'
  ClientHeight = 214
  ClientWidth = 740
  ExplicitWidth = 756
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 185
    Width = 740
    ExplicitTop = 185
    ExplicitWidth = 740
    inherited bconfirma: TBitBtn
      Left = 586
      ExplicitLeft = 586
    end
    inherited bcancela: TBitBtn
      Left = 661
      ExplicitLeft = 661
    end
    inherited bfechar: TBitBtn
      Left = 521
      ExplicitLeft = 521
    end
  end
  inherited paginas: TPageControl
    Width = 740
    Height = 185
    ExplicitWidth = 740
    ExplicitHeight = 185
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 732
      ExplicitHeight = 157
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = bprchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = unicodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 94
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto para Borda'
        FocusControl = procodigoborda
      end
      object bprchave: TDBEdit
        Left = 136
        Top = 3
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bprchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object unicodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unicodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = unicodigoExit
      end
      object procodigoborda: TDBEdit
        Left = 136
        Top = 84
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigoborda'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 642
    ExplicitLeft = 642
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  bprchave,'
      '  procodigo,'
      '  unicodigo,'
      '  procodigoborda,'
      '  puncodigo'
      'FROM bpr'
      'where bprchave=:bprchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bprchave'
        Value = nil
      end>
    object registrobprchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'bprchave'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
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
    object registrounicodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'unicodigo'
      Required = True
    end
    object registrouninome: TStringField
      FieldKind = fkLookup
      FieldName = 'uninome'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'uninome'
      KeyFields = 'unicodigo'
      Size = 50
      Lookup = True
    end
    object registroprocodigoborda: TIntegerField
      DisplayLabel = 'Produto para Borda'
      FieldName = 'procodigoborda'
      Required = True
    end
    object registropronomeborda: TStringField
      FieldKind = fkLookup
      FieldName = 'pronomeborda'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigoborda'
      Size = 50
      Lookup = True
    end
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 376
    Top = 296
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo, uninome from uni')
    Left = 408
    Top = 296
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Size = 50
    end
  end
end
