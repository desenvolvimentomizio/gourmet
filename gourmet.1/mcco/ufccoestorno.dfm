inherited fccoestorno: Tfccoestorno
  ActiveControl = meacodigo
  Caption = 'Estorno de Lan'#231'amento'
  ClientHeight = 365
  ClientWidth = 580
  ExplicitWidth = 596
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 336
    Width = 580
    ExplicitTop = 504
    ExplicitWidth = 922
    inherited bconfirma: TBitBtn
      Left = 426
      ExplicitLeft = 768
    end
    inherited bcancela: TBitBtn
      Left = 501
      ExplicitLeft = 843
    end
    inherited bfechar: TBitBtn
      Left = 361
      ExplicitLeft = 703
    end
  end
  inherited paginas: TPageControl
    Width = 580
    Height = 336
    ExplicitWidth = 922
    ExplicitHeight = 504
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 914
      ExplicitHeight = 476
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ccochave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data da Emiss'#227'o'
        FocusControl = ccoemissao
      end
      object Label2: TLabel
        Left = 327
        Top = 33
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Vencimento'
        FocusControl = ccovencimento
        Visible = False
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label10: TLabel
        Left = 8
        Top = 88
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Favorecido'
        FocusControl = cedcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 115
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
      end
      object Label6: TLabel
        Left = 8
        Top = 162
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Documento'
        FocusControl = cconumero
      end
      object Label7: TLabel
        Left = 8
        Top = 189
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = ccovalor
      end
      object Label8: TLabel
        Left = 8
        Top = 243
        Width = 115
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento do Motivo'
        FocusControl = ccovalor
      end
      object Label9: TLabel
        Left = 8
        Top = 216
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo do Estorno'
        FocusControl = meacodigo
      end
      object ccochave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccochave'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object ccoemissao: TDBEdit
        Left = 136
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccoemissao'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object ccovencimento: TDBEdit
        Left = 436
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovencimento'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Visible = False
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object ccofavorecido: TDBEdit
        Left = 136
        Top = 85
        Width = 376
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccofavorecido'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 4
      end
      object ccohistorico: TDBMemo
        Left = 136
        Top = 112
        Width = 406
        Height = 41
        CustomHint = BalloonHint
        DataField = 'ccohistorico'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 5
      end
      object cconumero: TDBEdit
        Left = 136
        Top = 159
        Width = 161
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cconumero'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 6
      end
      object ccovalor: TDBEdit
        Left = 136
        Top = 186
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 7
      end
      object meacodigo: TDBEdit
        Left = 136
        Top = 213
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meacodigo'
        DataSource = dccm
        TabOrder = 8
        OnEnter = meacodigoEnter
      end
    end
  end
  object ccmmotivo: TDBMemo [3]
    Left = 141
    Top = 264
    Width = 405
    Height = 60
    CustomHint = BalloonHint
    DataField = 'ccmmotivo'
    DataSource = dccm
    MaxLength = 250
    TabOrder = 3
  end
  inherited DSRegistro: TUniDataSource
    Left = 456
    Top = 408
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgusactb,'
      '  cfgctbusaccg,'
      '  cfgccgcodigo'
      'FROM cfg,'
      '     cfgmctb,'
      '     cfgmflh '
      'WHERE cfg.cfgcodigo = cfgmctb.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmflh.cfgcodigo'
      'AND cfg.cfgcodigo = :flacodigo')
    Left = 428
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgcfgccgcodigo: TIntegerField
      FieldName = 'cfgccgcodigo'
    end
  end
  inherited consulta: TUniQuery
    Left = 368
    Top = 224
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
    Left = 452
    Top = 244
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
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
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
    Left = 808
    Top = 192
  end
  inherited dtb: TUniQuery
    Left = 732
    Top = 160
  end
  inherited coa: TUniQuery
    Left = 760
    Top = 212
  end
  inherited pfr: TUniQuery
    Left = 508
    Top = 188
  end
  inherited BalloonHint: TBalloonHint
    Top = 160
  end
  inherited acoesfrm: TActionList
    Left = 412
    Top = 65532
  end
  inherited cpg: TUniQuery
    Left = 796
    Top = 160
  end
  inherited cpc: TUniQuery
    Left = 725
    Top = 233
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Constraints = <>
    Left = 320
    Top = 200
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
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
      
        'where ccochave=:ccochave and (dtl.mdacodigo=2 or dtl.mdacodigo=3' +
        ')')
    Constraints = <>
    Left = 380
    Top = 168
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
  object ltc: TUniQuery
    SQL.Strings = (
      'select ltcchave, chechave, dtlchave,schcodigo from ltc limit 2')
    Constraints = <>
    Left = 288
    Top = 192
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
  object clt: TUniQuery
    SQL.Strings = (
      
        'select  ccochave , ltechave from clt where ccochave=:ccochave  a' +
        'nd ltechave=:ltechave')
    Constraints = <>
    Left = 260
    Top = 12
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
  object lte: TUniQuery
    Constraints = <>
    Left = 356
    Top = 12
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
  object dtl: TUniQuery
    SQL.Strings = (
      
        'select  dtlchave, ltechave, cedcodigo, mdacodigo, dtlvalor from ' +
        'dtl where ltechave=:ltechave and mdacodigo=:mdacodigo')
    Constraints = <>
    Left = 304
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object ccm: TUniQuery
    SQL.Strings = (
      
        'select  ccmchave,  meacodigo,  ccochave, erfchave, ccmmotivo fro' +
        'm ccm where ccochave=:ccochave')
    Constraints = <>
    Left = 236
    Top = 364
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccmccmchave: TIntegerField
      FieldName = 'ccmchave'
    end
    object ccmmeacodigo: TIntegerField
      FieldName = 'meacodigo'
      Required = True
    end
    object ccmmeamotivo: TStringField
      FieldKind = fkLookup
      FieldName = 'meamotivo'
      LookupDataSet = mea
      LookupKeyFields = 'meacodigo'
      LookupResultField = 'meamotivo'
      KeyFields = 'meacodigo'
      Required = True
      Size = 250
      Lookup = True
    end
    object ccmccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object ccmerfchave: TIntegerField
      FieldName = 'erfchave'
    end
    object ccmccmmotivo: TStringField
      FieldName = 'ccmmotivo'
      Required = True
      Size = 250
    end
  end
  object erf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  erfchave,'
      '  erfdata,'
      '  erfhora,'
      '  clbcodigo,'
      '  erfvalorlote,'
      '  erfvalorcredito,'
      '  ltechave,'
      '  etdcodigo,'
      '  erftipo'
      'FROM erf limit 0')
    Constraints = <>
    Left = 504
    Top = 376
    object erferfchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'erfchave'
    end
    object erferfdata: TDateField
      DisplayLabel = 'Data do Estorno'
      FieldName = 'erfdata'
      Required = True
    end
    object erferfhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'erfhora'
      Required = True
    end
    object erfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object erferfvalorlote: TFloatField
      DisplayLabel = 'Valor Total do Estorno R$'
      FieldName = 'erfvalorlote'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object erferfvalorcredito: TFloatField
      DisplayLabel = 'Valor do Cr'#233'dito a Gerar R$'
      FieldName = 'erfvalorcredito'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object erfltechave: TIntegerField
      FieldName = 'ltechave'
      Required = True
    end
    object erfetdcodigo: TIntegerField
      DisplayLabel = 'Entidade de Destino'
      FieldName = 'etdcodigo'
    end
    object erferftipo: TIntegerField
      FieldName = 'erftipo'
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
    Left = 328
    Top = 404
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
  object dccm: TUniDataSource
    DataSet = ccm
    Left = 232
    Top = 416
  end
  object mea: TUniQuery
    SQL.Strings = (
      'select meacodigo, meamotivo from mea')
    Constraints = <>
    Left = 616
    Top = 376
    object meameacodigo: TIntegerField
      FieldName = 'meacodigo'
    end
    object meameamotivo: TStringField
      FieldName = 'meamotivo'
      Size = 250
    end
  end
  object mcgatu: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      'FROM mcg limit 0')
    Constraints = <>
    Left = 293
    Top = 355
    object mcgatumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgatuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgatumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgatumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgatumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgatumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgatuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgatumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgaturfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mcgatumcgdata: TDateField
      FieldName = 'mcgdata'
    end
  end
end
