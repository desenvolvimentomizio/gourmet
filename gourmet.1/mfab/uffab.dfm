inherited ffab: Tffab
  ActiveControl = fabidentificacao
  Caption = 'Fabricante'
  ClientHeight = 123
  ClientWidth = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 94
    Width = 492
    inherited bconfirma: TBitBtn
      Left = 338
    end
    inherited bcancela: TBitBtn
      Left = 413
    end
    inherited bfechar: TBitBtn
      Left = 273
    end
  end
  inherited paginas: TPageControl
    Width = 492
    Height = 94
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fabcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fabidentificacao
      end
      object fabcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fabcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fabidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 333
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fabidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited cfg: TUniQuery
    Top = 12
  end
  inherited consulta: TUniQuery
    Left = 360
    Top = 4
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fabcodigo, fabidentificacao from fab where fabcodigo=:fab' +
        'codigo')
    Left = 300
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fabcodigo'
        Value = nil
      end>
    object registrofabcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fabcodigo'
    end
    object registrofabidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fabidentificacao'
      Required = True
      Size = 35
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
