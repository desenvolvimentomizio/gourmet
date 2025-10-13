inherited fche: Tfche
  ActiveControl = bcocodigo
  Caption = 'Registro de Cheque'
  ClientHeight = 421
  ClientWidth = 629
  ExplicitWidth = 645
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 392
    Width = 629
    TabOrder = 2
    ExplicitTop = 392
    ExplicitWidth = 629
    inherited bconfirma: TBitBtn
      Left = 475
      ExplicitLeft = 475
    end
    inherited bcancela: TBitBtn
      Left = 550
      ExplicitLeft = 550
    end
    inherited bfechar: TBitBtn
      Left = 410
      ExplicitLeft = 410
    end
  end
  inherited paginas: TPageControl
    Width = 629
    Height = 392
    ExplicitWidth = 629
    ExplicitHeight = 392
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 621
      ExplicitHeight = 364
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = chechave
      end
      object Label2: TLabel
        Left = 8
        Top = 276
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emiss'#227'o'
        FocusControl = cheemissao
      end
      object Label3: TLabel
        Left = 8
        Top = 303
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vencimento'
        FocusControl = chevencimento
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Banco'
        FocusControl = bcocodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ag'#234'ncia'
        FocusControl = cheagencia
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Conta'
        FocusControl = checonta
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Cheque'
        FocusControl = chenumero
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 142
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Emitente do Cheque'
        FocusControl = chenome
      end
      object Label9: TLabel
        Left = 8
        Top = 222
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Doc. Emitente'
        FocusControl = chedocumento
      end
      object Label10: TLabel
        Left = 8
        Top = 249
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = chetelefone
      end
      object Label11: TLabel
        Left = 8
        Top = 330
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do Cheque R$'
        FocusControl = chevalor
      end
      object Label12: TLabel
        Left = 8
        Top = 168
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Origem do Cheque'
        FocusControl = DBEetdcodigo
      end
      object LbTalonario: TLabel
        Left = 8
        Top = 33
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Talon'#225'rio'
        FocusControl = bcocodigo
        Visible = False
      end
      object chechave: TDBEdit
        Left = 156
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cheemissao: TDBEdit
        Left = 156
        Top = 273
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cheemissao'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object chevencimento: TDBEdit
        Left = 156
        Top = 300
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chevencimento'
        DataSource = DSRegistro
        TabOrder = 11
        OnExit = chevencimentoExit
      end
      object bcocodigo: TDBEdit
        Left = 156
        Top = 57
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = bcocodigoExit
      end
      object cheagencia: TDBEdit
        Left = 156
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cheagencia'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object checonta: TDBEdit
        Left = 156
        Top = 111
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'checonta'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object chenumero: TDBEdit
        Left = 156
        Top = 138
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chenumero'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = chenumeroExit
      end
      object chenome: TDBEdit
        Left = 156
        Top = 192
        Width = 454
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chenome'
        DataSource = DSRegistro
        TabOrder = 7
        OnEnter = chenomeEnter
      end
      object chedocumento: TDBEdit
        Left = 156
        Top = 219
        Width = 293
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chedocumento'
        DataSource = DSRegistro
        TabOrder = 8
        OnEnter = chedocumentoEnter
      end
      object chetelefone: TDBEdit
        Left = 156
        Top = 246
        Width = 221
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chetelefone'
        DataSource = DSRegistro
        TabOrder = 9
        OnEnter = chetelefoneEnter
      end
      object chevalor: TDBEdit
        Left = 156
        Top = 327
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chevalor'
        DataSource = DSRegistro
        TabOrder = 12
        OnExit = chevalorExit
      end
      object DBEetdcodigo: TDBEdit
        Left = 156
        Top = 165
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object tchcodigo: TDBEdit
        Left = 156
        Top = 30
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tchcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        Visible = False
        OnEnter = tchcodigoEnter
        OnExit = tchcodigoExit
      end
    end
  end
  inherited lbcodigojanela: TPanel
    TabOrder = 0
  end
  inherited DSRegistro: TUniDataSource
    Left = 564
    Top = 48
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfg.cfgcodigo'
      '     , etd.etdcodigo'
      '     , etd.etdidentificacao'
      '     , etd.etddoc1'
      '     , etf.etftelefone'
      'FROM cfg'
      '  JOIN cfgmcfg'
      '    ON cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      '  JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo'
      '  JOIN etf'
      '    ON etd.etdcodigo = etf.etdcodigo'
      '    AND etf.ttfcodigo = 1')
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object cfgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgetftelefone: TStringField
      FieldName = 'etftelefone'
    end
  end
  inherited consulta: TUniQuery
    Left = 384
    Top = 124
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT che.chechave'
      '     , che.cheemissao'
      '     , che.chevencimento'
      '     , che.chenumero'
      '     , che.checonta'
      '     , che.cheagencia'
      '     , che.bcocodigo'
      '     , che.chenome'
      '     , che.chedocumento'
      '     , che.chetelefone'
      '     , che.chevalor'
      '     , che.etdcodigo'
      '     , che.tchcodigo -- Talon'#225'rio - Cheque Pr'#243'prio'
      'FROM tche che'
      'WHERE chechave = :chechave')
    Left = 492
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chechave'
        Value = nil
      end>
    object registrochechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'chechave'
    end
    object registrocheemissao: TDateField
      ConstraintErrorMessage = 'Data inv'#225'lida: '
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrochevencimento: TDateField
      ConstraintErrorMessage = 'Data inv'#225'lida: '
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrobcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Required = True
      EditMask = '999;0;_'
      Size = 3
    end
    object registrocheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Required = True
      Size = 10
    end
    object registrocheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Required = True
      Size = 15
    end
    object registrochenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Required = True
      EditMask = '999999;0;_'
      Size = 10
    end
    object registrochenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Required = True
      Size = 50
    end
    object registrochedocumento: TStringField
      DisplayLabel = 'Nr. Doc. Emitente'
      FieldName = 'chedocumento'
      Required = True
      Size = 30
    end
    object registrochetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
      Required = True
    end
    object registrochevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 40
      Lookup = True
    end
    object registrotchcodigo: TIntegerField
      DisplayLabel = 'Talon'#225'rio'
      FieldName = 'tchcodigo'
    end
    object registrotchnumeracao: TStringField
      FieldKind = fkLookup
      FieldName = 'tchnumeracao'
      LookupDataSet = tch
      LookupKeyFields = 'tchcodigo'
      LookupResultField = 'tchnumeracao'
      KeyFields = 'tchcodigo'
      Size = 15
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 368
    Top = 44
  end
  inherited dtb: TUniQuery
    Left = 324
    Top = 52
  end
  inherited coa: TUniQuery
    Left = 288
    Top = 52
  end
  inherited pfr: TUniQuery
    Left = 456
    Top = 60
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.etddoc1'
      'FROM etd')
    Left = 312
    Top = 112
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdetftelefone: TStringField
      FieldKind = fkLookup
      FieldName = 'etftelefone'
      LookupDataSet = etf
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etftelefone'
      KeyFields = 'etdcodigo'
      Lookup = True
    end
  end
  object etf: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etftelefone from etf where ttfcodigo=1')
    Left = 400
    Top = 224
    object etfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etfetftelefone: TStringField
      FieldName = 'etftelefone'
    end
  end
  object tch: TUniQuery
    SQL.Strings = (
      'SELECT tch.tchcodigo'
      '     , tch.ctacodigo'
      '     , cta.bcocodigo'
      
        '     , CONCAT(cta.ctaagencia, '#39'-'#39', cta.ctaagenciadig) AS ctaagen' +
        'cia'
      '     , CONCAT(cta.ctanumero, '#39'-'#39', cta.ctanumerodig) AS ctanumero'
      '     , tch.tchfolhainicial'
      '     , tch.tchfolhafinal'
      
        '     , CONCAT(tch.tchfolhainicial, '#39' - '#39', tch.tchfolhafinal) AS ' +
        'tchnumeracao'
      'FROM tch'
      '  JOIN cta'
      '    ON tch.ctacodigo = cta.ctacodigo')
    Left = 332
    Top = 184
    object tchtchcodigo: TIntegerField
      FieldName = 'tchcodigo'
    end
    object tchctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object tchtchfolhainicial: TIntegerField
      FieldName = 'tchfolhainicial'
    end
    object tchtchfolhafinal: TIntegerField
      FieldName = 'tchfolhafinal'
    end
    object tchtchnumeracao: TStringField
      FieldName = 'tchnumeracao'
      Size = 15
    end
    object tchbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object tchctaagencia: TStringField
      FieldName = 'ctaagencia'
      Size = 10
    end
    object tchctanumero: TStringField
      FieldName = 'ctanumero'
      Size = 10
    end
  end
  object cheVerif: TUniQuery
    SQL.Strings = (
      'SET @CheChaveAtual = :chechaveatual;'
      ''
      
        'SELECT '#39'D'#39' AS chefalha -- Identifica o tipo de falha - D = Dupli' +
        'cidade de Cheque.'
      '     , che.chechave AS checodfalha'
      'FROM che'
      'WHERE che.tchcodigo = :tchcodigo'
      'AND che.chenumero = :chenumero'
      
        'AND che.chechave <> @CheChaveAtual -- Altera'#231#227'o de registro n'#227'o ' +
        'deve identificar o pr'#243'prio como duplicidade.'
      ''
      'UNION'
      ''
      
        'SELECT '#39'N'#39' AS chefalha -- Identifica o tipo de falha - N = N'#250'mer' +
        'o fora da faixa do talon'#225'rio.'
      '     , tch.tchcodigo AS checodfalha'
      'FROM tch'
      'WHERE tch.tchcodigo = :tchcodigo'
      
        'AND :chenumero NOT BETWEEN tch.tchfolhainicial AND tch.tchfolhaf' +
        'inal;')
    Left = 404
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chechaveatual'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tchcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'chenumero'
        Value = nil
      end>
  end
end
