inherited ftng: Tftng
  ActiveControl = tngidentificacao
  Caption = 'N'#250'cleo Gerencial'
  ClientHeight = 112
  ClientWidth = 515
  ExplicitWidth = 531
  ExplicitHeight = 151
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 83
    Width = 515
    inherited bconfirma: TBitBtn
      Left = 361
    end
    inherited bcancela: TBitBtn
      Left = 436
    end
    inherited bfechar: TBitBtn
      Left = 296
    end
  end
  inherited paginas: TPageControl
    Width = 515
    Height = 83
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tngcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tngidentificacao
      end
      object tngcodigo: TDBEdit
        Left = 119
        Top = 3
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tngcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tngidentificacao: TDBEdit
        Left = 119
        Top = 29
        Width = 382
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tngidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tngcodigo, tngidentificacao from tng where tngcodigo=:tng' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tngcodigo'
        Value = nil
      end>
    object registrotngcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tngcodigo'
    end
    object registrotngidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tngidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
