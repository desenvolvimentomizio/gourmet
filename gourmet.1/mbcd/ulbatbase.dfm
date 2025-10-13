object lbatbase: Tlbatbase
  Left = 0
  Top = 0
  ActiveControl = EdBusca
  Caption = 'Busca'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object pbotoes: TPanel
    Left = 0
    Top = 700
    Width = 1008
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
      Color = 4227327
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
      Left = 854
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bconfirmaClick
      OnKeyPress = FormKeyPress
    end
    object bsair: TBitBtn
      Left = 929
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bsairClick
      OnKeyPress = FormKeyPress
    end
    object breimprimir: TBitBtn
      Left = 99
      Top = 4
      Width = 118
      Height = 21
      Align = alLeft
      Caption = 'Remimprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = MenuGerador
      TabOrder = 3
      OnClick = breimprimirClick
      OnKeyPress = FormKeyPress
    end
    object bbaixarsemconfirmacao: TButton
      Left = 217
      Top = 4
      Width = 204
      Height = 21
      Align = alLeft
      Caption = 'Baixar sem confirma'#231#227'o'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bbaixarsemconfirmacaoClick
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 429
    Width = 1008
    Height = 271
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Caption = ' Itens do Condicional '
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object DBGListaItens: TDBGrid
      Left = 2
      Top = 16
      Width = 1004
      Height = 162
      Align = alClient
      Color = 13434879
      DataSource = Dlito
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnKeyPress = FormKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'procodigo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pronome'
          Width = 420
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itoquantidade'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itovalor'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itototal'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itodesconto'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itosaldo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stoidentificacao'
          Width = 120
          Visible = True
        end>
    end
    object pservico: TPanel
      Left = 2
      Top = 178
      Width = 1004
      Height = 91
      Align = alBottom
      Color = 14155775
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 1002
        Height = 24
        Align = alTop
        Caption = 'D e s c r i '#231' '#227' o   d o   S e r v i '#231' o :'
        Color = 16757092
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object itoproservico: TDBMemo
        Left = 1
        Top = 25
        Width = 1002
        Height = 65
        Align = alClient
        Color = clCream
        DataField = 'itoproservico'
        DataSource = Dlito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object PnlDadosCliente: TPanel
    Left = 0
    Top = 329
    Width = 1008
    Height = 95
    Align = alBottom
    BevelOuter = bvNone
    Color = 16771809
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 38
      Width = 60
      Height = 16
      Caption = 'Endere'#231'o'
      FocusControl = edrrua
    end
    object Label2: TLabel
      Left = 606
      Top = 38
      Width = 49
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = edrnumero
    end
    object Label3: TLabel
      Left = 12
      Top = 69
      Width = 39
      Height = 16
      Caption = 'Bairro'
      FocusControl = edrbairro
    end
    object Label4: TLabel
      Left = 392
      Top = 68
      Width = 43
      Height = 16
      Caption = 'Cidade'
      FocusControl = cddnome
    end
    object Label5: TLabel
      Left = 872
      Top = 68
      Width = 23
      Height = 16
      Caption = 'CEP'
      FocusControl = edrcep
    end
    object Label7: TLabel
      Left = 814
      Top = 38
      Width = 55
      Height = 16
      Caption = 'Telefone'
      FocusControl = etftelefone
    end
    object Label6: TLabel
      Left = 781
      Top = 68
      Width = 14
      Height = 16
      Caption = 'UF'
      FocusControl = ufssigla
    end
    object edrrua: TDBEdit
      Left = 106
      Top = 35
      Width = 454
      Height = 24
      Color = 16744448
      DataField = 'edrrua'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edrnumero: TDBEdit
      Left = 679
      Top = 35
      Width = 81
      Height = 24
      Color = 16744448
      DataField = 'edrnumero'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edrbairro: TDBEdit
      Left = 106
      Top = 65
      Width = 270
      Height = 24
      Color = 16744448
      DataField = 'edrbairro'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object cddnome: TDBEdit
      Left = 447
      Top = 65
      Width = 324
      Height = 24
      Color = 16744448
      DataField = 'cddnome'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edrcep: TDBEdit
      Left = 907
      Top = 65
      Width = 99
      Height = 24
      Color = 16744448
      DataField = 'edrcep'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object etftelefone: TDBEdit
      Left = 889
      Top = 35
      Width = 117
      Height = 24
      Color = 16744448
      DataField = 'etftelefone'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object ufssigla: TDBEdit
      Left = 805
      Top = 65
      Width = 37
      Height = 24
      Color = 16744448
      DataField = 'ufssigla'
      DataSource = Detd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object PnlNomeCliente: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 28
      Align = alTop
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      object LbDadosConsumidor: TLabel
        Left = 11
        Top = 1
        Width = 996
        Height = 26
        Align = alClient
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'Dados do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 1008
    Height = 40
    Align = alTop
    BorderWidth = 6
    TabOrder = 3
    object EdBusca: TEdit
      Left = 353
      Top = 7
      Width = 380
      Height = 26
      Align = alLeft
      TabOrder = 0
      OnKeyPress = FormKeyPress
      OnKeyUp = EdBuscaKeyUp
    end
    object Panel3: TPanel
      Left = 7
      Top = 7
      Width = 346
      Height = 26
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Nome do Cliente   (  *  mostra todos em aberto)   '
      TabOrder = 1
    end
    object baixados: TCheckBox
      Left = 754
      Top = 11
      Width = 151
      Height = 17
      Caption = 'Mostrar Baixados'
      TabOrder = 2
      OnClick = baixadosClick
      OnKeyPress = FormKeyPress
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 66
    Width = 1008
    Height = 263
    Align = alClient
    Color = 13434879
    DataSource = DsTabela
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGListaDblClick
    OnKeyPress = FormKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'orcchave'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcdataabert'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdcodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdidentificacao'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcgeral'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcdesconto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orctotal'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'puoidentificacao'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stoidentificacao'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clbidentificacao'
        Visible = True
      end>
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'T'#237'tulo'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.tsecodigo,'
      '  edr.etdcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrbairro,'
      '  edr.edrcep,'
      '  etf.etftelefone,'
      '  cdd.cddnome,'
      '  ufs.ufssigla'
      'FROM etd,'
      '     edr,'
      '     etf,'
      '     cdd,'
      '     ufs'
      'WHERE edr.etdcodigo = etd.etdcodigo'
      'AND edr.etdcodigo = etf.etdcodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND edr.ufscodigo = ufs.ufscodigo'
      'AND edr.tedcodigo = 1'
      'AND etf.ttfcodigo = 1'
      'AND edr.edrcodigo = :edrcodigo')
    Left = 404
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'edrcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object etdetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object etdtsecodigo: TIntegerField
      FieldName = 'tsecodigo'
      Required = True
    end
    object etdcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object etdufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 3
    end
    object etdedrcep: TStringField
      FieldName = 'edrcep'
      Size = 10
    end
  end
  object Detd: TUniDataSource
    DataSet = etd
    OnDataChange = DetdDataChange
    Left = 364
    Top = 240
  end
  object lito: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ito.itochave,'
      '  ito.orcchave,'
      '  ito.procodigo,'
      '  pro.pronome,'
      '  ito.itoquantidade,'
      
        '  IF(vOrc.puocodigo = 0, ito.itovalorav, ito.itovalorap) AS itov' +
        'alor,'
      
        '  IF(vOrc.puocodigo = 0, ito.itototalav, ito.itototalap) AS itot' +
        'otal,'
      
        '  IF(vOrc.puocodigo = 0, ito.itodescontoav, ito.itodescontoap) A' +
        'S itodesconto,'
      
        '  IF(vOrc.puocodigo = 0, ito.itosaldoav, ito.itosaldoap) AS itos' +
        'aldo,'
      '  ito.stocodigo,'
      '  ito.itoproservico,'
      '  ito.itoprocomple,'
      '  ito.unicodigo,'
      '  sto.stoidentificacao'
      'FROM ito'
      '       JOIN (SELECT'
      '           orc.orcchave AS ChaveOrc,'
      '           orc.puocodigo'
      '         FROM orc) vOrc'
      '         ON vOrc.ChaveOrc = ito.orcchave,'
      '     pro,'
      '     sto'
      'WHERE ito.procodigo = pro.procodigo'
      'AND sto.stocodigo = ito.stocodigo')
    MasterSource = DsTabela
    MasterFields = 'orcchave'
    DetailFields = 'orcchave'
    Left = 244
    Top = 524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object litoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litopronome: TStringField
      DisplayLabel = 'Nome do Produto / Servi'#231'o'
      FieldName = 'pronome'
      Size = 150
    end
    object litoitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litoitovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitototal: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'itototal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitodesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itodesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitosaldo: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itosaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litostoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object litoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
  end
  object Dlito: TUniDataSource
    DataSet = lito
    OnDataChange = DlitoDataChange
    Left = 300
    Top = 528
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 632
    Top = 176
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object consulta: TUniQuery
    Left = 584
    Top = 172
  end
  object UqTabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  orc.orcchave,'
      '  orc.etdcodigo,'
      
        '  IF(orc.etdcodigo = 0, IF(orc.orcnome <> '#39#39', CONCAT(orc.orcnome' +
        ', IFNULL(CONCAT('#39' - '#39', orc.orcendereco), '#39#39'), IFNULL(CONCAT('#39' - ' +
        #39', orc.orctelefone), '#39#39')), '#39'Consumidor'#39'), etd.etdidentificacao) ' +
        'AS etdidentificacao,'
      '  orc.orcdataabert,'
      
        '  IF(orc.puocodigo = 0, orc.orcgeralav, orc.orcgeralap) AS orcge' +
        'ral,'
      
        '  IF(orc.puocodigo = 0, orc.orcdescontoav, orc.orcdescontoap) AS' +
        ' orcdesconto,'
      
        '  IF(orc.puocodigo = 0, orc.orctotalav, orc.orctotalap) AS orcto' +
        'tal,'
      '  orc.stocodigo,'
      '  sto.stoidentificacao,'
      '  orc.clbcodigo,'
      '  orc.moccodigo,'
      '  orc.orcnome,'
      '  orc.orctelefone,'
      '  orc.orcendereco,'
      '  orc.orcdescrpagto,'
      '  orc.puocodigo,'
      '  puo.puoidentificacao,'
      '  orc.edrcodigo'
      'FROM orc,'
      '     etd,'
      '     sto,'
      '     puo'
      'WHERE orc.etdcodigo = etd.etdcodigo'
      'AND sto.stocodigo = orc.stocodigo'
      'AND puo.puocodigo = orc.puocodigo'
      'AND moccodigo = :moccodigo')
    Left = 200
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'moccodigo'
        Value = nil
      end>
    object UqTabelaorcchave: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'orcchave'
      Required = True
    end
    object UqTabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'etdcodigo'
      Required = True
    end
    object UqTabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      DisplayWidth = 40
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object UqTabelaorcdataabert: TDateField
      DisplayLabel = 'Abertura'
      FieldName = 'orcdataabert'
      Required = True
    end
    object UqTabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Visible = False
    end
    object UqTabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 15
      Lookup = True
    end
    object UqTabelaorcnome: TStringField
      FieldName = 'orcnome'
      Visible = False
      Size = 50
    end
    object UqTabelaorctelefone: TStringField
      FieldName = 'orctelefone'
      Visible = False
    end
    object UqTabelaorcendereco: TStringField
      FieldName = 'orcendereco'
      Visible = False
      Size = 50
    end
    object UqTabelaorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Visible = False
      Size = 250
    end
    object UqTabelaorcgeral: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object UqTabelaorcdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object UqTabelaorctotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object UqTabelastoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object UqTabelapuoidentificacao: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'puoidentificacao'
      Size = 30
    end
    object UqTabelaedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
  end
  object DsTabela: TUniDataSource
    DataSet = UqTabela
    OnDataChange = DsTabelaDataChange
    Left = 264
    Top = 168
  end
  object MenuGerador: TPopupMenu
    Left = 424
    Top = 560
    object Gerador1: TMenuItem
      Caption = 'Gerador'
      OnClick = Gerador1Click
    end
  end
end
