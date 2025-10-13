inherited fapl: Tfapl
  ActiveControl = aplidentificacao
  Caption = 'Aplica'#231#227'o'
  ClientHeight = 424
  ClientWidth = 746
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 395
    Width = 746
    inherited bconfirma: TBitBtn
      Left = 592
    end
    inherited bcancela: TBitBtn
      Left = 667
    end
    inherited bfechar: TBitBtn
      Left = 527
    end
  end
  inherited paginas: TPageControl
    Width = 746
    Height = 395
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = aplcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = aplidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Arquivo Executavel'
        FocusControl = aplexe
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = aplexe
      end
      object Spt1: TSplitter
        Left = 0
        Top = 183
        Width = 738
        Height = 5
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object aplcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'aplcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object aplidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 522
        Height = 21
        CustomHint = BalloonHint
        DataField = 'aplidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object aplexe: TDBEdit
        Left = 136
        Top = 57
        Width = 225
        Height = 21
        CustomHint = BalloonHint
        DataField = 'aplexe'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object apldescricao: TDBMemo
        Left = 136
        Top = 84
        Width = 449
        Height = 89
        CustomHint = BalloonHint
        DataField = 'apldescricao'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bvalidar: TButton
        Left = 591
        Top = 82
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 4
        OnClick = bvalidarClick
      end
      object Plpla: TPanel
        Left = 0
        Top = 188
        Width = 738
        Height = 179
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select aplcodigo, aplidentificacao, apldescricao, aplexe from ap' +
        'l where aplcodigo=:aplcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aplcodigo'
        Value = nil
      end>
    object registroaplcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'aplcodigo'
    end
    object registroaplidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'aplidentificacao'
      Size = 50
    end
    object registroapldescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o da Aplica'#231#227'o'
      FieldName = 'apldescricao'
      Size = 2000
    end
    object registroaplexe: TStringField
      DisplayLabel = 'Arquivo Executavel'
      FieldName = 'aplexe'
      Size = 35
    end
  end
end
