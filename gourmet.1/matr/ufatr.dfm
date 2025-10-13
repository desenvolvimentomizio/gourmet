inherited fatr: Tfatr
  ActiveControl = atridentificacao
  Caption = 'Atributos da Grade'
  ClientHeight = 511
  ClientWidth = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 482
    Width = 535
    inherited bconfirma: TBitBtn
      Left = 381
    end
    inherited bcancela: TBitBtn
      Left = 456
    end
    inherited bfechar: TBitBtn
      Left = 316
    end
  end
  inherited paginas: TPageControl
    Width = 535
    Height = 482
    inherited Principal: TTabSheet
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 527
        Height = 121
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
      end
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = atrcodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = atridentificacao
      end
      object Label3: TLabel
        Left = 24
        Top = 86
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Abreviatura'
        FocusControl = atrabreviatura
      end
      object atrcodigo: TDBEdit
        Left = 103
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atrcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object atridentificacao: TDBEdit
        Left = 103
        Top = 56
        Width = 150
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object atrabreviatura: TDBEdit
        Left = 103
        Top = 83
        Width = 120
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atrabreviatura'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object Pliat: TPanel
        Left = 0
        Top = 121
        Width = 527
        Height = 333
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 4
        Visible = False
      end
      object bvalidar: TButton
        Left = 261
        Top = 83
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 3
        Visible = False
        OnClick = bvalidarClick
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 196
    Top = 272
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  atr.atrcodigo,'
      '  atr.atridentificacao,'
      '  atr.atrabreviatura'
      'FROM atr'
      'WHERE atr.atrcodigo = :atrcodigo')
    Left = 196
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atrcodigo'
        Value = nil
      end>
    object registroatrcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'atrcodigo'
    end
    object registroatridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'atridentificacao'
      Required = True
      Size = 40
    end
    object registroatrabreviatura: TStringField
      DisplayLabel = 'Abreviatura'
      FieldName = 'atrabreviatura'
      Required = True
    end
  end
  inherited BalloonHint: TBalloonHint
    Left = 428
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
