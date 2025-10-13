inherited fetd: Tfetd
  ActiveControl = etdcodigo
  Caption = 'Altera'#231#227'o da Entidade'
  ClientHeight = 131
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 102
  end
  inherited paginas: TPageControl
    Height = 102
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = meschave
      end
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object meschave: TDBEdit
        Left = 112
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meschave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 112
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select meschave, etdcodigo from mes where meschave=:meschave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registromeschave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'meschave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
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
      Size = 80
      Lookup = True
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 704
    Top = 176
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 80
    end
  end
end
