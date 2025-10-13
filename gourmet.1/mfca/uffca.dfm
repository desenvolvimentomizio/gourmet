object ffca: Tffca
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Faturamento de Contratos'
  ClientHeight = 50
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mostra: TProgressBar
    Left = 16
    Top = 16
    Width = 265
    Height = 17
    TabOrder = 0
  end
  object cav: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cavchave,'
      '  acocodigo,'
      '  etdcodigo,'
      '  cavregistro,'
      '  cavpasta,'
      '  umocodigo,'
      '  crfcodigo,'
      '  cavvaloracao,'
      '  cavdiavcto,'
      '  cavpercentualmes,'
      '  cavvalormes,'
      '  cavobservacao,'
      '  clbcodigo,'
      '  cavpercentualmulta,'
      '  cavpercentualjuros'
      'FROM cav')
    Constraints = <>
    Left = 408
    Top = 24
    object cavcavchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'cavchave'
    end
    object cavcavpasta: TStringField
      DisplayLabel = 'Pasta'
      FieldName = 'cavpasta'
      Size = 50
    end
    object cavacocodigo: TIntegerField
      DisplayLabel = 'Tipo de A'#231#227'o'
      FieldName = 'acocodigo'
      Required = True
    end
    object cavetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object cavcavregistro: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'cavregistro'
    end
    object cavumocodigo: TIntegerField
      DisplayLabel = 'Unidade Mont'#225'ria'
      FieldName = 'umocodigo'
      Required = True
    end
    object cavcrfcodigo: TIntegerField
      DisplayLabel = #205'ndice de Corre'#231#227'o'
      FieldName = 'crfcodigo'
      Required = True
    end
    object cavcavvaloracao: TFloatField
      DisplayLabel = 'Valor da A'#231#227'o'
      FieldName = 'cavvaloracao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cavcavdiavcto: TIntegerField
      DisplayLabel = 'Dia de Vencimento Mensal'
      FieldName = 'cavdiavcto'
      Required = True
    end
    object cavcavpercentualmes: TFloatField
      DisplayLabel = 'Percentual do valor Mensal'
      FieldName = 'cavpercentualmes'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object cavcavvalormes: TFloatField
      DisplayLabel = 'Valor Mensal R$'
      FieldName = 'cavvalormes'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cavcavpercentualmulta: TFloatField
      DisplayLabel = 'Percentual da Multa por atrazo'
      FieldName = 'cavpercentualmulta'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object cavcavpercentualjuros: TFloatField
      DisplayLabel = 'Percentual de Juros por atrazo'
      FieldName = 'cavpercentualjuros'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object cavcavobservacao: TStringField
      FieldName = 'cavobservacao'
      Size = 50
    end
    object cavclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object cti: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ctichave,'
      '  cavchave,'
      '  titcodigo'
      'FROM cti')
    Constraints = <>
    Left = 408
    Top = 80
    object ctictichave: TIntegerField
      FieldName = 'ctichave'
    end
    object cticavchave: TIntegerField
      FieldName = 'cavchave'
      Required = True
    end
    object ctititcodigo: TIntegerField
      FieldName = 'titcodigo'
      Required = True
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
      '  titvalomulta,'
      '  tngcodigo,'
      '  phgcodigo'
      'FROM tit ')
    Constraints = <>
    Left = 456
    Top = 24
    object tittitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object titetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object tittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
      Required = True
    end
    object titflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object tittficodigo: TIntegerField
      FieldName = 'tficodigo'
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
    object tittitemissao: TDateField
      FieldName = 'titemissao'
      Required = True
    end
    object tittithora: TTimeField
      FieldName = 'tithora'
      Required = True
    end
    object titclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object tittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object tittitvctoinicial: TDateField
      FieldName = 'titvctoinicial'
      Required = True
    end
    object tittitnumero: TStringField
      FieldName = 'titnumero'
    end
    object tittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
    end
    object tittitvalor: TFloatField
      FieldName = 'titvalor'
      Required = True
    end
    object tittithistorico: TStringField
      FieldName = 'tithistorico'
      Size = 255
    end
    object titsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
      Required = True
    end
    object tittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
    end
    object tittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
    end
    object tittitrepetir: TIntegerField
      FieldName = 'titrepetir'
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
    object tittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
    end
    object tittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
    end
    object tittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
    end
    object tittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
    end
    object tittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
    end
    object tittngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
    object titphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
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
      '  rfidtprevisao,'
      '  rfisituacao,'
      '  tngcodigo,'
      '  rfimarca'
      'FROM rfi')
    Constraints = <>
    Left = 456
    Top = 88
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfititcodigo: TIntegerField
      FieldName = 'titcodigo'
      Required = True
    end
    object rfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object rfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
      Required = True
    end
    object rfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object rfitficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object rfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object rficarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object rfirfiemissao: TDateField
      FieldName = 'rfiemissao'
      Required = True
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
      Required = True
    end
    object rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      FieldName = 'rfivalor'
      Required = True
    end
    object rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
      Required = True
    end
    object rfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
      Required = True
    end
    object rfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
      Required = True
    end
    object rfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
      Required = True
    end
    object rfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
      Required = True
    end
    object rfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
      Required = True
    end
    object rfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
      Required = True
    end
    object rfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
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
    object rfirfidtprevisao: TDateField
      FieldName = 'rfidtprevisao'
    end
    object rfirfisituacao: TIntegerField
      FieldName = 'rfisituacao'
      Required = True
    end
    object rfitngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
    object rfirfimarca: TIntegerField
      FieldName = 'rfimarca'
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
      '  flacodigo,'
      '  mfisituacao'
      'FROM mfi')
    Constraints = <>
    Left = 512
    Top = 88
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
      Required = True
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
      Required = True
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
      Required = True
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
      Required = True
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 100
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
      Required = True
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
      Required = True
    end
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object mfimfisituacao: TIntegerField
      FieldName = 'mfisituacao'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmcre.cfgcodigo'
      '     , cfgmcre.cfgportadorpadrao'
      '     , cfgmcre.cfgtipodocpadrao'
      '     , cfgmcre.cfgviaassinar'
      '     , cfgmcre.cfgcontrolalimite'
      '     , cfgmcre.cfgfiltrarrec'
      '     , cfgmcre.cfgphgpadrao'
      '  FROM cfgmcre'
      ' WHERE cfgmcre.cfgcodigo = :cfgcodigo')
    Constraints = <>
    Left = 408
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgcfgportadorpadrao: TIntegerField
      FieldName = 'cfgportadorpadrao'
    end
    object cfgcfgtipodocpadrao: TIntegerField
      FieldName = 'cfgtipodocpadrao'
      Required = True
    end
    object cfgcfgviaassinar: TIntegerField
      FieldName = 'cfgviaassinar'
      Required = True
    end
    object cfgcfgcontrolalimite: TIntegerField
      FieldName = 'cfgcontrolalimite'
      Required = True
    end
    object cfgcfgfiltrarrec: TIntegerField
      FieldName = 'cfgfiltrarrec'
      Required = True
    end
    object cfgcfgphgpadrao: TIntegerField
      FieldName = 'cfgphgpadrao'
    end
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  carcodigo,'
      '  caridentificacao,'
      '  bcocodigo,'
      '  ctacodigo,'
      '  carconvenio,'
      '  carnumerocar,'
      '  carobs1,'
      '  carobs2,'
      '  carobs3,'
      '  caraceite,'
      '  cardescontado,'
      '  carregistrado,'
      '  carnumarqrem,'
      '  carlayout,'
      '  carcontrato,'
      '  carretorno,'
      '  cardiasmulta,'
      '  carpercmulta,'
      '  cardiasdesc,'
      '  carpercdesc,'
      '  carpercmorames,'
      '  carserienossonum,'
      '  carmodalidade,'
      '  carcodigocedente,'
      '  cargeraboleto,'
      '  cardiasjuros'
      'FROM car')
    Constraints = <>
    Left = 408
    Top = 208
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Required = True
      Size = 35
    end
    object carbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object carctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object carcarconvenio: TStringField
      FieldName = 'carconvenio'
      Size = 30
    end
    object carcarnumerocar: TStringField
      FieldName = 'carnumerocar'
    end
    object carcarobs1: TStringField
      FieldName = 'carobs1'
      Size = 50
    end
    object carcarobs2: TStringField
      FieldName = 'carobs2'
      Size = 50
    end
    object carcarobs3: TStringField
      FieldName = 'carobs3'
      Size = 50
    end
    object carcaraceite: TIntegerField
      FieldName = 'caraceite'
      Required = True
    end
    object carcardescontado: TIntegerField
      FieldName = 'cardescontado'
      Required = True
    end
    object carcarregistrado: TIntegerField
      FieldName = 'carregistrado'
      Required = True
    end
    object carcarnumarqrem: TStringField
      FieldName = 'carnumarqrem'
      Size = 30
    end
    object carcarlayout: TIntegerField
      FieldName = 'carlayout'
    end
    object carcarcontrato: TStringField
      FieldName = 'carcontrato'
    end
    object carcarretorno: TStringField
      FieldName = 'carretorno'
    end
    object carcardiasmulta: TIntegerField
      FieldName = 'cardiasmulta'
      Required = True
    end
    object carcarpercmulta: TFloatField
      FieldName = 'carpercmulta'
      Required = True
    end
    object carcardiasdesc: TIntegerField
      FieldName = 'cardiasdesc'
      Required = True
    end
    object carcarpercdesc: TFloatField
      FieldName = 'carpercdesc'
      Required = True
    end
    object carcarpercmorames: TFloatField
      FieldName = 'carpercmorames'
      Required = True
    end
    object carcarserienossonum: TIntegerField
      FieldName = 'carserienossonum'
      Required = True
    end
    object carcarmodalidade: TStringField
      FieldName = 'carmodalidade'
      Size = 10
    end
    object carcarcodigocedente: TStringField
      FieldName = 'carcodigocedente'
    end
    object carcargeraboleto: TIntegerField
      FieldName = 'cargeraboleto'
      Required = True
    end
    object carcardiasjuros: TIntegerField
      FieldName = 'cardiasjuros'
      Required = True
    end
  end
  object cum: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cumchave,'
      '  umocodigo,'
      '  cumdata,'
      '  cumvalor'
      'FROM cum')
    Constraints = <>
    Left = 456
    Top = 208
    object cumcumchave: TIntegerField
      FieldName = 'cumchave'
    end
    object cumumocodigo: TIntegerField
      FieldName = 'umocodigo'
      Required = True
    end
    object cumcumdata: TDateField
      FieldName = 'cumdata'
      Required = True
    end
    object cumcumvalor: TFloatField
      FieldName = 'cumvalor'
      Required = True
    end
  end
  object tmFechar: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmFecharTimer
    Left = 240
    Top = 8
  end
  object cri: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  crichave,'
      '  cavchave,'
      '  rfichave'
      'FROM cri')
    Constraints = <>
    Left = 408
    Top = 288
    object cricrichave: TIntegerField
      FieldName = 'crichave'
    end
    object cricavchave: TIntegerField
      FieldName = 'cavchave'
    end
    object crirfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
end
