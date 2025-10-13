inherited fane: Tfane
  ActiveControl = aneidentificacao
  Caption = 'Andar do Endere'#231'amento de Produtos'
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
        FocusControl = anecodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = aneidentificacao
      end
      object anecodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object aneidentificacao: TDBEdit
        Left = 120
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'aneidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ane.anecodigo,'
      '  ane.aneidentificacao'
      'FROM ane'
      'WHERE ane.anecodigo = :anecodigo')
    Left = 260
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anecodigo'
        Value = nil
      end>
    object registroanecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'anecodigo'
    end
    object registroaneidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'aneidentificacao'
      Required = True
      Size = 4
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
