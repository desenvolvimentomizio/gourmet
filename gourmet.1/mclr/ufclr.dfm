inherited fclr: Tfclr
  Caption = 'Informa'#231#227'o Tribut'#225'ria'
  ClientHeight = 368
  ClientWidth = 522
  ExplicitWidth = 538
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 339
    Width = 522
    ExplicitTop = 707
    ExplicitWidth = 1002
    inherited bconfirma: TBitBtn
      Left = 368
      ExplicitLeft = 848
    end
    inherited bcancela: TBitBtn
      Left = 443
      ExplicitLeft = 923
      ExplicitTop = 4
    end
    inherited bfechar: TBitBtn
      Left = 303
      ExplicitLeft = 783
    end
  end
  inherited paginas: TPageControl
    Width = 522
    Height = 339
    ExplicitWidth = 1002
    ExplicitHeight = 707
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 994
      ExplicitHeight = 679
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = clrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Cliente'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Regime Tribut'#225'rio'
        FocusControl = crtcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 128
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Apura'#231#227'o do Lucro'
        FocusControl = talcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 141
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contador'
        FocusControl = ctdcodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 195
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNAE Principal'
        FocusControl = clrcnaeprincipal
      end
      object Label7: TLabel
        Left = 8
        Top = 222
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Primeiro CNAE Secund'#225'rio'
        FocusControl = clrcnaesecundaria1
      end
      object Label8: TLabel
        Left = 8
        Top = 249
        Width = 128
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundo CNAE Secund'#225'rio'
        FocusControl = clrcnaesecundaria2
      end
      object Label9: TLabel
        Left = 8
        Top = 276
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Terceiro CNAE Secund'#225'rio'
        FocusControl = clrcnaesecundaria3
      end
      object Label10: TLabel
        Left = 8
        Top = 300
        Width = 120
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quarto CNAE Secund'#225'rio'
        FocusControl = clrcnaesecundaria4
      end
      object Label11: TLabel
        Left = 8
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ ou CPF'
        FocusControl = crtcodigo
      end
      object Label12: TLabel
        Left = 8
        Top = 168
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vencimento do Certificado'
        FocusControl = clrvencimentocertificado
      end
      object Label13: TLabel
        Left = 321
        Top = 168
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vers'#227'o'
        FocusControl = clrversao
      end
      object clrchave: TDBEdit
        Left = 165
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 165
        Top = 30
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object crtcodigo: TDBEdit
        Left = 165
        Top = 84
        Width = 36
        Height = 21
        CustomHint = BalloonHint
        DataField = 'crtcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object talcodigo: TDBEdit
        Left = 165
        Top = 111
        Width = 36
        Height = 21
        CustomHint = BalloonHint
        DataField = 'talcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ctdcodigo: TDBEdit
        Left = 165
        Top = 138
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object clrcnaeprincipal: TDBEdit
        Left = 165
        Top = 192
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrcnaeprincipal'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object clrcnaesecundaria1: TDBEdit
        Left = 165
        Top = 219
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrcnaesecundaria1'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object clrcnaesecundaria2: TDBEdit
        Left = 165
        Top = 246
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrcnaesecundaria2'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object clrcnaesecundaria3: TDBEdit
        Left = 165
        Top = 273
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrcnaesecundaria3'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object clrcnaesecundaria4: TDBEdit
        Left = 165
        Top = 297
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrcnaesecundaria4'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object Panel1: TPanel
        Left = 0
        Top = 296
        Width = 514
        Height = 15
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Panel1'
        TabOrder = 12
        ExplicitWidth = 994
        ExplicitHeight = 383
        object WebBrowser1: TWebBrowser
          Left = 1
          Top = 1
          Width = 512
          Height = 13
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 992
          ExplicitHeight = 381
          ControlData = {
            4C000000EB340000580100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object BchamaSINTEGRA: TButton
        Left = 296
        Top = 192
        Width = 201
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Chama SINTEGRA para consulta'
        TabOrder = 13
        OnClick = BchamaSINTEGRAClick
      end
      object edDOC1: TEdit
        Left = 165
        Top = 57
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        TabOrder = 14
        Text = 'edDOC1'
      end
      object clrvencimentocertificado: TDBEdit
        Left = 165
        Top = 165
        Width = 84
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrvencimentocertificado'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object clrversao: TDBEdit
        Left = 360
        Top = 165
        Width = 137
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clrversao'
        DataSource = DSRegistro
        TabOrder = 6
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 516
    Top = 32
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clrchave,'
      '  etdcodigo,'
      '  crtcodigo,'
      '  talcodigo,'
      '  ctdcodigo,'
      '  clrcnaeprincipal,'
      '  clrcnaesecundaria1,'
      '  clrcnaesecundaria2,'
      '  clrcnaesecundaria3,'
      '  clrcnaesecundaria4,'
      '  clrvencimentocertificado,'
      '  clrversao'
      'FROM clr where clrchave=:clrchave')
    Left = 588
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clrchave'
        Value = nil
      end>
    object registroclrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'clrchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
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
    object registrocrtcodigo: TIntegerField
      DisplayLabel = 'Regime Tribut'#225'rio'
      FieldName = 'crtcodigo'
      Required = True
    end
    object registrocrtidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'crtidentificacao'
      LookupDataSet = crt
      LookupKeyFields = 'crtcodigo'
      LookupResultField = 'crtidentificacao'
      KeyFields = 'crtcodigo'
      Size = 50
      Lookup = True
    end
    object registrotalcodigo: TIntegerField
      DisplayLabel = 'Tipo de Apura'#231#227'o do Lucro'
      FieldName = 'talcodigo'
      Required = True
    end
    object registrotalidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'talidentificacao'
      LookupDataSet = tal
      LookupKeyFields = 'talcodigo'
      LookupResultField = 'talidentificacao'
      KeyFields = 'talcodigo'
      Size = 50
      Lookup = True
    end
    object registroctdcodigo: TIntegerField
      DisplayLabel = 'Contador'
      FieldName = 'ctdcodigo'
      Required = True
    end
    object registroctdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctdidentificacao'
      LookupDataSet = ctd
      LookupKeyFields = 'ctdcodigo'
      LookupResultField = 'ctdidentificacao'
      KeyFields = 'ctdcodigo'
      Size = 50
      Lookup = True
    end
    object registroclrcnaeprincipal: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'clrcnaeprincipal'
      Required = True
      Size = 30
    end
    object registroclrcnaesecundaria1: TStringField
      DisplayLabel = 'Primeiro CNAE Secund'#225'rio'
      FieldName = 'clrcnaesecundaria1'
      Size = 50
    end
    object registroclrcnaesecundaria2: TStringField
      DisplayLabel = 'Segundo CNAE Secund'#225'rio'
      FieldName = 'clrcnaesecundaria2'
      Size = 50
    end
    object registroclrcnaesecundaria3: TStringField
      DisplayLabel = 'Terceiro CNAE Secund'#225'rio'
      FieldName = 'clrcnaesecundaria3'
      Size = 50
    end
    object registroclrcnaesecundaria4: TStringField
      DisplayLabel = 'Quarto CNAE Secund'#225'rio'
      FieldName = 'clrcnaesecundaria4'
      Size = 50
    end
    object registroclrvencimentocertificado: TDateField
      DisplayLabel = 'Vencimento do Certificado'
      FieldName = 'clrvencimentocertificado'
    end
    object registroclrversao: TStringField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'clrversao'
    end
  end
  inherited dcp: TUniQuery
    Left = 728
    Top = 108
  end
  inherited dtb: TUniQuery
    Left = 684
    Top = 108
  end
  inherited coa: TUniQuery
    Left = 648
    Top = 108
  end
  inherited dcl: TUniQuery
    Left = 660
  end
  inherited BalloonHint: TBalloonHint
    Left = 852
    Top = 224
  end
  inherited cpg: TUniQuery
    Left = 644
    Top = 168
  end
  inherited cpc: TUniQuery
    Left = 645
    Top = 217
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 888
    Top = 112
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao, etddoc1 from etd')
    Constraints = <>
    Left = 468
    Top = 56
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
  end
  object crt: TUniQuery
    SQL.Strings = (
      'select crtcodigo, crtidentificacao from crt')
    Constraints = <>
    Left = 732
    Top = 192
    object crtcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
    object crtcrtidentificacao: TStringField
      FieldName = 'crtidentificacao'
      Size = 50
    end
  end
  object tal: TUniQuery
    SQL.Strings = (
      'select talcodigo, talidentificacao from tal')
    Constraints = <>
    Left = 344
    Top = 16
    object taltalcodigo: TIntegerField
      FieldName = 'talcodigo'
    end
    object taltalidentificacao: TStringField
      FieldName = 'talidentificacao'
      Size = 50
    end
  end
  object ctd: TUniQuery
    SQL.Strings = (
      'select ctdcodigo, ctdidentificacao from ctd')
    Constraints = <>
    Left = 852
    Top = 144
    object ctdctdcodigo: TIntegerField
      FieldName = 'ctdcodigo'
    end
    object ctdctdidentificacao: TStringField
      FieldName = 'ctdidentificacao'
      Size = 50
    end
  end
  object Detd: TDataSource
    DataSet = etd
    Left = 580
    Top = 200
  end
end
