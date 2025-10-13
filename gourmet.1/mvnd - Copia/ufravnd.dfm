inherited fravnd: Tfravnd
  Width = 1537
  Height = 693
  ExplicitWidth = 1537
  ExplicitHeight = 693
  inherited PlGeral: TPanel
    Width = 1537
    Height = 693
    ExplicitWidth = 1537
    ExplicitHeight = 693
    inherited SplBotoes: TSplitter
      Height = 673
      ExplicitHeight = 632
    end
    inherited PlBotoes: TPanel
      Height = 673
      ExplicitHeight = 673
      inherited ImageLogoBase: TImage
        Top = 594
        ExplicitTop = 553
      end
      inherited PlInfo: TPanel
        Top = 655
        ExplicitTop = 655
      end
      inherited SBBotoes: TScrollBox
        Height = 594
        ParentColor = False
        ExplicitHeight = 594
      end
    end
    inherited PlLista: TPanel
      Width = 1393
      Height = 673
      ExplicitWidth = 1393
      ExplicitHeight = 673
      inherited SplLista: TSplitter
        Top = 512
        Width = 1393
        Visible = True
        ExplicitTop = 471
        ExplicitWidth = 1393
      end
      inherited SpFilter: TSplitter
        Width = 1393
        ExplicitWidth = 1393
      end
      inherited PlRodaPe: TPanel
        Top = 517
        Width = 1393
        Height = 156
        Visible = True
        ExplicitTop = 517
        ExplicitWidth = 1393
        ExplicitHeight = 156
        object SplItens: TSplitter
          Left = 721
          Top = 0
          Width = 5
          Height = 156
        end
        object PlResumo: TPanel
          Left = 726
          Top = 0
          Width = 280
          Height = 156
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object pdetalhe: TPanel
            Left = 0
            Top = 0
            Width = 280
            Height = 156
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 0
            object Panel3: TPanel
              Left = 2
              Top = 2
              Width = 276
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvLowered
              Caption = '          Finaliza'#231#227'o Financeira da Venda'
              Color = 4210816
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object listapor: TDBGrid
              Left = 2
              Top = 42
              Width = 276
              Height = 112
              Align = alClient
              Color = 13303780
              DataSource = Ddtl
              DrawingStyle = gdsGradient
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ltechave'
                  Title.Caption = 'Lote'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'mdaidentificacao'
                  Title.Caption = 'Modalidade'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtlvalor'
                  Title.Caption = 'Valor R$'
                  Width = 70
                  Visible = True
                end>
            end
            object pvalordetalhe: TPanel
              Left = 2
              Top = 22
              Width = 276
              Height = 20
              Align = alTop
              Alignment = taRightJustify
              BevelOuter = bvLowered
              BorderWidth = 2
              Caption = 'Dinheiro R$ 0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Visible = False
            end
          end
        end
        object PlItens: TPanel
          Left = 0
          Top = 0
          Width = 721
          Height = 156
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object listaitm: TDBGrid
            Left = 2
            Top = 22
            Width = 717
            Height = 104
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Ditm
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaitmDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'itmchave'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmitem'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'proncm'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 192
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmvalor'
                Title.Caption = 'Vlr Unit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmdesconto'
                Title.Caption = 'Desc.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotalliq'
                Title.Caption = 'Total Liquido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cfocfop'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmaliqipi'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'toecodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cstcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cspcodigo'
                Visible = True
              end>
          end
          object PlRodapeItens: TPanel
            Left = 2
            Top = 126
            Width = 717
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object plQtdItens: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 130
              Height = 22
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object plDescontoItens: TPanel
              AlignWithMargins = True
              Left = 325
              Top = 3
              Width = 180
              Height = 22
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
            object plBrutoItens: TPanel
              AlignWithMargins = True
              Left = 139
              Top = 3
              Width = 180
              Height = 22
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 2
            end
            object plLiquidoItens: TPanel
              AlignWithMargins = True
              Left = 511
              Top = 3
              Width = 200
              Height = 22
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object plTituloItensDetalhe: TPanel
            Left = 2
            Top = 2
            Width = 717
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Caption = '          Itens de Vendas'
            Color = 4210816
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object btOcultaExibeDetalhe: TSpeedButton
              Left = 1
              Top = 1
              Width = 17
              Height = 18
              Align = alLeft
              Caption = '<'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btOcultaExibeDetalheClick
              ExplicitLeft = -1
              ExplicitTop = -1
            end
          end
        end
        object plResumoModalidades: TPanel
          Left = 1136
          Top = 0
          Width = 257
          Height = 156
          Align = alRight
          TabOrder = 2
          Visible = False
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 255
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Caption = '          Resumo Financeiro'
            Color = 4210816
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
            Width = 255
            Height = 117
            Align = alClient
            DataSource = DSTotaisDtls
            DrawingStyle = gdsGradient
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBResumoModalidadesDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'mdaidentificacao'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtlvalor'
                Width = 90
                Visible = True
              end>
          end
          object mostracalculototal: TProgressBar
            Left = 1
            Top = 138
            Width = 255
            Height = 17
            Align = alBottom
            TabOrder = 2
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1393
        ExplicitWidth = 1393
        inherited BvlSeparador: TBevel
          Left = 759
          ExplicitLeft = 791
        end
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
        inherited PlBotaoFiltro: TPanel
          Left = 860
          Width = 533
          Align = alClient
          ExplicitLeft = 860
          ExplicitWidth = 533
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Left = 309
          Enabled = True
          ExplicitLeft = 309
        end
        inherited PlBotaoFiltroEsp: TScrollBox
          Left = 763
          Width = 94
          VertScrollBar.Style = ssFlat
          VertScrollBar.Tracking = True
          AutoScroll = False
          AutoSize = True
          ExplicitLeft = 763
          ExplicitWidth = 94
        end
      end
      inherited PlSelecao: TPanel
        Width = 1393
        ExplicitWidth = 1393
        inherited GBPlSelecao: TGroupBox
          Width = 1389
          ExplicitWidth = 1389
          inherited DBLista: TDBGrid
            Width = 1282
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1393
        Height = 383
        Caption = ''
        ExplicitWidth = 1393
        ExplicitHeight = 383
        inherited DBGLista: TDBGrid
          Width = 1393
          Height = 205
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Width = 185
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Width = 169
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'messerie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesnumero'
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
              Width = 199
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clboperador'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meshora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flasigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesprodutos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'messervicos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecfopsaida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccxchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesrefeicao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oriidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 233
          Width = 1393
          Height = 150
          Visible = True
          ExplicitTop = 233
          ExplicitWidth = 1393
          ExplicitHeight = 150
          object PCDetalhes: TPageControl
            Left = 1
            Top = 72
            Width = 1391
            Height = 77
            ActivePage = TSTransporte
            Align = alBottom
            TabOrder = 0
            object TSObservacoes: TTabSheet
              Caption = 'Observa'#231#245'es'
              object Label6: TLabel
                Left = 796
                Top = 0
                Width = 41
                Height = 13
                Caption = 'UF Placa'
                FocusControl = ufssigla
              end
              object listaobs: TDBGrid
                Left = 0
                Top = 0
                Width = 1383
                Height = 49
                Align = alClient
                DataSource = Dtom
                DrawingStyle = gdsGradient
                Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = listaobsDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'tofidentificacao'
                    Width = 850
                    Visible = True
                  end>
              end
            end
            object TSTransporte: TTabSheet
              Caption = 'Dados do Transporte'
              ImageIndex = 1
              object Label5: TLabel
                Left = 8
                Top = 6
                Width = 69
                Height = 13
                Caption = 'Transportador'
                FocusControl = etdcodigo
              end
              object Label7: TLabel
                Left = 641
                Top = 6
                Width = 33
                Height = 13
                Caption = 'Estado'
                FocusControl = etdcodigo
              end
              object Label8: TLabel
                Left = 757
                Top = 6
                Width = 25
                Height = 13
                Caption = 'Placa'
                FocusControl = dtmplaca
              end
              object Label9: TLabel
                Left = 8
                Top = 33
                Width = 113
                Height = 13
                Caption = 'Quantidade de Volumes'
                FocusControl = dtmvolumes
              end
              object Label10: TLabel
                Left = 226
                Top = 33
                Width = 36
                Height = 13
                Caption = 'Esp'#233'cie'
                FocusControl = dtmespecie
              end
              object Label11: TLabel
                Left = 404
                Top = 33
                Width = 29
                Height = 13
                Caption = 'Marca'
                FocusControl = dtmmarcas
              end
              object Label12: TLabel
                Left = 622
                Top = 33
                Width = 52
                Height = 13
                Caption = 'Peso Bruto'
                FocusControl = dtmpesobruto
              end
              object Label13: TLabel
                Left = 763
                Top = 33
                Width = 59
                Height = 13
                Caption = 'Peso L'#237'quido'
                FocusControl = dtmpesoliq
              end
              object etdcodigo: TDBEdit
                Left = 136
                Top = 3
                Width = 69
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'etdcodigo'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 0
              end
              object etdidentificacao: TDBEdit
                Left = 218
                Top = 3
                Width = 395
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'etdidentificacao'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 1
              end
              object ufssigla: TDBEdit
                Left = 687
                Top = 3
                Width = 32
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'ufssigla'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 2
              end
              object dtmplaca: TDBEdit
                Left = 790
                Top = 3
                Width = 73
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmplaca'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 3
              end
              object dtmvolumes: TDBEdit
                Left = 136
                Top = 30
                Width = 69
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmvolumes'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 4
              end
              object dtmespecie: TDBEdit
                Left = 268
                Top = 30
                Width = 128
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmespecie'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 5
              end
              object dtmmarcas: TDBEdit
                Left = 439
                Top = 30
                Width = 174
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmmarcas'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 6
              end
              object dtmpesobruto: TDBEdit
                Left = 687
                Top = 30
                Width = 64
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmpesobruto'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 7
              end
              object dtmpesoliq: TDBEdit
                Left = 828
                Top = 30
                Width = 64
                Height = 21
                TabStop = False
                Color = 4227327
                DataField = 'dtmpesoliq'
                DataSource = Ddtm
                ReadOnly = True
                TabOrder = 8
              end
            end
          end
          object Pnl1: TPanel
            Left = 1
            Top = 1
            Width = 1391
            Height = 75
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object plDetalhes: TPanel
              Left = 0
              Top = 20
              Width = 1391
              Height = 55
              Align = alClient
              TabOrder = 0
              object pllinha1: TPanel
                Left = 1
                Top = 1
                Width = 1389
                Height = 27
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Pltotalvendas: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 180
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Bruto R$'
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object Pltotaldescontos: TPanel
                  AlignWithMargins = True
                  Left = 189
                  Top = 3
                  Width = 180
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Descontos: '
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
                object plTrocaDevol: TPanel
                  AlignWithMargins = True
                  Left = 375
                  Top = 3
                  Width = 180
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Troca/Dev/Vale:'
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 2
                end
                object PltotalDoacao: TPanel
                  AlignWithMargins = True
                  Left = 561
                  Top = 3
                  Width = 180
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Doa'#231#245'es R$'
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 3
                end
                object Pltotalliquido: TPanel
                  AlignWithMargins = True
                  Left = 933
                  Top = 3
                  Width = 160
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'L'#237'quido R$'
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 4
                end
                object PlTotalCancelado: TPanel
                  AlignWithMargins = True
                  Left = 747
                  Top = 3
                  Width = 180
                  Height = 21
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Cancelados: '
                  Color = 12615680
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 5
                end
              end
              object pllinha2: TPanel
                Left = 1
                Top = 28
                Width = 1389
                Height = 26
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object PlTotalServicos: TPanel
                  AlignWithMargins = True
                  Left = 189
                  Top = 3
                  Width = 180
                  Height = 20
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Servi'#231'os:'
                  Color = clGray
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object PlTotalRefaturado: TPanel
                  AlignWithMargins = True
                  Left = 375
                  Top = 3
                  Width = 180
                  Height = 20
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Total Refaturado: '
                  Color = clGray
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
                object Pltotalnfe: TPanel
                  AlignWithMargins = True
                  Left = 561
                  Top = 3
                  Width = 180
                  Height = 20
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Total NF-e: '
                  Color = clGray
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 2
                end
                object PlTotalProdutos: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 180
                  Height = 20
                  Align = alLeft
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 2
                  Caption = 'Produtos R$'
                  Color = clGray
                  Font.Charset = EASTEUROPE_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1391
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvLowered
              Caption = '         Totais das movimenta'#231#245'es'
              Color = 4210816
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object btOcultaExibeTotais: TSpeedButton
                Left = 1
                Top = 1
                Width = 17
                Height = 18
                Align = alLeft
                Caption = '-'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
                OnClick = btOcultaExibeTotaisClick
                ExplicitLeft = 0
                ExplicitTop = 0
              end
            end
          end
          object plTituloItensObservacoes: TPanel
            Left = 1
            Top = 76
            Width = 1391
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Caption = '         Observa'#231#245'es e Dados de Transporte'
            Color = 4210816
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object btOcultaExibeObservacoes: TSpeedButton
              Left = 1
              Top = 1
              Width = 17
              Height = 18
              Align = alLeft
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btOcultaExibeObservacoesClick
              ExplicitLeft = 0
              ExplicitTop = 2
            end
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 3
        end
        object plInformacoes: TPanel
          Left = 0
          Top = 205
          Width = 1393
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 2
          object plEstorno: TPanel
            Left = 2
            Top = 2
            Width = 1389
            Height = 24
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object Label1: TLabel
              Left = 6
              Top = 6
              Width = 85
              Height = 13
              Caption = 'Dados de Estorno'
            end
            object Label2: TLabel
              Left = 480
              Top = 6
              Width = 23
              Height = 13
              Caption = 'Data'
              FocusControl = hcmdata
            end
            object Label3: TLabel
              Left = 588
              Top = 6
              Width = 23
              Height = 13
              Caption = 'Hora'
              FocusControl = hcmhora
            end
            object hcmdata: TDBEdit
              Left = 507
              Top = 2
              Width = 72
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'hcmdata'
              DataSource = Dhcm
              ReadOnly = True
              TabOrder = 0
            end
            object hcmhora: TDBEdit
              Left = 616
              Top = 2
              Width = 61
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'hcmhora'
              DataSource = Dhcm
              ReadOnly = True
              TabOrder = 1
            end
            object clbidentificacao: TDBEdit
              Left = 691
              Top = 2
              Width = 130
              Height = 21
              Color = 16767152
              DataField = 'clbidentificacao'
              DataSource = Dhcm
              TabOrder = 2
            end
            object hcmdescricao: TDBEdit
              Left = 97
              Top = 2
              Width = 360
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'hcmdescricao'
              DataSource = Dhcm
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1537
      ExplicitWidth = 1537
      inherited plid: TPanel
        Left = 1087
        Caption = '02.04.09.001'
        ExplicitLeft = 1087
      end
      inherited PlSair: TPanel
        Left = 1331
        ExplicitLeft = 1331
      end
    end
  end
  inherited acoes: TActionList
    Left = 332
    Top = 136
    inherited ActIncluir: TAction
      Category = 'Sa'#237'das'
      Hint = ''
      OnExecute = ActIncluirExecute
    end
    object ActFaturar: TAction [1]
      Category = 'Sa'#237'das'
      Caption = 'Faturamento'
      OnExecute = ActFaturarExecute
    end
    object ActImportaTXTNFE: TAction [2]
      Category = 'Sa'#237'das'
      Caption = 'Importa TXT NFE'
      OnExecute = ActImportaTXTNFEExecute
    end
    inherited ActAlterar: TAction
      Category = 'Sa'#237'das'
      OnExecute = ActAlterarExecute
    end
    object ActCancelar: TAction [4]
      Category = 'Sa'#237'das'
      Caption = 'Cancelar'
      ImageIndex = 8
      OnExecute = ActCancelarExecute
    end
    object ActCancelarFaturamento: TAction [5]
      Category = 'Sa'#237'das'
      Caption = 'Cancelar Faturamento'
    end
    inherited ActAtualizar: TAction [6]
      Category = 'Sa'#237'das'
    end
    object ActFinalizar: TAction [7]
      Category = 'Sa'#237'das'
      Caption = 'Finalizar'
      OnExecute = ActFinalizarExecute
    end
    inherited ActPesquisar: TAction [8]
      Category = 'Sa'#237'das'
    end
    object ActGerarCobranca: TAction [9]
      Category = 'Sa'#237'das'
      Caption = 'Gerar Cobran'#231'a'
      OnExecute = ActGerarCobrancaExecute
    end
    object ActInfoComplementar: TAction [10]
      Category = 'Sa'#237'das'
      Caption = 'Inf. Complementar'
      OnExecute = ActInfoComplementarExecute
    end
    object ActAjustarEstagio: TAction [11]
      Category = 'Utilit'#225'rios'
      Caption = 'Ajustar Est'#225'gio'
      OnExecute = ActAjustarEstagioExecute
    end
    inherited ActRelatorios: TAction [12]
      Category = 'Utilit'#225'rios'
    end
    object ActVerificaCupons: TAction [13]
      Category = 'Utilit'#225'rios'
      Caption = 'Verifica Cupons'
      Enabled = False
      OnExecute = ActVerificaCuponsExecute
    end
    inherited ActVerFiltros: TAction [14]
      Category = 'Utilit'#225'rios'
    end
    inherited ActFiltrar: TAction [15]
      Category = 'Utilit'#225'rios'
    end
    inherited ActConfig: TAction [16]
      Category = 'Utilit'#225'rios'
    end
    inherited ActConfiguracoes: TAction [17]
      Category = 'Utilit'#225'rios'
    end
    object ActGeraCupomFiscal: TAction [18]
      Category = 'Utilit'#225'rios'
      Caption = 'Gera Cupom Fiscal'
      Enabled = False
      OnExecute = ActGeraCupomFiscalExecute
    end
    object ActAjustaOperacao: TAction [19]
      Category = 'Utilit'#225'rios'
      Caption = 'Ajusta Opera'#231#227'o'
      Visible = False
      OnExecute = ActAjustaOperacaoExecute
    end
    inherited ActExcluir: TAction [20]
      Category = 'Utilit'#225'rios'
    end
    object ActAlterarCliente: TAction [21]
      Category = 'Utilit'#225'rios'
      Caption = 'Alterar Cliente'
      OnExecute = ActAlterarClienteExecute
    end
    object ActAlterarColaborador: TAction [22]
      Category = 'Utilit'#225'rios'
      Caption = 'Alterar Vendedor'
      OnExecute = ActAlterarColaboradorExecute
    end
    object ActSituacaoComissao: TAction [23]
      Category = 'Utilit'#225'rios'
      Caption = 'Situa'#231#227'o Comiss'#227'o'
      OnExecute = ActSituacaoComissaoExecute
    end
    object ActAlterarTecnico: TAction [24]
      Category = 'Utilit'#225'rios'
      Caption = 'Alterar T'#233'cnico'
      OnExecute = ActAlterarTecnicoExecute
    end
    object ActAlterarOperador: TAction [25]
      Category = 'Utilit'#225'rios'
      Caption = 'Alterar Operador'
      OnExecute = ActAlterarOperadorExecute
    end
    inherited ActSair: TAction
      Category = 'Utilit'#225'rios'
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 252
    Top = 244
  end
  inherited MenuManutencao: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object Utilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
      object mAjustarFilial: TMenuItem
        Caption = 'Ajustar Filial'
        OnClick = mAjustarFilialClick
      end
      object AjustarCFOPdoItens1: TMenuItem
        Caption = 'Ajustar CFOP do Itens'
        OnClick = AjustarCFOPdoItens1Click
      end
      object mnMarcarcomoReclassificacao: TMenuItem
        Caption = 'Marcar como Reclassifica'#231#227'o'
        OnClick = mnMarcarcomoReclassificacaoClick
      end
      object mnAjustarRegimetributario: TMenuItem
        Caption = 'Ajustar Regime tribut'#225'rio'
        OnClick = mnAjustarRegimetributarioClick
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , etd.etdidentificacao'
      '     , sde.sdeidentificacao'
      '     , tdf.tdfidentificacao'
      '     , toe.toeidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesnumero'
      '     , mes.etdcodigo'
      '     , mes.messerie'
      '     , mes.tdfcodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , mes.temcodigo'
      '     , mes.clbcodigo'
      '     , clb.clbidentificacao AS clboperador'
      '     , mes.trmcodigo'
      '     , mes.mesprotocolo'
      '     , mes.sdecodigo'
      '     , mes.mesdatanfe'
      '     , tto.ttocodigo'
      '     , mes.mesregistro'
      '     , tem.temidentificacao'
      '     , DATE_FORMAT(mesinclusao, '#39'%H:%i:%s'#39') AS meshora '
      '     , fla.flasigla'
      '     , mes.flacodigo'
      '     , mes.mesprodutos'
      '     , mes.messervicos'
      '     , mes.toecodigo'
      '     , toe.toecfopsaida'
      '     , mes.mestipocomissao'
      '     , mes.mesinclusao'
      '     , mes.ccxchave'
      '     , mes.mesrefeicao'
      '     , ori.oriidentificacao'
      ''
      '    '
      ''
      '  FROM mes '
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN clb         ON mes.clbcodigo = clb.clbcodigo'
      '  left join ori on mes.oricodigo = ori.oricodigo '
      ''
      ''
      
        ' WHERE (toe.ttecodigo IN (1) and toe.ttocodigo<>10 and toe.ttoco' +
        'digo<>8) AND mes.flacodigo=:flacodigo'
      ''
      ' -- Filtros')
    Left = 176
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelameschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
    object uqtabelamesnumero: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'mesnumero'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelamesvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o Documento'
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Operador(a)'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Trm'
      FieldName = 'trmcodigo'
      Required = True
    end
    object uqtabelamesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'C'#243'digo da Situa'#231#227'o'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelamesdatanfe: TDateField
      DisplayLabel = 'Data NFE'
      FieldName = 'mesdatanfe'
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Cod. Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelatdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object uqtabelattocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
      Size = 30
    end
    object uqtabelaclboperador: TStringField
      DisplayLabel = 'Operador(a)'
      FieldName = 'clboperador'
      Size = 35
    end
    object uqtabelaflasigla: TStringField
      DisplayLabel = 'Fla'
      FieldName = 'flasigla'
      Size = 3
    end
    object uqtabelamesprodutos: TFloatField
      DisplayLabel = 'Produtos R$'
      FieldName = 'mesprodutos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesservicos: TFloatField
      DisplayLabel = 'Servi'#231'os R$'
      FieldName = 'messervicos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object uqtabelatoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object uqtabelatoecfopsaida: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'toecfopsaida'
      Size = 10
    end
    object uqtabelamestipocomissao: TIntegerField
      FieldName = 'mestipocomissao'
    end
    object uqtabelamesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
    object uqtabelameshora: TStringField
      DisplayLabel = 'Hora Registro'
      FieldName = 'meshora'
    end
    object uqtabelaccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object uqtabelamesrefeicao: TIntegerField
      DisplayLabel = 'Refei'#231#227'o'
      FieldName = 'mesrefeicao'
    end
    object uqtabelaoriidentificacao: TStringField
      DisplayLabel = 'origem'
      FieldName = 'oriidentificacao'
      Size = 30
    end
  end
  inherited cau: TUniQuery
    Top = 200
  end
  inherited cca: TUniQuery
    Top = 200
  end
  inherited cpg: TUniQuery
    Left = 332
    Top = 232
  end
  inherited vcls: TVirtualTable
    Left = 500
    Top = 260
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 229
    Top = 209
  end
  inherited rel: TUniQuery
    Left = 376
    Top = 256
  end
  inherited fmd: TUniQuery
    Left = 728
    Top = 211
  end
  inherited Dsfi: TUniDataSource
    Left = 208
    Top = 324
  end
  inherited sfi: TUniQuery
    Left = 244
    Top = 320
  end
  inherited FechaFiltro: TTimer
    Left = 286
    Top = 171
  end
  inherited lou: TUniQuery
    Left = 624
    Top = 176
  end
  inherited ColorDialog: TColorDialog
    Left = 1112
    Top = 485
  end
  inherited ImageList1: TImageList
    Top = 245
  end
  inherited cfgmgou: TUniQuery
    Left = 1032
    Top = 221
  end
  object cfg: TUniQuery
    SQL.Strings = (
      '')
    Left = 976
    Top = 216
  end
  object consultax: TUniQuery
    Left = 36
    Top = 140
  end
  object Dtom: TUniDataSource
    DataSet = tom
    Left = 288
    Top = 288
  end
  object tom: TUniQuery
    SQL.Strings = (
      
        'select tomchave, tom.tofcodigo, tofidentificacao, meschave from ' +
        'tom,tof where tom.tofcodigo=tof.tofcodigo and meschave=:meschave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 316
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object tomtomchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tomchave'
      Required = True
    end
    object tomtofcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
      Required = True
    end
    object tommeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object tomtofidentificacao: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tofidentificacao'
      Size = 350
    end
  end
  object Ddtm: TUniDataSource
    DataSet = vdtm
    Left = 1016
    Top = 308
  end
  object dtm: TUniQuery
    SQL.Strings = (
      
        'select dtmchave, dtmplaca,dtmvolumes, dtmpesobruto, dtmpesoliq, ' +
        'meschave,dtm.etdcodigo,ufssigla,edrrua, cddnome,ufssigla,edrinsc' +
        'est,etddoc1,etdidentificacao, dtmespecie,dtmmarcas,cdd.ufscodigo'
      'from dtm, etd, edr, cdd, ufs '
      '    where'
      '    dtm.etdcodigo=etd.etdcodigo and '
      '    etd.etdcodigo=edr.etdcodigo and '
      '    edr.cddcodigo=cdd.cddcodigo and '
      '    cdd.ufscodigo=ufs.ufscodigo and '
      '    edr.tedcodigo='#39'1'#39' and dtm.meschave=:meschave')
    Left = 976
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dtmdtmchave: TIntegerField
      FieldName = 'dtmchave'
    end
    object dtmdtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Required = True
      Size = 10
    end
    object dtmdtmvolumes: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'dtmvolumes'
      Required = True
    end
    object dtmdtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object dtmdtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object dtmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object dtmetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object dtmufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object dtmedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object dtmcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object dtmufssigla: TStringField
      DisplayLabel = 'UF Placa'
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object dtmetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object dtmetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object dtmdtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object dtmdtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
    object dtmedrinscest: TStringField
      FieldName = 'edrinscest'
    end
  end
  object rfm: TUniQuery
    SQL.Strings = (
      
        'select lte.* from rfm,rfi,mfi,lte where rfm.rfichave=rfi.rfichav' +
        'e and rfi.rfichave=mfi.rfichave and mfi.ltechave=lte.ltechave')
    Left = 912
    Top = 244
    object rfmltedinheiro: TFloatField
      FieldName = 'ltedinheiro'
      Required = True
    end
    object rfmltechequepro: TFloatField
      FieldName = 'ltechequepro'
      Required = True
    end
    object rfmltechequeter: TFloatField
      FieldName = 'ltechequeter'
      Required = True
    end
    object rfmltecartcred: TFloatField
      FieldName = 'ltecartcred'
      Required = True
    end
    object rfmltecartdeb: TFloatField
      FieldName = 'ltecartdeb'
      Required = True
    end
    object rfmltebancario: TFloatField
      FieldName = 'ltebancario'
      Required = True
    end
    object rfmltereparc: TFloatField
      FieldName = 'ltereparc'
      Required = True
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 304
    Top = 540
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '    , IF(imv.vrpcodigo > 0'
      '        , (SELECT vv.pronome'
      '            FROM v_vrp vv'
      '            WHERE vv.vrpcodigo = imv.vrpcodigo) '
      '        , IF(tImc.clbidentificacao IS NOT NULL'
      '           , CONCAT(pro.pronome, '#39' - '#39', tImc.clbidentificacao)'
      '           , pro.pronome))            AS pronome'
      ' --    , pro.pronome'
      '     , uni.unisimbolo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , (itm.itmtotal - itm.itmdesconto) AS itmtotalliq'
      '     , itm.cfocfop'
      '     , itm.itmaliqipi'
      '     , itm.toecodigo'
      '     , pro.proncm'
      '     , itm.cstcodigo'
      '     , itm.cspcodigo'
      '     , itm.itmpis'
      '     , itm.itmcofins'
      '  FROM      itm'
      '  LEFT JOIN imv ON itm.itmchave  = imv.itmchave  '
      '  JOIN      pro ON itm.procodigo = pro.procodigo'
      '  JOIN      pun ON itm.puncodigo = pun.puncodigo'
      '  JOIN      uni ON pun.unicodigo = uni.unicodigo'
      '  '
      '  -- Identifica o T'#233'cnico da OS'
      '  LEFT JOIN (SELECT i.itmchave'
      '                  , c.clbidentificacao'
      '               FROM imc i'
      '               JOIN clb c ON i.clbcodigo = c.clbcodigo '
      
        '                AND c.fnccodigo = 5) tImc ON itm.itmchave = tImc' +
        '.itmchave  '
      ' '
      ' WHERE itm.meschave = :meschave and itm.flacodigo=:flacodigo')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 268
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
      ReadOnly = True
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      ReadOnly = True
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      ReadOnly = True
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      ReadOnly = True
      Required = True
    end
    object itmpronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object itmunisimbolo: TStringField
      DisplayLabel = 'UN'
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Vlr Unit R$'
      FieldName = 'itmvalor'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total Item R$'
      FieldName = 'itmtotal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object itmitmaliqipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'itmaliqipi'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object itmitmtotalliq: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'itmtotalliq'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 8
    end
    object itmcstcodigo: TStringField
      DisplayLabel = 'CST'
      FieldName = 'cstcodigo'
      Size = 4
    end
    object itmcspcodigo: TStringField
      DisplayLabel = 'CSP'
      FieldName = 'cspcodigo'
      Size = 4
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
  end
  object etd: TUniQuery
    Left = 808
    Top = 176
  end
  object ete: TUniQuery
    Left = 820
    Top = 288
  end
  object vdtm: TUniQuery
    SQL.Strings = (
      
        'select dtmchave, dtmplaca,dtmvolumes, dtmpesobruto, dtmpesoliq, ' +
        'meschave,dtm.etdcodigo,ufssigla,edrrua, cddnome,ufssigla,edrinsc' +
        'est,etddoc1,etdidentificacao, dtmespecie,dtmmarcas,cdd.ufscodigo'
      'from dtm, etd, edr, cdd, ufs '
      '    where'
      '    dtm.etdcodigo=etd.etdcodigo and '
      '    etd.etdcodigo=edr.etdcodigo and '
      '    edr.cddcodigo=cdd.cddcodigo and '
      '    cdd.ufscodigo=ufs.ufscodigo and '
      '    edr.tedcodigo='#39'1'#39' and dtm.meschave=:meschave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 1068
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object vdtmdtmchave: TIntegerField
      FieldName = 'dtmchave'
    end
    object vdtmdtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Required = True
      Size = 10
    end
    object vdtmdtmvolumes: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'dtmvolumes'
      Required = True
    end
    object vdtmdtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vdtmdtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object vdtmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object vdtmetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object vdtmufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object vdtmedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object vdtmcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object vdtmufssigla: TStringField
      DisplayLabel = 'UF Placa'
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object vdtmetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object vdtmetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object vdtmdtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object vdtmdtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
    object vdtmedrinscest: TStringField
      FieldName = 'edrinscest'
    end
  end
  object tto: TUniQuery
    SQL.Strings = (
      
        'select ttocodigo, ttoidentificacao from tto where (ttocodigo=2 o' +
        'r   ttocodigo=3 or  ttocodigo=0 )')
    Left = 496
    Top = 196
    object ttottocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object ttottoidentificacao: TStringField
      FieldName = 'ttoidentificacao'
      Size = 35
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      ''
      ''
      'SELECT DISTINCT'
      ''
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '   mda.mdacodigo'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    '
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    '
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      ''
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      ''
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      ''
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      'WHERE rfi.tfdcodigo IN (2, 32)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      'AND mes.mesrefeicao = 0'
      'AND mes.meschave = :meschave'
      'AND mes.flacodigo = :flacodigo'
      ''
      'UNION DISTINCT'
      ''
      ''
      'SELECT DISTINCT'
      ''
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '   mda.mdacodigo'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      ''
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      ''
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      ''
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      ''
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      ''
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      'WHERE rfi.tfdcodigo IN ( 2)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      'AND mes.mesrefeicao = 0'
      'AND rfi.tficodigo=10'
      'AND mes.meschave = :meschave'
      'AND mes.flacodigo = :flacodigo'
      ''
      '')
    Options.DetailDelay = 50
    Left = 1016
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 25
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Ddtl: TDataSource
    DataSet = dtl
    Left = 963
    Top = 611
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  c.clbcodigo,'
      '  c.clbidentificacao'
      'FROM clb c')
    Left = 651
    Top = 291
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
  end
  object ccm: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  mea.meamotivo,'
      '  mea.meacodigo,'
      '  ccm.ccmmotivo,'
      '  ccm.ccochave,'
      '  ccm.erfchave'
      'FROM ccm'
      '  INNER JOIN mea'
      '  ON ccm.meacodigo = mea.meacodigo'
      '  where ccm.meschave=:meschave')
    Options.DetailDelay = 40
    Left = 1048
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object ccmmeamotivo: TStringField
      FieldName = 'meamotivo'
      Size = 250
    end
    object ccmmeacodigo: TIntegerField
      FieldName = 'meacodigo'
    end
    object ccmccmmotivo: TStringField
      FieldName = 'ccmmotivo'
      Size = 250
    end
    object ccmerfchave: TIntegerField
      FieldName = 'erfchave'
    end
  end
  object Dccm: TDataSource
    DataSet = ccm
    Left = 1195
    Top = 331
  end
  object erf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  erfchave,'
      '  erfdata,'
      '  erfhora,'
      '  erf.clbcodigo,'
      '  erfvalorlote,'
      '  erfvalorcredito,'
      '  ltechave,'
      '  erf.etdcodigo,'
      '  erftipo,'
      '  c.clbidentificacao'
      'FROM erf'
      '  INNER JOIN clb c'
      '    ON erf.clbcodigo = c.clbcodigo'
      'WHERE erf.erfchave = :erfchave')
    Options.DetailDelay = 40
    Left = 1256
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'erfchave'
        Value = nil
      end>
    object erferfdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'erfdata'
    end
    object erferfhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'erfhora'
    end
    object erfclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 15
    end
    object erferfchave: TIntegerField
      FieldName = 'erfchave'
    end
  end
  object Derf: TDataSource
    DataSet = erf
    Left = 1291
    Top = 315
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
      
        ' WHERE  mes.mesrefeicao=0 and mesreclassicacao<>9 and toe.ttecod' +
        'igo IN (1, 9)  and toe.ttocodigo IN (2, 9) and mes.flacodigo=:fl' +
        'acodigo'
      ' -- Filtros')
    BeforeOpen = uqTotaisBeforeOpen
    Left = 528
    Top = 523
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
  object uqItmTotais: TUniQuery
    SQL.Strings = (
      'SELECT itm.meschave'
      '     , COUNT(itm.itmchave)                 AS itmitens'
      '     , SUM(itm.itmtotal)                   AS itmtotal'
      '     , SUM(itm.itmdesconto)                AS itmdesconto'
      '     , SUM(itm.itmtotal - itm.itmdesconto) AS itmtotalliq'
      '  FROM      itm'
      '  LEFT JOIN imv ON itm.itmchave  = imv.itmchave'
      '  JOIN      pro ON itm.procodigo = pro.procodigo'
      '  JOIN      pun ON itm.puncodigo = pun.puncodigo'
      '  JOIN      uni ON pun.unicodigo = uni.unicodigo'
      '  '
      '  -- Identifica o T'#233'cnico da OS'
      ' -- LEFT JOIN (SELECT i.itmchave'
      ' --                 , c.clbidentificacao'
      ' --              FROM imc i'
      ' --              JOIN clb c ON i.clbcodigo = c.clbcodigo'
      
        ' --               AND c.fnccodigo = 5) tImc ON itm.itmchave = tI' +
        'mc.itmchave'
      ' '
      ' WHERE itm.meschave = :meschave and itm.flacodigo=:flacodigo')
    Options.DetailDelay = 40
    AfterOpen = uqItmTotaisAfterOpen
    AfterRefresh = uqItmTotaisAfterRefresh
    Left = 392
    Top = 550
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqItmTotaismeschave: TIntegerField
      FieldName = 'meschave'
    end
    object uqItmTotaisitmitens: TIntegerField
      FieldName = 'itmitens'
    end
    object uqItmTotaisitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object uqItmTotaisitmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object uqItmTotaisitmtotalliq: TFloatField
      FieldName = 'itmtotalliq'
    end
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT tit.titcodigo FROM tit '
      '  INNER JOIN rfi ON tit.titcodigo = rfi.titcodigo'
      '  INNER JOIN rfm ON rfi.rfichave = rfm.rfichave'
      '  INNER JOIN mes ON rfm.meschave = mes.meschave'
      'where mes.meschave=:meschave')
    Left = 744
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  object hcm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  hcm.hcmchave,'
      '  hcm.meschave,'
      '  hcm.sdecodigo,'
      '  hcm.clbcodigo,'
      '  hcm.hcmdata,'
      '  hcm.hcmhora,'
      '  hcm.hcmdescricao,'
      '  clb.clbidentificacao'
      'FROM hcm, clb'
      '  WHERE hcm.clbcodigo=clb.clbcodigo'
      '  AND hcm.meschave=:meschave')
    Left = 605
    Top = 572
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object hcmhcmchave: TIntegerField
      FieldName = 'hcmchave'
    end
    object hcmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object hcmsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 3
    end
    object hcmclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object hcmclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object hcmhcmdata: TDateField
      FieldName = 'hcmdata'
    end
    object hcmhcmhora: TTimeField
      FieldName = 'hcmhora'
    end
    object hcmhcmdescricao: TStringField
      FieldName = 'hcmdescricao'
      Size = 25
    end
  end
  object Dhcm: TDataSource
    DataSet = hcm
    Left = 549
    Top = 596
  end
  object mfirfi: TUniQuery
    SQL.Strings = (
      
        ' SELECT mfi.rfichave, mfi.mfichave FROM mfi,rfm WHERE rfm.rficha' +
        've=mfi.rfichave  and rfm.meschave=:meschave')
    Left = 760
    Top = 569
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object uqDtlTotais: TUniQuery
    SQL.Strings = (
      'SELECT '
      'distinct'
      ''
      '  mda.mdaidentificacao,'
      ''
      '(IF (mda.mdacodigo=4,mfivalor,  dtlvalor)) as dtlvalor,'
      ''
      '  mda.mdacodigo ,'
      '  rfi.rfinumero'
      ''
      'FROM rfm '
      
        '  INNER JOIN mes  ON rfm.meschave = mes.meschave  AND rfm.flacod' +
        'igo = mes.flacodigo'
      
        '  INNER JOIN rfi  ON rfm.rfichave = rfi.rfichave  AND rfi.flacod' +
        'igo = mes.flacodigo'
      
        '  INNER JOIN mfi  ON mfi.rfichave = rfi.rfichave  AND mfi.flacod' +
        'igo = mes.flacodigo   AND (mfi.tmfcodigo IN (2,21) )'
      
        '  INNER JOIN mlt  ON mlt.mfichave = mfi.mfichave  AND mes.flacod' +
        'igo = mlt.flacodigo'
      
        '  INNER JOIN dtl  ON dtl.ltechave = mlt.ltechave  AND mlt.flacod' +
        'igo = dtl.flacodigo'
      '  INNER JOIN mda   ON dtl.mdacodigo = mda.mdacodigo  '
      '  '
      '  '
      
        'WHERE (mes.mesrefeicao=0 and rfi.tfdcodigo IN (32) and  mes.tdfc' +
        'odigo<>'#39'RF'#39' AND mes.sdecodigo<>'#39'02'#39
      '  AND '
      '  '
      
        '  IF((dtl.mdacodigo = 4 OR dtl.mdacodigo = 5),if((select adcliqu' +
        'idaautomatico from adc limit 1)=0 ,tmfcodigo = 21,tmfcodigo = 2)' +
        ', tmfcodigo = 21)   '
      
        ' AND mes.flacodigo=:flacodigo and mda.mdacodigo<>7 and mesreclas' +
        'sicacao<>9  )'
      ''
      ' -- Filtros'
      ''
      ''
      ''
      '')
    Left = 1168
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
  object uqDtlConvenios: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  '#39'Conv'#234'nio'#39' AS mdaidentificacao,'
      '  SUM(rfivalor) AS dtlvalor,'
      '  7 AS mdacodigo'
      'FROM mes,'
      '     rfm,'
      '     rfi,'
      '     etd'
      'WHERE mes.meschave = rfm.meschave'
      'AND rfm.rfichave = rfi.rfichave'
      'AND (rfi.tfdcodigo IN (2)'
      'AND mes.flacodigo = :flacodigo'
      'AND mes.mesrefeicao = 0'
      'AND mes.etdcodigo = etd.etdcodigo'
      'AND mes.sdecodigo <> '#39'02'#39
      'AND rfi.tficodigo = 10)'
      ''
      '-- Filtros  ')
    Left = 1250
    Top = 471
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
  object DSTotaisDtls: TDataSource
    DataSet = TotaisDtls
    Left = 1370
    Top = 423
  end
  object TotaisDtls: TVirtualTable
    Left = 1424
    Top = 420
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
  object adm: TUniQuery
    SQL.Strings = (
      'select clbsuper from clb where clbcodigo=:clbcodigo')
    Left = 536
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select cstcodigo from pro where procodigo=:procodigo')
    Left = 704
    Top = 609
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object procstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
  end
  object uqDtl: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '    mes.meschave,'
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '    mda.mdacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      ''
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      ''
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      ''
      '  inner JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      ''
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      ''
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      'WHERE rfi.tfdcodigo IN (2, 32)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      'AND mes.mesrefeicao = 0'
      'AND mes.flacodigo = :flacodigo'
      '-- filtros'
      'GROUP BY mes.meschave,mda.mdacodigo'
      ''
      'UNION DISTINCT'
      ''
      ''
      'SELECT DISTINCT'
      '    mes.meschave,'
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '    mda.mdacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo'
      '  inner JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  inner JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      '    AND mes.flacodigo = lte.flacodigo'
      'WHERE rfi.tfdcodigo IN ( 2)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      'AND mes.mesrefeicao = 0'
      'AND rfi.tficodigo'
      'AND mes.flacodigo = :flacodigo'
      '-- filtros'
      'GROUP BY mes.meschave,mda.mdacodigo')
    Left = 1184
    Top = 569
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqDtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object uqDtlmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 25
    end
    object uqDtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqDtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object uqDtlmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object mce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce limit 0')
    Left = 808
    Top = 625
    object mcemcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
    end
    object mcemcemotivo: TStringField
      FieldName = 'mcemotivo'
      Size = 50
    end
    object mcemecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object mcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcrchave,'
      '  rcrchave,'
      '  mcrvalor,'
      '  mcechave'
      'FROM mcr limit 0')
    Left = 1216
    Top = 621
    object mcrmcrchave: TIntegerField
      FieldName = 'mcrchave'
    end
    object mcrrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcrmcrvalor: TCurrencyField
      FieldName = 'mcrvalor'
    end
    object mcrmcechave: TIntegerField
      FieldName = 'mcechave'
    end
  end
end
