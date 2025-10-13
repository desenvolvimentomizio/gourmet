inherited fgrm: Tfgrm
  ActiveControl = grmidentificacao
  Caption = 'Grupo de Bot'#245'es'
  ClientHeight = 178
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 149
  end
  inherited paginas: TPageControl
    Height = 149
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = grmcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = grmidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#243'dulo'
        FocusControl = mdpcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem'
        FocusControl = grmordem
      end
      object grmcodigo: TDBEdit
        Left = 138
        Top = 3
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grmidentificacao: TDBEdit
        Left = 138
        Top = 30
        Width = 454
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grmidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object mdpcodigo: TDBEdit
        Left = 138
        Top = 84
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdpcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object grmordem: TDBEdit
        Left = 138
        Top = 57
        Width = 47
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grmordem'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grmcodigo,'
      '  mdpcodigo,'
      '  grmidentificacao,'
      '  grmordem'
      'FROM grm where grmcodigo=:grmcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grmcodigo'
        Value = nil
      end>
    object registrogrmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'grmcodigo'
    end
    object registromdpcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdpcodigo'
      Required = True
    end
    object registromdpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'mdpidentificacao'
      LookupDataSet = mdp
      LookupKeyFields = 'mdpcodigo'
      LookupResultField = 'mdpidentificacao'
      KeyFields = 'mdpcodigo'
      Size = 50
      Lookup = True
    end
    object registrogrmidentificacao: TStringField
      DisplayLabel = 'Identifca'#231#227'o'
      FieldName = 'grmidentificacao'
      Required = True
      Size = 50
    end
    object registrogrmordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'grmordem'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object mdp: TUniQuery
    SQL.Strings = (
      'select mdpcodigo, mdpidentificacao from mdp')
    Left = 488
    Top = 328
    object mdpmdpcodigo: TIntegerField
      FieldName = 'mdpcodigo'
    end
    object mdpmdpidentificacao: TStringField
      FieldName = 'mdpidentificacao'
      Size = 50
    end
  end
end
