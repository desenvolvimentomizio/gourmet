inherited frap: Tfrap
  ActiveControl = etdcodigo
  Caption = 'Participa'#231#227'o'
  ClientHeight = 144
  ClientWidth = 655
  ExplicitWidth = 671
  ExplicitHeight = 183
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 115
    Width = 655
    inherited bconfirma: TBitBtn
      Left = 501
    end
    inherited bcancela: TBitBtn
      Left = 576
    end
    inherited bfechar: TBitBtn
      Left = 436
    end
  end
  inherited paginas: TPageControl
    Width = 655
    Height = 115
    inherited Principal: TTabSheet
      ExplicitLeft = 11
      ExplicitTop = 26
      ExplicitWidth = 647
      ExplicitHeight = 87
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        Caption = 'Registro'
        FocusControl = rapchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 100
        Height = 13
        Caption = 'C'#243'digo do Advogado'
        FocusControl = etdcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 127
        Height = 13
        Caption = 'Percentual de Participa'#231#227'o'
        FocusControl = rappercentual
      end
      object rapchave: TDBEdit
        Left = 141
        Top = 3
        Width = 84
        Height = 21
        DataField = 'rapchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 141
        Top = 30
        Width = 49
        Height = 21
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object rappercentual: TDBEdit
        Left = 141
        Top = 57
        Width = 134
        Height = 21
        DataField = 'rappercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select rapchave, etdcodigo, cavchave, rappercentual from rap whe' +
        're rapchave=:rapchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rapchave'
        Value = nil
      end>
    object registrorapchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rapchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Advogado'
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
    object registrocavchave: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'cavchave'
    end
    object registrorappercentual: TFloatField
      DisplayLabel = 'Perdentuald eParticipa'#231#227'o'
      FieldName = 'rappercentual'
      Required = True
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 496
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
