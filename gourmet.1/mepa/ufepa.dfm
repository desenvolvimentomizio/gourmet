inherited fepa: Tfepa
  ActiveControl = tpacodigo
  Caption = 'Pessoa Autorizada a Comprar'
  ClientHeight = 183
  ClientWidth = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 154
    Width = 635
    inherited bconfirma: TBitBtn
      Left = 481
    end
    inherited bcancela: TBitBtn
      Left = 556
    end
    inherited bfechar: TBitBtn
      Left = 416
    end
  end
  inherited paginas: TPageControl
    Width = 635
    Height = 154
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = epacodigo
      end
      object Label4: TLabel
        Left = 16
        Top = 43
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = tpacodigo
      end
      object Label6: TLabel
        Left = 16
        Top = 97
        Width = 54
        Height = 13
        Caption = 'Documento'
      end
      object Label7: TLabel
        Left = 270
        Top = 97
        Width = 27
        Height = 13
        Caption = 'Limite'
        FocusControl = epalimite
      end
      object Label8: TLabel
        Left = 456
        Top = 97
        Width = 53
        Height = 13
        Caption = 'Data Limite'
        FocusControl = epadata
      end
      object Label3: TLabel
        Left = 17
        Top = 70
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
      end
      object epacodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 62
        Height = 21
        DataField = 'epacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tpacodigo: TDBEdit
        Left = 136
        Top = 40
        Width = 62
        Height = 21
        DataField = 'tpacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object epalimite: TDBEdit
        Left = 303
        Top = 94
        Width = 138
        Height = 21
        DataField = 'epalimite'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object epadata: TDBEdit
        Left = 528
        Top = 94
        Width = 97
        Height = 21
        DataField = 'epadata'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object epadoc1: TDBEdit
        Left = 136
        Top = 94
        Width = 81
        Height = 21
        DataField = 'epadoc1'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object epaidentificacao: TDBEdit
        Left = 136
        Top = 67
        Width = 489
        Height = 21
        DataField = 'epaidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 292
    Top = 32
  end
  inherited cfg: tuniquery
    Left = 404
    Top = 60
  end
  inherited consulta: tuniquery
    Top = 76
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select epacodigo,etdcodigo,tpacodigo,epaidentificacao,epadoc1,ep' +
        'alimite,epadata from epa where epa.epacodigo=:epacodigo')
    Left = 256
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'epacodigo'
      end>
    object registroepacodigo: TIntegerField
      FieldName = 'epacodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
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
    object registrotpacodigo: TIntegerField
      FieldName = 'tpacodigo'
    end
    object registrotpaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tpaidentificacao'
      LookupDataSet = tpa
      LookupKeyFields = 'tpacodigo'
      LookupResultField = 'tpaidentificacao'
      KeyFields = 'tpacodigo'
      Size = 50
      Lookup = True
    end
    object registroepaidentificacao: TStringField
      FieldName = 'epaidentificacao'
      Required = True
      Size = 50
    end
    object registroepadoc1: TStringField
      FieldName = 'epadoc1'
    end
    object registroepalimite: TFloatField
      FieldName = 'epalimite'
      Required = True
      DisplayFormat = '#,###,0.00'
      EditFormat = '#,###,0.00'
    end
    object registroepadata: TDateField
      FieldName = 'epadata'
    end
  end
  inherited dcp: tuniquery
    Left = 696
    Top = 236
  end
  inherited dtb: tuniquery
    Left = 652
    Top = 236
  end
  inherited coa: tuniquery
    Left = 616
    Top = 236
  end
  object etd: tuniquery
    SQL.Strings = (
      'select etdcodigo,etdidentificacao from etd')
    Left = 464
    Top = 32
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object tpa: tuniquery
    SQL.Strings = (
      'select tpacodigo,tpaidentificacao from tpa')
    Left = 520
    Top = 32
    object tpatpacodigo: TIntegerField
      FieldName = 'tpacodigo'
    end
    object tpatpaidentificacao: TStringField
      FieldName = 'tpaidentificacao'
      Size = 50
    end
  end
end
