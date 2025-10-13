inherited fitmvfe: Tfitmvfe
  ActiveControl = cdbarra
  Caption = 'Itens de Venda Fora do Estabelecimento'
  ClientHeight = 311
  ClientWidth = 614
  ExplicitWidth = 630
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 282
    Width = 614
    ExplicitTop = 282
    ExplicitWidth = 614
    inherited bconfirma: TBitBtn
      Left = 460
      ExplicitLeft = 460
    end
    inherited bcancela: TBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited bfechar: TBitBtn
      Left = 395
      ExplicitLeft = 395
    end
  end
  inherited paginas: TPageControl
    Width = 614
    Height = 282
    ExplicitWidth = 614
    ExplicitHeight = 282
    inherited Principal: TTabSheet
      object Label2: TLabel
        Left = 25
        Top = 129
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 25
        Top = 183
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = itmquantidade
      end
      object Label4: TLabel
        Left = 25
        Top = 210
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do Item R$'
        FocusControl = itmvalor
      end
      object Label5: TLabel
        Left = 220
        Top = 210
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto R$'
        FocusControl = itmdesconto
      end
      object Label6: TLabel
        Left = 390
        Top = 210
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total do Item R$'
        FocusControl = itmtotal
      end
      object Label7: TLabel
        Left = 25
        Top = 48
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object Label8: TLabel
        Left = 25
        Top = 75
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CFOP'
        FocusControl = cfocfop
      end
      object Label9: TLabel
        Left = 25
        Top = 156
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Embalagem'
        FocusControl = puncodigo
      end
      object Label1: TLabel
        Left = 25
        Top = 21
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Item'
        FocusControl = itmitem
      end
      object Label10: TLabel
        Left = 25
        Top = 102
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pesquisa*'
        FocusControl = procodigo
      end
      object procodigo: TDBEdit
        Left = 120
        Top = 126
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 4
        OnEnter = procodigoEnter
        OnExit = procodigoExit
      end
      object itmquantidade: TDBEdit
        Left = 120
        Top = 180
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmquantidade'
        DataSource = DSRegistro
        TabOrder = 6
        OnExit = itmquantidadeExit
      end
      object itmvalor: TDBEdit
        Left = 120
        Top = 207
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'itmvalor'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 7
        OnExit = itmvalorExit
      end
      object itmdesconto: TDBEdit
        Left = 287
        Top = 207
        Width = 82
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'itmdesconto'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 8
      end
      object itmtotal: TDBEdit
        Left = 476
        Top = 207
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'itmtotal'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 9
        OnEnter = itmtotalEnter
      end
      object toecodigo: TDBEdit
        Left = 120
        Top = 45
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'toecodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object cfocfop: TDBEdit
        Left = 120
        Top = 72
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfocfop'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object puncodigo: TDBEdit
        Left = 120
        Top = 153
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = puncodigoEnter
        OnExit = puncodigoExit
      end
      object itmitem: TDBEdit
        Left = 120
        Top = 18
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'itmitem'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object PlSaldoDisp: TPanel
        Left = 219
        Top = 176
        Width = 152
        Height = 27
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'Saldo Dispon'#237'vel'
        TabOrder = 10
        Visible = False
        object PlSaldoProduto: TPanel
          AlignWithMargins = True
          Left = 85
          Top = 4
          Width = 65
          Height = 21
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          CustomHint = BalloonHint
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 2
          Caption = '0,0'
          Color = 16767152
          ParentBackground = False
          TabOrder = 0
        end
      end
      object cdbarra: TEdit
        Left = 120
        Top = 99
        Width = 135
        Height = 21
        Hint = 'Digite C'#243'digo, Refer'#234'ncia ou C'#243'digo de Barra do produto.'
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = cdbarraExit
        OnKeyPress = cdbarraKeyPress
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 252
    Top = 72
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfg.cfgcodigo'
      '     , cfgmsai.cfgcontrolaestoquedisp'
      'FROM cfg'
      '  JOIN cfgmsai'
      '    ON cfg.cfgcodigo = cfgmsai.cfgcodigo')
    Left = 428
    Top = 92
    object cfgcfgcontrolaestoquedisp: TIntegerField
      FieldName = 'cfgcontrolaestoquedisp'
    end
  end
  inherited consulta: TUniQuery
    Left = 368
    Top = 36
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , itm.cstcodigo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.toecodigo'
      '     , itm.cfocfop'
      '     , itm.icmcodigo'
      '     , itm.csicodigo'
      '     , itm.cspcodigo'
      '     , itm.csfcodigo'
      '     , itm.pcccodigo'
      '     , itm.itmtotal'
      '     , itm.unicodigo'
      '     , itm.puncodigo'
      '     , itm.itmcontendo'
      '     , itm.cfocfopdestinacao'
      '     , itm.unicodigobase'
      '     , itm.itmcusto'
      'FROM itm'
      'WHERE itm.itmchave = :itmchave')
    Left = 252
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object registroitmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registroitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 150
      Lookup = True
    end
    object registrocstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,###,##0.00000'
      EditFormat = '#,###,##0.00000'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registrotoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 100
      Lookup = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registroicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object registrocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object registrocspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object registrocsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Embalagem'
      FieldName = 'puncodigo'
      Required = True
    end
    object registropunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Size = 30
      Lookup = True
    end
    object registroitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object registrocfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object registrounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object registroitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
  end
  inherited BalloonHint: TBalloonHint
    Top = 224
  end
  inherited acoesfrm: TActionList
    Left = 436
    Top = 36
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      '     , pro.unicodigo'
      '     , pro.prosaldodisp'
      'FROM pro'
      'WHERE pro.tpocodigo IN (0, 4)')
    Left = 196
    Top = 128
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object prounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object proprosaldodisp: TFloatField
      FieldName = 'prosaldodisp'
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      'FROM toe'
      'WHERE toe.ttocodigo = 8')
    Left = 276
    Top = 128
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      'SELECT pun.puncodigo'
      '     , pun.procodigo'
      '     , pun.punidentificacao'
      '     , pun.punprecoav'
      '     , pun.unicodigo'
      '     , pun.punmultiplicador'
      'FROM pun'
      'WHERE pun.tuncodigo IN (1, 9)')
    Left = 236
    Top = 128
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object punpunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , mes.toecodigo'
      '     , toe.toecfopsaida'
      '     , toe.ttecodigo'
      '     , IFNULL((SELECT'
      '           COUNT(i.itmchave) + 1 AS itmitem'
      '         FROM itm i'
      '         WHERE i.meschave = mes.meschave), 1) AS itmitem'
      'FROM mes'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      'WHERE mes.meschave = :meschave')
    Left = 316
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mestoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object mestoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Size = 5
    end
    object mesttecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object mesitmitem: TIntegerField
      FieldName = 'itmitem'
    end
  end
  object itmPro: TUniQuery
    SQL.Strings = (
      'SET @MesChaveAtual := :meschave;'
      'SET @Produto := :procodigo;'
      ''
      'SET @MesChaveVinc := (SELECT'
      
        '    IF(mes.meschave = @MesChaveAtual, mes.meschaverecla, mes.mes' +
        'chave) AS meschave'
      '  FROM mes'
      '  WHERE CASE'
      '    WHEN (SELECT'
      '        m.meschave'
      '      FROM mes m'
      
        '      WHERE m.meschaverecla = @MesChaveAtual) THEN mes.meschaver' +
        'ecla = @MesChaveAtual'
      '    ELSE mes.meschave = @MesChaveAtual'
      '  END);'
      ''
      'SELECT itm.meschave'
      'FROM itm'
      'WHERE itm.meschave IN (@MesChaveAtual, @MesChaveVinc)'
      'AND itm.procodigo = @Produto;')
    Left = 396
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object itmPromeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
end
