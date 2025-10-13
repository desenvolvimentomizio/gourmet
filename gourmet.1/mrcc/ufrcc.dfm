inherited frcc: Tfrcc
  Caption = 'Registro de Cr'#233'dito'
  ClientHeight = 260
  ExplicitHeight = 299
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 231
    ExplicitTop = 231
  end
  inherited paginas: TPageControl
    Height = 231
    ExplicitHeight = 231
    inherited Principal: TTabSheet
      ExplicitHeight = 203
      inherited rcrvalor: TDBEdit
        Width = 109
        ExplicitWidth = 109
      end
    end
  end
  inherited err: TUniQuery
    Left = 520
    Top = 196
  end
  inherited mce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce where rcrchave=:rcrchave and tmccodigo=1')
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltechave,'
      '  tfdcodigo,'
      '  ltedata,'
      '  lteprincipal,'
      '  ltemulta,'
      '  ltejuros,'
      '  ltedesconto,'
      '  ltetotal,'
      '  lteextenso'
      'FROM lte'
      'ORDER BY ltechave ASC LIMIT 1')
    Left = 68
    Top = 132
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object lteltedata: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'ltedata'
    end
    object ltelteprincipal: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'lteprincipal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltemulta: TFloatField
      DisplayLabel = 'Valor da Multa R$'
      FieldName = 'ltemulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltejuros: TFloatField
      DisplayLabel = 'Valor do Juros R$'
      FieldName = 'ltejuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltedesconto: TFloatField
      DisplayLabel = 'Valor do Desconto R$'
      FieldName = 'ltedesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltetotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'ltetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let limit 0')
    Left = 240
    Top = 184
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
