inherited fitmsrv: Tfitmsrv
  ActiveControl = procodigo
  Caption = 'Item de Movimento de Estoque'
  ClientHeight = 620
  ClientWidth = 856
  ExplicitWidth = 872
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  object registroLabel: TLabel [0]
    Left = 227
    Top = 258
    Width = 109
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Percentual ICMS Subst'
  end
  object registroLabel2: TLabel [1]
    Left = 240
    Top = 232
    Width = 70
    Height = 13
    CustomHint = BalloonHint
    Caption = 'C'#243'digo do ICM'
  end
  object registroLabel3: TLabel [2]
    Left = 432
    Top = 232
    Width = 83
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Valor do ICMS R$'
  end
  object registroLabel4: TLabel [3]
    Left = 402
    Top = 260
    Width = 113
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Valor do ICMS Subst R$'
  end
  object registroLabel5: TLabel [4]
    Left = 227
    Top = 258
    Width = 109
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Percentual ICMS Subst'
  end
  object registroLabel6: TLabel [5]
    Left = 240
    Top = 232
    Width = 70
    Height = 13
    CustomHint = BalloonHint
    Caption = 'C'#243'digo do ICM'
  end
  object registroLabel7: TLabel [6]
    Left = 432
    Top = 232
    Width = 83
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Valor do ICMS R$'
  end
  object registroLabel8: TLabel [7]
    Left = 402
    Top = 260
    Width = 113
    Height = 13
    CustomHint = BalloonHint
    Caption = 'Valor do ICMS Subst R$'
  end
  inherited pbotoes: TPanel
    Top = 591
    Width = 856
    ExplicitTop = 591
    ExplicitWidth = 856
    inherited bconfirma: TBitBtn
      Left = 702
      ExplicitLeft = 702
    end
    inherited bcancela: TBitBtn
      Left = 777
      ExplicitLeft = 777
    end
    inherited bfechar: TBitBtn
      Left = 637
      ExplicitLeft = 637
    end
  end
  inherited paginas: TPageControl
    Width = 856
    Height = 591
    ExplicitWidth = 856
    ExplicitHeight = 591
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 848
      ExplicitHeight = 563
      object Label15: TLabel
        Left = 7
        Top = 6
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Item da Nota'
        FocusControl = itmitem
      end
      object Label2: TLabel
        Left = 7
        Top = 33
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label18: TLabel
        Left = 7
        Top = 143
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do CFOP'
        FocusControl = cfocfop
      end
      object Label17: TLabel
        Left = 7
        Top = 170
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do CST'
        FocusControl = cstcodigo
      end
      object Label1: TLabel
        Left = 7
        Top = 196
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade de Venda'
        FocusControl = unicodigo
      end
      object Label5: TLabel
        Left = 7
        Top = 223
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = itmquantidade
      end
      object Label16: TLabel
        Left = 484
        Top = 223
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Embalagem'
        FocusControl = puncodigo
        Visible = False
      end
      object Label6: TLabel
        Left = 7
        Top = 251
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do Item R$'
        FocusControl = itmvalor
      end
      object Label13: TLabel
        Left = 265
        Top = 278
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto R$'
        FocusControl = itmdesconto
      end
      object Label14: TLabel
        Left = 7
        Top = 278
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total do Item R$'
        FocusControl = itmtotal
      end
      object Label23: TLabel
        Left = 448
        Top = 278
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total Geral R$'
        FocusControl = itmtotalgeral
      end
      object Label24: TLabel
        Left = 8
        Top = 87
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o complementar'
        FocusControl = procodigo
      end
      object itmitem: TDBEdit
        Left = 136
        Top = 3
        Width = 59
        Height = 21
        ParentCustomHint = False
        TabStop = False
        DataField = 'itmitem'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 0
      end
      object toecodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = procodigoExit
      end
      object cfocfop: TDBEdit
        Left = 136
        Top = 140
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfocfop'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cstcodigo: TDBEdit
        Left = 136
        Top = 167
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cstcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 5
      end
      object puncodigo: TDBEdit
        Left = 136
        Top = 194
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 6
        OnEnter = puncodigoEnter
        OnExit = puncodigoExit
      end
      object itmquantidade: TDBEdit
        Left = 136
        Top = 221
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmquantidade'
        DataSource = DSRegistro
        TabOrder = 7
        OnChange = itmquantidadeChange
        OnExit = itmquantidadeExit
      end
      object unicodigo: TDBEdit
        Left = 551
        Top = 221
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unicodigo'
        DataSource = DSRegistro
        TabOrder = 8
        Visible = False
      end
      object itmvalor: TDBEdit
        Left = 136
        Top = 248
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmvalor'
        DataSource = DSRegistro
        TabOrder = 9
        OnChange = itmvalorChange
        OnEnter = itmvalorEnter
      end
      object itmdesconto: TDBEdit
        Left = 333
        Top = 275
        Width = 88
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmdesconto'
        DataSource = DSRegistro
        TabOrder = 10
        OnChange = itmdescontoChange
        OnExit = itmdescontoExit
      end
      object itmtotal: TDBEdit
        Left = 136
        Top = 275
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmtotal'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object PnlSaldoDisp: TPanel
        Left = 249
        Top = 218
        Width = 180
        Height = 27
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 3
        Caption = 'Saldo Dispon'#237'vel'
        TabOrder = 12
        object plsaldoproduto: TPanel
          Left = 88
          Top = 3
          Width = 89
          Height = 21
          CustomHint = BalloonHint
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 2
          Caption = '0,0'
          Color = 4227327
          ParentBackground = False
          TabOrder = 0
        end
      end
      object GBTributacao: TGroupBox
        Left = 8
        Top = 380
        Width = 610
        Height = 157
        CustomHint = BalloonHint
        Caption = ' Tributa'#231#227'o '
        TabOrder = 14
        object Label21: TLabel
          Left = 12
          Top = 21
          Width = 110
          Height = 13
          CustomHint = BalloonHint
          Caption = '% Redu'#231'ao Base ICMS'
        end
        object Label20: TLabel
          Left = 12
          Top = 48
          Width = 116
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Base do ICMS Subst. R$'
        end
        object Label10: TLabel
          Left = 12
          Top = 75
          Width = 83
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Percentual de IPI'
        end
        object Label12: TLabel
          Left = 464
          Top = 75
          Width = 72
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Valor do IPI R$'
        end
        object Label11: TLabel
          Left = 330
          Top = 48
          Width = 69
          Height = 13
          CustomHint = BalloonHint
          Caption = '% ICMS Subst'
        end
        object Label7: TLabel
          Left = 271
          Top = 21
          Width = 82
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Al'#237'quota do ICMS'
        end
        object Label8: TLabel
          Left = 495
          Top = 21
          Width = 41
          Height = 13
          CustomHint = BalloonHint
          Caption = 'ICMS R$'
        end
        object Label9: TLabel
          Left = 465
          Top = 48
          Width = 71
          Height = 13
          CustomHint = BalloonHint
          Caption = 'ICMS Subst R$'
        end
        object Label25: TLabel
          Left = 176
          Top = 21
          Width = 26
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Base '
        end
        object Label26: TLabel
          Left = 12
          Top = 102
          Width = 67
          Height = 13
          CustomHint = BalloonHint
          Caption = 'C'#243'digo do PIS'
        end
        object Label27: TLabel
          Left = 12
          Top = 129
          Width = 89
          Height = 13
          CustomHint = BalloonHint
          Caption = 'C'#243'digo do COFINS'
        end
        object Label28: TLabel
          Left = 423
          Top = 102
          Width = 11
          Height = 13
          CustomHint = BalloonHint
          Caption = '%'
        end
        object Label29: TLabel
          Left = 423
          Top = 129
          Width = 11
          Height = 13
          CustomHint = BalloonHint
          Caption = '%'
        end
        object Label30: TLabel
          Left = 504
          Top = 102
          Width = 32
          Height = 13
          CustomHint = BalloonHint
          Caption = 'PIS R$'
        end
        object Label31: TLabel
          Left = 482
          Top = 129
          Width = 54
          Height = 13
          CustomHint = BalloonHint
          Caption = 'COFINS R$'
        end
        object Label32: TLabel
          Left = 315
          Top = 102
          Width = 23
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Base'
          FocusControl = itmbpis
        end
        object Label33: TLabel
          Left = 315
          Top = 129
          Width = 23
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Base'
          FocusControl = itmbcofins
        end
        object Label34: TLabel
          Left = 204
          Top = 48
          Width = 65
          Height = 13
          CustomHint = BalloonHint
          Caption = '% MVA Subst'
          FocusControl = itmmva
        end
        object itmbicm: TDBEdit
          Left = 204
          Top = 18
          Width = 59
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmbicm'
          DataSource = DSRegistro
          TabOrder = 1
        end
        object itmbicms: TDBEdit
          Left = 133
          Top = 45
          Width = 65
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmbicms'
          DataSource = DSRegistro
          TabOrder = 4
        end
        object itmaliqipi: TDBEdit
          Left = 133
          Top = 72
          Width = 53
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmaliqipi'
          DataSource = DSRegistro
          TabOrder = 8
        end
        object icmcodigo: TDBEdit
          Left = 359
          Top = 18
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'icmcodigo'
          DataSource = DSRegistro
          TabOrder = 2
          OnExit = icmcodigoExit
        end
        object itmaliqicms: TDBEdit
          Left = 404
          Top = 45
          Width = 55
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmaliqicms'
          DataSource = DSRegistro
          TabOrder = 6
        end
        object itmipi: TDBEdit
          Left = 542
          Top = 72
          Width = 60
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmipi'
          DataSource = DSRegistro
          TabOrder = 9
        end
        object itmicm: TDBEdit
          Left = 542
          Top = 18
          Width = 60
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmicm'
          DataSource = DSRegistro
          TabOrder = 3
          OnEnter = itmicmEnter
        end
        object itmicms: TDBEdit
          Left = 542
          Top = 45
          Width = 60
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmicms'
          DataSource = DSRegistro
          TabOrder = 7
        end
        object itmpercreducaobaseicm: TDBEdit
          Left = 133
          Top = 18
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmpercreducaobaseicm'
          DataSource = DSRegistro
          TabOrder = 0
        end
        object cspcodigo: TDBEdit
          Left = 133
          Top = 99
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cspcodigo'
          DataSource = DSRegistro
          TabOrder = 10
        end
        object csfcodigo: TDBEdit
          Left = 133
          Top = 126
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'csfcodigo'
          DataSource = DSRegistro
          TabOrder = 14
        end
        object itmaliqpis: TDBEdit
          Left = 440
          Top = 99
          Width = 35
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmaliqpis'
          DataSource = DSRegistro
          TabOrder = 12
          OnExit = itmaliqpisExit
        end
        object itmaliqcofins: TDBEdit
          Left = 440
          Top = 126
          Width = 36
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmaliqcofins'
          DataSource = DSRegistro
          TabOrder = 16
          OnExit = itmaliqcofinsExit
        end
        object itmpis: TDBEdit
          Left = 542
          Top = 99
          Width = 60
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'itmpis'
          DataSource = DSRegistro
          TabOrder = 13
          OnEnter = itmicmEnter
        end
        object itmcofins: TDBEdit
          Left = 542
          Top = 126
          Width = 60
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'itmcofins'
          DataSource = DSRegistro
          TabOrder = 17
          OnEnter = itmicmEnter
        end
        object itmbpis: TDBEdit
          Left = 344
          Top = 99
          Width = 73
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmbpis'
          DataSource = DSRegistro
          TabOrder = 11
        end
        object itmbcofins: TDBEdit
          Left = 344
          Top = 126
          Width = 73
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmbcofins'
          DataSource = DSRegistro
          TabOrder = 15
        end
        object itmmva: TDBEdit
          Left = 274
          Top = 45
          Width = 52
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmmva'
          DataSource = DSRegistro
          TabOrder = 5
        end
      end
      object GBOutrosValores: TGroupBox
        Left = 7
        Top = 323
        Width = 610
        Height = 51
        CustomHint = BalloonHint
        Caption = ' Outros Valores '
        TabOrder = 13
        object Label4: TLabel
          Left = 455
          Top = 22
          Width = 49
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Outras R$'
          FocusControl = itmoutras
        end
        object Label19: TLabel
          Left = 269
          Top = 22
          Width = 50
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Seguro R$'
          FocusControl = itmseguro
        end
        object Label22: TLabel
          Left = 13
          Top = 22
          Width = 42
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Frete R$'
          FocusControl = itmfrete
        end
        object itmoutras: TDBEdit
          Left = 510
          Top = 19
          Width = 88
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmoutras'
          DataSource = DSRegistro
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object itmseguro: TDBEdit
          Left = 326
          Top = 19
          Width = 88
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmseguro'
          DataSource = DSRegistro
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object itmfrete: TDBEdit
          Left = 129
          Top = 19
          Width = 88
          Height = 21
          CustomHint = BalloonHint
          DataField = 'itmfrete'
          DataSource = DSRegistro
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object itmtotalgeral: TDBEdit
        Left = 522
        Top = 275
        Width = 88
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmtotalgeral'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 15
      end
      object itmdesccomple: TDBMemo
        Left = 136
        Top = 84
        Width = 474
        Height = 50
        CustomHint = BalloonHint
        DataField = 'itmdesccomple'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.09.001-03'
  end
  inherited DSRegistro: TUniDataSource
    Left = 384
    Top = 12
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgdoisprecos,'
      '  crtcodigo,'
      '  cfgcontrolaestoque,'
      '  cfgcontrolaestoquedisp,'
      '  cfgprodefineicms,'
      '  cfgmsai.cfgpercentualpis,'
      '  cfgmsai.cfgpercentualcofins,'
      '  cfgusacspnoproduto,'
      '  cfgusacsfnoproduto'
      'FROM cfg,'
      '     cfgmsai,'
      '     cfgmspd,'
      '     cfgmnfe'
      'WHERE cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND cfg.cfgcodigo = :flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgdoisprecos: TIntegerField
      FieldName = 'cfgdoisprecos'
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
    object cfgcfgcontrolaestoque: TIntegerField
      FieldName = 'cfgcontrolaestoque'
    end
    object cfgcfgcontrolaestoquedisp: TIntegerField
      FieldName = 'cfgcontrolaestoquedisp'
    end
    object cfgcfgprodefineicms: TIntegerField
      FieldName = 'cfgprodefineicms'
    end
    object cfgcfgpercentualpis: TFloatField
      FieldName = 'cfgpercentualpis'
    end
    object cfgcfgpercentualcofins: TFloatField
      FieldName = 'cfgpercentualcofins'
    end
    object cfgcfgusacspnoproduto: TIntegerField
      FieldName = 'cfgusacspnoproduto'
    end
    object cfgcfgusacsfnoproduto: TIntegerField
      FieldName = 'cfgusacsfnoproduto'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itmchave,'
      '  meschave,'
      '  itmitem,'
      '  procodigo,'
      '  cstcodigo,'
      '  itmdesccomple,'
      '  itmquantidade,'
      '  itmvalor,'
      '  itmdesconto,'
      '  itmmovifisico,'
      '  toecodigo,'
      '  cfocfop,'
      '  itmbicm,'
      '  icmcodigo,'
      '  itmaliqicm,'
      '  itmicm,'
      '  itmbicms,'
      '  itmaliqicms,'
      '  itmicms,'
      '  itmapuipi,'
      '  csicodigo,'
      '  ceicodigo,'
      '  itmbipi,'
      '  itmaliqipi,'
      '  itmipi,'
      '  puncodigo,'
      '  itmcontendo,'
      '  cspcodigo,'
      '  itmbpis,'
      '  itmaliqpis,'
      '  itmquantpis,'
      '  itmaliqpisvalor,'
      '  itmpis,'
      '  csfcodigo,'
      '  itmbcofins,'
      '  itmaliqcofins,'
      '  unicodigobase,'
      '  cfocfopdestinacao,'
      '  itmquantcofins,'
      '  itmaliqcofinsvalor,'
      '  itmcofins,'
      '  pcccodigo,'
      '  itmtotal,'
      '  unicodigo,'
      '  itmfrete,'
      '  itmseguro,'
      '  itmoutras,'
      '  itmpercreducaobaseicm,'
      '  itmmva'
      ''
      'FROM itm'
      'WHERE itmchave = :itmchave'
      'AND meschave = :meschave')
    BeforePost = registroBeforePost
    OnCalcFields = registroCalcFields
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registroitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object registromeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
    end
    object registroitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object registrotoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificação: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentifica'#231#227'o'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Required = True
      Size = 60
      Lookup = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Required = True
      Size = 60
      Lookup = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registrocfoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cfoidentificacao'
      LookupDataSet = cfo
      LookupKeyFields = 'cfocfop'
      LookupResultField = 'cfoidentificacao'
      KeyFields = 'cfocfop'
      Required = True
      Size = 50
      Lookup = True
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object registrocstidentificacao: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'cstidentificacao'
      LookupDataSet = cst
      LookupKeyFields = 'cstcodigo'
      LookupResultField = 'cstidentificacao'
      KeyFields = 'cstcodigo'
      Required = True
      Size = 50
      Lookup = True
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Unidade de Venda'
      FieldName = 'puncodigo'
      Required = True
    end
    object registropunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Required = True
      Size = 30
      Lookup = True
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmfrete: TFloatField
      DisplayLabel = 'Frete R$'
      FieldName = 'itmfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmseguro: TFloatField
      DisplayLabel = 'Seguro R$'
      FieldName = 'itmseguro'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmoutras: TFloatField
      DisplayLabel = 'Outras R$'
      FieldName = 'itmoutras'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmtotalgeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldKind = fkCalculated
      FieldName = 'itmtotalgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object registroitmbicm: TFloatField
      DisplayLabel = 'Base do ICMS'
      FieldName = 'itmbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroicmcodigo: TStringField
      DisplayLabel = 'Al'#237'quota do ICMS'
      FieldName = 'icmcodigo'
      Required = True
      Size = 3
    end
    object registroicmaliquotas: TStringField
      FieldKind = fkLookup
      FieldName = 'icmaliquotas'
      LookupDataSet = icm
      LookupKeyFields = 'icmcodigo'
      LookupResultField = 'icmaliquotas'
      KeyFields = 'icmcodigo'
      Size = 5
      Lookup = True
    end
    object registroitmicm: TFloatField
      DisplayLabel = 'Valor do ICMS'
      FieldName = 'itmicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmbicms: TFloatField
      DisplayLabel = 'Base do ICMS Substitui'#231#227'o'
      FieldName = 'itmbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqicms: TFloatField
      DisplayLabel = 'Al'#237'quota ICMS Substitui'#231#227'o'
      FieldName = 'itmaliqicms'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmicms: TFloatField
      DisplayLabel = 'Valor do ICMS Substitui'#231#227'o'
      FieldName = 'itmicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqipi: TFloatField
      DisplayLabel = 'Percentual IPI'
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmipi: TFloatField
      DisplayLabel = 'Valor do IPI'
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmapuipi: TStringField
      FieldName = 'itmapuipi'
      FixedChar = True
      Size = 1
    end
    object registrocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object registrouninome: TStringField
      FieldKind = fkLookup
      FieldName = 'uninome'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'uninome'
      KeyFields = 'unicodigo'
      Size = 30
      Lookup = True
    end
    object registrounicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
    end
    object registroitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      FixedChar = True
      Size = 1
    end
    object registroitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 6
    end
    object registroitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object registroceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object registroitmbipi: TFloatField
      FieldName = 'itmbipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object registrocspidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cspidentificacao'
      LookupDataSet = csp
      LookupKeyFields = 'cspcodigo'
      LookupResultField = 'cspidentificacao'
      KeyFields = 'cspcodigo'
      Size = 18
      Lookup = True
    end
    object registroitmpis: TFloatField
      FieldName = 'itmpis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmbpis: TFloatField
      FieldName = 'itmbpis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      DisplayFormat = '#0.00'
    end
    object registroitmquantpis: TFloatField
      FieldName = 'itmquantpis'
    end
    object registroitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
    end
    object registrocsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object registrocsfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'csfidentificacao'
      LookupDataSet = csf
      LookupKeyFields = 'csfcodigo'
      LookupResultField = 'csfidentificacao'
      KeyFields = 'csfcodigo'
      Size = 18
      Lookup = True
    end
    object registroitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object registroitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
    end
    object registroitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
    end
    object registroitmcofins: TFloatField
      FieldName = 'itmcofins'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registrounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object registrocfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object registrounicodigopun: TIntegerField
      FieldKind = fkLookup
      FieldName = 'unicodigopun'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'unicodigo'
      KeyFields = 'puncodigo'
      Lookup = True
    end
    object registroitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
    object registroitmpercreducaobaseicm: TFloatField
      FieldName = 'itmpercreducaobaseicm'
    end
    object registroitmmva: TFloatField
      DisplayLabel = '% MVA Subst'
      FieldName = 'itmmva'
      Required = True
      DisplayFormat = '#,#00'
      EditFormat = '#,#00'
    end
  end
  inherited dcp: TUniQuery
    Left = 216
    Top = 32
  end
  inherited dtb: TUniQuery
    Left = 248
    Top = 28
  end
  inherited coa: TUniQuery
    Left = 288
    Top = 36
  end
  inherited pfr: TUniQuery
    Top = 100
  end
  inherited psf: TUniQuery
    Left = 760
    Top = 292
  end
  inherited dcl: TUniQuery
    Left = 340
    Top = 48
  end
  inherited cau: TUniQuery
    Left = 376
    Top = 144
  end
  inherited err: TUniQuery
    Left = 728
    Top = 164
  end
  inherited BalloonHint: TBalloonHint
    Left = 456
    Top = 76
  end
  inherited cpg: TUniQuery
    Left = 556
    Top = 8
  end
  inherited cpc: TUniQuery
    Left = 677
    Top = 217
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object icm: TUniQuery
    SQL.Strings = (
      'select icmcodigo, icmaliquotas from icm')
    Left = 428
    Top = 44
    object icmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object icmicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Size = 8
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo, uninome from uni')
    Left = 388
    Top = 64
    object uniunicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      '     , toe.toecfopsaida'
      '     , toe.ttocodigo'
      'FROM toe')
    Left = 532
    Top = 96
    object toetoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object toetoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Size = 5
    end
    object toettocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome, prosaldo, proestoque from pro')
    Left = 508
    Top = 52
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object proprosaldo: TFloatField
      FieldName = 'prosaldo'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object proproestoque: TStringField
      FieldName = 'proestoque'
      Size = 2
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      
        'Select puncodigo, punidentificacao,procodigo,pun.unicodigo,pun.t' +
        'uncodigo,punprecoav,punprecoap,punmultiplicador from pun')
    Left = 644
    Top = 92
    object punpuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object puntuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object punpunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
    object punpunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
    end
  end
  object cst: TUniQuery
    SQL.Strings = (
      'select cstcodigo, cstidentificacao from cst')
    Left = 284
    Top = 208
    object cstcstcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object cstcstidentificacao: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'cstidentificacao'
      Size = 100
    end
  end
  object cfo: TUniQuery
    SQL.Strings = (
      'select cfocfop, cfoidentificacao from cfo')
    Left = 664
    Top = 168
    object cfocfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object cfocfoidentificacao: TStringField
      FieldName = 'cfoidentificacao'
      Size = 200
    end
  end
  object consultapun: TUniQuery
    Left = 460
    Top = 116
  end
  object Dpro: TUniDataSource
    DataSet = pro
    Left = 496
    Top = 20
  end
  object otp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  otpchave,'
      '  toecodigo,'
      '  tpocodigo,'
      '  cfocfop'
      'FROM otp where toecodigo=:toecodigo')
    Left = 446
    Top = 180
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
    object otpcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
  end
  object csp: TUniQuery
    SQL.Strings = (
      'select cspcodigo, cspidentificacao from csp')
    Left = 694
    Top = 352
    object cspcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object cspcspidentificacao: TStringField
      FieldName = 'cspidentificacao'
      Size = 50
    end
  end
  object csf: TUniQuery
    SQL.Strings = (
      'select csfcodigo, csfidentificacao from csf')
    Left = 654
    Top = 352
    object csfcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object csfcsfidentificacao: TStringField
      FieldName = 'csfidentificacao'
      Size = 50
    end
  end
  object toecst: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  toecodigo,'
      '  cstcodigo,'
      '  csicodigo,'
      '  cspcodigo,'
      '  cfgpercentualpis,'
      '  csfcodigo,'
      '  cfgpercentualcofins'
      'FROM toe where toecodigo=:toecodigo')
    Left = 508
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object toecsttoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toecstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object toecstcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 3
    end
    object toecstcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object toecstcfgpercentualpis: TFloatField
      FieldName = 'cfgpercentualpis'
    end
    object toecstcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object toecstcfgpercentualcofins: TFloatField
      FieldName = 'cfgpercentualcofins'
    end
  end
end
