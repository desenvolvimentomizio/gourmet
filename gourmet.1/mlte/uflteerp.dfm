object flteerp: Tflteerp
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Registro das Modalidades'
  ClientHeight = 616
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 587
    Width = 492
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Incluindo'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 338
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      Enabled = False
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 413
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 273
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Limpa'
      TabOrder = 3
      OnClick = bfecharClick
    end
  end
  object plvalores: TPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 230
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object PlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 30
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Valores R$ '
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object plliquido: TPanel
      Left = 0
      Top = 170
      Width = 492
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object lltetotal: TLabel
        Left = 3
        Top = 3
        Width = 158
        Height = 23
        Align = alLeft
        Caption = 'Total L'#237'quido R$'
        FocusControl = ltetotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltetotal: TDBEdit
        Left = 314
        Top = 3
        Width = 175
        Height = 29
        TabStop = False
        Align = alRight
        BiDiMode = bdRightToLeft
        Color = 13565951
        DataField = 'ltetotal'
        DataSource = Dlte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object PlDesconto: TPanel
      Left = 0
      Top = 135
      Width = 492
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 2
      object lltedesconto: TLabel
        Left = 3
        Top = 3
        Width = 207
        Height = 23
        Align = alLeft
        Caption = 'Valor do Desconto R$'
        FocusControl = ltedesconto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltedesconto: TDBEdit
        Left = 314
        Top = 3
        Width = 175
        Height = 29
        TabStop = False
        Align = alRight
        BiDiMode = bdRightToLeft
        Color = 12645023
        DataField = 'ltedesconto'
        DataSource = Dlte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object plJuros: TPanel
      Left = 0
      Top = 100
      Width = 492
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 3
      object lltejuros: TLabel
        Left = 3
        Top = 3
        Width = 170
        Height = 23
        Align = alLeft
        Caption = 'Valor do Juros R$'
        FocusControl = ltejuros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltejuros: TDBEdit
        Left = 314
        Top = 3
        Width = 175
        Height = 29
        TabStop = False
        Align = alRight
        BiDiMode = bdRightToLeft
        Color = 12308991
        DataField = 'ltejuros'
        DataSource = Dlte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object PlValor: TPanel
      Left = 0
      Top = 30
      Width = 492
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 4
      object lprincipal: TLabel
        Left = 3
        Top = 3
        Width = 82
        Height = 23
        Align = alLeft
        Caption = 'Valor R$'
        FocusControl = lteprincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lteprincipal: TDBEdit
        Left = 314
        Top = 3
        Width = 175
        Height = 29
        TabStop = False
        Align = alRight
        BiDiMode = bdRightToLeft
        DataField = 'lteprincipal'
        DataSource = Dlte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object PlMulta: TPanel
      Left = 0
      Top = 65
      Width = 492
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 5
      object lltemulta: TLabel
        Left = 3
        Top = 3
        Width = 171
        Height = 23
        Align = alLeft
        Caption = 'Valor da Multa R$'
        FocusControl = ltemulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltemulta: TDBEdit
        Left = 314
        Top = 3
        Width = 175
        Height = 29
        TabStop = False
        Align = alRight
        BiDiMode = bdRightToLeft
        Color = 12566527
        DataField = 'ltemulta'
        DataSource = Dlte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object plDinheiro: TPanel
    Tag = 1
    Left = 0
    Top = 260
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelEdges = [beLeft, beBottom]
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = 'DINHEIRO R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object plF2: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F6'
      TabOrder = 0
    end
    object edmdaDinheiro: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaDinheiro'
      DataSource = Dtmp
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
  end
  object pltitulomodalidades: TPanel
    Left = 0
    Top = 230
    Width = 492
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = 'Detalhe das Modalidades'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object plteclas: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 22
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = 'Tecla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object plcartaocredito: TPanel
    Tag = 5
    Left = 0
    Top = 365
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object plF5: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F3'
      TabOrder = 0
    end
    object edmdaCartaoCredito: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaCartaoCredito'
      DataSource = Dtmp
      ReadOnly = True
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
    object btcartaocredito: TBitBtn
      Left = 4
      Top = 4
      Width = 299
      Height = 27
      Action = ActCartaoCredito
      Align = alClient
      Caption = 'Cart'#227'o CR'#201'DITO R$'
      Margin = 2
      TabOrder = 2
      TabStop = False
    end
  end
  object plcartaodebito: TPanel
    Tag = 4
    Left = 0
    Top = 330
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object plF4: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F4'
      TabOrder = 0
    end
    object edmdaCartaoDebito: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaCartaoDebito'
      DataSource = Dtmp
      ReadOnly = True
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
    object btcartaodebito: TBitBtn
      Left = 4
      Top = 4
      Width = 299
      Height = 27
      Action = ActCartaoDebito
      Align = alClient
      Caption = 'Cart'#227'o D'#201'BITO R$'
      Margin = 2
      TabOrder = 2
      TabStop = False
    end
  end
  object plconvenio: TPanel
    Tag = 7
    Left = 0
    Top = 295
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = 'CONV'#202'NIO R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object plF3: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F9'
      TabOrder = 0
    end
    object edmdaConvenio: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaConvenio'
      DataSource = Dtmp
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
  end
  object plchequesterceiros: TPanel
    Tag = 3
    Left = 0
    Top = 400
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object plF6: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F5'
      TabOrder = 0
    end
    object edmdaChequeTerceiros: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaChequeTerceiros'
      DataSource = Dtmp
      Enabled = False
      ReadOnly = True
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
    object btchequeterceiros: TBitBtn
      Left = 4
      Top = 4
      Width = 299
      Height = 27
      Action = ActChequeTerceiros
      Align = alClient
      Caption = 'Cheque TERCEIROS R$'
      Margin = 2
      TabOrder = 2
      TabStop = False
    end
  end
  object plchequesproprios: TPanel
    Tag = 2
    Left = 0
    Top = 435
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object plF7: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F7'
      TabOrder = 0
    end
    object edmdaChequeProprio: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaChequeProprio'
      DataSource = Dtmp
      Enabled = False
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
    object btchequeproprios: TBitBtn
      Left = 4
      Top = 4
      Width = 299
      Height = 27
      Action = ActChequeProprios
      Align = alClient
      Caption = 'Cheque PR'#211'PRIO R$'
      Margin = 2
      TabOrder = 2
      TabStop = False
    end
  end
  object pltroco: TPanel
    Left = 0
    Top = 505
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 5
    Caption = 'Falta R$'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
    object edfaltatroco: TDBEdit
      Left = 302
      Top = 5
      Width = 185
      Height = 25
      Align = alRight
      DataField = 'troco'
      DataSource = Dtmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object plviabanco: TPanel
    Tag = 6
    Left = 0
    Top = 470
    Width = 492
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = 'Via BANCO R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    object Panel18: TPanel
      Left = 452
      Top = 4
      Width = 36
      Height = 27
      Align = alRight
      BevelOuter = bvLowered
      Caption = 'F8'
      TabOrder = 0
    end
    object edmdaViaBanco: TDBEdit
      Left = 303
      Top = 4
      Width = 149
      Height = 27
      Align = alRight
      DataField = 'mdaViaBanco'
      DataSource = Dtmp
      TabOrder = 1
      OnExit = aosair
      OnKeyPress = FormKeyPress
    end
  end
  object consulta: TUniQuery
    Left = 296
    Top = 637
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
    Left = 28
    Top = 629
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
  object Dlte: TUniDataSource
    DataSet = lte
    Left = 88
    Top = 621
  end
  object dtl: TUniQuery
    SQL.Strings = (
      
        'select dtlchave, ltechave, cedcodigo, mdacodigo, dtlvalor from d' +
        'tl where ltechave=:ltechave')
    Left = 44
    Top = 629
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
  end
  object Ddtl: TUniDataSource
    DataSet = dtl
    Left = 128
    Top = 589
  end
  object tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 276
    Top = 12
    object tmpmdaDinheiro: TFloatField
      Tag = 1
      FieldName = 'mdaDinheiro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaChequeProprio: TFloatField
      Tag = 2
      FieldName = 'mdaChequeProprio'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaChequeTerceiros: TFloatField
      Tag = 3
      FieldName = 'mdaChequeTerceiros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaCartaoDebito: TFloatField
      Tag = 5
      FieldName = 'mdaCartaoDebito'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaCartaoCredito: TFloatField
      Tag = 4
      FieldName = 'mdaCartaoCredito'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaViaBanco: TFloatField
      Tag = 6
      FieldName = 'mdaViaBanco'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaConvenio: TFloatField
      Tag = 7
      FieldName = 'mdaConvenio'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpmdaAFaturar: TFloatField
      Tag = 9
      FieldName = 'mdaAFaturar'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmptroco: TFloatField
      FieldName = 'troco'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dtmp: TUniDataSource
    DataSet = tmp
    Left = 88
    Top = 613
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfichave,'
      '  etdcodigo,'
      '  tfdcodigo,'
      '  flacodigo,'
      '  tficodigo,'
      '  bcocodigo,'
      '  carcodigo,'
      '  rfiemissao,'
      '  rfivencimento,'
      '  rfinumero,'
      '  rfivalor,'
      '  rfihistorico,'
      '  srfcodigo,'
      '  frrcodigo,'
      '  rfimoradia,'
      '  rfipercmesmora,'
      '  rfirepetir,'
      '  rfiprevisao,'
      '  rfivalorparcela,'
      '  moecodigo,'
      '  titcodigo'
      'FROM rfi LIMIT 2')
    Left = 232
    Top = 757
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object rfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object rfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object rfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object rfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object rficarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object rfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object rfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object rfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
    end
    object rfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object rfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
    end
    object rfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
    end
    object rfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
    end
    object rfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
    end
    object rfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object rfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'select mfichave, rfichave, tmfcodigo, moecodigo,  mfivalor,'
      'mfidata, mfihistorico, mfivalorori, mfiparcela from mfi limit 2')
    Left = 240
    Top = 757
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'select mltchave,mfichave, ltechave from mlt limit 2')
    Left = 114
    Top = 749
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'select meschave,etdcodigo from mes where meschave=:meschave')
    Left = 376
    Top = 725
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgusacre,'
      '  cfgctacaixa,'
      '  ctadtmovi,'
      '  cfgdatapadrao,'
      '  cfgusaadc'
      'FROM cfg,'
      '     cta'
      'WHERE cfg.cfgctacaixa = cta.ctacodigo')
    Left = 292
    Top = 741
    object cfgcfgusacre: TIntegerField
      FieldName = 'cfgusacre'
    end
    object cfgcfgctacaixa: TIntegerField
      FieldName = 'cfgctacaixa'
    end
    object cfgctadtmovi: TDateField
      FieldName = 'ctadtmovi'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
    object cfgcfgusaadc: TIntegerField
      FieldName = 'cfgusaadc'
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo,'
      
        'tficodigo, ccoemissao, ccovencimento, cconumero, ccohistorico, c' +
        'covalor,'
      
        'ccochaveorig, ccochavedest, ccoconciliado, moecodigo, ccoextenso' +
        ', etdcodigo,ccodatamov, ccofavorecido, ccohoraregistro,ccodatare' +
        'gistro from cco limit 2')
    Left = 148
    Top = 645
    object ccoccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ccotoccodigo: TIntegerField
      FieldName = 'toccodigo'
    end
    object ccocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object ccoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccotficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object ccoccoemissao: TDateField
      FieldName = 'ccoemissao'
    end
    object ccoccovencimento: TDateField
      FieldName = 'ccovencimento'
    end
    object ccocconumero: TStringField
      FieldName = 'cconumero'
    end
    object ccoccohistorico: TStringField
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      FieldName = 'ccovalor'
    end
    object ccoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccoccoconciliado: TIntegerField
      FieldName = 'ccoconciliado'
    end
    object ccomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ccoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 50
    end
    object ccoccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object ccoccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object ccoccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
  end
  object clt: TUniQuery
    SQL.Strings = (
      
        'select * from clt where ccochave=:ccochave and ltechave=:ltechav' +
        'e')
    Left = 128
    Top = 765
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object cltcltchave: TIntegerField
      FieldName = 'cltchave'
    end
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'select ltcchave, chechave, dtlchave,schcodigo from ltc limit 2')
    Left = 200
    Top = 725
    object ltcltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object ltcchechave: TIntegerField
      FieldName = 'chechave'
    end
    object ltcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltcschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object che: TUniQuery
    SQL.Strings = (
      
        'select che.chechave, cheemissao,chevencimento,chenumero, checont' +
        'a, cheagencia, bcocodigo,chenome,'
      
        'chedocumento, chetelefone, chevalor from che,ltc where che.chech' +
        'ave=ltc.chechave and ltc.dtlchave=')
    Left = 28
    Top = 621
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object checheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 10
    end
    object checheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 15
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object chechedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object chechetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object ffd: TUniQuery
    SQL.Strings = (
      
        'select ffdcodigo, mdacodigo, tfdcodigo from ffd where tfdcodigo=' +
        ':tfdcodigo')
    Left = 332
    Top = 725
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfdcodigo'
        Value = nil
      end>
    object ffdffdcodigo: TIntegerField
      FieldName = 'ffdcodigo'
    end
    object ffdmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object ffdtfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
  end
  object rfm: TUniQuery
    SQL.Strings = (
      'select  rfmchave, rfichave, meschave from rfm limit 1')
    Left = 292
    Top = 709
    object rfmrfmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfmchave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object mda: TUniQuery
    Left = 384
    Top = 661
    object mdamdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object mdamdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object mdatfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.titcodigo,'
      '  tit.etdcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titvalorparcela,'
      '  tit.titparcelas,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.clbcodigo,'
      '  tit.tithistorico,'
      '  tit.flacodigo,'
      '  tit.bcocodigo,'
      '  tit.carcodigo,'
      '  tit.titprevisao,'
      '  tit.moecodigo,'
      '  tit.titmoradia,'
      '  tit.titdiasmulta,'
      '  tit.titvalomulta,'
      '  tit.titpercmesmora,'
      '  tit.titvalodesc,'
      '  tit.titdiasdesc,'
      '  tit.titpercmulta,'
      '  tit.titpercmesmulta'
      'FROM tit'
      'where titcodigo=:titcodigo')
    Left = 164
    Top = 741
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object tittitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object tittitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object tittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object titsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object tittficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object tittithora: TTimeField
      FieldName = 'tithora'
    end
    object tittithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object titclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object tittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object tittitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object titmoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object tittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object titflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object titbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object titcarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object tittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object tittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
  end
  object AcoesLote: TActionList
    Left = 149
    Top = 22
    object ActDinheiro: TAction
      Tag = 1
      Caption = 'Dinheiro'
      ShortCut = 117
      OnExecute = ActDinheiroExecute
    end
    object ActConvenio: TAction
      Tag = 7
      Caption = 'Conv'#234'nio'
      ShortCut = 120
      OnExecute = ActConvenioExecute
    end
    object ActCartaoDebito: TAction
      Tag = 5
      Caption = 'Cart'#227'o D'#201'BITO R$'
      ShortCut = 115
      OnExecute = ActCartaoDebitoExecute
    end
    object ActCartaoCredito: TAction
      Tag = 4
      Caption = 'Cart'#227'o CR'#201'DITO R$'
      ShortCut = 114
      OnExecute = ActCartaoCreditoExecute
    end
    object ActChequeTerceiros: TAction
      Tag = 3
      Caption = 'Cheque TERCEIROS R$'
      ShortCut = 116
      OnExecute = ActChequeTerceirosExecute
    end
    object ActChequeProprios: TAction
      Tag = 2
      Caption = 'Cheque PR'#211'PRIO R$'
      ShortCut = 118
      OnExecute = ActChequePropriosExecute
    end
    object ActViaBanco: TAction
      Tag = 6
      Caption = 'Via BANCO R$'
      ShortCut = 119
      OnExecute = ActViaBancoExecute
    end
  end
  object ACBrExtenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 516
    Top = 653
  end
  object adc: TUniQuery
    SQL.Strings = (
      'select adccodigo from adc')
    Left = 92
    Top = 621
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
  end
  object tfd: TUniQuery
    SQL.Strings = (
      'select tfdcodigo, tfdidentificacao from tfd')
    Left = 324
    Top = 65532
    object tfdtfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object tfdtfdidentificacao: TStringField
      FieldName = 'tfdidentificacao'
      Size = 35
    end
  end
  object IdentificaBaixa: TUniQuery
    Left = 133
    Top = 765
  end
  object ccov: TUniQuery
    Left = 264
    Top = 148
  end
  object cltv: TUniQuery
    Left = 224
    Top = 156
  end
  object rcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrvalor,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  tcrcodigo'
      'FROM rcr limit 0')
    Left = 224
    Top = 504
    object rcrrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object rcretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object rcrcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rcrrcrvalor: TFloatField
      FieldName = 'rcrvalor'
    end
    object rcrrcrdata: TDateField
      FieldName = 'rcrdata'
    end
    object rcrrcrhistorico: TStringField
      FieldName = 'rcrhistorico'
      Size = 200
    end
    object rcrtcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
    end
  end
end
