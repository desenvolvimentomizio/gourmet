inherited fracco: Tfracco
  Width = 1387
  Height = 741
  ExplicitWidth = 1387
  ExplicitHeight = 741
  inherited PlGeral: TPanel
    Width = 1387
    Height = 741
    ExplicitWidth = 1387
    ExplicitHeight = 741
    inherited SplBotoes: TSplitter
      Top = 49
      Height = 692
      ExplicitTop = 55
      ExplicitHeight = 585
    end
    inherited PlBotoes: TPanel
      Top = 49
      Height = 692
      ExplicitTop = 49
      ExplicitHeight = 692
      inherited ImageLogoBase: TImage
        Top = 613
        ExplicitTop = 506
      end
      inherited PlInfo: TPanel
        Top = 674
        ExplicitTop = 674
      end
      inherited SBBotoes: TScrollBox
        Height = 613
        ExplicitHeight = 613
      end
    end
    inherited PlLista: TPanel
      Top = 49
      Width = 1243
      Height = 692
      ExplicitTop = 49
      ExplicitWidth = 1243
      ExplicitHeight = 692
      inherited SplLista: TSplitter
        Top = 592
        Width = 1243
        ExplicitLeft = -16
        ExplicitTop = 496
        ExplicitWidth = 1152
      end
      inherited SpFilter: TSplitter
        Width = 1243
        ExplicitWidth = 1152
      end
      inherited PlRodaPe: TPanel
        Top = 597
        Width = 1243
        Height = 95
        ExplicitTop = 597
        ExplicitWidth = 1243
        ExplicitHeight = 95
        object plContabilizacao: TPanel
          Left = 0
          Top = 0
          Width = 73
          Height = 95
          Align = alLeft
          BorderWidth = 4
          TabOrder = 0
          Visible = False
          object Panel4: TPanel
            Left = 5
            Top = 5
            Width = 63
            Height = 16
            Align = alTop
            Caption = 'Contabiliza'#231#227'o'
            TabOrder = 0
          end
          object DBlistarmg: TDBGrid
            Left = 5
            Top = 21
            Width = 63
            Height = 69
            Align = alClient
            DataSource = DSrmg
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBlistarmgDrawColumnCell
            OnKeyDown = DBlistarmgKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'rmgchave'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pcgcodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pcgidentificacao'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cedidentificacao'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rmgvalor'
                Width = 85
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          Left = 73
          Top = 0
          Width = 278
          Height = 95
          Align = alLeft
          BorderWidth = 4
          Caption = 'Panel3'
          TabOrder = 1
          Visible = False
          object Panel5: TPanel
            Left = 5
            Top = 5
            Width = 268
            Height = 16
            Align = alTop
            Caption = 'Contabiliza'#231#227'o'
            TabOrder = 0
          end
          object DBGrid1: TDBGrid
            Left = 5
            Top = 21
            Width = 268
            Height = 69
            Align = alClient
            DataSource = Dpcr
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object Plpcr: TPanel
          Left = 351
          Top = 0
          Width = 645
          Height = 95
          Align = alLeft
          BorderWidth = 4
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object Panel7: TPanel
            Left = 5
            Top = 5
            Width = 635
            Height = 16
            Align = alTop
            Caption = 'Centros de Custo'
            TabOrder = 0
          end
          object DBGridDrg: TDBGrid
            Left = 5
            Top = 21
            Width = 635
            Height = 69
            Align = alClient
            DataSource = Ddrg
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridDrgDrawColumnCell
          end
        end
        object Plbaixa: TPanel
          Left = 996
          Top = 0
          Width = 247
          Height = 95
          Align = alClient
          BorderWidth = 4
          TabOrder = 3
          object Panel6: TPanel
            Left = 5
            Top = 5
            Width = 237
            Height = 16
            Align = alTop
            Caption = 'Detalhe da Baixa'
            TabOrder = 0
          end
          object DBGDetalheBaixa: TDBGrid
            Left = 5
            Top = 21
            Width = 237
            Height = 69
            Align = alClient
            DataSource = Drfi
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGDetalheBaixaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfiemissao'
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
                FieldName = 'srfidentificacao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfihistorico'
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1243
        ExplicitWidth = 1243
        inherited BvlSeparador: TBevel
          Left = 486
          ExplicitLeft = 477
        end
        inherited PlEdTextoBusca: TPanel
          Width = 421
          ExplicitWidth = 421
          inherited GrBTextoProcurar: TGroupBox
            Width = 415
            ExplicitWidth = 415
            inherited PlGbEdtBusca: TPanel
              Width = 391
              ExplicitWidth = 391
              inherited edbusca: TEdit
                Width = 365
                ExplicitWidth = 365
              end
              inherited btLimpaBusca: TPanel
                Left = 368
                ExplicitLeft = 368
              end
            end
            inherited plfiltroEspecial: TPanel
              Left = 393
              ExplicitLeft = 393
            end
          end
        end
        inherited PlBotaoFiltro: TPanel
          Left = 487
          ExplicitLeft = 487
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Left = 567
          ExplicitLeft = 567
        end
        inherited PlBotaoFiltroEsp: TScrollBox
          Left = 433
          ExplicitLeft = 433
        end
        inherited PlBotaoFiltroEsp3: TScrollBox
          Left = 1020
          ExplicitLeft = 1020
        end
      end
      inherited PlSelecao: TPanel
        Width = 1243
        ExplicitWidth = 1243
        inherited GBPlSelecao: TGroupBox
          Width = 1239
          ExplicitWidth = 1239
          inherited DBLista: TDBGrid
            Width = 1132
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1243
        Height = 463
        Caption = ''
        ExplicitWidth = 1243
        ExplicitHeight = 463
        inherited DBGLista: TDBGrid
          Width = 1243
          Height = 282
          Columns = <
            item
              Expanded = False
              FieldName = 'ccochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccoemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccodataregistro'
              Title.Caption = 'Registro'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccohoraregistro'
              Title.Caption = 'Hora'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccofavorecido'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccohistorico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovalor'
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'cconatureza'
              Title.Alignment = taCenter
              Title.Caption = '  '
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'saldo'
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'conciliado'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'
              Width = 15
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 317
          Width = 1243
          Height = 146
          Visible = True
          ExplicitTop = 317
          ExplicitWidth = 1243
          ExplicitHeight = 146
          object PlDetalhe: TPanel
            Left = 1
            Top = 1
            Width = 300
            Height = 144
            Align = alLeft
            BorderWidth = 2
            TabOrder = 0
            object DBlistadtpl: TDBGrid
              Left = 3
              Top = 19
              Width = 294
              Height = 122
              Align = alClient
              DataSource = Ddtl
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = DBlistadtplDrawColumnCell
              OnKeyDown = DBlistadtplKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'mdacodigo'
                  Title.Caption = 'C'#243'd.'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'mdaidentificacao'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtlvalor'
                  Visible = True
                end>
            end
            object Pltitdetlote: TPanel
              Left = 3
              Top = 3
              Width = 294
              Height = 16
              Align = alTop
              Caption = 'Detalhe do Registro'
              TabOrder = 1
            end
          end
          object PlDetFinche: TPanel
            Left = 301
            Top = 1
            Width = 464
            Height = 144
            Align = alLeft
            BorderWidth = 2
            TabOrder = 1
            Visible = False
            object PlTitDetFinalizador: TPanel
              Left = 3
              Top = 3
              Width = 458
              Height = 16
              Align = alTop
              Caption = 'Cheques Registados'
              TabOrder = 0
            end
            object DBlistafin: TDBGrid
              Left = 3
              Top = 19
              Width = 458
              Height = 122
              Align = alClient
              DataSource = Dche
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = DBlistafinDrawColumnCell
              OnKeyDown = DBlistafinKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cheemissao'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'chevencimento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'bcocodigo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'chenumero'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'chenome'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'chevalor'
                  Visible = True
                end>
            end
          end
          object plResumoCCO: TPanel
            Left = 885
            Top = 1
            Width = 246
            Height = 144
            Align = alRight
            BevelOuter = bvLowered
            BorderWidth = 1
            TabOrder = 2
            object plTitDebito: TPanel
              Left = 2
              Top = 61
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Total a D'#233'bito R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object plDebitoCCO: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object plTitSaldoAnterior: TPanel
              Left = 2
              Top = 21
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Saldo Anterior R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object plSaldoAnteriorCCo: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object plTitCredito: TPanel
              Left = 2
              Top = 41
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Total a Cr'#233'dito R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object plCreditoCCO: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object plTitSaldoAtual: TPanel
              Left = 2
              Top = 81
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Saldo at'#233' esta data R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object plSaldoAtualCCO: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object plTituyloResumo: TPanel
              Left = 2
              Top = 2
              Width = 242
              Height = 19
              Align = alTop
              Alignment = taRightJustify
              Caption = 'Resumo da Conta  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object Panel1: TPanel
              Left = 2
              Top = 101
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Saldo Lan'#231'amentos Futuros R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              object plFuturoCCO: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = clRed
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel2: TPanel
              Left = 2
              Top = 121
              Width = 242
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Saldo at'#233' final do per'#237'odo R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              object plSaldoFinalCCO: TPanel
                Left = 157
                Top = 0
                Width = 85
                Height = 20
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = clRed
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object plResumoConciliado: TPanel
            Left = 1131
            Top = 1
            Width = 111
            Height = 144
            Align = alRight
            BevelOuter = bvLowered
            BorderWidth = 1
            TabOrder = 3
            object Panel8: TPanel
              Left = 2
              Top = 61
              Width = 107
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object plDebitoConciliado: TPanel
                Left = 0
                Top = 0
                Width = 107
                Height = 20
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel10: TPanel
              Left = 2
              Top = 21
              Width = 107
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object plSaldoAnteriorConciliado: TPanel
                Left = 0
                Top = 0
                Width = 107
                Height = 20
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 2
              Top = 41
              Width = 107
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object plCreditoConciliado: TPanel
                Left = 0
                Top = 0
                Width = 107
                Height = 20
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel14: TPanel
              Left = 2
              Top = 81
              Width = 107
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object plSaldoAtualConciliado: TPanel
                Left = 0
                Top = 0
                Width = 107
                Height = 20
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 3
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object plTitualoConcilado: TPanel
              Left = 2
              Top = 2
              Width = 107
              Height = 19
              Align = alTop
              Alignment = taRightJustify
              Caption = 'Conciliado  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 3
        end
        object plMensagemFixa: TPanel
          Left = 0
          Top = 282
          Width = 1243
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 2
          object plEstorno: TPanel
            Left = 4
            Top = 4
            Width = 1235
            Height = 27
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
              FocusControl = meacodigo
            end
            object Label2: TLabel
              Left = 480
              Top = 6
              Width = 23
              Height = 13
              Caption = 'Data'
              FocusControl = erfdata
            end
            object Label3: TLabel
              Left = 588
              Top = 6
              Width = 23
              Height = 13
              Caption = 'Hora'
              FocusControl = erfhora
            end
            object Label5: TLabel
              Left = 779
              Top = 6
              Width = 65
              Height = 13
              Caption = 'Complemento'
              FocusControl = meacodigo
            end
            object meacodigo: TDBEdit
              Left = 101
              Top = 3
              Width = 45
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'meacodigo'
              DataSource = Dccm
              ReadOnly = True
              TabOrder = 0
            end
            object meamotivo: TDBMemo
              Left = 152
              Top = 3
              Width = 321
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'meamotivo'
              DataSource = Dccm
              ReadOnly = True
              TabOrder = 1
            end
            object ccmmotivo: TDBMemo
              Left = 850
              Top = 3
              Width = 270
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'ccmmotivo'
              DataSource = Dccm
              ReadOnly = True
              TabOrder = 2
            end
            object erfdata: TDBEdit
              Left = 507
              Top = 3
              Width = 72
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'erfdata'
              DataSource = Derf
              ReadOnly = True
              TabOrder = 3
            end
            object erfhora: TDBEdit
              Left = 616
              Top = 3
              Width = 61
              Height = 21
              TabStop = False
              Color = 16767152
              DataField = 'erfhora'
              DataSource = Derf
              ReadOnly = True
              TabOrder = 4
            end
            object clbidentificacao: TDBEdit
              Left = 683
              Top = 3
              Width = 90
              Height = 21
              Color = 16767152
              DataField = 'clbidentificacao'
              DataSource = Derf
              TabOrder = 5
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1387
      ExplicitWidth = 1387
      inherited plid: TPanel
        Left = 937
        Caption = '02.02.07.007-01'
        ExplicitLeft = 937
      end
      inherited PlSair: TPanel
        Left = 1181
        ExplicitLeft = 1181
        inherited BDiminuiLetra: TBitBtn
          Hint = 'Diminui o tamanho das letras da listagem.'
        end
        inherited BAumentaLetra: TBitBtn
          Hint = 'Aumenta o tamanho das letras da listagem.'
        end
        inherited BLegenda: TBitBtn
          Hint = 'Mostra as Legendas para o Formul'#225'rio'
          Visible = True
          OnClick = BLegendaClick
        end
      end
    end
    object PlFiltroCta: TPanel
      Left = 0
      Top = 20
      Width = 1387
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 3
      object PlDatas: TPanel
        Left = 965
        Top = 3
        Width = 419
        Height = 23
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 1
        ParentBackground = False
        TabOrder = 0
        object bcalefin: TSpeedButton
          Left = 395
          Top = 1
          Width = 23
          Height = 21
          Align = alRight
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
            E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
            1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
            09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
            AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
            AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
            FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
            EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
            FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
            D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
            FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
            FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
            E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
            FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
            CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
            BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = bcalefinClick
        end
        object bcaleini: TSpeedButton
          Left = 207
          Top = 1
          Width = 23
          Height = 21
          Align = alRight
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
            E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
            1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
            09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
            AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
            AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
            FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
            EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
            FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
            D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
            FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
            FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
            E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
            FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
            CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
            BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = bcaleiniClick
          ExplicitLeft = 201
        end
        object fccdatafin: TDBEdit
          Left = 305
          Top = 1
          Width = 90
          Height = 21
          Align = alRight
          Color = clYellow
          DataField = 'fccdatafin'
          DataSource = Dfcc
          TabOrder = 0
          OnKeyPress = fccdatafinKeyPress
        end
        object PlEtiDataFinal: TPanel
          Left = 230
          Top = 1
          Width = 75
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          BorderWidth = 4
          Caption = 'Data Final:'
          TabOrder = 1
        end
        object fccdataini: TDBEdit
          Left = 117
          Top = 1
          Width = 90
          Height = 21
          Align = alRight
          Color = clYellow
          DataField = 'fccdataini'
          DataSource = Dfcc
          TabOrder = 2
          OnKeyPress = fccdatainiKeyPress
        end
        object PlEtiDataInicial: TPanel
          Left = 42
          Top = 1
          Width = 75
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          BorderWidth = 4
          Caption = 'Data Inicial:'
          TabOrder = 3
        end
      end
    end
  end
  inherited acoes: TActionList
    Left = 496
    Top = 101
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActTransferir: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Transf. em Dinheiro'
      OnExecute = ActTransferirExecute
    end
    object ActDepositar: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Depositar Cheque'
      OnExecute = ActDepositarExecute
    end
    object ActConciliar: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Concilia'#231#227'o'
      OnExecute = ActConciliarExecute
    end
    object ActDesconciliar: TAction [5]
      Category = 'Manuten'#231#227'o'
      Caption = 'Desconciliar'
      OnExecute = ActDesconciliarExecute
    end
    object ActEstornar: TAction [6]
      Category = 'Manuten'#231#227'o'
      Caption = 'Estornar'
      Hint = 'Estornar um Lan'#231'amento indevido ou errado'
      OnExecute = ActEstornarExecute
    end
    object ActContabilizacao: TAction [7]
      Category = 'Manuten'#231#227'o'
      Caption = 'Contabiliza'#231#227'o'
      OnExecute = ActContabilizacaoExecute
    end
    object ActCentrodeCustos: TAction [8]
      Category = 'Manuten'#231#227'o'
      Caption = 'Centro de Custos'
      OnExecute = ActCentrodeCustosExecute
    end
    inherited ActAtualizar: TAction [9]
    end
    inherited ActPesquisar: TAction [10]
    end
    object ActChequesDisponiveis: TAction [11]
      Category = 'Cheques'
      Caption = 'Consultar'
      OnExecute = ActChequesDisponiveisExecute
    end
    object ActTransferirCheques: TAction [12]
      Category = 'Cheques'
      Caption = 'Transferir'
      Hint = 'Transferir Cheques entre Contas'
      OnExecute = ActTransferirChequesExecute
    end
    object ActDepositarCheques: TAction [13]
      Category = 'Cheques'
      Caption = 'Depositar'
      OnExecute = ActDepositarChequesExecute
    end
    object ActDevolucaoCheque: TAction [14]
      Category = 'Cheques'
      Caption = 'Devolu'#231#227'o'
      OnExecute = ActDevolucaoChequeExecute
    end
    object ActResgatarCheques: TAction [15]
      Category = 'Cheques'
      Caption = 'Resgatar'
      Enabled = False
      Hint = 'Resgatar do Caixa cheque pelo propriet'#225'rio'
      OnExecute = ActResgatarChequesExecute
    end
    inherited ActExcluir: TAction [16]
    end
    inherited ActRelatorios: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActFiltrar: TAction
      Enabled = False
    end
    inherited ActConfig: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActConfiguracoes: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActSair: TAction
      Category = 'Utilit'#225'rios'
    end
    object ActiCustodiarCheques: TAction
      Category = 'Cheques'
      Caption = 'Enviar p/Custodia'
      OnExecute = ActiCustodiarChequesExecute
    end
    object ActSacarCheque: TAction
      Category = 'Cheques'
      Caption = 'Sacar Cheque'
      OnExecute = ActSacarChequeExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 272
    Top = 244
  end
  inherited MenuManutencao: TPopupMenu
    Left = 480
    Top = 272
    object mUtilitarios: TMenuItem
      Caption = 'Utilitarios'
      object mAjustaDtl: TMenuItem
        Caption = 'Ajusta Dtl'
        OnClick = mAjustaDtlClick
      end
      object AjustarContabilizao1: TMenuItem
        Caption = 'Ajustar Contabiliza'#231#227'o'
        OnClick = AjustarContabilizao1Click
      end
      object mnAjustarEstorno: TMenuItem
        Caption = 'Ajustar Estorno'
        OnClick = mnAjustarEstornoClick
      end
      object mnAjustarCentroDeCustos: TMenuItem
        Caption = 'Ajustar Centro De Custos'
        OnClick = mnAjustarCentroDeCustosClick
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 12
    Top = 108
  end
  inherited mdl: TUniQuery
    Left = 620
    Top = 124
  end
  inherited dau: TUniQuery
    Left = 768
    Top = 120
  end
  inherited act: TUniQuery
    Left = 560
    Top = 156
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      
        '  if(tcco.ccoconciliado='#39'1'#39' or tcco.ccoconciliado='#39'2'#39' ,'#39'1'#39','#39'0'#39') ' +
        'AS ccoconciliado,'
      
        '  if(tcco.ccoconciliado='#39'1'#39' or tcco.ccoconciliado='#39'2'#39','#39'1'#39','#39'0'#39') A' +
        'S conciliado,'
      '  tcco.ccochave,'
      '  tcco.ctacodigo,'
      '  tcco.toccodigo,'
      '  tcco.ccoemissao,'
      '  tcco.ccovencimento,'
      '  tcco.cconumero,'
      '  tcco.ccohistorico,'
      
        '  if( tcco.cconatureza='#39'C'#39', tcco.ccovalor,tcco.ccovalor*-1 ) AS ' +
        'ccovalor,'
      '  tcco.ccochaveorig,'
      '  tcco.ccochavedest,'
      '  tcco.ccoextenso,'
      '  tcco.clbcodigo,'
      '  tcco.tficodigo,'
      '  tcco.cedcodigo,'
      '  tcco.moecodigo,'
      '  cconatureza,'
      '  tcco.saldo,'
      '  tcco.usuario,'
      '  tcco.tfdcodigo,'
      '  tfd.tfdidentificacao,'
      '  tcco.ccofavorecido,'
      '  tcco.ccodataregistro,'
      '  tcco.ccohoraregistro'
      'FROM tcco'
      '  LEFT OUTER JOIN tfd'
      '    ON tcco.tfdcodigo = tfd.tfdcodigo'
      'order by tcco.ccovencimento,tcco.ccochave')
    Left = 220
    Top = 284
    object uqtabelaccochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object uqtabelaccovencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ccovencimento'
    end
    object uqtabelactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object uqtabelatoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelatficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object uqtabelamoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object uqtabelaccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelacconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object uqtabelaccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object uqtabelaccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object uqtabelaccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object uqtabelaccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object uqtabelasaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'saldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelausuario: TIntegerField
      FieldName = 'usuario'
    end
    object uqtabelacconatureza: TStringField
      DisplayLabel = 'N'
      FieldName = 'cconatureza'
      Size = 1
    end
    object uqtabelatfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object uqtabelatfdidentificacao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'tfdidentificacao'
      Size = 30
    end
    object uqtabelaccofavorecido: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'ccofavorecido'
      Size = 80
    end
    object uqtabelaccodataregistro: TDateField
      DisplayLabel = 'Data Registro'
      FieldName = 'ccodataregistro'
      EditMask = '!99/99;1;_'
    end
    object uqtabelaccohoraregistro: TTimeField
      DisplayLabel = 'Hora Registro'
      FieldName = 'ccohoraregistro'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaconciliado: TStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'conciliado'
      Size = 5
    end
    object uqtabelaccoconciliado: TStringField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
      Size = 5
    end
  end
  inherited cau: TUniQuery
    Left = 560
    Top = 232
  end
  inherited cca: TUniQuery
    Left = 608
    Top = 260
  end
  inherited cpg: TUniQuery
    Left = 492
    Top = 328
  end
  inherited vcls: TVirtualTable
    Left = 416
    Top = 268
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 341
    Top = 265
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 434
    Top = 300
  end
  object fcc: TUniQuery
    SQL.Strings = (
      
        'select fccchave, clbcodigo, ctacodigo, fccdataini, fccdatafin,tf' +
        'ccodigo from fcc where fcc.clbcodigo=:clbcodigo and ctacodigo=:c' +
        'tacodigo')
    BeforePost = fccBeforePost
    Left = 656
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object fccfccchave: TIntegerField
      FieldName = 'fccchave'
    end
    object fccclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object fccctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object fccfccdataini: TDateField
      FieldName = 'fccdataini'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object fccfccdatafin: TDateField
      FieldName = 'fccdatafin'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object fcctfccodigo: TIntegerField
      FieldName = 'tfccodigo'
    end
  end
  object Dfcc: TUniDataSource
    DataSet = fcc
    Left = 700
    Top = 240
  end
  object tfc: TUniQuery
    SQL.Strings = (
      'select tfccodigo, tfcidentificacao from tfc order by tfccodigo')
    Left = 904
    Top = 284
    object tfctfccodigo: TIntegerField
      FieldName = 'tfccodigo'
    end
    object tfctfcidentificacao: TStringField
      FieldName = 'tfcidentificacao'
    end
  end
  object Dtfc: TUniDataSource
    DataSet = tfc
    Left = 796
    Top = 304
  end
  object extrato: TUniQuery
    SQL.Strings = (
      'call extratocco(:dtinicial, :dtfinal, :conta, :usuario)')
    Left = 360
    Top = 292
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtinicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtfinal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        Value = nil
      end>
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dtl.dtlchave,'
      '  lte.ltechave,'
      '  cedcodigo,'
      '  dtl.mdacodigo,'
      '  IF(cedcodigo = 0, dtlvalor * -1, dtlvalor) AS dtlvalor,'
      '  mdaidentificacao,'
      '  lte.tfdcodigo,'
      '  mda.mdacodigo'
      'FROM dtl,'
      '     mda,'
      '     lte,'
      '     clt'
      'WHERE lte.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND dtl.mdacodigo = mda.mdacodigo'
      'AND clt.ccochave = :ccochave')
    Left = 240
    Top = 492
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlmdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtldtlvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object Ddtl: TUniDataSource
    DataSet = dtl
    Left = 300
    Top = 492
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' che.chechave, '
      '  che.chevencimento,'
      '  che.cheemissao,'
      '  che.chenumero,'
      '  che.chevalor,'
      '  ltc.schcodigo,'
      '  ltc.dtlchave,'
      '  che.bcocodigo,'
      '  che.chenome'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      'where  dtl.ltechave=:ltechave and che.chevencimento=:vencimento')
    Left = 848
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vencimento'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'chenumero'
      Size = 15
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'chenome'
      Size = 50
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cheschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object Dche: TUniDataSource
    DataSet = che
    Left = 880
    Top = 496
  end
  object chedis: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cco.ctacodigo,'
      '  che.chechave,'
      '  che.cheemissao,'
      '  che.chevencimento,'
      '  che.chenumero,'
      '  che.checonta,'
      '  che.cheagencia,'
      '  che.chenome,'
      '  che.bcocodigo,'
      '  che.chedocumento,'
      '  che.chetelefone,'
      '  che.chevalor,'
      '  ltc.schcodigo'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  INNER JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  INNER JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      ' where ltc.schcodigo=:schcodigo and cco.ctacodigo=:ctacodigo')
    Left = 562
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'schcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object chedischechave: TIntegerField
      FieldName = 'chechave'
    end
    object chedischeemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object chedischevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object chedischenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object chedischeconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 10
    end
    object chedischeagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 15
    end
    object chedisbcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chedischenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object chedischedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object chedischetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object chedischevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object chedisschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object ccbsaldoante: TUniQuery
    SQL.Strings = (
      'SELECT'
      ''
      
        ' SUM(IF(cco.cedcodigo = 1, cco.ccovalor, cco.ccovalor * (-1))) a' +
        's valor'
      'FROM cco'
      ''
      'WHERE cco.ccovencimento < :dtInicial'
      'AND cco.ctacodigo = :conta'
      'AND cco.ccoconciliado ='#39'1'#39
      ''
      '-- '
      '--  SELECT'
      
        '--   SUM(IF(cco.cedcodigo = 1, cco.ccovalor, cco.ccovalor * (-1)' +
        ')) AS VALOR'
      '--  FROM cco'
      '--   LEFT JOIN cnb'
      '--     ON cco.ccochave = cnb.ccochave'
      '--  WHERE cnb.cnbregistro < :dtInicial'
      '--  AND cco.ctacodigo = :conta')
    Left = 1112
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        Value = nil
      end>
    object ccbsaldoantevalor: TFloatField
      FieldName = 'valor'
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
      '  where ccm.ccochave=:ccochave')
    Left = 640
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
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
    Left = 675
    Top = 307
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
    Left = 720
    Top = 304
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
  end
  object Derf: TDataSource
    DataSet = erf
    Left = 755
    Top = 307
  end
  object fct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fct.fctchave,'
      '  fct.ctacodigo'
      'FROM fct where ctacodigo=:ctacodigo')
    Left = 954
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object fctfctchave: TIntegerField
      FieldName = 'fctchave'
    end
    object fctctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
  end
  object acoesflh: TActionList
    Left = 402
    Top = 105
    object ActLancamento: TAction
      Category = 'Folha Gerencial'
      Caption = 'Lan'#231'ar'
      OnExecute = ActLancamentoExecute
    end
    object ActEstornarLanFlh: TAction
      Category = 'Folha Gerencial'
      Caption = 'Estornar'
      OnExecute = ActEstornarLanFlhExecute
    end
    object ActPagamento: TAction
      Category = 'Folha Gerencial'
      Caption = 'Pagamento'
      OnExecute = ActPagamentoExecute
    end
  end
  object efcefg: TUniQuery
    SQL.Strings = (
      'SELECT efc.evachave'
      '     , eva.etdcodigo'
      '     , eva.evfcodigo'
      '     , eva.flhchave'
      '     , efg.eflcodigo'
      'FROM efc'
      '  JOIN eva'
      '    ON efc.evachave = eva.evachave'
      '  JOIN efg'
      '    ON eva.flhchave = efg.flhchave'
      '    AND eva.etdcodigo = efg.etdcodigo'
      'WHERE efc.ccochave = :ccochave')
    Left = 536
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object efcefgevachave: TIntegerField
      FieldName = 'evachave'
    end
    object efcefgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object efcefgevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object efcefgflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object efcefgeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
  end
  object ajustadtl: TUniQuery
    Left = 952
    Top = 368
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgusactb,'
      '  cfgctbusaccg,'
      '  cfgccgcodigo'
      'FROM cfg'
      'left join  cfgmctb on  cfg.cfgcodigo = cfgmctb.cfgcodigo'
      'left join  cfgmflh on  cfg.cfgcodigo = cfgmflh.cfgcodigo'
      'WHERE cfg.cfgcodigo = :flacodigo')
    Left = 504
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgcfgccgcodigo: TIntegerField
      FieldName = 'cfgccgcodigo'
    end
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlg.ltechave,'
      '  mlg.mlgdata,'
      '  rmg.rmgchave,'
      '  mlg.mlgchave,'
      '  mlg.clbcodigo,'
      '  rmg.phgcodigo,'
      '  rmg.rmgdata,'
      '  rmg.rmgvalor,'
      '  rmg.rmgcomplemento,'
      '  rmg.pcgcodigo,'
      '  rmg.cedcodigo,'
      '  rmg.rmgcompetencia,'
      '  rmg.rmginclusao,'
      '  rmg.rmgtipo,'
      '  phg.phgidentificacao,'
      
        '  concat(pcg.pcgidentificacao, '#39' - '#39', pcg.pcgestrutural) AS pcgi' +
        'dentificacao,'
      '  ced.cedidentificacao'
      'FROM rmg'
      '  INNER JOIN mlg'
      '    ON rmg.mlgchave = mlg.mlgchave'
      '  INNER JOIN phg'
      '    ON rmg.phgcodigo = phg.phgcodigo'
      '  LEFT JOIN pcg '
      '    ON rmg.pcgcodigo = pcg.pcgcodigo'
      '  LEFT JOIN ced '
      '    ON rmg.cedcodigo = ced.cedcodigo'
      '  where mlg.ltechave=:ltechave')
    Left = 616
    Top = 577
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rmgrmgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object rmgmlgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mlgchave'
    end
    object rmgpcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object rmgpcgidentificacao: TStringField
      DisplayLabel = 'Conta a Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 150
    end
    object rmgcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rmgcedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      DisplayWidth = 35
      FieldName = 'cedidentificacao'
      Size = 35
    end
    object rmgrmgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rmgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DSrmg: TDataSource
    DataSet = rmg
    Left = 512
    Top = 585
  end
  object lte: TUniQuery
    SQL.Strings = (
      'select ltechave FROM clt where ccochave=:ccochave')
    Left = 800
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object pcr: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  rfi.titcodigo,'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  etd.etdidentificacao,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  srf.srfidentificacao,'
      '  lte.ltechave,'
      '  pcr.pcgcodigo,'
      '  pcr.pcrvalor,'
      '  pcr.phgcodigo'
      ''
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf,'
      '     pcr'
      ''
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'and pcr.titcodigo = rfi.titcodigo'
      'AND lte.ltechave = :ltechave')
    Left = 589
    Top = 475
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
  end
  object Dpcr: TDataSource
    DataSet = pcr
    Left = 677
    Top = 483
  end
  object drg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  '
      '   * '
      '    '
      '  '
      'FROM drg'
      '  INNER JOIN mlg ON drg.mlgchave=mlg.mlgchave'
      ''
      'WHERE mlg.ltechave=:ltechave')
    Left = 952
    Top = 593
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
  end
  object Ddrg: TDataSource
    DataSet = drg
    Left = 999
    Top = 564
  end
  object mcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcg.mcgchave,'
      '  mcg.ccgcodigo,'
      '  ccg.ccgidentificacao,'
      
        '  IF(mcgtabela='#39'rfi'#39', mcg.mcgvalor*(:rfivalor/mcg.mcgvalor), mcg' +
        '.mcgvalor) mcgvalor,'
      '  mcg.mcgdata,'
      '  mcgsituacao,'
      '  mcgcompetencia'
      
        'FROM mcg, ccg WHERE mcg.ccgcodigo=ccg.ccgcodigo and mcgchaveorig' +
        'em=:mcgchaveorigem and mcgtabela='#39'cco'#39)
    Left = 592
    Top = 429
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfivalor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end>
    object mcgmcgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mcgchave'
    end
    object mcgccgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
    end
    object mcgccgidentificacao: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
    object mcgmcgcompetencia: TStringField
      DisplayLabel = 'Competencia'
      FieldName = 'mcgcompetencia'
      Size = 6
    end
    object mcgmcgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mcgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mcgmcgdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mcgdata'
    end
    object mcgmcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
      Visible = False
    end
  end
  object mcgatu: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave,'
      '  mcgcompetencia'
      'FROM mcg limit 0')
    Left = 629
    Top = 427
    object mcgatumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgatuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgatumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgatumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgatumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgatumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgatuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgatumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgaturfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mcgatumcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgatumcgcompetencia: TStringField
      FieldName = 'mcgcompetencia'
      Size = 10
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  etd.etdidentificacao,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  srf.srfidentificacao,'
      '  lte.ltechave'
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf'
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'AND lte.ltechave = :ltechave')
    Left = 1172
    Top = 612
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'etdcodigo'
    end
    object rfietdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfiltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object Drfi: TUniDataSource
    DataSet = rfi
    Left = 1292
    Top = 596
  end
end
