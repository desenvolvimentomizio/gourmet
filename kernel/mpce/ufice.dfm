inherited fice: Tfice
  ActiveControl = edBarra
  Caption = 'Contagem de Estoque'
  ClientHeight = 584
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 551
    ExplicitTop = 551
    inherited psituacao: TPanel
      ExplicitHeight = 22
    end
    inherited bconfirma: TBitBtn
      ExplicitLeft = 617
      ExplicitHeight = 22
    end
    inherited bcancela: TBitBtn
      Visible = False
      ExplicitLeft = 703
      ExplicitHeight = 22
    end
    inherited bfechar: TBitBtn
      Visible = True
      ExplicitLeft = 531
      ExplicitHeight = 22
    end
  end
  inherited paginas: TPageControl
    Height = 548
    ExplicitHeight = 548
    inherited Principal: TTabSheet
      ExplicitHeight = 520
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = icechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 107
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade Contada'
        FocusControl = icequantidade
      end
      object unisimbolo: TDBText
        Left = 243
        Top = 107
        Width = 65
        Height = 17
        CustomHint = BalloonHint
        DataField = 'unisimbolo'
        DataSource = DSRegistro
      end
      object Label4: TLabel
        Left = 8
        Top = 69
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Localiza'#231#227'o'
        FocusControl = icequantidade
      end
      object icechave: TDBEdit
        Left = 132
        Top = 3
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'icechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 132
        Top = 30
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = procodigoExit
      end
      object icequantidade: TDBEdit
        Left = 132
        Top = 104
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'icequantidade'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = icequantidadeExit
      end
      object edBarra: TEdit
        Left = 132
        Top = 30
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        Color = 16777088
        TabOrder = 2
        OnExit = edBarraExit
        OnKeyPress = edBarraKeyPress
      end
      object iceorigem: TDBRadioGroup
        Left = 132
        Top = 56
        Width = 253
        Height = 32
        CustomHint = BalloonHint
        Columns = 2
        DataField = 'iceorigem'
        DataSource = DSRegistro
        Items.Strings = (
          #193'rea de Venda'
          'Dep'#243'sito')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
      end
      object DBGIce: TDBGrid
        Left = 0
        Top = 144
        Width = 788
        Height = 376
        CustomHint = BalloonHint
        Align = alBottom
        DataSource = DSice
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'icechave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'procodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pronome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'icequantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unisimbolo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'icedatahoraregistro'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clbidentificacao'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iceorigem'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 332
    Top = 96
  end
  inherited consulta: TUniQuery
    Left = 488
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  icechave,'
      '  pcechave,'
      '  icedatahoraregistro,'
      '  procodigo,'
      '  puncodigo,'
      '  icequantidade,'
      '  clbcodigo,'
      '  iceorigem'
      ''
      'FROM ice where icechave=:icechave')
    Left = 652
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'icechave'
        Value = nil
      end>
    object registroicechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'icechave'
    end
    object registropcechave: TIntegerField
      FieldName = 'pcechave'
    end
    object registroicedatahoraregistro: TDateTimeField
      FieldName = 'icedatahoraregistro'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
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
      Size = 60
      Lookup = True
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'puncodigo'
      Visible = False
    end
    object registrounisimbolo: TStringField
      FieldKind = fkLookup
      FieldName = 'unisimbolo'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'unisimbolo'
      KeyFields = 'puncodigo'
      Visible = False
      Size = 5
      Lookup = True
    end
    object registroicequantidade: TFloatField
      DisplayLabel = 'Quantidade Contada'
      FieldName = 'icequantidade'
      Required = True
      MaxValue = 99999.000000000000000000
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroiceorigem: TIntegerField
      FieldName = 'iceorigem'
    end
  end
  inherited pfr: TUniQuery
    Left = 656
    Top = 44
  end
  inherited dcl: TUniQuery
    Left = 516
    Top = 248
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 596
    Top = 48
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 80
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      
        'select puncodigo, unisimbolo from pun, uni where pun.unicodigo=u' +
        'ni.unicodigo')
    Left = 452
    Top = 24
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object pununisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
  end
  object Dpun: TDataSource
    DataSet = pun
    Left = 524
    Top = 32
  end
  object ice: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ice.icechave,'
      '  ice.pcechave,'
      '  ice.icedatahoraregistro,'
      '  ice.procodigo,'
      '  ice.puncodigo,'
      '  ice.icequantidade,'
      '  ice.clbcodigo,'
      '  uni.unisimbolo,'
      '  pro.pronome,'
      '  if(iceorigem=1,'#39#193'rea de Venda'#39','#39'Dep'#243'sito'#39') iceorigem,'
      'clb.clbidentificacao'
      'FROM ice'
      '  INNER JOIN pun'
      '    ON ice.puncodigo = pun.puncodigo'
      '  INNER JOIN uni'
      '    ON uni.unicodigo = pun.unicodigo'
      '  INNER JOIN pro'
      '    ON ice.procodigo = pro.procodigo'
      '  INNER JOIN clb'
      '    ON ice.clbcodigo = clb.clbcodigo'
      ''
      ''
      'where ice.pcechave=:pcechave'
      'order by icechave desc')
    Left = 576
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcechave'
        Value = nil
      end>
    object iceicechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'icechave'
    end
    object iceprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object icepronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do produto'
      FieldName = 'pronome'
      Size = 60
    end
    object iceicequantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'icequantidade'
    end
    object iceunisimbolo: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object icepcechave: TIntegerField
      FieldName = 'pcechave'
    end
    object iceicedatahoraregistro: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'icedatahoraregistro'
    end
    object iceclbidentificacao: TStringField
      DisplayLabel = 'Registrado por'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object iceiceorigem: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'iceorigem'
      Size = 30
    end
  end
  object DSice: TDataSource
    DataSet = ice
    Left = 624
    Top = 428
  end
end
