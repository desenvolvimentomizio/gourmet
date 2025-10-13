inherited fsfn: Tfsfn
  Caption = 'Sabores por Unidade do Produto'
  ClientHeight = 209
  ClientWidth = 779
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 180
    Width = 779
    inherited bconfirma: TBitBtn
      Left = 625
    end
    inherited bcancela: TBitBtn
      Left = 700
    end
    inherited bfechar: TBitBtn
      Left = 560
    end
  end
  inherited paginas: TPageControl
    Width = 779
    Height = 180
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = sfncodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade de Sabores'
        FocusControl = sfnquantidade
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = unicodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem do Card'#225'pio'
        FocusControl = sfnordem
      end
      object sfncodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sfncodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sfnquantidade: TDBEdit
        Left = 136
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sfnquantidade'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object unicodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unicodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object sfnordem: TDBEdit
        Left = 136
        Top = 111
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sfnordem'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 316
    Top = 80
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sfncodigo,'
      '  unicodigo,'
      '  procodigo,'
      '  sfnquantidade,'
      '  sfnordem'
      'FROM sfn'
      'where sfncodigo=:sfncodigo')
    Left = 340
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sfncodigo'
        Value = nil
      end>
    object registrosfncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'sfncodigo'
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
    object registrosfnquantidade: TFloatField
      DisplayLabel = 'Quantidade de Sabores'
      FieldName = 'sfnquantidade'
      Required = True
    end
    object registrosfnordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'sfnordem'
    end
  end
  inherited dtb: TUniQuery
    Left = 44
    Top = 252
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 696
    Top = 176
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
    Left = 696
    Top = 136
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Size = 50
    end
  end
end
