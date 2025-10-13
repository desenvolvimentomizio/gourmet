inherited fsms: Tfsms
  Caption = 'Envio'
  ClientHeight = 680
  ClientWidth = 1006
  ExplicitWidth = 1022
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 651
    Width = 1006
    ExplicitTop = 651
    ExplicitWidth = 1006
    inherited bconfirma: TBitBtn
      Left = 856
      Width = 71
      Caption = 'Enviar'
      ExplicitLeft = 856
      ExplicitWidth = 71
    end
    inherited bcancela: TBitBtn
      Left = 927
      ExplicitLeft = 927
    end
    inherited bfechar: TBitBtn
      Left = 791
      Visible = True
      ExplicitLeft = 791
    end
    object plquantidades: TPanel
      Left = 99
      Top = 4
      Width = 367
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
    end
    object ProgressBar: TProgressBar
      Left = 358
      Top = 4
      Width = 433
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      TabOrder = 5
    end
  end
  inherited paginas: TPageControl
    Width = 1006
    Height = 651
    ExplicitWidth = 1006
    ExplicitHeight = 651
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 998
      ExplicitHeight = 623
      object SBIncluirUm: TSpeedButton
        Left = 439
        Top = 156
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '>'
        OnClick = SBIncluirUmClick
      end
      object SBIncluirTodos: TSpeedButton
        Left = 439
        Top = 184
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '>>'
        OnClick = SBIncluirTodosClick
      end
      object SBExcluirUn: TSpeedButton
        Left = 439
        Top = 224
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '<'
        OnClick = SBExcluirUnClick
      end
      object SBExcluirTodos: TSpeedButton
        Left = 439
        Top = 252
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '<<'
        OnClick = SBExcluirTodosClick
      end
      object DBGridClientes: TDBGrid
        Left = 24
        Top = 24
        Width = 409
        Height = 465
        CustomHint = BalloonHint
        DataSource = Detf
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etftelefone'
            Width = 100
            Visible = True
          end>
      end
      object DBGridSMS: TDBGrid
        Left = 468
        Top = 24
        Width = 510
        Height = 465
        CustomHint = BalloonHint
        DataSource = Detfenvio
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etftelefone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'smsenvio'
            Visible = True
          end>
      end
      object plDisponivel: TPanel
        Left = 248
        Top = 495
        Width = 185
        Height = 21
        CustomHint = BalloonHint
        BorderWidth = 4
        TabOrder = 2
      end
      object plEnviar: TPanel
        Left = 785
        Top = 495
        Width = 193
        Height = 21
        CustomHint = BalloonHint
        BorderWidth = 4
        TabOrder = 3
      end
      object rbMetodoEnvio: TRadioGroup
        Left = 787
        Top = 522
        Width = 191
        Height = 79
        CustomHint = BalloonHint
        Caption = 'M'#233'todo de Envio'
        Items.Strings = (
          'Via Modem 3G'
          'Via LocaSMS')
        TabOrder = 4
      end
      object WebBrowser: TWebBrowser
        Left = 468
        Top = 511
        Width = 300
        Height = 109
        CustomHint = BalloonHint
        TabOrder = 5
        ControlData = {
          4C000000021F0000440B00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  inherited cfg: TUniQuery
    Left = 716
    Top = 76
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  smschave,'
      '  psmchave,'
      '  etfcodigo,'
      '  smstexto,'
      '  smsretorno,'
      '  smsregistro,'
      '  smsenvio'
      'FROM sms where psmchave=:psmchave ')
    Left = 268
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
  end
  inherited BalloonHint: TBalloonHint
    Left = 212
    Top = 440
  end
  inherited acoesfrm: TActionList
    Left = 412
    Top = 65524
  end
  inherited ImgBusca: TPngImageList
    Left = 828
    Top = 16
    Bitmap = {}
  end
  object etf: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  etfcodigo,'
      '  etftelefone,'
      '  etdidentificacao'
      'FROM etf,'
      '     etd,'
      '     etv'
      'WHERE etf.etdcodigo = etd.etdcodigo'
      'AND etd.etdcodigo = etv.etdcodigo'
      'AND etv.tvicodigo = 1'
      'AND LENGTH(etftelefone) = 11'
      'AND (SUBSTRING(etftelefone, 1, 3) = '#39'669'#39
      'OR SUBSTRING(etftelefone, 1, 3) = '#39'668'#39')'
      
        'AND etfcodigo NOT IN (SELECT etfcodigo FROM sms WHERE sms.psmcha' +
        've=:psmchave)'
      
        'AND ttfcodigo<>10 AND ttfcodigo<>12 AND ttfcodigo<>11 AND ttfcod' +
        'igo<>9 -- AND ttfcodigo<>7'
      'order by etdidentificacao'
      'limit 5000')
    Left = 176
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
    object etfetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object etfetftelefone: TStringField
      DisplayLabel = 'Nr. Telefone'
      FieldName = 'etftelefone'
    end
    object etfetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object Detf: TDataSource
    DataSet = etf
    Left = 188
    Top = 168
  end
  object etfenvio: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  etfcodigo,'
      '  etftelefone,'
      '  etdidentificacao,'
      
        '  (select smsenvio from sms where sms.etfcodigo=etf.etfcodigo an' +
        'd sms.psmchave=:psmchave) smsenvio'
      'FROM etf,'
      '     etd,'
      '     etv'
      'WHERE etf.etdcodigo = etd.etdcodigo'
      'AND etd.etdcodigo = etv.etdcodigo'
      'AND etv.tvicodigo = 1'
      'AND LENGTH(etftelefone) = 11'
      'AND SUBSTRING(etftelefone, 1, 3) = '#39'669'#39
      '-- OR SUBSTRING(etftelefone, 1, 3) = '#39'668'#39')'
      
        'AND etfcodigo IN (SELECT etfcodigo FROM sms WHERE sms.psmchave=:' +
        'psmchave)'
      'order by etdidentificacao')
    Left = 532
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
    object etfenvioetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object etfenvioetftelefone: TStringField
      DisplayLabel = 'Nr. Telefone'
      FieldName = 'etftelefone'
    end
    object etfenvioetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etfenviosmsenvio: TDateTimeField
      DisplayLabel = 'Envio'
      FieldName = 'smsenvio'
    end
  end
  object Detfenvio: TDataSource
    DataSet = etfenvio
    Left = 516
    Top = 480
  end
  object sms: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  smschave,'
      '  psmchave,'
      '  etfcodigo,'
      '  smstexto,'
      '  smsretorno,'
      '  smsregistro,'
      '  smsenvio'
      'FROM sms limit 0')
    Left = 712
    Top = 400
    object smssmschave: TIntegerField
      FieldName = 'smschave'
    end
    object smspsmchave: TIntegerField
      FieldName = 'psmchave'
    end
    object smsetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object smssmstexto: TStringField
      FieldName = 'smstexto'
      Size = 250
    end
    object smssmsregistro: TDateTimeField
      FieldName = 'smsregistro'
    end
  end
  object psm: TUniQuery
    SQL.Strings = (
      'select psmchave, psmtexto01 from psm where psmchave=:psmchave')
    Left = 332
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
    object psmpsmchave: TIntegerField
      FieldName = 'psmchave'
    end
    object psmpsmtexto01: TStringField
      FieldName = 'psmtexto01'
      Size = 250
    end
  end
  object ACBrSMS1: TACBrSMS
    Ativo = False
    Modelo = modGenerico
    ATTimeOut = 10000
    ATResult = False
    IntervaloEntreMensagens = 0
    RecebeConfirmacao = False
    QuebraMensagens = False
    OnAntesEnvio = ACBrSMS1AntesEnvio
    OnAposEnvio = ACBrSMS1AntesEnvio
    Left = 585
    Top = 423
  end
  object trm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trmcodigo,'
      '  trmmodemmodelo,'
      '  trmmodemporta,'
      '  trmmodemvelocidade'
      'FROM trm where trmcodigo=:trmcodigo')
    Left = 820
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object trmtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object trmtrmmodemmodelo: TStringField
      FieldName = 'trmmodemmodelo'
      Size = 50
    end
    object trmtrmmodemporta: TStringField
      FieldName = 'trmmodemporta'
      Size = 50
    end
    object trmtrmmodemvelocidade: TStringField
      FieldName = 'trmmodemvelocidade'
      Size = 50
    end
  end
  object smsenvio: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  smschave,'
      '  psmchave,'
      '  etfcodigo,'
      '  smstexto,'
      '  smsretorno,'
      '  smsregistro,'
      '  smsenvio'
      'FROM sms where etfcodigo=:etfcodigo and psmchave=:psmchave')
    Left = 732
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
    object smsenviosmschave: TIntegerField
      FieldName = 'smschave'
    end
    object smsenviopsmchave: TIntegerField
      FieldName = 'psmchave'
    end
    object smsenvioetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object smsenviosmstexto: TStringField
      FieldName = 'smstexto'
      Size = 250
    end
    object smsenviosmsregistro: TDateTimeField
      FieldName = 'smsregistro'
    end
    object smsenviosmsenvio: TDateTimeField
      FieldName = 'smsenvio'
    end
  end
end
