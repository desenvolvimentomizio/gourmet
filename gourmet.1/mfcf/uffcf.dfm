inherited ffcf: Tffcf
  ActiveControl = feccodigo
  Caption = 'Fun'#231#227'o Especial'
  ClientHeight = 118
  ClientWidth = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 89
    Width = 566
    inherited bconfirma: TBitBtn
      Left = 412
    end
    inherited bcancela: TBitBtn
      Left = 487
    end
    inherited bfechar: TBitBtn
      Left = 347
    end
  end
  inherited paginas: TPageControl
    Width = 566
    Height = 89
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = fcfchave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o Especial'
        FocusControl = feccodigo
      end
      object fcfchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fcfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object feccodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'feccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fcfchave, feccodigo, fnccodigo from fcf where fcfchave=:f' +
        'cfchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fcfchave'
        Value = nil
      end>
    object registrofcfchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'fcfchave'
    end
    object registrofeccodigo: TStringField
      DisplayLabel = 'Fun'#231#227'o Especial'
      FieldName = 'feccodigo'
      Size = 3
    end
    object registrofecidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'fecidentificacao'
      LookupDataSet = fec
      LookupKeyFields = 'feccodigo'
      LookupResultField = 'fecidentificacao'
      KeyFields = 'feccodigo'
      Size = 35
      Lookup = True
    end
    object registrofnccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Fun'#231#227'o'
      FieldName = 'fnccodigo'
    end
  end
  inherited pfr: TUniQuery
    Top = 76
  end
  inherited cau: TUniQuery
    Left = 600
    Top = 156
  end
  object fec: TUniQuery
    SQL.Strings = (
      'select feccodigo, fecidentificacao from fec')
    Left = 572
    Top = 260
    object fecfeccodigo: TStringField
      FieldName = 'feccodigo'
      Size = 3
    end
    object fecfecidentificacao: TStringField
      FieldName = 'fecidentificacao'
      Size = 35
    end
  end
end
