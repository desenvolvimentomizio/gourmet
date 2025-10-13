object ferf: Tferf
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Processando ESTORNO, aguarde ...'
  ClientHeight = 333
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object clts: TUniQuery
    SQL.Strings = (
      'select  ccochave, ltechave from clt where ltechave=:ltechave')
    Left = 232
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object cltsccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltsltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object ccov: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      'ccofavorecido from cco where cco.ccochave=:ccochave')
    Left = 272
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccovccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccovctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ccovccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object ccovccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object ccovtoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object ccovcedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object ccovclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccovtficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object ccovmoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccovcconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object ccovccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccovccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccovccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccovccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccovccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object ccovccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccovetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ccovccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object ccovccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object ccovccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object ccovccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
  end
  object rfiv: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  etd.etdidentificacao,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  srf.srfidentificacao,'
      '  lte.ltechave,'
      '  rfi.titcodigo '
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf'
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'AND lte.ltechave = :ltechave')
    Left = 308
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rfivrfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfivetdcodigo: TIntegerField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'etdcodigo'
    end
    object rfivetdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object rfivrfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfivrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfivrfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object rfivrfivalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfivrfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfivsrfcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object rfivsrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfivltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object rfivtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  object ltev: TUniQuery
    SQL.Strings = (
      
        'select ltechave,tfdcodigo,ltedata,lteprincipal,ltejuros,ltedesco' +
        'nto,ltetotal,lteextenso from lte limit 1')
    Left = 340
    Top = 72
    object ltevltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltevtfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object ltevltedata: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'ltedata'
    end
    object ltevlteprincipal: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'lteprincipal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltevltejuros: TFloatField
      DisplayLabel = 'Valor do Juros R$'
      FieldName = 'ltejuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltevltedesconto: TFloatField
      DisplayLabel = 'Valor do Desconto R$'
      FieldName = 'ltedesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltevltetotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'ltetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltevlteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
  end
  object ccm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccmchave,'
      '  meacodigo,'
      '  ccochave,'
      '  titcodigo,'
      '  ccmmotivo,'
      '  meschave, '
      '  erfchave,'
      '  rfichave'
      'FROM ccm'
      'limit 0')
    Left = 408
    Top = 72
    object ccmccmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ccmchave'
    end
    object ccmmeacodigo: TIntegerField
      FieldName = 'meacodigo'
    end
    object ccmccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object ccmtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object ccmccmmotivo: TStringField
      FieldName = 'ccmmotivo'
      Size = 255
    end
    object ccmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object ccmerfchave: TIntegerField
      FieldName = 'erfchave'
    end
    object ccmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  object consulta: TUniQuery
    Left = 232
  end
  object clt: TUniQuery
    SQL.Strings = (
      
        'select  ccochave , ltechave from clt where ccochave=:ccochave  a' +
        'nd ltechave=:ltechave')
    Left = 228
    Top = 128
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
  object ltc: TUniQuery
    SQL.Strings = (
      'select ltcchave, chechave, dtlchave,schcodigo from ltc limit 1')
    Left = 264
    Top = 128
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
  object rcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrvalor,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora'
      'FROM rcr limit 0')
    Left = 304
    Top = 128
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
      Size = 50
    end
    object rcrtcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
    end
    object rcrtnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object rcrtsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object rcrrcrhora: TTimeField
      FieldName = 'rcrhora'
    end
  end
  object erc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ercchave,'
      '  rcrchave,'
      '  erfchave'
      'FROM erc limit 0')
    Left = 376
    Top = 128
    object ercercchave: TIntegerField
      FieldName = 'ercchave'
    end
    object ercrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object ercerfchave: TIntegerField
      FieldName = 'erfchave'
    end
  end
  object dcd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dcdchave,'
      '  rcrchave,'
      '  dcdvalor,'
      '  dcdsituacao'
      'FROM dcd limit 0')
    Left = 416
    Top = 128
    object dcdrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object dcddcdvalor: TFloatField
      FieldName = 'dcdvalor'
    end
    object dcddcdsituacao: TIntegerField
      FieldName = 'dcdsituacao'
    end
  end
  object dtlv: TUniQuery
    SQL.Strings = (
      
        'select  dtlchave, ltechave, cedcodigo, mdacodigo, dtlvalor from ' +
        'dtl where ltechave=:ltechave and mdacodigo=:mdacodigo')
    Left = 455
    Top = 128
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
    object dtlvdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlvltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlvdtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
    object dtlvcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlvmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object che: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE che'
      'SET tescodigo = :tescodigo'
      'WHERE chechave = :chechave')
    SQL.Strings = (
      'SELECT'
      ' che.chechave, '
      '  che.chevencimento,'
      '  che.cheemissao,'
      '  che.chenumero,'
      '  che.chevalor,'
      '  ltc.schcodigo,'
      '  ltc.dtlchave,'
      '  che.bcocodigo,'
      '  che.chenome,'
      '  sch.schidentificacao,'
      '  tescodigo'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN sch'
      '    ON ltc.schcodigo = sch.schcodigo'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      'where  dtl.ltechave=:ltechave')
    Left = 399
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'chenumero'
      Size = 15
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'chenome'
      Size = 50
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cheschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object cheschidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'schidentificacao'
      Size = 35
    end
    object chetescodigo: TIntegerField
      FieldName = 'tescodigo'
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
    Left = 442
    Top = 176
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
  object totdtl: TUniQuery
    SQL.Strings = (
      
        'select    SUM(if (cedcodigo=0,dtlvalor*-1,  dtlvalor)) as dtlval' +
        'or from dtl, mda, lte, clt'
      
        'where lte.ltechave=dtl.ltechave  and clt.ltechave=dtl.ltechave  ' +
        'and clt.ltechave=dtl.ltechave and dtl.mdacodigo=mda.mdacodigo an' +
        'd  dtl.ltechave=:ltechave'
      '  GROUP BY dtl.ltechave')
    Left = 408
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object totdtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
  end
  object rdc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdc.rdcchave,'
      '  etd.etdapelido,'
      '  rdc.rdcdata,'
      '  rdc.rdcvalor,'
      '  dtl.ltechave,'
      '  rdc.rdcnrauto,'
      '  adc.adccodigo,'
      '  tescodigo'
      'FROM ltr'
      '  INNER JOIN rdc'
      '    ON ltr.rdcchave = rdc.rdcchave'
      '  INNER JOIN dtl'
      '    ON ltr.dtlchave = dtl.dtlchave'
      '  INNER JOIN adc'
      '    ON rdc.adccodigo = adc.adccodigo'
      '  INNER JOIN etd'
      '    ON adc.etdcodigo = etd.etdcodigo'
      'where dtl.ltechave=:ltechave')
    Left = 360
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object rdcetdapelido: TStringField
      DisplayLabel = 'Operadora de Cart'#227'o'
      FieldName = 'etdapelido'
      Size = 50
    end
    object rdcrdcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object rdcrdcvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rdcvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rdcrdcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Size = 50
    end
    object rdcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object rdctescodigo: TIntegerField
      FieldName = 'tescodigo'
    end
  end
  object totrfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.etdcodigo'
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf'
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'AND lte.ltechave = :ltechave'
      'group by rfi.etdcodigo')
    Left = 376
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object totrfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object Dcco: TDataSource
    DataSet = cco
    OnDataChange = DccoDataChange
    Left = 72
    Top = 40
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cta.ctacodigo,'
      '  cta.ctaidentificacao,'
      '  cco.ccoemissao,'
      '  cco.ccovencimento,'
      '  cco.cconumero,'
      '  clt.ltechave,'
      '  cco.ccohistorico,'
      '  cco.ccochave,'
      'cco.ccovalor'
      'FROM clt'
      '  INNER JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      '  INNER JOIN cta'
      '    ON cco.ctacodigo = cta.ctacodigo'
      'where clt.ltechave=:ltechave')
    Left = 72
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object ccoltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ccoctacodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ctacodigo'
    end
    object ccoctaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Conta'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
    end
    object ccoccovencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ccovencimento'
    end
    object ccocconumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 250
    end
    object ccoccochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  dtl.dtlchave,'
      '  lte.ltechave,'
      '  cedcodigo,'
      '  dtl.mdacodigo,'
      '  IF(cedcodigo = 0, dtlvalor * -1, dtlvalor) AS dtlvalor,'
      '  mdaidentificacao,'
      '  lte.tfdcodigo,'
      '  mda.mdacodigo'
      'FROM dtl,'
      '     mda,'
      '     lte,'
      '     clt'
      'WHERE lte.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND dtl.mdacodigo = mda.mdacodigo'
      'AND clt.ccochave = :ccochave'
      'AND mda.mdacodigo not in (8)'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT '
      '  dtlchave,'
      '  lte.ltechave,'
      '  dtl.cedcodigo,'
      '  dtl.mdacodigo,'
      '  IF(dtl.cedcodigo = 0, dtlvalor * -1, dtlvalor) AS dtlvalor,'
      '  mdaidentificacao,'
      '  lte.tfdcodigo,'
      '  mda.mdacodigo'
      '  FROM dtl'
      'INNER JOIN mda ON dtl.mdacodigo = mda.mdacodigo'
      'INNER JOIN lte ON dtl.ltechave = lte.ltechave'
      'INNER JOIN lcv ON lte.ltechave = lcv.ltechave'
      'INNER JOIN mcr ON lcv.mcrchave = mcr.mcrchave'
      'INNER JOIN rcr ON mcr.rcrchave = rcr.rcrchave'
      'INNER JOIN mlt ON lte.ltechave = mlt.ltechave'
      'INNER JOIN mfi ON mlt.mfichave = mfi.mfichave'
      ' WHERE lte.ltechave = :ltechave'
      '  AND mda.mdacodigo in (8)')
    Left = 71
    Top = 136
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
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlmdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtldtlvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  etd.etdidentificacao,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  srf.srfidentificacao,'
      '  lte.ltechave'
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf'
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'AND lte.ltechave = :ltechave')
    Left = 119
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'etdcodigo'
    end
    object rfietdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfiltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object Processar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = ProcessarTimer
    Left = 552
    Top = 184
  end
  object rfm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfmchave,'
      '  rfichave,'
      '  meschave'
      'FROM rfm where meschave=:meschave')
    Left = 8
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object vrfi: TUniQuery
    Left = 56
    Top = 192
  end
  object rfitit: TUniQuery
    Left = 120
    Top = 192
  end
  object accm: TUniQuery
    Left = 528
    Top = 112
  end
  object mce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce limit 0')
    Left = 496
    Top = 256
    object mcemcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcemcemotivo: TStringField
      FieldName = 'mcemotivo'
      Size = 250
    end
    object mcemecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let where ltechave=:ltechave')
    Left = 264
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object Drfiv: TDataSource
    DataSet = rfiv
    Left = 304
    Top = 24
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'select cfgformacancelamento from cfgmsai')
    Left = 696
    Top = 88
    object cfgcfgformacancelamento: TIntegerField
      FieldName = 'cfgformacancelamento'
    end
  end
end
