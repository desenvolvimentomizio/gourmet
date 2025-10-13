inherited fgri: Tfgri
  ActiveControl = grpcodigo
  Caption = 'Impressora do Grupo'
  ClientHeight = 377
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 348
    ExplicitTop = 348
  end
  inherited paginas: TPageControl
    Height = 348
    ExplicitHeight = 348
    inherited Principal: TTabSheet
      ExplicitHeight = 320
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gricodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Produtos'
        FocusControl = grpcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 105
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Impressora'
        FocusControl = tcicodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Relat'#243'rio para Delivery'
        FocusControl = relcompleto
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Relat'#243'rio para Sal'#227'o'
        FocusControl = relgrupo
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imprime Autom'#225'ticamente'
        FocusControl = griimprimeauto
      end
      object Label8: TLabel
        Left = 8
        Top = 168
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo para Card'#225'pio'
        FocusControl = gricardapio
      end
      object Label10: TLabel
        Left = 8
        Top = 195
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo para Entregas'
        FocusControl = grientrega
      end
      object Label4: TLabel
        Left = 8
        Top = 222
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imprime pedido auxiliar'
        FocusControl = gripedidoaux
      end
      object Label9: TLabel
        Left = 8
        Top = 249
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Controla Produ'#231#227'o'
        FocusControl = gricontrolaproducao
      end
      object Label11: TLabel
        Left = 288
        Top = 249
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Setor de  Produ'#231#227'o'
        FocusControl = sepcodigo
      end
      object gricodigo: TDBEdit
        Left = 147
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gricodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grpcodigo: TDBEdit
        Left = 147
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grpcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tcicodigo: TDBEdit
        Left = 147
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcicodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object relcompleto: TDBEdit
        Left = 147
        Top = 84
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relcompleto'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object relgrupo: TDBEdit
        Left = 147
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relgrupo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object griimprimeauto: TDBEdit
        Left = 147
        Top = 138
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'griimprimeauto'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object gricardapio: TDBEdit
        Left = 147
        Top = 165
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gricardapio'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object grientrega: TDBEdit
        Left = 147
        Top = 192
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grientrega'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object gripedidoaux: TDBEdit
        Left = 147
        Top = 219
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gripedidoaux'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object gricontrolaproducao: TDBEdit
        Left = 147
        Top = 246
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gricontrolaproducao'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object sepcodigo: TDBEdit
        Left = 386
        Top = 246
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sepcodigo'
        DataSource = DSRegistro
        TabOrder = 10
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gricodigo,'
      '  grpcodigo,'
      '  tcicodigo,'
      '  griminuretardo,'
      '  relcompleto,'
      '  relgrupo,'
      '  griimprimeauto,'
      '  gricardapio,'
      '  grientrega,'
      '  griconveniencia,'
      '  grivias,'
      '  gripedidoaux,'
      '  gricontrolaproducao,'
      '  sepcodigo'
      'FROM gri'
      ' where gricodigo=:gricodigo')
    Left = 348
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gricodigo'
        Value = nil
      end>
    object registrogricodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'gricodigo'
    end
    object registrogrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
      Required = True
    end
    object registrogrpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'grpidentificacao'
      LookupDataSet = grp
      LookupKeyFields = 'grpcodigo'
      LookupResultField = 'grpidentificacao'
      KeyFields = 'grpcodigo'
      Size = 50
      Lookup = True
    end
    object registrogriminuretardo: TIntegerField
      DisplayLabel = 'Minutos de Retardo'
      FieldName = 'griminuretardo'
      Required = True
    end
    object registrotcicodigo: TIntegerField
      FieldName = 'tcicodigo'
      Required = True
    end
    object registrotciidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tciidentificacao'
      LookupDataSet = tci
      LookupKeyFields = 'tcicodigo'
      LookupResultField = 'tciidentificacao'
      KeyFields = 'tcicodigo'
      Size = 50
      Lookup = True
    end
    object registrorelcompleto: TStringField
      DisplayLabel = 'Relat'#243'rio Completo'
      FieldName = 'relcompleto'
      Size = 11
    end
    object registrorelcomidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'relcomidentificacao'
      LookupDataSet = rel
      LookupKeyFields = 'relcodigo'
      LookupResultField = 'relidentificacao'
      KeyFields = 'relcompleto'
      Size = 50
      Lookup = True
    end
    object registrorelgrupo: TStringField
      DisplayLabel = 'Relat'#243'rio por Grupo'
      FieldName = 'relgrupo'
      Required = True
      Size = 11
    end
    object registrorelgruidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'relgruidentificacao'
      LookupDataSet = rel
      LookupKeyFields = 'relcodigo'
      LookupResultField = 'relidentificacao'
      KeyFields = 'relgrupo'
      Size = 50
      Lookup = True
    end
    object registrogriimprimeauto: TIntegerField
      DisplayLabel = 'Imprime Autom'#225'ticamente'
      FieldName = 'griimprimeauto'
      Required = True
    end
    object registrosengriimprimeauto: TStringField
      FieldKind = fkLookup
      FieldName = 'sengriimprimeauto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'griimprimeauto'
      Size = 5
      Lookup = True
    end
    object registrogricardapio: TIntegerField
      DisplayLabel = 'Grupo para Card'#225'pio'
      FieldName = 'gricardapio'
      Required = True
    end
    object registrosengricardapio: TStringField
      FieldKind = fkLookup
      FieldName = 'sengricardapio'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'gricardapio'
      Size = 5
      Lookup = True
    end
    object registrogriconveniencia: TIntegerField
      DisplayLabel = 'Grupo para Conveni'#234'ncia'
      FieldName = 'griconveniencia'
      Required = True
    end
    object registrosengriconveniencia: TStringField
      FieldKind = fkLookup
      FieldName = 'sengriconveniencia'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'griconveniencia'
      Size = 5
      Lookup = True
    end
    object registrogrientrega: TIntegerField
      DisplayLabel = 'Grupo para Entregas'
      FieldName = 'grientrega'
      Required = True
    end
    object registrosengrientrega: TStringField
      FieldKind = fkLookup
      FieldName = 'sengrientrega'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'grientrega'
      Size = 5
      Lookup = True
    end
    object registrogrivias: TIntegerField
      FieldName = 'grivias'
      Required = True
    end
    object registrogripedidoaux: TIntegerField
      DisplayLabel = 'Imprime pedido auxiliar'
      FieldName = 'gripedidoaux'
      Required = True
    end
    object registrosengripedidoaux: TStringField
      FieldKind = fkLookup
      FieldName = 'sengripedidoaux'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'gripedidoaux'
      Size = 5
      Lookup = True
    end
    object registrogricontrolaproducao: TIntegerField
      DisplayLabel = 'Controla produ'#231#227'o'
      FieldName = 'gricontrolaproducao'
      Required = True
    end
    object registrosengricontrolaproducao: TStringField
      FieldKind = fkLookup
      FieldName = 'sengricontrolaproducao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'gricontrolaproducao'
      Size = 5
      Lookup = True
    end
    object registrosepcodigo: TIntegerField
      FieldName = 'sepcodigo'
      Required = True
    end
    object registrosepidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sepidentificacao'
      LookupDataSet = sep
      LookupKeyFields = 'sepcodigo'
      LookupResultField = 'sepidentificacao'
      KeyFields = 'sepcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 688
    Top = 124
  end
  inherited dtb: TUniQuery
    Left = 644
    Top = 124
  end
  inherited coa: TUniQuery
    Left = 608
    Top = 124
  end
  inherited cpg: TUniQuery
    Left = 396
    Top = 192
  end
  inherited lou: TUniQuery
    Left = 288
    Top = 32
  end
  object grp: TUniQuery
    SQL.Strings = (
      'select grpcodigo, grpidentificacao from grp')
    Left = 248
    Top = 168
    object grpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
  end
  object tci: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tci.tcicodigo'
      ' , m.mitidentificacao as tciidentificacao'
      'FROM tci'
      '  INNER JOIN cit c ON tci.tcicodigo = c.tcicodigo'
      '  INNER JOIN mit m ON tci.mitcodigo = m.mitcodigo')
    Left = 536
    Top = 48
    object tcitcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object tcitciidentificacao: TStringField
      FieldName = 'tciidentificacao'
      Size = 50
    end
  end
  object rel: TUniQuery
    SQL.Strings = (
      'select relcodigo, relidentificacao from rel')
    Left = 488
    Top = 64
    object relrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object relrelidentificacao: TStringField
      FieldName = 'relidentificacao'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 656
    Top = 168
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object sep: TUniQuery
    SQL.Strings = (
      'select '
      '0 sepcodigo,'
      #39'Sem Producao'#39' sepidentificacao'
      'union all'
      'select sepcodigo, sepidentificacao from sep')
    Left = 708
    Top = 208
    object sepsepcodigo: TIntegerField
      FieldName = 'sepcodigo'
    end
    object sepsepidentificacao: TStringField
      FieldName = 'sepidentificacao'
      Size = 50
    end
  end
end
