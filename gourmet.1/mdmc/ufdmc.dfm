inherited fdmc: Tfdmc
  ActiveControl = dmcidentificacao
  Caption = 'Demonstra'#231#227'o Cont'#225'bil'
  ClientHeight = 386
  ClientWidth = 685
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 357
    Width = 685
    inherited bconfirma: TBitBtn
      Left = 531
    end
    inherited bcancela: TBitBtn
      Left = 606
    end
    inherited bfechar: TBitBtn
      Left = 466
    end
  end
  inherited paginas: TPageControl
    Width = 685
    Height = 357
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = dmccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = dmcidentificacao
      end
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 677
        Height = 65
        CustomHint = BalloonHint
        Align = alTop
      end
      object SplLista: TSplitter
        Left = 0
        Top = 65
        Width = 677
        Height = 8
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
        AutoSnap = False
        Beveled = True
      end
      object dmccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dmccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object dmcidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 445
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dmcidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bValidar: TButton
        Left = 587
        Top = 30
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 2
        OnClick = bValidarClick
      end
      object plGre: TPanel
        Left = 0
        Top = 73
        Width = 677
        Height = 256
        CustomHint = BalloonHint
        Align = alClient
        TabOrder = 3
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 464
    Top = 116
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select dmccodigo, dmcidentificacao from dmc where dmccodigo=:dmc' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dmccodigo'
        Value = nil
      end>
    object registrodmccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dmccodigo'
    end
    object registrodmcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'dmcidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 364
    Top = 240
    Bitmap = {}
  end
end
