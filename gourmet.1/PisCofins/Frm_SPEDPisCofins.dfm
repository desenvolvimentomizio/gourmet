object FrmSPEDPisCofins: TFrmSPEDPisCofins
  Left = 356
  Top = 153
  Caption = 'ACBrSpedPisCofins - Demo'
  ClientHeight = 547
  ClientWidth = 691
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    691
    547)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 160
    Width = 65
    Height = 13
    Caption = 'Lista de erros'
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 75
    Height = 13
    Caption = 'Arquivo Gerado'
    Color = clBtnFace
    ParentColor = False
  end
  object Label7: TLabel
    Left = 24
    Top = 507
    Width = 63
    Height = 13
    Caption = 'Buffer Linhas'
    Color = clBtnFace
    ParentColor = False
  end
  object Label8: TLabel
    Left = 128
    Top = 507
    Width = 61
    Height = 13
    Caption = 'Buffer Notas'
    Color = clBtnFace
    ParentColor = False
  end
  object memoError: TMemo
    Left = 8
    Top = 177
    Width = 645
    Height = 83
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object memoTXT: TMemo
    Left = 8
    Top = 288
    Width = 645
    Height = 201
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WantReturns = False
    WordWrap = False
  end
  object btnError: TButton
    Left = 392
    Top = 514
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar TXT Error'
    TabOrder = 2
    OnClick = btnErrorClick
  end
  object btnTXT: TButton
    Left = 525
    Top = 514
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar TXT'
    TabOrder = 3
    OnClick = btnTXTClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 4
    DesignSize = (
      687
      54)
    object Label1: TLabel
      Left = 22
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Nome do Arquivo'
      Color = clBtnFace
      ParentColor = False
    end
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 687
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = '1 - Informe o Nome do Arquivo e m'#233'todo de Gera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 341
    end
    object edtFile: TEdit
      Left = 22
      Top = 28
      Width = 40
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'ACBrSpedPISCofins.txt'
      OnChange = edtFileChange
      OnExit = edtFileChange
    end
    object cbConcomitante: TCheckBox
      Left = 68
      Top = 29
      Width = 134
      Height = 19
      Hint = 
        'Grava os Registros a medida que s'#227'o alimentados'#13#10'Economizando me' +
        'm'#243'ria. '#13#10#218'til para evitar erros em arquivos Enormes'
      Anchors = [akTop, akRight]
      Caption = 'Gerar Concomitante'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbConcomitanteClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 691
    Height = 87
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 5
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 685
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 
        '2 - Clique em cada bot'#227'o dos Blocos e em seguida no bot'#227'o Gerar ' +
        'TXT'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 450
    end
    object btnB_0: TButton
      Left = 22
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco 0'
      TabOrder = 0
      OnClick = btnB_0Click
    end
    object btnB_1: TButton
      Left = 504
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco 1'
      TabOrder = 1
      OnClick = btnB_1Click
    end
    object btnB_C: TButton
      Left = 183
      Top = 51
      Width = 60
      Height = 25
      Caption = 'Bloco C'
      TabOrder = 3
      OnClick = btnB_CClick
    end
    object btnB_D: TButton
      Left = 262
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco D'
      TabOrder = 4
      OnClick = btnB_DClick
    end
    object btnB_A: TButton
      Left = 103
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco A'
      TabOrder = 2
      OnClick = btnB_AClick
    end
    object btnB_F: TButton
      Left = 343
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco F'
      TabOrder = 5
      OnClick = btnB_FClick
    end
    object btnB_M: TButton
      Left = 424
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco M'
      TabOrder = 6
      OnClick = btnB_MClick
    end
    object btnVariosBlocos: TButton
      Left = 22
      Top = 20
      Width = 625
      Height = 25
      Hint = 'Gera o arquivo com os bloco 0,1,A,C,9'
      Caption = 'Todos os Blocos'
      TabOrder = 7
      OnClick = btnVariosBlocosClick
    end
    object btnB_P: TButton
      Left = 585
      Top = 51
      Width = 62
      Height = 25
      Caption = 'Bloco P'
      TabOrder = 8
      OnClick = btnB_PClick
    end
  end
  object btnB_9: TButton
    Left = 268
    Top = 514
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gravar Bloco 9'
    Enabled = False
    TabOrder = 6
    OnClick = btnB_9Click
  end
  object edBufLinhas: TEdit
    Left = 16
    Top = 521
    Width = 80
    Height = 21
    TabOrder = 7
    Text = '1000'
  end
  object edBufNotas: TEdit
    Left = 128
    Top = 521
    Width = 80
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = '1000'
  end
  object ProgressBar1: TProgressBar
    Left = 199
    Top = 151
    Width = 348
    Height = 20
    TabOrder = 9
    Visible = False
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = '.\'
    Arquivo = 'ACBrSPEDPisCofins.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 240
    Top = 184
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select * from cfgmspd,cfg where cfg.cfgcodigo=cfgmspd.cfgcodigo ' +
        'and cfg.flacodigo=:flacodigo')
    Left = 158
    Top = 321
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      Required = True
    end
    object cfgssncodigo: TIntegerField
      FieldName = 'ssncodigo'
      Required = True
    end
    object cfgcfgperfil: TStringField
      FieldName = 'cfgperfil'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cfgcfgcnae: TStringField
      FieldName = 'cfgcnae'
      Required = True
    end
    object cfgcfgetdsped: TIntegerField
      FieldName = 'cfgetdsped'
      Required = True
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      Size = 5
    end
    object cfgcfgcstcuf: TStringField
      FieldName = 'cfgcstcuf'
      Size = 3
    end
    object cfgcfgspedicms: TStringField
      FieldName = 'cfgspedicms'
      Size = 1
    end
  end
  object spd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 117
    Top = 329
    object spdspdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'spdchave'
    end
    object spdspdexercicio: TIntegerField
      FieldName = 'spdexercicio'
      Required = True
    end
    object spdspddatainicial: TDateField
      FieldName = 'spddatainicial'
      Required = True
    end
    object spdspddatafinal: TDateField
      FieldName = 'spddatafinal'
      Required = True
    end
    object spdspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
      Required = True
    end
    object spdpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 30
    end
    object spdspdativo: TIntegerField
      FieldName = 'spdativo'
      Required = True
    end
    object spdspdmotivoinv: TStringField
      FieldName = 'spdmotivoinv'
      Required = True
      FixedChar = True
      Size = 2
    end
    object spdspdvalortotal: TFloatField
      FieldName = 'spdvalortotal'
      Required = True
    end
    object spdspdpasta: TStringField
      FieldName = 'spdpasta'
      Size = 250
    end
    object spdspdregistro: TDateTimeField
      FieldName = 'spdregistro'
    end
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
      end>
    ProviderName = 'mySQL'
    Database = 'anjos1909'
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '192.168.5.150'
    LoginPrompt = False
    Left = 56
    Top = 184
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 136
    Top = 184
  end
  object ctd: TUniQuery
    SQL.Strings = (
      'select * from ctd')
    Left = 119
    Top = 383
    object ctdctdcodigo: TIntegerField
      FieldName = 'ctdcodigo'
    end
    object ctdcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object ctdctdidentificacao: TStringField
      FieldName = 'ctdidentificacao'
      Required = True
      Size = 100
    end
    object ctdctdcpf: TStringField
      FieldName = 'ctdcpf'
    end
    object ctdctdcrc: TStringField
      FieldName = 'ctdcrc'
      Required = True
      Size = 15
    end
    object ctdctdcnpj: TStringField
      FieldName = 'ctdcnpj'
    end
    object ctdctdcep: TStringField
      FieldName = 'ctdcep'
      Required = True
      Size = 10
    end
    object ctdctdendereco: TStringField
      FieldName = 'ctdendereco'
      Required = True
      Size = 60
    end
    object ctdctdnumero: TStringField
      FieldName = 'ctdnumero'
      Required = True
      Size = 10
    end
    object ctdctdcomple: TStringField
      FieldName = 'ctdcomple'
      Size = 60
    end
    object ctdctdbairro: TStringField
      FieldName = 'ctdbairro'
      Required = True
      Size = 60
    end
    object ctdctdfone: TStringField
      FieldName = 'ctdfone'
      Required = True
      Size = 11
    end
    object ctdctdfax: TStringField
      FieldName = 'ctdfax'
      Size = 11
    end
    object ctdctdemail: TStringField
      FieldName = 'ctdemail'
      Required = True
      Size = 200
    end
    object ctdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
  end
  object CfgEtd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT etd.etdcodigo,'
      '       etd.etdidentificacao,'
      '       etd.etddoc1,'
      '       etd.tpecodigo,'
      '       edr.edrcodigo,'
      '       edr.edrinscest,'
      '       edr.cddcodigo,'
      '       edr.edrrua,'
      '       edr.edrnumero,'
      '       edr.edrcomple,'
      '       edr.edrbairro,'
      '       edr.edrcep,'
      '       ufs.ufssigla,'
      '       etd.etdapelido,'
      '       etf.etftelefone,'
      '       ete.eteemail'
      'FROM cfgmcfg,'
      '     etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     ufs,'
      '     etf,'
      '     ete'
      'WHERE etd.etdcodigo = cfgmcfg.cfgetdempresa AND'
      '      edr.etdcodigo = etd.etdcodigo AND'
      '      etf.etdcodigo = etd.etdcodigo AND'
      '      ete.etdcodigo = etd.etdcodigo AND'
      '      etd.tpecodigo = tpe.tpecodigo AND'
      '      edr.cddcodigo = cdd.cddcodigo AND'
      '      ufs.ufscodigo = cdd.ufscodigo AND'
      '      edr.tedcodigo = 1 AND'
      '      etf.ttfcodigo = 1 AND'
      '      ete.eteenvianfe = 1')
    Left = 160
    Top = 384
    object CfgEtdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object CfgEtdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object CfgEtdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object CfgEtdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object CfgEtdedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
      Required = True
    end
    object CfgEtdedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object CfgEtdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object CfgEtdedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object CfgEtdedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object CfgEtdedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 60
    end
    object CfgEtdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object CfgEtdufssigla: TStringField
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object CfgEtdetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 35
    end
    object CfgEtdetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object CfgEtdeteemail: TStringField
      FieldName = 'eteemail'
      ReadOnly = True
      Size = 100
    end
    object CfgEtdedrcep: TStringField
      FieldName = 'edrcep'
      ReadOnly = True
      Required = True
      Size = 10
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  mes.meschave,'
      '  pro.procodigo,'
      '  pronome,'
      '  pro.tpocodigo,'
      '  tpoidentificacao,'
      '  proncm,'
      '  pro.icmcodigo,'
      '  icmaliquotas,'
      '  pro.unicodigo,'
      '  unisimbolo,'
      '  punbarra,'
      '  itm.pronomeori'
      'FROM pro,'
      '     pun,'
      '     icm,'
      '     tpo,'
      '     uni,'
      '     mes,'
      '     itm,'
      '     toe,'
      '     tdf'
      'WHERE pun.procodigo = pro.procodigo'
      'AND pro.icmcodigo = icm.icmcodigo'
      'AND pro.tpocodigo = tpo.tpocodigo'
      'AND mes.tdfcodigo = tdf.tdfcodigo'
      'AND pun.unicodigo = uni.unicodigo'
      'AND pro.procodigo = itm.procodigo'
      'AND mes.meschave = itm.meschave'
      'AND mes.toecodigo = toe.toecodigo'
      'AND uni.unicodigo = pro.unicodigo'
      
        'AND (toe.ttmcodigo = 1 OR tdf.tdfcodigo IN ('#39'2D'#39', '#39'01'#39', '#39'06'#39', '#39'2' +
        '1'#39', '#39'22'#39','#39'55'#39','#39'65'#39'))'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final'
      'GROUP BY pro.procodigo')
    Left = 248
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object propunbarra: TStringField
      FieldName = 'punbarra'
      ReadOnly = True
      Size = 50
    end
    object protpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      Required = True
    end
    object protpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object proproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object proicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object prounicodigo: TIntegerField
      FieldName = 'unicodigo'
      ReadOnly = True
      Required = True
    end
    object proicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object prounisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object etd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.etddoc1,'
      '  etd.tpecodigo,'
      '  edr.edrcodigo,'
      '  edr.edrinscest,'
      '  edr.cddcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrcomple,'
      '  edr.edrbairro,'
      '  edr.edritem'
      'FROM etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     mes'
      'WHERE edr.etdcodigo = etd.etdcodigo'
      'AND etd.tpecodigo = tpe.tpecodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND mes.etdcodigo = etd.etdcodigo'
      'AND edr.edritem = mes.edritem'
      'AND mes.tdfcodigo IN ('#39'01'#39', '#39'1B'#39', '#39'04'#39', '#39'55'#39', '#39'65'#39')'
      'AND mes.sdecodigo = '#39'00'#39
      'AND mes.temcodigo in (3,5)'
      'AND etd.etdcodigo <> 0'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final')
    Left = 208
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object etdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 50
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
    end
    object etdedritem: TIntegerField
      FieldName = 'edritem'
      ReadOnly = True
      Required = True
    end
  end
  object toe: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  toe.toecodigo,'
      '  toeidentificacao'
      'FROM toe,'
      '     itm,'
      '     mes,'
      '     tdf'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND mes.tdfcodigo = tdf.tdfcodigo'
      'AND mes.meschave = itm.meschave'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final'
      
        'AND (toe.ttmcodigo = 1 OR tdf.tdfcodigo IN ('#39'01'#39', '#39'06'#39', '#39'21'#39', '#39'2' +
        '2'#39'))'
      'AND mes.temcodigo in (3,5)')
    Left = 281
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
  end
  object uni: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  uni.unicodigo,'
      '  unisimbolo,'
      '  uninome'
      'FROM uni,'
      '     itm,'
      '     mes,'
      '     pro,'
      '     toe'
      'WHERE '
      'pro.procodigo = itm.procodigo '
      'AND itm.unicodigo = uni.unicodigo'
      'AND mes.meschave = itm.meschave'
      'AND mes.toecodigo = toe.toecodigo'
      'AND mes.tdfcodigo IN ('#39'01'#39', '#39'1B'#39', '#39'04'#39', '#39'55'#39', '#39'65'#39')'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final'
      '-- AND toe.ttecodigo = 0')
    Left = 320
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Required = True
      FixedChar = True
      Size = 6
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Required = True
    end
  end
  object tof: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select tofcodigo,tofidentificacao from tof')
    Left = 353
    Top = 383
    object toftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Required = True
      Size = 350
    end
  end
  object fla: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  flacodigo,'
      '  flaidentificacao,'
      '  flasigla,'
      '  fla.etdcodigo,'
      '  etddoc1,'
      '  etd.etdidentificacao,'
      '  etd.tpecodigo,'
      '  edr.edrcodigo,'
      '  edr.edrinscest,'
      '  edr.cddcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrcomple,'
      '  edr.edrbairro,'
      '  edr.edrcep,'
      '  ufs.ufssigla,'
      '  etd.etdapelido,'
      '  etf.etftelefone,'
      '  ete.eteemail'
      'FROM cfgmcfg,'
      '     etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     ufs,'
      '     etf,'
      '     ete,'
      '     fla'
      'WHERE etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND edr.etdcodigo = etd.etdcodigo'
      'AND etf.etdcodigo = etd.etdcodigo'
      'AND ete.etdcodigo = etd.etdcodigo'
      'AND etd.tpecodigo = tpe.tpecodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND ufs.ufscodigo = cdd.ufscodigo'
      'AND edr.tedcodigo = 1'
      'AND etf.ttfcodigo = 1'
      'AND ete.eteenvianfe = 1'
      'AND fla.etdcodigo = etd.etdcodigo limit 1')
    Left = 392
    Top = 384
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Required = True
      Size = 50
    end
    object flaflasigla: TStringField
      FieldName = 'flasigla'
      Size = 3
    end
    object flaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object flaetddoc1: TStringField
      FieldName = 'etddoc1'
      ReadOnly = True
    end
    object flaetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object flatpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      ReadOnly = True
      Required = True
    end
    object flaedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object flaedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object flacddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object flaedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object flaedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object flaedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 60
    end
    object flaedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object flaedrcep: TStringField
      FieldName = 'edrcep'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object flaufssigla: TStringField
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object flaetdapelido: TStringField
      FieldName = 'etdapelido'
      ReadOnly = True
      Size = 100
    end
    object flaetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object flaeteemail: TStringField
      FieldName = 'eteemail'
      ReadOnly = True
      Size = 100
    end
  end
  object mEtd: TVirtualTable
    Left = 568
    Top = 383
    Data = {04000000000000000000}
    object mEtdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mEtdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object mEtdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object mEtdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
    object mEtdedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object mEtdedrinscest: TStringField
      FieldName = 'edrinscest'
    end
    object mEtdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Size = 10
    end
    object mEtdedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object mEtdedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object mEtdedrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 50
    end
    object mEtdedrbairro: TStringField
      FieldName = 'edrbairro'
    end
    object mEtdedritem: TIntegerField
      FieldName = 'edritem'
    end
  end
  object mUni: TVirtualTable
    Left = 528
    Top = 383
    Data = {04000000000000000000}
    object mUniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object mUniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object mUniuninome: TStringField
      FieldName = 'uninome'
    end
  end
  object mPro: TVirtualTable
    Left = 496
    Top = 383
    Data = {04000000000000000000}
    object mProprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object mPropronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object mPropunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object mProtpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object mProtpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      Size = 30
    end
    object mProproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object mProicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object mProunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object mProicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object mProunisimbolo: TStringField
      FieldName = 'unisimbolo'
      FixedChar = True
      Size = 6
    end
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 432
    Top = 328
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  toe.ttecodigo,'
      '  toe.ttmcodigo,'
      '  mes.etdcodigo,'
      '  mes.tdfcodigo,'
      '  mes.sdecodigo,'
      '  mes.messerie,'
      '  mes.mesnumero,'
      '  mes.meschavenfe,'
      '  mes.mesemissao,'
      '  mes.mesregistro,'
      
        '  (select sum(itmtotal) from itm,pro where itm.procodigo=pro.pro' +
        'codigo and pro.tpocodigo in (0,1,7) and itm.meschave=mes.meschav' +
        'e) as mesvalor,'
      '  mes.tfpcodigo,'
      '  mes.mesdesconto,'
      
        '  ( (select sum(itmtotal) from itm,pro where itm.procodigo=pro.p' +
        'rocodigo and pro.tpocodigo in (0,1,7) and itm.meschave=mes.mesch' +
        'ave))as mestotal,'
      '   '
      '  mes.mesfrete,'
      '  mes.messeguro,'
      '  mes.mesoutras,'
      '  mes.mesbicm,'
      '  mes.mesicm,'
      '  mes.mesbicms,'
      '  mes.mesicms,'
      '  mes.mesipi,'
      '  mes.mespis,'
      '  mes.mescofins,'
      '  mes.mespiss,'
      '  mes.mescofinss,'
      '  mes.toecodigo,'
      '  mes.refcodigo,'
      '  mes.edritem,'
      ' '
      
        '  ( (select sum(itmtotal) from itm,pro where itm.procodigo=pro.p' +
        'rocodigo and pro.tpocodigo in (0,1,7) and itm.meschave=mes.mesch' +
        'ave)-mes.mesdesconto +mes.mesoutras+mes.mesfrete)as mesprodutos,'
      ' '
      ' '
      '  mes.temcodigo,'
      '  mesxml.mesarqxml mesxml'
      ''
      'FROM toe,'
      '     etd,'
      '     tdf,'
      '     sde,'
      '     mes,'
      '     mesxml'
      'WHERE (mes.toecodigo = toe.toecodigo'
      'AND toe.ttocodigo in (1,3,2,9) and toe.ttocodigo not in (8,7)) '
      'AND mes.etdcodigo = etd.etdcodigo'
      'AND mes.meschave=mesxml.meschave'
      'AND mes.temcodigo<>4'
      'AND mes.tdfcodigo = tdf.tdfcodigo'
      'AND mes.sdecodigo = sde.sdecodigo'
      'AND mes.tdfcodigo IN ('#39'01'#39', '#39'1B'#39', '#39'04'#39', '#39'55'#39') '
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final '
      'ORDER BY mes.mesregistro, mes.meschavenfe')
    Left = 120
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object mesttecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object mesttmcodigo: TIntegerField
      FieldName = 'ttmcodigo'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object mestdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object messdecodigo: TStringField
      FieldName = 'sdecodigo'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object mesmesserie: TStringField
      FieldName = 'messerie'
      ReadOnly = True
      Size = 5
    end
    object mesmesnumero: TIntegerField
      FieldName = 'mesnumero'
      ReadOnly = True
    end
    object mesmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      ReadOnly = True
      Size = 100
    end
    object mesmesemissao: TDateField
      FieldName = 'mesemissao'
      ReadOnly = True
      Required = True
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
      ReadOnly = True
      Required = True
    end
    object mesmesvalor: TFloatField
      FieldName = 'mesvalor'
      ReadOnly = True
      Required = True
    end
    object mesmesdesconto: TFloatField
      FieldName = 'mesdesconto'
      ReadOnly = True
      Required = True
    end
    object mesmestotal: TFloatField
      FieldName = 'mestotal'
      ReadOnly = True
      Required = True
    end
    object mesrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object mesmesfrete: TFloatField
      FieldName = 'mesfrete'
      ReadOnly = True
      Required = True
    end
    object mesmesseguro: TFloatField
      FieldName = 'messeguro'
      ReadOnly = True
      Required = True
    end
    object mesmesoutras: TFloatField
      FieldName = 'mesoutras'
      ReadOnly = True
      Required = True
    end
    object mesmesbicm: TFloatField
      FieldName = 'mesbicm'
      ReadOnly = True
      Required = True
    end
    object mesmesicm: TFloatField
      FieldName = 'mesicm'
      ReadOnly = True
      Required = True
    end
    object mesmesbicms: TFloatField
      FieldName = 'mesbicms'
      ReadOnly = True
      Required = True
    end
    object mesmesicms: TFloatField
      FieldName = 'mesicms'
      ReadOnly = True
      Required = True
    end
    object mesmesipi: TFloatField
      FieldName = 'mesipi'
      ReadOnly = True
      Required = True
    end
    object mesmespis: TFloatField
      FieldName = 'mespis'
      ReadOnly = True
      Required = True
    end
    object mesmescofins: TFloatField
      FieldName = 'mescofins'
      ReadOnly = True
      Required = True
    end
    object mesmespiss: TFloatField
      FieldName = 'mespiss'
      ReadOnly = True
      Required = True
    end
    object mesmescofinss: TFloatField
      FieldName = 'mescofinss'
      ReadOnly = True
      Required = True
    end
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mestoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object mestfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object mesedritem: TIntegerField
      FieldName = 'edritem'
    end
    object mesmesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object mestemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object mesmesxml: TBlobField
      FieldName = 'mesxml'
    end
  end
  object itm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  itm.itmchave,'
      '  itm.meschave,'
      '  itm.itmitem,'
      '  itm.procodigo,'
      '  itm.itmdesccomple,'
      '  itm.cfocfop,'
      '  itm.unicodigo,'
      '  itm.itmquantidade,'
      '  itm.itmdesconto,'
      '  itm.itmmovifisico,'
      '  itm.toecodigo,'
      '  itm.itmbicm,'
      '  itm.itmicm,'
      '  itm.itmaliqicm,'
      '  itm.itmicms,'
      '  itm.itmaliqicms,'
      '  itm.itmbicms,'
      '  itm.itmapuipi,'
      '  itm.csicodigo,'
      '  itm.ceicodigo,'
      '  itm.itmbipi,'
      '  itm.itmaliqipi,'
      '  itm.itmipi,'
      '  itm.cspcodigo,'
      '  itm.itmbpis,'
      '  itm.itmaliqpis,'
      '  itm.itmquantpis,'
      '  itm.itmaliqpisvalor,'
      '  itm.itmpis,'
      '  itm.csfcodigo,'
      '  itm.itmoutras,'
      '  itm.itmbcofins,'
      '  itm.itmaliqcofins,'
      '  itm.itmquantcofins,'
      '  itm.itmaliqcofinsvalor,'
      '  itm.itmcofins,'
      '  toe.toecfopsaida as cfocfopdestinacao,'
      '  itm.cstcodigo,'
      '  uni.unisimbolo,'
      '  itm.itmtotal'
      'FROM mes,'
      '     itm,'
      '     pro,'
      '     uni,'
      '     toe,'
      '     csi,'
      '     csp,'
      '     csf,'
      '     cfo'
      'WHERE itm.meschave = mes.meschave'
      'AND itm.procodigo = pro.procodigo'
      'AND itm.unicodigo = uni.unicodigo'
      'AND itm.cfocfop = cfo.cfocfop'
      'AND toe.ttocodigo in (1,3,2,9)'
      'AND itm.toecodigo = toe.toecodigo'
      'AND itm.csicodigo = csi.csicodigo'
      'AND itm.cspcodigo = csp.cspcodigo'
      'AND itm.csfcodigo = csf.csfcodigo'
      'AND mes.temcodigo<>4'
      'AND mes.meschave not in (5724,5723,5722)'
      'AND pro.tpocodigo <> 9'
      'AND itm.meschave = :meschave')
    Left = 160
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itmitmitem: TIntegerField
      FieldName = 'itmitem'
      Required = True
    end
    object itmprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmquantidade: TFloatField
      FieldName = 'itmquantidade'
      Required = True
    end
    object itmunicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object itmunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
    object itmitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      Required = True
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 5
    end
    object itmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
    end
    object itmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
      Required = True
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
  end
  object itmC175: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  itm.cstcodigo,'
      '  toe.toecfopsaida AS cfocfopdestinacao,'
      '  itmaliqicm,'
      '  SUM(itmbicm) AS itmbicm,'
      '  SUM(itmicm) AS itmicm,'
      '  SUM(itmbicms) AS itmbicms,'
      '  SUM(itmicms) AS itmicms,'
      '  SUM(itmipi) AS itmipi,'
      
        '  SUM(itmtotal + (itmfrete - itmdesconto + itmoutras + itmseguro' +
        ')) AS total,'
      ''
      '  itm.itmapuipi,'
      '  itm.csicodigo,'
      '  itm.ceicodigo,'
      '  SUM(itm.itmbipi) itmbipi,'
      '  itm.itmaliqipi,'
      '  itm.itmipi,'
      '  itm.cspcodigo,'
      '  SUM(itm.itmbpis) itmbpis,'
      '  itm.itmaliqpis,'
      '  sum(itmquantidade) as itmquantpis,'
      '  itm.itmaliqpisvalor,'
      '  SUM(itm.itmpis) itmpis,'
      '  itm.csfcodigo,'
      '  itm.itmoutras,'
      '  SUM(itm.itmbcofins) itmbcofins,'
      '  itm.itmaliqcofins,'
      '  sum(itmquantidade) as itmquantcofins,'
      '  itm.itmaliqcofinsvalor,'
      '  SUM(itm.itmcofins) AS itmcofins,'
      '  SUM(itmdesconto) AS itmdesconto'
      'FROM mes,'
      '     itm,'
      '     toe,'
      '     pro'
      'WHERE itm.meschave = mes.meschave'
      'AND itm.procodigo = pro.procodigo'
      'AND pro.tpocodigo <> 9'
      'AND mes.temcodigo<>4'
      'AND mes.sdecodigo<>'#39'02'#39
      'AND itm.toecodigo = toe.toecodigo'
      'AND toe.ttocodigo in (1,3,2,9)'
      'AND mes.meschave = :meschave')
    Left = 487
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmC175cstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 5
    end
    object itmC175cfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmC175itmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmC175itmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmC175itmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmC175itmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmC175itmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmC175itmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
    end
    object itmC175total: TFloatField
      FieldName = 'total'
    end
    object itmC175itmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmC175csicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmC175ceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmC175itmbipi: TFloatField
      FieldName = 'itmbipi'
      ReadOnly = True
    end
    object itmC175itmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
    end
    object itmC175itmipi_1: TFloatField
      FieldName = 'itmipi_1'
      Required = True
    end
    object itmC175cspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmC175itmbpis: TFloatField
      FieldName = 'itmbpis'
      ReadOnly = True
    end
    object itmC175itmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmC175itmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmC175itmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmC175itmpis: TFloatField
      FieldName = 'itmpis'
      ReadOnly = True
    end
    object itmC175csfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmC175itmoutras: TFloatField
      FieldName = 'itmoutras'
      Required = True
    end
    object itmC175itmbcofins: TFloatField
      FieldName = 'itmbcofins'
      ReadOnly = True
    end
    object itmC175itmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmC175itmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmC175itmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmC175itmcofins: TFloatField
      FieldName = 'itmcofins'
      ReadOnly = True
    end
    object itmC175itmdesconto: TFloatField
      FieldName = 'itmdesconto'
      ReadOnly = True
    end
  end
  object itmC180: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  itm.procodigo,'
      '  itm.cfocfopdestinacao,'
      '  SUM(itmtotal)-SUM(itm.itmdesconto) AS itmtotal,'
      '  mes.tdfcodigo,'
      ' SUM(itm.itmbpis) itmbpis,'
      '  itm.itmaliqpis,'
      '  itm.itmquantpis,'
      '  itm.itmaliqpisvalor,'
      '  SUM(itm.itmpis) itmpis,'
      '  itm.csfcodigo,'
      '  itm.itmoutras,'
      '  SUM(itm.itmbcofins) itmbcofins,'
      '  itm.itmaliqcofins,'
      '  itm.itmquantcofins,'
      '  itm.itmaliqcofinsvalor,'
      ' SUM(itm.itmcofins) AS itmcofins,'
      '  SUM(itm.itmdesconto) AS itmdesconto,'
      '  pro.proncm,'
      '  itm.toecodigo,'
      '  itm.meschave'
      'FROM itm,'
      '     pro,'
      '     mes,'
      '     toe'
      'WHERE mes.meschave = itm.meschave'
      ' AND itm.procodigo = pro.procodigo'
      'AND itm.toecodigo=toe.toecodigo'
      'AND mes.temcodigo<>4'
      'AND mes.sdecodigo<>'#39'02'#39
      'AND toe.ttecodigo=1'
      'AND toe.ttocodigo=2'
      'AND toe.ttmcodigo=0'
      'AND toe.ttocodigo in (1,3,2,9)'
      ''
      
        'AND (mesregistro BETWEEN :Inicio AND :final) AND (mes.tdfcodigo=' +
        #39'55'#39' or mes.tdfcodigo='#39'65'#39') '
      ' GROUP BY proncm')
    Left = 536
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object itmC180procodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itmC180cfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Required = True
      Size = 5
    end
    object itmC180itmtotal: TFloatField
      FieldName = 'itmtotal'
      ReadOnly = True
    end
    object itmC180tdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object itmC180itmbpis: TFloatField
      FieldName = 'itmbpis'
      ReadOnly = True
    end
    object itmC180itmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmC180itmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmC180itmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmC180itmpis: TFloatField
      FieldName = 'itmpis'
      ReadOnly = True
    end
    object itmC180csfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmC180itmoutras: TFloatField
      FieldName = 'itmoutras'
      Required = True
    end
    object itmC180itmbcofins: TFloatField
      FieldName = 'itmbcofins'
      ReadOnly = True
    end
    object itmC180itmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmC180itmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmC180itmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmC180itmcofins: TFloatField
      FieldName = 'itmcofins'
      ReadOnly = True
    end
    object itmC180proncm: TStringField
      FieldName = 'proncm'
      ReadOnly = True
      Size = 15
    end
    object itmC180itmdesconto: TFloatField
      FieldName = 'itmdesconto'
      ReadOnly = True
    end
  end
  object itmM600: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  itm.cstcodigo,'
      '  toe.toecfopsaida AS cfocfopdestinacao,'
      '  itmaliqicm,'
      '  SUM(itmbicm) AS itmbicm,'
      '  SUM(itmicm) AS itmicm,'
      '  SUM(itmbicms) AS itmbicms,'
      '  SUM(itmicms) AS itmicms,'
      '  SUM(itmipi) AS itmipi,'
      
        '  SUM(itmtotal + (itmfrete - itmdesconto + itmoutras + itmseguro' +
        ')) AS total,'
      ''
      '  itm.itmapuipi,'
      '  itm.csicodigo,'
      '  itm.ceicodigo,'
      '  SUM(itm.itmbipi) itmbipi,'
      '  itm.itmaliqipi,'
      '  itm.itmipi,'
      '  itm.cspcodigo,'
      '  SUM(itm.itmbpis) itmbpis,'
      '  itm.itmaliqpis,'
      '  itm.itmquantpis,'
      '  itm.itmaliqpisvalor,'
      '  SUM(itm.itmpis) itmpis,'
      '  itm.csfcodigo,'
      '  itm.itmoutras,'
      '  SUM(itm.itmbcofins) itmbcofins,'
      '  itm.itmaliqcofins,'
      '  itm.itmquantcofins,'
      '  itm.itmaliqcofinsvalor,'
      '  SUM(itm.itmcofins) AS itmcofins,'
      '  SUM(itmdesconto) AS itmdesconto'
      'FROM mes,'
      '     itm,'
      '     toe,'
      '     pro'
      'WHERE itm.meschave = mes.meschave'
      'AND itm.procodigo = pro.procodigo'
      'AND pro.tpocodigo <> 9'
      'AND toe.ttecodigo=1'
      'AND toe.ttocodigo in (1,3,2,9)'
      'AND mes.tdfcodigo in ('#39'55'#39','#39'65'#39')'
      'AND mes.sdecodigo<>'#39'02'#39
      'AND mes.temcodigo<>4'
      'AND itm.toecodigo = toe.toecodigo'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final')
    Left = 536
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object itmM600cstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmM600cfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object itmM600itmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmM600itmbicm: TFloatField
      FieldName = 'itmbicm'
      ReadOnly = True
    end
    object itmM600itmicm: TFloatField
      FieldName = 'itmicm'
      ReadOnly = True
    end
    object itmM600itmbicms: TFloatField
      FieldName = 'itmbicms'
      ReadOnly = True
    end
    object itmM600itmicms: TFloatField
      FieldName = 'itmicms'
      ReadOnly = True
    end
    object itmM600itmipi: TFloatField
      FieldName = 'itmipi'
      ReadOnly = True
    end
    object itmM600total: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
    object itmM600itmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmM600csicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmM600ceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmM600itmbipi: TFloatField
      FieldName = 'itmbipi'
      ReadOnly = True
    end
    object itmM600itmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
    end
    object itmM600itmipi_1: TFloatField
      FieldName = 'itmipi_1'
      Required = True
    end
    object itmM600cspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmM600itmbpis: TFloatField
      FieldName = 'itmbpis'
      ReadOnly = True
    end
    object itmM600itmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmM600itmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmM600itmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmM600itmpis: TFloatField
      FieldName = 'itmpis'
      ReadOnly = True
    end
    object itmM600csfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmM600itmoutras: TFloatField
      FieldName = 'itmoutras'
      Required = True
    end
    object itmM600itmbcofins: TFloatField
      FieldName = 'itmbcofins'
      ReadOnly = True
    end
    object itmM600itmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmM600itmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmM600itmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmM600itmcofins: TFloatField
      FieldName = 'itmcofins'
      ReadOnly = True
    end
    object itmM600itmdesconto: TFloatField
      FieldName = 'itmdesconto'
      ReadOnly = True
    end
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 153
    Top = 224
  end
end
