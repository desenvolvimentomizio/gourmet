inherited frachd: Tfrachd
  Width = 1494
  Height = 913
  ExplicitWidth = 1494
  ExplicitHeight = 913
  inherited PlGeral: TPanel
    Width = 1494
    Height = 913
    ExplicitWidth = 1494
    ExplicitHeight = 913
    inherited SplBotoes: TSplitter
      Height = 893
      ExplicitHeight = 894
    end
    inherited PlBotoes: TPanel
      Height = 893
      ExplicitHeight = 893
      inherited ImageLogoBase: TImage
        Top = 814
        ExplicitTop = 495
      end
      inherited PlInfo: TPanel
        Top = 875
        ExplicitTop = 875
      end
      inherited SBBotoes: TScrollBox
        Height = 814
        ExplicitHeight = 814
        object plresumos: TPanel
          Left = 0
          Top = 691
          Width = 139
          Height = 123
          Align = alBottom
          BorderWidth = 4
          TabOrder = 0
          Visible = False
          object Panel7: TPanel
            Left = 5
            Top = 5
            Width = 129
            Height = 16
            Align = alTop
            Caption = 'Situa'#231#227'o do Dia'
            TabOrder = 0
          end
          object DBGridResumo1: TDBGrid
            Left = 5
            Top = 69
            Width = 129
            Height = 49
            Align = alBottom
            DataSource = Dresumo1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'situacao'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Width = 50
                Visible = True
              end>
          end
          object DBGrid1: TDBGrid
            Left = 5
            Top = 21
            Width = 129
            Height = 48
            Align = alClient
            DataSource = Dresumo2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'situacao'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Width = 50
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 524
          Width = 139
          Height = 167
          Align = alBottom
          BorderWidth = 4
          Caption = 'Panel3'
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 5
            Top = 5
            Width = 129
            Height = 157
            Align = alClient
            DataSource = Dtcm
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'tcmidentificacao'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtda'
                Width = 30
                Visible = True
              end>
          end
        end
        object plregimetributario: TPanel
          Left = 0
          Top = 427
          Width = 139
          Height = 97
          Align = alBottom
          BorderWidth = 4
          TabOrder = 2
          Visible = False
          object ctdidentificacao: TDBEdit
            Left = 5
            Top = 25
            Width = 129
            Height = 21
            CustomHint = fchd.BalloonHint
            Align = alTop
            DataField = 'ctdidentificacao'
            DataSource = Dclr
            ReadOnly = True
            TabOrder = 0
          end
          object pltopregimetribitario: TPanel
            Left = 5
            Top = 5
            Width = 129
            Height = 20
            Align = alTop
            Caption = ' Dados Tribut'#225'rios'
            TabOrder = 1
          end
          object crtidentificacao: TDBEdit
            Left = 5
            Top = 46
            Width = 129
            Height = 21
            Align = alTop
            DataField = 'crtidentificacao'
            DataSource = Dclr
            ReadOnly = True
            TabOrder = 2
          end
          object talidentificacao: TDBEdit
            Left = 5
            Top = 67
            Width = 129
            Height = 21
            Align = alTop
            DataField = 'talidentificacao'
            DataSource = Dclr
            ReadOnly = True
            TabOrder = 3
          end
        end
      end
    end
    inherited PlLista: TPanel
      Width = 1350
      Height = 893
      ExplicitWidth = 1350
      ExplicitHeight = 893
      inherited SplLista: TSplitter
        Top = 728
        Width = 1350
        Height = 8
        Visible = True
        ExplicitTop = 728
        ExplicitWidth = 1350
        ExplicitHeight = 8
      end
      inherited SpFilter: TSplitter
        Width = 1350
        ExplicitWidth = 1350
      end
      inherited PlRodaPe: TPanel
        Top = 736
        Width = 1350
        Height = 157
        Visible = True
        ExplicitTop = 736
        ExplicitWidth = 1350
        ExplicitHeight = 157
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 209
          Height = 157
          Align = alLeft
          Caption = ' Descri'#231#227'o do Chamado '
          TabOrder = 0
          object chddescricao: TDBMemo
            Left = 2
            Top = 15
            Width = 205
            Height = 140
            TabStop = False
            Align = alClient
            Color = 12320767
            DataField = 'chddescricao'
            DataSource = DSTabela
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 209
          Top = 0
          Width = 617
          Height = 157
          Align = alClient
          Caption = ' '#218'ltimos Tramites '
          TabOrder = 1
          object DBGtch: TDBGrid
            Left = 2
            Top = 15
            Width = 613
            Height = 140
            Align = alClient
            Color = 14155743
            DataSource = dtch
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGtchDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'trcregistro'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chdchave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'trcdescricao'
                Visible = True
              end>
          end
        end
        object plestagios: TPanel
          Left = 826
          Top = 0
          Width = 240
          Height = 157
          Align = alRight
          BorderWidth = 2
          TabOrder = 2
          object Panel2: TPanel
            Left = 3
            Top = 3
            Width = 234
            Height = 24
            Align = alTop
            Caption = 'Mudan'#231'as de Est'#225'dio'
            Color = 19432
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object DBCtrlGridEstagios: TDBCtrlGrid
            Left = 3
            Top = 27
            Width = 234
            Height = 127
            Align = alClient
            Color = 12049407
            DataSource = Dsech
            PanelHeight = 42
            PanelWidth = 217
            ParentColor = False
            TabOrder = 1
            object echregistro: TDBEdit
              Left = 4
              Top = 6
              Width = 125
              Height = 21
              BorderStyle = bsNone
              Color = 12049407
              DataField = 'echregistro'
              DataSource = Dsech
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 135
              Top = 6
              Width = 68
              Height = 22
              BorderStyle = bsNone
              Color = 12049407
              DataField = 'clbidentificacao'
              DataSource = Dsech
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 4
              Top = 30
              Width = 197
              Height = 21
              BorderStyle = bsNone
              Color = 12049407
              DataField = 'tecidentificacao'
              DataSource = Dsech
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object plramais: TPanel
          Left = 1066
          Top = 0
          Width = 284
          Height = 157
          Align = alRight
          TabOrder = 3
        end
      end
      inherited PlFiltros: TPanel
        Width = 1350
        ExplicitWidth = 1350
        inherited BvlSeparador: TBevel
          Left = 1027
          ExplicitLeft = 911
        end
        inherited PlEdTextoBusca: TPanel
          Left = 1
          ExplicitLeft = 1
        end
        inherited PlBotaoFiltro: TPanel
          Left = 301
          ExplicitLeft = 301
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Left = 381
          Enabled = True
          Visible = True
          ExplicitLeft = 381
        end
        inherited PlBotaoFiltroEsp: TScrollBox
          Left = 834
          Width = 190
          ExplicitLeft = 834
          ExplicitWidth = 190
        end
        inherited plseparador: TPanel
          Width = 1
          ExplicitWidth = 1
        end
      end
      inherited PlSelecao: TPanel
        Width = 1350
        ExplicitWidth = 1350
        inherited GBPlSelecao: TGroupBox
          Width = 1346
          ExplicitWidth = 1346
          inherited DBLista: TDBGrid
            Width = 1239
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1350
        Height = 599
        Caption = ''
        ExplicitWidth = 1350
        ExplicitHeight = 599
        inherited DBGLista: TDBGrid
          Width = 145
          Height = 556
          Align = alNone
          Columns = <
            item
              Expanded = False
              FieldName = 'chdchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etftelefone'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chdidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chdregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcmidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpridentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttcidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tsoidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tecidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdapelido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chddata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chddataatendimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbresponsavel'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 597
          Width = 1350
          Height = 2
          ExplicitTop = 597
          ExplicitWidth = 1350
          ExplicitHeight = 2
        end
        object plLigacoes: TPanel [2]
          Left = 957
          Top = 0
          Width = 393
          Height = 597
          Align = alRight
          TabOrder = 2
          object Splitter2: TSplitter
            Left = 1
            Top = 295
            Width = 391
            Height = 8
            Cursor = crVSplit
            Align = alBottom
            AutoSnap = False
            Beveled = True
            ExplicitLeft = 3
            ExplicitTop = 215
          end
          object Panel1: TPanel
            Left = 1
            Top = 1
            Width = 391
            Height = 32
            Align = alTop
            BorderWidth = 4
            TabOrder = 0
            object btConectaCentral: TButton
              Left = 230
              Top = 5
              Width = 75
              Height = 22
              Align = alRight
              Caption = 'Conectar'
              TabOrder = 0
              OnClick = btConectaCentralClick
            end
            object btDesconectarCentral: TButton
              Left = 305
              Top = 5
              Width = 81
              Height = 22
              Align = alRight
              Caption = 'Desconectar'
              TabOrder = 1
              OnClick = btDesconectarCentralClick
            end
            object plRelogio: TPanel
              Left = 5
              Top = 5
              Width = 84
              Height = 22
              Align = alLeft
              BevelOuter = bvNone
              Caption = '00:00:00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object Memo: TMemo
            Left = 1
            Top = 549
            Width = 391
            Height = 47
            Align = alBottom
            Color = clInfoBk
            Lines.Strings = (
              'Memo')
            TabOrder = 1
            Visible = False
          end
          object plTelefone: TPanel
            Left = 1
            Top = 33
            Width = 391
            Height = 39
            Align = alTop
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object plDiscador: TPanel
              Left = 1
              Top = 6
              Width = 389
              Height = 32
              Align = alBottom
              BevelOuter = bvLowered
              BorderWidth = 4
              TabOrder = 0
              object PhoneE: TEdit
                Left = 97
                Top = 5
                Width = 157
                Height = 22
                Align = alClient
                Color = clYellow
                TabOrder = 0
                OnKeyUp = PhoneEKeyUp
                ExplicitHeight = 21
              end
              object btDiscar: TButton
                Left = 254
                Top = 5
                Width = 65
                Height = 22
                Align = alRight
                Caption = 'Discar'
                TabOrder = 1
                OnClick = btDiscarClick
              end
              object btAtender: TButton
                Left = 319
                Top = 5
                Width = 65
                Height = 22
                Align = alRight
                Caption = 'Atender'
                TabOrder = 2
                OnClick = btAtenderClick
              end
              object Panel4: TPanel
                Left = 5
                Top = 5
                Width = 92
                Height = 22
                Align = alLeft
                BevelOuter = bvNone
                Caption = 'N'#250'mero:'
                TabOrder = 3
              end
            end
          end
          object DBGridLigacoes: TDBGrid
            Left = 1
            Top = 72
            Width = 391
            Height = 223
            Align = alClient
            DataSource = dsstirlg
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridLigacoesDrawColumnCell
            OnEnter = DBGridLigacoesEnter
            OnExit = DBGridLigacoesExit
            Columns = <
              item
                Expanded = False
                FieldName = 'rlgregistro'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rlginicio'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chdchave'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rlgbinagem'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Title.Caption = 'Atendeu'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rlgfinal'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rlttipo'
                Width = 55
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 1
            Top = 517
            Width = 391
            Height = 32
            Align = alBottom
            BorderWidth = 4
            TabOrder = 4
            object btGerarChamado: TButton
              Left = 5
              Top = 5
              Width = 100
              Height = 22
              Align = alLeft
              Caption = 'NOVO Chamado'
              TabOrder = 0
              OnClick = btGerarChamadoClick
            end
            object btGerarTramite: TButton
              Left = 105
              Top = 5
              Width = 184
              Height = 22
              Align = alLeft
              Caption = 'TRAMITE no chamado selecionado'
              TabOrder = 1
              OnClick = btGerarTramiteClick
            end
            object btDiversa: TButton
              Left = 320
              Top = 5
              Width = 66
              Height = 22
              Align = alRight
              Caption = 'Diversa'
              TabOrder = 2
              OnClick = btDiversaClick
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 442
            Width = 391
            Height = 75
            Align = alBottom
            TabOrder = 5
            object GroupBox1: TGroupBox
              Left = 1
              Top = 1
              Width = 389
              Height = 73
              Align = alClient
              Caption = ' Descri'#231#227'o da Liga'#231#227'o'
              TabOrder = 0
              object rlgdescricao: TDBMemo
                Left = 2
                Top = 15
                Width = 385
                Height = 56
                Align = alClient
                DataField = 'rlgdescricao'
                DataSource = dsstirlg
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object plresumoligacao: TPanel
            Left = 1
            Top = 414
            Width = 391
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 6
            object Label8: TLabel
              Left = 4
              Top = 7
              Width = 140
              Height = 13
              Caption = 'Recebidas/Atribuidas no dia: '
            end
            object Label9: TLabel
              Left = 241
              Top = 6
              Width = 97
              Height = 13
              Caption = 'Liga'#231#245'es Pendente: '
            end
            object pltotaisligacao: TPanel
              Left = 344
              Top = 4
              Width = 43
              Height = 20
              Align = alRight
              BevelOuter = bvLowered
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object pldialigacao: TPanel
              Left = 150
              Top = 4
              Width = 39
              Height = 20
              BevelOuter = bvLowered
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = pldialigacaoClick
            end
            object pldialigacaoatribuidas: TPanel
              Left = 196
              Top = 4
              Width = 39
              Height = 20
              BevelOuter = bvLowered
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object DBGrid3: TDBGrid
            Left = 1
            Top = 303
            Width = 391
            Height = 111
            Align = alBottom
            DataSource = dsSnep
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid3DblClick
            OnEnter = DBGrid3Enter
            OnExit = DBGrid3Exit
            Columns = <
              item
                Expanded = False
                FieldName = 'calldate'
                Title.Caption = 'Registro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clid'
                Title.Caption = 'Identifica'#231#227'o'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'src'
                Title.Caption = 'Origem'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dst'
                Title.Caption = 'Destino'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'userfield'
                Visible = True
              end>
          end
        end
        object plGriChamados: TPanel [3]
          Left = 721
          Top = 0
          Width = 236
          Height = 597
          Align = alRight
          Caption = 'plGriChamados'
          TabOrder = 3
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 1
            Top = 1
            Width = 1
            Height = 595
            Align = alClient
            Color = clWhite
            DataSource = DSTabela
            PanelHeight = 119
            PanelWidth = 1
            ParentColor = False
            TabOrder = 0
            RowCount = 5
            Visible = False
            OnPaintPanel = DBCtrlGrid1PaintPanel
            object Label1: TLabel
              Left = 5
              Top = 5
              Width = 53
              Height = 13
              Caption = 'Chamado'
              FocusControl = chdchave
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 112
              Top = 5
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = etdidentificacao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 380
              Top = 5
              Width = 49
              Height = 13
              Caption = 'Telefone'
              FocusControl = etftelefone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 26
              Top = 22
              Width = 32
              Height = 13
              Caption = 'T'#237'tulo'
              FocusControl = chdidentificacao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 17
              Top = 39
              Width = 41
              Height = 13
              Caption = 'Est'#225'gio'
              FocusControl = tecidentificacao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 243
              Top = 39
              Width = 24
              Height = 13
              Caption = 'Tipo'
              FocusControl = ttcidentificacao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 403
              Top = 39
              Width = 72
              Height = 13
              Caption = 'Respons'#225'vel'
              FocusControl = clbidentificacao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object chdchave: TDBEdit
              Left = 64
              Top = 5
              Width = 42
              Height = 16
              BevelOuter = bvNone
              BorderStyle = bsNone
              DataField = 'chdchave'
              DataSource = DSTabela
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object etdidentificacao: TDBEdit
              Left = 158
              Top = 5
              Width = 216
              Height = 16
              BevelOuter = bvNone
              BorderStyle = bsNone
              DataField = 'etdidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 1
            end
            object etftelefone: TDBEdit
              Left = 435
              Top = 5
              Width = 73
              Height = 16
              BevelOuter = bvNone
              BorderStyle = bsNone
              DataField = 'etftelefone'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 2
            end
            object chdidentificacao: TDBEdit
              Left = 64
              Top = 21
              Width = 444
              Height = 17
              BorderStyle = bsNone
              DataField = 'chdidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 3
            end
            object DBMemo1: TDBMemo
              Left = 64
              Top = 60
              Width = 529
              Height = 69
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = 13041663
              DataField = 'chddescricao'
              DataSource = DSTabela
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 4
            end
            object tpridentificacao: TDBEdit
              Left = 514
              Top = 5
              Width = 79
              Height = 16
              BorderStyle = bsNone
              DataField = 'tpridentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 5
            end
            object tcmidentificacao: TDBEdit
              Left = 514
              Top = 22
              Width = 79
              Height = 16
              BorderStyle = bsNone
              DataField = 'tcmidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 6
            end
            object tecidentificacao: TDBEdit
              Left = 64
              Top = 38
              Width = 163
              Height = 16
              BorderStyle = bsNone
              DataField = 'tecidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 7
            end
            object ttcidentificacao: TDBEdit
              Left = 272
              Top = 38
              Width = 96
              Height = 16
              BorderStyle = bsNone
              DataField = 'ttcidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 8
            end
            object clbidentificacao: TDBEdit
              Left = 480
              Top = 38
              Width = 113
              Height = 16
              BorderStyle = bsNone
              DataField = 'clbidentificacao'
              DataSource = DSTabela
              ReadOnly = True
              TabOrder = 9
            end
          end
          object pldetalhechamados: TPanel
            Left = 2
            Top = 1
            Width = 233
            Height = 595
            Align = alRight
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object Splitter1: TSplitter
              Left = 1
              Top = 431
              Width = 231
              Height = 3
              Cursor = crVSplit
              Align = alBottom
              AutoSnap = False
              Beveled = True
              MinSize = 3
              ExplicitTop = 273
            end
            object pltramites: TPanel
              Left = 1
              Top = 1
              Width = 231
              Height = 430
              Align = alClient
              Caption = 'pltramites'
              TabOrder = 0
              object DBCtrlGridTramites: TDBCtrlGrid
                Left = 1
                Top = 25
                Width = 229
                Height = 385
                Align = alClient
                Color = clWhite
                DataSource = DStrc
                PanelHeight = 128
                PanelWidth = 212
                ParentColor = False
                TabOrder = 0
                object DBEdit7: TDBEdit
                  Left = 4
                  Top = 2
                  Width = 126
                  Height = 15
                  BorderStyle = bsNone
                  DataField = 'trcregistro'
                  DataSource = DStrc
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 4210816
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object listatrcclbidentificacao: TDBEdit
                  Left = 136
                  Top = 2
                  Width = 72
                  Height = 15
                  BorderStyle = bsNone
                  DataField = 'clbidentificacao'
                  DataSource = DStrc
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 4210816
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBMemo2: TDBMemo
                  Left = 4
                  Top = 24
                  Width = 204
                  Height = 81
                  BorderStyle = bsNone
                  DataField = 'trcdescricao'
                  DataSource = DStrc
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 2
                end
              end
              object plTitulosTramites: TPanel
                Left = 1
                Top = 1
                Width = 229
                Height = 24
                Align = alTop
                Caption = 'Tramites'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object Panel10: TPanel
                Left = 1
                Top = 410
                Width = 229
                Height = 19
                Align = alBottom
                TabOrder = 2
                object btExcluirTramite: TButton
                  Left = 168
                  Top = 1
                  Width = 60
                  Height = 17
                  Align = alRight
                  Caption = 'Excluir'
                  TabOrder = 0
                  OnClick = btExcluirTramiteClick
                end
              end
            end
            object plRechamados: TPanel
              Left = 1
              Top = 434
              Width = 231
              Height = 160
              Align = alBottom
              TabOrder = 1
              object Panel9: TPanel
                Left = 1
                Top = 1
                Width = 229
                Height = 24
                Align = alTop
                Caption = 'Mudan'#231'as de Respons'#225'vel'
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
              object DBCtrlGridRch: TDBCtrlGrid
                Left = 1
                Top = 25
                Width = 229
                Height = 134
                Align = alClient
                Color = 16770222
                DataSource = Dsrch
                PanelHeight = 44
                PanelWidth = 212
                ParentColor = False
                TabOrder = 1
                object DBEdit3: TDBEdit
                  Left = 4
                  Top = 5
                  Width = 197
                  Height = 16
                  BorderStyle = bsNone
                  Color = 16770222
                  DataField = 'rchregistro'
                  DataSource = Dsrch
                  TabOrder = 0
                end
                object DBEdit4: TDBEdit
                  Left = 4
                  Top = 24
                  Width = 69
                  Height = 16
                  BorderStyle = bsNone
                  Color = 16770222
                  DataField = 'atribuiente'
                  DataSource = Dsrch
                  TabOrder = 1
                end
                object DBEdit5: TDBEdit
                  Left = 119
                  Top = 24
                  Width = 85
                  Height = 16
                  BorderStyle = bsNone
                  Color = 16770222
                  DataField = 'clbidentificacao'
                  DataSource = Dsrch
                  TabOrder = 2
                end
                object Panel8: TPanel
                  Left = 88
                  Top = 19
                  Width = 20
                  Height = 21
                  BevelOuter = bvNone
                  Caption = '>>'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                end
              end
            end
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 4
        end
        object plQuadroSituacao: TPanel
          Left = 59
          Top = 242
          Width = 282
          Height = 308
          TabOrder = 5
          object plQuadros: TPanel
            Left = 1
            Top = 1
            Width = 280
            Height = 306
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1494
      ExplicitWidth = 1494
      inherited plid: TPanel
        Left = 1044
        ExplicitLeft = 1044
      end
      inherited PlSair: TPanel
        Left = 1288
        ExplicitLeft = 1288
      end
    end
  end
  inherited acoes: TActionList
    Left = 500
    Top = 516
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActTramitar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Tramitar'
      OnExecute = ActTramitarExecute
    end
    object ActPorNoQuadro: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Por No Quadro'
      OnExecute = ActPorNoQuadroExecute
    end
    object ActProgramacao: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Programa'#231#227'o'
      OnExecute = ActProgramacaoExecute
    end
    object ActLigacao: TAction [5]
      Category = 'Manuten'#231#227'o'
      Caption = 'Liga'#231#227'o'
      OnExecute = ActLigacaoExecute
    end
    object ActSoftPhone: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Softphone'
    end
    object ActEstagio: TAction
      Category = 'Chamados'
      Caption = 'Est'#225'gio'
      OnExecute = ActEstagioExecute
    end
    object ActAssumir: TAction
      Category = 'Chamados'
      Caption = 'Assumir'
      Enabled = False
    end
    object ActAtribuir: TAction
      Category = 'Chamados'
      Caption = 'Atribuir'
      OnExecute = ActAtribuirExecute
    end
    object spbTodos: TAction
      Category = 'Visualizar'
      Caption = 'Todos'
      GroupIndex = 15
      OnExecute = spbTodosExecute
    end
    object spbEmAberto: TAction
      Category = 'Visualizar'
      Caption = 'Em Aberto'
      GroupIndex = 15
      OnExecute = spbEmAbertoExecute
    end
    object spbEncerrados: TAction
      Category = 'Visualizar'
      Caption = 'Encerrados'
      GroupIndex = 15
      OnExecute = spbEncerradosExecute
    end
    object spbLista: TAction
      Category = 'Exibir'
      Caption = 'Lista'
      GroupIndex = 20
      OnExecute = spbListaExecute
    end
    object spbQuadro: TAction
      Category = 'Exibir'
      Caption = 'Quadro'
      GroupIndex = 20
      OnExecute = spbQuadroExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 272
    Top = 316
  end
  inherited cls: TUniQuery
    Top = 276
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  chd.chdchave,'
      '  tcmidentificacao,'
      '  chdidentificacao,'
      '  chd.ttccodigo,'
      '  chd.tcmcodigo,'
      '  chd.tprcodigo,'
      '  chdregistro,'
      '  chd.etdcodigo,'
      '  chd.tsoemail,'
      '  chddescricao,'
      '  etdidentificacao,'
      '  etdapelido,'
      '  ttcidentificacao,'
      '  tpridentificacao,'
      '  tsoidentificacao,'
      '  tec.tecidentificacao,'
      
        '  (SELECT  etftelefone from etf WHERE etf.etdcodigo=chd.etdcodig' +
        'o AND etf.ttfcodigo=1 LIMIT 1) etftelefone ,'
      
        '  (select clbidentificacao from clb where clbcodigo=vce.clbcodig' +
        'o) as clbresponsavel,'
      '  clbidentificacao,'
      '  tprcor,'
      '  tec.teccor,'
      '  tec.teccodigo,'
      '  tec.tecsituacao,'
      '  chddata,'
      '  chd.chddataatendimento,'
      '  tpr.tprslahoras'
      'FROM chd'
      '  INNER join tec on chd.teccodigo=tec.teccodigo  '
      '  INNER JOIN tcm  ON chd.tcmcodigo = tcm.tcmcodigo'
      '  LEFT JOIN etd  ON chd.etdcodigo = etd.etdcodigo'
      '  LEFT JOIN vce ON etd.etdcodigo = vce.etdcodigo'
      '  INNER JOIN ttc  ON chd.ttccodigo = ttc.ttccodigo'
      '  INNER JOIN tpr ON chd.tprcodigo = tpr.tprcodigo'
      '  INNER JOIN tso ON chd.tsoemail = tso.tsoemail '
      '  INNER JOIN ech ON ech.echchave = chd.echchave'
      '  INNER JOIN rch ON rch.rchchave = chd.rchchave'
      '  INNER JOIN clb ON rch.clbcodigo = clb.clbcodigo '
      '')
    ReadOnly = True
    Left = 804
    Top = 196
    object uqtabelachdchave: TIntegerField
      DisplayLabel = 'Chamado'
      FieldName = 'chdchave'
    end
    object uqtabelachdregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'chdregistro'
    end
    object uqtabelatcmcodigo: TIntegerField
      FieldName = 'tcmcodigo'
    end
    object uqtabelatcmidentificacao: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'tcmidentificacao'
      Size = 50
    end
    object uqtabelachdidentificacao: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'chdidentificacao'
      Size = 200
    end
    object uqtabelattccodigo: TIntegerField
      FieldName = 'ttccodigo'
    end
    object uqtabelattcidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ttcidentificacao'
      Size = 50
    end
    object uqtabelatprcodigo: TIntegerField
      FieldName = 'tprcodigo'
    end
    object uqtabelatpridentificacao: TStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'tpridentificacao'
      Size = 50
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelatsoemail: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'tsoemail'
      Size = 200
    end
    object uqtabelatsoidentificacao: TStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'tsoidentificacao'
      Size = 50
    end
    object uqtabelateccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
    object uqtabelatecidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'tecidentificacao'
      Size = 30
    end
    object uqtabelaetftelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'etftelefone'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Aberto Por'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object uqtabelachddescricao: TStringField
      FieldName = 'chddescricao'
      Size = 2000
    end
    object uqtabelatprcor: TStringField
      FieldName = 'tprcor'
      Size = 50
    end
    object uqtabelateccor: TStringField
      FieldName = 'teccor'
      Size = 50
    end
    object uqtabelaetdapelido: TStringField
      DisplayLabel = 'Nome Fantasia - Apelido'
      FieldName = 'etdapelido'
      Size = 50
    end
    object uqtabelatecsituacao: TIntegerField
      FieldName = 'tecsituacao'
    end
    object uqtabelachddata: TDateField
      DisplayLabel = 'Dia'
      FieldName = 'chddata'
    end
    object uqtabelachddataatendimento: TDateField
      DisplayLabel = 'Programado'
      FieldName = 'chddataatendimento'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelatprslahoras: TIntegerField
      FieldName = 'tprslahoras'
    end
    object uqtabelaclbresponsavel: TStringField
      DisplayLabel = 'Dono Carteira'
      FieldName = 'clbresponsavel'
      Size = 50
    end
  end
  inherited dcl: TUniQuery
    Top = 272
  end
  inherited cpg: TUniQuery
    Left = 516
    Top = 424
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 557
    Top = 425
  end
  inherited fmd: TUniQuery
    Left = 720
    Top = 259
  end
  inherited Dfmd: TDataSource
    Left = 752
    Top = 259
  end
  inherited DSSugestao: TDataSource
    Top = 244
  end
  inherited Dsfi: TUniDataSource
    Left = 152
    Top = 452
  end
  inherited sfi: TUniQuery
    Left = 196
    Top = 400
  end
  inherited lou: TUniQuery
    Left = 560
    Top = 352
  end
  inherited ColorDialog: TColorDialog
    Left = 744
    Top = 325
  end
  inherited ImageList1: TImageList
    Left = 664
    Top = 325
    Bitmap = {
      494C010103000800180110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object trc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  chdchave,'
      '  trcregistro,'
      '  trc.clbcodigo,'
      '  trcdescricao,'
      '  clbidentificacao'
      
        'FROM trc, clb where trc.trctipo=0 and trc.clbcodigo=clb.clbcodig' +
        'o and chdchave=:chdchave order by  trcregistro desc')
    ReadOnly = True
    Left = 768
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object trctrcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'trcchave'
    end
    object trcchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object trctrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'trcregistro'
    end
    object trcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object trcclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object trctrcdescricao: TStringField
      FieldName = 'trcdescricao'
      Required = True
      Size = 5000
    end
  end
  object DStrc: TUniDataSource
    DataSet = trc
    OnDataChange = DStrcDataChange
    Left = 728
    Top = 364
  end
  object anc: TUniQuery
    SQL.Strings = (
      
        'select ancchave, trcchave, ancanexo, ancidentificacao from anc w' +
        'here trcchave=:trcchave')
    Left = 528
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trcchave'
        Value = nil
      end>
    object ancancchave: TIntegerField
      FieldName = 'ancchave'
    end
    object anctrcchave: TIntegerField
      FieldName = 'trcchave'
    end
    object ancancanexo: TBlobField
      FieldName = 'ancanexo'
    end
    object ancancidentificacao: TStringField
      FieldName = 'ancidentificacao'
      Size = 200
    end
  end
  object OpenDialog: TOpenDialog
    Left = 676
    Top = 224
  end
  object DSAnc: TDataSource
    DataSet = anc
    Left = 688
    Top = 420
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clbcodigo,'
      '  clbidentificacao,'
      '  clbsipramal'
      'FROM clb where clbsipramal<>'#39#39' order by clbidentificacao desc')
    Left = 696
    Top = 469
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object clbclbsipramal: TStringField
      FieldName = 'clbsipramal'
      Size = 50
    end
  end
  object VerificaStatusRamais: TTimer
    Enabled = False
    OnTimer = VerificaStatusRamaisTimer
    Left = 808
    Top = 573
  end
  object rlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rlgchave,'
      '  rlgregistro,'
      '  clbcodigo,'
      '  rlginicio,'
      '  rlgbinagem,'
      '  rlgoperacao,'
      '  rlgfinal,'
      '  clbdestino,'
      '  rlgtipo,'
      '  rlggravacao,'
      '  etdcodigo'
      'FROM rlg order by rlgchave desc')
    Left = 1328
    Top = 748
    object rlgrlgchave: TIntegerField
      FieldName = 'rlgchave'
    end
    object rlgrlgregistro: TDateTimeField
      FieldName = 'rlgregistro'
    end
    object rlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object rlgrlginicio: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'rlginicio'
      DisplayFormat = '!90:00;1;_'
      EditMask = '!90:00;1;_'
    end
    object rlgrlgbinagem: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rlgbinagem'
      Size = 50
    end
    object rlgrlgoperacao: TIntegerField
      FieldName = 'rlgoperacao'
    end
    object rlgrlgfinal: TDateTimeField
      FieldName = 'rlgfinal'
    end
    object rlgclbdestino: TIntegerField
      FieldName = 'clbdestino'
    end
    object rlgrlgtipo: TIntegerField
      FieldName = 'rlgtipo'
    end
    object rlgrlggravacao: TStringField
      FieldName = 'rlggravacao'
      Size = 250
    end
    object rlgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object sitrlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rlg.rlgchave,'
      '  '
      'DATE_FORMAT(rlg.rlgregistro, '#39'%d/%m'#39') rlgregistro,'
      ''
      '  rlg.clbcodigo,'
      '  DATE_FORMAT(rlginicio,'#39'%H:%i:%s'#39' ) rlginicio, '
      '  rlg.rlgbinagem,'
      '  rlg.rlgoperacao,'
      '  DATE_FORMAT(rlg.rlgfinal,'#39'%H:%i:%s'#39' ) rlgfinal, '
      '  rlg.clbdestino,'
      ''
      '  rlg.rlggravacao,'
      '  clb.clbidentificacao,'
      
        '  if(rlgtipo=1,if(rlg.etdcodigo<>0,(select etdapelido from etd w' +
        'here etd.etdcodigo=rlg.etdcodigo),   '#39'LIGA'#199#195'O'#39')   , if(rlgtipo=2' +
        ','#39'CHAMADO'#39','#39'TRAMITE'#39' )) rlttipo,'
      '  rlgdescricao,'
      '  chdchave ,'
      '  rlg.etdcodigo'
      
        'FROM rlg, clb where clb.clbcodigo=rlg.clbcodigo and chdchave=0 a' +
        'nd rlgtipo in (1,2)'
      'order by rlg.rlgregistro desc ')
    Left = 636
    Top = 374
    object sitrlgrlgchave: TIntegerField
      FieldName = 'rlgchave'
    end
    object sitrlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object sitrlgrlgbinagem: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rlgbinagem'
      Size = 50
    end
    object sitrlgrlgoperacao: TIntegerField
      FieldName = 'rlgoperacao'
    end
    object sitrlgclbdestino: TIntegerField
      FieldName = 'clbdestino'
    end
    object sitrlgrlggravacao: TStringField
      FieldName = 'rlggravacao'
      Size = 250
    end
    object sitrlgclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object sitrlgrlginicio: TStringField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'rlginicio'
      Size = 10
    end
    object sitrlgrlgfinal: TStringField
      DisplayLabel = 'Final'
      FieldName = 'rlgfinal'
      Size = 10
    end
    object sitrlgrlttipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'rlttipo'
    end
    object sitrlgrlgdescricao: TStringField
      FieldName = 'rlgdescricao'
      Size = 1000
    end
    object sitrlgchdchave: TIntegerField
      DisplayLabel = 'Chamado'
      FieldName = 'chdchave'
    end
    object sitrlgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object sitrlgrlgregistro: TStringField
      DisplayLabel = 'Data'
      FieldName = 'rlgregistro'
      Size = 5
    end
  end
  object dsstirlg: TUniDataSource
    DataSet = sitrlg
    Left = 595
    Top = 373
  end
  object regtrc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  chdchave,'
      '  trcregistro,'
      '  trc.clbcodigo,'
      '  trcdescricao'
      'FROM trc limit 0')
    Left = 704
    Top = 320
    object regtrctrcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'trcchave'
    end
    object regtrcchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object regtrctrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'trcregistro'
    end
    object regtrcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object regtrctrcdescricao: TStringField
      FieldName = 'trcdescricao'
      Required = True
      Size = 5000
    end
  end
  object tec: TUniQuery
    SQL.Strings = (
      
        'SELECT teccodigo, CONCAT(ttcidentificacao, '#39' '#39' , tecidentificaca' +
        'o) tecidentificacao  FROM tec, ttc WHERE tec.ttccodigo=ttc.ttcco' +
        'digo')
    Left = 560
    Top = 472
    object tecteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
    object tectecidentificacao: TStringField
      FieldName = 'tecidentificacao'
      Size = 35
    end
  end
  object etd: TUniQuery
    Left = 468
    Top = 432
  end
  object resumo1: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  DATE(echregistro) dia,'
      '  COUNT(ech.chdchave) quantidade,'
      '  IF(tecsituacao = 0, '#39'EM ABERTO'#39', '#39'ENCERRADO'#39') situacao,'
      '  chd.ttccodigo,'
      '  tecsituacao,'
      '  ttcidentificacao'
      'FROM ech,'
      '     tec,'
      '     chd,'
      '     ttc'
      'WHERE chd.ttccodigo = ttc.ttccodigo'
      'AND ech.chdchave = chd.chdchave'
      'AND ech.teccodigo = tec.teccodigo'
      'AND DATE(echregistro) = CURDATE()'
      'AND tecsituacao <> 8'
      'AND chd.ttccodigo = 1'
      'GROUP BY chd.ttccodigo,'
      '         DATE(echregistro),'
      '         tecsituacao')
    Left = 280
    Top = 573
    object resumo1quantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object resumo1situacao: TStringField
      FieldName = 'situacao'
      Size = 9
    end
    object resumo1dia: TDateField
      FieldName = 'dia'
      ReadOnly = True
    end
  end
  object Dresumo1: TDataSource
    DataSet = resumo1
    Left = 328
    Top = 573
  end
  object resumo2: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  DATE(echregistro) dia,'
      '  COUNT(ech.chdchave) quantidade,'
      '  IF(tecsituacao = 0, '#39'EM ABERTO'#39', '#39'ENCERRADO'#39') situacao,'
      '  chd.ttccodigo,'
      '  tecsituacao,'
      '  ttcidentificacao'
      'FROM ech,'
      '     tec,'
      '     chd,'
      '     ttc'
      'WHERE chd.ttccodigo = ttc.ttccodigo'
      'AND ech.chdchave = chd.chdchave'
      'AND ech.teccodigo = tec.teccodigo'
      'AND DATE(echregistro) = CURDATE()'
      'AND tecsituacao <> 8'
      'AND chd.ttccodigo = 2'
      'GROUP BY chd.ttccodigo,'
      '         DATE(echregistro),'
      '         tecsituacao')
    Left = 848
    Top = 677
    object resumo2quantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object resumo2situacao: TStringField
      FieldName = 'situacao'
      Size = 9
    end
    object resumo2dia: TDateField
      FieldName = 'dia'
      ReadOnly = True
    end
  end
  object Dresumo2: TDataSource
    DataSet = resumo2
    Left = 768
    Top = 685
  end
  object ech: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  echchave,'
      '  chdchave,'
      '  echregistro,'
      '  clbidentificacao,'
      '  tecidentificacao'
      'FROM ech'
      '  INNER JOIN clb'
      '    ON ech.clbcodigo = clb.clbcodigo'
      '  INNER JOIN tec'
      '    ON ech.teccodigo = tec.teccodigo'
      'where chdchave=:chdchave'
      '  ORDER BY echregistro desc')
    ReadOnly = True
    Left = 601
    Top = 589
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object echechchave: TIntegerField
      FieldName = 'echchave'
    end
    object echchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object echechregistro: TDateTimeField
      FieldName = 'echregistro'
    end
    object echclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object echtecidentificacao: TStringField
      FieldName = 'tecidentificacao'
      Size = 50
    end
  end
  object Dsech: TDataSource
    DataSet = ech
    Left = 649
    Top = 589
  end
  object rch: TUniQuery
    SQL.Strings = (
      
        'SELECT rchchave, chdchave, rchregistro, a.clbidentificacao atrib' +
        'uiente, c.clbidentificacao clbidentificacao FROM rch'
      '  INNER JOIN clb a ON rch.rchatribuinte=a.clbcodigo'
      '  INNER JOIN clb c ON rch.clbcodigo=c.clbcodigo'
      '  where chdchave=:chdchave'
      '  ORDER BY rchregistro desc')
    Left = 441
    Top = 565
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object rchrchchave: TIntegerField
      FieldName = 'rchchave'
    end
    object rchchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object rchrchregistro: TDateTimeField
      FieldName = 'rchregistro'
    end
    object rchatribuiente: TStringField
      FieldName = 'atribuiente'
      Size = 50
    end
    object rchclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object Dsrch: TDataSource
    DataSet = rch
    Left = 457
    Top = 613
  end
  object qtdiasitrlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' count( rlg.rlgchave) as qtd,'
      ' SUM(IF(chdchave<>0,1,0)) AS emAberto'
      ''
      
        'FROM rlg, clb where clb.clbcodigo=rlg.clbcodigo and rlgtipo in (' +
        '1,2) and  date(rlgregistro)=curdate()'
      'order by rlg.rlgregistro desc ')
    Left = 640
    Top = 453
  end
  object trcs: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  chdchave,'
      '  trcregistro,'
      '  trc.clbcodigo,'
      '  trcdescricao,'
      '  clbidentificacao'
      
        'FROM trc, clb where trc.clbcodigo=clb.clbcodigo and chdchave=:ch' +
        'dchave order by  trcregistro desc')
    Left = 512
    Top = 589
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object trcstrcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'trcchave'
    end
    object trcschdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object trcstrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'trcregistro'
    end
    object trcsclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object trcsclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object trcstrcdescricao: TStringField
      FieldName = 'trcdescricao'
      Required = True
      Size = 5000
    end
  end
  object tcm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcmidentificacao,'
      '  COUNT(*) qtda'
      'FROM chd,'
      '     tcm'
      'WHERE chd.tcmcodigo = tcm.tcmcodigo'
      '  AND DATE(chd.chdregistro) BETWEEN :datainicial AND :datafinal '
      'GROUP BY tcmidentificacao'
      'ORDER BY tcm.tcmcodigo')
    Left = 224
    Top = 493
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
    object tcmqtda: TIntegerField
      DisplayLabel = 'Qtda'
      FieldName = 'qtda'
    end
    object tcmtcmidentificacao: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'tcmidentificacao'
      Size = 25
    end
  end
  object Dtcm: TDataSource
    DataSet = tcm
    Left = 192
    Top = 501
  end
  object tch: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  etdidentificacao,'
      '  chdidentificacao,'
      '  clbidentificacao,'
      '  trcdescricao,'
      '  trcregistro,'
      '  trc.chdchave'
      'FROM trc,'
      '     clb,'
      '     chd,'
      '     etd'
      'WHERE chd.etdcodigo = etd.etdcodigo'
      'AND trc.clbcodigo = clb.clbcodigo'
      'AND chd.chdchave = trc.chdchave'
      'ORDER BY trcregistro DESC')
    Left = 968
    Top = 773
    object tchtrcchave: TIntegerField
      FieldName = 'trcchave'
    end
    object tchetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object tchchdidentificacao: TStringField
      DisplayLabel = 'Chamado'
      FieldName = 'chdidentificacao'
      Size = 50
    end
    object tchclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 35
    end
    object tchtrcdescricao: TStringField
      DisplayLabel = 'Tramite'
      FieldName = 'trcdescricao'
      Size = 200
    end
    object tchtrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'trcregistro'
    end
    object tchchdchave: TIntegerField
      DisplayLabel = 'Nr.'
      FieldName = 'chdchave'
    end
  end
  object dtch: TDataSource
    DataSet = tch
    Left = 1008
    Top = 771
  end
  object Dclr: TDataSource
    DataSet = clr
    Left = 416
    Top = 464
  end
  object clr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clr.clrchave,'
      '  clr.etdcodigo,'
      '  clr.crtcodigo,'
      '  clr.talcodigo,'
      '  clr.ctdcodigo,'
      '  clr.clrcnaeprincipal,'
      '  crt.crtidentificacao,'
      '  etd.etdidentificacao,'
      '  tal.talidentificacao,'
      '  ctd.ctdidentificacao'
      'FROM etd'
      '  INNER JOIN clr'
      '    ON etd.etdcodigo = clr.etdcodigo'
      '  INNER JOIN crt'
      '    ON crt.crtcodigo = clr.crtcodigo'
      '  INNER JOIN tal'
      '    ON tal.talcodigo = clr.talcodigo'
      '  INNER JOIN ctd'
      '    ON ctd.ctdcodigo = clr.ctdcodigo'
      ' where clr.etdcodigo=:etdcodigo')
    Left = 156
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object clrclrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'clrchave'
    end
    object clretdcodigo: TIntegerField
      DisplayLabel = 'Cd.Cliente'
      FieldName = 'etdcodigo'
    end
    object clrcrtcodigo: TIntegerField
      DisplayLabel = 'Cd.Regime'
      FieldName = 'crtcodigo'
    end
    object clrtalcodigo: TIntegerField
      DisplayLabel = 'Cd.Apura'#231#227'o'
      FieldName = 'talcodigo'
    end
    object clrctdcodigo: TIntegerField
      DisplayLabel = 'Cd.Contador'
      FieldName = 'ctdcodigo'
    end
    object clrclrcnaeprincipal: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'clrcnaeprincipal'
      Size = 30
    end
    object clrcrtidentificacao: TStringField
      DisplayLabel = 'Regime Tribut'#225'rio'
      FieldName = 'crtidentificacao'
      Size = 50
    end
    object clretdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object clrtalidentificacao: TStringField
      DisplayLabel = 'Apura'#231#227'o do Lucro'
      FieldName = 'talidentificacao'
      Size = 50
    end
    object clrctdidentificacao: TStringField
      DisplayLabel = 'Contabilidade'
      FieldName = 'ctdidentificacao'
      Size = 50
    end
  end
  object ega: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ega.clbcodigo,'
      '  ega.gaccodigo,'
      '  gac.gacidentificacao,'
      '  clb.clbidentificacao'
      'FROM clb'
      '  INNER JOIN ega'
      '    ON clb.clbcodigo = ega.clbcodigo'
      '  INNER JOIN gac'
      '    ON gac.gaccodigo = ega.gaccodigo'
      '  ORDER BY gaccodigo, clb.clbidentificacao')
    Left = 672
    Top = 533
    object egagaccodigo: TIntegerField
      FieldName = 'gaccodigo'
    end
    object egagacidentificacao: TStringField
      FieldName = 'gacidentificacao'
      Size = 50
    end
    object egaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object egaclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object Dega: TDataSource
    DataSet = ega
    Left = 291
    Top = 487
  end
  object tac: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  taccodigo,'
      '  gaccodigo,'
      '  tacidentificacao,'
      '  tacordem'
      'FROM tac'
      '  order by tacordem')
    Left = 704
    Top = 533
    object tactaccodigo: TIntegerField
      FieldName = 'taccodigo'
    end
    object tacgaccodigo: TIntegerField
      FieldName = 'gaccodigo'
    end
    object tactacidentificacao: TStringField
      FieldName = 'tacidentificacao'
      Size = 35
    end
  end
  object ach: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  achchave,'
      '  chdchave,'
      '  clbcodigo,'
      '  taccodigo,'
      '  achinicio,'
      '  achfinal'
      
        'FROM ach where taccodigo=:taccodigo and clbcodigo=:clbcodigo and' +
        ' achfinal is null'
      'order by achinicio')
    Left = 736
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object achachchave: TIntegerField
      FieldName = 'achchave'
    end
    object achchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object achtaccodigo: TIntegerField
      FieldName = 'taccodigo'
    end
    object achachinicio: TDateTimeField
      FieldName = 'achinicio'
    end
    object achclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object gac: TUniQuery
    SQL.Strings = (
      'select gaccodigo, gacidentificacao from gac')
    Left = 784
    Top = 533
    object gacgaccodigo: TIntegerField
      FieldName = 'gaccodigo'
    end
    object gacgacidentificacao: TStringField
      FieldName = 'gacidentificacao'
      Size = 50
    end
  end
  object ajuach: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  achchave,'
      '  chdchave,'
      '  clbcodigo,'
      '  taccodigo,'
      '  achinicio,'
      '  achfinal,'
      '  clbatribuinte'
      
        'FROM ach where chdchave=:chdchave and clbcodigo=:clbcodigo and t' +
        'accodigo=:taccodigo')
    Left = 696
    Top = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'taccodigo'
        Value = nil
      end>
    object ajuachachchave: TIntegerField
      FieldName = 'achchave'
    end
    object ajuachchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object ajuachtaccodigo: TIntegerField
      FieldName = 'taccodigo'
    end
    object ajuachachinicio: TDateTimeField
      FieldName = 'achinicio'
    end
    object ajuachachfinal: TDateTimeField
      FieldName = 'achfinal'
    end
    object ajuachclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ajuachclbatribuinte: TIntegerField
      FieldName = 'clbatribuinte'
    end
  end
  object ajutrc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  chdchave,'
      '  trcregistro,'
      '  clbcodigo,'
      '  trcdescricao,'
      '  trctipo'
      'FROM trc limit 0')
    Left = 600
    Top = 656
    object ajutrctrcchave: TIntegerField
      FieldName = 'trcchave'
    end
    object ajutrcchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object ajutrctrcregistro: TDateTimeField
      FieldName = 'trcregistro'
    end
    object ajutrcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ajutrctrcdescricao: TStringField
      FieldName = 'trcdescricao'
      Size = 50
    end
    object ajutrctrctipo: TIntegerField
      FieldName = 'trctipo'
    end
  end
  object ajurch: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rchchave,'
      '  chdchave,'
      '  rchregistro,'
      '  clbcodigo,'
      '  rchatribuinte'
      'FROM rch limit 0')
    Left = 736
    Top = 608
    object ajurchrchchave: TIntegerField
      FieldName = 'rchchave'
    end
    object ajurchchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object ajurchrchregistro: TDateTimeField
      FieldName = 'rchregistro'
    end
    object ajurchclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ajurchrchatribuinte: TIntegerField
      FieldName = 'rchatribuinte'
    end
  end
  object dsSnep: TDataSource
    DataSet = snep
    Left = 1152
    Top = 309
  end
  object snep: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      'ADDTIME( calldate, '#39'03:00:00.0'#39') calldate,'
      '  clid,'
      '  src,'
      '  dst,'
      '  userfield'
      'FROM cdr where userfield<>'#39#39' order by calldate desc limit 100 ')
    Left = 1117
    Top = 309
    object snepcalldate: TDateTimeField
      FieldName = 'calldate'
      Required = True
    end
    object snepclid: TStringField
      FieldName = 'clid'
      Required = True
      Size = 80
    end
    object snepsrc: TStringField
      FieldName = 'src'
      Required = True
      Size = 80
    end
    object snepdst: TStringField
      FieldName = 'dst'
      Required = True
      Size = 80
    end
    object snepuserfield: TStringField
      FieldName = 'userfield'
      Size = 500
    end
  end
  object trchint: TUniQuery
    Left = 808
    Top = 485
  end
end
