object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 1225
  Height = 625
  TabOrder = 0
  object lblidPagamento: TLabel
    Left = 0
    Top = 540
    Width = 1225
    Height = 19
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = -3
    ExplicitTop = 503
    ExplicitWidth = 5
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 589
    Width = 1225
    Height = 33
    Margins.Left = 0
    Margins.Right = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -3
    ExplicitTop = 552
    ExplicitWidth = 1228
    object lblMesa: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 95
      Height = 30
      Margins.Left = 10
      Align = alLeft
      AutoSize = False
      Caption = 'Mesa 00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 28
    end
    object btcancelarrececimento: TButton
      AlignWithMargins = True
      Left = 1137
      Top = 3
      Width = 85
      Height = 27
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 1140
    end
  end
  object mmLogos: TMemo
    Left = 0
    Top = 559
    Width = 1225
    Height = 27
    Align = alBottom
    Lines.Strings = (
      'mmLogos')
    TabOrder = 1
    Visible = False
    ExplicitLeft = -3
    ExplicitTop = 522
    ExplicitWidth = 1228
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
      '  edrcodigo'
      'FROM tit'
      ' limit 0')
    Left = 718
    Top = 229
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
    object titedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  meschave,'
      '  mes.etdcodigo,'
      '  etd.etdidentificacao,'
      '  mes.edritem'
      'FROM mes,'
      '     etd'
      'WHERE mes.meschave = :meschave'
      'AND mes.etdcodigo = etd.etdcodigo')
    Left = 192
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object clt: TUniQuery
    SQL.Strings = (
      'select '
      '  cltchave,'
      '  ccochave,'
      '  ltechave,'
      '  dtlchave '
      'from clt '
      '    where '
      '  ccochave=:ccochave and '
      '  ltechave=:ltechave and'
      '  dtlchave=:dtlchave')
    Left = 752
    Top = 178
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
      end
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
    object cltcltchave: TIntegerField
      FieldName = 'cltchave'
    end
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
      Required = True
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
      Required = True
    end
    object cltdtlchave: TIntegerField
      FieldName = 'dtlchave'
      Required = True
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT ccochave'
      '     , ctacodigo'
      '     , toccodigo'
      '     , cedcodigo'
      '     , clbcodigo'
      '     , tficodigo'
      '     , ccoemissao'
      '     , ccovencimento'
      '     , cconumero'
      '     , ccohistorico'
      '     , ccovalor'
      '     , ccochaveorig'
      '     , ccochavedest'
      '     , ccoconciliado'
      '     , moecodigo'
      '     , ccoextenso'
      '     , etdcodigo'
      '     , ccofavorecido'
      '     , ccodatamov'
      '     , ccodataregistro'
      '     , ccohoraregistro'
      '     , flacodigo'
      'FROM cco'
      'WHERE cco.ccohistorico = :ccohistorico')
    Left = 700
    Top = 329
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccohistorico'
        Value = nil
      end>
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
    object ccoflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object mCco: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 664
    Top = 325
    object mCcoccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object mCcoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object mCcotoccodigo: TIntegerField
      FieldName = 'toccodigo'
    end
    object mCcocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object mCcoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mCcotficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object mCcoccoemissao: TDateField
      FieldName = 'ccoemissao'
    end
    object mCcoccovencimento: TDateField
      FieldName = 'ccovencimento'
    end
    object mCcocconumero: TStringField
      FieldName = 'cconumero'
    end
    object mCcoccohistorico: TStringField
      FieldName = 'ccohistorico'
      Size = 50
    end
    object mCcoccovalor: TFloatField
      FieldName = 'ccovalor'
    end
    object mCcoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object mCcoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object mCcoccoconciliado: TIntegerField
      FieldName = 'ccoconciliado'
    end
    object mCcomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mCcoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object mCcoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mCcoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 50
    end
    object mCcoccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object mCcoccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object mCcoccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object mCcoflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mCcodtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clb.clbcodigo,'
      '  clbidentificacao'
      'FROM clb,'
      '     orc'
      'WHERE orc.clbvendedor = clb.clbcodigo'
      'AND orcchave = :orcchave')
    Left = 205
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object rctpos: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rctchave,'
      '  rctvalor,'
      '  rctnrauto,'
      '  adccodigo,'
      '  rctparcelas,'
      '  bdccodigo,'
      '  rctcomprovante1via,'
      '  rctcomprovante2via,'
      '  rcthora,'
      '  orcchave,'
      '  rctstatus,'
      '  rctrede,'
      '  rcttoken'
      'FROM rct where orcchave=:orcchave')
    Left = 277
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object rctposrctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rctchave'
    end
    object rctposrctvalor: TCurrencyField
      DisplayLabel = 'Valor R$'
      FieldName = 'rctvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rctposrctrede: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'rctrede'
      Size = 50
    end
    object rctposrctnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rctnrauto'
      Size = 50
    end
    object rctposadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object rctposrctparcelas: TIntegerField
      FieldName = 'rctparcelas'
    end
    object rctposbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object rctposrctcomprovante1via: TStringField
      FieldName = 'rctcomprovante1via'
      Size = 1000
    end
    object rctposrctcomprovante2via: TStringField
      FieldName = 'rctcomprovante2via'
      Size = 1000
    end
    object rctposrcthora: TTimeField
      FieldName = 'rcthora'
    end
    object rctposorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object rctposrctstatus: TStringField
      FieldName = 'rctstatus'
      Size = 50
    end
    object rctposrcttoken: TStringField
      FieldName = 'rcttoken'
      Size = 500
    end
  end
  object Drctpos: TDataSource
    DataSet = rctpos
    Left = 317
    Top = 63
  end
  object car: TUniQuery
    SQL.Strings = (
      'select'
      '  carcodigo,'
      '  carpercmorames,'
      '  cardiasjuros'
      ''
      'FROM car '
      '    where bcocodigo='#39'000'#39';')
    Left = 560
    Top = 45
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcarpercmorames: TFloatField
      FieldName = 'carpercmorames'
    end
    object carcardiasjuros: TIntegerField
      FieldName = 'cardiasjuros'
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mltchave,'
      '  mfichave,'
      '  ltechave,'
      '  flacodigo'
      'FROM mlt'
      'WHERE mfichave = :mfichave AND ltechave=:ltechave')
    Left = 554
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object mltflacodigo: TIntegerField
      FieldName = 'flacodigo'
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
      '  mfiparcela,'
      '  flacodigo'
      'FROM mfi'
      'WHERE rfichave = :rfichave and tmfcodigo=:tmfcodigo')
    Left = 416
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
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
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object rfm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfmchave,'
      '  rfichave,'
      '  meschave,'
      '  flacodigo'
      'FROM rfm'
      'WHERE rfichave = :rfichave and meschave=:meschave')
    Left = 665
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
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
    object rfmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object dfcrfi: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 712
    Top = 168
    object dfcrfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfichave'
    end
    object dfcrfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object dfcrfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object dfcrfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
    end
    object dfcrfirfivalorparcela: TCurrencyField
      FieldName = 'rfivalorparcela'
    end
    object dfcrfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object dfcrfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
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
      '  titcodigo,'
      '  edrcodigo,'
      '  rfidatamulta,'
      '  rfivalomulta'
      ''
      'FROM rfi where titcodigo=:titcodigo')
    Left = 656
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
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
    object rfiedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object rfirfidatamulta: TDateField
      FieldName = 'rfidatamulta'
    end
    object rfirfivalomulta: TCurrencyField
      FieldName = 'rfivalomulta'
    end
  end
  object mRfi: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 620
    Top = 189
    object mRfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mRfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mRfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object mRfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mRfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object mRfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object mRficarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object mRfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object mRfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object mRfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object mRfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object mRfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object mRfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object mRfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
    end
    object mRfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object mRfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
    end
    object mRfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
    end
    object mRfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
    end
    object mRfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
    end
    object mRfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mRfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object mRfiedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object mRfidtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object mRfirfidatamulta: TDateField
      FieldName = 'rfidatamulta'
    end
    object mRfirfivalomulta: TCurrencyField
      FieldName = 'rfivalomulta'
    end
  end
  object mTit: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 750
    Top = 237
    object mTittitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object mTitetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object mTittitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object mTittitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mTittitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object mTittitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object mTittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object mTitsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object mTittficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object mTittithora: TTimeField
      FieldName = 'tithora'
    end
    object mTittithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object mTitclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mTittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mTittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object mTittitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object mTitmoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object mTittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mTittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mTittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object mTittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mTittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object mTitflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object mTitbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object mTitcarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object mTittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object mTittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
    object mTitedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object mTitdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
  object ltr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltrchave,'
      '  rdcchave,'
      '  dtlchave,'
      '  rdcnrauto'
      'FROM ltr'
      '  where rdcchave=:rdcchave '
      '  and rdcnrauto=:rdcnrauto')
    Left = 712
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rdcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rdcnrauto'
        Value = nil
      end>
    object ltrltrchave: TIntegerField
      FieldName = 'ltrchave'
    end
    object ltrrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object ltrdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltrrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 200
    end
  end
  object rdc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdcvalor,'
      '  rdcnrauto,'
      '  rdcdata,'
      '  adccodigo,'
      '  rdcparcelas,'
      '  bdccodigo,'
      '  rdccomprovante1via,'
      '  rdccomprovante2via,'
      '  rdchora,'
      '  dtlchave'
      'FROM rdc'
      
        '  where rdcnrauto=:rdcnrauto and rdcdata=:rdcdata and adccodigo=' +
        ':adccodigo and dtlchave=:dtlchave')
    Left = 672
    Top = 317
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rdcnrauto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rdcdata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'adccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
    object rdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object rdcrdcvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rdcvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rdcrdcnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Required = True
      Size = 200
    end
    object rdcrdcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object rdcadccodigo: TIntegerField
      DisplayLabel = 'Administradora'
      FieldName = 'adccodigo'
      Required = True
    end
    object rdcrdcparcelas: TIntegerField
      DisplayLabel = 'Parcelas'
      FieldName = 'rdcparcelas'
      Required = True
    end
    object rdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
      Required = True
    end
    object rdcrdccomprovante1via: TStringField
      FieldName = 'rdccomprovante1via'
      Size = 2000
    end
    object rdcrdccomprovante2via: TStringField
      FieldName = 'rdccomprovante2via'
      Size = 2000
    end
    object rdcrdchora: TTimeField
      FieldName = 'rdchora'
    end
    object rdcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
  object mRdc: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 636
    Top = 317
    object mRdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object mRdcrdcvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rdcvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mRdcrdcnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Required = True
      Size = 200
    end
    object mRdcrdcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object mRdcadccodigo: TIntegerField
      DisplayLabel = 'Administradora'
      FieldName = 'adccodigo'
      Required = True
    end
    object mRdcrdcparcelas: TIntegerField
      DisplayLabel = 'Parcelas'
      FieldName = 'rdcparcelas'
      Required = True
    end
    object mRdcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
      Required = True
    end
    object mRdcrdccomprovante1via: TStringField
      FieldName = 'rdccomprovante1via'
      Size = 2000
    end
    object mRdcrdccomprovante2via: TStringField
      FieldName = 'rdccomprovante2via'
      Size = 2000
    end
    object mRdcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT lte.ltechave'
      '     , lte.tfdcodigo'
      '     , lte.ltedata'
      '     , lte.lteprincipal'
      '     , lte.ltemulta'
      '     , lte.ltejuros'
      '     , lte.ltedesconto'
      '     , lte.ltetotal'
      '     , lte.lteextenso'
      '     , lte.clbcodigo'
      '     , lte.ctacodigo'
      '     , lte.ltetroco'
      '     , lte.flacodigo'
      '     , lte.ccxchave'
      '  FROM lte '
      '   where ltechave=:ltechave   ')
    Left = 492
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
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
    object lteclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ltectacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object lteltetroco: TFloatField
      FieldName = 'ltetroco'
    end
    object lteflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object lteccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
  end
  object mda: TUniQuery
    SQL.Strings = (
      
        'select mdacodigo, mdaidentificacao from mda where mdacodigo=:mda' +
        'codigo')
    Left = 672
    Top = 229
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        Value = nil
      end>
    object mdamdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object mdamdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'select '
      '   dtlchave, '
      '   ltechave, '
      '   cedcodigo, '
      '   dtl.mdacodigo, '
      '   dtlvalor, '
      '   dtlvalorinfo, '
      '   flacodigo, '
      '   ccxchave, '
      '   dtlregistro, '
      '   rdcnrauto,'
      '   mda.mdaidentificacao'
      ''
      'from dtl,mda '
      '   where dtl.mdacodigo=mda.mdacodigo'
      '   and ltechave=:ltechave')
    Left = 676
    Top = 272
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
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object dtldtlvalorinfo: TFloatField
      FieldName = 'dtlvalorinfo'
    end
    object dtlflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object dtlccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object dtldtlregistro: TDateTimeField
      FieldName = 'dtlregistro'
    end
    object dtlmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 50
    end
    object dtlrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 200
    end
  end
  object rctorc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rctchave,'
      '  rctvalor,'
      '  rctnrauto,'
      '  adccodigo,'
      '  rctparcelas,'
      '  bdccodigo,'
      '  rctcomprovante1via,'
      '  rctcomprovante2via,'
      '  rcthora,'
      '  orcchave,'
      '  rctstatus,'
      '  rctrede,'
      '  rcttoken,'
      '  rctjson'
      'FROM rct where orcchave=:orcchave')
    Left = 277
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object rctorcrctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rctchave'
    end
    object rctorcrctvalor: TCurrencyField
      DisplayLabel = 'Valor R$'
      FieldName = 'rctvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rctorcrctrede: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'rctrede'
      Size = 50
    end
    object rctorcrctnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rctnrauto'
      Size = 50
    end
    object rctorcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object rctorcrctparcelas: TIntegerField
      FieldName = 'rctparcelas'
    end
    object rctorcbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object rctorcrctcomprovante1via: TStringField
      FieldName = 'rctcomprovante1via'
      Size = 1000
    end
    object rctorcrctcomprovante2via: TStringField
      FieldName = 'rctcomprovante2via'
      Size = 1000
    end
    object rctorcrcthora: TTimeField
      FieldName = 'rcthora'
    end
    object rctorcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object rctorcrctstatus: TStringField
      FieldName = 'rctstatus'
      Size = 50
    end
    object rctorcrcttoken: TStringField
      FieldName = 'rcttoken'
      Size = 500
    end
    object rctorcrctjson: TStringField
      FieldName = 'rctjson'
      Size = 5000
    end
  end
  object mestem: TUniQuery
    Left = 428
    Top = 117
  end
  object orc: TUniQuery
    Left = 400
    Top = 88
  end
  object bdc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  bdccodigo,'
      '  bdcidentificacao,'
      '  trmestabelecimentotipotef,'
      '  bdcnaturza'
      'FROM bdc '
      '    WHERE lower(trmestabelecimentotipotef)='#39'skytef'#39'  '
      '     and lower(bdcidentificacao)=:bdcidentificacao'
      '     AND lower(bdcnaturza)=:bdcnatureza')
    Left = 512
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bdcidentificacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bdcnatureza'
        Value = nil
      end>
  end
  object rct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rctchave,'
      '  rctvalor,'
      '  rctnrauto,'
      '  adccodigo,'
      '  rctparcelas,'
      '  bdccodigo,'
      '  rctcomprovante1via,'
      '  rctcomprovante2via,'
      '  rcthora,'
      '  orcchave,'
      '  rctstatus,'
      '  rctrede,'
      '  rcttoken,'
      '  rctjson'
      'FROM rct where rctnrauto=:rctnrauto')
    Left = 184
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rctnrauto'
        Value = nil
      end>
    object rctrctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rctchave'
    end
    object rctrctvalor: TCurrencyField
      DisplayLabel = 'Valor R$'
      FieldName = 'rctvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rctrctrede: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'rctrede'
      Size = 50
    end
    object rctrctnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rctnrauto'
      Size = 50
    end
    object rctadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object rctrctparcelas: TIntegerField
      FieldName = 'rctparcelas'
    end
    object rctbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object rctrctcomprovante1via: TStringField
      FieldName = 'rctcomprovante1via'
      Size = 1000
    end
    object rctrctcomprovante2via: TStringField
      FieldName = 'rctcomprovante2via'
      Size = 1000
    end
    object rctrcthora: TTimeField
      FieldName = 'rcthora'
    end
    object rctorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object rctrctstatus: TStringField
      FieldName = 'rctstatus'
      Size = 50
    end
    object rctrcttoken: TStringField
      FieldName = 'rcttoken'
      Size = 500
    end
    object rctrctjson: TStringField
      FieldName = 'rctjson'
      Size = 5000
    end
  end
  object TimerFechaTela: TTimer
    Enabled = False
    Left = 280
    Top = 136
  end
  object TimerPagamento: TTimer
    Enabled = False
    Interval = 3000
    Left = 576
    Top = 144
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcidentificacao,'
      '  adcchaveintegracao,'
      '  adcserviconome'
      'FROM adc where adc.adcencerramento IS null')
    Left = 512
    Top = 120
  end
  object qrypos: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  poscodigo,'
      '  posidentificacao,'
      '  posnumeroserie,'
      '  clbcodigo'
      'FROM pos'
      '  where clbcodigo=:clbcodigo')
    Left = 760
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object qryposposcodigo: TIntegerField
      FieldName = 'poscodigo'
    end
    object qryposposidentificacao: TStringField
      FieldName = 'posidentificacao'
      Size = 500
    end
    object qryposposnumeroserie: TStringField
      FieldName = 'posnumeroserie'
      Size = 500
    end
  end
end
