inherited fetf: Tfetf
  ActiveControl = ttfcodigo
  Caption = 'Telefone'
  ClientHeight = 285
  ClientWidth = 307
  ExplicitWidth = 323
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 256
    Width = 307
    ExplicitTop = 256
    ExplicitWidth = 307
    inherited bconfirma: TBitBtn
      Left = 153
      ExplicitLeft = 153
    end
    inherited bcancela: TBitBtn
      Left = 228
      ExplicitLeft = 228
    end
    inherited bfechar: TBitBtn
      Left = 88
      ExplicitLeft = 88
    end
  end
  inherited paginas: TPageControl
    Width = 307
    Height = 256
    ExplicitWidth = 307
    ExplicitHeight = 256
    inherited Principal: TTabSheet
      ExplicitWidth = 299
      ExplicitHeight = 228
      object Label5: TLabel
        Left = 9
        Top = 3
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
        FocusControl = ttfcodigo
      end
      object Label2: TLabel
        Left = 9
        Top = 60
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Contato'
        FocusControl = etfcontato
      end
      object Label3: TLabel
        Left = 256
        Top = 96
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Departamento'
        FocusControl = etfdepartamento
        Visible = False
      end
      object Label4: TLabel
        Left = 9
        Top = 33
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = etftelefone
      end
      object ttfcodigo: TDBEdit
        Left = 99
        Top = 3
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etfcontato: TDBEdit
        Left = 99
        Top = 57
        Width = 185
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etfcontato'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etfdepartamento: TDBEdit
        Left = 331
        Top = 93
        Width = 217
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etfdepartamento'
        DataSource = DSRegistro
        TabOrder = 3
        Visible = False
      end
      object etftelefone: TDBEdit
        Left = 99
        Top = 30
        Width = 122
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etftelefone'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = etftelefoneExit
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 408
    Top = 228
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select etfcodigo,etdcodigo,etf.ttfcodigo,etfcontato,etfdepartame' +
        'nto,etftelefone,etfativo from etf'
      'where etfcodigo=:etfcodigo and etf.etdcodigo=:etdcodigo')
    Left = 188
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registroetfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etfcodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroetfcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etfcontato'
    end
    object registroetfdepartamento: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'etfdepartamento'
    end
    object registrottfcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ttfcodigo'
      Required = True
    end
    object registrottfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttfidentificacao'
      LookupDataSet = ttf
      LookupKeyFields = 'ttfcodigo'
      LookupResultField = 'ttfidentificacao'
      KeyFields = 'ttfcodigo'
      Lookup = True
    end
    object registroetftelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'etftelefone'
    end
    object registroetfativo: TIntegerField
      FieldName = 'etfativo'
    end
  end
  object ttf: TUniQuery
    SQL.Strings = (
      'select ttfcodigo, ttfidentificacao from ttf')
    Left = 408
    Top = 80
    object ttfttfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttfcodigo'
    end
    object ttfttfidentificacao: TStringField
      DisplayLabel = 'Tipo de Telefone'
      FieldName = 'ttfidentificacao'
    end
  end
end
