inherited fdevol: Tfdevol
  ActiveControl = mdccodigo
  Caption = 'Devolu'#231#227'o de Cheque'
  ClientHeight = 372
  ClientWidth = 562
  ExplicitWidth = 578
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 343
    Width = 562
    ExplicitTop = 343
    ExplicitWidth = 562
    inherited bconfirma: TBitBtn
      Left = 408
      ExplicitLeft = 408
    end
    inherited bcancela: TBitBtn
      Left = 483
      ExplicitLeft = 483
    end
    inherited bfechar: TBitBtn
      Left = 343
      ExplicitLeft = 343
    end
  end
  inherited paginas: TPageControl
    Width = 562
    Height = 343
    ExplicitWidth = 562
    ExplicitHeight = 343
    inherited Principal: TTabSheet
      object Label12: TLabel
        Left = 11
        Top = 280
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo da Devolu'#231#227'o'
        FocusControl = mdccodigo
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 16
        Width = 526
        Height = 233
        CustomHint = BalloonHint
        Caption = ' Informa'#231#245'es do Cheque Devolvido '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 37
          Width = 49
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Chave'
          FocusControl = chechave
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 28
          Top = 64
          Width = 38
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Emiss'#227'o'
          FocusControl = cheemissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 328
          Top = 64
          Width = 55
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Vencimento'
          FocusControl = chevencimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 28
          Top = 91
          Width = 55
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Cheque'
          FocusControl = chenumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 293
          Top = 91
          Width = 47
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Conta'
          FocusControl = checonta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 28
          Top = 118
          Width = 38
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Ag'#234'ncia'
          FocusControl = cheagencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 424
          Top = 118
          Width = 29
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Banco'
          FocusControl = bcocodigo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 28
          Top = 145
          Width = 142
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nome do Emitente do Cheque'
          FocusControl = chenome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 28
          Top = 172
          Width = 85
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Doc. Emitente'
          FocusControl = chedocumento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 28
          Top = 199
          Width = 42
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Telefone'
          FocusControl = chetelefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 343
          Top = 199
          Width = 40
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Valor R$'
          FocusControl = chevalor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object chechave: TDBEdit
          Left = 184
          Top = 34
          Width = 81
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chechave'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object cheemissao: TDBEdit
          Left = 184
          Top = 61
          Width = 105
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cheemissao'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object chevencimento: TDBEdit
          Left = 396
          Top = 61
          Width = 109
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chevencimento'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object chenumero: TDBEdit
          Left = 184
          Top = 88
          Width = 93
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chenumero'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object checonta: TDBEdit
          Left = 348
          Top = 88
          Width = 157
          Height = 21
          CustomHint = BalloonHint
          DataField = 'checonta'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object cheagencia: TDBEdit
          Left = 184
          Top = 115
          Width = 134
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cheagencia'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object bcocodigo: TDBEdit
          Left = 468
          Top = 115
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'bcocodigo'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object chenome: TDBEdit
          Left = 184
          Top = 142
          Width = 321
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chenome'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object chedocumento: TDBEdit
          Left = 184
          Top = 169
          Width = 321
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chedocumento'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object chetelefone: TDBEdit
          Left = 184
          Top = 196
          Width = 141
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chetelefone'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object chevalor: TDBEdit
          Left = 389
          Top = 196
          Width = 116
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chevalor'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
      end
      object mdccodigo: TDBEdit
        Left = 117
        Top = 277
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 408
    Caption = '02.02.14.002-02'
    ExplicitLeft = 408
  end
  inherited DSRegistro: TUniDataSource
    Left = 492
    Top = 36
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgctacaixa from cfg')
    Left = 428
    Top = 252
    object cfgcfgctacaixa: TIntegerField
      FieldName = 'cfgctacaixa'
    end
  end
  inherited consulta: TUniQuery
    Left = 380
    Top = 372
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ltcchave, chechave, dtlchave, schcodigo, mdccodigo from l' +
        'tc where ltc.ltcchave=:ltcchave')
    Left = 448
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltcchave'
        Value = nil
      end>
    object registroltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object registrochechave: TIntegerField
      FieldName = 'chechave'
    end
    object registromdccodigo: TIntegerField
      DisplayLabel = 'Motivo da Devolu'#231#227'o'
      FieldName = 'mdccodigo'
      Required = True
    end
    object registromdcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdcidentificacao'
      LookupDataSet = mdc
      LookupKeyFields = 'mdccodigo'
      LookupResultField = 'mdcidentificacao'
      KeyFields = 'mdccodigo'
      Size = 150
      Lookup = True
    end
    object registrodtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object registroschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 360
    Top = 65520
  end
  inherited dtb: TUniQuery
    Left = 296
    Top = 65520
  end
  inherited coa: TUniQuery
    Left = 252
    Top = 65520
  end
  inherited pfr: TUniQuery
    Left = 92
    Top = 352
  end
  inherited psf: TUniQuery
    Left = 148
    Top = 336
  end
  inherited dcl: TUniQuery
    Left = 144
    Top = 396
  end
  inherited cau: TUniQuery
    Left = 248
    Top = 368
  end
  inherited err: TUniQuery
    Left = 428
    Top = 400
  end
  inherited BalloonHint: TBalloonHint
    Left = 296
    Top = 384
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cco: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      'ccofavorecido from cco where cco.ccochave=:ccochave')
    Constraints = <>
    Left = 480
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object ccoctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object ccotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object ccocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object ccoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object ccomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object ccoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
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
    object ccoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
  end
  object mdc: TUniQuery
    SQL.Strings = (
      'select mdccodigo,  mdcidentificacao from mdc')
    Constraints = <>
    Left = 296
    Top = 484
    object mdcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
    end
    object mdcmdcidentificacao: TStringField
      FieldName = 'mdcidentificacao'
      Size = 250
    end
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  che.chechave,'
      '  che.cheemissao,'
      '  che.chevencimento,'
      '  che.chenumero,'
      '  che.checonta,'
      '  che.cheagencia,'
      '  che.bcocodigo,'
      '  che.chenome,'
      '  che.chedocumento,'
      '  che.chetelefone,'
      '  che.chevalor,'
      '  ltc.ltcchave,'
      '  ltc.schcodigo,'
      '  sch.schidentificacao'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN sch'
      '    ON ltc.schcodigo = sch.schcodigo'
      'WHERE ltc.schcodigo = /*Situa'#231#227'o atual do cheque*/ (SELECT'
      '    l.schcodigo'
      '  FROM ltc l'
      '  WHERE l.chechave = che.chechave and'
      '  ltc.ltcchave=:ltcchave'
      '  ORDER BY l.ltcchave DESC LIMIT 1)')
    Constraints = <>
    Left = 260
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltcchave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
      Required = True
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Required = True
      Size = 10
    end
    object checheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Required = True
      Size = 15
    end
    object checheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Required = True
      Size = 10
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Required = True
      Size = 50
    end
    object chechedocumento: TStringField
      DisplayLabel = 'Nr. Doc. Emitente'
      FieldName = 'chedocumento'
      Required = True
      Size = 30
    end
    object chechetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
      Required = True
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dche: TUniDataSource
    DataSet = che
    Left = 296
    Top = 252
  end
  object clt: TUniQuery
    SQL.Strings = (
      
        'select cltchave, ccochave, ltechave from clt where clt.ccochave=' +
        ':ccochave and clt.ltechave=:ltechave')
    Constraints = <>
    Left = 372
    Top = 452
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
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta')
    Constraints = <>
    Left = 308
    Top = 320
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'select ltechave , tfdcodigo, ltedata, ltetotal  from lte limit 1')
    Constraints = <>
    Left = 496
    Top = 348
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object lteltedata: TDateField
      FieldName = 'ltedata'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object lteltetotal: TFloatField
      FieldName = 'ltetotal'
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      
        'select dtlchave, ltechave, cedcodigo, mdacodigo, dtlvalor from d' +
        'tl where ltechave=:ltechave')
    Constraints = <>
    Left = 508
    Top = 448
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
  object ltc: TUniQuery
    SQL.Strings = (
      
        'select ltcchave, dtlchave, chechave,schcodigo from ltc where dtl' +
        'chave=:dtlchave')
    Constraints = <>
    Left = 436
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
    object ltcltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object ltcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltcchechave: TIntegerField
      FieldName = 'chechave'
    end
    object ltcschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object ccd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccdchave,'
      '  dtlchave,'
      '  ccochave'
      'FROM ccd where dtlchave=:dtlchave and ccochave=:ccochave')
    Constraints = <>
    Left = 208
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccdccdchave: TIntegerField
      FieldName = 'ccdchave'
    end
    object ccddtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ccdccochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
end
