inherited ftit: Tftit
  ActiveControl = phgcodigo
  Caption = 'Registro Manual'
  ClientHeight = 202
  ExplicitWidth = 812
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    ExplicitTop = 173
  end
  inherited paginas: TPageControl
    Height = 173
    ExplicitHeight = 173
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 145
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = titcodigo
      end
      object Label2: TLabel
        Left = 6
        Top = 60
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento do Hist'#243'rico'
        FocusControl = tithistorico
      end
      object Label3: TLabel
        Left = 6
        Top = 114
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = titvalor
      end
      object Label4: TLabel
        Left = 6
        Top = 87
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Base'
        FocusControl = titvctoinicial
      end
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object titcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tithistorico: TDBEdit
        Left = 136
        Top = 57
        Width = 626
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tithistorico'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object titvalor: TDBEdit
        Left = 136
        Top = 111
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvalor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object titvctoinicial: TDBEdit
        Left = 136
        Top = 84
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvctoinicial'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgetdempresa from cfgmcfg where cfgcodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited registro: TUniQuery
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
      'FROM tit where titcodigo=:titcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object registrotitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registrotitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object registrotitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object registrotitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrotfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object registrosrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object registrotficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object registrotithora: TTimeField
      FieldName = 'tithora'
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registrotithistorico: TStringField
      DisplayLabel = 'Origem do Valor'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object registrotitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object registrotitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrotitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object registrobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrocarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object registrotitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object registrotitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tit: TUniQuery
    Left = 500
    Top = 64
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
      '  titcodigo'
      'FROM rfi ')
    Left = 424
    Top = 22
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
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'select mfichave, rfichave, tmfcodigo, moecodigo,  mfivalor,'
      
        'mfidata, mfihistorico, mfivalorori, mfiparcela,flacodigo from mf' +
        'i limit 2')
    Left = 352
    Top = 6
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
  object mlt: TUniQuery
    SQL.Strings = (
      'select mltchave,mfichave, ltechave,flacodigo from mlt limit 2')
    Left = 498
    Top = 22
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
      '  ltesituacao,'
      '  flacodigo,'
      '  clbcodigo,'
      '  ctacodigo,'
      '  lteregistro,'
      '  ltetroco'
      'FROM lte')
    Left = 652
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
    object lteltesituacao: TIntegerField
      FieldName = 'ltesituacao'
      Required = True
    end
    object lteflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object lteclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ltectacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ltelteregistro: TDateTimeField
      FieldName = 'lteregistro'
    end
    object lteltetroco: TFloatField
      FieldName = 'ltetroco'
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 572
    Top = 24
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
