inherited ffnc: Tffnc
  ActiveControl = fncidentificacao
  Caption = 'Fun'#231#227'o'
  ClientHeight = 424
  ClientWidth = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 395
    Width = 620
    inherited bconfirma: TBitBtn
      Left = 466
      Enabled = False
    end
    inherited bcancela: TBitBtn
      Left = 541
    end
    inherited bfechar: TBitBtn
      Left = 401
    end
  end
  inherited paginas: TPageControl
    Width = 620
    Height = 395
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 18
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fnccodigo
      end
      object Label2: TLabel
        Left = 18
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fncidentificacao
      end
      object fncidentificacao: TDBEdit
        Left = 96
        Top = 30
        Width = 231
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fncidentificacao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fnccodigo: TDBEdit
        Left = 96
        Top = 3
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fnccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bvalidar: TButton
        Left = 344
        Top = 30
        Width = 75
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 2
        OnClick = bvalidarClick
      end
      object Plfcf: TPanel
        Left = 0
        Top = 120
        Width = 612
        Height = 247
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fnccodigo,fncidentificacao from fnc where fnccodigo=:fncc' +
        'odigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fnccodigo'
        Value = nil
      end>
    object registrofnccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fnccodigo'
    end
    object registrofncidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fncidentificacao'
      Size = 25
    end
  end
  inherited dcl: TUniQuery
    Left = 556
    Top = 144
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
