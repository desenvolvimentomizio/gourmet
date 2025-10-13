inherited fata: Tfata
  ActiveControl = flhchave
  Caption = 'Atividade Adicional'
  ClientHeight = 316
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 287
    ExplicitTop = 287
    inherited bconfirma: TBitBtn
      ExplicitLeft = 648
      ExplicitTop = 6
    end
    inherited bfechar: TBitBtn
      Visible = True
    end
  end
  inherited paginas: TPageControl
    Height = 287
    ExplicitHeight = 287
    inherited Principal: TTabSheet
      ExplicitHeight = 259
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = atachave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha de Pagamento'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = vhfcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Atividade'
        FocusControl = ttacodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data da realiza'#231#227'o'
        FocusControl = atadata
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hora Inicial'
        FocusControl = atahorainicial
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hora Final'
        FocusControl = atahorafinal
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas da Atividade'
        FocusControl = atahoras
      end
      object Label9: TLabel
        Left = 8
        Top = 222
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pbserva'#231#227'o'
        FocusControl = atahoras
      end
      object atachave: TDBEdit
        Left = 136
        Top = 3
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atachave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object vhfcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ttacodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttacodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object atadata: TDBEdit
        Left = 136
        Top = 111
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atadata'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object atahorainicial: TDBEdit
        Left = 136
        Top = 138
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atahorainicial'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object atahorafinal: TDBEdit
        Left = 136
        Top = 165
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atahorafinal'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object atahoras: TDBEdit
        Left = 136
        Top = 192
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atahoras'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object ataobservacao: TDBEdit
        Left = 136
        Top = 219
        Width = 521
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ataobservacao'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  atachave,'
      '  flhchave,'
      '  vhfcodigo,'
      '  ttacodigo,'
      '  atadata,'
      '  atahorainicial,'
      '  atahorafinal,'
      '  atahoras,'
      '  clbcodigo,'
      '  ataregistro,'
      '  ataobservacao'
      'FROM ata where atachave=:atachave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atachave'
        Value = nil
      end>
    object registroatachave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'atachave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Folha de Pagamento'
      FieldName = 'flhchave'
      Required = True
    end
    object registroflhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flhidentificacao'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchave'
      Size = 50
      Lookup = True
    end
    object registrovhfcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'vhfcodigo'
      Required = True
    end
    object registrovhfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'vhfidentificacao'
      LookupDataSet = vhf
      LookupKeyFields = 'vhfcodigo'
      LookupResultField = 'vhfidentificacao'
      KeyFields = 'vhfcodigo'
      Size = 50
      Lookup = True
    end
    object registrottacodigo: TIntegerField
      DisplayLabel = 'Tipo de Atividade'
      FieldName = 'ttacodigo'
      Required = True
    end
    object registrottaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttaidentificacao'
      LookupDataSet = tta
      LookupKeyFields = 'ttacodigo'
      LookupResultField = 'ttaidentificacao'
      KeyFields = 'ttacodigo'
      Size = 50
      Lookup = True
    end
    object registroatadata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'atadata'
      Required = True
    end
    object registroatahorainicial: TTimeField
      DisplayLabel = 'Hpra Inicial'
      FieldName = 'atahorainicial'
      Required = True
    end
    object registroatahorafinal: TTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'atahorafinal'
      Required = True
    end
    object registroatahoras: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'atahoras'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroataregistro: TDateTimeField
      FieldName = 'ataregistro'
    end
    object registroataobservacao: TStringField
      FieldName = 'ataobservacao'
      Size = 250
    end
  end
  inherited dcp: TUniQuery
    Left = 752
    Top = 220
  end
  inherited dtb: TUniQuery
    Left = 684
    Top = 220
  end
  inherited coa: TUniQuery
    Left = 704
    Top = 204
  end
  inherited cpg: TUniQuery
    Left = 620
    Top = 48
  end
  inherited cpc: TUniQuery
    Left = 621
    Top = 97
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 456
    Top = 56
  end
  object flh: TUniQuery
    SQL.Strings = (
      'select flhchave, flhidentificacao from flh')
    Left = 524
    Top = 64
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object vhf: TUniQuery
    SQL.Strings = (
      
        'SELECT vhfcodigo,  CONCAT(etdidentificacao , '#39' - '#39', vhfidentific' +
        'acao) as vhfidentificacao  FROM vhf, etd WHERE vhf.etdcodigo=etd' +
        '.etdcodigo ')
    Left = 348
    Top = 176
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfvhfidentificacao: TStringField
      FieldName = 'vhfidentificacao'
      Size = 50
    end
  end
  object tta: TUniQuery
    SQL.Strings = (
      'select ttacodigo, ttaidentificacao from tta')
    Left = 628
    Top = 160
    object ttattacodigo: TIntegerField
      FieldName = 'ttacodigo'
    end
    object ttattaidentificacao: TStringField
      FieldName = 'ttaidentificacao'
      Size = 50
    end
  end
end
