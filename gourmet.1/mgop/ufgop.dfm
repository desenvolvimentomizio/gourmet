inherited fgop: Tfgop
  ActiveControl = procodigo
  Caption = 'Ordem do Produto no Card'#225'pio'
  ClientHeight = 145
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 116
  end
  inherited paginas: TPageControl
    Height = 116
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = gopchave
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
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem'
        FocusControl = gopordem
      end
      object gopchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gopchave'
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
      object gopordem: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gopordem'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gopchave,'
      '  procodigo,'
      '  gopordem'
      'FROM gop'
      '  where gopchave=:gopchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gopchave'
        Value = nil
      end>
    object registrogopchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'gopchave'
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
    object registrogopordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'gopordem'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 480
    Top = 296
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
end
