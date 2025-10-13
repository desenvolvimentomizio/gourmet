object fdfc: Tfdfc
  Left = 0
  Top = 0
  ActiveControl = qtd
  BorderIcons = []
  Caption = 'Registro de Contas a Receber'
  ClientHeight = 378
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 31
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Defini'#231#227'o de Parcelas'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object plid: TPanel
      Left = 557
      Top = 6
      Width = 126
      Height = 19
      Align = alRight
      BevelOuter = bvNone
      Caption = '00-00-000'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 349
    Width = 689
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Incluindo'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 535
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      OnKeyDown = FormKeyDown
    end
    object bcancela: TBitBtn
      Left = 610
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
      OnKeyDown = FormKeyDown
    end
    object bfechar: TBitBtn
      Left = 470
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
      OnKeyDown = FormKeyDown
    end
  end
  object pltopo: TPanel
    Left = 0
    Top = 31
    Width = 689
    Height = 35
    Align = alTop
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object bvalidar: TBitBtn
      Left = 588
      Top = 5
      Width = 96
      Height = 25
      Align = alRight
      Caption = 'Registrar'
      TabOrder = 2
      OnClick = bvalidarClick
      OnKeyDown = FormKeyDown
    end
    object qtd: TEdit
      Left = 542
      Top = 5
      Width = 30
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      Color = 7471103
      NumbersOnly = True
      TabOrder = 1
      OnKeyDown = FormKeyDown
      OnKeyPress = DBGListaKeyPress
      ExplicitHeight = 24
    end
    object Panel1: TPanel
      Left = 572
      Top = 5
      Width = 16
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 280
      Top = 5
      Width = 262
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Quantidade de parcelas a registrar:'
      TabOrder = 4
    end
    object totalemconvenio: TEdit
      Left = 154
      Top = 5
      Width = 126
      Height = 25
      TabStop = False
      Align = alRight
      Alignment = taRightJustify
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = FormKeyDown
      ExplicitHeight = 24
    end
    object Panel3: TPanel
      Left = -150
      Top = 5
      Width = 304
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Total em Conv'#234'nio R$'
      TabOrder = 5
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 66
    Width = 689
    Height = 283
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = Drfi
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = DBGListaColEnter
    OnDrawColumnCell = DBGListaDrawColumnCell
    OnKeyDown = DBGListaKeyDown
    OnKeyPress = DBGListaKeyPress
    OnKeyUp = DBGListaKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'rfinumero'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rfivencimento'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rfivalor'
        Visible = True
      end>
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  rfi.flacodigo,'
      '  rfi.tfdcodigo,'
      '  rfi.tficodigo,'
      '  rfi.bcocodigo,'
      '  rfi.carcodigo,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  rfi.frrcodigo,'
      '  rfi.rfimoradia,'
      '  rfi.rfipercmesmora,'
      '  rfi.rfirepetir,'
      '  rfi.rfiprevisao,'
      '  rfi.rfivalorparcela,'
      '  rfi.moecodigo,'
      '  rfi.rfimoradia,'
      '  rfi.rfidatamulta,'
      '  rfi.rfivalomulta,'
      '  rfi.rfivalodesc,'
      '  rfi.rfidatadesc,'
      '  rfi.rfipercmulta,'
      '  rfi.rfidtultbaixa,'
      '  rfi.titcodigo,'
      '  rfi.edrcodigo'
      'FROM rfi'
      'where rfichave=:rfichave')
    Left = 372
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
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
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
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
    object rfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object rfiedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      
        'select mfichave, rfichave, tmfcodigo, moecodigo, mfivalor, mfida' +
        'ta,'
      
        'mfihistorico, mfivalorori, mfiparcela, flacodigo from mfi where ' +
        'rfichave=:rfichave and flacodigo=:flacodigo')
    Left = 372
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
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
  object Drfi: TUniDataSource
    DataSet = rfi
    OnStateChange = DrfiStateChange
    Left = 372
    Top = 204
  end
  object rfm: TUniQuery
    SQL.Strings = (
      'select rfmchave, rfichave, meschave,flacodigo from rfm limit 2')
    Left = 468
    Top = 160
    object rfmrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      
        'select etdcodigo, meschave,mesnumero,mestotal,mesemissao,clbcodi' +
        'go from mes where meschave=:meschave')
    Left = 468
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesmesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object mesmestotal: TFloatField
      FieldName = 'mestotal'
    end
    object mesmesemissao: TDateField
      FieldName = 'mesemissao'
    end
    object mesclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  m.mltchave,'
      '  m.mfichave,'
      '  m.ltechave,'
      '  m.flacodigo'
      'FROM mlt m')
    Left = 472
    Top = 264
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
      '  tit.edrcodigo'
      'FROM tit'
      'where titcodigo=:titcodigo')
    Left = 224
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
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
  object consulta: TUniQuery
    Left = 268
    Top = 176
  end
  object trfi: TVirtualTable
    Left = 560
    Top = 164
    Data = {04000000000000000000}
    object trfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfichave'
    end
    object trfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object trfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object trfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object trfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object trfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object trficarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object trfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object trfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object trfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object trfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
    end
    object trfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object trfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object trfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
    end
    object trfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object trfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
    end
    object trfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
    end
    object trfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
    end
    object trfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
    end
    object trfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object trfirfidatamulta: TDateField
      FieldName = 'rfidatamulta'
    end
    object trfirfivalomulta: TFloatField
      FieldName = 'rfivalomulta'
      Required = True
    end
    object trfirfivalodesc: TFloatField
      FieldName = 'rfivalodesc'
      Required = True
    end
    object trfirfidatadesc: TDateField
      FieldName = 'rfidatadesc'
    end
    object trfirfipercmulta: TFloatField
      FieldName = 'rfipercmulta'
      Required = True
    end
    object trfirfidtultbaixa: TDateField
      FieldName = 'rfidtultbaixa'
    end
    object trfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object trfiedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
  end
  object rng: TUniQuery
    SQL.Strings = (
      'SELECT r.rngchave'
      '     , r.etdcodigo'
      '     , r.clbcodigo'
      '     , r.ltechave'
      '     , l.ltetotal'
      '     , r.rngregistro'
      'FROM rng r'
      '  JOIN lte l'
      '    ON r.ltechave = l.ltechave'
      'WHERE r.rngchave = :rngchave')
    Left = 552
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object rngrngchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rngchave'
    end
    object rngetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object rngclbcodigo: TIntegerField
      DisplayLabel = 'Negociador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object rngltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object rngltetotal: TFloatField
      FieldName = 'ltetotal'
    end
    object rngrngregistro: TDateTimeField
      FieldName = 'rngregistro'
    end
  end
  object etl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etlchave,'
      '  etdcodigo,'
      '  etllimitetotal,'
      '  etltipo,'
      '  etldias'
      'FROM etl'
      'where etdcodigo=:etdcodigo')
    Left = 616
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etletlchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'etlchave'
    end
    object etletdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object etletllimitetotal: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'etllimitetotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object etletltipo: TIntegerField
      DisplayLabel = 'Tipo de Faturamento'
      FieldName = 'etltipo'
      Required = True
    end
    object etletldias: TIntegerField
      DisplayLabel = 'Dias / Dia Fixo'
      FieldName = 'etldias'
      Required = True
    end
  end
  object orc: TUniQuery
    SQL.Strings = (
      
        'select edrcodigo from orc,mor where orc.orcchave=mor.orcchave an' +
        'd mor.meschave=:meschave')
    Left = 184
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object Temprfi: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 72
    Top = 160
    object Temprfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfichave'
    end
    object Temprfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object Temprfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object Temprfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object Temprfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object Temprfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object Temprficarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object Temprfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object Temprfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object Temprfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object Temprfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
    end
    object Temprfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object Temprfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object Temprfifrrcodigo: TIntegerField
      FieldName = 'frrcodigo'
    end
    object Temprfirfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object Temprfirfipercmesmora: TFloatField
      FieldName = 'rfipercmesmora'
    end
    object Temprfirfirepetir: TIntegerField
      FieldName = 'rfirepetir'
    end
    object Temprfirfiprevisao: TIntegerField
      FieldName = 'rfiprevisao'
    end
    object Temprfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
    end
    object Temprfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object Temprfirfidatamulta: TDateField
      FieldName = 'rfidatamulta'
    end
    object Temprfirfivalomulta: TFloatField
      FieldName = 'rfivalomulta'
      Required = True
    end
    object Temprfirfivalodesc: TFloatField
      FieldName = 'rfivalodesc'
      Required = True
    end
    object Temprfirfidatadesc: TDateField
      FieldName = 'rfidatadesc'
    end
    object Temprfirfipercmulta: TFloatField
      FieldName = 'rfipercmulta'
      Required = True
    end
    object Temprfirfidtultbaixa: TDateField
      FieldName = 'rfidtultbaixa'
    end
    object Temprfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object Temprfiedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
  end
  object nrfi: TUniQuery
    Left = 528
    Top = 112
  end
end
