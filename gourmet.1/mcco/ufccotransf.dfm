inherited fccotransf: Tfccotransf
  ActiveControl = ccoemissao
  Caption = 'Transfer'#234'ncia entre Contas Correntes'
  ClientHeight = 230
  ClientWidth = 603
  ExplicitWidth = 619
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 201
    Width = 603
    ExplicitTop = 653
    ExplicitWidth = 995
    inherited bconfirma: TBitBtn
      Left = 449
      ExplicitLeft = 841
    end
    inherited bcancela: TBitBtn
      Left = 524
      ExplicitLeft = 916
      ExplicitTop = 4
    end
    inherited bfechar: TBitBtn
      Left = 384
      ExplicitLeft = 776
    end
  end
  inherited paginas: TPageControl
    Width = 603
    Height = 201
    ExplicitWidth = 995
    ExplicitHeight = 653
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 987
      ExplicitHeight = 625
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
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Destino'
      end
      object Label7: TLabel
        Left = 9
        Top = 141
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da Transfer'#234'ncia R$'
        FocusControl = ccovalor
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Origem'
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = ccohistorico
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Transfer'#234'ncia'
        FocusControl = ccoemissao
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
        Top = 138
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object ctacodigo: TDBEdit
        Left = 139
        Top = 84
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = Dcco
        TabOrder = 3
        OnEnter = ctacodigoEnter
      end
      object ctacodigoOri: TDBEdit
        Left = 139
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
        OnEnter = ctacodigoEnter
      end
      object ccohistorico: TDBEdit
        Left = 139
        Top = 111
        Width = 422
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccohistorico'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ccoemissao: TDBEdit
        Left = 139
        Top = 30
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccoemissao'
        DataSource = DSRegistro
        TabOrder = 1
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
    SQL.Strings = (
      'select cfgusactb from cfg')
    Left = 700
    Top = 180
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
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
    BeforePost = registroBeforePost
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
      DisplayLabel = 'Data de Vencimento'
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
    Left = 560
    Top = 132
  end
  inherited dtb: TUniQuery
    Left = 516
    Top = 132
  end
  inherited coa: TUniQuery
    Left = 480
    Top = 132
  end
  inherited pfr: TUniQuery
    Left = 612
    Top = 72
  end
  inherited psf: TUniQuery
    Left = 468
    Top = 68
  end
  inherited dcl: TUniQuery
    Left = 516
    Top = 88
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
      'select ctacodigo, ctaidentificacao from cta ')
    Constraints = <>
    Left = 468
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
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
    Left = 388
    Top = 4
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
    Left = 620
    Top = 65532
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
      'ccofavorecido from cco where ccochave=:ccochave')
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
    Left = 656
  end
  object dtl: TUniQuery
    SQL.Strings = (
      
        'select dtlchave, ltechave, cedcodigo, mdacodigo, dtlvalor from d' +
        'tl where ltechave=:ltechave')
    Constraints = <>
    Left = 300
    Top = 232
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
      '  ltemulta,'
      '  ltesituacao'
      'FROM lte limit 0')
    Constraints = <>
    Left = 712
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
      
        'select ltcchave, dtlchave, chechave,schcodigo from ltc where dtl' +
        'chave=:dtlchave')
    Constraints = <>
    Left = 296
    Top = 296
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
      'FROM ccd limit 0')
    Constraints = <>
    Left = 584
    Top = 7
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
