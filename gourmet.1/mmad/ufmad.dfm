inherited fmad: Tfmad
  ActiveControl = etdcodigo
  Caption = 'Movimento em Cart'#245'es'
  ClientHeight = 176
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 147
    ExplicitTop = 156
  end
  inherited paginas: TPageControl
    Height = 147
    ExplicitHeight = 156
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 128
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = madchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Operadora de Cart'#245'es'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 181
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total de Vendas no Cart'#227'o de Cr'#233'dito'
        FocusControl = madvalorccredito
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 177
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total de Vendas no Cart'#227'o de D'#233'bito'
        FocusControl = madvalorcdebito
      end
      object madchave: TDBEdit
        Left = 195
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'madchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 195
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object madvalorccredito: TDBEdit
        Left = 195
        Top = 57
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'madvalorccredito'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object madvalorcdebito: TDBEdit
        Left = 195
        Top = 84
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'madvalorcdebito'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  madchave,'
      '  spdchave,'
      '  etdcodigo,'
      '  madvalorccredito,'
      '  madvalorcdebito,'
      '  madapurccredito,'
      '  madapurcdebito'
      'FROM mad where madchave=:madchave and spdchave=:spdchave')
    Left = 340
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'madchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
    object registromadchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'madchave'
    end
    object registrospdchave: TIntegerField
      FieldName = 'spdchave'
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
    object registromadvalorccredito: TFloatField
      DisplayLabel = 'Total de Vendas no Cart'#227'o de Cr'#233'dito'
      FieldName = 'madvalorccredito'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromadvalorcdebito: TFloatField
      DisplayLabel = 'Total de Vendas no Cart'#227'o de D'#233'bito'
      FieldName = 'madvalorcdebito'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromadapurccredito: TFloatField
      DisplayLabel = 'madvalorccredito'
      FieldName = 'madapurccredito'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromadapurcdebito: TFloatField
      DisplayLabel = 'madvalorccredito'
      FieldName = 'madapurcdebito'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etdcodigo,'
      '  etdidentificacao'
      'FROM etd')
    Left = 332
    Top = 272
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
