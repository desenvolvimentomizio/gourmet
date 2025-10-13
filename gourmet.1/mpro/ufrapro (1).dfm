inherited frapro: Tfrapro
  Width = 1380
  Height = 753
  ExplicitWidth = 1380
  ExplicitHeight = 753
  inherited PlGeral: TPanel
    Width = 1380
    Height = 753
    ExplicitWidth = 1380
    ExplicitHeight = 753
    inherited SplBotoes: TSplitter
      Height = 733
      ExplicitHeight = 727
    end
    inherited PlBotoes: TPanel
      Height = 733
      ExplicitHeight = 733
      inherited ImageLogoBase: TImage
        Top = 654
        ExplicitTop = 648
      end
      inherited PlInfo: TPanel
        Top = 715
        ExplicitTop = 715
      end
      inherited SBBotoes: TScrollBox
        Height = 654
        ParentColor = False
        ExplicitHeight = 654
      end
    end
    inherited PlLista: TPanel
      Width = 1236
      Height = 733
      ExplicitWidth = 1236
      ExplicitHeight = 733
      inherited SplLista: TSplitter
        Top = 514
        Width = 1236
        Visible = True
        ExplicitTop = 584
        ExplicitWidth = 1236
      end
      inherited SpFilter: TSplitter
        Top = 125
        Width = 1236
        ExplicitLeft = -5
        ExplicitTop = 592
        ExplicitWidth = 1236
      end
      inherited PlRodaPe: TPanel
        Top = 519
        Width = 1236
        Height = 214
        Visible = True
        ExplicitTop = 519
        ExplicitWidth = 1236
        ExplicitHeight = 214
        object GBObs: TGroupBox
          Left = 0
          Top = 0
          Width = 1236
          Height = 59
          Align = alTop
          Caption = ' Observa'#231#245'es '
          TabOrder = 0
          object proobs: TDBMemo
            Left = 2
            Top = 15
            Width = 1232
            Height = 42
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            DataField = 'proobs'
            DataSource = DSTabela
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object plEmbalagens: TPanel
          Left = 0
          Top = 59
          Width = 553
          Height = 155
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          object listapun: TDBGrid
            Left = 2
            Top = 24
            Width = 549
            Height = 129
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Dpun
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listapunDrawColumnCell
            OnKeyDown = listapunKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'puncodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Title.Caption = 'Simbolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'uninome'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'punidentificacao'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'punbarra'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'punprecoav'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'punmargemap'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'punprecoap'
                Visible = True
              end>
          end
          object plTitulosEmbalagens: TPanel
            Left = 2
            Top = 2
            Width = 549
            Height = 22
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 3
            Caption = 'Embalagens, Pre'#231'os e Unidades'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object plAjustedePrecos: TPanel
          Left = 937
          Top = 59
          Width = 384
          Height = 155
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clSilver
          ParentBackground = False
          TabOrder = 2
          object listaapv: TDBGrid
            Left = 2
            Top = 24
            Width = 380
            Height = 129
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Dapv
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaapvDrawColumnCell
            OnKeyDown = listaapvKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'apvdatahora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'apvprecoav'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'apvprecoap'
                Visible = True
              end>
          end
          object plTituloPrecos: TPanel
            Left = 2
            Top = 2
            Width = 380
            Height = 22
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 3
            Caption = 'Altera'#231#245'es de pre'#231'o aguardando envio de carga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object plEstoque: TPanel
          Left = 553
          Top = 59
          Width = 384
          Height = 155
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clSilver
          ParentBackground = False
          TabOrder = 3
          object listaesp: TDBGrid
            Left = 2
            Top = 24
            Width = 380
            Height = 129
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Desp
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaespDrawColumnCell
            OnKeyDown = listaespKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'flasigla'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'esprequisitado'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'espreservado'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'esptransito'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'espgeral'
                Title.Alignment = taRightJustify
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 380
            Height = 22
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 3
            Caption = 'Situa'#231#227'o de Estoque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      inherited PlFiltros: TPanel
        Top = 74
        Width = 1236
        ExplicitTop = 74
        ExplicitWidth = 1236
        inherited BvlSeparador: TBevel
          Left = 582
          ExplicitLeft = 573
        end
        inherited PlEdTextoBusca: TPanel
          Width = 493
          ExplicitWidth = 493
          inherited GrBTextoProcurar: TGroupBox
            Width = 487
            ExplicitWidth = 487
            inherited PlGbEdtBusca: TPanel
              Top = 31
              Width = 463
              Height = 11
              ExplicitTop = 31
              ExplicitWidth = 463
              ExplicitHeight = 11
              inherited edbusca: TEdit
                Width = 437
                Height = 5
                ExplicitWidth = 437
                ExplicitHeight = 5
              end
              inherited btLimpaBusca: TPanel
                Left = 440
                Height = 5
                ExplicitLeft = 440
                ExplicitHeight = 5
              end
            end
            inherited plfiltroEspecial: TPanel
              Left = 465
              Top = 31
              Height = 11
              TabOrder = 2
              ExplicitLeft = 465
              ExplicitTop = 31
              ExplicitHeight = 11
              inherited Image2: TImage
                Height = 11
                ExplicitHeight = 11
              end
            end
            object mostra: TProgressBar
              Left = 2
              Top = 15
              Width = 483
              Height = 16
              Align = alTop
              TabOrder = 1
              Visible = False
            end
          end
        end
        object PnlBuscaBarra: TGroupBox [2]
          Left = 583
          Top = 0
          Width = 185
          Height = 51
          Align = alLeft
          Caption = ' C'#243'digo de Barra:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
          object Panel1: TPanel
            Left = 2
            Top = 21
            Width = 181
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 3
            Caption = 'Panel1'
            TabOrder = 0
            object cd: TEdit
              Left = 3
              Top = 3
              Width = 175
              Height = 22
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnExit = cdExit
              OnKeyPress = cdKeyPress
              ExplicitHeight = 21
            end
          end
        end
        inherited PlBotaoFiltro: TPanel
          Left = 502
          ExplicitLeft = 502
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Left = 768
          ExplicitLeft = 768
        end
        inherited PlBotaoFiltroEsp: TScrollBox
          Left = 1221
          Width = 271
          Visible = True
          ExplicitLeft = 1221
          ExplicitWidth = 271
        end
      end
      inherited PlSelecao: TPanel
        Width = 1236
        ExplicitWidth = 1236
        inherited GBPlSelecao: TGroupBox
          Width = 1232
          ExplicitWidth = 1232
          inherited DBLista: TDBGrid
            Width = 1125
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1236
        Height = 385
        ExplicitWidth = 1236
        ExplicitHeight = 385
        inherited DBGLista: TDBGrid
          Width = 1236
          Height = 360
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpbcodbalanca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpoidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'proncm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'proreferencia'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoav'
              Title.Alignment = taRightJustify
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoap'
              Title.Alignment = taRightJustify
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prosaldo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prosaldodisp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dpridentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'maridentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icmaliquotas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'enpendereco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punpercap'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'punpercav'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'puncusto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procest'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 360
          Width = 1236
          Visible = True
          ExplicitTop = 360
          ExplicitWidth = 1236
          object ProgressBar1: TProgressBar
            Left = 1
            Top = 1
            Width = 1234
            Height = 23
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1380
      ExplicitWidth = 1380
      inherited plid: TPanel
        Left = 930
        Caption = '01.01.05.001-02'
        ExplicitLeft = 930
      end
      inherited PlSair: TPanel
        Left = 1174
        ExplicitLeft = 1174
      end
    end
  end
  inherited acoes: TActionList
    Left = 392
    Top = 176
    object ActPrecoDeVenda: TAction [0]
      Category = 'Altera'#231#245'es'
      Caption = 'Alterar Pre'#231'o'
      Hint = 'Altera o Pre'#231'o de Venda do produto selecionado.'
      ImageIndex = 11
      ShortCut = 116
      OnExecute = ActPrecoDeVendaExecute
    end
    object ActPrecoDeCusto: TAction [1]
      Category = 'Altera'#231#245'es'
      Caption = 'Alterar Custo'
      Hint = 'Altera o Pre'#231'o de Custo e Margem do produto selecionado.'
      ShortCut = 114
      OnExecute = ActPrecoDeCustoExecute
    end
    object ActPrecoCustoEsp: TAction [2]
      Category = 'Altera'#231#245'es'
      Caption = 'Alterar Custo e Pre'#231'os'
      ShortCut = 120
      OnExecute = ActPrecoCustoEspExecute
    end
    object ActCustoBase: TAction [3]
      Category = 'Altera'#231#245'es'
      Caption = 'Alterar Custo Base'
      OnExecute = ActCustoBaseExecute
    end
    object ActHistoricoPreco: TAction [4]
      Category = 'Produtos'
      Caption = 'Hist'#243'rico de Pre'#231'o'
      OnExecute = ActHistoricoPrecoExecute
    end
    object ActHistoricoCusto: TAction [5]
      Category = 'Produtos'
      Caption = 'Hist'#243'rico de Custo'
      OnExecute = ActHistoricoCustoExecute
    end
    object ActHistoricoMovimento: TAction [6]
      Category = 'Produtos'
      Caption = 'Hist'#243'rico Movimento'
      OnExecute = ActHistoricoMovimentoExecute
    end
    object ActAjustaBarra: TAction [7]
      Category = 'Altera'#231#245'es'
      Caption = 'Altera C'#243'd Barra'
      OnExecute = ActAjustaBarraExecute
    end
    object ActAjustaNCM: TAction [8]
      Category = 'NCMs'
      Caption = 'Ajusta NCM'
      ImageIndex = 12
      ShortCut = 121
      OnExecute = ActAjustaNCMExecute
    end
    object ActTrocarNCMs: TAction [9]
      Category = 'NCMs'
      Caption = 'Trocar TODOS NCMs'
      OnExecute = ActTrocarNCMsExecute
    end
    object ActAtualizarNCM: TAction [10]
      Category = 'NCMs'
      Caption = 'Atualizar NCMs'
      OnExecute = ActAtualizarNCMExecute
    end
    object ActVerificarDuplicidade: TAction [11]
      Category = 'Utilit'#225'rios'
      Caption = 'Verificar Duplicidade'
      OnExecute = ActVerificarDuplicidadeExecute
    end
    inherited ActIncluir: TAction
      Category = 'Produtos'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Category = 'Produtos'
      OnExecute = ActAlterarExecute
    end
    object ActDadosAdicionais: TAction [14]
      Category = 'Produtos'
      Caption = 'Dados Adicionais'
      OnExecute = ActDadosAdicionaisExecute
    end
    inherited ActExcluir: TAction
      Category = 'Produtos'
    end
    inherited ActAtualizar: TAction
      Category = 'Produtos'
    end
    inherited ActPesquisar: TAction
      Category = 'Produtos'
    end
    object ActBuscaBarra: TAction [18]
      Category = 'Produtos'
      Caption = 'Busca por Barra'
      ImageIndex = 13
      ShortCut = 119
      OnExecute = ActBuscaBarraExecute
    end
    object ActMovimentacao: TAction [19]
      Category = 'Produtos'
      Caption = 'Extrato'
      ImageIndex = 11
      OnExecute = ActMovimentacaoExecute
    end
    object ActVariacoes: TAction [20]
      Category = 'Produtos'
      Caption = 'Varia'#231#245'es'
      OnExecute = ActVariacoesExecute
    end
    object ActVerCusto: TAction [21]
      Category = 'Produtos'
      Caption = 'Ver Custo'
      OnExecute = ActVerCustoExecute
    end
    object ActDesativar: TAction [22]
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      ImageIndex = 10
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction [23]
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      ImageIndex = 8
      OnExecute = ActReativarExecute
    end
    object ActMostrarInativos: TAction [24]
      Category = 'Situa'#231#227'o'
      Caption = 'Mostrar Inativos'
    end
    inherited ActRelatorios: TAction
      Category = 'Relat'#243'rios'
    end
    inherited ActFiltrar: TAction [26]
      Category = 'Utilit'#225'rios'
    end
    inherited ActConfig: TAction [27]
      Category = 'Utilit'#225'rios'
    end
    object ActRecalculaSaldo: TAction [28]
      Category = 'Utilit'#225'rios'
      Caption = 'Recalcular Todos'
      ImageIndex = 11
      OnExecute = ActRecalculaSaldoExecute
    end
    object ActAjustarCusto: TAction [29]
      Category = 'Utilit'#225'rios'
      Caption = 'Ajustar Custo'
      Hint = 'Ajustar pre'#231'o de custo pela ultima compra realizada'
    end
    object ActEtiquetas: TAction [30]
      Category = 'Utilit'#225'rios'
      Caption = 'Gerar Etiquetas'
      OnExecute = ActEtiquetasExecute
    end
    inherited ActConfiguracoes: TAction [31]
      Category = 'Utilit'#225'rios'
      ImageIndex = 11
    end
    inherited ActVerFiltros: TAction [32]
      Category = 'Produtos'
    end
    inherited ActInstrucoes: TAction [33]
    end
    inherited ActSair: TAction [34]
      Category = 'Utilit'#225'rios'
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 320
    Top = 224
  end
  inherited MenuManutencao: TPopupMenu
    object AlterarPreo1: TMenuItem [2]
      Action = ActPrecoDeVenda
    end
    object N1: TMenuItem [4]
      Caption = '-'
    end
    object AlterarCustoePreos1: TMenuItem [6]
      Action = ActPrecoCustoEsp
    end
    object mBuscaPorBarra: TMenuItem [7]
      Action = ActBuscaBarra
    end
    object AjustaNCM1: TMenuItem [10]
      Action = ActAjustaNCM
    end
    object mnUtilitarios: TMenuItem [12]
      Caption = 'Utilit'#225'rios'
      object mnImportadores: TMenuItem
        Caption = 'Importadores'
        object mnProdutosLayout001: TMenuItem
          Caption = 'Produtos Layout 001'
          OnClick = mnProdutosLayout001Click
        end
        object mnProdutosLayout002: TMenuItem
          Caption = 'Produtos Layout 002'
          OnClick = mnProdutosLayout002Click
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  procodigo,'
      '  pronome,'
      '  tpoidentificacao,'
      '  maridentificacao,'
      '  grpidentificacao,'
      '  icmaliquotas,'
      '  proncm,'
      '  prosaldo,'
      '  prosaldodisp,'
      '  sipcodigo,'
      '  proobs,'
      '  proreferencia,'
      '  unisimbolo,'
      '  punprecoav,'
      '  punprecoap,'
      '  tpocodigo,'
      '  proanpcodigo,'
      '  enpcodigo,'
      '  enpendereco,'
      '  propedecomple,'
      '  cpbcodbalanca,'
      '  gracodigo,'
      '  dpridentificacao,'
      '  proconsolidado,'
      '  punpercav,'
      '  punpercap,'
      '  puncusto,'
      '  grpcodigo,'
      '  cstcodigo,'
      '  procest'
      'FROM  v_pro pro where tpocodigo<>1')
    Left = 748
    Top = 188
    object uqtabelaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelaproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 15
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelaprosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'prosaldo'
    end
    object uqtabelaprosaldodisp: TFloatField
      DisplayLabel = 'Saldo Disp.'
      FieldName = 'prosaldodisp'
    end
    object uqtabelagrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object uqtabelamaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Size = 35
    end
    object uqtabelaicmaliquotas: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object uqtabelaproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object uqtabelaproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uqtabelapunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelapunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object uqtabelatpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object uqtabelatpoidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpoidentificacao'
      Size = 25
    end
    object uqtabelaenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
    end
    object uqtabelaenpendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'enpendereco'
    end
    object uqtabelacpbcodbalanca: TIntegerField
      DisplayLabel = 'Cod.Balan'#231'a'
      FieldName = 'cpbcodbalanca'
    end
    object uqtabelagracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object uqtabeladpridentificacao: TStringField
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'dpridentificacao'
      Size = 30
    end
    object uqtabelaproconsolidado: TIntegerField
      FieldName = 'proconsolidado'
    end
    object uqtabelapunpercav: TFloatField
      DisplayLabel = '% Lucro AV'
      FieldName = 'punpercav'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapunpercap: TFloatField
      DisplayLabel = '% Lucro AP'
      FieldName = 'punpercap'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapuncusto: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelacstcodigo: TStringField
      DisplayLabel = 'CST ICM'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object uqtabelaprocest: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'procest'
    end
  end
  inherited cau: TUniQuery
    Left = 780
    Top = 308
  end
  inherited cca: TUniQuery
    Left = 604
    Top = 320
  end
  inherited cpg: TUniQuery
    Left = 260
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 261
    Top = 377
  end
  inherited XMLDocument1: TXMLDocument
    Left = 848
  end
  object pun: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  puncodigo,'
      '  procodigo,'
      '  unisimbolo,'
      '  punprecoav,'
      '  punprecoap,'
      '  puncusto,'
      '  punidentificacao,'
      '  dgridentificacao,'
      '  punbarra,'
      '  pun.tuncodigo,'
      ' uni.uninome,'
      '  pun.unicodigo,'
      '  punbarrasistema,'
      '  punmargemap'
      'FROM pun,'
      '     uni,'
      '     dgr'
      'WHERE pun.unicodigo = uni.unicodigo'
      'AND pun.dgrcodigo = dgr.dgrcodigo'
      'AND pun.tuncodigo IN (1, 9)'
      'AND pun.procodigo = :procodigo')
    Left = 364
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object punpuncodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'puncodigo'
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pununisimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object pununinome: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'uninome'
      Size = 30
    end
    object punpunidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'punidentificacao'
      Size = 30
    end
    object pundgridentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'dgridentificacao'
      Size = 30
    end
    object punpunprecoav: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object punpunprecoap: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object punpunbarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'punbarra'
      Size = 50
    end
    object puntuncodigo: TIntegerField
      FieldName = 'tuncodigo'
      Required = True
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object punpunbarrasistema: TIntegerField
      FieldName = 'punbarrasistema'
    end
    object punpunmargemap: TFloatField
      DisplayLabel = '% Acr'#233's. A Prazo '
      FieldName = 'punmargemap'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  object Dpun: TUniDataSource
    DataSet = pun
    Left = 320
    Top = 412
  end
  object bbarra: TUniQuery
    Left = 492
    Top = 168
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.cfgbalanca'
      '     , cfgmsai.cfgnrseriepro'
      '     , cfgmsai.cfgrefepro'
      '     , cfgmsai.cfgcompro'
      '     , cfgmsai.cfgunitrib'
      '     , cfgmsai.cfgdoisprecos'
      '     , cfgmsai.cfgusagrade'
      '     , cfgmsai.cfgusaenderecamento'
      '     , cfgmsai.cfgprodefineicms'
      '     , cfgmsai.cfgextratosegmentado'
      '     , cfgmsai.cfgusaprecobase'
      '     , cfgmsai.cfgtabelasaux'
      '     , cfgmsai.cfgproinativsaldozero'
      'FROM cfgmsai')
    Left = 504
    Top = 320
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgrefepro: TIntegerField
      DisplayLabel = 'Utiliza refer'#234'ncia'
      FieldName = 'cfgrefepro'
    end
    object cfgcfgdoisprecos: TIntegerField
      DisplayLabel = 'Utiliza pre'#231'o a Vista e a Prazo'
      FieldName = 'cfgdoisprecos'
    end
    object cfgcfgusagrade: TIntegerField
      FieldName = 'cfgusagrade'
    end
    object cfgcfgusaenderecamento: TIntegerField
      FieldName = 'cfgusaenderecamento'
    end
    object cfgcfgprodefineicms: TIntegerField
      FieldName = 'cfgprodefineicms'
    end
    object cfgcfgbalanca: TIntegerField
      FieldName = 'cfgbalanca'
    end
    object cfgcfgextratosegmentado: TIntegerField
      FieldName = 'cfgextratosegmentado'
    end
    object cfgcfgusaprecobase: TIntegerField
      FieldName = 'cfgusaprecobase'
    end
    object cfgcfgtabelasaux: TIntegerField
      FieldName = 'cfgtabelasaux'
    end
    object cfgcfgproinativsaldozero: TIntegerField
      FieldName = 'cfgproinativsaldozero'
    end
  end
  object sip: TUniQuery
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 812
    Top = 308
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
  object apv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  apv.apvchave,'
      '  apv.apvprecoav,'
      '  apv.apvprecoap,'
      '  apv.apvdatahora,'
      '  clb.clbidentificacao,'
      '  pun.procodigo'
      'FROM apv'
      '  INNER JOIN clb'
      '    ON apv.clbcodigo = clb.clbcodigo'
      '  INNER JOIN pun'
      '    ON apv.puncodigo = pun.puncodigo'
      'where spvcodigo=1 and procodigo=:procodigo'
      '  order by apv.apvchave desc')
    Left = 872
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object apvapvprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'apvprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object apvapvprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'apvprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object apvapvdatahora: TDateTimeField
      DisplayLabel = 'Atualizado'
      FieldName = 'apvdatahora'
    end
    object apvclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 35
    end
  end
  object Dapv: TDataSource
    DataSet = apv
    Left = 936
    Top = 528
  end
  object esp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  esp.espcodigo,'
      '  esp.procodigo,'
      '  esp.flacodigo,'
      '  esp.espgeral,'
      '  esp.esppendente,'
      '  esp.espreservado,'
      '  esp.espavaria,'
      '  esp.esptransito,'
      '  esp.esprequisitado,'
      '  esp.espdisponivel,'
      '  fla.flasigla '
      'FROM esp'
      '  INNER JOIN fla ON esp.flacodigo = fla.flacodigo'
      '  WHERE esp.procodigo=:procodigo'
      
        '  AND fla.flacodigo IN (SELECT esp.flacodigo FROM fcb INNER JOIN' +
        ' fla ON fcb.flacodigo = fla.flacodigo WHERE fcb.clbcodigo = :clb' +
        'codigo)')
    Left = 1048
    Top = 403
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object espespcodigo: TIntegerField
      FieldName = 'espcodigo'
    end
    object espprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object espflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object espespgeral: TFloatField
      DisplayLabel = 'Geral'
      FieldName = 'espgeral'
    end
    object espesppendente: TFloatField
      DisplayLabel = 'Pendente'
      FieldName = 'esppendente'
    end
    object espespreservado: TFloatField
      DisplayLabel = 'Reservado'
      FieldName = 'espreservado'
    end
    object espespavaria: TFloatField
      DisplayLabel = 'Avariado'
      FieldName = 'espavaria'
    end
    object espesptransito: TFloatField
      DisplayLabel = 'Em Tr'#226'nsito'
      FieldName = 'esptransito'
    end
    object espesprequisitado: TFloatField
      DisplayLabel = 'Requisitado'
      FieldName = 'esprequisitado'
    end
    object espespdisponivel: TFloatField
      DisplayLabel = 'Disponivel'
      FieldName = 'espdisponivel'
    end
    object espflasigla: TStringField
      DisplayLabel = 'Fla'
      FieldName = 'flasigla'
      Size = 3
    end
  end
  object Desp: TDataSource
    DataSet = esp
    Left = 1128
    Top = 411
  end
  object expdisp: TUniQuery
    SQL.Strings = (
      'CALL extratoProdutoDisp(:produto, :dtInicial, :dtFinal)')
    Left = 636
    Top = 396
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
  object exp: TUniQuery
    SQL.Strings = (
      'CALL extratoProduto(:produto, :dtInicial, :dtFinal)')
    Left = 716
    Top = 396
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
      'mesinclusao'
      ''
      'from tprg'
      '     join '
      '     (select @acumulado = 0) acumulado'
      'order by eprdata,'
      '         eprcodigo;')
    Left = 640
    Top = 452
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
    object tprgeprdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'eprdata'
      Required = True
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
      '       mesinclusao'
      'from tprd'
      '     join '
      '     (select @acumulado = 0) acumulado'
      'order by eprdata,'
      '         eprcodigo;')
    Left = 716
    Top = 448
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
    object tprdeprdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'eprdata'
      Required = True
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
    object tprdmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
  end
  object vtprg: TVirtualTable
    Left = 644
    Top = 536
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
    object vtprgeprdata: TDateField
      DisplayLabel = 'Data'
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
  end
  object vtprd: TVirtualTable
    Left = 692
    Top = 536
    Data = {04000000000000000000}
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
    object vtprdeprdata: TDateField
      DisplayLabel = 'Data'
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
      DisplayLabel = 'Custo Total'
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
    object vtprdmesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
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
      '  uni.unisimbolo'
      'FROM ivt,'
      '     spd,'
      '     pro,'
      '     uni'
      'WHERE ivt.procodigo = pro.procodigo'
      'AND uni.unicodigo = pro.unicodigo'
      'AND ivt.spdchave = spd.spdchave'
      'AND ivt.procodigo = :procodigo'
      
        'AND spd.spddatabalanco BETWEEN :datainicial AND :datafinal order' +
        ' by ivt.ivtchave desc limit 1')
    Left = 652
    Top = 653
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
  end
  object ivd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivd.ivdchave,'
      '  ivd.procodigo,'
      '  ivd.ivdquantidade,'
      '  ivd.ivddescricao,'
      '  spd.spddatabalanco,'
      '  uni.unisimbolo'
      'FROM ivd,'
      '     spd,'
      '     pro,'
      '     uni'
      'WHERE ivd.procodigo = pro.procodigo'
      'AND uni.unicodigo = pro.unicodigo'
      'AND ivd.spdchave = spd.spdchave'
      'AND ivd.procodigo = :procodigo'
      
        'AND spd.spddatabalanco BETWEEN :datainicial AND :datafinal  orde' +
        'r by ivd.ivdchave desc limit 1')
    Left = 692
    Top = 653
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
  end
  object saldo: TUniQuery
    Left = 552
    Top = 488
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    Left = 426
    Top = 446
  end
  object tcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcgncm,'
      '  tcgex,'
      '  tcgtabela,'
      '  tcgaliqnac,'
      '  tcgaliqimp,'
      '  tcgaliqest,'
      '  tcgaliqmun,'
      '  tcgdescricao,'
      '  tcgversao,'
      '  tcginicio,'
      '  tcgfinal'
      ''
      'FROM tcg')
    Left = 480
    Top = 443
    object tcgtcgncm: TStringField
      DisplayLabel = 'NCM'
      DisplayWidth = 10
      FieldName = 'tcgncm'
      Size = 10
    end
    object tcgtcgex: TStringField
      DisplayLabel = 'T'
      FieldName = 'tcgex'
      Size = 3
    end
    object tcgtcgtabela: TIntegerField
      DisplayLabel = 'Tabela'
      FieldName = 'tcgtabela'
    end
    object tcgtcgaliqnac: TFloatField
      DisplayLabel = '% Nacional'
      FieldName = 'tcgaliqnac'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqimp: TFloatField
      DisplayLabel = '% Importado'
      FieldName = 'tcgaliqimp'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqest: TFloatField
      DisplayLabel = '# Estadual'
      FieldName = 'tcgaliqest'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqmun: TFloatField
      DisplayLabel = '% Municiapl'
      FieldName = 'tcgaliqmun'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcgdescricao'
      Size = 1500
    end
    object tcgtcgversao: TStringField
      FieldName = 'tcgversao'
    end
    object tcgtcginicio: TDateField
      FieldName = 'tcginicio'
    end
    object tcgtcgfinal: TDateField
      FieldName = 'tcgfinal'
    end
  end
  object tce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcechave,'
      '  tcecest,'
      '  tcencm'
      'FROM tce')
    Left = 208
    Top = 472
    object tcetcechave: TIntegerField
      FieldName = 'tcechave'
    end
    object tcetcecest: TStringField
      FieldName = 'tcecest'
    end
    object tcetcencm: TStringField
      FieldName = 'tcencm'
    end
  end
  object lcn: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lcnchave,'
      '  tcecest,'
      '  tcgncm'
      'FROM lcn')
    Left = 240
    Top = 469
    object lcnlcnchave: TIntegerField
      FieldName = 'lcnchave'
    end
    object lcntcecest: TStringField
      FieldName = 'tcecest'
      Size = 50
    end
    object lcntcgncm: TStringField
      FieldName = 'tcgncm'
      Size = 50
    end
  end
  object mva: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mvachave,'
      '  tcecest,'
      '  tcgncm,'
      '  mvaidentificacao,'
      '  mvapercentual'
      'FROM mva')
    Left = 544
    Top = 540
    object mvamvachave: TIntegerField
      FieldName = 'mvachave'
    end
    object mvatcecest: TStringField
      FieldName = 'tcecest'
    end
    object mvatcgncm: TStringField
      FieldName = 'tcgncm'
    end
    object mvamvaidentificacao: TStringField
      FieldName = 'mvaidentificacao'
      Size = 5000
    end
    object mvamvapercentual: TFloatField
      FieldName = 'mvapercentual'
    end
  end
end
