inherited fdpr: Tfdpr
  ActiveControl = dpridentificacao
  Caption = 'Divis'#227'o de Produtos'
  ClientHeight = 146
  ClientWidth = 524
  ExplicitWidth = 540
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 117
    Width = 524
    ExplicitTop = 187
    ExplicitWidth = 524
    inherited bconfirma: TBitBtn
      Left = 370
      ExplicitLeft = 370
    end
    inherited bcancela: TBitBtn
      Left = 445
      ExplicitLeft = 445
    end
    inherited bfechar: TBitBtn
      Left = 305
      ExplicitLeft = 305
    end
  end
  inherited paginas: TPageControl
    Width = 524
    Height = 117
    ExplicitWidth = 524
    ExplicitHeight = 142
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 516
      ExplicitHeight = 114
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = dprcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = dpridentificacao
      end
      object labccgcodigo: TLabel
        Left = 8
        Top = 60
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo'
        FocusControl = ccgcodigo
      end
      object dprcodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dprcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object dpridentificacao: TDBEdit
        Left = 120
        Top = 30
        Width = 300
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dpridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = dpridentificacaoExit
      end
      object ccgcodigo: TDBEdit
        Left = 120
        Top = 57
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 332
    Top = 16
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgctbusaccg FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 404
    Top = 65532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT dpr.dprcodigo'
      '     , dpr.dpridentificacao'
      '     , dpr.ccgcodigo'
      'FROM dpr'
      'WHERE dpr.dprcodigo = :dprcodigo')
    Left = 236
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dprcodigo'
        Value = nil
      end>
    object registrodprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dprcodigo'
    end
    object registrodpridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'dpridentificacao'
      Required = True
      Size = 30
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgcodigo'
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object dprVerif: TUniQuery
    SQL.Strings = (
      'SELECT dpr.dprcodigo'
      '     , dpr.dpridentificacao'
      'FROM dpr'
      'WHERE dpr.dpridentificacao = :dpridentificacao'
      'AND'
      '  CASE :Alterando'
      '    WHEN TRUE THEN dpr.dprcodigo <> :dprcodigo'
      '    WHEN FALSE THEN dpr.dprcodigo'
      '  END;')
    Constraints = <>
    Left = 308
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dpridentificacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Alterando'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dprcodigo'
        Value = nil
      end>
  end
  object ccg: TUniQuery
    SQL.Strings = (
      'select ccgcodigo, ccgidentificacao from ccg')
    Constraints = <>
    Left = 260
    Top = 128
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
end
