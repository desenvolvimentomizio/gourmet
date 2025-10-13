inherited ffcl: Tffcl
  ActiveControl = fclidentificacao
  Caption = 'Fun'#231#227'o para Colaborador'
  ClientHeight = 389
  ClientWidth = 856
  ExplicitWidth = 872
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 360
    Width = 856
    ExplicitTop = 334
    ExplicitWidth = 733
    inherited bconfirma: TBitBtn
      Left = 702
      ExplicitLeft = 579
    end
    inherited bcancela: TBitBtn
      Left = 777
      ExplicitLeft = 654
    end
    inherited bfechar: TBitBtn
      Left = 637
      ExplicitLeft = 514
    end
  end
  inherited paginas: TPageControl
    Width = 856
    Height = 360
    ExplicitWidth = 733
    ExplicitHeight = 334
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 848
      ExplicitHeight = 332
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fclcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fclidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Lota'#231#227'o'
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
      end
      object Label5: TLabel
        Left = 8
        Top = 222
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor base hora R$'
        FocusControl = fclvalorbase
      end
      object Label7: TLabel
        Left = 8
        Top = 276
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 249
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
        FocusControl = evfcodigo
      end
      object Label9: TLabel
        Left = 8
        Top = 195
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Calculo da hora'
        FocusControl = tthcodigo
      end
      object Label10: TLabel
        Left = 8
        Top = 88
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sele'#231#227'o de Cor'
      end
      object Label11: TLabel
        Left = 8
        Top = 114
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo da Fun'#231#227'o'
      end
      object Label12: TLabel
        Left = 8
        Top = 303
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Paga DSR'
        FocusControl = fclpagadsr
      end
      object fclcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fclcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fclidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 486
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fclidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object fcldatainicial: TDBEdit
        Left = 136
        Top = 138
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fcldatainicial'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object fcldatafinal: TDBEdit
        Left = 136
        Top = 219
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fcldatafinal'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object tlocodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tlocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object fclvalorbase: TDBEdit
        Left = 136
        Top = 165
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fclvalorbase'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 273
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 246
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object tthcodigo: TDBEdit
        Left = 136
        Top = 192
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthcodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object plcor: TPanel
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        ParentBackground = False
        TabOrder = 10
        OnClick = plcorClick
      end
      object gfccodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gfccodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object fclpagadsr: TDBEdit
        Left = 136
        Top = 300
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fclpagadsr'
        DataSource = DSRegistro
        TabOrder = 11
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 460
    Top = 160
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fclcodigo,'
      '  fclidentificacao,'
      '  fclvalorbase,'
      '  tlocodigo,'
      '  fcldatainicial,'
      '  fcldatafinal,'
      '  evfcodigo,'
      '  phgcodigo,'
      '  tthcodigo,'
      '  fclcor,'
      '  gfccodigo,'
      '  fclpagadsr'
      'FROM fcl'
      ''
      'where fclcodigo=:fclcodigo')
    Left = 300
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fclcodigo'
        Value = nil
      end>
    object registrofclcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fclcodigo'
    end
    object registrofclidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fclidentificacao'
      Required = True
      Size = 50
    end
    object registrofclvalorbase: TFloatField
      DisplayLabel = 'Valor base hora R$'
      FieldName = 'fclvalorbase'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotlocodigo: TIntegerField
      DisplayLabel = 'Lota'#231#227'o'
      FieldName = 'tlocodigo'
      Required = True
    end
    object registrotloidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tloidentificacao'
      LookupDataSet = tlo
      LookupKeyFields = 'tlocodigo'
      LookupResultField = 'tloidentificacao'
      KeyFields = 'tlocodigo'
      Size = 50
      Lookup = True
    end
    object registrofcldatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'fcldatainicial'
      Required = True
    end
    object registrofcldatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'fcldatafinal'
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento da Folha'
      FieldName = 'evfcodigo'
      Required = True
    end
    object registroevfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'evfidentificacao'
      LookupDataSet = evf
      LookupKeyFields = 'evfcodigo'
      LookupResultField = 'evfidentificacao'
      KeyFields = 'evfcodigo'
      Size = 50
      Lookup = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Hist'#243'rico'
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
    object registrotthcodigo: TIntegerField
      FieldName = 'tthcodigo'
      Required = True
    end
    object registrotthidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tthidentificacao'
      LookupDataSet = tth
      LookupKeyFields = 'tthcodigo'
      LookupResultField = 'tthidentificacao'
      KeyFields = 'tthcodigo'
      Size = 50
      Lookup = True
    end
    object registrofclcor: TStringField
      FieldName = 'fclcor'
      Size = 50
    end
    object registrogfccodigo: TIntegerField
      FieldName = 'gfccodigo'
      Required = True
    end
    object registrogfcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gfcidentificacao'
      LookupDataSet = gfc
      LookupKeyFields = 'gfccodigo'
      LookupResultField = 'gfcidentificacao'
      KeyFields = 'gfccodigo'
      Size = 30
      Lookup = True
    end
    object registrofclpagadsr: TIntegerField
      DisplayLabel = 'Paga DSR'
      FieldName = 'fclpagadsr'
      Required = True
    end
    object registrosenidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'senidentificacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'fclpagadsr'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 432
    Top = 212
  end
  inherited dtb: TUniQuery
    Left = 388
    Top = 212
  end
  inherited coa: TUniQuery
    Left = 352
    Top = 212
  end
  inherited cpg: TUniQuery
    Left = 780
    Top = 184
  end
  inherited cpc: TUniQuery
    Left = 781
    Top = 233
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tlo: TUniQuery
    SQL.Strings = (
      'select tlocodigo, tloidentificacao from tlo')
    Constraints = <>
    Left = 372
    Top = 144
    object tlotlocodigo: TIntegerField
      FieldName = 'tlocodigo'
    end
    object tlotloidentificacao: TStringField
      FieldName = 'tloidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Constraints = <>
    Left = 268
    Top = 240
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Constraints = <>
    Left = 316
    Top = 240
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
  end
  object tth: TUniQuery
    SQL.Strings = (
      'select tthcodigo, tthidentificacao from tth')
    Constraints = <>
    Left = 500
    Top = 216
    object tthtthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
    object tthtthidentificacao: TStringField
      FieldName = 'tthidentificacao'
      Size = 50
    end
  end
  object ColorDialog: TColorDialog
    Left = 276
    Top = 104
  end
  object gfc: TUniQuery
    SQL.Strings = (
      'select gfccodigo, gfcidentificacao from gfc')
    Constraints = <>
    Left = 260
    Top = 160
    object gfcgfccodigo: TIntegerField
      FieldName = 'gfccodigo'
    end
    object gfcgfcidentificacao: TStringField
      FieldName = 'gfcidentificacao'
      Size = 30
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Constraints = <>
    Left = 460
    Top = 296
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
