inherited frabrf: Tfrabrf
  Width = 1403
  Height = 816
  ExplicitWidth = 1403
  ExplicitHeight = 816
  inherited PlGeral: TPanel
    Width = 1403
    Height = 816
    ExplicitWidth = 1403
    ExplicitHeight = 816
    inherited SplBotoes: TSplitter
      Height = 796
      Visible = False
      ExplicitHeight = 657
    end
    inherited PlBotoes: TPanel
      Height = 796
      Visible = False
      ExplicitHeight = 796
      inherited ImageLogoBase: TImage
        Top = 717
        ExplicitTop = 578
      end
      inherited PlInfo: TPanel
        Top = 778
        ExplicitTop = 778
      end
      inherited SBBotoes: TScrollBox
        Height = 717
        ExplicitHeight = 717
      end
    end
    inherited PlLista: TPanel
      Width = 1259
      Height = 796
      ExplicitWidth = 1259
      ExplicitHeight = 796
      inherited SplLista: TSplitter
        Top = 487
        Width = 1259
        Visible = True
        ExplicitTop = 348
        ExplicitWidth = 1259
      end
      inherited SpFilter: TSplitter
        Width = 1259
        ExplicitWidth = 1259
      end
      inherited PlRodaPe: TPanel
        Top = 492
        Width = 1259
        Height = 304
        BorderWidth = 2
        Visible = True
        ExplicitTop = 492
        ExplicitWidth = 1259
        ExplicitHeight = 304
        object PlTotal: TPanel
          Left = 2
          Top = 261
          Width = 1255
          Height = 41
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object GBTotalABaixar: TGroupBox
            Left = 1165
            Top = 0
            Width = 90
            Height = 41
            Align = alRight
            Caption = ' TOTAL R$'
            TabOrder = 0
            object ltetotal: TDBEdit
              Left = 2
              Top = 16
              Width = 86
              Height = 23
              Align = alClient
              Color = 12615680
              DataField = 'ltetotal'
              DataSource = Dlte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 22
            end
          end
          object GBDescontoABaixar: TGroupBox
            Left = 805
            Top = 0
            Width = 120
            Height = 41
            Align = alRight
            Caption = ' Descontos R$'
            TabOrder = 1
            object bdiluirdesconto: TButton
              Left = 78
              Top = 16
              Width = 40
              Height = 23
              Align = alRight
              Caption = 'Diluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object ltedesconto: TDBEdit
              Left = 2
              Top = 16
              Width = 76
              Height = 23
              Align = alClient
              Color = 12615680
              DataField = 'ltedesconto'
              DataSource = Dlte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              ExplicitHeight = 22
            end
          end
          object GBJurosABaixar: TGroupBox
            Left = 1045
            Top = 0
            Width = 120
            Height = 41
            Align = alRight
            Caption = ' Juros R$'
            TabOrder = 2
            object bajustarjuros: TButton
              Left = 68
              Top = 16
              Width = 50
              Height = 23
              Align = alRight
              Caption = 'Ajustar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object ltejuros: TDBEdit
              Left = 2
              Top = 16
              Width = 66
              Height = 23
              Align = alClient
              Color = 12615680
              DataField = 'ltejuros'
              DataSource = Dlte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              ExplicitHeight = 22
            end
          end
          object GBPrincipalABaixar: TGroupBox
            Left = 725
            Top = 0
            Width = 80
            Height = 41
            Align = alRight
            Caption = ' Principal R$'
            TabOrder = 3
            object lteprincipal: TDBEdit
              Left = 2
              Top = 16
              Width = 76
              Height = 23
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              Color = 12615680
              DataField = 'lteprincipal'
              DataSource = Dlte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 22
            end
          end
          object PlBotoesRemover: TPanel
            Left = 0
            Top = 0
            Width = 465
            Height = 41
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 6
            TabOrder = 4
            object BRemoverTodos: TBitBtn
              Left = 6
              Top = 6
              Width = 110
              Height = 29
              Action = ActRemoverTodos
              Align = alLeft
              Caption = 'Remover Todos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object BRemoverSelecionado: TBitBtn
              Left = 116
              Top = 6
              Width = 145
              Height = 29
              Action = ActRemoverSelecionado
              Align = alLeft
              Caption = 'Remover Selecionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object btAjustar: TBitBtn
              Left = 379
              Top = 6
              Width = 65
              Height = 29
              Align = alLeft
              Caption = 'Ajustar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btAjustarClick
            end
            object bBaixaParcial: TBitBtn
              Left = 444
              Top = 6
              Width = 100
              Height = 29
              Align = alLeft
              Caption = 'Baixa Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              Visible = False
              OnClick = bBaixaParcialClick
            end
            object bAjustarTodos: TBitBtn
              Left = 279
              Top = 6
              Width = 100
              Height = 29
              Align = alLeft
              Caption = 'Ajustar Todos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = bAjustarTodosClick
            end
            object Panel1: TPanel
              Left = 261
              Top = 6
              Width = 18
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 5
            end
          end
          object GroupBox5: TGroupBox
            Left = 685
            Top = 0
            Width = 40
            Height = 41
            Align = alRight
            Caption = ' Qtde'
            TabOrder = 5
            object PlQtdeBaixa: TPanel
              Left = 2
              Top = 16
              Width = 36
              Height = 23
              Align = alClient
              BevelOuter = bvLowered
              Caption = '0'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GBMultasABaixar: TGroupBox
            Left = 925
            Top = 0
            Width = 120
            Height = 41
            Align = alRight
            Caption = ' Multas R$'
            TabOrder = 6
            object bajustarmultas: TButton
              Left = 68
              Top = 16
              Width = 50
              Height = 23
              Align = alRight
              Caption = 'Ajustar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object ltemulta: TDBEdit
              Left = 2
              Top = 16
              Width = 66
              Height = 23
              Align = alClient
              Color = 12615680
              DataField = 'ltemulta'
              DataSource = Dlte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              ExplicitHeight = 22
            end
          end
        end
        object GBselecionados: TGroupBox
          Left = 2
          Top = 2
          Width = 1255
          Height = 259
          Align = alClient
          Caption = ' Itens a serem quitados '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object DBGListaSelecionados: TDBGrid
            Left = 2
            Top = 15
            Width = 1251
            Height = 242
            Align = alClient
            Color = 16771797
            DataSource = Dvbaixa
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGListaSelecionadosDrawColumnCell
            OnDblClick = DBGListaSelecionadosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfiemissao'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfisaldocapital'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfipgtocapital'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfimulta'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfijuros'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfidescontos'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfisaldogeral'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfibaixado'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfiemaberto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfisituacao'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rdcnrauto'
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1259
        ExplicitWidth = 1259
        inherited PlBotaoFiltroEsp: TScrollBox
          Width = 499
          ExplicitWidth = 499
        end
      end
      inherited PlSelecao: TPanel
        Width = 1259
        ExplicitWidth = 1259
        inherited GBPlSelecao: TGroupBox
          Width = 1255
          ExplicitWidth = 1255
          inherited DBLista: TDBGrid
            Width = 1148
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1259
        Height = 358
        ExplicitWidth = 1259
        ExplicitHeight = 358
        inherited DBGLista: TDBGrid
          Width = 1259
          Height = 317
          Columns = <
            item
              Expanded = False
              FieldName = 'rfimarca'
              Width = 20
              Visible = True
            end
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
              Width = 300
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
              FieldName = 'rfidtultbaixa'
              Title.Caption = 'Ult.Pagto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidias'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixadocapital'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolnossonumero'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfiidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcnrauto'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 317
          Width = 1259
          Height = 41
          BevelOuter = bvNone
          BorderWidth = 2
          ParentBackground = False
          Visible = True
          ExplicitTop = 317
          ExplicitWidth = 1259
          ExplicitHeight = 41
          object plbotoesincluir: TPanel
            Left = 2
            Top = 2
            Width = 439
            Height = 37
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 0
            object BIncluirTodos: TBitBtn
              Left = 4
              Top = 4
              Width = 110
              Height = 29
              Action = ActIncluirTodos
              Align = alLeft
              Caption = 'Incluir Todos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object BIncluirSelecionado: TBitBtn
              Left = 114
              Top = 4
              Width = 150
              Height = 29
              Action = ActIncluirSelecionado
              Align = alLeft
              Caption = 'Incluir Selecionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object bBuscaClientes: TBitBtn
              Left = 264
              Top = 4
              Width = 100
              Height = 29
              Margins.Top = 5
              Margins.Bottom = 5
              Align = alLeft
              Caption = 'Busca Clientes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Visible = False
              OnClick = bBuscaClientesClick
            end
            object mostra: TProgressBar
              Left = 364
              Top = 4
              Width = 71
              Height = 29
              Align = alClient
              TabOrder = 3
            end
          end
          object GroupBox4: TGroupBox
            Left = 658
            Top = 2
            Width = 118
            Height = 37
            Align = alRight
            Caption = ' Principal R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlPrincipal: TPanel
              Left = 2
              Top = 16
              Width = 114
              Height = 19
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 776
            Top = 2
            Width = 120
            Height = 37
            Align = alRight
            Caption = ' Descontos R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlDescont: TPanel
              Left = 2
              Top = 16
              Width = 116
              Height = 19
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = 1016
            Top = 2
            Width = 120
            Height = 37
            Align = alRight
            Caption = ' Juros R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object PlJuros: TPanel
              Left = 2
              Top = 16
              Width = 116
              Height = 19
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox1: TGroupBox
            Left = 1136
            Top = 2
            Width = 121
            Height = 37
            Align = alRight
            Caption = ' TOTAL R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object PlTot: TPanel
              Left = 2
              Top = 16
              Width = 117
              Height = 19
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              PopupMenu = PMGerador
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            Left = 618
            Top = 2
            Width = 40
            Height = 37
            Align = alRight
            Caption = ' Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object PlQtdeRest: TPanel
              Left = 2
              Top = 16
              Width = 36
              Height = 19
              Align = alClient
              BevelOuter = bvLowered
              Caption = '0'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 896
            Top = 2
            Width = 120
            Height = 37
            Align = alRight
            Caption = ' Multas R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object PlMultas: TPanel
              Left = 2
              Top = 16
              Width = 116
              Height = 19
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            Left = 441
            Top = 2
            Width = 110
            Height = 37
            Align = alLeft
            Caption = ' Data Liquida'#231#227'o'
            TabOrder = 7
            object diabaixa: TDateTimePicker
              Left = 2
              Top = 15
              Width = 106
              Height = 20
              Align = alClient
              Date = 42413.000000000000000000
              Time = 0.873898946760164100
              Color = 8454143
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TabStop = False
              ExplicitHeight = 21
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1403
      ExplicitWidth = 1403
      inherited plid: TPanel
        Left = 953
        ExplicitLeft = 953
      end
      inherited PlSair: TPanel
        Left = 1197
        ExplicitLeft = 1197
      end
    end
  end
  inherited acoes: TActionList
    Left = 764
    object ActIncluirTodos: TAction [10]
      Tag = 99999999
      Category = 'Manuten'#231#227'o'
      Caption = 'Incluir Todos'
      ImageIndex = 10
      OnExecute = ActIncluirTodosExecute
    end
    object ActIncluirSelecionado: TAction [11]
      Tag = 99999999
      Category = 'Manuten'#231#227'o'
      Caption = 'Incluir Selecionado'
      ImageIndex = 11
      OnExecute = ActIncluirSelecionadoExecute
    end
    object ActRemoverTodos: TAction [12]
      Tag = 99999999
      Category = 'Manuten'#231#227'o'
      Caption = 'Remover Todos'
      ImageIndex = 13
      OnExecute = ActRemoverTodosExecute
    end
    object ActRemoverSelecionado: TAction [13]
      Tag = 99999999
      Category = 'Manuten'#231#227'o'
      Caption = 'Remover Selecionado'
      ImageIndex = 12
      OnExecute = ActRemoverSelecionadoExecute
    end
  end
  inherited DSTabela: TUniDataSource
    DataSet = tabela
    Left = 232
    Top = 176
  end
  inherited MenuManutencao: TPopupMenu
    Left = 308
    Top = 144
  end
  inherited mdl: TUniQuery
    Left = 608
    Top = 208
  end
  inherited dau: TUniQuery
    Left = 728
    Top = 200
  end
  inherited act: TUniQuery
    Left = 540
    Top = 208
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT rfi.rfichave'
      '     , rfi.etdcodigo'
      '     , rfi.tfdcodigo'
      '     , rfi.flacodigo'
      '     , rfi.tficodigo'
      '     , rfi.bcocodigo'
      '     , rfi.carcodigo'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfihistorico'
      '     , rfi.srfidentificacao'
      '     , rfi.srfcodigo'
      '     , rfi.frrcodigo'
      '     , rfi.rfipercmesmora'
      '     , rfi.rfirepetir'
      '     , rfi.rfiprevisao'
      '     , rfi.rfivalorparcela'
      '     , rfi.moecodigo'
      '     , rfi.rfidatadesc'
      '     , rfi.rfivalodesc'
      '     , rfi.rfidatamulta'
      '     , rfi.rfipercmulta'
      '     , rfi.rfivalomulta'
      '     , rfi.etdidentificacao'
      '     , rfi.tfiidentificacao'
      '     , rfi.caridentificacao'
      '     , rfi.rfidtultbaixa'
      '     , rfi.rfidias'
      '     , rfi.rfibaixadocapital'
      '     , rfi.rfisaldocapital'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , rfi.rfimoradia'
      '     , rfi.bconome'
      '     , rfi.titcodigo'
      '     , rfi.SaldoJurosMora AS rfisaldomora'
      '     , rfi.bolnossonumero'
      '     , rfi.rfimarca'
      
        '     , (select meschave from rfm where rfm.rfichave=rfi.rfichave' +
        '  limit 1) meschave'
      '     , rfi.rdcnrauto'
      'FROM v_rfi rfi,etd, rfi r'
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      'and rfi.etdcodigo=etd.etdcodigo '
      'and rfi.rfichave=r.rfichave'
      'AND rfi.srfcodigo IN (0, 1)'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        ':clbcodigo )')
    BeforeOpen = uqtabelaBeforeOpen
    Left = 408
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object uqtabelarfichave: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'rfichave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'etdidentificacao'
      Size = 80
    end
    object uqtabelarfinumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'rfinumero'
    end
    object uqtabelarfiemissao: TDateField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'rfiemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelarfihistorico: TStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object uqtabelarfidtultbaixa: TDateField
      FieldName = 'rfidtultbaixa'
    end
    object uqtabelarfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object uqtabelarfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelasrfcodigo: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object uqtabelarfivalor: TFloatField
      DisplayLabel = 'Valor Principal'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfisaldocapital: TFloatField
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfisaldogeral: TFloatField
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelardcnrauto: TStringField
      FieldName = 'rdcnrauto'
    end
    object uqtabelabolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
    object uqtabelarfimarca: TIntegerField
      FieldName = 'rfimarca'
    end
    object uqtabelatfiidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tfiidentificacao'
      Size = 35
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Fla'
      FieldName = 'flacodigo'
    end
    object uqtabelarfisaldomora: TFloatField
      FieldName = 'rfisaldomora'
    end
    object uqtabelameschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  inherited cau: TUniQuery
    Left = 872
    Top = 132
  end
  inherited cca: TUniQuery
    Left = 780
    Top = 208
  end
  inherited cpg: TUniQuery
    Left = 328
  end
  inherited vcls: TVirtualTable
    Left = 560
    Top = 168
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Top = 397
  end
  inherited rel: TUniQuery
    Left = 424
    Top = 280
  end
  inherited Dfmd: TDataSource
    Left = 856
    Top = 291
  end
  inherited FechaFiltro: TTimer
    Left = 230
  end
  inherited XMLDocument1: TXMLDocument
    Left = 760
    Top = 373
  end
  object lte: TUniQuery
    SQL.Strings = (
      
        'select  ltechave, tfdcodigo, ltedata, lteprincipal, ltejuros, lt' +
        'edesconto, ltetotal, lteextenso,  ltehistorico,ltemulta, ccxchav' +
        'e from lte where ltechave=:ltechave')
    AfterInsert = lteAfterInsert
    Left = 920
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object lteltedata: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'ltedata'
      EditMask = '!99/99/9999;1;_'
    end
    object ltelteprincipal: TFloatField
      FieldName = 'lteprincipal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltejuros: TFloatField
      FieldName = 'ltejuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltedesconto: TFloatField
      FieldName = 'ltedesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object lteltetotal: TFloatField
      FieldName = 'ltetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
    object lteltehistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ltehistorico'
      Size = 100
    end
    object lteltemulta: TFloatField
      FieldName = 'ltemulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object lteccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
  end
  object Dlte: TUniDataSource
    DataSet = lte
    Left = 916
    Top = 204
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT mfichave'
      '     , rfichave'
      '     , tmfcodigo'
      '     , moecodigo'
      '     , mfivalor'
      '     , mfidata'
      '     , mfihistorico'
      '     , mfivalorori'
      '     , mfiparcela'
      '     , flacodigo'
      '  FROM mfi'
      ' WHERE mfi.mfichave = :mfichave')
    Left = 600
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mfichave'
        Value = nil
      end>
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 80
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'select  mltchave, mfichave, ltechave from mlt limit 1')
    Left = 684
    Top = 220
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object extrfi: TUniQuery
    SQL.Strings = (
      'CALL extratoRFI(:vtfdcdigo)')
    Left = 348
    Top = 213
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vtfdcdigo'
        ParamType = ptInput
        Value = nil
      end>
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfg.cfgdtinictb'
      '     , cfg.cfgusactb'
      '     , cfg.cfgusabol'
      '     , cfg.cfgdatapadrao'
      '     , cfgctbusaccg'
      '     , ccgmultajuros'
      'FROM cfg, cfgmctb'
      '   where flacodigo=:flacodigo'
      '     AND cfg.cfgcodigo=cfgmctb.cfgcodigo')
    Left = 576
    Top = 396
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgusabol: TIntegerField
      FieldName = 'cfgusabol'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgccgmultajuros: TIntegerField
      FieldName = 'ccgmultajuros'
    end
  end
  object tabela: TVirtualTable
    Filtered = True
    Filter = 'incluido=0'
    IndexFieldNames = 'rfivencimento'
    Left = 288
    Top = 216
    Data = {04000000000000000000}
    object tabelarfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object tabelaetdcodigo: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'etdcodigo'
    end
    object tabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object tabelarfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object tabelarfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object tabelarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object tabelarfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object tabelarfidtultbaixa: TDateField
      DisplayLabel = 'Dt. Pgto'
      FieldName = 'rfidtultbaixa'
    end
    object tabelarfidias: TIntegerField
      DisplayLabel = 'Atraso'
      DisplayWidth = 6
      FieldName = 'rfidias'
    end
    object tabelarfimoradia: TFloatField
      DisplayLabel = 'Mora dia R$'
      FieldName = 'rfimoradia'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelabcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object tabelasrfcodigo: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object tabelarfivalor: TFloatField
      DisplayLabel = 'Vlr. Principal'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelarfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tabelardcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
    end
    object tabelabolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
    object tabelarfimarca: TIntegerField
      DisplayLabel = 'M'
      FieldName = 'rfimarca'
    end
    object tabelatfiidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tfiidentificacao'
      Size = 35
    end
    object tabelaincluido: TIntegerField
      FieldName = 'incluido'
    end
    object tabelarfisaldomora: TFloatField
      FieldName = 'rfisaldomora'
    end
    object tabelameschave: TIntegerField
      DisplayLabel = 'Nr,Venda'
      FieldName = 'meschave'
    end
  end
  object vbaixa: TVirtualTable
    IndexFieldNames = 'rfivencimento, rfiemissao, rfichave'
    Left = 708
    Top = 516
    Data = {04000000000000000000}
    object vbaixarfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object vbaixaetdcodigo: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'etdcodigo'
    end
    object vbaixaetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object vbaixarfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object vbaixarfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object vbaixarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object vbaixarfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 100
    end
    object vbaixarfidtultbaixa: TDateField
      DisplayLabel = 'Dt. Rcto'
      FieldName = 'rfidtultbaixa'
    end
    object vbaixarfidias: TIntegerField
      FieldName = 'rfidias'
    end
    object vbaixarfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object vbaixabcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object vbaixarfisituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'rfisituacao'
      Size = 15
    end
    object vbaixarfivalor: TFloatField
      DisplayLabel = 'Vlr. Principal'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfijuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfidescontos: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'rfidescontos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixardcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
    end
    object vbaixarfimoraoriginal: TFloatField
      FieldName = 'rfimoraoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimorarecebida: TFloatField
      FieldName = 'rfimorarecebida'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimoradispensada: TFloatField
      FieldName = 'rfimoradispensada'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimultaoriginal: TFloatField
      FieldName = 'rfimultaoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimultarecebida: TFloatField
      FieldName = 'rfimultarecebida'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimultadispensada: TFloatField
      FieldName = 'rfimultadispensada'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfibaixado: TFloatField
      DisplayLabel = 'Total Baixa'
      FieldName = 'rfibaixado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfiemaberto: TFloatField
      DisplayLabel = 'Saldo Baixa'
      FieldName = 'rfiemaberto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfipgtocapital: TFloatField
      DisplayLabel = 'Baixa Capital'
      FieldName = 'rfipgtocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfidescoriginal: TFloatField
      FieldName = 'rfidescoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfidiferenca: TFloatField
      FieldName = 'rfidiferenca'
    end
    object vbaixarfisaldomora: TFloatField
      FieldName = 'rfisaldomora'
    end
  end
  object Dvbaixa: TUniDataSource
    DataSet = vbaixa
    Left = 756
    Top = 516
  end
  object ConsultaMfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfi.mfichave'
      'FROM mfi,'
      '     mlt,'
      '     lte'
      'WHERE mfi.mfichave = mlt.mfichave'
      'AND mlt.ltechave = lte.ltechave'
      'AND mfi.tmfcodigo = :tmfcodigo'
      'AND mfi.rfichave = :rfichave'
      'AND lte.ltechave = :ltechave')
    Left = 608
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
  end
  object IdentificaBaixa: TUniQuery
    Left = 856
    Top = 592
  end
  object PMGerador: TPopupMenu
    Left = 1005
    Top = 462
    object mGerador: TMenuItem
      Caption = 'Gerador'
      OnClick = mGeradorClick
    end
  end
  object VTBaixaLte: TVirtualTable
    Left = 988
    Top = 548
    Data = {04000000000000000000}
    object VTBaixaLterfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object VTBaixaLteetdcodigo: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'etdcodigo'
    end
    object VTBaixaLteetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object VTBaixaLterfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object VTBaixaLterfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object VTBaixaLterfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object VTBaixaLterfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 100
    end
    object VTBaixaLterfidtultbaixa: TDateField
      DisplayLabel = 'Dt. Rcto'
      FieldName = 'rfidtultbaixa'
    end
    object VTBaixaLterfidias: TIntegerField
      FieldName = 'rfidias'
    end
    object VTBaixaLterfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object VTBaixaLtebcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object VTBaixaLterfisituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'rfisituacao'
      Size = 15
    end
    object VTBaixaLterfivalor: TFloatField
      DisplayLabel = 'Vlr. Principal'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfijuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfidescontos: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'rfidescontos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterdcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
    end
    object VTBaixaLterfimoraoriginal: TFloatField
      FieldName = 'rfimoraoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimorarecebida: TFloatField
      FieldName = 'rfimorarecebida'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimoradispensada: TFloatField
      FieldName = 'rfimoradispensada'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimultaoriginal: TFloatField
      FieldName = 'rfimultaoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimultarecebida: TFloatField
      FieldName = 'rfimultarecebida'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfimultadispensada: TFloatField
      FieldName = 'rfimultadispensada'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfibaixado: TFloatField
      DisplayLabel = 'Total Baixa'
      FieldName = 'rfibaixado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfiemaberto: TFloatField
      DisplayLabel = 'Saldo Baixa'
      FieldName = 'rfiemaberto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfipgtocapital: TFloatField
      DisplayLabel = 'Baixa Capital'
      FieldName = 'rfipgtocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfidescoriginal: TFloatField
      FieldName = 'rfidescoriginal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object VTBaixaLterfidiferenca: TFloatField
      FieldName = 'rfidiferenca'
    end
    object VTBaixaLterfisaldomora: TFloatField
      FieldName = 'rfisaldomora'
    end
    object VTBaixaLteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object VTBaixaLteQtdRegistros: TIntegerField
      FieldName = 'QtdRegistros'
    end
  end
  object DVTBaixaLte: TUniDataSource
    DataSet = VTBaixaLte
    Left = 1061
    Top = 566
  end
  object cltv: TUniQuery
    SQL.Strings = (
      'select ccochave from clt limit 0')
    Left = 368
    Top = 404
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcidentificacao,'
      '  etdcodigo'
      'FROM adc')
    Left = 504
    Top = 512
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcidentificacao: TStringField
      FieldName = 'adcidentificacao'
      Size = 50
    end
    object adcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let limit 0')
    Left = 592
    Top = 648
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object mcgrfi: TUniQuery
    SQL.Strings = (
      'SELECT  distinct'
      '  rfi.rfichave,'
      ''
      '  mfivalor mfivalor,'
      '  mcg.ccgcodigo,'
      '  mcgvalor,'
      
        '  (SELECT v_rfi.rfisaldocapital  FROM v_rfi where v_rfi.rfichave' +
        '=rfi.rfichave) rfivalor,'
      '  mfi.tmfcodigo,'
      '  mcgcompetencia'
      ''
      'FROM rfi'
      '       JOIN mfi'
      
        '         ON rfi.rfichave = mfi.rfichave  AND mfi.tmfcodigo NOT I' +
        'N (12,13)'
      '       JOIN mlt  ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte  ON mlt.ltechave = lte.ltechave'
      '  JOIN mcg'
      '    ON rfi.titcodigo = mcg.mcgchaveorigem'
      '    AND mcg.rfichave = rfi.rfichave'
      '    AND mcg.mcgtabela = '#39'rfi'#39
      '     '
      'WHERE '
      '  lte.ltechave = :ltechave'
      ' AND mcg.ccgcodigo NOT IN (SELECT ccgmultajuros FROM cfgmctb)'
      'order by rfi.rfichave'
      ''
      ''
      '')
    Left = 672
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object mcgrfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mcgrfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mcgrficcgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgrfimcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgrfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object mcgrfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mcgrfimcgcompetencia: TStringField
      FieldName = 'mcgcompetencia'
      Size = 10
    end
  end
  object mcg: TUniQuery
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
    Left = 674
    Top = 683
    object mcgmcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgmcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgmcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgmcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 50
    end
    object mcgmcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgmcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgmcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mcgmcgcompetencia: TStringField
      FieldName = 'mcgcompetencia'
      Size = 10
    end
  end
  object rfi: TUniQuery
    Left = 674
    Top = 570
  end
end
