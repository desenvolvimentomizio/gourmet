object FrmSPEDFiscal: TFrmSPEDFiscal
  Left = 356
  Top = 153
  BorderIcons = [biSystemMenu]
  Caption = 'SPED Fiscal - Gera'#231#227'o'
  ClientHeight = 236
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    490
    236)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 55
    Width = 54
    Height = 13
    Caption = 'Mensagens'
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 204
    Width = 75
    Height = 13
    Caption = 'Arquivo Gerado'
    Color = clBtnFace
    ParentColor = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 25
    Top = 499
    Width = 63
    Height = 13
    Caption = 'Buffer Linhas'
    Color = clBtnFace
    ParentColor = False
    Visible = False
  end
  object Label8: TLabel
    Left = 130
    Top = 499
    Width = 61
    Height = 13
    Caption = 'Buffer Notas'
    Color = clBtnFace
    ParentColor = False
    Visible = False
  end
  object Label1: TLabel
    Left = 629
    Top = 246
    Width = 82
    Height = 13
    Caption = 'Nome do Arquivo'
    Color = clBtnFace
    ParentColor = False
  end
  object memoError: TMemo
    Left = 13
    Top = 71
    Width = 469
    Height = 98
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object memoTXT: TMemo
    Left = 8
    Top = 360
    Width = 469
    Height = 0
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object btnError: TButton
    Left = 114
    Top = 353
    Width = 100
    Height = 25
    Caption = 'Gerar TXT Error'
    TabOrder = 7
    Visible = False
    OnClick = btnErrorClick
  end
  object btnTXT: TButton
    Left = 90
    Top = 335
    Width = 101
    Height = 25
    Caption = 'Gerar TXT'
    TabOrder = 8
    Visible = False
    OnClick = btnTXTClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 9
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      486
      5)
    object edNotas: TEdit
      Left = 79
      Top = -6
      Width = 0
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = '2'
      Visible = False
    end
    object cbConcomitante: TCheckBox
      Left = -67
      Top = 22
      Width = 134
      Height = 21
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
      Visible = False
      OnClick = cbConcomitanteClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 9
    Width = 490
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 1
    object btnB_0: TButton
      Left = 23
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco 0'
      TabOrder = 0
      Visible = False
      OnClick = btnB_0Click
    end
    object btnB_1: TButton
      Left = 627
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco 1'
      Enabled = False
      TabOrder = 6
      Visible = False
      OnClick = btnB_1Click
    end
    object btnB_C: TButton
      Left = 129
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco C'
      Enabled = False
      TabOrder = 1
      Visible = False
      OnClick = btnB_CClick
    end
    object btnB_D: TButton
      Left = 235
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco D'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = btnB_DClick
    end
    object btnB_E: TButton
      Left = 341
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco E'
      Enabled = False
      TabOrder = 3
      Visible = False
      OnClick = btnB_EClick
    end
    object btnB_H: TButton
      Left = 521
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco H'
      Enabled = False
      TabOrder = 5
      Visible = False
      OnClick = btnB_HClick
    end
    object btnB_G: TButton
      Left = 447
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Registros Bloco G'
      Enabled = False
      TabOrder = 4
      Visible = False
      OnClick = btnB_GClick
    end
  end
  object btnB_9: TButton
    Left = 8
    Top = 360
    Width = 100
    Height = 25
    Caption = 'Gravar Bloco 9'
    Enabled = False
    TabOrder = 6
    Visible = False
    OnClick = btnB_9Click
  end
  object edBufLinhas: TEdit
    Left = 27
    Top = 685
    Width = 80
    Height = 21
    TabOrder = 4
    Text = '1000'
  end
  object edBufNotas: TEdit
    Left = 130
    Top = 685
    Width = 80
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '1000'
  end
  object mostra: TProgressBar
    Left = 8
    Top = 175
    Width = 473
    Height = 20
    Max = 8
    MarqueeInterval = 1
    Step = 1
    TabOrder = 9
    Visible = False
  end
  object btnB_Completo: TButton
    Left = 256
    Top = 201
    Width = 225
    Height = 25
    Caption = 'Gerar o arquivo do SPED Fiscal completo'
    TabOrder = 10
    OnClick = btnB_CompletoClick
  end
  object edtFile: TEdit
    Left = 110
    Top = 201
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'ACBrSpedFiscal.txt'
    OnChange = edtFileChange
    OnExit = edtFileChange
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'c:\pega2013\sped\'
    Arquivo = 'sped.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 44
    Top = 393
  end
  object UCConexao: TUniConnection
    ProviderName = 'MySQL'
    Database = 'brilho2014'
    Username = 'root'
    Server = '5.5.5.5'
    LoginPrompt = False
    Left = 364
    Top = 124
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 272
    Top = 124
  end
  object spd: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 12
    Top = 233
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
  end
  object Dcfg: TDataSource
    Left = 200
    Top = 136
  end
  object consulta: TUniQuery
    Connection = UCConexao
    Left = 132
    Top = 136
  end
  object ctd: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select * from ctd')
    Left = 39
    Top = 423
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
  object etd: TUniQuery
    Connection = UCConexao
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
      'AND mes.tdfcodigo IN ('#39'01'#39', '#39'1B'#39', '#39'04'#39', '#39'55'#39')'
      'AND mes.sdecodigo = '#39'00'#39
      'AND mes.temcodigo in (3,5)'
      'AND etd.etdcodigo <> 0'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final')
    Left = 16
    Top = 519
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
  object uni: TUniQuery
    Connection = UCConexao
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
      'AND toe.ttecodigo = 0')
    Left = 256
    Top = 511
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
  object pro: TUniQuery
    Connection = UCConexao
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
        '1'#39', '#39'22'#39'))'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final'
      'GROUP BY pro.procodigo')
    Left = 296
    Top = 511
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
  object tof: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select tofcodigo,tofidentificacao from tof')
    Left = 272
    Top = 231
    object toftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Required = True
      Size = 350
    end
  end
  object toe: TUniQuery
    Connection = UCConexao
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
    Left = 184
    Top = 231
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
  object mes: TUniQuery
    Connection = UCConexao
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
        'codigo and pro.tpocodigo in (0,7) and itm.meschave=mes.meschave)' +
        ' as mesvalor,'
      '  mes.tfpcodigo,'
      '  mes.mesdesconto,'
      
        '  ( (select sum(itmtotal) from itm,pro where itm.procodigo=pro.p' +
        'rocodigo and pro.tpocodigo in (0,7) and itm.meschave=mes.meschav' +
        'e))as mestotal,'
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
        'rocodigo and pro.tpocodigo in (0,7) and itm.meschave=mes.meschav' +
        'e)-mes.mesdesconto +mes.mesoutras+mes.mesfrete)as mesprodutos,'
      ' '
      ' '
      '  mes.temcodigo'
      'FROM toe,'
      '     etd,'
      '     tdf,'
      '     sde,'
      '     mes'
      'WHERE mes.toecodigo = toe.toecodigo'
      'AND mes.etdcodigo = etd.etdcodigo'
      'AND mes.tdfcodigo = tdf.tdfcodigo'
      'AND mes.sdecodigo = sde.sdecodigo'
      'AND mes.tdfcodigo IN ('#39'01'#39', '#39'1B'#39', '#39'04'#39', '#39'55'#39', '#39'65'#39')'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final'
      'ORDER BY mes.mesregistro, mes.meschavenfe')
    Left = 176
    Top = 462
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
  end
  object itm: TUniQuery
    Connection = UCConexao
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
      'AND itm.toecodigo = toe.toecodigo'
      'AND itm.csicodigo = csi.csicodigo'
      'AND itm.cspcodigo = csp.cspcodigo'
      'AND itm.csfcodigo = csf.csfcodigo'
      'AND itm.meschave = :meschave')
    Left = 176
    Top = 504
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
  object ecf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  ecf.ecfcodigo,'
      '  ecfmodelo,'
      '  ecfserie,'
      '  '#39'2D'#39' AS ecftipodoc,'
      '  ecfcaixa'
      'FROM ecf')
    Left = 336
    Top = 424
    object ecfecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
      Required = True
    end
    object ecfecfmodelo: TStringField
      FieldName = 'ecfmodelo'
      Size = 30
    end
    object ecfecfserie: TStringField
      FieldName = 'ecfserie'
      Required = True
      Size = 30
    end
    object ecfecftipodoc: TStringField
      FieldName = 'ecftipodoc'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object ecfecfcaixa: TIntegerField
      FieldName = 'ecfcaixa'
      Required = True
    end
  end
  object rrz: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  rrzcodigo,'
      '  rrzdata,'
      '  rrz.ecfcodigo,'
      '  rrzcontadorreinicio,'
      '  rrzcontadorreducao,'
      '  rrznumordultdoc,'
      '  rrzvalorgrantot,'
      '  rrzvalorvndbru'
      'FROM rrz,'
      '     ecf'
      'WHERE rrz.ecfcodigo = ecf.ecfcodigo'
      'AND rrz.rrzdata >= :inicio'
      'AND rrz.rrzdata <= :final'
      'ORDER BY rrzdata')
    Left = 368
    Top = 424
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
    object rrzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
    end
    object rrzrrzdata: TDateField
      FieldName = 'rrzdata'
      Required = True
    end
    object rrzecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
      Required = True
    end
    object rrzrrzcontadorreinicio: TIntegerField
      FieldName = 'rrzcontadorreinicio'
      Required = True
    end
    object rrzrrzcontadorreducao: TIntegerField
      FieldName = 'rrzcontadorreducao'
      Required = True
    end
    object rrzrrznumordultdoc: TIntegerField
      FieldName = 'rrznumordultdoc'
      Required = True
    end
    object rrzrrzvalorgrantot: TFloatField
      FieldName = 'rrzvalorgrantot'
      Required = True
    end
    object rrzrrzvalorvndbru: TFloatField
      FieldName = 'rrzvalorvndbru'
      Required = True
    end
  end
  object tpz: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select tpzchave,tpzcodigo,tpzvlracumtot,tpznrtot,tpzdescr,tpz.rr' +
        'zcodigo'
      'from tpz'
      'where'
      'tpz.rrzcodigo=:rrzcodigo')
    Left = 400
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object tpztpzchave: TIntegerField
      FieldName = 'tpzchave'
    end
    object tpztpzcodigo: TStringField
      FieldName = 'tpzcodigo'
      Required = True
      Size = 7
    end
    object tpztpzvlracumtot: TFloatField
      FieldName = 'tpzvlracumtot'
      Required = True
    end
    object tpztpznrtot: TIntegerField
      FieldName = 'tpznrtot'
    end
    object tpztpzdescr: TStringField
      FieldName = 'tpzdescr'
      Size = 50
    end
    object tpzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
  end
  object mdf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select mdfchave,mdf.rrzcodigo,mdf.cstcodigo,mdf.cfocfop,mdfaliqu' +
        'ota,mdfvlopr,mdfvlbcicms,mdfvlicms,mdf.tofcodigo'
      'from mdf,rrz,cst,cfo,tof'
      'where'
      'mdf.rrzcodigo=rrz.rrzcodigo and'
      'mdf.cstcodigo=cst.cstcodigo and'
      'mdf.cfocfop=cfo.cfocfop and'
      'mdf.tofcodigo=tof.tofcodigo')
    MasterSource = Drrz
    MasterFields = 'rrzcodigo'
    DetailFields = 'rrzcodigo'
    Left = 432
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object mdfmdfchave: TIntegerField
      FieldName = 'mdfchave'
    end
    object mdfrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
    object mdfcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object mdfcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object mdfmdfaliquota: TFloatField
      FieldName = 'mdfaliquota'
      Required = True
    end
    object mdfmdfvlopr: TFloatField
      FieldName = 'mdfvlopr'
      Required = True
    end
    object mdfmdfvlbcicms: TFloatField
      FieldName = 'mdfvlbcicms'
      Required = True
    end
    object mdfmdfvlicms: TFloatField
      FieldName = 'mdfvlicms'
    end
    object mdftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
      Required = True
    end
  end
  object cuf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  cufchave,'
      '  cuf.tdfcodigo,'
      '  cuf.sdecodigo,'
      '  cufcco,'
      '  cufdata,'
      '  cuftotal,'
      '  cufpis,'
      '  cufcofins,'
      '  cufdoc1,'
      '  cufnome,'
      '  cuf.rrzcodigo'
      'FROM cuf,'
      '     tdf,'
      '     sde,'
      '     rrz'
      'WHERE cuf.tdfcodigo = tdf.tdfcodigo'
      'AND cuf.sdecodigo = sde.sdecodigo'
      'AND cuf.rrzcodigo = rrz.rrzcodigo'
      'AND rrz.rrzcodigo = :rrzcodigo')
    Left = 381
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object cufcufchave: TIntegerField
      FieldName = 'cufchave'
    end
    object cuftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object cufsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object cufcufcco: TIntegerField
      FieldName = 'cufcco'
      Required = True
    end
    object cufcufdata: TDateField
      FieldName = 'cufdata'
      Required = True
    end
    object cufcuftotal: TFloatField
      FieldName = 'cuftotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cufcufpis: TFloatField
      FieldName = 'cufpis'
      Required = True
    end
    object cufcufcofins: TFloatField
      FieldName = 'cufcofins'
      Required = True
    end
    object cufcufdoc1: TStringField
      FieldName = 'cufdoc1'
      Size = 14
    end
    object cufcufnome: TStringField
      FieldName = 'cufnome'
      Size = 60
    end
    object cufrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
  end
  object icu: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select * from icu,uni,cuf where cuf.sdecodigo<>'#39'02'#39' and icu.cufc' +
        'have=cuf.cufchave and icu.unicodigo=uni.unicodigo')
    Left = 380
    Top = 520
    object icuicuchave: TIntegerField
      FieldName = 'icuchave'
    end
    object icuprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object icucstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object icuunicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object icuicuquantidade: TFloatField
      FieldName = 'icuquantidade'
      Required = True
    end
    object icuicuquantidadecanc: TFloatField
      FieldName = 'icuquantidadecanc'
      Required = True
    end
    object icuicuvalor: TFloatField
      FieldName = 'icuvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object icucfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 4
    end
    object icuicualiqicm: TFloatField
      FieldName = 'icualiqicm'
      Required = True
    end
    object icuicupis: TFloatField
      FieldName = 'icupis'
      Required = True
    end
    object icuicucofins: TFloatField
      FieldName = 'icucofins'
      Required = True
    end
    object icuunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object ivt: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM ivt,'
      '     pro,'
      '     uni'
      'WHERE ivt.procodigo = pro.procodigo'
      'AND pro.unicodigo = uni.unicodigo'
      'AND ivt.ivtquantidade > 0'
      'AND pro.tpocodigo = 0'
      'AND ivt.spdchave = (SELECT'
      '    spd.spdchave'
      '  FROM spd'
      '  WHERE spd.spdativo)')
    Left = 532
    Top = 460
    object ivtivtchave: TIntegerField
      FieldName = 'ivtchave'
    end
    object ivtspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object ivtprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object ivtpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object ivtivtquantidade: TFloatField
      FieldName = 'ivtquantidade'
      Required = True
    end
    object ivtivtvalor: TFloatField
      FieldName = 'ivtvalor'
      Required = True
    end
    object ivtivttotal: TFloatField
      FieldName = 'ivttotal'
      Required = True
    end
    object ivtivtproprietario: TStringField
      FieldName = 'ivtproprietario'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ivtivtdescricao: TStringField
      FieldName = 'ivtdescricao'
      Size = 1000
    end
    object ivtetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object ivtpronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object ivtunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object itmC190: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  itm.cstcodigo,'
      '  toe.toecfopsaida as cfocfopdestinacao,'
      '  itmaliqicm,'
      '  SUM(itmbicm) AS itmbicm,'
      '  SUM(itmicm) AS itmicm,'
      '  SUM(itmbicms) AS itmbicms,'
      '  SUM(itmicms) AS itmicms,'
      '  SUM(itmipi) AS itmipi,'
      
        '  SUM(itmtotal + (itmfrete - itmdesconto + itmoutras + itmseguro' +
        ' + itmicms + itmipi) ) AS total'
      'FROM mes,'
      '     itm,'
      '     toe,'
      '     pro'
      'WHERE itm.meschave = mes.meschave'
      'AND itm.procodigo = pro.procodigo'
      'AND pro.tpocodigo <> 9'
      'AND itm.toecodigo = toe.toecodigo'
      'AND mes.meschave = :meschave')
    Left = 175
    Top = 590
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmC190cstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 5
    end
    object itmC190cfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmC190itmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmC190itmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmC190itmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmC190itmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmC190itmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmC190itmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
    end
    object itmC190total: TFloatField
      FieldName = 'total'
    end
  end
  object itme110: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  SUM(mdfvlicms) AS totalicms'
      'FROM mdf,'
      '     rrz'
      'WHERE mdf.rrzcodigo = rrz.rrzcodigo'
      'AND rrzdata >= :inicio'
      'AND rrzdata <= :fina')
    Left = 652
    Top = 332
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fina'
        Value = nil
      end>
    object itme110totalicms: TFloatField
      FieldName = 'totalicms'
    end
  end
  object Drrz: TDataSource
    DataSet = rrz
    Left = 184
    Top = 388
  end
  object Decf: TDataSource
    DataSet = ecf
    Left = 136
    Top = 384
  end
  object Dcuf: TDataSource
    DataSet = cuf
    Left = 488
    Top = 144
  end
  object procuf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select distinct cuf.cufchave,pro.procodigo,pronome,pro.tpocodigo' +
        ',tpoidentificacao,proncm,pro.icmcodigo,icmaliquotas,icu.unicodig' +
        'o, unisimbolo,punbarra'
      'from pro,pun,icm,tpo, uni,cuf,icu,toe'
      'where'
      'pun.procodigo=pro.procodigo and'
      'pro.icmcodigo=icm.icmcodigo and'
      'pro.tpocodigo=tpo.tpocodigo and'
      'pun.unicodigo=uni.unicodigo and'
      ''
      'pun.unicodigo=icu.unicodigo and /*Acrescentado por Gabriel*/'
      ''
      'pro.procodigo=icu.procodigo and'
      'cuf.sdecodigo<>'#39'02'#39' and'
      'cuf.cufchave=icu.cufchave and'
      'cuf.cufdata>=:inicio and cuf.cufdata<=:final '
      'group by pro.procodigo')
    Left = 296
    Top = 608
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
    object procufprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object procufpronome: TStringField
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object procufpunbarra: TStringField
      FieldName = 'punbarra'
      ReadOnly = True
      Size = 50
    end
    object procuftpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      Required = True
    end
    object procuftpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object procufproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object procuficmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object procufunicodigo: TIntegerField
      FieldName = 'unicodigo'
      ReadOnly = True
      Required = True
    end
    object procuficmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object procufunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object unicuf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select distinct uni.unicodigo,unisimbolo,uninome from uni,icu,cu' +
        'f, pro'
      'where'
      'icu.unicodigo=uni.unicodigo and'
      'pro.procodigo=icu.procodigo and'
      'cuf.cufchave=icu.cufchave and'
      'cuf.cufdata>=:inicio and cuf.cufdata<=:final')
    Left = 254
    Top = 607
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
    object unicufunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object unicufunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Required = True
      FixedChar = True
      Size = 6
    end
    object unicufuninome: TStringField
      FieldName = 'uninome'
      Required = True
    end
  end
  object toecuf: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select distinct toe.toecodigo,toeidentificacao from toe'
      'where'
      'toe.toecodigo=20')
    Left = 428
    Top = 499
    object toecuftoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toecuftoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 584
    Top = 276
  end
  object proivt: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  pro.procodigo,'
      '  pronome,'
      '  pro.tpocodigo,'
      '  tpoidentificacao,'
      '  proncm,'
      '  pro.icmcodigo,'
      '  icmaliquotas,'
      '  pro.unicodigo,'
      '  unisimbolo,'
      '  punbarra'
      'FROM pro,'
      '     pun,'
      '     icm,'
      '     tpo,'
      '     uni,'
      '     ivt,'
      '     spd'
      'WHERE pun.procodigo = pro.procodigo'
      'AND pun.unicodigo = pro.unicodigo'
      'AND pro.icmcodigo = icm.icmcodigo'
      'AND pro.tpocodigo = tpo.tpocodigo'
      'AND pun.unicodigo = uni.unicodigo'
      'AND pro.procodigo = ivt.procodigo'
      'AND spd.spdchave = ivt.spdchave'
      'AND MONTH(spd.spddatainicial) = 2'
      'AND spd.spdativo = 1'
      'AND pro.tpocodigo = 0'
      'AND ivt.ivtquantidade > 0'
      'ORDER BY pro.procodigo')
    Left = 295
    Top = 559
    object proivtprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object proivtpronome: TStringField
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object proivtpunbarra: TStringField
      FieldName = 'punbarra'
      ReadOnly = True
      Size = 50
    end
    object proivttpocodigo: TIntegerField
      FieldName = 'tpocodigo'
      Required = True
    end
    object proivttpoidentificacao: TStringField
      FieldName = 'tpoidentificacao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object proivtproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object proivticmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object proivtunicodigo: TIntegerField
      FieldName = 'unicodigo'
      ReadOnly = True
      Required = True
    end
    object proivticmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object proivtunisimbolo: TStringField
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object uniivt: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  uni.unicodigo,'
      '  unisimbolo,'
      '  uninome'
      'FROM uni,'
      '     pro,'
      '     ivt'
      'WHERE pro.unicodigo = uni.unicodigo'
      'AND pro.procodigo = ivt.procodigo'
      'AND ivt.ivtquantidade > 0'
      'AND pro.tpocodigo = 0'
      'AND ivt.spdchave = (SELECT'
      '    spd.spdchave'
      '  FROM spd'
      '  WHERE spd.spdativo)')
    Left = 255
    Top = 559
    object uniivtunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniivtunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Required = True
      FixedChar = True
      Size = 6
    end
    object uniivtuninome: TStringField
      FieldName = 'uninome'
      Required = True
    end
  end
  object cte: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select * from cte, ict where cte.ctechave=ict.ctechave and cte.c' +
        'tedtaquis>=:inicio and cte.ctedtaquis<=:final')
    Left = 532
    Top = 344
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
    object ctectechave: TIntegerField
      FieldName = 'ctechave'
    end
    object ctecteoperacao: TStringField
      FieldName = 'cteoperacao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ctecteemissor: TStringField
      FieldName = 'cteemissor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object ctetdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object ctesdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object ctecteserie: TStringField
      FieldName = 'cteserie'
      Size = 3
    end
    object ctectesubserie: TStringField
      FieldName = 'ctesubserie'
      Size = 3
    end
    object ctectenumero: TStringField
      FieldName = 'ctenumero'
      Size = 10
    end
    object ctecteechave: TStringField
      FieldName = 'cteechave'
      Size = 44
    end
    object ctecteemissao: TDateField
      FieldName = 'cteemissao'
      Required = True
    end
    object ctectedtaquis: TDateField
      FieldName = 'ctedtaquis'
    end
    object ctetcfcodigo: TStringField
      FieldName = 'tcfcodigo'
      Size = 2
    end
    object ctecteechaveref: TStringField
      FieldName = 'cteechaveref'
      Size = 44
    end
    object ctectevalor: TFloatField
      FieldName = 'ctevalor'
      Required = True
    end
    object ctectedesconto: TFloatField
      FieldName = 'ctedesconto'
      Required = True
    end
    object cterefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object ctectevalordoc: TFloatField
      FieldName = 'ctevalordoc'
      Required = True
    end
    object ctectebicm: TFloatField
      FieldName = 'ctebicm'
      Required = True
    end
    object ctecteicm: TFloatField
      FieldName = 'cteicm'
      Required = True
    end
    object ctectevlrntrbi: TFloatField
      FieldName = 'ctevlrntrbi'
      Required = True
    end
    object cteticcodigo: TIntegerField
      FieldName = 'ticcodigo'
      Required = True
    end
    object ctepcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object cteictchave: TIntegerField
      FieldName = 'ictchave'
      ReadOnly = True
    end
    object ctecstcodigo: TStringField
      FieldName = 'cstcodigo'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object ctecfocfop: TStringField
      FieldName = 'cfocfop'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object cteictaliqicm: TFloatField
      FieldName = 'ictaliqicm'
      ReadOnly = True
      Required = True
    end
    object cteictvlroperacao: TFloatField
      FieldName = 'ictvlroperacao'
      ReadOnly = True
      Required = True
    end
    object cteictbicm: TFloatField
      FieldName = 'ictbicm'
      ReadOnly = True
      Required = True
    end
    object cteicticm: TFloatField
      FieldName = 'icticm'
      ReadOnly = True
      Required = True
    end
    object cteictredbase: TFloatField
      FieldName = 'ictredbase'
      ReadOnly = True
      Required = True
    end
    object ctetofcodigo: TIntegerField
      FieldName = 'tofcodigo'
      ReadOnly = True
      Required = True
    end
  end
  object Validadorgtin: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 512
    Top = 280
  end
  object etdcte: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT etd.`etdcodigo`,'
      '       etd.`etdidentificacao`,'
      '       etd.`etddoc1`,'
      '       etd.`tpecodigo`,'
      '       edr.`edrcodigo`,'
      '       edr.`edrinscest`,'
      '       edr.`cddcodigo`,'
      '       edr.`edrrua`,'
      '       edr.`edrnumero`,'
      '       edr.`edrcomple`,'
      '       edr.`edrbairro`,'
      '       edr.`edritem`'
      'FROM etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     cte'
      'WHERE edr.`etdcodigo` = etd.`etdcodigo` AND'
      '      etd.`tpecodigo` = tpe.`tpecodigo` AND'
      '      edr.`cddcodigo` = cdd.`cddcodigo` AND'
      '      edr.`tedcodigo` = 1 AND'
      '      cte.`etdcodigo` = etd.`etdcodigo` AND'
      '      cte.ctedtaquis>=:inicio AND'
      '      cte.ctedtaquis<=:final')
    Left = 56
    Top = 519
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
    object etdcteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdcteetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object etdcteetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdctetpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdcteedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdcteedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object etdctecddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdcteedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdcteedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdcteedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 50
    end
    object etdcteedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
    end
    object etdcteedritem: TIntegerField
      FieldName = 'edritem'
      ReadOnly = True
      Required = True
    end
  end
  object ctee110: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      
        'select sum(cteicm) as totalicms from cte where ctedtaquis>=:inic' +
        'io and  ctedtaquis<=:final')
    Left = 652
    Top = 380
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
    object ctee110totalicms: TFloatField
      FieldName = 'totalicms'
    end
  end
  object cufe110: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select cufchave from cuf'
      'where'
      'cufdata>=:inicio and cufdata<=:final')
    Left = 652
    Top = 428
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
  end
  object csv: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select * from csv, clc  where'
      'csv.tcscodigo=clc.tcscodigo and'
      'csv.clccodigo=clc.clccodigo and'
      'csv.csvregistro>=:inicio and csv.csvregistro<=:final')
    Left = 232
    Top = 460
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
    object csvcsvchave: TIntegerField
      FieldName = 'csvchave'
    end
    object csvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object csvcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object csvcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object csvcsvemissao: TDateField
      FieldName = 'csvemissao'
    end
    object csvcsvregistro: TDateField
      FieldName = 'csvregistro'
      Required = True
    end
    object csvcsvserie: TStringField
      FieldName = 'csvserie'
      Size = 4
    end
    object csvcsvsubserie: TStringField
      FieldName = 'csvsubserie'
      Size = 3
    end
    object csvcsvnumero: TStringField
      FieldName = 'csvnumero'
      Required = True
      Size = 10
    end
    object csvcsvvalor: TFloatField
      FieldName = 'csvvalor'
      Required = True
    end
    object csvcsvdesconto: TFloatField
      FieldName = 'csvdesconto'
      Required = True
    end
    object csvcsvgeral: TFloatField
      FieldName = 'csvgeral'
      Required = True
    end
    object csvcsvbicm: TFloatField
      FieldName = 'csvbicm'
      Required = True
    end
    object csvcsvicm: TFloatField
      FieldName = 'csvicm'
      Required = True
    end
    object csvcsvbicms: TFloatField
      FieldName = 'csvbicms'
      Required = True
    end
    object csvcsvicms: TFloatField
      FieldName = 'csvicms'
      Required = True
    end
    object csvcsvpis: TFloatField
      FieldName = 'csvpis'
      Required = True
    end
    object csvcsvcofins: TFloatField
      FieldName = 'csvcofins'
      Required = True
    end
    object csvcsvaliqicm: TFloatField
      FieldName = 'csvaliqicm'
      Required = True
    end
    object csvclccodigo: TStringField
      FieldName = 'clccodigo'
      Size = 2
    end
    object csvtcscodigo: TStringField
      FieldName = 'tcscodigo'
      Size = 1
    end
    object csvtoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object csvtdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object csvsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
  end
  object etdcsv: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT etd.`etdcodigo`,'
      '       etd.`etdidentificacao`,'
      '       etd.`etddoc1`,'
      '       etd.tpecodigo,'
      '       edr.`edrcodigo`,'
      '       edr.`edrinscest`,'
      '       edr.`cddcodigo`,'
      '       edr.`edrrua`,'
      '       edr.`edrnumero`,'
      '       edr.`edrcomple`,'
      '       edr.`edrbairro`,'
      '       edr.`edritem`'
      'FROM etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     csv'
      'WHERE edr.`etdcodigo` = etd.`etdcodigo` AND'
      '      etd.`tpecodigo` = tpe.`tpecodigo` AND'
      '      edr.`cddcodigo` = cdd.`cddcodigo` AND'
      '      edr.`tedcodigo` = 1 AND'
      '      etd.`etdcodigo` = csv.`etdcodigo` AND'
      '      csv.csvregistro>=:inicio AND '
      '      csv.csvregistro<=:final')
    Left = 95
    Top = 519
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
    object etdcsvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdcsvetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object etdcsvetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdcsvtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdcsvedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdcsvedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object etdcsvcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdcsvedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdcsvedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdcsvedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 50
    end
    object etdcsvedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
    end
    object etdcsvedritem: TIntegerField
      FieldName = 'edritem'
      ReadOnly = True
      Required = True
    end
  end
  object CfgEtd: TUniQuery
    Connection = UCConexao
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
    Left = 80
    Top = 424
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
  object mPro: TVirtualTable
    Left = 488
    Top = 568
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
  object mUni: TVirtualTable
    Left = 544
    Top = 568
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
  object mEtd: TVirtualTable
    Left = 600
    Top = 568
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
  object cfg: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'select * from cfgmspd')
    Left = 53
    Top = 233
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
  object tom: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  tof.tofcodigo,'
      '  tof.tofidentificacao'
      'FROM tom,'
      '     tof,'
      '     mes'
      'WHERE tom.meschave = mes.meschave'
      'AND tom.tofcodigo = tof.tofcodigo'
      'AND mes.mesregistro >= :inicio'
      'AND mes.mesregistro <= :final')
    Left = 232
    Top = 232
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
    object tomtofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object tomtofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Size = 350
    end
  end
  object icuC490: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '  icu.cstcodigo,'
      '  icu.cfocfop,'
      '  icu.icualiqicm,'
      '  SUM(icuvalor) AS icuvalor,'
      '  SUM(icu.icuicm) AS icuicm'
      'FROM cuf,'
      '     icu'
      'WHERE icu.cufchave = cuf.cufchave'
      'AND cuf.rrzcodigo = :rrzcodigo')
    Left = 381
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object icuC490cstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 5
    end
    object icuC490cfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object icuC490icualiqicm: TFloatField
      FieldName = 'icualiqicm'
    end
    object icuC490icuvalor: TFloatField
      FieldName = 'icuvalor'
    end
    object icuC490icuicm: TFloatField
      FieldName = 'icuicm'
    end
  end
  object mad: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT'
      '  madchave,'
      '  etdcodigo,'
      '  spdchave,'
      '  madvalorccredito,'
      '  madvalorcdebito'
      'FROM mad'
      '  where spdchave=:spdchave')
    Left = 664
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
    object madmadchave: TIntegerField
      FieldName = 'madchave'
    end
    object madetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object madspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object madmadvalorccredito: TFloatField
      FieldName = 'madvalorccredito'
    end
    object madmadvalorcdebito: TFloatField
      FieldName = 'madvalorcdebito'
    end
  end
  object etdadc: TUniQuery
    Connection = UCConexao
    SQL.Strings = (
      'SELECT DISTINCT etd.`etdcodigo`,'
      '       etd.`etdidentificacao`,'
      '       etd.`etddoc1`,'
      '       etd.`tpecodigo`,'
      '       edr.`edrcodigo`,'
      '       edr.`edrinscest`,'
      '       edr.`cddcodigo`,'
      '       edr.`edrrua`,'
      '       edr.`edrnumero`,'
      '       edr.`edrcomple`,'
      '       edr.`edrbairro`,'
      '       edr.`edritem`'
      'FROM etd,'
      '     cdd,'
      '     edr,'
      '     tpe,'
      '     mad'
      'WHERE edr.`etdcodigo` = etd.`etdcodigo` AND'
      '      etd.`tpecodigo` = tpe.`tpecodigo` AND'
      '      edr.`cddcodigo` = cdd.`cddcodigo` AND'
      '      edr.`tedcodigo` = 1 AND '
      '      mad.etdcodigo = etd.etdcodigo AND  '
      '      mad.spdchave = :spdchave')
    Left = 56
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
    object etdadcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdadcetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object etdadcetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdadctpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdadcedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object etdadcedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object etdadccddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdadcedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdadcedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdadcedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 50
    end
    object etdadcedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
    end
    object etdadcedritem: TIntegerField
      FieldName = 'edritem'
      ReadOnly = True
      Required = True
    end
  end
end
