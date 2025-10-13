object FprinciWhaGou: TFprinciWhaGou
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Notificador via Whasapp'
  ClientHeight = 631
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    465
    631)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 598
    Top = -150
    Width = 260
    Height = 166
    Anchors = [akLeft, akBottom]
    Proportional = True
    Stretch = True
    ExplicitTop = 8
  end
  object CheckBox2: TCheckBox
    Left = 759
    Top = 91
    Width = 338
    Height = 17
    Caption = 'Desativar Notifica'#231#227'o ( Desabilita o Popup a cada nova mensagem)'
    Checked = True
    State = cbChecked
    TabOrder = 0
    Visible = False
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 759
    Top = 117
    Width = 425
    Height = 17
    Caption = 
      'N'#227'o Usar Interface Padr'#227'o (Desabilita o Icone do Whats no canto ' +
      'Superior Direito)'
    Enabled = False
    TabOrder = 1
    Visible = False
  end
  object GroupBox3: TGroupBox
    Left = 13
    Top = 56
    Width = 428
    Height = 546
    Caption = ' Lista de Transmiss'#227'o '
    TabOrder = 2
    object Memo2: TMemo
      Left = 20
      Top = 33
      Width = 388
      Height = 192
      TabStop = False
      Color = 4227327
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 20
      Top = 257
      Width = 388
      Height = 272
      Color = 16765348
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 41
    Align = alTop
    BorderWidth = 4
    TabOrder = 3
    ExplicitWidth = 455
    object Label7: TLabel
      Left = 295
      Top = 21
      Width = 126
      Height = 13
      AutoSize = False
    end
    object LbStatus: TLabel
      Left = 238
      Top = 5
      Width = 125
      Height = 31
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      ExplicitLeft = 344
      ExplicitWidth = 396
    end
    object plHora: TPanel
      Left = 5
      Top = 5
      Width = 77
      Height = 31
      Align = alLeft
      BevelOuter = bvLowered
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Button17: TButton
      Left = 363
      Top = 5
      Width = 97
      Height = 31
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button17Click
      ExplicitLeft = 353
    end
    object Button1: TButton
      Left = 82
      Top = 5
      Width = 81
      Height = 31
      Align = alLeft
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button13: TButton
      Left = 163
      Top = 5
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Status'
      TabOrder = 3
      OnClick = Button13Click
    end
  end
  object DsContacts: TDataSource
    AutoEdit = False
    DataSet = CdsContacts
    Left = 168
    Top = 284
  end
  object CdsContacts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 284
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 240
    object ClientDataSet1ID: TStringField
      FieldName = 'ID'
      Size = 100
    end
    object ClientDataSet1NAME: TStringField
      FieldName = 'NAME'
    end
    object ClientDataSet1NUMBER: TStringField
      FieldName = 'NUMBER'
    end
    object ClientDataSet1ISGROUP_BROADCAST: TIntegerField
      FieldName = 'ISGROUP_BROADCAST'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 284
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All (*.gif;*.cur;*.pcx;*.ani;*.png_old;*.png;*.jpg;*.jpeg;*.gif;' +
      '*.tif;*.tiff;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg;*.gif;*' +
      '.png;*.tif;*.tiff;*.ico;*.emf;*.wmf;*.pdf)|*.gif;*.cur;*.pcx;*.a' +
      'ni;*.png_old;*.png;*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.gif;*.png;*' +
      '.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg;*.gif;*.png;*.tif;*.tiff;*.ico;*.' +
      'emf;*.wmf;*.pdf|GIF Image (*.gif)|*.gif|Portable Network Graphic' +
      's (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*' +
      '.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|JPEG Images (*.jpg)|*.jpg|JP' +
      'EG Images (*.jpeg)|*.jpeg|GIF Images (*.gif)|*.gif|PNG Images (*' +
      '.png)|*.png|Icons (*.ico)|*.ico|PDF|*.pdf'
    Left = 432
    Top = 360
  end
  object IdHTTP1: TIdHTTP
    Intercept = IdLogEvent1
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'application/json'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 704
    Top = 296
  end
  object IdLogEvent1: TIdLogEvent
    Left = 272
    Top = 224
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Intercept = IdLogEvent1
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 296
    Top = 48
  end
  object ServiceWhtasApp1: TServiceWhtasApp
    NotUseWindowDefaultQrCode = False
    NotUseDefaultInterface = True
    StopMonitoringWhtasOpen = False
    DisableNotification = False
    HideNotificationAfter = 0
    SecretKey = 'daniel-556699223319-b5cc17d3a35877ca8b76f0b2e07497039c250696'
    OnReceiveMessage = ServiceWhtasApp1ReceiveMessage
    OnContactsVerifyAccount = ServiceWhtasApp1ContactsVerifyAccount
    OnStatus = ServiceWhtasApp1Status
    OnStatusPhone = ServiceWhtasApp1StatusPhone
    OnStarted = ServiceWhtasApp1Started
    OnStatusContact = ServiceWhtasApp1StatusContact
    OnBroadcasts = ServiceWhtasApp1Broadcasts
    OnGroups = ServiceWhtasApp1Groups
    ConfigFormWhatsApp.Height = 474
    ConfigFormWhatsApp.Width = 694
    ConfigFormWhatsApp.PanelTopColor = 1404727
    Left = 344
    Top = 147
  end
  object CdsBroadcast: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1192
    Top = 280
    object CdsBroadcastid: TStringField
      FieldName = 'id'
      Size = 100
    end
    object CdsBroadcastname: TStringField
      FieldName = 'name'
      Size = 5000
    end
    object CdsBroadcasttotalParticipants: TStringField
      FieldName = 'totalParticipants'
    end
  end
  object DsBroadcast: TDataSource
    DataSet = CdsBroadcast
    Left = 1264
    Top = 280
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
    Database = 'kuskao2812'
    Options.LocalFailover = True
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 216
    Top = 152
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 216
    Top = 96
  end
  object tmVerificarPedidos: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmVerificarPedidosTimer
    Left = 472
    Top = 184
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 200
    OnTimer = inicializarTimer
    Left = 143
    Top = 248
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 456
    Top = 416
  end
  object immpedido: TUniQuery
    Connection = Conexao
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
      '  FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ''
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      
        ' INNER JOIN gri on imm.tcicodigo = gri.tcicodigo and gri.grpcodi' +
        'go=pro.grpcodigo'
      ' inner JOIN  imw ON imw.itochave = ito.itochave'
      ' '
      '   '
      ' WHERE orc.stocodigo NOT IN (1, 88)'
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS null'
      '   AND orc.orcdataencerr is null'
      '   AND imm.cznchave=:cznchave'
      '   AND imm.immmodo<>9'
      '   AND orc.foacodigo=2'
      '   AND gri.griimprimeauto=1'
      '   AND LENGTH(orc.orctelefone)=11'
      '   AND imwhoranotificadopedido is null'
      '  ORDER BY orc.orcchave;'
      '')
    Left = 330
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object immpedidoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object immpedidofoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object immpedidostocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object immpedidorelarquivo: TBlobField
      FieldName = 'relarquivo'
      ReadOnly = True
    end
    object immpedidoorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object immpedidoorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
    end
    object immpedidogricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
    object immpedidogrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object immpedidoimmchave: TIntegerField
      FieldName = 'immchave'
    end
  end
  object czn: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select cznchave from czn where cznfechamento IS null order by cz' +
        'nchave limit 1')
    Left = 506
    Top = 330
    object czncznchave: TIntegerField
      FieldName = 'cznchave'
    end
  end
  object itopedido: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @orcchave =:orcchave;'
      ''
      'DROP TEMPORARY TABLE IF EXISTS tped;'
      '   '
      'CREATE TEMPORARY TABLE tped'
      '     ( id            INT NOT NULL AUTO_INCREMENT'
      '     , orcchave      INT'
      '     , immchave      INT'
      '     , immnumepedido INT '
      '     , tcicodigo     INT'
      '     , pedidoaux     INT'
      '     , itochave      INT '
      '     , PRIMARY KEY (id)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      ''
      'INSERT INTO tped'
      '  (SELECT 0 '
      '        , timm.orcchave'
      '        , timm.immchave'
      '        , timm.immnumepedido'
      '        , timm.tcicodigo'
      '        , pedidoaux'
      '        , timm.itochave'
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
      '           AND ito.stocodigo NOT IN (1, 88) '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS null'
      ''
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
      '           AND ito.stocodigo NOT IN (1, 88)'
      '  '
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS null'
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
      '    , timm.itochave'
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS null        '
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ''
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS null'
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      ''
      '')
    Left = 386
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itopedidoorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object itopedidoimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object itopedidotcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object itopedidotciporta: TStringField
      FieldName = 'tciporta'
      ReadOnly = True
      Size = 50
    end
    object itopedidomitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itopedidofoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object itopedidopedidoaux: TIntegerField
      FieldName = 'pedidoaux'
      Required = True
    end
    object itopedidoitochave: TIntegerField
      FieldName = 'itochave'
    end
  end
  object relatorio: TfrxReport
    Version = '5.6.8'
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
    Left = 72
    Top = 72
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 74
    Top = 122
  end
  object frxUniDACComponents: TfrxUniDACComponents
    DefaultDatabase = Conexao
    Left = 74
    Top = 170
  end
  object frxBMPExport: TfrxBMPExport
    ShowDialog = False
    UseFileCache = False
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    Monochrome = True
    Left = 72
    Top = 224
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSet = immpedido
    BCDToCurrency = False
    Left = 72
    Top = 272
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
    Left = 146
    Top = 234
  end
  object orc: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT orctelefone from orc where orcchave=:orcchave')
    Left = 456
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 432
    Top = 48
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmgoumensapedido,'
      '  cfgmgoumensasaida,'
      '  cfgmgoumensaretorno'
      'FROM cfgmgou ')
    Left = 408
    Top = 440
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgcfgmgoumensapedido: TStringField
      FieldName = 'cfgmgoumensapedido'
      Size = 255
    end
    object cfgcfgmgoumensasaida: TStringField
      FieldName = 'cfgmgoumensasaida'
      Size = 255
    end
    object cfgcfgmgoumensaretorno: TStringField
      FieldName = 'cfgmgoumensaretorno'
      Size = 255
    end
  end
  object immsaida: TUniQuery
    Connection = Conexao
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
      '  FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ''
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      
        ' INNER JOIN gri on imm.tcicodigo = gri.tcicodigo and gri.grpcodi' +
        'go=pro.grpcodigo'
      ' inner JOIN  imw ON imw.itochave = ito.itochave'
      ' '
      '   '
      ' WHERE orc.stocodigo NOT IN (1, 88)'
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido  IS not null'
      '   AND imwhorasaidadopedido IS null'
      ''
      '   AND orc.orcdataencerr is null'
      '   AND imm.cznchave=:cznchave'
      '   AND imm.immmodo<>9'
      '   AND orc.foacodigo=2'
      '   AND LENGTH(orc.orctelefone)=11'
      '   AND gri.griimprimeauto=1'
      '  ORDER BY orc.orcchave;'
      '')
    Left = 328
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object immsaidaorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object immsaidafoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object immsaidastocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object immsaidarelarquivo: TBlobField
      FieldName = 'relarquivo'
      ReadOnly = True
    end
    object immsaidaorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object immsaidaorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
    end
    object immsaidagricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
    object immsaidagrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object immsaidaimmchave: TIntegerField
      FieldName = 'immchave'
    end
  end
  object immretorno: TUniQuery
    Connection = Conexao
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
      '  FROM imm '
      ' INNER JOIN ito ON imm.itochave = ito.itochave'
      ' INNER JOIN pro ON pro.procodigo = ito.procodigo'
      ''
      ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
      
        ' INNER JOIN gri on imm.tcicodigo = gri.tcicodigo and gri.grpcodi' +
        'go=pro.grpcodigo'
      ' inner JOIN  imw ON imw.itochave = ito.itochave '
      '   '
      ' WHERE orc.stocodigo NOT IN (1, 88)'
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhoraentregadopedido IS null'
      '   and orc.orcretorno is not null'
      ''
      '   AND orc.orcdataencerr is null'
      '   AND imm.cznchave=:cznchave'
      '   AND imm.immmodo<>9'
      '   AND orc.foacodigo=2'
      '   AND gri.griimprimeauto=1'
      '   AND LENGTH(orc.orctelefone)=11'
      '  ORDER BY orc.orcchave;'
      '')
    Left = 328
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object immretornoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object immretornofoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object immretornostocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object immretornorelarquivo: TBlobField
      FieldName = 'relarquivo'
      ReadOnly = True
    end
    object immretornoorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object immretornoorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
    end
    object immretornogricodigo: TIntegerField
      FieldName = 'gricodigo'
    end
    object immretornogrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object immretornoimmchave: TIntegerField
      FieldName = 'immchave'
    end
  end
  object itosaida: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @orcchave =:orcchave;'
      ''
      'DROP TEMPORARY TABLE IF EXISTS tped;'
      '   '
      'CREATE TEMPORARY TABLE tped'
      '     ( id            INT NOT NULL AUTO_INCREMENT'
      '     , orcchave      INT'
      '     , immchave      INT'
      '     , immnumepedido INT '
      '     , tcicodigo     INT'
      '     , pedidoaux     INT'
      '     , itochave      INT '
      '     , PRIMARY KEY (id)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      ''
      'INSERT INTO tped'
      '  (SELECT 0 '
      '        , timm.orcchave'
      '        , timm.immchave'
      '        , timm.immnumepedido'
      '        , timm.tcicodigo'
      '        , pedidoaux'
      '        , timm.itochave'
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88) '
      '           AND ito.stocodigo NOT IN (1, 88) '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS null'
      ''
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)  '
      '           AND ito.stocodigo NOT IN (1, 88)'
      '  '
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND immhorasaidadopedido IS null'
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
      '    , timm.itochave'
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS null      '
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ''
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS null'
      ''
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '/* SET @orcchave =:orcchave;'
      ''
      'DROP TEMPORARY TABLE IF EXISTS tped;'
      '   '
      'CREATE TEMPORARY TABLE tped'
      '     ( id            INT NOT NULL AUTO_INCREMENT'
      '     , orcchave      INT'
      '     , immchave      INT'
      '     , immnumepedido INT '
      '     , tcicodigo     INT'
      '     , pedidoaux     INT'
      '     , itochave      INT '
      '     , PRIMARY KEY (id)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      ''
      'INSERT INTO tped'
      '  (SELECT 0 '
      '        , timm.orcchave'
      '        , timm.immchave'
      '        , timm.immnumepedido'
      '        , timm.tcicodigo'
      '        , pedidoaux'
      '        , timm.itochave'
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88) '
      '           AND ito.stocodigo NOT IN (1, 88) '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS not null'
      '   AND immhorasaidadopedido IS null'
      ''
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)  '
      '           AND ito.stocodigo NOT IN (1, 88)'
      '  '
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS not null'
      '   AND immhorasaidadopedido IS null'
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
      '    , timm.itochave'
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS not null'
      '   AND immhorasaidadopedido IS null      '
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ''
      ' AND imm.immhoraimpresso IS NOT NULL '
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imm.immhoranotificadopedido IS not null'
      '   AND immhorasaidadopedido IS null'
      ''
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      ''
      '*/')
    Left = 384
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itosaidaorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object itosaidaimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object itosaidatcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object itosaidatciporta: TStringField
      FieldName = 'tciporta'
      ReadOnly = True
      Size = 50
    end
    object itosaidamitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itosaidafoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object itosaidapedidoaux: TIntegerField
      FieldName = 'pedidoaux'
      Required = True
    end
    object itosaidaitochave: TIntegerField
      FieldName = 'itochave'
    end
  end
  object itoretorno: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SET @orcchave =:orcchave;'
      ''
      'DROP TEMPORARY TABLE IF EXISTS tped;'
      '   '
      'CREATE TEMPORARY TABLE tped'
      '     ( id            INT NOT NULL AUTO_INCREMENT'
      '     , orcchave      INT'
      '     , immchave      INT'
      '     , immnumepedido INT '
      '     , tcicodigo     INT'
      '     , pedidoaux     INT'
      '     , itochave      INT '
      '     , PRIMARY KEY (id)'
      '     ) ENGINE = INNODB DEFAULT charset = latin1;'
      ''
      'INSERT INTO tped'
      '  (SELECT 0 '
      '        , timm.orcchave'
      '        , timm.immchave'
      '        , timm.immnumepedido'
      '        , timm.tcicodigo'
      '        , pedidoaux'
      '        , timm.itochave'
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88) '
      '           AND ito.stocodigo NOT IN (1, 88) '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS not null'
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoraentregadopedido is null'
      '   and orc.orcretorno is not null'
      ''
      ''
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
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)  '
      '           AND ito.stocodigo NOT IN (1, 88)'
      '  '
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS not null'
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoraentregadopedido is null'
      '   and orc.orcretorno is not null'
      ''
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
      '    , timm.itochave'
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         INNER JOIN pro ON ito.procodigo = pro.procodigo'
      '         INNER JOIN gri ON pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp ON pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ''
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS not null'
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoraentregadopedido is null'
      '   and orc.orcretorno is not null'
      '    '
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
      '          FROM imm'
      '         INNER JOIN ito ON imm.itochave = ito.itochave'
      'inner JOIN  imw ON imw.itochave = ito.itochave'
      '         INNER JOIN orc ON ito.orcchave = orc.orcchave'
      '         inner join pro on ito.procodigo = pro.procodigo'
      '         INNER JOIN gri on pro.grpcodigo = gri.grpcodigo'
      '         INNER JOIN grp on pro.grpcodigo = grp.grpcodigo'
      '         WHERE orc.orcchave = @orcchave'
      '           AND orc.foacodigo = 2'
      '           AND orc.stocodigo NOT IN (1, 88)   '
      '           AND ito.stocodigo NOT IN (1, 88) '
      ''
      '   AND imm.immhoraimpresso IS NOT NULL '
      '   AND imwhoranotificadopedido IS not null'
      '   AND imwhorasaidadopedido IS not null'
      '   AND imm.immhoraentrega IS NOT NULL '
      '   AND imwhoraentregadopedido is null'
      '   and orc.orcretorno is not null'
      ''
      '           AND gri.gripedidoaux = 1 ) timm'
      '        INNER JOIN tci ON timm.tcicodigo = tci.tcicodigo'
      '        INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo')
    Left = 384
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoretornoorcchave: TIntegerField
      FieldName = 'orcchave'
      Required = True
    end
    object itoretornoimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object itoretornotcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
    object itoretornotciporta: TStringField
      FieldName = 'tciporta'
      ReadOnly = True
      Size = 50
    end
    object itoretornomitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object itoretornofoacodigo: TIntegerField
      FieldName = 'foacodigo'
      Required = True
    end
    object itoretornopedidoaux: TIntegerField
      FieldName = 'pedidoaux'
      Required = True
    end
    object itoretornoitochave: TIntegerField
      FieldName = 'itochave'
    end
  end
  object tmVerificarSaidas: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmVerificarSaidasTimer
    Left = 584
    Top = 184
  end
  object tmVerificarRetornos: TTimer
    Enabled = False
    OnTimer = tmVerificarRetornosTimer
    Left = 680
    Top = 184
  end
end
