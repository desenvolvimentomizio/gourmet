inherited ftog: Tftog
  Caption = 'Origem do Campo para Contabiliza'#231#227'o'
  ClientHeight = 303
  ClientWidth = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 274
    Width = 633
    inherited bconfirma: TBitBtn
      Left = 479
    end
    inherited bcancela: TBitBtn
      Left = 554
    end
    inherited bfechar: TBitBtn
      Left = 414
    end
  end
  inherited paginas: TPageControl
    Width = 633
    Height = 274
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = togcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = togidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Campo'
        FocusControl = togcampo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome da Tabela'
        FocusControl = togtabela
      end
      object Label5: TLabel
        Left = 8
        Top = 141
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Campos'
        FocusControl = gtocodigo
      end
      object togcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object togidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 473
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object togcampo: TDBEdit
        Left = 136
        Top = 111
        Width = 225
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togcampo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object togtabela: TDBEdit
        Left = 136
        Top = 84
        Width = 225
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togtabela'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object togdescricao: TDBMemo
        Left = 136
        Top = 138
        Width = 473
        Height = 89
        CustomHint = BalloonHint
        DataField = 'togdescricao'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 5
      end
      object gtocodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gtocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  togcodigo,'
      '  togidentificacao,'
      '  gtocodigo,'
      '  togcampo,'
      '  togdescricao,'
      '  togtabela'
      'FROM tog where togcodigo=:togcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'togcodigo'
        Value = nil
      end>
    object registrotogcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'togcodigo'
      Required = True
    end
    object registrotogidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'togidentificacao'
      Required = True
      Size = 50
    end
    object registrogtocodigo: TIntegerField
      DisplayLabel = 'Grupo de Tipos'
      FieldName = 'gtocodigo'
      Required = True
    end
    object registrogtoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gtoidentificacao'
      LookupDataSet = gto
      LookupKeyFields = 'gtocodigo'
      LookupResultField = 'gtoidentificacao'
      KeyFields = 'gtocodigo'
      Size = 35
      Lookup = True
    end
    object registrotogcampo: TStringField
      DisplayLabel = 'Nome do campo'
      FieldName = 'togcampo'
      Required = True
      Size = 35
    end
    object registrotogdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'togdescricao'
      Required = True
      Size = 250
    end
    object registrotogtabela: TStringField
      DisplayLabel = 'Nome da Tabela'
      FieldName = 'togtabela'
      Required = True
      Size = 35
    end
  end
  inherited err: TUniQuery
    Left = 504
    Top = 180
  end
  inherited BalloonHint: TBalloonHint
    Left = 444
    Top = 176
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object UniScript: TUniScript
    Delimiter = '//'
    Left = 524
    Top = 16
  end
  object gto: TUniQuery
    SQL.Strings = (
      'select gtocodigo, gtoidentificacao from gto')
    Left = 368
    Top = 200
    object gtogtocodigo: TIntegerField
      FieldName = 'gtocodigo'
    end
    object gtogtoidentificacao: TStringField
      FieldName = 'gtoidentificacao'
      Size = 35
    end
  end
end
