inherited fvhf: Tfvhf
  ActiveControl = vhfidentificacao
  Caption = 'Valor da Hora por Fun'#231#227'o'
  ClientHeight = 509
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 480
    ExplicitTop = 252
  end
  inherited paginas: TPageControl
    Height = 480
    ExplicitHeight = 252
    inherited Principal: TTabSheet
      ExplicitHeight = 224
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = vhfcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = vhfidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o'
        FocusControl = fclcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = etdcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 141
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da Hora'
        FocusControl = vhfvalor
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = vhfdatainicial
      end
      object Label7: TLabel
        Left = 8
        Top = 195
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = vhfdatafinal
      end
      object Label8: TLabel
        Left = 8
        Top = 114
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Adicional'
        FocusControl = anfcodigo
      end
      object vhfcodigo: TDBEdit
        Left = 128
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object vhfidentificacao: TDBEdit
        Left = 128
        Top = 30
        Width = 465
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object fclcodigo: TDBEdit
        Left = 128
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fclcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object etdcodigo: TDBEdit
        Left = 128
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object vhfvalor: TDBEdit
        Left = 128
        Top = 138
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfvalor'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object vhfdatainicial: TDBEdit
        Left = 128
        Top = 165
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfdatainicial'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object vhfdatafinal: TDBEdit
        Left = 128
        Top = 192
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfdatafinal'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object anfcodigo: TDBEdit
        Left = 128
        Top = 111
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anfcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vhfcodigo,'
      '  vhfidentificacao,'
      '  fclcodigo,'
      '  etdcodigo,'
      '  vhfvalor,'
      '  vhfdatainicial,'
      '  vhfdatafinal,'
      '  anfcodigo'
      'FROM vhf where vhfcodigo=:vhfcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vhfcodigo'
        Value = nil
      end>
    object registrovhfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vhfcodigo'
    end
    object registrovhfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'vhfidentificacao'
      Size = 50
    end
    object registrofclcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'fclcodigo'
      Required = True
    end
    object registrofclidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'fclidentificacao'
      LookupDataSet = fcl
      LookupKeyFields = 'fclcodigo'
      LookupResultField = 'fclidentificacao'
      KeyFields = 'fclcodigo'
      Size = 50
      Lookup = True
    end
    object registrovhfvalor: TFloatField
      DisplayLabel = 'Valor da Hora'
      FieldName = 'vhfvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrovhfdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'vhfdatainicial'
      Required = True
    end
    object registrovhfdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'vhfdatafinal'
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
    object registroanfcodigo: TIntegerField
      DisplayLabel = 'Adicional'
      FieldName = 'anfcodigo'
      Required = True
    end
    object registroanfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'anfidentificacao'
      LookupDataSet = anf
      LookupKeyFields = 'anfcodigo'
      LookupResultField = 'anfidentificacao'
      KeyFields = 'anfcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    Left = 348
    Top = 224
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao from etd, etv where etd.e' +
        'tdcodigo=etv.etdcodigo and tvicodigo=3')
    Left = 292
    Top = 288
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object fcl: TUniQuery
    SQL.Strings = (
      'select fclcodigo, fclidentificacao from fcl')
    Left = 468
    Top = 320
    object fclfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object fclfclidentificacao: TStringField
      FieldName = 'fclidentificacao'
      Size = 50
    end
  end
  object anf: TUniQuery
    SQL.Strings = (
      'select anfcodigo, anfidentificacao from anf')
    Left = 676
    Top = 168
    object anfanfcodigo: TIntegerField
      FieldName = 'anfcodigo'
    end
    object anfanfidentificacao: TStringField
      FieldName = 'anfidentificacao'
      Size = 50
    end
  end
end
