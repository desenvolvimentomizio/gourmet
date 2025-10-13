inherited frfisrv: Tfrfisrv
  ActiveControl = bcocodigo
  Caption = 'Registro de Cobran'#231'a'
  ClientHeight = 405
  ClientWidth = 708
  ExplicitWidth = 724
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 376
    Width = 708
    ExplicitTop = 376
    ExplicitWidth = 708
    inherited bconfirma: TBitBtn
      Left = 554
      ExplicitLeft = 548
      ExplicitTop = 2
    end
    inherited bcancela: TBitBtn
      Left = 629
      ExplicitLeft = 629
    end
    inherited bfechar: TBitBtn
      Left = 489
      ExplicitLeft = 489
    end
  end
  inherited paginas: TPageControl
    Width = 708
    Height = 376
    ExplicitWidth = 708
    ExplicitHeight = 376
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 700
      ExplicitHeight = 348
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = titcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fornecedor'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 9
        Top = 60
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Emiss'#227'o'
        FocusControl = titemissao
      end
      object Label8: TLabel
        Left = 8
        Top = 87
        Width = 118
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = 'Vencimento'
        FocusControl = titvctoinicial
      end
      object Label4: TLabel
        Left = 9
        Top = 114
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de documento'
        FocusControl = tficodigo
      end
      object Label17: TLabel
        Left = 472
        Top = 114
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero / Refer'#234'ncia'
        FocusControl = titnumero
      end
      object Label9: TLabel
        Left = 9
        Top = 141
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Portador'
        FocusControl = bcocodigo
      end
      object Label10: TLabel
        Left = 9
        Top = 168
        Width = 94
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Forma de Cobran'#231'a'
        FocusControl = carcodigo
      end
      object ltitvalorparcela: TLabel
        Left = 8
        Top = 195
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do T'#237'tulo R$'
        FocusControl = titvalorparcela
      end
      object lmoecodigo: TLabel
        Left = 304
        Top = 195
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Moeda / '#205'ndice'
        FocusControl = moecodigo
        Visible = False
      end
      object ltitmoradia: TLabel
        Left = 9
        Top = 222
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do mora di'#225'ria R$'
        Enabled = False
        FocusControl = titmoradia
      end
      object ltitpercmesmora: TLabel
        Left = 244
        Top = 222
        Width = 144
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de mora ao m'#234's %'
        Enabled = False
        FocusControl = titpercmesmora
      end
      object ltitdiasdesc: TLabel
        Left = 8
        Top = 249
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias para desconto'
        Enabled = False
        FocusControl = titdiasdesc
      end
      object ltitvalodesc: TLabel
        Left = 287
        Top = 303
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do desconto R$'
        Enabled = False
        FocusControl = titvalodesc
      end
      object ltitdiasmulta: TLabel
        Left = 8
        Top = 276
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Multa ap'#243's dias'
        Enabled = False
        FocusControl = titdiasmulta
      end
      object ltitpercmesmulta: TLabel
        Left = 276
        Top = 276
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual  da multa %'
        Enabled = False
      end
      object ltitvalomulta: TLabel
        Left = 489
        Top = 276
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da multa R$'
        Enabled = False
        FocusControl = titvalomulta
      end
      object Label12: TLabel
        Left = 8
        Top = 303
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = tithistorico
      end
      object titcodigo: TDBEdit
        Left = 152
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 152
        Top = 30
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object titemissao: TDBEdit
        Left = 151
        Top = 57
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titemissao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object titvctoinicial: TDBEdit
        Left = 152
        Top = 84
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvctoinicial'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = titvctoinicialExit
      end
      object tficodigo: TDBEdit
        Left = 152
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tficodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = tficodigoExit
      end
      object titnumero: TDBEdit
        Left = 577
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titnumero'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object bcocodigo: TDBEdit
        Left = 152
        Top = 138
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object carcodigo: TDBEdit
        Left = 152
        Top = 165
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object titvalorparcela: TDBEdit
        Left = 152
        Top = 192
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvalorparcela'
        DataSource = DSRegistro
        TabOrder = 8
        OnExit = titvalorparcelaExit
      end
      object moecodigo: TDBEdit
        Left = 381
        Top = 192
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moecodigo'
        DataSource = DSRegistro
        TabOrder = 9
        Visible = False
      end
      object titmoradia: TDBEdit
        Left = 152
        Top = 219
        Width = 82
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titmoradia'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 10
        OnExit = titmoradiaExit
      end
      object titpercmesmora: TDBEdit
        Left = 394
        Top = 219
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titpercmesmora'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 11
        OnExit = titpercmesmoraExit
      end
      object titdiasdesc: TDBEdit
        Left = 151
        Top = 246
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titdiasdesc'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 12
      end
      object titvalodesc: TDBEdit
        Left = 394
        Top = 246
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvalodesc'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 13
      end
      object titdiasmulta: TDBEdit
        Left = 151
        Top = 273
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titdiasmulta'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 14
      end
      object titpercmulta: TDBEdit
        Left = 394
        Top = 273
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titpercmulta'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 15
        OnExit = titpercmultaExit
      end
      object titvalomulta: TDBEdit
        Left = 579
        Top = 273
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titvalomulta'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 16
        OnExit = titvalomultaExit
      end
      object tithistorico: TDBEdit
        Left = 151
        Top = 300
        Width = 521
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tithistorico'
        DataSource = DSRegistro
        TabOrder = 17
      end
    end
  end
  inherited registro: TUniQuery
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
      '  tit.titpercmulta'
      ''
      'FROM tit'
      'where titcodigo=:titcodigo')
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
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrotitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
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
    object registrotfiidentificacao: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'tfiidentificacao'
      LookupDataSet = tfi
      LookupKeyFields = 'tficodigo'
      LookupResultField = 'tfiidentificacao'
      KeyFields = 'tficodigo'
      Required = True
      Size = 25
      Lookup = True
    end
    object registrotithora: TTimeField
      FieldName = 'tithora'
    end
    object registrotithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
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
    object registrosenprevisao: TStringField
      FieldKind = fkLookup
      FieldName = 'senprevisao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'titprevisao'
      Size = 5
      Lookup = True
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object registromoeidentificacao: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'moeidentificacao'
      LookupDataSet = moe
      LookupKeyFields = 'moecodigo'
      LookupResultField = 'moeidentificacao'
      KeyFields = 'moecodigo'
      Size = 25
      Lookup = True
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
    object registrobconome: TStringField
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 50
      Lookup = True
    end
    object registrocarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object registrocaridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'caridentificacao'
      LookupDataSet = car
      LookupKeyFields = 'carcodigo'
      LookupResultField = 'caridentificacao'
      KeyFields = 'carcodigo'
      Size = 50
      Lookup = True
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
  inherited dcp: TUniQuery
    Left = 288
    Top = 468
  end
  inherited dtb: TUniQuery
    Left = 244
    Top = 468
  end
  inherited coa: TUniQuery
    Left = 96
    Top = 420
  end
  inherited pfr: TUniQuery
    Left = 464
    Top = 44
  end
  inherited psf: TUniQuery
    Left = 504
    Top = 36
  end
  inherited dcl: TUniQuery
    Left = 540
    Top = 32
  end
  inherited cau: TUniQuery
    Left = 584
    Top = 32
  end
  inherited cpg: TUniQuery
    Left = 92
    Top = 480
  end
  inherited cpc: TUniQuery
    Left = 93
    Top = 529
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object car: TUniQuery
    SQL.Strings = (
      
        'select carcodigo, caridentificacao,cardiasmulta,carpercmulta,car' +
        'percmorames,cardiasdesc,carpercdesc from car')
    Left = 740
    Top = 80
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Size = 50
    end
    object carcardiasmulta: TIntegerField
      FieldName = 'cardiasmulta'
    end
    object carcarpercmulta: TFloatField
      FieldName = 'carpercmulta'
    end
    object carcarpercmorames: TFloatField
      FieldName = 'carpercmorames'
    end
    object carcardiasdesc: TIntegerField
      FieldName = 'cardiasdesc'
    end
    object carcarpercdesc: TFloatField
      FieldName = 'carpercdesc'
    end
  end
  object tfi: TUniQuery
    SQL.Strings = (
      'select tficodigo, tfiidentificacao from tfi')
    Left = 784
    Top = 80
    object tfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object tfitfiidentificacao: TStringField
      FieldName = 'tfiidentificacao'
      Size = 35
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 808
    Top = 80
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 816
    Top = 128
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object bco: TUniQuery
    SQL.Strings = (
      'select bcocodigo, bconome from bco')
    Left = 784
    Top = 176
    object bcobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object bcobconome: TStringField
      FieldName = 'bconome'
      Size = 50
    end
  end
  object moe: TUniQuery
    SQL.Strings = (
      'select moecodigo, moeidentificacao from moe')
    Left = 784
    Top = 128
    object moemoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object moemoeidentificacao: TStringField
      FieldName = 'moeidentificacao'
      Size = 30
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfi.mfichave,'
      '  mfi.rfichave,'
      '  mfi.tmfcodigo,'
      '  mfi.moecodigo,'
      '  mfi.mfivalor,'
      '  mfi.mfidata,'
      '  mfi.mfihistorico,'
      '  mfi.mfivalorori,'
      '  mfi.mfiparcela'
      'FROM mfi'
      'WHERE mfi.rfichave = :rfichave')
    Left = 756
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
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
      '  rfi.rfidatamulta,'
      '  rfi.rfivalomulta,'
      '  rfi.rfivalodesc,'
      '  rfi.rfidatadesc,'
      '  rfi.rfipercmulta,'
      '  rfi.rfidtultbaixa,'
      '  rfi.titcodigo'
      'FROM rfi'
      'WHERE rfi.titcodigo = :titcodigo')
    Left = 752
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
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
    object rfititcodigo: TIntegerField
      FieldName = 'titcodigo'
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
  end
  object mes: TUniQuery
    SQL.Strings = (
      
        'SELECT mes.etdcodigo, mes.mesprodutos, mes.mesnumero, mes.mesreg' +
        'istro, mes.meschave FROM mes '
      'where mes.meschave=:meschave')
    Left = 628
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mesmesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
    end
  end
  object rfm: TUniQuery
    SQL.Strings = (
      
        'select rfmchave, rfichave, meschave from rfm where rfichave=:rfi' +
        'chave')
    Left = 508
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object rfmrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
end
