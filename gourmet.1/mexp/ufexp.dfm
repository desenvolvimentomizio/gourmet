inherited fexp: Tfexp
  Caption = 'Extrato de Produto'
  ClientHeight = 762
  ClientWidth = 1299
  ExplicitWidth = 1315
  ExplicitHeight = 801
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 733
    Width = 1299
    ParentBackground = False
    ExplicitTop = 733
    ExplicitWidth = 1299
    inherited bconfirma: TBitBtn
      Left = 1145
      Hint = 'Esc - Fechar'
      Visible = False
      ExplicitLeft = 1145
    end
    inherited bcancela: TBitBtn
      Left = 1220
      Visible = False
      ExplicitLeft = 1220
    end
    inherited bfechar: TBitBtn
      Left = 1070
      Width = 75
      Visible = True
      ExplicitLeft = 1070
      ExplicitWidth = 75
    end
  end
  inherited paginas: TPageControl
    Width = 1299
    Height = 733
    ExplicitWidth = 1299
    ExplicitHeight = 733
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1291
      ExplicitHeight = 705
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1291
        Height = 113
        CustomHint = BalloonHint
        Align = alTop
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = expchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 812
        Top = 60
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = expdtinicial
        Visible = False
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = expdtfinal
      end
      object Label5: TLabel
        Left = 8
        Top = 88
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Movimenta'#231#227'o a exibir'
      end
      object btsaldo: TSpeedButton
        Left = 252
        Top = 84
        Width = 110
        Height = 22
        CustomHint = BalloonHint
        GroupIndex = 12
        Caption = 'Saldo'
        OnClick = btsaldoClick
      end
      object btsaldoambos: TSpeedButton
        Left = 368
        Top = 84
        Width = 110
        Height = 22
        CustomHint = BalloonHint
        GroupIndex = 12
        Caption = 'Ambos'
        OnClick = btsaldoambosClick
      end
      object btsaldodisponivel: TSpeedButton
        Left = 136
        Top = 84
        Width = 110
        Height = 22
        CustomHint = BalloonHint
        GroupIndex = 12
        Caption = 'Saldo Dispon'#237'vel'
        OnClick = btsaldodisponivelClick
      end
      object expchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'expchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object expdtinicial: TDBEdit
        Left = 880
        Top = 58
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'expdtinicial'
        DataSource = DSRegistro
        TabOrder = 2
        Visible = False
      end
      object expdtfinal: TDBEdit
        Left = 136
        Top = 57
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'expdtfinal'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object Pldisp: TPanel
        Left = 0
        Top = 113
        Width = 1291
        Height = 266
        CustomHint = BalloonHint
        Align = alBottom
        BorderWidth = 4
        Color = clSilver
        ParentBackground = False
        TabOrder = 5
        Visible = False
        object listaDisp: TDBGrid
          Left = 5
          Top = 30
          Width = 1281
          Height = 231
          CustomHint = BalloonHint
          Align = alClient
          Color = 13426175
          DataSource = Dtprd
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = gridzebradoLocal
          Columns = <
            item
              Expanded = False
              FieldName = 'mesinclusao'
              Title.Caption = 'Data Inclus'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Title.Caption = 'Entidade'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprorigem'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprchavedoc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprquantiitm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcontendo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprquanti'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolobase'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'epracumulado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcustototal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcustofinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprmediacusto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesinclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sit.Est.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmecodigo'
              Title.Caption = 'Mov.Est.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesemissao'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Visible = True
            end>
        end
        object PlTitDisp: TPanel
          Left = 5
          Top = 5
          Width = 1281
          Height = 25
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 1
          Caption = '         Saldo Dispon'#237'vel'
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            Left = 2
            Top = 2
            Width = 23
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            OnClick = SpeedButton1Click
            ExplicitLeft = 3
            ExplicitTop = 1
          end
        end
      end
      object PlResu: TPanel
        Left = 0
        Top = 379
        Width = 1291
        Height = 326
        CustomHint = BalloonHint
        Align = alBottom
        BorderWidth = 4
        Color = clGray
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object lista: TDBGrid
          Left = 5
          Top = 30
          Width = 1281
          Height = 291
          CustomHint = BalloonHint
          Align = alClient
          Color = 15204058
          DataSource = Dtprg
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = gridzebradoLocal
          Columns = <
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Title.Caption = 'Entidade'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprorigem'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprchavedoc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprquantiitm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcontendo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprquanti'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolobase'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'epracumulado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcustototal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprcustofinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eprmediacusto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesinclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmecodigo'
              Title.Caption = 'Mov.Estoque'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 5
          Top = 5
          Width = 1281
          Height = 25
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 1
          Caption = '          Saldo'
          TabOrder = 1
          object SpeedButton2: TSpeedButton
            Left = 2
            Top = 2
            Width = 23
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            OnClick = SpeedButton2Click
            ExplicitTop = 1
          end
          object BDiminuiLetra: TBitBtn
            Left = 1235
            Top = 2
            Width = 22
            Height = 21
            Margins.Left = 20
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = BDiminuiLetraClick
          end
          object BAumentaLetra: TBitBtn
            Left = 1257
            Top = 2
            Width = 22
            Height = 21
            Margins.Left = 20
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = False
            OnClick = BAumentaLetraClick
          end
        end
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01.01.05.008-01'
  end
  inherited DSRegistro: TUniDataSource
    Left = 296
    Top = 65516
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select atvcodigo FROM fla, etd where etd.etdcodigo=fla.etdcodigo' +
        ' AND flacodigo=:flacodigo')
    Left = 440
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
  inherited consulta: TUniQuery
    Left = 308
    Top = 264
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select expchave, procodigo, clbcodigo, expdtinicial, expdtfinal,' +
        ' exptipo from exp where expchave=:expchave')
    Left = 348
    Top = 65524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'expchave'
        Value = nil
      end>
    object registroexpchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'expchave'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 60
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registroexpdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'expdtinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroexpdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'expdtfinal'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroexptipo: TIntegerField
      FieldName = 'exptipo'
    end
  end
  inherited pfr: TUniQuery
    Left = 524
    Top = 208
  end
  inherited psf: TUniQuery
    Left = 688
    Top = 148
  end
  inherited dcl: TUniQuery
    Left = 664
    Top = 264
  end
  inherited cau: TUniQuery
    Left = 708
    Top = 268
  end
  inherited err: TUniQuery
    Left = 660
    Top = 332
  end
  inherited BalloonHint: TBalloonHint
    Left = 200
    Top = 220
  end
  inherited acoesfrm: TActionList
    Left = 444
    Top = 12
  end
  inherited ImgBusca: TPngImageList
    Left = 628
    Top = 272
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 540
    Top = 260
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 240
    Top = 65528
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 60
    end
  end
  object expdisp: TUniQuery
    SQL.Strings = (
      'CALL extratoProdutoDisp(:produto, :dtInicial, :dtFinal)')
    Left = 932
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtFinal'
        Value = nil
      end>
  end
  object Dtprd: TUniDataSource
    DataSet = vtprd
    Left = 928
    Top = 388
  end
  object tprd: TUniQuery
    SQL.Strings = (
      'select eprcodigo,'
      '       procodigo,'
      '       etdcodigo,'
      '       etdidentificacao,'
      '       sdeidentificacao,'
      '       eprdata,'
      '       eprchavedoc,'
      '       eprorigem,'
      '       eprnumero,'
      '       unicodigo,'
      '       unisimbolo,'
      '       tdfidentificacao,'
      '       eprquantiitm,'
      '       eprquanti,'
      '       eprcontendo,'
      '       unisimbolobase,'
      '       epracumulado,'
      '       eprmultiplicador,'
      '       tmecodigo,'
      '       ttecodigo,'
      '       eprcustototal,'
      '       eprmediacusto,'
      '       eprcustofinal,'
      '       sdecodigo,'
      '       mesinclusao,'
      '       itmchave,'
      '       itmdesconto,'
      '       itmvalor,'
      '       eprdata mesemissao,'
      ''
      
        '       (select temidentificacao from tem,mes where mes.temcodigo' +
        '=tem.temcodigo and mes.meschave=eprchavedoc) temidentificacao'
      'from tprd'
      '     join '
      '     (select @acumulado = 0) acumulado'
      'order by eprdata,'
      '         eprnumero,eprcodigo;')
    Left = 764
    Top = 536
    object tprdeprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'eprcodigo'
      Visible = False
    end
    object tprdprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 8
      FieldName = 'procodigo'
      Required = True
      Visible = False
    end
    object tprdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object tprdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object tprdeprdata: TDateTimeField
      FieldName = 'eprdata'
    end
    object tprdeprchavedoc: TIntegerField
      DisplayLabel = 'Chave'
      DisplayWidth = 8
      FieldName = 'eprchavedoc'
      Required = True
    end
    object tprdeprorigem: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 12
      FieldName = 'eprorigem'
      Size = 15
    end
    object tprdeprnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 12
      FieldName = 'eprnumero'
    end
    object tprdunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object tprdunisimbolo: TStringField
      DisplayLabel = 'Un'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object tprdtdfidentificacao: TStringField
      DisplayLabel = 'Tipo do Documento'
      DisplayWidth = 100
      FieldName = 'tdfidentificacao'
      Size = 100
    end
    object tprdeprquantiitm: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'eprquantiitm'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object tprdeprquanti: TFloatField
      DisplayLabel = 'Quant. Tot.'
      DisplayWidth = 8
      FieldName = 'eprquanti'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object tprdeprcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'eprcontendo'
    end
    object tprdunisimbolobase: TStringField
      DisplayLabel = 'Un.Base'
      FieldName = 'unisimbolobase'
      Size = 5
    end
    object tprdepracumulado: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'epracumulado'
      ReadOnly = True
    end
    object tprdeprmultiplicador: TFloatField
      DisplayLabel = 'Multipl.'
      DisplayWidth = 6
      FieldName = 'eprmultiplicador'
    end
    object tprdtmecodigo: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 5
      FieldName = 'tmecodigo'
      Visible = False
    end
    object tprdttecodigo: TIntegerField
      FieldName = 'ttecodigo'
      Visible = False
    end
    object tprdeprcustototal: TFloatField
      DisplayLabel = 'Custo Total'
      FieldName = 'eprcustototal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprdeprmediacusto: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'eprmediacusto'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprdeprcustofinal: TFloatField
      DisplayLabel = 'Custo Final'
      FieldName = 'eprcustofinal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprdsdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object tprdsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 3
    end
    object tprditmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object tprdmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
    object tprditmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tprdmesemissao: TDateField
      FieldName = 'mesemissao'
    end
    object tprdtemidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'temidentificacao'
      Size = 30
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 816
    Top = 248
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  object tprg: TUniQuery
    SQL.Strings = (
      'select eprcodigo,'
      '       procodigo,'
      '       etdcodigo,'
      '       etdidentificacao,'
      '       sdeidentificacao,'
      '       eprdata,'
      '       eprchavedoc,'
      '       eprorigem,'
      '       eprnumero,'
      '       unicodigo,'
      '       unisimbolo,'
      '      tdfidentificacao,'
      '       eprquantiitm,'
      '       eprquanti,'
      '       eprcontendo,'
      '       unisimbolobase,'
      '       epracumulado,'
      '       eprmultiplicador,'
      '       tmecodigo,'
      '       ttecodigo,'
      'eprcustototal,'
      'eprmediacusto,'
      'eprcustofinal,'
      'sdecodigo,'
      'mesinclusao,'
      'itmdesconto,'
      'itmvalor,'
      '       mesregistro,'
      
        '       (select temidentificacao from tem,mes where mes.temcodigo' +
        '=tem.temcodigo and mes.meschave=eprchavedoc) temidentificacao'
      ''
      ''
      'from tprg'
      '     join '
      '     (select @acumulado = 0) acumulado'
      
        'order by concat(mesregistro, '#39' '#39', substring(mesinclusao,11,10)),' +
        ' eprnumero,eprcodigo;')
    Left = 592
    Top = 500
    object tprgeprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'eprcodigo'
      Visible = False
    end
    object tprgprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 8
      FieldName = 'procodigo'
      Required = True
      Visible = False
    end
    object tprgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object tprgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object tprgeprdata: TDateTimeField
      FieldName = 'eprdata'
    end
    object tprgeprchavedoc: TIntegerField
      DisplayLabel = 'Chave'
      DisplayWidth = 8
      FieldName = 'eprchavedoc'
      Required = True
    end
    object tprgeprorigem: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 12
      FieldName = 'eprorigem'
      Size = 15
    end
    object tprgeprnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 12
      FieldName = 'eprnumero'
    end
    object tprgunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object tprgunisimbolo: TStringField
      DisplayLabel = 'Un'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object tprgtdfidentificacao: TStringField
      DisplayLabel = 'Tipo do Documento'
      DisplayWidth = 100
      FieldName = 'tdfidentificacao'
      Size = 100
    end
    object tprgeprquantiitm: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'eprquantiitm'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object tprgeprquanti: TFloatField
      DisplayLabel = 'Quant. Tot.'
      DisplayWidth = 8
      FieldName = 'eprquanti'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object tprgeprcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'eprcontendo'
    end
    object tprgunisimbolobase: TStringField
      DisplayLabel = 'Un.Base'
      FieldName = 'unisimbolobase'
      Size = 5
    end
    object tprgepracumulado: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'epracumulado'
      ReadOnly = True
    end
    object tprgeprmultiplicador: TFloatField
      DisplayLabel = 'Multipl.'
      DisplayWidth = 6
      FieldName = 'eprmultiplicador'
    end
    object tprgtmecodigo: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 5
      FieldName = 'tmecodigo'
      Visible = False
    end
    object tprgttecodigo: TIntegerField
      FieldName = 'ttecodigo'
      Visible = False
    end
    object tprgeprcustototal: TFloatField
      DisplayLabel = 'Custo Total'
      FieldName = 'eprcustototal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprgeprmediacusto: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'eprmediacusto'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprgeprcustofinal: TFloatField
      DisplayLabel = 'Custo Final'
      FieldName = 'eprcustofinal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tprgsdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object tprgsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 3
    end
    object tprgmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
    object tprgitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
    end
    object tprgmesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
    end
    object tprgitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tprgtemidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'temidentificacao'
      Size = 30
    end
  end
  object Dtprg: TUniDataSource
    DataSet = vtprg
    Left = 555
    Top = 496
  end
  object exp: TUniQuery
    SQL.Strings = (
      'CALL extratoProduto(:produto, :dtInicial, :dtFinal)')
    Left = 892
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtFinal'
        Value = nil
      end>
  end
  object vtprg: TVirtualTable
    Left = 516
    Top = 496
    Data = {04000000000000000000}
    object vtprgeprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'eprcodigo'
      Visible = False
    end
    object vtprgprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 8
      FieldName = 'procodigo'
      Visible = False
    end
    object vtprgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object vtprgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object vtprgeprdata: TDateTimeField
      FieldName = 'eprdata'
    end
    object vtprgeprchavedoc: TIntegerField
      DisplayLabel = 'Chave'
      DisplayWidth = 8
      FieldName = 'eprchavedoc'
    end
    object vtprgeprorigem: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 12
      FieldName = 'eprorigem'
      Size = 15
    end
    object vtprgeprnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 12
      FieldName = 'eprnumero'
    end
    object vtprgunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object vtprgunisimbolo: TStringField
      DisplayLabel = 'Un'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object vtprgtdfidentificacao: TStringField
      DisplayLabel = 'Tipo do Documento'
      DisplayWidth = 100
      FieldName = 'tdfidentificacao'
      Size = 100
    end
    object vtprgeprquantiitm: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'eprquantiitm'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vtprgeprquanti: TFloatField
      DisplayLabel = 'Quant. Tot.'
      DisplayWidth = 8
      FieldName = 'eprquanti'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vtprgeprcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'eprcontendo'
    end
    object vtprgunisimbolobase: TStringField
      DisplayLabel = 'Un.Base'
      FieldName = 'unisimbolobase'
      Size = 5
    end
    object vtprgepracumulado: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'epracumulado'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object vtprgeprmultiplicador: TFloatField
      DisplayLabel = 'Multipl.'
      DisplayWidth = 6
      FieldName = 'eprmultiplicador'
    end
    object vtprgtmecodigo: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 5
      FieldName = 'tmecodigo'
      Visible = False
    end
    object vtprgttecodigo: TIntegerField
      FieldName = 'ttecodigo'
      Visible = False
    end
    object vtprgeprcustototal: TFloatField
      DisplayLabel = 'Custo Total'
      FieldName = 'eprcustototal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprgeprmediacusto: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'eprmediacusto'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprgeprcustofinal: TFloatField
      DisplayLabel = 'Custo Final'
      FieldName = 'eprcustofinal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprgsdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object vtprgsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 3
    end
    object vtprgmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
    object vtprgitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vtprgmesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
    end
    object vtprgitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vtprgtemidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'temidentificacao'
      Size = 30
    end
  end
  object ivt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivt.ivtchave,'
      '  ivt.procodigo,'
      '  ivt.ivtquantidade,'
      '  ivt.ivtdescricao,'
      '  spd.spddatabalanco,'
      '  uni.unisimbolo,'
      '  ivt.ivtregistro '
      'FROM ivt,'
      '     spd,'
      '     pro,'
      '     uni'
      'WHERE ivt.procodigo = pro.procodigo'
      'AND uni.unicodigo = pro.unicodigo'
      'AND ivt.spdchave = spd.spdchave'
      'AND ivt.procodigo = :procodigo'
      
        'AND spd.spddatabalanco BETWEEN :datainicial AND :datafinal  orde' +
        'r by ivt.ivtchave')
    Left = 724
    Top = 485
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object ivtivtchave: TIntegerField
      FieldName = 'ivtchave'
    end
    object ivtprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object ivtivtquantidade: TFloatField
      FieldName = 'ivtquantidade'
    end
    object ivtivtdescricao: TStringField
      FieldName = 'ivtdescricao'
      Size = 50
    end
    object ivtspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
    end
    object ivtunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
    object ivtivtregistro: TDateTimeField
      FieldName = 'ivtregistro'
    end
  end
  object ivd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivd.ivdchave,'
      '  ivd.procodigo,'
      '  ivd.ivdquantidade,'
      '  ivd.ivddescricao,'
      '  spd.spddatabalanco,'
      '  uni.unisimbolo,'
      '  ivd.ivdregistro '
      'FROM ivd,'
      '     spd,'
      '     pro,'
      '     uni'
      'WHERE ivd.procodigo = pro.procodigo'
      'AND uni.unicodigo = pro.unicodigo'
      'AND ivd.spdchave = spd.spdchave'
      'AND ivd.procodigo = :procodigo'
      
        'AND spd.spddatabalanco BETWEEN :datainicial AND :datafinal  orde' +
        'r by ivd.ivdchave -- desc limit 1')
    Left = 764
    Top = 485
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object ivdivdchave: TIntegerField
      FieldName = 'ivdchave'
    end
    object ivdprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object ivdivdquantidade: TFloatField
      FieldName = 'ivdquantidade'
    end
    object ivdivddescricao: TStringField
      FieldName = 'ivddescricao'
      Size = 50
    end
    object ivdspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
    end
    object ivdunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
    object ivdivdregistro: TDateTimeField
      FieldName = 'ivdregistro'
    end
  end
  object vtprd: TVirtualTable
    FieldDefs = <
      item
        Name = 'eprcodigo'
        DataType = ftInteger
      end
      item
        Name = 'procodigo'
        DataType = ftInteger
      end
      item
        Name = 'etdcodigo'
        DataType = ftInteger
      end
      item
        Name = 'etdidentificacao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'eprdata'
        DataType = ftDate
      end
      item
        Name = 'eprchavedoc'
        DataType = ftInteger
      end
      item
        Name = 'eprorigem'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'eprnumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'unicodigo'
        DataType = ftInteger
      end
      item
        Name = 'unisimbolo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'tdfidentificacao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'eprquantiitm'
        DataType = ftFloat
      end
      item
        Name = 'eprquanti'
        DataType = ftFloat
      end
      item
        Name = 'eprcontendo'
        DataType = ftFloat
      end
      item
        Name = 'unisimbolobase'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'epracumulado'
        DataType = ftFloat
      end
      item
        Name = 'eprmultiplicador'
        DataType = ftFloat
      end
      item
        Name = 'tmecodigo'
        DataType = ftInteger
      end
      item
        Name = 'ttecodigo'
        DataType = ftInteger
      end
      item
        Name = 'eprcustototal'
        DataType = ftFloat
      end
      item
        Name = 'eprmediacusto'
        DataType = ftFloat
      end
      item
        Name = 'eprcustofinal'
        DataType = ftFloat
      end
      item
        Name = 'sdeidentificacao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sdecodigo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'mesinclusao'
        DataType = ftDateTime
      end
      item
        Name = 'itmchave'
        DataType = ftInteger
      end
      item
        Name = 'itmvalor'
        DataType = ftFloat
      end>
    Left = 716
    Top = 536
    Data = {
      04001B000900657072636F6469676F0300000000000000090070726F636F6469
      676F03000000000000000900657464636F6469676F0300000000000000100065
      74646964656E74696669636163616F01003C0000000000070065707264617461
      09000000000000000B006570726368617665646F630300000000000000090065
      70726F726967656D01000F000000000009006570726E756D65726F0100140000
      0000000900756E69636F6469676F03000000000000000A00756E6973696D626F
      6C6F010005000000000010007464666964656E74696669636163616F01006400
      000000000C006570727175616E746969746D0600000000000000090065707271
      75616E746906000000000000000B00657072636F6E74656E646F060000000000
      00000E00756E6973696D626F6C6F6261736501000500000000000C0065707261
      63756D756C61646F060000000000000010006570726D756C7469706C69636164
      6F7206000000000000000900746D65636F6469676F0300000000000000090074
      7465636F6469676F03000000000000000D00657072637573746F746F74616C06
      000000000000000D006570726D65646961637573746F06000000000000000D00
      657072637573746F66696E616C060000000000000010007364656964656E7469
      6669636163616F01003200000000000900736465636F6469676F010003000000
      00000B006D6573696E636C7573616F0B00000000000000080069746D63686176
      650300000000000000080069746D76616C6F7206000000000000000000000000
      00}
    object vtprdeprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'eprcodigo'
      Visible = False
    end
    object vtprdprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 8
      FieldName = 'procodigo'
      Visible = False
    end
    object vtprdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object vtprdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object vtprdeprdata: TDateTimeField
      FieldName = 'eprdata'
    end
    object vtprdeprchavedoc: TIntegerField
      DisplayLabel = 'Chave'
      DisplayWidth = 8
      FieldName = 'eprchavedoc'
    end
    object vtprdeprorigem: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 12
      FieldName = 'eprorigem'
      Size = 15
    end
    object vtprdeprnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 12
      FieldName = 'eprnumero'
    end
    object vtprdunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object vtprdunisimbolo: TStringField
      DisplayLabel = 'Un'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object vtprdtdfidentificacao: TStringField
      DisplayLabel = 'Tipo do Documento'
      DisplayWidth = 100
      FieldName = 'tdfidentificacao'
      Size = 100
    end
    object vtprdeprquantiitm: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'eprquantiitm'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vtprdeprquanti: TFloatField
      DisplayLabel = 'Quant. Tot.'
      DisplayWidth = 8
      FieldName = 'eprquanti'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vtprdeprcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'eprcontendo'
    end
    object vtprdunisimbolobase: TStringField
      DisplayLabel = 'Un.Base'
      FieldName = 'unisimbolobase'
      Size = 5
    end
    object vtprdepracumulado: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'epracumulado'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object vtprdeprmultiplicador: TFloatField
      DisplayLabel = 'Multipl.'
      DisplayWidth = 6
      FieldName = 'eprmultiplicador'
    end
    object vtprdtmecodigo: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 5
      FieldName = 'tmecodigo'
      Visible = False
    end
    object vtprdttecodigo: TIntegerField
      FieldName = 'ttecodigo'
      Visible = False
    end
    object vtprdeprcustototal: TFloatField
      DisplayLabel = 'Saldo do Custo'
      FieldName = 'eprcustototal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprdeprmediacusto: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'eprmediacusto'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprdeprcustofinal: TFloatField
      DisplayLabel = 'Custo Final'
      FieldName = 'eprcustofinal'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vtprdsdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object vtprdsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 3
    end
    object vtprditmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vtprdmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
    object vtprditmvalor: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vtprdmesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object vtprdtemidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'temidentificacao'
      Size = 30
    end
    object vtprditmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object vtprditmtotal: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object cls: TUniQuery
    SmartFetch.Enabled = True
    SQL.Strings = (
      
        'select * from cls where usrcodigo=:usrcodigo and clsnomeform=:cl' +
        'snomeform')
    Left = 136
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clsnomeform'
        Value = nil
      end>
    object clsclscodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'clscodigo'
    end
    object clsclsnomeform: TStringField
      FieldName = 'clsnomeform'
      Size = 50
    end
    object clsclslargura: TIntegerField
      FieldName = 'clslargura'
    end
    object clsclsaltura: TIntegerField
      FieldName = 'clsaltura'
    end
    object clsusrcodigo: TIntegerField
      FieldName = 'usrcodigo'
    end
    object clsclsmodo: TIntegerField
      FieldName = 'clsmodo'
    end
    object clsclsrodape: TIntegerField
      FieldName = 'clsrodape'
    end
    object clsclsfiltro: TIntegerField
      FieldName = 'clsfiltro'
    end
    object clsclstopo: TIntegerField
      FieldName = 'clstopo'
    end
    object clsclsesquerda: TIntegerField
      FieldName = 'clsesquerda'
    end
    object clsclspositopo: TIntegerField
      FieldName = 'clspositopo'
    end
    object clsclsposiesquerda: TIntegerField
      FieldName = 'clsposiesquerda'
    end
    object clsclsbotoes: TIntegerField
      FieldName = 'clsbotoes'
    end
    object clsclsselecao: TIntegerField
      FieldName = 'clsselecao'
    end
    object clsclsultimo: TStringField
      FieldName = 'clsultimo'
    end
    object clsclsordem: TIntegerField
      FieldName = 'clsordem'
    end
    object clsclsletra: TIntegerField
      FieldName = 'clsletra'
    end
  end
end
