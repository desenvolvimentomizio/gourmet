inherited fccefecha: Tfccefecha
  ActiveControl = ccevalor
  Caption = 'Fechamento de Caixa do Entregador'
  ClientHeight = 210
  ExplicitHeight = 249
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 181
    ExplicitTop = 181
  end
  inherited paginas: TPageControl
    Height = 181
    ExplicitHeight = 181
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 153
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data e Hora da Abertura'
        FocusControl = cceabertura
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 135
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data e Hora do Fechamento'
        FocusControl = ccefechamento
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Recebido'
        FocusControl = ccevalor
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sobra em R$'
        FocusControl = ccesobra
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Falta em R$'
        FocusControl = ccefalta
      end
      object cceabertura: TDBEdit
        Left = 152
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cceabertura'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object ccefechamento: TDBEdit
        Left = 152
        Top = 30
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ccefechamento'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object ccevalor: TDBEdit
        Left = 152
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccevalor'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ccesobra: TDBEdit
        Left = 152
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccesobra'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ccefalta: TDBEdit
        Left = 152
        Top = 111
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccefalta'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccechave,'
      '  cznchave,'
      '  etdcodigo,'
      '  cceabertura,'
      ''
      '  ccefechamento,'
      '  ccevalor,'
      '  ccequantidade,'
      '  ccetempomedio,'
      '  ccesobra,'
      '  ccefalta'
      'FROM cce where ccechave=:ccechave')
    Left = 484
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccechave'
        Value = nil
      end>
    object registroccechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ccechave'
    end
    object registrocznchave: TIntegerField
      FieldName = 'cznchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entregador'
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
    object registrocceabertura: TDateTimeField
      DisplayLabel = 'Abertura'
      FieldName = 'cceabertura'
    end
    object registroccefechamento: TDateTimeField
      DisplayLabel = 'Fechamento'
      FieldName = 'ccefechamento'
      Required = True
    end
    object registroccevalor: TFloatField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'ccevalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object registroccequantidade: TIntegerField
      FieldName = 'ccequantidade'
    end
    object registroccesobra: TFloatField
      DisplayLabel = 'Sobra em R$'
      FieldName = 'ccesobra'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object registroccefalta: TFloatField
      DisplayLabel = 'Falta em R$'
      FieldName = 'ccefalta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
  end
  inherited dcp: TUniQuery
    Left = 120
    Top = 316
  end
  inherited dtb: TUniQuery
    Left = 76
    Top = 316
  end
  inherited coa: TUniQuery
    Left = 40
    Top = 316
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select distinct etd.etdcodigo, etdidentificacao '
      'from etd '
      '  LEFT JOIN etv'
      '    ON etd.etdcodigo = etv.etdcodigo'
      '  WHERE etv.tvicodigo=3'
      'order by etdidentificacao')
    Left = 660
    Top = 96
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
