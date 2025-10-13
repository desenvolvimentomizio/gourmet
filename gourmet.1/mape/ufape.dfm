inherited fape: Tfape
  ActiveControl = apeidentificacao
  Caption = 'Apartamento do Endere'#231'amento de Produtos'
  ClientHeight = 141
  ClientWidth = 364
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 112
    Width = 364
    inherited bconfirma: TBitBtn
      Left = 210
    end
    inherited bcancela: TBitBtn
      Left = 285
    end
    inherited bfechar: TBitBtn
      Left = 145
    end
  end
  inherited paginas: TPageControl
    Width = 364
    Height = 112
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 15
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = apecodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = apeidentificacao
      end
      object apecodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'apecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object apeidentificacao: TDBEdit
        Left = 120
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'apeidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      'SELECT'
      '  ape.apecodigo,'
      '  ape.apeidentificacao'
      'FROM ape'
      'WHERE ape.apecodigo = :apecodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'apecodigo'
        ParamType = ptUnknown
      end>
    Left = 44
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'apecodigo'
        ParamType = ptUnknown
      end>
    object registroapecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'apecodigo'
    end
    object registroapeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'apeidentificacao'
      Required = True
      Size = 2
    end
  end
end
