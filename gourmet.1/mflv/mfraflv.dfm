inherited fraflv: Tfraflv
  Width = 1581
  Height = 846
  ExplicitWidth = 1581
  ExplicitHeight = 846
  inherited PlGeral: TPanel
    Width = 1581
    Height = 846
    ExplicitWidth = 1581
    ExplicitHeight = 846
    inherited SplBotoes: TSplitter
      Height = 826
      ExplicitHeight = 826
    end
    inherited PlBotoes: TPanel
      Height = 826
      ExplicitHeight = 826
      inherited ImageLogoBase: TImage
        Top = 747
        ExplicitTop = 747
      end
      inherited PlInfo: TPanel
        Top = 808
        ExplicitTop = 808
      end
      inherited SBBotoes: TScrollBox
        Height = 747
        ExplicitHeight = 747
      end
    end
    inherited PlLista: TPanel
      Width = 1437
      Height = 826
      ExplicitWidth = 1437
      ExplicitHeight = 826
      inherited SplLista: TSplitter
        Top = 796
        Width = 1437
        ExplicitLeft = -16
        ExplicitTop = 417
        ExplicitWidth = 1437
      end
      inherited SpFilter: TSplitter
        Width = 1437
        ExplicitWidth = 1266
      end
      inherited PlRodaPe: TPanel
        Top = 801
        Width = 1437
        Height = 25
        ExplicitTop = 801
        ExplicitWidth = 1437
        ExplicitHeight = 25
      end
      inherited PlFiltros: TPanel
        Width = 1437
        ExplicitWidth = 1437
      end
      inherited PlSelecao: TPanel
        Width = 1437
        ExplicitWidth = 1437
        inherited GBPlSelecao: TGroupBox
          Width = 1433
          ExplicitWidth = 1433
          inherited DBLista: TDBGrid
            Width = 1326
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1437
        Height = 667
        Caption = ''
        ExplicitWidth = 1437
        ExplicitHeight = 667
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 381
          Width = 1437
          Height = 8
          Cursor = crVSplit
          Align = alBottom
          Color = clGray
          ParentColor = False
          ExplicitTop = 384
        end
        inherited PnlRodapeGrid: TPanel [1]
          Top = 389
          Width = 1437
          Height = 278
          TabOrder = 0
          Visible = True
          ExplicitTop = 389
          ExplicitWidth = 1437
          ExplicitHeight = 278
          object DBMes: TDBGrid
            Left = 1
            Top = 21
            Width = 592
            Height = 256
            Align = alLeft
            BorderStyle = bsNone
            Color = 16772055
            DataSource = DSmes
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'mesregistro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'diasemana'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesvalor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mestotalcancelado'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesdescontos'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'doacoes'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mestotal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mestotalnf'
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 1
            Top = 1
            Width = 1435
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 4
            Caption = 'Detalhe do mes selecionado'
            TabOrder = 1
          end
          object Panel2: TPanel
            Left = 593
            Top = 21
            Width = 251
            Height = 256
            Align = alLeft
            Color = clSilver
            ParentBackground = False
            TabOrder = 2
            object Label1: TLabel
              Left = 6
              Top = 195
              Width = 51
              Height = 13
              Caption = 'Maior Item'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 6
              Top = 168
              Width = 103
              Height = 13
              Caption = 'Valor m'#233'dio dos Itens'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 6
              Top = 33
              Width = 109
              Height = 13
              Caption = 'Quantidade de Vendas'
              FocusControl = DBEdit3
            end
            object Label4: TLabel
              Left = 6
              Top = 60
              Width = 113
              Height = 13
              Caption = 'Valor m'#233'dio das Vendas'
              FocusControl = DBEdit4
            end
            object Label5: TLabel
              Left = 6
              Top = 142
              Width = 99
              Height = 13
              Caption = 'Quantidade de Itens'
              FocusControl = DBEdit5
            end
            object Label6: TLabel
              Left = 6
              Top = 87
              Width = 74
              Height = 13
              Caption = 'Maior Desconto'
              FocusControl = DBEdit6
            end
            object Label7: TLabel
              Left = 6
              Top = 114
              Width = 76
              Height = 13
              Caption = 'Desconto M'#233'dio'
              FocusControl = DBEdit7
            end
            object DBEdit1: TDBEdit
              Left = 136
              Top = 192
              Width = 73
              Height = 21
              DataField = 'MAXitmtotal'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 136
              Top = 165
              Width = 73
              Height = 21
              DataField = 'AVGitmtotal'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 136
              Top = 30
              Width = 49
              Height = 21
              DataField = 'quantivendas'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 136
              Top = 57
              Width = 73
              Height = 21
              DataField = 'vendamedia'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 137
              Top = 138
              Width = 56
              Height = 21
              DataField = 'COUNTitmchave'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 136
              Top = 84
              Width = 73
              Height = 21
              DataField = 'MAXitmdesconto'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 136
              Top = 111
              Width = 73
              Height = 21
              DataField = 'AVGitmdesconto'
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 6
            end
            object Panel3: TPanel
              Left = 1
              Top = 141
              Width = 249
              Height = 23
              Align = alBottom
              Alignment = taLeftJustify
              BorderWidth = 2
              Caption = 'Resumo por Colaborador do dia:'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 7
            end
            object DBMesClb: TDBGrid
              Left = 1
              Top = 164
              Width = 249
              Height = 91
              Align = alBottom
              Color = clSilver
              DataSource = DSmesclb
              DrawingStyle = gdsGradient
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 8
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'clbidentificacao'
                  Title.Caption = 'Nome'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'mestotal'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'mesdescontos'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'mestotalcancelado'
                  Title.Caption = 'Canc. R$'
                  Width = 50
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 249
              Height = 23
              Align = alTop
              Alignment = taLeftJustify
              BorderWidth = 2
              Caption = 'An'#225'lise das vendas do dia:'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 9
            end
          end
          object DBChart1: TDBChart
            Left = 844
            Top = 21
            Width = 397
            Height = 256
            BackWall.Pen.Visible = False
            BottomWall.Brush.Gradient.EndColor = clSilver
            BottomWall.Brush.Gradient.StartColor = clGray
            BottomWall.Brush.Gradient.Visible = True
            BottomWall.Pen.Color = clGray
            BottomWall.Size = 4
            Gradient.Direction = gdFromTopLeft
            Gradient.EndColor = clWhite
            Gradient.StartColor = clSilver
            Gradient.Visible = True
            LeftWall.Brush.Gradient.EndColor = clSilver
            LeftWall.Brush.Gradient.StartColor = clGray
            LeftWall.Brush.Gradient.Visible = True
            LeftWall.Color = clWhite
            LeftWall.Pen.Color = clGray
            LeftWall.Size = 4
            MarginLeft = 4
            MarginRight = 4
            Title.Text.Strings = (
              'An'#225'lise de Tickets por Hor'#225'rio')
            BottomAxis.Grid.Color = 14540253
            BottomAxis.LabelsFormat.Font.Color = clGray
            BottomAxis.LabelsFormat.Font.Height = -9
            BottomAxis.LabelStyle = talValue
            Frame.Visible = False
            LeftAxis.Grid.Color = 14540253
            LeftAxis.LabelsFormat.Font.Color = clGray
            LeftAxis.LabelsFormat.Font.Height = -9
            LeftAxis.LabelStyle = talValue
            LeftAxis.Title.Caption = 'Quantidade de Tickets'
            RightAxis.AxisValuesFormat = '##0.## %'
            Zoom.Animated = True
            Align = alLeft
            BevelWidth = 2
            Color = clWhite
            TabOrder = 3
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TBarSeries
              Legend.Text = 'Vendas x Hor'#225'rio'
              LegendTitle = 'Vendas x Hor'#225'rio'
              Marks.Visible = False
              Marks.Style = smsValue
              DataSource = fluxohoras
              XLabelsSource = 'intervalo'
              MultiBar = mbNone
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'intervalo'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'ltequantidade'
            end
          end
        end
        inherited plSugestao: TPanel [2]
          TabOrder = 1
        end
        object plResumoModalidades: TPanel [3]
          Left = 593
          Top = 0
          Width = 251
          Height = 381
          Align = alLeft
          TabOrder = 2
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 249
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = 'Resumo Finalizadores de Vendas:'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object DBResumoModalidades: TDBGrid
            Left = 1
            Top = 21
            Width = 249
            Height = 156
            Align = alTop
            Color = clCream
            DataSource = DSTotaisDtls
            DrawingStyle = gdsGradient
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'mdaidentificacao'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtlvalor'
                Width = 90
                Visible = True
              end>
          end
          object Panel6: TPanel
            Left = 1
            Top = 232
            Width = 249
            Height = 20
            Align = alBottom
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = 'Resumo de Recebimentos:'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
          object plTotaisVendas: TPanel
            Left = 1
            Top = 177
            Width = 249
            Height = 20
            Align = alTop
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = '0,00'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
          end
          object DBGridGeralRFI: TDBGrid
            Left = 1
            Top = 252
            Width = 249
            Height = 108
            Align = alBottom
            Color = 13107080
            DataSource = Darfigeral
            DrawingStyle = gdsGradient
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'rfimodalidade'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'baixa'
                Width = 70
                Visible = True
              end>
          end
          object pltotalgeral: TPanel
            Left = 1
            Top = 360
            Width = 249
            Height = 20
            Align = alBottom
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = '0,00'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object DBChart2: TDBChart [4]
          Left = 844
          Top = 0
          Width = 397
          Height = 381
          BackWall.Pen.Visible = False
          BottomWall.Brush.Gradient.EndColor = clSilver
          BottomWall.Brush.Gradient.StartColor = clGray
          BottomWall.Brush.Gradient.Visible = True
          BottomWall.Pen.Color = clGray
          BottomWall.Size = 4
          Gradient.Direction = gdFromTopLeft
          Gradient.EndColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.Brush.Gradient.EndColor = clSilver
          LeftWall.Brush.Gradient.StartColor = clGray
          LeftWall.Brush.Gradient.Visible = True
          LeftWall.Color = clWhite
          LeftWall.Pen.Color = clGray
          LeftWall.Size = 4
          MarginLeft = 4
          MarginRight = 4
          Title.Text.Strings = (
            'Quantidade de Tickets por Mes')
          BottomAxis.AxisValuesFormat = '#,#0.##'
          BottomAxis.Grid.Color = 14540253
          BottomAxis.LabelsFormat.Font.Color = clGray
          BottomAxis.LabelsFormat.Font.Height = -9
          BottomAxis.LabelStyle = talValue
          Frame.Visible = False
          LeftAxis.Grid.Color = 14540253
          LeftAxis.LabelsFormat.Font.Color = clGray
          LeftAxis.LabelsFormat.Font.Height = -9
          LeftAxis.LabelStyle = talValue
          LeftAxis.Title.Caption = 'Quantidade de Tickets'
          RightAxis.AxisValuesFormat = '##0.## %'
          Zoom.Animated = True
          Align = alLeft
          BevelWidth = 2
          Color = clWhite
          TabOrder = 3
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            18
            15
            18)
          ColorPaletteIndex = 13
          object Series2: TBarSeries
            Marks.Visible = False
            DataSource = uqtabela
            ValueFormat = '0'
            XLabelsSource = 'periodoregistro'
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'anomes'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'quantivendas'
          end
        end
        inherited DBGLista: TDBGrid [5]
          Width = 593
          Height = 381
          Align = alLeft
          TabOrder = 4
          Columns = <
            item
              Expanded = False
              FieldName = 'mesregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotalcancelado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesdescontos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotalnf'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantivendas'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1581
      ExplicitWidth = 1581
      inherited plid: TPanel
        Left = 1156
        ExplicitLeft = 1156
      end
      inherited PlSair: TPanel
        Left = 1375
        ExplicitLeft = 1375
      end
    end
  end
  inherited acoes: TActionList
    Left = 708
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SET lc_time_names = '#39'pt_BR'#39'; '
      ' '
      ' '
      
        'SELECT concat(year(mes.mesregistro),'#39' - '#39',   LPAD( month(mes.mes' +
        'registro),2,0) ) as mesregistro '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesvalor, 0))+' +
        ' SUM(IF(mes.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0))     AS' +
        ' mesvalor '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesdesconto, 0' +
        ')) AS mesdescontos '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mestotal, 0)) ' +
        '   AS mestotal '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0)) ' +
        '   AS mestotalcancelado '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), mes.mesprodutos, 0' +
        '))    AS mestotalprodutos '
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), mes.messervicos, 0' +
        '))    AS mestotalservicos '
      
        '     , SUM(IF((mes.sdecodigo IN ('#39'00'#39', '#39'01'#39')) AND (mes.tdfcodigo' +
        ' IN ('#39'2D'#39', '#39'55'#39', '#39'65'#39')) AND (mes.temcodigo IN (5, 9)), mes.mespr' +
        'odutos, 0))         AS mestotalnf '
      '     , LAST_DAY(mes.mesregistro) ultimodia '
      
        '     , CAST(DATE_FORMAT(mes.mesregistro ,'#39'%Y-%m-01'#39') as DATE) pr' +
        'imeirodia '
      '     , COUNT(mes.meschave) AS quantivendas '
      
        '     ,concat(year(mes.mesregistro),  LPAD( month(mes.mesregistro' +
        '),2,0)) as mesregistro '
      
        '     ,concat(year(mes.mesregistro), '#39' '#39' , MONTHNAME(mes.mesregis' +
        'tro)) as periodoregistro '
      
        '     ,CONVERT(SUBSTRING(concat(year(mes.mesregistro),  LPAD( mon' +
        'th(mes.mesregistro),2,0) ), 1,6), SIGNED INTEGER) as anomes '
      ' '
      '  FROM mes '
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN clb         ON mes.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo = c2.clbcodigo'
      '  JOIN trm        ON mes.trmcodigo = trm.trmcodigo'
      ''
      ''
      ' '
      ' /* JOIN rfm '
      '    ON rfm.meschave = mes.meschave '
      '  JOIN mfi '
      '    ON rfm.rfichave = mfi.rfichave AND mfi.tmfcodigo=2 '
      '  JOIN mlt '
      '    ON mfi.mfichave = mlt.mfichave '
      '  JOIN lte '
      '    ON mlt.ltechave = lte.ltechave '
      '  JOIN cta '
      '    ON lte.ctacodigo = cta.ctacodigo  */'
      ' '
      ' '
      ''
      
        '   LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.fla' +
        'codigo=mes.flacodigo '
      
        '  WHERE toe.ttecodigo IN (1, 9) and mes.flacodigo=:flacodigo gro' +
        'up by CONVERT(SUBSTRING(concat(year(mes.mesregistro),  LPAD( mon' +
        'th(mes.mesregistro),2,0) ), 1,6), SIGNED INTEGER)'
      ' '
      ' '
      ''
      ' -- Filtros'
      ''
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelamesvalor: TFloatField
      DisplayLabel = 'Venda Bruta R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotal: TFloatField
      DisplayLabel = 'Total Liquido R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotalcancelado: TFloatField
      DisplayLabel = 'Cencelamentos R$'
      FieldName = 'mestotalcancelado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotalnf: TFloatField
      DisplayLabel = 'Emiss'#245'es Fiscais R$'
      FieldName = 'mestotalnf'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesdescontos: TFloatField
      DisplayLabel = 'Descontos R$'
      FieldName = 'mesdescontos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesregistro: TStringField
      DisplayLabel = 'Mes'
      FieldName = 'mesregistro'
      Size = 10
    end
    object uqtabelaprimeirodia: TDateField
      DisplayLabel = 'Primeiro Dia'
      FieldName = 'primeirodia'
    end
    object uqtabelaultimodia: TDateField
      DisplayLabel = 'Ultimo Dia'
      FieldName = 'ultimodia'
    end
    object uqtabelaquantivendas: TIntegerField
      DisplayLabel = 'Qtd.Vendas'
      FieldName = 'quantivendas'
    end
    object uqtabelaanomes: TIntegerField
      FieldName = 'anomes'
    end
    object uqtabelaperiodoregistro: TStringField
      FieldName = 'periodoregistro'
      Size = 50
    end
  end
  inherited cpg: TUniQuery
    Left = 444
    Top = 344
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited fmd: TUniQuery
    Left = 600
    Top = 195
  end
  inherited Dfmd: TDataSource
    Left = 552
    Top = 195
  end
  inherited ColorDialog: TColorDialog
    Left = 1056
    Top = 429
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800880010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object mes: TUniQuery
    SQL.Strings = (
      'set @datainicial=:datainicial;'
      'set @datafinal=:datafinal;'
      'set @flacodigo=:flacodigo;'
      ''
      ''
      ' '
      ''
      'SELECT  m.mesemissao as mesregistro'
      '     ,  DAYNAME(m.mesemissao) as diasemana'
      
        '     , SUM(IF(m.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), m.mesvalor, 0))+ SUM' +
        '(IF(m.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), m.mestotal, 0))     AS mesvalo' +
        'r'
      
        '     , SUM(IF(m.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), m.mesdesconto, 0)) A' +
        'S mesdescontos'
      ''
      '     , SUM(IF(m.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), m.mestotal, 0) )-'
      ''
      '('
      'SELECT'
      '  sum(dtl.dtlvalor) as dtlvalor'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo -- AND mfi.tmfcodigo=2'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo '
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo    '
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave '
      '    AND mes.flacodigo = lte.flacodigo'
      ''
      ''
      ''
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '    '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '  '
      '  '
      
        'WHERE rfi.tfdcodigo IN (32) and mes.tdfcodigo<>'#39'RF'#39' AND mes.sdec' +
        'odigo<>'#39'02'#39
      
        'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) and ' +
        'mes.flacodigo=@flacodigo'
      ''
      'and mda.mdacodigo=16 and mesreclassicacao<>9 '
      'and mesemissao=m.mesemissao'
      ')    AS mestotal'
      ''
      
        '     , SUM(IF(m.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), m.mestotal, 0))    A' +
        'S mestotalcancelado'
      
        '     , SUM(IF(m.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), m.mesprodutos, 0))  ' +
        '  AS mestotalprodutos'
      
        '     , SUM(IF(m.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), m.messervicos, 0))  ' +
        '  AS mestotalservicos'
      ''
      ''
      
        '    , (SELECT SUM(mesprodutos)   from mes,toe WHERE toe.toecodig' +
        'o=mes.toecodigo and mes.sdecodigo IN ('#39'00'#39', '#39'01'#39') '
      '          AND mes.tdfcodigo IN ('#39'2D'#39', '#39'55'#39', '#39'65'#39')'
      '          AND mes.temcodigo IN (5, 9) '
      
        '          AND (toe.ttecodigo IN (1) and toe.ttocodigo<>10 and to' +
        'e.ttocodigo<>8) AND flacodigo=@flacodigo'
      '          and mesemissao= m.mesemissao)  AS mestotalnf'
      ''
      ''
      ',('
      'SELECT'
      '  sum(dtl.dtlvalor) as dtlvalor'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo -- AND mfi.tmfcodigo=2'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo '
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo    '
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave '
      '    AND mes.flacodigo = lte.flacodigo'
      ''
      ''
      ''
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '    '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '  '
      '  '
      
        'WHERE rfi.tfdcodigo IN (32) and mes.tdfcodigo<>'#39'RF'#39' AND mes.sdec' +
        'odigo<>'#39'02'#39
      
        'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) and ' +
        'mes.flacodigo=@flacodigo'
      ''
      'and mda.mdacodigo=16 and mesreclassicacao<>9 '
      'and mesemissao=m.mesemissao'
      ') doacoes'
      '  '
      ' '
      ''
      '  FROM mes m'
      '  JOIN etd         ON m.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON m.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON m.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON m.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON m.temcodigo = tem.temcodigo'
      '  JOIN fla         ON m.flacodigo = fla.flacodigo'
      '  JOIN clb         ON m.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c1  ON m.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON m.clbcodigo = c2.clbcodigo'
      '  JOIN trm        ON m.trmcodigo = trm.trmcodigo'
      ''
      ''
      ''
      ''
      ''
      ''
      
        '  LEFT JOIN mor   ON m.meschave = mor.meschave and mor.flacodigo' +
        '=:flacodigo'
      ''
      ''
      ''
      ''
      
        ' WHERE (toe.ttecodigo IN (1) and toe.ttocodigo<>10 and toe.ttoco' +
        'digo<>8) AND m.flacodigo=@flacodigo'
      'and mesemissao BETWEEN @datainicial and @datafinal'
      ''
      ' group by m.mesemissao')
    Left = 584
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object mesmesvalor: TFloatField
      DisplayLabel = 'Venda Bruta R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmestotal: TFloatField
      DisplayLabel = 'Total Liquido R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmestotalcancelado: TFloatField
      DisplayLabel = 'Cencelamentos R$'
      FieldName = 'mestotalcancelado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmestotalnf: TFloatField
      DisplayLabel = 'Emiss'#245'es Fiscais R$'
      FieldName = 'mestotalnf'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesdescontos: TFloatField
      DisplayLabel = 'Descontos R$'
      FieldName = 'mesdescontos'
    end
    object mesmesregistro: TDateField
      DisplayLabel = 'Dia'
      FieldName = 'mesregistro'
    end
    object mesdiasemana: TStringField
      DisplayLabel = 'Dia'
      FieldName = 'diasemana'
      Size = 30
    end
    object mesdoacoes: TFloatField
      DisplayLabel = 'Doa'#231#245'es R$'
      FieldName = 'doacoes'
    end
  end
  object DSmes: TUniDataSource
    DataSet = mes
    OnDataChange = DSmesDataChange
    Left = 616
    Top = 468
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  MAX(itmtotal)  MAXitmtotal,'
      '  AVG(itmtotal) AVGitmtotal,'
      '  MAX(itmdesconto) MAXitmdesconto,'
      '  AVG(itmdesconto) AVGitmdesconto,'
      '  COUNT(itmchave) COUNTitmchave,'
      '  mesregistro,'
      '  COUNT(mes.meschave) itens,'
      '  (SELECT'
      '      COUNT(*)'
      '    FROM mes m'
      '    WHERE m.mesregistro = mes.mesregistro'
      '    GROUP BY mesregistro) AS quantivendas,'
      '  (SELECT'
      '      AVG(m.mestotal)'
      '    FROM mes m'
      '    WHERE m.mesregistro = mes.mesregistro'
      '    GROUP BY mesregistro) AS vendamedia'
      ''
      'FROM mes'
      '  JOIN itm'
      '    ON mes.meschave = itm.meschave'
      '  JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde'
      '    ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf'
      '    ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      '  JOIN tem'
      '    ON mes.temcodigo = tem.temcodigo'
      '  JOIN clb'
      '    ON mes.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c1'
      '    ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2'
      '    ON mes.clbcodigo = c2.clbcodigo'
      '  JOIN trm t3'
      '    ON mes.trmcodigo = t3.trmcodigo'
      '  JOIN rfm'
      '    ON rfm.meschave = mes.meschave'
      '  JOIN mfi'
      '    ON rfm.rfichave = mfi.rfichave'
      '  JOIN mlt'
      '    ON mfi.mfichave = mlt.mfichave'
      '  JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      '  JOIN clt'
      '    ON lte.ltechave = clt.ltechave'
      '  JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      '  JOIN cta'
      '    ON cco.ctacodigo = cta.ctacodigo'
      ''
      ''
      ''
      '  LEFT JOIN mor m1'
      '    ON mes.meschave = m1.meschave'
      '    AND m1.flacodigo = mes.flacodigo'
      'where mes.mesregistro=:mesregistro'
      'GROUP BY mes.mesregistro')
    Left = 488
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mesregistro'
        Value = nil
      end>
    object itmMAXitmtotal: TFloatField
      DisplayLabel = 'Maior Item'
      FieldName = 'MAXitmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmAVGitmtotal: TFloatField
      DisplayLabel = 'M'#233'dia dos Itens'
      FieldName = 'AVGitmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmMAXitmdesconto: TFloatField
      DisplayLabel = 'Maior Desconto'
      FieldName = 'MAXitmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmAVGitmdesconto: TFloatField
      DisplayLabel = 'Desconto M'#233'dio'
      FieldName = 'AVGitmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmCOUNTitmchave: TIntegerField
      DisplayLabel = 'Quantidade de Itens'
      FieldName = 'COUNTitmchave'
    end
    object itmmesregistro: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mesregistro'
    end
    object itmquantivendas: TIntegerField
      DisplayLabel = 'Quantidade de Vendas'
      FieldName = 'quantivendas'
    end
    object itmvendamedia: TFloatField
      DisplayLabel = 'Valor m'#233'dio das Vendas'
      FieldName = 'vendamedia'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = itm
    Left = 672
    Top = 328
  end
  object TotaisDtls: TVirtualTable
    Left = 774
    Top = 212
    Data = {04000000000000000000}
    object TotaisDtlsmdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 35
    end
    object TotaisDtlsdtlvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TotaisDtlsmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object DSTotaisDtls: TDataSource
    DataSet = TotaisDtls
    Left = 822
    Top = 191
  end
  object uqDtlConvenios: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  '#39'Conv'#234'nio'#39' AS mdaidentificacao,'
      '  SUM(rfivalor) AS dtlvalor,'
      '  7 as mdacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo and mes.sdecodigo<>'#39'02'#39
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo '
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave AND mfi.tmfcodigo=2'
      '    AND mfi.flacodigo = mes.flacodigo'
      '   JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '   JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '   JOIN clb         ON mes.clbcodigo   = clb.clbcodigo   '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '   '
      '   '
      'WHERE (rfi.tfdcodigo IN (2) aND mes.flacodigo=:flacodigo'
      'AND mfi.tmfcodigo=2 and'
      '  rfi.etdcodigo<>0 AND rfi.tfdcodigo=2 and rfi.tficodigo=10)'
      'and mes.mesemissao between :dataInicial and :dataFinal'
      ''
      ' -- Filtros')
    Left = 1070
    Top = 527
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dataInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dataFinal'
        Value = nil
      end>
  end
  object uqDtlTotais: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mda.mdaidentificacao,'
      '  sum(dtl.dtlvalor) as dtlvalor,'
      '  mda.mdacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo -- AND mfi.tmfcodigo=2'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo '
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo    '
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave '
      '    AND mes.flacodigo = lte.flacodigo'
      ''
      ''
      ''
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '    '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '  '
      '  '
      
        'WHERE rfi.tfdcodigo IN (32) and mes.tdfcodigo<>'#39'RF'#39' AND mes.sdec' +
        'odigo<>'#39'02'#39
      
        'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) and ' +
        'mes.flacodigo=:flacodigo'
      'and mda.mdacodigo<>7 and mesreclassicacao<>9 '
      'and mes.mesemissao between :dataInicial and :dataFinal'
      ' -- Filtros'
      '')
    Left = 1054
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dataInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dataFinal'
        Value = nil
      end>
  end
  object uqTotais: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesvalor, 0)) ' +
        '   AS mesvalor'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesdesconto, 0' +
        ')) AS mesdeconto'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mestotal, 0)) ' +
        '   AS mestotal'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0)) ' +
        '   AS mestotalcancelado'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), mes.mesprodutos, 0' +
        '))    AS mestotalprodutos'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'03'#39'), mes.messervicos, 0' +
        '))    AS mestotalservicos'
      '     , SUM(IF((mes.sdecodigo IN ('#39'00'#39', '#39'01'#39')) '
      '          AND (mes.tdfcodigo IN ('#39'2D'#39', '#39'55'#39', '#39'65'#39'))'
      
        '          AND (mes.temcodigo IN (5, 9)), mes.mesprodutos, 0))   ' +
        '      AS mestotalnf'
      ''
      '     , SUM(IF((mes.sdecodigo IN ('#39'00'#39', '#39'01'#39')) '
      '          AND (mes.tdfcodigo IN ('#39'RF'#39'))'
      '         , mes.mesprodutos, 0))         AS mesrfaturado'
      ''
      '  FROM mes '
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo   = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo   = toe.toecodigo'
      '  JOIN tem        ON mes.temcodigo   = tem.temcodigo'
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo'
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      
        ' WHERE mesreclassicacao<>9 and toe.ttecodigo IN (1, 9)  and toe.' +
        'ttocodigo IN (2, 9) and mes.flacodigo=:flacodigo'
      ' -- Filtros')
    BeforeOpen = uqTotaisBeforeOpen
    Left = 1392
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqTotaismesvalor: TFloatField
      FieldName = 'mesvalor'
    end
    object uqTotaismesdeconto: TFloatField
      FieldName = 'mesdeconto'
    end
    object uqTotaismestotal: TFloatField
      FieldName = 'mestotal'
    end
    object uqTotaismestotalcancelado: TFloatField
      FieldName = 'mestotalcancelado'
    end
    object uqTotaismestotalnf: TFloatField
      FieldName = 'mestotalnf'
    end
    object uqTotaismestotalprodutos: TFloatField
      FieldName = 'mestotalprodutos'
    end
    object uqTotaismestotalservicos: TFloatField
      FieldName = 'mestotalservicos'
    end
    object uqTotaismesrfaturado: TFloatField
      FieldName = 'mesrfaturado'
    end
  end
  object mesclb: TUniQuery
    SQL.Strings = (
      ''
      'SELECT'
      '  mes.mesregistro,'
      '  mes.clbcodigo,'
      '  DAYNAME(mes.mesregistro) AS diasemana,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'00'#39', '#39'01'#39'), mes.mesvalor, 0)) + SUM(' +
        'IF(mes.sdecodigo IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0)) AS mesvalor,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'00'#39', '#39'01'#39'), mes.mesdesconto, 0)) AS ' +
        'mesdescontos,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'00'#39', '#39'01'#39'), mes.mestotal, 0)) AS mes' +
        'total,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0)) AS mes' +
        'totalcancelado,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'00'#39', '#39'03'#39'), mes.mesprodutos, 0)) AS ' +
        'mestotalprodutos,'
      
        '  SUM(IF(mes.sdecodigo IN ('#39'00'#39', '#39'03'#39'), mes.messervicos, 0)) AS ' +
        'mestotalservicos,'
      '  (SELECT'
      '      clbidentificacao'
      '    FROM clb'
      '    WHERE mes.clbcodigo = clb.clbcodigo) AS clbidentificacao'
      'FROM mes'
      '  JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde'
      '    ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf'
      '    ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      '  JOIN tem'
      '    ON mes.temcodigo = tem.temcodigo'
      '  JOIN clb'
      '    ON mes.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c1'
      '    ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2'
      '    ON mes.clbcodigo = c2.clbcodigo'
      '  JOIN trm t3'
      '    ON mes.trmcodigo = t3.trmcodigo'
      ''
      ''
      ''
      '  LEFT JOIN rfm'
      '    ON rfm.meschave = mes.meschave'
      '  LEFT JOIN mfi'
      '    ON rfm.rfichave = mfi.rfichave'
      '    AND mfi.tmfcodigo = 2'
      '  LEFT JOIN mlt'
      '    ON mfi.mfichave = mlt.mfichave'
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      '  LEFT JOIN cta'
      '    ON lte.ctacodigo = cta.ctacodigo'
      ''
      ''
      '  LEFT JOIN mor m1'
      '    ON mes.meschave = m1.meschave'
      '    AND m1.flacodigo = mes.flacodigo'
      'WHERE toe.ttecodigo IN (1, 9)'
      'AND mes.flacodigo = :flacodigo'
      'AND mes.mesregistro = :dia'
      ''
      'GROUP BY mes.mesregistro,'
      '         mes.clbcodigo')
    Left = 480
    Top = 605
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
    object mesclbmestotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesclbmestotalcancelado: TFloatField
      DisplayLabel = 'Cancel. R$'
      FieldName = 'mestotalcancelado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesclbmesdescontos: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'mesdescontos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesclbclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
    end
  end
  object DSmesclb: TDataSource
    DataSet = mesclb
    Left = 696
    Top = 485
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta')
    Left = 688
    Top = 596
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  object fluxohoras: TUniQuery
    SQL.Strings = (
      
        'SELECT month(ltedata) ltemes , (HOUR(lte.lteregistro))  as '#39'Inte' +
        'rvalo'#39', count(*) as '#39'ltequantidade'#39
      'from lte'
      '  JOIN cta'
      '    ON lte.ctacodigo = cta.ctacodigo '
      '  where  ltedata BETWEEN :datainicial and :datafinal'
      ''
      'group by month(lte.ltedata), HOUR(lteregistro )'
      'ORDER BY month(lte.ltedata), HOUR(lteregistro )')
    Left = 1032
    Top = 509
    ParamData = <
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
    object fluxohorasltequantidade: TIntegerField
      FieldName = 'ltequantidade'
    end
    object fluxohorasltemes: TIntegerField
      FieldName = 'ltemes'
    end
    object fluxohorasintervalo: TIntegerField
      FieldName = 'intervalo'
    end
  end
  object Dfluxohoras: TDataSource
    DataSet = fluxohoras
    Left = 1072
    Top = 285
  end
  object uqDtls: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mda.mdaidentificacao,'
      '  sum(dtl.dtlvalor) as dtlvalor,'
      '  mda.mdacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo AND mfi.tmfcodigo=2'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo '
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo    '
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave '
      '    AND mes.flacodigo = lte.flacodigo'
      ''
      ''
      ''
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '    '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '  '
      '  '
      'WHERE (rfi.tfdcodigo IN (32) '
      
        'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) and ' +
        'mes.flacodigo=:flacodigo'
      'and mda.mdacodigo<>7 and mesreclassicacao<>9 '
      ' /* Filtros*/'
      ') AND mesregistro BETWEEN (:datainicial) and (:datafinal) '
      ''
      'group by mda.mdaidentificacao'
      'order by mda.mdaidentificacao')
    Left = 1216
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
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
    object uqDtlsmdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 35
    end
    object uqDtlsdtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqDtlsmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object Ddts: TDataSource
    DataSet = uqDtls
    Left = 1252
    Top = 421
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT distinct '
      '      '#39'Dinheiro'#39' as rfimodalidade'
      '     ,rfi.rfidtultbaixa dia'
      '     , sum(rfi.rfibaixadocapital) baixa'
      '     '
      'FROM v_rfi rfi '
      
        '     left join rfm on rfi.rfichave=rfm.rfichave  and rfi.flacodi' +
        'go=rfm.flacodigo '
      
        '     left join mor on rfm.meschave=mor.meschave and rfi.flacodig' +
        'o=mor.flacodigo  '
      ' '
      'WHERE (rfi.tfdcodigo = 2 '
      '    AND rfi.flacodigo=:flacodigo '
      
        '  and  (rfi.srfcodigo=1 OR rfi.srfcodigo=2 OR rfi.srfcodigo=3)) ' +
        'AND rfi.rfidtultbaixa BETWEEN (:datainicial) and (:datafinal) '
      '  GROUP BY YEARWEEK(rfi.rfidtultbaixa)'
      'union all'
      'SELECT distinct '
      '      '#39'Cart'#245'es'#39' as rfimodalidade'
      '     ,rrc.rrcdata dia'
      '     , sum(rrc.rrcvalor) baixa'
      '     '
      'FROM rrc '
      '     '
      'WHERE'
      '   '
      '   rrc.rrcdata BETWEEN (:datainicial) and (:datafinal) '
      'GROUP BY YEARWEEK(rrc.rrcdata)'
      '')
    Left = 1208
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
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
    object rfirfimodalidade: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'rfimodalidade'
      Size = 30
    end
    object rfidia: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dia'
    end
    object rfibaixa: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'baixa'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Drfi: TDataSource
    DataSet = rfi
    Left = 1329
    Top = 517
  end
  object rfigeral: TUniQuery
    SQL.Strings = (
      'SELECT distinct '
      '      '#39'Recebimento em Dinheiro'#39' as rfimodalidade'
      '     ,rfi.rfidtultbaixa dia'
      '     , sum(rfi.rfibaixadocapital-rfi.rfidesconto) baixa'
      '     '
      'FROM v_rfi rfi '
      
        '     left join rfm on rfi.rfichave=rfm.rfichave  and rfi.flacodi' +
        'go=rfm.flacodigo '
      
        '     left join mor on rfm.meschave=mor.meschave and rfi.flacodig' +
        'o=mor.flacodigo  '
      ' '
      'WHERE (rfi.tfdcodigo = 2 '
      '    AND rfi.flacodigo=:flacodigo '
      
        '  and   (rfi.srfcodigo=1 OR rfi.srfcodigo=2 OR rfi.srfcodigo=3))' +
        ' AND rfi.rfidtultbaixa BETWEEN (:datainicial) and (:datafinal) a' +
        'nd rfi.etdcodigo not in (241,1125,1000)'
      '  GROUP BY rfimodalidade'
      'union all'
      ''
      ''
      ''
      'SELECT'
      '  '#39'Vendas em Dinheiro'#39' as rfimodalidade,'
      '  curdate() as dia,'
      '  sum(dtl.dtlvalor) as baixa'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo AND mfi.tmfcodigo=2'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo '
      '  JOIN clb         ON mes.clbcodigo   = clb.clbcodigo    '
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave '
      '    AND mes.flacodigo = lte.flacodigo'
      ''
      ''
      ''
      '  JOIN etd         ON mes.etdcodigo   = etd.etdcodigo    '
      '  JOIN sde         ON mes.sdecodigo   = sde.sdecodigo '
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '    '
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo   = c2.clbcodigo'
      '  JOIN trm t3       ON mes.trmcodigo   = t3.trmcodigo'
      
        '  LEFT JOIN mor m1  ON mes.meschave    = m1.meschave AND m1.flac' +
        'odigo=mes.flacodigo'
      '  '
      '  '
      'WHERE (rfi.tfdcodigo IN (32) '
      
        'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo) and ' +
        'mes.flacodigo=:flacodigo'
      'and mda.mdacodigo<>7 and mesreclassicacao<>9 '
      ' /* Filtros*/'
      ') '
      'and dtl.mdacodigo=1'
      ' AND mesregistro BETWEEN (:datainicial) and (:datafinal) '
      ''
      'group by mda.mdaidentificacao'
      ''
      ''
      ''
      'union all'
      'SELECT distinct '
      '      '#39'Cr'#233'ditos em CC de Cart'#245'es'#39' as rfimodalidade'
      '     ,rrc.rrcdata dia'
      '     , sum(rrc.rrcvalor) baixa'
      '     '
      'FROM rrc '
      '     '
      'WHERE'
      '   '
      '   rrc.rrcdata BETWEEN (:datainicial) and (:datafinal) '
      'GROUP BY rfimodalidade'
      '')
    Left = 352
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
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
    object rfigeralrfimodalidade: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'rfimodalidade'
      Size = 30
    end
    object rfigeraldia: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dia'
    end
    object rfigeralbaixa: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'baixa'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Darfigeral: TDataSource
    DataSet = rfigeral
    Left = 400
    Top = 477
  end
end
