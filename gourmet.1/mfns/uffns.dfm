inherited ffns: Tffns
  ActiveControl = fnsidentificacao
  Caption = 'Cadastro de Fun'#231#227'o'
  ClientHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 432
    inherited bconfirma: TBitBtn
      Enabled = False
    end
  end
  inherited paginas: TPageControl
    Height = 432
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fnscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fnsidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Acionador'
        FocusControl = tfncodigo
      end
      object Spt1: TSplitter
        Left = 0
        Top = 132
        Width = 796
        Height = 8
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object Label4: TLabel
        Left = 337
        Top = 3
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'mdvchave'
        FocusControl = DBEdit1
      end
      object fnscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fnscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fnsidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 534
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fnsidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tfncodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tfncodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object bvalidar: TButton
        Left = 595
        Top = 57
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 3
        OnClick = bvalidarClick
      end
      object Plfnv: TPanel
        Left = 0
        Top = 140
        Width = 796
        Height = 264
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 392
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdvchave'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select  fnscodigo, fnsidentificacao, mdvchave, tfncodigo from fn' +
        's where fnscodigo=:fnscodigo and  mdvchave=:mdvchave '
      ' ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fnscodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdvchave'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fnscodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdvchave'
        ParamType = ptUnknown
      end>
    object registrofnscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fnscodigo'
    end
    object registromdvchave: TIntegerField
      FieldName = 'mdvchave'
    end
    object registrofnsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fnsidentificacao'
      Required = True
      Size = 50
    end
    object registrotfncodigo: TIntegerField
      DisplayLabel = 'Acionador'
      FieldName = 'tfncodigo'
      Required = True
    end
    object registrotfnidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfnidentificacao'
      LookupDataSet = tfn
      LookupKeyFields = 'tfncodigo'
      LookupResultField = 'tfnidentificacao'
      KeyFields = 'tfncodigo'
      Size = 35
      Lookup = True
    end
  end
  inherited cau: tuniquery
    Left = 520
    Top = 300
  end
  object tfn: tuniquery
    SQL.Strings = (
      'select tfncodigo, tfnidentificacao from tfn')
    Params = <>
    Left = 424
    Top = 300
    object tfntfncodigo: TIntegerField
      FieldName = 'tfncodigo'
    end
    object tfntfnidentificacao: TStringField
      FieldName = 'tfnidentificacao'
      Size = 35
    end
  end
end
