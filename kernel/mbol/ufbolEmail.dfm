inherited fbolEmail: TfbolEmail
  Caption = 'Envio de E-mail de Boletos'
  ClientHeight = 527
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 527
    Width = 1008
    Height = 0
    ExplicitTop = 527
    ExplicitWidth = 1008
    ExplicitHeight = 0
    inherited bconfirma: TBitBtn
      Left = 854
      Visible = False
      ExplicitLeft = 854
    end
    inherited bcancela: TBitBtn
      Left = 929
      Visible = False
      ExplicitLeft = 929
    end
    inherited bfechar: TBitBtn
      Left = 789
      Visible = True
      ExplicitLeft = 789
    end
  end
  inherited paginas: TPageControl
    Width = 1008
    Height = 527
    ExplicitWidth = 1008
    ExplicitHeight = 527
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 499
      object btbEnviarTodos: TBitBtn
        Left = 15
        Top = 25
        Width = 145
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Enviar e-mail - Todos'
        TabOrder = 0
        OnClick = btbEnviarTodosClick
      end
      object btbEnviarSelecionado: TBitBtn
        Left = 166
        Top = 25
        Width = 145
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Enviar e-mail - Selecionado'
        TabOrder = 1
        OnClick = btbEnviarSelecionadoClick
      end
      object btbFechar: TBitBtn
        Left = 885
        Top = 25
        Width = 100
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Fechar'
        TabOrder = 2
        OnClick = btbFecharClick
      end
      object PnlCentral: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 56
        Width = 970
        Height = 438
        Margins.Left = 15
        Margins.Top = 56
        Margins.Right = 15
        Margins.Bottom = 5
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object PlParcelas: TPanel
          Left = 0
          Top = 213
          Width = 970
          Height = 225
          CustomHint = BalloonHint
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'Panel1'
          TabOrder = 0
          object PlLabelParcelas: TPanel
            Left = 1
            Top = 1
            Width = 968
            Height = 25
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = 'Parcelas'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object DBGParcela: TDBGrid
            Left = 1
            Top = 26
            Width = 968
            Height = 198
            CustomHint = BalloonHint
            Align = alClient
            Color = clCream
            DataSource = dsBol
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGParcelaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'titcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfichave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivalor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bolnossonumero'
                Width = 150
                Visible = True
              end>
          end
        end
        object PlTitulos: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 970
          Height = 208
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 5
          CustomHint = BalloonHint
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'PlTitulos'
          TabOrder = 1
          object PlLabelTitulos: TPanel
            Left = 1
            Top = 1
            Width = 968
            Height = 25
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = 'T'#237'tulos'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object DBGTitulo: TDBGrid
            Left = 1
            Top = 26
            Width = 968
            Height = 181
            CustomHint = BalloonHint
            Align = alClient
            Color = clCream
            DataSource = dsTit
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGTituloDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'titcodigo'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'gebcodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 340
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'titnumero'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lebmensagem'
                Width = 285
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 876
    Top = 240
  end
  inherited consulta: TUniQuery
    Left = 392
    Top = 604
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT NULL')
    CachedUpdates = True
    Left = 876
    Top = 192
  end
  inherited dcp: TUniQuery
    Left = 128
    Top = 604
  end
  inherited dtb: TUniQuery
    Left = 84
    Top = 604
  end
  inherited coa: TUniQuery
    Left = 48
    Top = 604
  end
  inherited pfr: TUniQuery
    Left = 520
    Top = 636
  end
  inherited psf: TUniQuery
    Left = 560
    Top = 636
  end
  inherited dcl: TUniQuery
    Left = 628
    Top = 648
  end
  inherited cau: TUniQuery
    Left = 296
    Top = 640
  end
  inherited err: TUniQuery
    Left = 256
    Top = 628
  end
  inherited BalloonHint: TBalloonHint
    Left = 740
    Top = 640
  end
  inherited acoesfrm: TActionList
    Left = 820
    Top = 644
  end
  inherited cpg: TUniQuery
    Left = 44
    Top = 664
  end
  inherited cpc: TUniQuery
    Left = 45
    Top = 713
  end
  inherited ImgBusca: TPngImageList
    Left = 884
    Top = 640
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 332
    Top = 644
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT tit.titcodigo'
      '     , tit.titnumero'
      '     , tit.etdcodigo'
      '     , etd.etdidentificacao'
      '     , gbr.gebcodigo'
      '     , leb.lebcodigo'
      '     , leb.lebstatus'
      '     , leb.lebmensagem'
      '  FROM tit'
      ' INNER JOIN rfi ON tit.titcodigo = rfi.titcodigo'
      ' INNER JOIN gbr ON rfi.rfichave = gbr.rfichave'
      ' INNER JOIN etd ON tit.etdcodigo = etd.etdcodigo'
      '  LEFT JOIN (SELECT leb.lebcodigo'
      '                  , leb.gebcodigo'
      '                  , leb.titcodigo'
      '                  , leb.clbcodigo'
      '                  , leb.lebstatus'
      
        '                  , CONCAT(IF(leb.lebstatus = '#39'F'#39', '#39'Falha: '#39', '#39#39 +
        '), leb.lebmensagem, '#39' '#39', DATE_FORMAT(leb.lebregistro, '#39'%d/%c/%Y ' +
        '%H:%i:%s'#39')) lebmensagem'
      '               FROM leb'
      '              INNER JOIN (SELECT MAX(leb.lebcodigo) AS lebcodigo'
      '                            FROM leb'
      '                           GROUP BY leb.gebcodigo'
      '                                  , leb.titcodigo) '
      
        '                         ultLeb ON leb.lebcodigo = ultLeb.lebcod' +
        'igo)'
      '            leb ON tit.titcodigo = leb.titcodigo'
      '               AND gbr.gebcodigo = leb.gebcodigo'
      ' WHERE gbr.gebcodigo = :gebcodigo'
      'and tit.flacodigo=:flacodigo'
      ' GROUP BY tit.titcodigo;'
      '/*'
      'SELECT tit.titcodigo'
      '     , tit.titnumero'
      '     , tit.etdcodigo'
      '     , etd.etdidentificacao'
      '     , gbr.gebcodigo'
      '  FROM tit'
      ' INNER JOIN rfi ON tit.titcodigo = rfi.titcodigo'
      ' INNER JOIN gbr ON rfi.rfichave = gbr.rfichave'
      ' INNER JOIN etd ON tit.etdcodigo = etd.etdcodigo'
      ' WHERE gbr.gebcodigo = :gebcodigo'
      ' GROUP BY tit.titcodigo;'
      ''
      '*/')
    Left = 156
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titcodigo'
    end
    object titgebcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'gebcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
    end
    object titetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'titnumero'
    end
    object titlebcodigo: TIntegerField
      FieldName = 'lebcodigo'
    end
    object titlebstatus: TStringField
      FieldName = 'lebstatus'
      Size = 1
    end
    object titlebmensagem: TStringField
      DisplayLabel = #218'ltimo envio'
      FieldName = 'lebmensagem'
      Size = 300
    end
  end
  object bol: TUniQuery
    SQL.Strings = (
      'SELECT rfi.rfichave'
      '     , rfi.titcodigo'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , bol.bolnossonumero'
      '  FROM rfi'
      ' INNER JOIN bol ON rfi.rfichave = bol.rfichave'
      ' WHERE /*rfi.titcodigo = :titcodigo'
      '   AND */bol.gebcodigo = :gebcodigo;')
    Left = 172
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end>
    object boltitcodigo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titcodigo'
    end
    object bolrfichave: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'rfichave'
    end
    object bolrfinumero: TStringField
      DisplayLabel = 'N'#250'mero Parcela'
      FieldName = 'rfinumero'
    end
    object bolrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object bolrfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object bolbolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
  end
  object dsTit: TUniDataSource
    DataSet = tit
    OnDataChange = dsTitDataChange
    Left = 196
    Top = 192
  end
  object dsBol: TUniDataSource
    DataSet = bol
    Left = 212
    Top = 408
  end
  object tteb: TUniQuery
    SQL.Strings = (
      'CREATE TEMPORARY TABLE IF NOT EXISTS tt_titulos_email_boleto ('
      '    titcodigo int(11) COMMENT '#39'C'#243'digo do T'#237'tulo'#39
      '  , etdcodigo int(11) COMMENT '#39'C'#243'digo do Cliente'#39
      
        '  ) COMMENT '#39'Tabela tempor'#225'ria de T'#237'tulos para envio de e-mail.'#39 +
        ';'
      ''
      'SELECT tteb.titcodigo'
      '     , tteb.etdcodigo'
      '  FROM tt_titulos_email_boleto tteb;')
    CachedUpdates = True
    Left = 324
    Top = 224
    object ttebtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object ttebetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
