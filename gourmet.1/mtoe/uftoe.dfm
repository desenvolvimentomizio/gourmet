inherited ftoe: Tftoe
  ActiveControl = toecfopsaida
  Caption = 'Opera'#231#227'o de Estoque'
  ClientHeight = 605
  ClientWidth = 635
  ExplicitWidth = 651
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 576
    Width = 635
    ExplicitTop = 549
    ExplicitWidth = 990
    inherited bconfirma: TBitBtn
      Left = 481
      ExplicitLeft = 836
    end
    inherited bcancela: TBitBtn
      Left = 556
      ExplicitLeft = 911
    end
    inherited bfechar: TBitBtn
      Left = 416
      ExplicitLeft = 771
    end
  end
  inherited paginas: TPageControl
    Width = 635
    Height = 576
    ExplicitWidth = 990
    ExplicitHeight = 549
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 982
      ExplicitHeight = 521
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = toecodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = toeidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Opera'#231#227'o'
        FocusControl = ttocodigo
      end
      object Label9: TLabel
        Left = 8
        Top = 33
        Width = 138
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CFOP Entrada para o Cliente'
        FocusControl = toecfopsaida
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Movimento '
        FocusControl = ttecodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 120
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emitente do Documento  '
        FocusControl = ttmcodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Movimento do Produto'
        FocusControl = tmecodigo
      end
      object Label10: TLabel
        Left = 8
        Top = 197
        Width = 206
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria(CST/CSOSN)'
        FocusControl = cstcodigo
      end
      object Label11: TLabel
        Left = 8
        Top = 224
        Width = 166
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (IPI)'
        FocusControl = csicodigo
      end
      object Label12: TLabel
        Left = 8
        Top = 251
        Width = 168
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (PIS)'
        FocusControl = cspcodigo
      end
      object Label13: TLabel
        Left = 8
        Top = 305
        Width = 190
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (COFINS)'
        FocusControl = csfcodigo
      end
      object Label14: TLabel
        Left = 8
        Top = 278
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota para o PIS'
        FocusControl = cfgpercentualpis
      end
      object Label15: TLabel
        Left = 8
        Top = 332
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota para o COFINS'
        FocusControl = cfgpercentualcofins
      end
      object toecodigo: TDBEdit
        Left = 227
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object toeidentificacao: TDBEdit
        Left = 227
        Top = 57
        Width = 385
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toeidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ttocodigo: TDBEdit
        Left = 227
        Top = 84
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttocodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object toecfopsaida: TDBEdit
        Left = 227
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecfopsaida'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = toecfopsaidaExit
      end
      object ttecodigo: TDBEdit
        Left = 227
        Top = 111
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttecodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ttmcodigo: TDBEdit
        Left = 227
        Top = 138
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttmcodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = ttmcodigoExit
      end
      object tmecodigo: TDBEdit
        Left = 227
        Top = 165
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tmecodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object GroupBox1: TGroupBox
        Left = 227
        Top = 356
        Width = 385
        Height = 159
        CustomHint = BalloonHint
        Caption = ' Informe o Tipo de Produto para esta Opera'#231#227'o '
        TabOrder = 13
        object ComboBox1: TComboBox
          Left = 19
          Top = 20
          Width = 201
          Height = 21
          CustomHint = BalloonHint
          TabOrder = 0
        end
        object BAdicionar: TBitBtn
          Left = 226
          Top = 18
          Width = 68
          Height = 23
          CustomHint = BalloonHint
          Caption = 'Adicionar'
          TabOrder = 1
          OnClick = BAdicionarClick
        end
        object BRemover: TBitBtn
          Left = 300
          Top = 18
          Width = 68
          Height = 23
          CustomHint = BalloonHint
          Caption = 'Remover'
          TabOrder = 2
          OnClick = BRemoverClick
        end
        object DBotp: TDBGrid
          Left = 19
          Top = 47
          Width = 349
          Height = 98
          CustomHint = BalloonHint
          DataSource = Dotp
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'tpoidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfopcfopsaida'
              Title.Caption = 'CFOP'
              Width = 55
              Visible = True
            end>
        end
      end
      object toeativo: TDBCheckBox
        Left = 227
        Top = 521
        Width = 97
        Height = 17
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o Ativa              '
        DataField = 'toeativo'
        DataSource = DSRegistro
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cstcodigo: TDBEdit
        Left = 227
        Top = 194
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cstcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object csicodigo: TDBEdit
        Left = 227
        Top = 221
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csicodigo'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cspcodigo: TDBEdit
        Left = 227
        Top = 248
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cspcodigo'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object csfcodigo: TDBEdit
        Left = 227
        Top = 302
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csfcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object cfgpercentualpis: TDBEdit
        Left = 227
        Top = 275
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgpercentualpis'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cfgpercentualcofins: TDBEdit
        Left = 227
        Top = 329
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgpercentualcofins'
        DataSource = DSRegistro
        TabOrder = 12
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.11.001-01'
  end
  inherited DSRegistro: TUniDataSource
    Left = 504
    Top = 4
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgmsai.cfgusacstnoproduto,cfgusactb, crtcodigo from cfg,' +
        ' cfgmsai, cfgmcfg where'
      
        'cfg.cfgcodigo=cfgmsai.cfgcodigo and cfg.cfgcodigo=cfgmcfg.cfgcod' +
        'igo'
      ''
      '  ')
    Left = 572
    Top = 20
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgusacstnoproduto: TIntegerField
      FieldName = 'cfgusacstnoproduto'
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
  end
  inherited consulta: TUniQuery
    Left = 628
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select toecodigo,toeidentificacao,toedescricao, '
      'toeorigem,ttmcodigo,toeativo,ttecodigo,toecfopsaida,'
      
        'ttocodigo,tmecodigo, otbcodigo, toeentrada,cstcodigo,csicodigo,c' +
        'spcodigo,csfcodigo,cfgpercentualpis,cfgpercentualcofins from toe'
      'where toecodigo=:toecodigo')
    Left = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object registrotoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'toecodigo'
    end
    object registrotoeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
    object registrotoecfopsaida: TStringField
      DisplayLabel = 'CFOP Sa'#237'da'
      FieldName = 'toecfopsaida'
      Required = True
      Size = 5
    end
    object registrocfoidentificacao_sai: TStringField
      FieldKind = fkLookup
      FieldName = 'cfoidentificacao_sai'
      LookupDataSet = cfo
      LookupKeyFields = 'cfocfop'
      LookupResultField = 'cfoidentificacao'
      KeyFields = 'toecfopsaida'
      Size = 35
      Lookup = True
    end
    object registrottocodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'ttocodigo'
      Required = True
    end
    object registrottoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttoidentificacao'
      LookupDataSet = tto
      LookupKeyFields = 'ttocodigo'
      LookupResultField = 'ttoidentificacao'
      KeyFields = 'ttocodigo'
      Size = 50
      Lookup = True
    end
    object registrotoedescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'toedescricao'
      Size = 1000
    end
    object registrotoeorigem: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'toeorigem'
      Size = 1
    end
    object registrottecodigo: TIntegerField
      DisplayLabel = ' Tipo de Movimento '
      FieldName = 'ttecodigo'
      Required = True
    end
    object registrotteidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tteidentificacao'
      LookupDataSet = tte
      LookupKeyFields = 'ttecodigo'
      LookupResultField = 'tteidentificacao'
      KeyFields = 'ttecodigo'
      Size = 30
      Lookup = True
    end
    object registrotmecodigo: TIntegerField
      DisplayLabel = 'Movimento do Produto'
      FieldName = 'tmecodigo'
      Required = True
    end
    object registrotmeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tmeidentificacao'
      LookupDataSet = tme
      LookupKeyFields = 'tmecodigo'
      LookupResultField = 'tmeidentificacao'
      KeyFields = 'tmecodigo'
      Size = 30
      Lookup = True
    end
    object registrottmcodigo: TIntegerField
      DisplayLabel = 'Emitente do Documento  '
      FieldName = 'ttmcodigo'
      Required = True
    end
    object registrottmidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttmidentificacao'
      LookupDataSet = ttm
      LookupKeyFields = 'ttmcodigo'
      LookupResultField = 'ttmidentificacao'
      KeyFields = 'ttmcodigo'
      Size = 30
      Lookup = True
    end
    object registrotoeativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'toeativo'
      Size = 1
    end
    object registrootbcodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o Tribut'#225'ria'
      FieldName = 'otbcodigo'
    end
    object registrootbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'otbidentificacao'
      LookupDataSet = otb
      LookupKeyFields = 'otbcodigo'
      LookupResultField = 'otbidentificacao'
      KeyFields = 'otbcodigo'
      Size = 50
      Lookup = True
    end
    object registrotoeentrada: TIntegerField
      FieldName = 'toeentrada'
    end
    object registrotoetoeentrada: TStringField
      FieldKind = fkLookup
      FieldName = 'toetoeentrada'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toeentrada'
      Size = 250
      Lookup = True
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria(CST)'
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
    object registrocsicodigo: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (IPI)'
      FieldName = 'csicodigo'
      Required = True
      Size = 3
    end
    object registrocsiidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'csiidentificacao'
      LookupDataSet = csi
      LookupKeyFields = 'csicodigo'
      LookupResultField = 'csiidentificacao'
      KeyFields = 'csicodigo'
      Size = 50
      Lookup = True
    end
    object registrocspcodigo: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (PIS)'
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object registrocspidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cspidentificacao'
      LookupDataSet = csp
      LookupKeyFields = 'cspcodigo'
      LookupResultField = 'cspidentificacao'
      KeyFields = 'cspcodigo'
      Size = 50
      Lookup = True
    end
    object registrocsfcodigo: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria (COFINS)'
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object registrocsfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'csfidentificacao'
      LookupDataSet = csf
      LookupKeyFields = 'csfcodigo'
      LookupResultField = 'csfidentificacao'
      KeyFields = 'csfcodigo'
      Size = 50
      Lookup = True
    end
    object registrocfgpercentualpis: TFloatField
      DisplayLabel = 'Aliquota para o PIS'
      FieldName = 'cfgpercentualpis'
      Required = True
    end
    object registrocfgpercentualcofins: TFloatField
      DisplayLabel = 'Aliquota para o COFINS'
      FieldName = 'cfgpercentualcofins'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 372
    Top = 60
  end
  inherited dtb: TUniQuery
    Left = 336
    Top = 60
  end
  inherited coa: TUniQuery
    Left = 300
    Top = 60
  end
  inherited pfr: TUniQuery
    Left = 368
    Top = 65516
  end
  inherited psf: TUniQuery
    Left = 408
    Top = 65516
  end
  inherited dcl: TUniQuery
    Left = 444
    Top = 65515
  end
  inherited cau: TUniQuery
    Left = 336
    Top = 18
  end
  inherited err: TUniQuery
    Left = 304
    Top = 18
  end
  inherited BalloonHint: TBalloonHint
    Left = 900
    Top = 96
  end
  inherited acoesfrm: TActionList
    Top = 36
  end
  inherited cpg: TUniQuery
    Left = 28
    Top = 496
  end
  inherited cpc: TUniQuery
    Left = 109
    Top = 545
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 708
  end
  inherited lou: TUniQuery
    Left = 696
    Top = 360
  end
  object cfo: TUniQuery
    SQL.Strings = (
      'select cfocfop, cfoidentificacao from cfo')
    Left = 612
    Top = 84
    object cfocfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object cfocfoidentificacao: TStringField
      FieldName = 'cfoidentificacao'
      Size = 200
    end
  end
  object tto: TUniQuery
    SQL.Strings = (
      'select ttocodigo, ttoidentificacao from tto')
    Left = 612
    Top = 128
    object ttottocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ttocodigo'
    end
    object ttottoidentificacao: TStringField
      FieldName = 'ttoidentificacao'
      Size = 50
    end
  end
  object tte: TUniQuery
    SQL.Strings = (
      'select ttecodigo, tteidentificacao from tte')
    Left = 612
    Top = 180
    object ttettecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object ttetteidentificacao: TStringField
      FieldName = 'tteidentificacao'
      Size = 30
    end
  end
  object ttm: TUniQuery
    SQL.Strings = (
      'select ttmcodigo, ttmidentificacao from ttm')
    Left = 612
    Top = 272
    object ttmttmcodigo: TIntegerField
      FieldName = 'ttmcodigo'
    end
    object ttmttmidentificacao: TStringField
      FieldName = 'ttmidentificacao'
      Size = 30
    end
  end
  object tme: TUniQuery
    SQL.Strings = (
      'select tmecodigo, tmeidentificacao from tme')
    Left = 612
    Top = 228
    object tmetmecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tmecodigo'
    end
    object tmetmeidentificacao: TStringField
      FieldName = 'tmeidentificacao'
      Size = 30
    end
  end
  object DataSource1: TUniDataSource
    DataSet = tpo
    Left = 768
    Top = 568
  end
  object tpo: TUniQuery
    SQL.Strings = (
      'select * from tpo')
    Left = 428
    Top = 672
    object tpotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object tpotpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      Size = 50
    end
  end
  object otp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  o.otpchave,'
      '  o.toecodigo,'
      '  o.tpocodigo,'
      '  o.cfocfop'
      'FROM otp o'
      'WHERE o.toecodigo = :toecodigo')
    Left = 532
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object otpotpchave: TIntegerField
      FieldName = 'otpchave'
    end
    object otptoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object otptpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object otptpoidentificacao: TStringField
      DisplayLabel = 'Tipo de produto'
      FieldKind = fkLookup
      FieldName = 'tpoidentificacao'
      LookupDataSet = tpo
      LookupKeyFields = 'tpocodigo'
      LookupResultField = 'tpoidentificacao'
      KeyFields = 'tpocodigo'
      Size = 50
      Lookup = True
    end
    object otpcfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object otpcfopcfopsaida: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopcfopsaida'
      LookupDataSet = cfo
      LookupKeyFields = 'cfocfop'
      LookupResultField = 'cfocfop'
      KeyFields = 'cfocfop'
      Size = 10
      Lookup = True
    end
  end
  object otb: TUniQuery
    SQL.Strings = (
      'select otbcodigo, otbidentificacao from otb')
    Left = 96
    Top = 464
    object otbotbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'otbcodigo'
    end
    object otbotbidentificacao: TStringField
      FieldName = 'otbidentificacao'
      Size = 50
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao from toe')
    Left = 404
    Top = 232
    object toetoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
  end
  object Dotp: TDataSource
    DataSet = otp
    Left = 224
    Top = 592
  end
  object txctoe: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  txc.txcchave,'
      '  cto.ctodescricao,'
      '  txc.toecodigo'
      'FROM txc'
      '  INNER JOIN cto'
      '    ON txc.ctocodigo = cto.ctocodigo'
      'where txc.toecodigo=:toecodigo')
    Left = 316
    Top = 566
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object txctoectodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ctodescricao'
      Size = 50
    end
  end
  object Dtxc: TDataSource
    DataSet = txctoe
    Left = 364
    Top = 566
  end
  object cto: TUniQuery
    SQL.Strings = (
      'SELECT ctocodigo, ctodescricao FROM cto')
    Left = 596
    Top = 497
    object ctoctocodigo: TIntegerField
      FieldName = 'ctocodigo'
    end
    object ctoctodescricao: TStringField
      FieldName = 'ctodescricao'
      Size = 50
    end
  end
  object txc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  txcchave,'
      '  toecodigo,'
      '  ctocodigo'
      'FROM txc limit 0')
    Left = 452
    Top = 582
    object txctxcchave: TIntegerField
      FieldName = 'txcchave'
    end
    object txctoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object txcctocodigo: TIntegerField
      FieldName = 'ctocodigo'
    end
  end
  object cst: TUniQuery
    SQL.Strings = (
      'select '
      '  cstcodigo,'
      '  cstidentificacao'
      'from cst')
    Left = 836
    Top = 192
    object cstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object cstcstidentificacao: TStringField
      FieldName = 'cstidentificacao'
      Size = 500
    end
  end
  object csf: TUniQuery
    SQL.Strings = (
      'select csfcodigo, csfidentificacao from csf')
    Left = 876
    Top = 192
    object csfcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object csfcsfidentificacao: TStringField
      FieldName = 'csfidentificacao'
      Size = 50
    end
  end
  object csp: TUniQuery
    SQL.Strings = (
      'select cspcodigo, cspidentificacao from csp')
    Left = 916
    Top = 192
    object cspcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object cspcspidentificacao: TStringField
      FieldName = 'cspidentificacao'
      Size = 50
    end
  end
  object csi: TUniQuery
    SQL.Strings = (
      'select csicodigo, csiidentificacao from csi')
    Left = 452
    Top = 224
    object csicsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object csicsiidentificacao: TStringField
      FieldName = 'csiidentificacao'
      Size = 50
    end
  end
end
