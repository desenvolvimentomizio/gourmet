inherited fiat: Tfiat
  ActiveControl = iatidentificacao
  Caption = 'Itens dos Atributos'
  ClientHeight = 221
  ClientWidth = 861
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 192
    Width = 861
    inherited bconfirma: TBitBtn
      Left = 707
    end
    inherited bcancela: TBitBtn
      Left = 782
    end
    inherited bfechar: TBitBtn
      Left = 642
    end
  end
  inherited paginas: TPageControl
    Width = 861
    Height = 192
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = iatcodigo
      end
      object Label2: TLabel
        Left = 32
        Top = 51
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = iatidentificacao
      end
      object iatcodigo: TDBEdit
        Left = 104
        Top = 21
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iatcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object iatidentificacao: TDBEdit
        Left = 104
        Top = 48
        Width = 150
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iatidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  iat.iatcodigo,'
      '  iat.atrcodigo,'
      '  iat.iatidentificacao'
      'FROM iat'
      'WHERE iat.iatcodigo = :iatcodigo'
      'AND iat.atrcodigo = :atrcodigo')
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iatcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'atrcodigo'
        Value = nil
      end>
    object registroiatcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'iatcodigo'
    end
    object registroatrcodigo: TIntegerField
      FieldName = 'atrcodigo'
    end
    object registroiatidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'iatidentificacao'
      Required = True
      Size = 40
    end
  end
end
