object fimprimefast: Tfimprimefast
  Left = 0
  Top = 0
  Caption = 'fimprimefast'
  ClientHeight = 589
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 144
    Width = 171
    Height = 435
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 14
    ExplicitTop = 14
    ExplicitHeight = 251
    object mmFilaPedidos: TMemo
      AlignWithMargins = True
      Left = 11
      Top = 41
      Width = 149
      Height = 383
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Lines.Strings = (
        '')
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitHeight = 199
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 163
      Height = 24
      Align = alTop
      Caption = 'Pedidos na Fila:'
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 1
    end
  end
  object erros: TMemo
    AlignWithMargins = True
    Left = 201
    Top = 144
    Width = 748
    Height = 435
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    Color = clInfoBk
    Lines.Strings = (
      'Status da(s) Impressora(s)')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 194
    ExplicitTop = 151
    ExplicitWidth = 650
    ExplicitHeight = 201
  end
  object pedidos: TMemo
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 939
    Height = 114
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    Color = 11195903
    Lines.Strings = (
      'pedidos')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    ExplicitLeft = 15
    ExplicitTop = 15
    ExplicitWidth = 539
  end
  object consulta: TUniQuery
    Left = 365
    Top = 104
  end
  object sqlimprime: TUniQuery
    SQL.Strings = (
      'SELECT  distinct gri.griimprimeauto ,'
      '     clb.fnccodigo,'
      '     gri.gripedidoaux,'
      '     imm.immchave'
      '    FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ''
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ' INNER JOIN clb ON clb.clbcodigo = imm.clbcodigo'
      '  INNER JOIN gri on gri.grpcodigo=pro.grpcodigo'
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '  WHERE ito.itochave=:itochave'
      ''
      ''
      '/* '
      'SELECT  distinct gri.griimprimeauto ,'
      '     clb.fnccodigo,'
      '     gri.gripedidoaux'
      '    FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ''
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ' INNER JOIN clb ON clb.clbcodigo = imm.clbcodigo'
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      
        ' INNER JOIN gri on imm.tcicodigo = gri.tcicodigo  -- and gri.grp' +
        'codigo=pro.grpcodigo'
      '  WHERE ito.itochave=:itochave'
      '*/')
    Left = 274
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object sqlimprimegriimprimeauto: TIntegerField
      FieldName = 'griimprimeauto'
    end
    object sqlimprimefnccodigo: TIntegerField
      FieldName = 'fnccodigo'
    end
    object sqlimprimegripedidoaux: TIntegerField
      FieldName = 'gripedidoaux'
    end
    object sqlimprimeimmchave: TIntegerField
      FieldName = 'immchave'
    end
  end
  object jaimpresso: TUniQuery
    Left = 330
    Top = 282
  end
  object immtempo: TUniQuery
    Left = 374
    Top = 216
  end
  object tcisituacao: TUniQuery
    Left = 440
    Top = 97
  end
  object ito: TUniQuery
    SQL.Strings = (
      'SET @orcchave =:orcchave;'
      ''
      'DROP temporary TABLE IF EXISTS tped;'
      '   '
      'CREATE temporary TABLE if not exists tped'
      '     ( id            INT NOT NULL AUTO_INCREMENT'
      '     , orcchave      INT'
      '     , immchave      INT'
      '     , immnumepedido INT '
      '     , tcicodigo     INT'
      '     , pedidoaux     INT'
      '     , itochave      INT '
      '     '
      '     , PRIMARY KEY (id)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      ''
      'INSERT INTO tped'
      '  (SELECT @novachave'
      '        , timm.orcchave'
      '        , timm.immchave'
      '        , timm.immnumepedido'
      '        , timm.tcicodigo'
      '        , pedidoaux'
      '        , timm.itochave'
      '        '
      '  FROM (SELECT DISTINCT'
      '               orc.orcchave'
      '             , imm.immchave'
      '             , imm.immnumepedido'
      
        '             , IF(orc.foacodigo != 2, imm.tcicodigo, (SELECT tci' +
        'codigo'
      '                       FROM tci '
      
        '                      WHERE tci.tciprioridade = (SELECT MIN(tci.' +
        'tciprioridade) tciprioridade'
      '                                                   FROM tci'
      
        '                                                  WHERE tci.tcic' +
        'odigo IN (SELECT tcicodigo'
      
        '                                                                ' +
        '            FROM tci '
      
        '                                                                ' +
        '           WHERE tcicodigo IN (SELECT imm.tcicodigo'
      
        '                                                                ' +
        '                                 FROM imm '
      
        '                                                                ' +
        '                                INNER JOIN ito '
      
        '                                                                ' +
        '                                        ON imm.itochave = ito.it' +
        'ochave'
      
        '                                                                ' +
        '                                WHERE ito.orcchave = @orcchave))' +
        ')'
      '                       LIMIT 1 )) tcicodigo'
      '             , 0 pedidoaux '
      '             , imm.itochave'
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88) '
      
        '           AND ito.stocodigo NOT IN (1, 88) and ito.itoquantidad' +
        'e>0'
      '           AND imm.immhoraimpresso IS NULL '
      '          '
      '        UNION ALL'
      '        '
      '        SELECT DISTINCT'
      '               orc.orcchave'
      '             , imm.immchave'
      '             , imm.immnumepedido'
      '             , imm.tcicodigo'
      '             , 1 pedidoaux'
      '             , imm.itochave'
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)  '
      
        '           AND ito.stocodigo NOT IN (1, 88) and ito.itoquantidad' +
        'e>0 '
      '           AND imm.immhoraimpresso IS NULL '
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo);'
      ''
      ''
      'SELECT timm.orcchave'
      '     , timm.immnumepedido'
      '     , timm.tcicodigo'
      '     , tci.tciporta'
      '     , mit.mitidentificacao '
      '     , timm.foacodigo'
      '     , timm.pedidoaux'
      '     , timm.itochave'
      '     , timm.immchave'
      '     '
      '  FROM (SELECT DISTINCT'
      '               orc.orcchave'
      '             , imm.immnumepedido'
      
        '             , IF(orc.foacodigo != 2, imm.tcicodigo, (SELECT tci' +
        'codigo'
      '                       FROM tci '
      
        '                      WHERE tci.tciprioridade = (SELECT MIN(tci.' +
        'tciprioridade) tciprioridade'
      '                                                   FROM tci'
      
        '                                                  WHERE tci.tcic' +
        'odigo IN (SELECT tcicodigo'
      
        '                                                                ' +
        '            FROM tci '
      
        '                                                                ' +
        '           WHERE tcicodigo IN (SELECT imm.tcicodigo'
      
        '                                                                ' +
        '                                 FROM imm '
      
        '                                                                ' +
        '                                INNER JOIN ito '
      
        '                                                                ' +
        '                                        ON imm.itochave = ito.it' +
        'ochave'
      
        '                                                                ' +
        '                                WHERE ito.orcchave = @orcchave))' +
        ')'
      '                       LIMIT 1 )) tcicodigo'
      '             , orc.foacodigo'
      '             , 0 pedidoaux '
      '             , imm.itochave'
      '             , imm.immchave'
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      
        '           AND ito.stocodigo NOT IN (1, 88) and ito.itoquantidad' +
        'e>0'
      '           AND imm.immhoraimpresso IS NULL '
      '        '
      '        '
      '          '
      '        UNION ALL'
      '        '
      '        SELECT DISTINCT'
      '               orc.orcchave'
      '             , imm.immnumepedido'
      '             , imm.tcicodigo'
      '             , orc.foacodigo'
      '             , 1   pedidoaux'
      '             , imm.itochave'
      '             , imm.immchave'
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      
        '           AND ito.stocodigo NOT IN (1, 88)  and ito.itoquantida' +
        'de>0'
      '           AND imm.immhoraimpresso IS NULL '
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo;'
      '')
    Left = 546
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object itoimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object itotcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object itotciporta: TStringField
      FieldName = 'tciporta'
      ReadOnly = True
      Size = 50
    end
    object itomitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itofoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object itopedidoaux: TIntegerField
      FieldName = 'pedidoaux'
      Required = True
    end
    object itoitochave: TIntegerField
      FieldName = 'itochave'
    end
    object itoimmchave: TIntegerField
      FieldName = 'immchave'
    end
  end
  object itoaux: TUniQuery
    SQL.Strings = (
      
        'SELECT gripedidoaux FROM ito,pro,gri WHERE ito.procodigo=pro.pro' +
        'codigo AND pro.grpcodigo=gri.grpcodigo and itochave=:itochave')
    Left = 522
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
  end
  object imm: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '       orc.orcchave'
      '     , orc.foacodigo'
      '     , orc.stocodigo'
      ''
      '     , orc.orcobs'
      '     , orc.orcgeralav'
      '     , gri.gricodigo'
      ''
      
        '     , IF(orc.foacodigo = 2,(SELECT rel.relarquivo FROM rel WHER' +
        'E rel.relcodigo = gri.relcompleto)'
      
        '                           ,(SELECT rel.relarquivo FROM rel WHER' +
        'E rel.relcodigo = gri.relgrupo)) relarquivo'
      
        '     , (select grpcodigo from pro where ito.procodigo=pro.procod' +
        'igo) as grpcodigo'
      '     ,imm.immchave'
      '     , imm.immnumepedido'
      '     , mit.mitidentificacao'
      '  FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ''
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      
        ' INNER JOIN gri on imm.tcicodigo = gri.tcicodigo and gri.grpcodi' +
        'go=pro.grpcodigo'
      ' INNER JOIN tci ON gri.tcicodigo=tci.tcicodigo'
      '  inner join mit ON mit.mitcodigo=tci.mitcodigo'
      ' '
      '   '
      ' WHERE orc.stocodigo NOT IN (1, 88)'
      '   AND imm.immhoraimpresso IS NULL '
      '--   AND orc.orcdataencerr is null'
      '   AND imm.cznchave=:cznchave'
      '   AND imm.immmodo<>9'
      '   AND gri.griimprimeauto=1'
      '   AND ito.itoquantidade>0'
      '  ORDER BY orc.orcchave ;'
      ''
      '')
    Left = 410
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object immorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object immfoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object immstocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object immrelarquivo: TBlobField
      FieldName = 'relarquivo'
      ReadOnly = True
    end
    object immorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object immorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
    end
    object immgricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
    object immgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object immimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object immimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object immmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Size = 50
    end
  end
  object vias: TUniQuery
    Left = 378
    Top = 282
  end
  object situacao: TUniQuery
    Left = 462
    Top = 168
  end
  object imw: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imwchave,'
      '  itochave,'
      '  imwhoranotificadopedido,'
      '  imwhorasaidadopedido,'
      '  imwhoraentregadopedido'
      'FROM imw where itochave=:itochave')
    Left = 501
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object imwimwchave: TIntegerField
      FieldName = 'imwchave'
    end
    object imwitochave: TIntegerField
      FieldName = 'itochave'
      Required = True
    end
    object imwimwhoranotificadopedido: TDateTimeField
      FieldName = 'imwhoranotificadopedido'
    end
    object imwimwhorasaidadopedido: TDateTimeField
      FieldName = 'imwhorasaidadopedido'
    end
    object imwimwhoraentregadopedido: TDateTimeField
      FieldName = 'imwhoraentregadopedido'
    end
  end
  object frxUniDACComponents: TfrxUniDACComponents
    DefaultDatabase = Conexao
    Left = 66
    Top = 98
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 130
    Top = 98
  end
  object relatorio: TfrxReport
    Version = '5.6.8'
    DataSet = frxDados
    DataSetName = 'frxDados'
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
    Left = 24
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 106
    Top = 162
  end
  object frxBMPExport: TfrxBMPExport
    ShowDialog = False
    UseFileCache = False
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    Monochrome = True
    Left = 16
    Top = 224
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSet = imm
    BCDToCurrency = False
    Left = 104
    Top = 224
  end
  object ImageList1: TImageList
    Height = 256
    Width = 256
    Left = 496
    Top = 363
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 226
    Top = 42
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 224
    Top = 104
  end
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
        IgnoreErrors = True
      end
      item
        DBType = 211
        FieldType = ftInteger
        IgnoreErrors = True
      end>
    ProviderName = 'mySQL'
    Database = 'kuskao0201'
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 224
    Top = 168
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
end
