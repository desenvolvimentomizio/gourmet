object fprinciaiqgfome: Tfprinciaiqgfome
  Left = 0
  Top = 0
  Caption = 'Integra'#231#227'o - AIQ FOME'
  ClientHeight = 608
  ClientWidth = 981
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
  object Label1: TLabel
    Left = 56
    Top = 104
    Width = 6
    Height = 13
    Caption = '0'
  end
  object mensagens: TStatusBar
    Left = 0
    Top = 589
    Width = 981
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ExplicitTop = 776
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 981
    Height = 329
    Align = alTop
    Lines.Strings = (
      'O Lenhador - Pedido #12377790 (11/05 - 22:27:01)'
      ''
      '22:27'
      '22:27'
      '22:34'
      '-'
      'Yara Gabrielli (37)'
      ''
      '(65)9-9600-3146, (65)9-9600-3146'
      ''
      'Avenida Curitiba - 3084'
      ''
      'Centro, Complemento: Apartar o interfone, apartamento 6.'
      ''
      '(65) 9-9600-3146'
      ''
      'Refer'#234'ncia: Apartamento em cima da Livraria Expoente .'
      ''
      'Tempo de entrega: 20 - 40min.'
      ''
      '1x (Bebidas: Lata 310 ml) Coca Cola'
      ''
      '1x R$4,00'
      ''
      '1x (Hamb'#250'rguer: Uni) Lenhador'
      ''
      
        'hamb'#250'rguer 200g, 2x mais queijo mussarela, bacon, ovo, alface, t' +
        'omate e cebola roxa agridoce'
      ''
      '+R$0,00 Qual P'#227'o? P'#227'o tradicional'
      ''
      '1x R$23,00'
      ''
      'Subtotal'
      ''
      'R$27,00'
      ''
      'Taxa de Entrega'
      ''
      'R$0,00'
      ''
      'Total'
      ''
      'R$27,00'
      ''
      'Forma de Pagamento'
      ''
      'Dinheiro (Troco para R$30,00 = R$3,00)'
      ''
      'Obs.: N'#195'O PRECISA DE TROCO!')
    ScrollBars = ssVertical
    TabOrder = 1
    OnDragOver = Memo1DragOver
    OnEndDrag = Memo1EndDrag
  end
  object Panel1: TPanel
    Left = 0
    Top = 561
    Width = 981
    Height = 28
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitTop = 544
    object btDesativar: TButton
      Left = 830
      Top = 1
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'btDesativar'
      TabOrder = 0
      Visible = False
      OnClick = btDesativarClick
    end
    object btAtivar: TButton
      Left = 905
      Top = 1
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'btAtivar'
      TabOrder = 1
      Visible = False
      OnClick = btAtivarClick
    end
    object Button3: TButton
      Left = 568
      Top = -3
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 352
    Width = 505
    Height = 169
    DataSource = Dpro
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Inicializar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = InicializarTimer
    Left = 120
    Top = 96
  end
  object LeitorArquivo: TTimer
    Enabled = False
    Interval = 10
    OnTimer = LeitorArquivoTimer
    Left = 248
    Top = 96
  end
  object Timer1: TTimer
    Left = 392
    Top = 8
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 256
    Top = 17
  end
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end
      item
        DBType = 230
        FieldType = ftBlob
      end>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'lenhador'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=10')
    Options.LocalFailover = True
    Options.DefaultSortType = stCaseInsensitive
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '192.168.5.166'
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 17
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 112
    Top = 17
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 48
    Top = 16
  end
  object etdimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etdcodigo,'
      '  etdidentificacao,'
      '  etdapelido,'
      '  etddeletar,'
      '  tpecodigo,'
      '  etddatacad,'
      '  etddataalt,'
      '  etddoc1,'
      '  tsecodigo,'
      '  etdcarga,'
      '  etdativo,'
      '  etddescsituacao,'
      '  etdsped,'
      '  etdobs,'
      '  etdsuframa,'
      '  tcbcodigo,'
      '  etdnfemodelos,'
      '  grtcodigo,'
      '  atvcodigo,'
      '  jsncodigo,'
      '  etdpedidoobrigatorio,'
      '  etdregime'
      'FROM etd limit 0')
    Left = 136
    Top = 392
    object etdimpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdimpetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etdimpetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object etdimpetddeletar: TIntegerField
      FieldName = 'etddeletar'
      Required = True
    end
    object etdimptpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdimpetddatacad: TDateField
      FieldName = 'etddatacad'
    end
    object etdimpetddataalt: TDateField
      FieldName = 'etddataalt'
    end
    object etdimpetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdimptsecodigo: TIntegerField
      FieldName = 'tsecodigo'
      Required = True
    end
    object etdimpetdcarga: TIntegerField
      FieldName = 'etdcarga'
      Required = True
    end
    object etdimpetdativo: TIntegerField
      FieldName = 'etdativo'
      Required = True
    end
    object etdimpetddescsituacao: TStringField
      FieldName = 'etddescsituacao'
      Size = 50
    end
    object etdimpetdsped: TIntegerField
      FieldName = 'etdsped'
      Required = True
    end
    object etdimpetdobs: TStringField
      FieldName = 'etdobs'
      Size = 2000
    end
    object etdimpetdsuframa: TStringField
      FieldName = 'etdsuframa'
      Size = 50
    end
    object etdimptcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
      Required = True
    end
    object etdimpetdnfemodelos: TStringField
      FieldName = 'etdnfemodelos'
      Required = True
      Size = 2
    end
    object etdimpgrtcodigo: TIntegerField
      FieldName = 'grtcodigo'
    end
    object etdimpatvcodigo: TIntegerField
      FieldName = 'atvcodigo'
    end
    object etdimpjsncodigo: TIntegerField
      FieldName = 'jsncodigo'
    end
    object etdimpetdpedidoobrigatorio: TIntegerField
      FieldName = 'etdpedidoobrigatorio'
    end
    object etdimpetdregime: TIntegerField
      FieldName = 'etdregime'
    end
  end
  object edrimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  edrcodigo,'
      '  tedcodigo,'
      '  etdcodigo,'
      '  edrrua,'
      '  edrnumero,'
      '  edrcxpostal,'
      '  edrcomple,'
      '  edrbairro,'
      '  cddcodigo,'
      '  edrinscest,'
      '  edrcep,'
      '  edrinsestst,'
      '  ufscodigo,'
      '  edrobs,'
      '  edrinscmun,'
      '  edritem,'
      '  edrnomefazenda,'
      '  edrrazaofazenda,'
      '  edrativo,'
      '  jsncodigo'
      'FROM edr limit 0')
    Left = 208
    Top = 392
    object edrimpedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object edrimptedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object edrimpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object edrimpedrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object edrimpedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 50
    end
    object edrimpedrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object edrimpedrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 1000
    end
    object edrimpedrbairro: TStringField
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object edrimpcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object edrimpedrinscest: TStringField
      FieldName = 'edrinscest'
      Required = True
    end
    object edrimpedrcep: TStringField
      FieldName = 'edrcep'
      Required = True
      Size = 10
    end
    object edrimpedrinsestst: TStringField
      FieldName = 'edrinsestst'
    end
    object edrimpufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object edrimpedrobs: TStringField
      FieldName = 'edrobs'
      Size = 250
    end
    object edrimpedrinscmun: TStringField
      FieldName = 'edrinscmun'
      Size = 50
    end
    object edrimpedritem: TIntegerField
      FieldName = 'edritem'
      Required = True
    end
    object edrimpedrnomefazenda: TStringField
      FieldName = 'edrnomefazenda'
      Size = 80
    end
    object edrimpedrrazaofazenda: TStringField
      FieldName = 'edrrazaofazenda'
      Size = 80
    end
    object edrimpedrativo: TIntegerField
      FieldName = 'edrativo'
    end
    object edrimpjsncodigo: TIntegerField
      FieldName = 'jsncodigo'
    end
  end
  object etfimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etfcodigo,'
      '  etdcodigo,'
      '  ttfcodigo,'
      '  etftelefone,'
      '  etfcontato,'
      '  etfdepartamento,'
      '  etfativo,'
      '  jsncodigo,'
      '  etfsenha,'
      '  etfpontuacao'
      'FROM etf limit 0')
    Left = 320
    Top = 392
    object etfimpetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object etfimpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etfimpttfcodigo: TIntegerField
      FieldName = 'ttfcodigo'
      Required = True
    end
    object etfimpetftelefone: TStringField
      FieldName = 'etftelefone'
      Required = True
    end
    object etfimpetfcontato: TStringField
      FieldName = 'etfcontato'
    end
    object etfimpetfdepartamento: TStringField
      FieldName = 'etfdepartamento'
    end
    object etfimpetfativo: TIntegerField
      FieldName = 'etfativo'
    end
    object etfimpjsncodigo: TIntegerField
      FieldName = 'jsncodigo'
    end
    object etfimpetfsenha: TStringField
      FieldName = 'etfsenha'
    end
    object etfimpetfpontuacao: TIntegerField
      FieldName = 'etfpontuacao'
    end
  end
  object etvimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etvcodigo,'
      '  etdcodigo,'
      '  tvicodigo,'
      '  pcgcodigo'
      'FROM etv limit 0')
    Left = 256
    Top = 392
    object etvimpetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvimpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object etvimptvicodigo: TIntegerField
      FieldName = 'tvicodigo'
      Required = True
    end
    object etvimppcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object verificacadastro: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  edr.edrcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  etf.etfcodigo,'
      '  etf.etftelefone,'
      '  edr.edrbairro'
      'FROM etf'
      '  INNER JOIN etd'
      '    ON etf.etdcodigo = etd.etdcodigo'
      '  INNER JOIN edr'
      '    ON edr.etdcodigo = etd.etdcodigo'
      
        'where etdidentificacao=:etdidentificacao and edrrua=:edrrua and ' +
        'edrnumero=:edrnumero and etftelefone=:etftelefone and edrbairro=' +
        ':edrbairro'
      'GROUP BY etd.etdidentificacao,'
      '         etf.etftelefone,'
      '         edr.edrrua,'
      '         edr.edrbairro')
    Left = 304
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdidentificacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrrua'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrnumero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etftelefone'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrbairro'
        Value = nil
      end>
    object verificacadastroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object verificacadastroetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object verificacadastroedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object verificacadastroedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object verificacadastroedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Size = 50
    end
    object verificacadastroetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
      ReadOnly = True
    end
    object verificacadastroetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object verificacadastroedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
  end
  object baiimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  baicodigo,'
      '  baiidentificacao,'
      '  procodigo'
      'FROM bai')
    Left = 512
    Top = 224
    object baiimpbaicodigo: TIntegerField
      FieldName = 'baicodigo'
    end
    object baiimpbaiidentificacao: TStringField
      FieldName = 'baiidentificacao'
      Required = True
      Size = 50
    end
    object baiimpprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  object proimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  procodigo,'
      '  pronome,'
      '  tpoidentificacao,'
      '  maridentificacao,'
      '  grpidentificacao,'
      '  icmaliquotas,'
      '  proncm,'
      '  prosaldo,'
      '  prosaldodisp,'
      '  sipcodigo,'
      '  proobs,'
      '  proreferencia,'
      '  unisimbolo,'
      '  punprecoav,'
      '  punprecoap,'
      '  tpocodigo,'
      '  proanpcodigo,'
      '  enpcodigo,'
      '  enpendereco,'
      '  propedecomple,'
      '  cpbcodbalanca,'
      '  gracodigo,'
      '  dpridentificacao,'
      '  proconsolidado,'
      '  punpercav,'
      '  punpercap,'
      '  puncusto,'
      '  grpcodigo,'
      '  cstcodigo,'
      '  procest'
      'FROM  v_pro pro where tpocodigo<>1')
    Left = 584
    Top = 224
    object proimpprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object proimppronome: TStringField
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object proimptpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      Required = True
      Size = 30
    end
    object proimpmaridentificacao: TStringField
      FieldName = 'maridentificacao'
      Required = True
      Size = 35
    end
    object proimpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Required = True
      Size = 30
    end
    object proimpicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Required = True
      Size = 8
    end
    object proimpproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object proimpprosaldo: TFloatField
      FieldName = 'prosaldo'
      Required = True
    end
    object proimpprosaldodisp: TFloatField
      FieldName = 'prosaldodisp'
      Required = True
    end
    object proimpsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
      Required = True
    end
    object proimpproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
    object proimpproreferencia: TStringField
      FieldName = 'proreferencia'
      Size = 45
    end
    object proimpunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Required = True
      Size = 6
    end
    object proimppunprecoav: TFloatField
      FieldName = 'punprecoav'
      Required = True
    end
    object proimppunprecoap: TFloatField
      FieldName = 'punprecoap'
      Required = True
    end
    object proimptpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      Required = True
    end
    object proimpproanpcodigo: TIntegerField
      FieldName = 'proanpcodigo'
    end
    object proimpenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
    end
    object proimpenpendereco: TStringField
      FieldName = 'enpendereco'
      Size = 19
    end
    object proimppropedecomple: TIntegerField
      FieldName = 'propedecomple'
      Required = True
    end
    object proimpcpbcodbalanca: TIntegerField
      FieldName = 'cpbcodbalanca'
    end
    object proimpgracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object proimpdpridentificacao: TStringField
      FieldName = 'dpridentificacao'
      Required = True
      Size = 30
    end
    object proimpproconsolidado: TIntegerField
      FieldName = 'proconsolidado'
      Required = True
    end
    object proimppunpercav: TFloatField
      FieldName = 'punpercav'
    end
    object proimppunpercap: TFloatField
      FieldName = 'punpercap'
    end
    object proimppuncusto: TFloatField
      FieldName = 'puncusto'
      Required = True
    end
    object proimpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
      Required = True
    end
    object proimpcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object proimpprocest: TStringField
      FieldName = 'procest'
    end
  end
  object Dpro: TDataSource
    DataSet = proimp
    Left = 608
    Top = 384
  end
  object etdimpUniQuery: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  edr.edrcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  etf.etfcodigo,'
      '  etf.etftelefone,'
      '  edr.edrbairro'
      'FROM etf'
      '  INNER JOIN etd'
      '    ON etf.etdcodigo = etd.etdcodigo'
      '  INNER JOIN edr'
      '    ON edr.etdcodigo = etd.etdcodigo'
      
        'where etdidentificacao=:etdidentificacao and edrrua=:edrrua and ' +
        'edrnumero=:edrnumero and etftelefone=:etftelefone and edrbairro=' +
        ':edrbairro'
      'GROUP BY etd.etdidentificacao,'
      '         etf.etftelefone,'
      '         edr.edrrua,'
      '         edr.edrbairro')
    Left = 304
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdidentificacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrrua'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrnumero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etftelefone'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrbairro'
        Value = nil
      end>
    object etdimpIntegerField: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdimpStringField: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etdimpIntegerField2: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdimpStringField2: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdimpStringField3: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Size = 50
    end
    object etdimpIntegerField3: TIntegerField
      FieldName = 'etfcodigo'
      ReadOnly = True
    end
    object etdimpStringField4: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object etdimpStringField5: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
  end
  object etvimpUniQuery: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  edr.edrcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  etf.etfcodigo,'
      '  etf.etftelefone,'
      '  edr.edrbairro'
      'FROM etf'
      '  INNER JOIN etd'
      '    ON etf.etdcodigo = etd.etdcodigo'
      '  INNER JOIN edr'
      '    ON edr.etdcodigo = etd.etdcodigo'
      
        'where etdidentificacao=:etdidentificacao and edrrua=:edrrua and ' +
        'edrnumero=:edrnumero and etftelefone=:etftelefone and edrbairro=' +
        ':edrbairro'
      'GROUP BY etd.etdidentificacao,'
      '         etf.etftelefone,'
      '         edr.edrrua,'
      '         edr.edrbairro')
    Left = 304
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdidentificacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrrua'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrnumero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etftelefone'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrbairro'
        Value = nil
      end>
    object etvimpIntegerField: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvimpStringField: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etvimpIntegerField2: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etvimpStringField2: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etvimpStringField3: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Size = 50
    end
    object etvimpIntegerField3: TIntegerField
      FieldName = 'etfcodigo'
      ReadOnly = True
    end
    object etvimpStringField4: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object etvimpStringField5: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
  end
end
