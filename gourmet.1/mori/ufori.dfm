inherited fori: Tfori
  Caption = 'Origem de Pedido'
  ClientHeight = 166
  ClientWidth = 682
  ExplicitWidth = 698
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 137
    Width = 682
    ExplicitTop = 137
    ExplicitWidth = 682
    inherited bconfirma: TBitBtn
      Left = 528
      ExplicitLeft = 528
    end
    inherited bcancela: TBitBtn
      Left = 603
      ExplicitLeft = 603
    end
    inherited bfechar: TBitBtn
      Left = 463
      ExplicitLeft = 463
    end
  end
  inherited paginas: TPageControl
    Width = 682
    Height = 137
    ExplicitWidth = 682
    ExplicitHeight = 137
    inherited Principal: TTabSheet
      ExplicitWidth = 674
      ExplicitHeight = 109
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = oricodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = oriidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cobran'#231'a'
        FocusControl = etdcodigo
      end
      object oricodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'oricodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object oriidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 217
        Height = 21
        CustomHint = BalloonHint
        DataField = 'oriidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select '
      '  oricodigo,'
      '  oriidentificacao,'
      '  etdcodigo'
      'from ori where oricodigo=:oricodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'oricodigo'
        Value = nil
      end>
    object registrooricodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'oricodigo'
    end
    object registrooriidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'oriidentificacao'
      Required = True
      Size = 35
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 460
    Top = 56
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
