inherited ftmf: Tftmf
  Caption = 'Tipo de Movimenta'#231#227'o Financeira'
  ClientHeight = 151
  ClientWidth = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 122
    Width = 553
    inherited bconfirma: TBitBtn
      Left = 399
    end
    inherited bcancela: TBitBtn
      Left = 474
    end
    inherited bfechar: TBitBtn
      Left = 334
    end
  end
  inherited paginas: TPageControl
    Width = 553
    Height = 122
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = tmcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = tmfIdentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 98
        Height = 13
        Caption = 'Codigo Identifica'#231#227'o'
        FocusControl = cedcodigo
      end
      object tmcodigo: TDBEdit
        Left = 136
        Top = 8
        Width = 73
        Height = 21
        DataField = 'tmfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tmfIdentificacao: TDBEdit
        Left = 136
        Top = 35
        Width = 313
        Height = 21
        DataField = 'tmfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 62
        Width = 33
        Height = 21
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select tmfcodigo,rmfidentificacao,cedcodigo from tmf where tmfco' +
        'digo=:tmfcodigo')
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
      end>
    object registrotmfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tmfcodigo'
      Required = True
    end
    object registrotmfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tmfidentificacao'
      Size = 35
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Codigo Identifica'#231#227'o'
      FieldName = 'cedcodigo'
    end
    object registrocedidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
  end
  object ced: tuniquery
    SQL.Strings = (
      'select cedcodigo,cedidentificacao from ced')
    Left = 192
    Top = 232
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 35
    end
  end
end
