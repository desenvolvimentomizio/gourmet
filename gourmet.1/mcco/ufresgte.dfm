inherited fresgte: Tfresgte
  ActiveControl = ctacodigo
  Caption = 'Resgate de Cheques'
  ClientHeight = 205
  ClientWidth = 556
  ExplicitWidth = 572
  ExplicitHeight = 244
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 176
    Width = 556
    ExplicitTop = 176
    ExplicitWidth = 556
    inherited bconfirma: TBitBtn
      Left = 402
      ExplicitLeft = 402
    end
    inherited bcancela: TBitBtn
      Left = 477
      ExplicitLeft = 477
    end
    inherited bfechar: TBitBtn
      Left = 337
      ExplicitLeft = 337
    end
  end
  inherited paginas: TPageControl
    Width = 556
    Height = 176
    ExplicitWidth = 556
    ExplicitHeight = 176
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 548
      ExplicitHeight = 148
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ccochave
      end
      object Label10: TLabel
        Left = 8
        Top = 60
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Destino'
      end
      object Label7: TLabel
        Left = 9
        Top = 114
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da Transfer'#234'ncia R$'
        FocusControl = ccovalor
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Origem'
      end
      object ccochave: TDBEdit
        Left = 139
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccochave'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object ccovalor: TDBEdit
        Left = 139
        Top = 111
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = DSRegistro
        TabOrder = 4
        OnEnter = ccovalorEnter
      end
      object ccohistorico: TDBMemo
        Left = 139
        Top = 84
        Width = 406
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccohistorico'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ctacodigo: TDBEdit
        Left = 139
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = Dcco
        TabOrder = 2
        OnEnter = ctacodigoEnter
        OnExit = ctacodigoExit
      end
      object ctacodigoOri: TDBEdit
        Left = 139
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
        OnEnter = ctacodigoEnter
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 446
    Caption = '02.02.07.007-04'
    ExplicitLeft = 446
  end
  inherited DSRegistro: TUniDataSource
    Left = 684
    Top = 88
  end
  inherited cfg: TUniQuery
    Left = 676
    Top = 220
  end
  inherited consulta: TUniQuery
    Left = 680
    Top = 40
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      
        'ccofavorecido from cco where cco.ccochave=:ccochave and cco.ctac' +
        'odigo=:ctacodigo')
    Left = 324
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object registroccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object registroctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object registroccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object registrotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object registrocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object registroccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object registroccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object registroccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object registroccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object registroccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object registroccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object registroccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object registroccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
  end
  inherited dcp: TUniQuery
    Left = 680
    Top = 148
  end
  inherited dtb: TUniQuery
    Left = 636
    Top = 148
  end
  inherited coa: TUniQuery
    Left = 600
    Top = 148
  end
  inherited pfr: TUniQuery
    Left = 612
    Top = 72
  end
  inherited psf: TUniQuery
    Left = 468
    Top = 60
  end
  inherited dcl: TUniQuery
    Left = 508
    Top = 56
  end
  inherited acoesfrm: TActionList
    Left = 428
    Top = 65516
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao, tctcodigo from cta')
    Constraints = <>
    Left = 468
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ctatctcodigo: TIntegerField
      FieldName = 'tctcodigo'
    end
  end
  object Dcta: TUniDataSource
    DataSet = cta
    Left = 512
    Top = 4
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  che.chechave,'
      '  clt.ccochave'
      'FROM dtl'
      '  INNER JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  INNER JOIN ltc'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      'where ccochave=:ccochave')
    Constraints = <>
    Left = 396
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checcochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
  object clt: TUniQuery
    SQL.Strings = (
      
        'select  ccochave , ltechave from clt where ccochave=:ccochave  a' +
        'nd ltechave=:ltechave')
    Constraints = <>
    Left = 228
    Top = 92
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
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
    end
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
    Left = 272
    Top = 8
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
  object Dcco: TUniDataSource
    DataSet = cco
    Left = 224
    Top = 8
  end
  object dtl: TUniQuery
    SQLRefresh.Strings = (
      
        'SELECT dtlchave, ltechave, cedcodigo, dtlvalor, mdacodigo FROM d' +
        'tl'
      'WHERE'
      '  dtlchave = :dtlchave')
    SQL.Strings = (
      
        'SELECT dtlchave, ltechave, cedcodigo, dtlvalor, mdacodigo FROM d' +
        'tl'
      'WHERE'
      '  ltechave=:ltechave')
    Constraints = <>
    Left = 140
    Top = 88
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
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltechave,'
      '  tfdcodigo,'
      '  ltedata,'
      '  lteprincipal,'
      '  ltejuros,'
      '  ltedesconto,'
      '  ltetotal,'
      '  lteextenso,'
      '  ltehistorico,'
      '  ltemulta'
      'FROM lte limit 0')
    Constraints = <>
    Left = 96
    Top = 88
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
      Required = True
    end
    object lteltedata: TDateField
      FieldName = 'ltedata'
      Required = True
    end
    object ltelteprincipal: TFloatField
      FieldName = 'lteprincipal'
      Required = True
    end
    object lteltejuros: TFloatField
      FieldName = 'ltejuros'
      Required = True
    end
    object lteltedesconto: TFloatField
      FieldName = 'ltedesconto'
      Required = True
    end
    object lteltetotal: TFloatField
      FieldName = 'ltetotal'
      Required = True
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
    object lteltehistorico: TStringField
      FieldName = 'ltehistorico'
      Size = 100
    end
    object lteltemulta: TFloatField
      FieldName = 'ltemulta'
      Required = True
    end
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'select * from ltc where dtlchave=:dtlchave')
    Constraints = <>
    Left = 176
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dtlchave'
        Value = nil
      end>
    object ltcltcchave: TIntegerField
      AutoGenerateValue = arAutoInc
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
    object ltcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
      Required = True
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
    Left = 312
    Top = 71
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
