inherited frue: Tfrue
  ActiveControl = rueidentificacao
  Caption = 'Rua do Endere'#231'amento de Produtos'
  ClientHeight = 141
  ClientWidth = 364
  ExplicitWidth = 380
  ExplicitHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 112
    Width = 364
    ExplicitTop = 112
    ExplicitWidth = 364
    inherited bconfirma: TBitBtn
      Left = 210
      ExplicitLeft = 210
    end
    inherited bcancela: TBitBtn
      Left = 285
      ExplicitLeft = 285
    end
    inherited bfechar: TBitBtn
      Left = 145
      ExplicitLeft = 145
    end
  end
  inherited paginas: TPageControl
    Width = 364
    Height = 112
    ExplicitWidth = 364
    ExplicitHeight = 112
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 356
      ExplicitHeight = 84
      object Label1: TLabel
        Left = 15
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ruecodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = rueidentificacao
      end
      object ruecodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ruecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rueidentificacao: TDBEdit
        Left = 120
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rueidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rue.ruecodigo,'
      '  rue.rueidentificacao'
      'FROM rue'
      'WHERE rue.ruecodigo = :ruecodigo')
    Left = 20
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ruecodigo'
        Value = nil
      end>
    object registroruecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ruecodigo'
    end
    object registrorueidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      DisplayWidth = 4
      FieldName = 'rueidentificacao'
      Required = True
      Size = 4
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
