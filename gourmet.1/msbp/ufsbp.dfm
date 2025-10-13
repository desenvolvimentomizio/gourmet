inherited fsbp: Tfsbp
  Caption = 'Ingredientes do Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 788
        Height = 161
        CustomHint = BalloonHint
        Align = alTop
      end
      object Label1: TLabel
        Left = 8
        Top = 14
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = sbrcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = sbridentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 68
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 95
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cobra Adicional'
        FocusControl = sbrcobraadicional
      end
      object Label5: TLabel
        Left = 8
        Top = 122
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem no Cardapio'
        FocusControl = sbrordem
      end
      object sbrcodigo: TDBEdit
        Left = 136
        Top = 11
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sbrcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sbridentificacao: TDBEdit
        Left = 136
        Top = 38
        Width = 633
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sbridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 65
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = procodigoExit
      end
      object bvalidar: TBitBtn
        Left = 694
        Top = 119
        Width = 75
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 5
        OnClick = bvalidarClick
      end
      object plIsa: TPanel
        Left = 0
        Top = 161
        Width = 788
        Height = 215
        CustomHint = BalloonHint
        Align = alClient
        TabOrder = 6
      end
      object sbrcobraadicional: TDBEdit
        Left = 136
        Top = 92
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sbrcobraadicional'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object sbrordem: TDBEdit
        Left = 136
        Top = 119
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sbrordem'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sbrcodigo,'
      '  sbridentificacao,'
      '  procodigo,'
      '  sbrcobraadicional,'
      '  sbrordem'
      'FROM sbr'
      '  where sbrcodigo=:sbrcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sbrcodigo'
        Value = nil
      end>
    object registrosbrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'sbrcodigo'
    end
    object registrosbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      Required = True
      Size = 50
    end
    object registroprocodigo: TIntegerField
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
    object registrosbrcobraadicional: TIntegerField
      DisplayLabel = 'Cobra Adicional'
      FieldName = 'sbrcobraadicional'
      Required = True
    end
    object registrosencobraadicional: TStringField
      FieldKind = fkLookup
      FieldName = 'sencobraadicional'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'sbrcobraadicional'
      Size = 5
      Lookup = True
    end
    object registrosbrordem: TIntegerField
      DisplayLabel = 'Ordem no Cardapio'
      FieldName = 'sbrordem'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 480
    Top = 352
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 296
    Top = 352
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
