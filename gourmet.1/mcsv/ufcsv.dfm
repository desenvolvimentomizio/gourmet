inherited fcsv: Tfcsv
  ActiveControl = etdcodigo
  Caption = 'Conta de Consumo'
  ClientHeight = 464
  ClientWidth = 704
  ExplicitWidth = 720
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 435
    Width = 704
    ExplicitTop = 435
    ExplicitWidth = 704
    inherited bconfirma: TBitBtn
      Left = 550
      ExplicitLeft = 544
      ExplicitTop = 2
    end
    inherited bcancela: TBitBtn
      Left = 625
      ExplicitLeft = 625
    end
    inherited bfechar: TBitBtn
      Left = 485
      ExplicitLeft = 485
    end
  end
  inherited paginas: TPageControl
    Width = 704
    Height = 435
    ExplicitWidth = 704
    ExplicitHeight = 435
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 696
      ExplicitHeight = 407
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = csvchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do CST'
        FocusControl = cstcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 168
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Emiss'#227'o'
        FocusControl = csvemissao
      end
      object Label6: TLabel
        Left = 8
        Top = 195
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Registro'
        FocusControl = csvregistro
      end
      object Label7: TLabel
        Left = 8
        Top = 249
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#233'rie do Documento'
        FocusControl = csvserie
      end
      object Label8: TLabel
        Left = 245
        Top = 249
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sub-s'#233'rie do Documento'
      end
      object Label9: TLabel
        Left = 445
        Top = 249
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Documento'
        FocusControl = csvnumero
      end
      object Label10: TLabel
        Left = 8
        Top = 276
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = csvvalor
      end
      object Label11: TLabel
        Left = 301
        Top = 273
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto R$'
        FocusControl = csvdesconto
      end
      object Label12: TLabel
        Left = 514
        Top = 273
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total R$'
        FocusControl = csvgeral
      end
      object Label13: TLabel
        Left = 8
        Top = 303
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Base ICM R$'
        FocusControl = csvbicm
      end
      object Label14: TLabel
        Left = 274
        Top = 300
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual do ICM'
        FocusControl = csvaliqicm
      end
      object Label15: TLabel
        Left = 493
        Top = 303
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor ICM R$'
        FocusControl = csvicm
      end
      object Label16: TLabel
        Left = 8
        Top = 330
        Width = 122
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Base ICM Substitui'#231#227'o R$'
        FocusControl = csvbicms
      end
      object Label17: TLabel
        Left = 414
        Top = 330
        Width = 140
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do ICM Subistitui'#231#227'o R$'
        FocusControl = csvicms
      end
      object Label18: TLabel
        Left = 8
        Top = 357
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do PIS R$'
        FocusControl = csvpis
      end
      object Label19: TLabel
        Left = 458
        Top = 357
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do COFINS R$'
        FocusControl = csvcofins
      end
      object Label20: TLabel
        Left = 8
        Top = 87
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Classe de Consumo'
      end
      object Label22: TLabel
        Left = 8
        Top = 60
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de consumo'
        FocusControl = tcscodigo
      end
      object Label21: TLabel
        Left = 8
        Top = 222
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Vencimento'
        FocusControl = csvvencimento
      end
      object csvchave: TDBEdit
        Left = 136
        Top = 3
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cstcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cstcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object toecodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = toecodigoEnter
      end
      object csvemissao: TDBEdit
        Left = 136
        Top = 165
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvemissao'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object csvregistro: TDBEdit
        Left = 136
        Top = 192
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvregistro'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object csvserie: TDBEdit
        Left = 136
        Top = 246
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvserie'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object csvnumero: TDBEdit
        Left = 560
        Top = 246
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvnumero'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object csvvalor: TDBEdit
        Left = 136
        Top = 273
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvvalor'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object csvdesconto: TDBEdit
        Left = 368
        Top = 273
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvdesconto'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object csvgeral: TDBEdit
        Left = 560
        Top = 273
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvgeral'
        DataSource = DSRegistro
        TabOrder = 14
        OnEnter = csvgeralEnter
      end
      object csvbicm: TDBEdit
        Left = 136
        Top = 300
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvbicm'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object csvaliqicm: TDBEdit
        Left = 368
        Top = 300
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvaliqicm'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object csvicm: TDBEdit
        Left = 560
        Top = 300
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvicm'
        DataSource = DSRegistro
        TabOrder = 17
      end
      object csvbicms: TDBEdit
        Left = 136
        Top = 327
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvbicms'
        DataSource = DSRegistro
        TabOrder = 18
      end
      object csvicms: TDBEdit
        Left = 560
        Top = 327
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvicms'
        DataSource = DSRegistro
        TabOrder = 19
      end
      object csvpis: TDBEdit
        Left = 136
        Top = 354
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvpis'
        DataSource = DSRegistro
        TabOrder = 20
      end
      object csvcofins: TDBEdit
        Left = 560
        Top = 354
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvcofins'
        DataSource = DSRegistro
        TabOrder = 21
      end
      object csvsubserie: TDBEdit
        Left = 368
        Top = 246
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvsubserie'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object tcscodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcscodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = tcscodigoExit
      end
      object clccodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clccodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = clccodigoEnter
        OnExit = clccodigoExit
      end
      object csvvencimento: TDBEdit
        Left = 136
        Top = 219
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csvvencimento'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 392
    Top = 56
  end
  inherited cfg: TUniQuery
    Left = 632
    Top = 440
  end
  inherited consulta: TUniQuery
    Left = 636
    Top = 32
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select csvchave, etdcodigo, cstcodigo, cfocfop, csvemissao, csvr' +
        'egistro,'
      
        'csvserie, csvsubserie, csvnumero, csvvalor, csvdesconto, csvgera' +
        'l, csvbicm, toecodigo, tdfcodigo, sdecodigo,'
      
        'csvicm, csvbicms, csvicms, csvpis, csvcofins, csvaliqicm, clccod' +
        'igo, tcscodigo, csvvencimento, rfichave '
      'from csv where csvchave=:csvchave')
    Left = 472
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'csvchave'
        Value = nil
      end>
    object registrocsvchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'csvchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo do CST'
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object registrocstidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cstidentificacao'
      LookupDataSet = cst
      LookupKeyFields = 'cstcodigo'
      LookupResultField = 'cstidentificacao'
      KeyFields = 'cstcodigo'
      Size = 50
      Lookup = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registrocsvemissao: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'csvemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object registrotoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 100
      Lookup = True
    end
    object registrocsvregistro: TDateField
      FieldName = 'csvregistro'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrocsvserie: TStringField
      DisplayLabel = 'S'#233'rie do Documento'
      FieldName = 'csvserie'
      Size = 4
    end
    object registrocsvsubserie: TStringField
      DisplayLabel = 'Sub-s'#233'rie do Documento'
      FieldName = 'csvsubserie'
      Size = 3
    end
    object registrocsvnumero: TStringField
      DisplayLabel = 'N'#250'mero do Documento'
      FieldName = 'csvnumero'
      Required = True
      Size = 10
    end
    object registrocsvvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'csvvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'csvdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvgeral: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'csvgeral'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvbicm: TFloatField
      DisplayLabel = 'Base do ICM'
      FieldName = 'csvbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotcscodigo: TStringField
      DisplayLabel = 'Tipo de conta'
      FieldName = 'tcscodigo'
      Required = True
      Size = 1
    end
    object registrotcsidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tcsidentificacao'
      LookupDataSet = tcs
      LookupKeyFields = 'tcscodigo'
      LookupResultField = 'tcsidentificacao'
      KeyFields = 'tcscodigo'
      Size = 30
      Lookup = True
    end
    object registrocsvicm: TFloatField
      DisplayLabel = 'Valor do ICM'
      FieldName = 'csvicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvbicms: TFloatField
      DisplayLabel = 'Base do ICM Substitui'#231#227'o'
      FieldName = 'csvbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvicms: TFloatField
      DisplayLabel = 'Valor do ICM Subistitui'#231#227'o'
      FieldName = 'csvicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvpis: TFloatField
      DisplayLabel = 'Valor do PIS'
      FieldName = 'csvpis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvcofins: TFloatField
      DisplayLabel = 'Valor do COFINS'
      FieldName = 'csvcofins'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocsvaliqicm: TFloatField
      DisplayLabel = 'Percentual do ICM'
      FieldName = 'csvaliqicm'
      Required = True
    end
    object registroclccodigo: TStringField
      DisplayLabel = 'Classe de Consumo'
      FieldName = 'clccodigo'
      Required = True
      Size = 2
    end
    object registroclcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clcidentificacao'
      LookupDataSet = clc
      LookupKeyFields = 'clccodigo'
      LookupResultField = 'clcidentificacao'
      KeyFields = 'clccodigo'
      Size = 80
      Lookup = True
    end
    object registrotdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registrocsvvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'csvvencimento'
      Required = True
    end
    object registrorfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  inherited dcp: TUniQuery
    Left = 824
    Top = 128
  end
  inherited dtb: TUniQuery
    Left = 792
    Top = 128
  end
  inherited coa: TUniQuery
    Left = 756
    Top = 128
  end
  inherited pfr: TUniQuery
    Left = 676
    Top = 440
  end
  inherited psf: TUniQuery
    Left = 720
    Top = 440
  end
  inherited cau: TUniQuery
    Left = 544
    Top = 112
  end
  inherited err: TUniQuery
    Left = 544
    Top = 44
  end
  inherited BalloonHint: TBalloonHint
    Left = 452
    Top = 24
  end
  inherited cpg: TUniQuery
    Left = 284
    Top = 24
  end
  inherited cpc: TUniQuery
    Left = 285
    Top = 73
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 620
    Top = 60
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao from toe')
    Left = 792
    Top = 440
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 724
    Top = 40
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
  end
  object cst: TUniQuery
    SQL.Strings = (
      'select cstcodigo, cstidentificacao from cst')
    Left = 800
    Top = 40
    object cstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object cstcstidentificacao: TStringField
      FieldName = 'cstidentificacao'
      Required = True
      Size = 100
    end
  end
  object tcs: TUniQuery
    SQL.Strings = (
      'select tcscodigo, tcsidentificacao from tcs')
    Left = 628
    Top = 160
    object tcstcscodigo: TStringField
      FieldName = 'tcscodigo'
      Size = 1
    end
    object tcstcsidentificacao: TStringField
      FieldName = 'tcsidentificacao'
      Size = 30
    end
  end
  object clc: TUniQuery
    SQL.Strings = (
      'select clccodigo, clcidentificacao, tcscodigo from clc')
    Left = 548
    Top = 168
    object clcclccodigo: TStringField
      FieldName = 'clccodigo'
      Size = 2
    end
    object clcclcidentificacao: TStringField
      FieldName = 'clcidentificacao'
      Size = 80
    end
    object clctcscodigo: TStringField
      FieldName = 'tcscodigo'
      Size = 1
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfichave,'
      '  titcodigo,'
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
      '  rfidatamulta,'
      '  rfivalomulta,'
      '  rfivalodesc,'
      '  rfidatadesc,'
      '  rfipercmulta,'
      '  rfidtultbaixa,'
      '  rfidtprevisao'
      'FROM rfi where titcodigo=:titcodigo')
    Left = 404
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
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
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
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
    object rfirfidatamulta: TDateField
      FieldName = 'rfidatamulta'
    end
    object rfirfivalomulta: TFloatField
      FieldName = 'rfivalomulta'
      Required = True
    end
    object rfirfivalodesc: TFloatField
      FieldName = 'rfivalodesc'
      Required = True
    end
    object rfirfidatadesc: TDateField
      FieldName = 'rfidatadesc'
    end
    object rfirfipercmulta: TFloatField
      FieldName = 'rfipercmulta'
      Required = True
    end
    object rfirfidtultbaixa: TDateField
      FieldName = 'rfidtultbaixa'
    end
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  titcodigo,'
      '  etdcodigo,'
      '  tfdcodigo,'
      '  flacodigo,'
      '  tficodigo,'
      '  bcocodigo,'
      '  carcodigo,'
      '  titemissao,'
      '  tithora,'
      '  clbcodigo,'
      '  titparcelas,'
      '  titvctoinicial,'
      '  titnumero,'
      '  titvalorparcela,'
      '  titvalor,'
      '  tithistorico,'
      '  srfcodigo,'
      '  titmoradia,'
      '  titpercmesmora,'
      '  titrepetir,'
      '  titprevisao,'
      '  moecodigo,'
      '  titdiasdesc,'
      '  titvalodesc,'
      '  titdiasmulta,'
      '  titpercmulta,'
      '  titvalomulta'
      'FROM tit where titcodigo=:titcodigo')
    Left = 452
    Top = 112
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
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfichave,'
      '  rfichave,'
      '  tmfcodigo,'
      '  moecodigo,'
      '  mfivalor,'
      '  mfidata,'
      '  mfihistorico,'
      '  mfivalorori,'
      '  mfiparcela'
      'FROM mfi where rfichave=:rfichave')
    Left = 492
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
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
end
