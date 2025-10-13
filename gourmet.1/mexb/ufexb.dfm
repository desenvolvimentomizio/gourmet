inherited fexb: Tfexb
  ActiveControl = exbidentificacao
  Caption = 'Registro de Eventos das imagens'
  ClientHeight = 557
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 528
    ExplicitTop = 554
  end
  inherited paginas: TPageControl
    Height = 528
    ExplicitHeight = 554
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 526
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo:'
        FocusControl = exbcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 50
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o:'
      end
      object exbcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object exbidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 400
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exbidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object Plexi: TPanel
        Left = 0
        Top = 293
        Width = 788
        Height = 207
        CustomHint = BalloonHint
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 319
      end
      object Plexh: TPanel
        Left = 0
        Top = 86
        Width = 788
        Height = 207
        CustomHint = BalloonHint
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitTop = 112
      end
    end
  end
  object btnvalidar: TButton [3]
    Left = 465
    Top = 81
    Width = 75
    Height = 23
    CustomHint = BalloonHint
    Caption = 'Validar'
    TabOrder = 3
    OnClick = btnvalidarClick
  end
  inherited DSRegistro: TUniDataSource
    Left = 236
    Top = 272
  end
  inherited consulta: TUniQuery
    Left = 320
    Top = 140
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select exbcodigo,exbidentificacao,clbcodigo,exbregistro from exb' +
        ' where exbcodigo=:exbcodigo')
    Left = 236
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exbcodigo'
        Value = nil
      end>
    object registroexbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'exbcodigo'
    end
    object registroexbidentificacao: TStringField
      FieldName = 'exbidentificacao'
      Required = True
      Size = 200
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroexbregistro: TDateField
      FieldName = 'exbregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object DataSource1: TDataSource
    Left = 392
    Top = 328
  end
end
