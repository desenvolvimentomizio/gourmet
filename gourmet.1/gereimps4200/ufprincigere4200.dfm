object fprincigere4200: Tfprincigere4200
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Gerenciador de Impressoras'
  ClientHeight = 762
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 488
    Top = 328
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object mensagens: TStatusBar
    Left = 0
    Top = 743
    Width = 1048
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object plImpressoras: TPanel
    Left = 0
    Top = 0
    Width = 1013
    Height = 743
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object plFalhaBanco: TPanel
      Left = 2
      Top = 485
      Width = 1009
      Height = 256
      Align = alBottom
      BorderWidth = 5
      TabOrder = 0
      object pedidos: TMemo
        Left = 6
        Top = 6
        Width = 168
        Height = 244
        Align = alLeft
        Lines.Strings = (
          'pedidos')
        TabOrder = 0
      end
    end
    object plCozinha: TPanel
      Left = 2
      Top = 451
      Width = 1009
      Height = 34
      Align = alBottom
      ParentBackground = False
      TabOrder = 1
      object Button1: TButton
        Left = 6
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object pltci04: TPanel
        Left = 904
        Top = 1
        Width = 104
        Height = 32
        Align = alRight
        TabOrder = 1
      end
      object pltci01: TPanel
        Left = 592
        Top = 1
        Width = 104
        Height = 32
        Align = alRight
        TabOrder = 2
      end
      object pltci02: TPanel
        Left = 696
        Top = 1
        Width = 104
        Height = 32
        Align = alRight
        TabOrder = 3
      end
      object pltci03: TPanel
        Left = 800
        Top = 1
        Width = 104
        Height = 32
        Align = alRight
        TabOrder = 4
      end
    end
  end
  object erros: TMemo
    Left = 1013
    Top = 0
    Width = 35
    Height = 743
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 488
    Top = 48
  end
  object Conexao: TUniConnection
    ProviderName = 'mySQL'
    Database = 'kuskao0408'
    Options.LocalFailover = True
    Username = 'root'
    Server = '192.168.5.202'
    LoginPrompt = False
    OnError = ConexaoError
    Left = 488
    Top = 104
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 200
    OnTimer = inicializarTimer
    Left = 640
    Top = 120
  end
  object gri: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT distinct'
      '  gri.gricodigo'
      'FROM gri'
      '  group by tcicodigo'
      'order by tcicodigo')
    AutoCalcFields = False
    Left = 488
    Top = 168
    object grigricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
  end
  object verificar: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = verificarTimer
    Left = 752
    Top = 112
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 504
    Top = 224
  end
  object sbi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  sbichave,'
      '  itochave,'
      '  sbrcodigo,'
      '  sbiobs'
      'FROM sbi'
      '  where itochave=:itochave')
    Left = 173
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object sbisbichave: TIntegerField
      FieldName = 'sbichave'
    end
    object sbiitochave: TIntegerField
      FieldName = 'itochave'
    end
    object sbisbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object sbisbiobs: TStringField
      FieldName = 'sbiobs'
      Size = 250
    end
  end
  object isi: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  isi.isichave,'
      '  isi.sbichave,'
      '  isi.tsicodigo,'
      
        '  (select tsiidentificacao from tsi where tsi.tsicodigo=isi.tsic' +
        'odigo) as tsiidentificacao,'
      '  isi.procodigo,'
      
        '  (select pronome from pro where pro.procodigo=isi.procodigo) as' +
        ' pronome,'
      '  isi.isitipo'
      'FROM isi'
      'WHERE sbichave = :sbichave')
    Left = 213
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sbichave'
        Value = nil
      end>
    object isiisichave: TIntegerField
      FieldName = 'isichave'
    end
    object isisbichave: TIntegerField
      FieldName = 'sbichave'
    end
    object isitsicodigo: TIntegerField
      FieldName = 'tsicodigo'
    end
    object isiprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object isiisitipo: TIntegerField
      FieldName = 'isitipo'
    end
    object isipronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
    object isitsiidentificacao: TStringField
      FieldName = 'tsiidentificacao'
      Size = 50
    end
  end
  object lito: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ito.itochave,'
      '  ito.itoitem,'
      '  ito.itoquantidade,'
      '  ito.procodigo,'
      '  pro.pronome,'
      '   uni.unisimbolo,'
      '  ito.unicodigo,'
      '  ito.orcchave,'
      '  ito.tdecodigo,'
      '  pro.proreferencia,'
      '  ito.itoproservico,'
      '  ito.itoinfadprod,'
      '  pro.tpocodigo,'
      '  ito.itoprocomple,'
      '  pro.propededescrserv,'
      '  pro.propedetecnicoserv,'
      '  ito.puncodigo,'
      '  grp.grpidentificacao'
      'FROM ito,'
      '     pro,'
      '     uni,'
      '     orc,'
      '     grp'
      'WHERE ito.orcchave = orc.orcchave'
      'AND ito.procodigo = pro.procodigo'
      'AND pro.grpcodigo=grp.grpcodigo'
      'AND ito.unicodigo = uni.unicodigo'
      'AND ito.itochave = :itochave'
      'ORDER BY ito.itoitem'
      ''
      ''
      '/* SELECT'
      '  ito.itochave,'
      '  ito.itoitem,'
      '  ito.itoquantidade,'
      '  ito.procodigo,'
      '  pro.pronome,'
      '   uni.unisimbolo,'
      '  ito.unicodigo,'
      '  ito.orcchave,'
      '  ito.tdecodigo,'
      '  pro.proreferencia,'
      '  ito.itoproservico,'
      '  ito.itoinfadprod,'
      '  pro.tpocodigo,'
      '  ito.itoprocomple,'
      '  pro.propededescrserv,'
      '  pro.propedetecnicoserv,'
      '  ito.puncodigo'
      'FROM ito,'
      '     pro,'
      '     uni,'
      '     orc'
      'WHERE ito.orcchave = orc.orcchave'
      'AND ito.procodigo = pro.procodigo'
      'AND ito.orcchave = pro.procodigo'
      'AND ito.unicodigo = uni.unicodigo'
      'AND ito.itochave = :itochave'
      'ORDER BY ito.itoitem*/')
    ReadOnly = True
    AutoCalcFields = False
    Left = 324
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object litoitoitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itoitem'
      Required = True
    end
    object litoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litopronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object litoitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object litounisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object litounicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object litoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
    object litoproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
    end
    object litoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
    object litoitoinfadprod: TStringField
      FieldName = 'itoinfadprod'
      Size = 500
    end
    object litotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object litoitoprocomple: TStringField
      FieldName = 'itoprocomple'
      Size = 250
    end
    object litopropededescrserv: TIntegerField
      FieldName = 'propededescrserv'
    end
    object litopropedetecnicoserv: TIntegerField
      FieldName = 'propedetecnicoserv'
    end
    object litopuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object litogrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
  end
  object fila: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT distinct'
      '  imm.immnumepedido,'
      '  imm.immmodoimpressao,'
      '  imm.immhoraimprimir,'
      '  orc.orcchave,'
      '  gri.gricodigo,'
      '  mit.mitidentificacao'
      'FROM imm'
      '  INNER JOIN tci'
      '    ON imm.tcicodigo = tci.tcicodigo'
      '  INNER JOIN ito'
      '    ON imm.itochave = ito.itochave'
      '  INNER JOIN pro'
      '    ON ito.procodigo = pro.procodigo'
      '  INNER JOIN mit'
      '    ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN gri'
      '    ON gri.tcicodigo = tci.tcicodigo'
      '    AND gri.grpcodigo = pro.grpcodigo'
      '  INNER JOIN orc'
      '    ON ito.orcchave = orc.orcchave'
      '  INNER JOIN etd'
      '    ON orc.etdcodigo = etd.etdcodigo'
      'WHERE imm.immhoraimpresso IS NULL AND '
      '  gri.gricodigo = :gricodigo'
      'AND imm.cznchave = :cznchave'
      'AND orc.stocodigo IN (2,5) /*stoEmAberto*/'
      'group by imm.immhoraimprimir, gri.gricodigo'
      'ORDER BY imm.immhoraimprimir, gri.gricodigo')
    Left = 248
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gricodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object filaimmmodoimpressao: TIntegerField
      FieldName = 'immmodoimpressao'
      ReadOnly = True
    end
    object filaorcchave: TIntegerField
      FieldName = 'orcchave'
      ReadOnly = True
    end
    object filagricodigo: TIntegerField
      FieldName = 'gricodigo'
      ReadOnly = True
    end
    object filaimmhoraimprimir: TDateTimeField
      FieldName = 'immhoraimprimir'
      ReadOnly = True
      Required = True
    end
    object filamitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object filaimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
  end
  object frxUniDACComponents: TfrxUniDACComponents
    DefaultDatabase = Conexao
    Left = 368
    Top = 48
  end
  object relatorio: TfrxReport
    Version = '5.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42113.804931909720000000
    ReportOptions.LastChange = 42113.804931909720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 256
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBFila: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = fila
    BCDToCurrency = False
    Left = 264
    Top = 320
  end
  object DFila: TUniDataSource
    DataSet = fila
    Left = 328
    Top = 192
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSource = dorc
    BCDToCurrency = False
    Left = 88
    Top = 192
  end
  object dorc: TUniDataSource
    DataSet = orc
    Left = 160
    Top = 192
  end
  object orc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from orc where orcchave=:orcchave')
    Left = 128
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 552
    Top = 48
  end
  object immimp: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  imm.immchave'
      '                                             '
      '    FROM imm'
      ''
      '  INNER JOIN ito'
      '    ON imm.itochave = ito.itochave'
      '  INNER JOIN pro'
      '    ON ito.procodigo = pro.procodigo'
      '  INNER JOIN grp '
      '    ON pro.grpcodigo = grp.grpcodigo'
      '  INNER JOIN gri '
      '    ON grp.grpcodigo = gri.grpcodigo        '
      '                     '
      '      WHERE ito.orcchave=:orcchave'
      '      AND imm.immnumepedido=:immnumepedido')
    Left = 384
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'immnumepedido'
        Value = nil
      end>
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select cfgcodigo, cfgmgoupedidelivery, cfgmgoupedideliveryaux fr' +
        'om cfgmgou')
    Left = 456
    Top = 352
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgcfgmgoupedidelivery: TIntegerField
      FieldName = 'cfgmgoupedidelivery'
    end
    object cfgcfgmgoupedideliveryaux: TIntegerField
      FieldName = 'cfgmgoupedideliveryaux'
    end
  end
  object frxBMPExport: TfrxBMPExport
    ShowDialog = False
    UseFileCache = False
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    Monochrome = True
    Left = 376
    Top = 128
  end
  object ped: TUniQuery
    Connection = Conexao
    Left = 576
    Top = 352
  end
  object verificagri: TTimer
    Interval = 60000
    OnTimer = verificagriTimer
    Left = 640
    Top = 184
  end
  object qGri: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT tci.tcicodigo, tci.tciporta, mit.mitidentificacao,  gri.g' +
        'riminuretardo,  gri.grisituacao, gri.gricodigo, grp.grpidentific' +
        'acao'
      'FROM tci'
      'INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      'INNER JOIN gri ON gri.tcicodigo = tci.tcicodigo '
      'INNER JOIN grp ON gri.grpcodigo = grp.grpcodigo')
    Left = 664
    Top = 376
    object qGritcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object qGritciporta: TStringField
      FieldName = 'tciporta'
      Size = 30
    end
    object qGrimitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Size = 50
    end
    object qGrigriminuretardo: TIntegerField
      FieldName = 'griminuretardo'
    end
    object qGrigrisituacao: TIntegerField
      FieldName = 'grisituacao'
    end
    object qGrigrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object qGrigricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
  end
  object tci01: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tci01Timer
    Left = 632
    Top = 256
  end
  object tci02: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tci02Timer
    Left = 664
    Top = 256
  end
  object tci03: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tci03Timer
    Left = 696
    Top = 256
  end
  object tci04: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tci04Timer
    Left = 728
    Top = 256
  end
  object immmesa: TUniQuery
    Connection = Conexao
    Left = 784
    Top = 392
  end
end
