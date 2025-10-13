inherited fajtpreco: Tfajtpreco
  ActiveControl = novopunprecoav
  Caption = 'Altera'#231#227'o de Pre'#231'o'
  ClientHeight = 589
  ClientWidth = 918
  ExplicitWidth = 934
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 560
    Width = 918
    ExplicitTop = 226
    ExplicitWidth = 484
    inherited bconfirma: TBitBtn
      Left = 764
      ExplicitLeft = 330
    end
    inherited bcancela: TBitBtn
      Left = 839
      ExplicitLeft = 405
    end
    inherited bfechar: TBitBtn
      Left = 699
      ExplicitLeft = 265
    end
  end
  inherited paginas: TPageControl
    Width = 918
    Height = 560
    ExplicitWidth = 484
    ExplicitHeight = 226
    inherited Principal: TTabSheet
      ExplicitWidth = 910
      ExplicitHeight = 532
      object Label5: TLabel
        Left = 8
        Top = 61
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
      end
      object Label3: TLabel
        Left = 8
        Top = 89
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Barra'
        FocusControl = punbarra
      end
      object Label4: TLabel
        Left = 8
        Top = 144
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o A VISTA Atual R$'
        FocusControl = punprecoav
      end
      object Label6: TLabel
        Left = 269
        Top = 144
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Novo Pre'#231'o A VISTA R$'
      end
      object lpnovopunprecoap: TLabel
        Left = 264
        Top = 171
        Width = 118
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Novo Pre'#231'o A PRAZO R$'
      end
      object lppunprecoap: TLabel
        Left = 8
        Top = 171
        Width = 118
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o A PRAZO Atual R$'
        FocusControl = punprecoap
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Multiplicador'
        FocusControl = punmultiplicador
      end
      object Label7: TLabel
        Left = 8
        Top = 115
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o de Custo'
        FocusControl = punbarra
      end
      object Label8: TLabel
        Left = 300
        Top = 117
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Margem de Lucro'
        FocusControl = punbarra
      end
      object punidentificacao: TDBEdit
        Left = 136
        Top = 58
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'punidentificacao'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object punbarra: TDBEdit
        Left = 136
        Top = 86
        Width = 133
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'punbarra'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object punprecoav: TDBEdit
        Left = 136
        Top = 141
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'punprecoav'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object novopunprecoav: TEdit
        Left = 388
        Top = 141
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Alignment = taRightJustify
        Color = clYellow
        TabOrder = 7
        Text = '0,00'
        OnExit = novopunprecoavExit
        OnKeyPress = FormKeyPress
      end
      object novopunprecoap: TEdit
        Left = 388
        Top = 168
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Alignment = taRightJustify
        Color = clYellow
        TabOrder = 8
        Text = '0,00'
        OnExit = novopunprecoapExit
        OnKeyPress = FormKeyPress
      end
      object punprecoap: TDBEdit
        Left = 136
        Top = 168
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'punprecoap'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object punmultiplicador: TDBEdit
        Left = 136
        Top = 30
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Color = clSilver
        DataField = 'punmultiplicador'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object unicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        Color = clSilver
        DataField = 'unicodigo'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object puncusto: TDBEdit
        Left = 136
        Top = 114
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'puncusto'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object punmargem: TEdit
        Left = 388
        Top = 114
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Alignment = taRightJustify
        Color = 16767152
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '0,00'
        OnExit = novopunprecoavExit
        OnKeyPress = FormKeyPress
      end
      object DBpunmargem: TDBEdit
        Left = 326
        Top = 87
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'punmargem'
        DataSource = DSRegistro
        TabOrder = 10
        Visible = False
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 548
    Top = 16
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdoisprecos, cfgmodoatuapro  from cfg, cfgmsai where cf' +
        'g.cfgcodigo=cfgmsai.cfgcodigo')
    Left = 620
    Top = 84
    object cfgcfgdoisprecos: TIntegerField
      FieldName = 'cfgdoisprecos'
    end
    object cfgcfgmodoatuapro: TIntegerField
      FieldName = 'cfgmodoatuapro'
    end
  end
  inherited consulta: TUniQuery
    Left = 660
    Top = 32
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select puncodigo, procodigo,  punprecoav,punprecoap, punidentifi' +
        'cacao,'
      
        'unicodigo,punmultiplicador,punbarra,puncusto, punmargem from pun' +
        ' where puncodigo=:puncodigo and procodigo=:procodigo')
    Left = 696
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registropunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object registropunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object registropunprecoav: TFloatField
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registropunprecoap: TFloatField
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object registrouninome: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'uninome'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'uninome'
      KeyFields = 'unicodigo'
      Lookup = True
    end
    object registropunmultiplicador: TFloatField
      DisplayLabel = 'Multiplicador'
      FieldName = 'punmultiplicador'
    end
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registropuncusto: TFloatField
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registropunmargem: TFloatField
      FieldName = 'punmargem'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited dcp: TUniQuery
    Left = 272
    Top = 36
  end
  inherited dtb: TUniQuery
    Left = 412
    Top = 60
  end
  inherited coa: TUniQuery
    Left = 320
    Top = 84
  end
  inherited BalloonHint: TBalloonHint
    Left = 572
    Top = 72
  end
  inherited acoesfrm: TActionList
    Left = 436
    Top = 4
  end
  object uni: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  unicodigo,'
      '  uni.unisimbolo,'
      '  uni.uninome'
      'FROM uni')
    Left = 712
    Top = 32
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Size = 35
    end
  end
  object apv: TUniQuery
    SQL.Strings = (
      'select '
      '  apvchave,'
      '  puncodigo,'
      '  clbcodigo,'
      '  spvcodigo,'
      '  apvprecoav,'
      '  apvprecoap,'
      '  apvdatahora'
      'from apv where puncodigo=:puncodigo'
      '  and apvdthoraaplicado is null')
    Left = 192
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end>
    object apvapvchave: TIntegerField
      FieldName = 'apvchave'
    end
    object apvpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object apvclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object apvspvcodigo: TIntegerField
      FieldName = 'spvcodigo'
    end
    object apvapvprecoav: TFloatField
      FieldName = 'apvprecoav'
    end
    object apvapvprecoap: TFloatField
      FieldName = 'apvprecoap'
    end
    object apvapvdatahora: TDateTimeField
      FieldName = 'apvdatahora'
    end
  end
  object rpu: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rpuchave,'
      '  puncodigo,'
      '  clbcodigo,'
      '  punprecoav,'
      '  punprecoap,'
      '  puncusto,'
      '  punmargem,'
      '  punpercacresavap,'
      '  rpuregistro'
      'FROM rpu limit 0')
    Left = 336
    Top = 24
    object rpurpuchave: TIntegerField
      FieldName = 'rpuchave'
    end
    object rpupuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object rpuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object rpupunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object rpupunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
    object rpupuncusto: TFloatField
      FieldName = 'puncusto'
    end
    object rpupunmargem: TFloatField
      FieldName = 'punmargem'
    end
    object rpupunpercacresavap: TFloatField
      FieldName = 'punpercacresavap'
    end
    object rpurpuregistro: TDateTimeField
      FieldName = 'rpuregistro'
    end
  end
end
