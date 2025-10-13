inherited fraoge: Tfraoge
  Width = 1309
  ExplicitWidth = 1309
  inherited PlGeral: TPanel
    Width = 1309
    ExplicitWidth = 1309
    inherited PlLista: TPanel
      Width = 1165
      ExplicitWidth = 1165
      inherited SplLista: TSplitter
        Top = 416
        Width = 1165
        Height = 8
        Visible = True
        ExplicitTop = 419
        ExplicitWidth = 1165
        ExplicitHeight = 8
      end
      inherited SpFilter: TSplitter
        Width = 1165
        ExplicitWidth = 1165
      end
      inherited PlRodaPe: TPanel
        Top = 424
        Width = 1165
        Height = 156
        Visible = True
        ExplicitTop = 424
        ExplicitWidth = 1165
        ExplicitHeight = 156
        object Splitter1: TSplitter
          Left = 744
          Top = 0
          Width = 8
          Height = 156
        end
        object plRealizado: TPanel
          Left = 0
          Top = 0
          Width = 249
          Height = 156
          Align = alLeft
          Caption = 'plRealizado'
          TabOrder = 0
          Visible = False
          object DBGridRmg: TDBGrid
            Left = 1
            Top = 25
            Width = 247
            Height = 130
            Align = alClient
            Color = 13303807
            DataSource = Drmg
            DrawingStyle = gdsGradient
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDrawColumnCell = DBGridRmgDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rmgchave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ctacodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rmgdata'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'phgidentificacao'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rmgvalor'
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 247
            Height = 24
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 2
            Caption = 'Detalhe Cont'#225'bil - REALIZADO NO CONTA CORRENTE'
            TabOrder = 1
          end
        end
        object plPrevisto: TPanel
          Left = 249
          Top = 0
          Width = 495
          Height = 156
          Align = alLeft
          TabOrder = 1
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 493
            Height = 24
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 2
            Caption = 'Detalhe Cont'#225'bil - PREVISTO NO CONTAS A PAGAR'
            TabOrder = 0
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 25
            Width = 493
            Height = 130
            Align = alClient
            Color = 13303807
            DataSource = Dpcr
            DrawingStyle = gdsGradient
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridRmgDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfihistorico'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pcrvalor'
                Visible = True
              end>
          end
        end
        object Panel2: TPanel
          Left = 752
          Top = 0
          Width = 413
          Height = 156
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 2
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 411
            Height = 24
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 2
            Caption = 'Detalhe Cont'#225'bil - REALIZADO NO CONTAS A PAGAR'
            TabOrder = 0
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 25
            Width = 411
            Height = 130
            Align = alClient
            Color = 12516787
            DataSource = Dpcrr
            DrawingStyle = gdsGradient
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridRmgDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 15
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfihistorico'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pcrvalor'
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1165
        ExplicitWidth = 1165
      end
      inherited PlSelecao: TPanel
        Width = 1165
        ExplicitWidth = 1165
        inherited GBPlSelecao: TGroupBox
          Width = 1161
          ExplicitWidth = 1161
          inherited DBLista: TDBGrid
            Width = 1054
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1165
        Height = 287
        ExplicitWidth = 1165
        ExplicitHeight = 287
        inherited DBGLista: TDBGrid
          Width = 220
          Height = 262
          Align = alLeft
          Columns = <
            item
              Expanded = False
              FieldName = 'ogeidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ogeano'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ogedatainicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ogedatafinal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 262
          Width = 1165
          Visible = True
          ExplicitTop = 262
          ExplicitWidth = 1165
          object plRealizaApuracao: TPanel
            Left = 1
            Top = 1
            Width = 300
            Height = 23
            Align = alLeft
            Alignment = taLeftJustify
            BorderWidth = 3
            Caption = 'Realiza Apura'#231#227'o:'
            TabOrder = 0
            Visible = False
            object pbMostraApuracao: TProgressBar
              Left = 96
              Top = 4
              Width = 200
              Height = 15
              Align = alRight
              TabOrder = 0
            end
          end
        end
        object Panel1: TPanel
          Left = 220
          Top = 0
          Width = 945
          Height = 262
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 3
          object DBGridApuracao: TDBGrid
            Left = 1
            Top = 1
            Width = 943
            Height = 260
            Align = alClient
            BorderStyle = bsNone
            Color = 16774636
            DataSource = Daog
            DrawingStyle = gdsGradient
            GradientStartColor = 14079702
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGridApuracaoCellClick
            OnColEnter = DBGridApuracaoColEnter
            OnDrawColumnCell = DBGridApuracaoDrawColumnCell
            OnMouseUp = DBGridApuracaoMouseUp
            Columns = <
              item
                Expanded = False
                FieldName = 'pcgcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pcgtitulo'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto01'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 01'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado01'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 01'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo01'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual01'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto02'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 02'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado02'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 02'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo02'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual02'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto03'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 03'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado03'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 03'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo03'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual03'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto04'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 04'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado04'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 04'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo04'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual04'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto05'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 05'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado05'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 05'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo05'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual05'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto06'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 06'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado06'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 06'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo06'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual06'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto07'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 07'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado07'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 07'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo07'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual07'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto08'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 08'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado08'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 08'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo08'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual08'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto09'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 09'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado09'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 09'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo09'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual09'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto10'
                Title.Caption = 'Previsto 10'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado10'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 10'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo10'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual10'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto11'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 11'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado11'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 11'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo11'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual11'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevisto12'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previsto 12'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogrealizado12'
                Title.Alignment = taRightJustify
                Title.Caption = 'Realizado 12'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldo12'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentual12'
                Title.Alignment = taRightJustify
                Title.Caption = '% Dif.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevistogeral'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogprevistogeral'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogsaldogeral'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'aogpercentualgeral'
                Title.Alignment = taRightJustify
                Width = 40
                Visible = True
              end>
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1309
      ExplicitWidth = 1309
      inherited plid: TPanel
        Left = 859
        ExplicitLeft = 859
      end
      inherited PlSair: TPanel
        Left = 1103
        ExplicitLeft = 1103
      end
    end
  end
  inherited acoes: TActionList
    Left = 1060
    Top = 92
    object ActItens: TAction [0]
      Category = 'Or'#231'amento'
      Caption = 'Itens do Or'#231'amento'
      OnExecute = ActItensExecute
    end
    object ActProgramacaoLimite: TAction [1]
      Category = 'Or'#231'amento'
      Caption = 'Programa'#231#227'o de Limite'
      OnExecute = ActProgramacaoLimiteExecute
    end
    object ActContabilizacao: TAction [2]
      Category = 'Or'#231'amento'
      Caption = 'Contabiliza'#231#227'o Manual'
      OnExecute = ActContabilizacaoExecute
    end
    object ActHistoricosReceita: TAction [3]
      Category = 'Or'#231'amento'
      Caption = 'Hist'#243'ricos de Receita'
      OnExecute = ActHistoricosReceitaExecute
    end
    object ActRealizarApuracao: TAction [4]
      Category = 'Or'#231'amento'
      Caption = 'Realizar Apura'#231#227'o'
      OnExecute = ActRealizarApuracaoExecute
    end
    object ActGerarPlanilha: TAction [5]
      Category = 'Planilhas'
      Caption = 'Anual'
    end
    object ActGerarPlanilhaPrimeiroSemestre: TAction [6]
      Category = 'Planilhas'
      Caption = 'Primeiro Semestre'
    end
    object ActGerarPlanilhaSegundoSemestre: TAction [7]
      Category = 'Planilhas'
      Caption = 'Segundo Semestre'
    end
    object ActGeraPlanilhaAnaliseVertical: TAction [8]
      Category = 'Planilhas'
      Caption = 'Analise Vertical'
    end
    object ActGerarPlanilhaPrimeiroTrimestre: TAction [9]
      Category = 'Planilhas Trimestrais'
      Caption = 'Primeiro Trimestre'
    end
    object ActGerarPlanilhaSegundoTrimestre: TAction [10]
      Category = 'Planilhas Trimestrais'
      Caption = 'Segundo Trimestre'
    end
    object ActGerarPlanilhaTerceiroTrimestre: TAction [11]
      Category = 'Planilhas Trimestrais'
      Caption = 'Terceiro Trimestre'
    end
    object ActGerarPlanilhaQuartoTrimestre: TAction [12]
      Category = 'Planilhas Trimestrais'
      Caption = 'Quarto Trimestre'
    end
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ogechave,'
      '  ogeidentificacao,'
      '  ogedatainicial,'
      '  ogedatafinal,'
      '  ogeobservacao,'
      '  ogeano,'
      '  ogepercotimista,'
      '  ogeperpecimista,'
      
        '  if (ogeestagio=1,'#39'Em Implanta'#231#227'o'#39',if(ogeestagio=2,'#39'Ativo'#39', '#39'In' +
        'ativo'#39')) ogeestagio ,'
      '  clbcodigo,'
      '  ogeregistro'
      'FROM oge')
    Left = 572
    Top = 204
    object uqtabelaogechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'ogechave'
    end
    object uqtabelaogeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ogeidentificacao'
      Size = 50
    end
    object uqtabelaogedatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'ogedatainicial'
    end
    object uqtabelaogedatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'ogedatafinal'
    end
    object uqtabelaogepercotimista: TFloatField
      DisplayLabel = '% Otimista'
      FieldName = 'ogepercotimista'
    end
    object uqtabelaogeperpecimista: TFloatField
      DisplayLabel = '% Pessimista'
      FieldName = 'ogeperpecimista'
    end
    object uqtabelaogeestagio: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'ogeestagio'
    end
    object uqtabelaogeano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ogeano'
    end
  end
  inherited cpg: TUniQuery
    Left = 508
    Top = 352
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 693
    Top = 305
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 370
    Top = 268
  end
  inherited DSSugestao: TDataSource
    Top = 244
  end
  inherited Dsfi: TUniDataSource
    Left = 680
    Top = 356
  end
  inherited sfi: TUniQuery
    Left = 780
    Top = 336
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object dog: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dog.dogchave,'
      '  dog.ogechave,'
      '  dog.pcgcodigo,'
      '  dog.dogmes,'
      '  pcg.pcgidentificacao,'
      '  dog.dogprevisao,'
      '  dog.dogrealizado,'
      '  (dog.dogprevisao-dog.dogrealizado) dogsaldo,'
      
        '  (((dog.dogrealizado-dog.dogrealizado)/dog.dogprevisao)*100) do' +
        'gpercentual,'
      '  dog.dogpercotimista,'
      '  dog.dogperpessimista,'
      '  dog.dogsituacao,'
      '  dog.clbcodigo,'
      '  dog.dogregistro'
      'FROM dog, pcg where ogechave=:ogechave'
      '  AND  dog.pcgcodigo=pcg.pcgcodigo'
      'order by dog.pcgcodigo, dogmes')
    Left = 1072
    Top = 356
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogechave'
        Value = nil
      end>
    object dogdogchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'dogchave'
    end
    object dogogechave: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ogechave'
    end
    object dogpcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object dogpcgidentificacao: TStringField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 50
    end
    object dogdogprevisao: TFloatField
      DisplayLabel = 'Valor Previs'#227'o'
      FieldName = 'dogprevisao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dogdogrealizado: TFloatField
      DisplayLabel = 'Valor Realizado'
      FieldName = 'dogrealizado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dogdogpercentual: TFloatField
      DisplayLabel = '% Varia'#231#227'o'
      FieldName = 'dogpercentual'
      EditFormat = '#0.0'
    end
    object dogdogsaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'dogsaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dogdogmes: TIntegerField
      FieldName = 'dogmes'
    end
  end
  object Ddog: TDataSource
    DataSet = dog
    Left = 1048
    Top = 316
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo from pcg where pcgorcamento=1 ')
    Left = 656
    Top = 508
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object ogedog: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dogchave,'
      '  ogechave,'
      '  pcgcodigo,'
      '  dogprevisao,'
      '  dogrealizado,'
      '  dogpercotimista,'
      '  dogperpessimista,'
      '  dogsituacao,'
      '  dogmes,'
      '  dogano,'
      '  clbcodigo,'
      '  dogregistro'
      
        'FROM dog where dogano=:dogano and dogmes=:dogmes and pcgcodigo=:' +
        'pcgcodigo')
    Left = 800
    Top = 516
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dogano'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dogmes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
        Value = nil
      end>
    object ogedogdogchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'dogchave'
    end
    object ogedogogechave: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ogechave'
    end
    object ogedogpcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object ogedogdogprevisao: TFloatField
      DisplayLabel = 'Valor Previs'#227'o R$'
      FieldName = 'dogprevisao'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ogedogdogmes: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'dogmes'
      Required = True
    end
    object ogedogdogano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'dogano'
      Required = True
    end
    object ogedogdogrealizado: TFloatField
      FieldName = 'dogrealizado'
    end
    object ogedogdogpercotimista: TFloatField
      FieldName = 'dogpercotimista'
    end
    object ogedogdogperpessimista: TFloatField
      FieldName = 'dogperpessimista'
    end
    object ogedogdogsituacao: TIntegerField
      FieldName = 'dogsituacao'
    end
    object ogedogclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ogedogdogregistro: TDateTimeField
      FieldName = 'dogregistro'
    end
  end
  object oge: TUniQuery
    SQL.Strings = (
      '/* s'#243' do contas a pagar */'
      ''
      ''
      'SELECT'
      '  pcgcodigo,'
      '  pcgestrutural  pcgidentificacao,'
      '  seacodigo,'
      ''
      
        '  IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgt' +
        'otal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.r' +
        'fichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mf' +
        'i.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:o' +
        'geano) ,'#39'-01-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogean' +
        'o=:ogeano) ,'#39'-01-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY p' +
        'cgcodigo),0) AS ogerealizado01,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=1),0) ogeprevisto01,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=1)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-01-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-01-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo01, '
      ''
      
        '  IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgt' +
        'otal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.r' +
        'fichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mf' +
        'i.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:o' +
        'geano) ,'#39'-02-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogean' +
        'o=:ogeano) ,'#39'-02-28'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY p' +
        'cgcodigo),0) AS ogerealizado02,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=2),0) ogeprevisto02,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=2)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-02-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-02-28'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo02 ,'
      ''
      
        '  IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgt' +
        'otal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.r' +
        'fichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mf' +
        'i.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:o' +
        'geano) ,'#39'-03-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogean' +
        'o=:ogeano) ,'#39'-03-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY p' +
        'cgcodigo),0) AS ogerealizado03,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=3),0) ogeprevisto03,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=3)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-03-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-03-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo03,'
      ''
      
        ' IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgto' +
        'tal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rf' +
        'ichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi' +
        '.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:og' +
        'eano) ,'#39'-04-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano' +
        '=:ogeano) ,'#39'-04-30'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pc' +
        'gcodigo),0) AS ogerealizado04,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=4),0) ogeprevisto04,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=4)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-04-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-04-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo04, '
      ''
      ''
      
        '  IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgt' +
        'otal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.r' +
        'fichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mf' +
        'i.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:o' +
        'geano) ,'#39'-05-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogean' +
        'o=:ogeano) ,'#39'-05-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY p' +
        'cgcodigo),0) AS ogerealizado05,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=5),0) ogeprevisto05,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=5)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-05-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-05-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo05,'
      '  '
      '  '
      
        '  IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgt' +
        'otal FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.r' +
        'fichave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mf' +
        'i.mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:o' +
        'geano) ,'#39'-06-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogean' +
        'o=:ogeano) ,'#39'-06-30'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY p' +
        'cgcodigo),0) AS ogerealizado06,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=6),0) ogeprevisto06,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=6)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-06-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-06-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo06, '
      ' '
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-07-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-07-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado07,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=7),0) ogeprevisto07,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=7)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-07-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-07-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo07 ,'
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-08-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-08-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado08,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=8),0) ogeprevisto08,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=8)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-08-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-08-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo08,'
      ''
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-09-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-09-30'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado09,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=9),0) ogeprevisto09,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=9)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-09-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-09-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo09,'
      ''
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-10-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-10-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado10,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=10),0) ogeprevisto10,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=10)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-10-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-10-31'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo10,'
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-11-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-10-30'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado11,'
      
        ' IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pc' +
        'gcodigo and dog.dogano=:ogeano and dogmes=11),0) ogeprevisto11,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=11)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-11-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-11-30'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo11,'
      ''
      
        'IFNULL( (SELECT SUM(if(rfirepetir>1, mfivalor, pcrvalor)) rmgtot' +
        'al FROM mfi,v_rfi,pcr WHERE mfi.tmfcodigo in (11,21) and mfi.rfi' +
        'chave=v_rfi.rfichave AND pcr.titcodigo=v_rfi.titcodigo and  mfi.' +
        'mfidata BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:oge' +
        'ano) ,'#39'-12-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=' +
        ':ogeano) ,'#39'-12-31'#39') and pcr.pcgcodigo=pcg.pcgcodigo GROUP BY pcg' +
        'codigo),0) AS ogerealizado12,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=12),0) ogeprevisto12,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=12)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-12-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-12-31'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo12,'
      ' pcg.cedcodigo '
      ''
      'FROM pcg'
      'order by concat(pcgestrutural,'#39' - '#39', pcgidentificacao)'
      ''
      ''
      ''
      ''
      ''
      '/** do conta corrente'
      ''
      'SELECT'
      '  pcgcodigo,'
      
        '  concat(pcgestrutural,'#39' - '#39', pcgidentificacao) pcgidentificacao' +
        ','
      '  seacodigo,'
      ''
      
        '  IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM rmg WHERE rmgdata ' +
        'BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39'-' +
        '01-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano)' +
        ' ,'#39'-01-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo),' +
        '0) AS ogerealizado01,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=1),0) ogeprevisto01,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=1)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-01-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-01-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo01, '
      ''
      
        '  IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM rmg WHERE  rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-02-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-02-28'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado02,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=2),0) ogeprevisto02,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=2)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-02-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-02-28'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo02 ,'
      ''
      
        '  IFNULL((SELECT SUM(rmgvalor) rmgtotal FROM rmg  WHERE  rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-03-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-03-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado03,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=3),0) ogeprevisto03,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=3)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-03-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-03-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo03,'
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE  rmgdat' +
        'a BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,' +
        #39'-04-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogean' +
        'o) ,'#39'-04-30'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo' +
        '),0) AS ogerealizado04,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=4),0) ogeprevisto04,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=4)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-04-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-04-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo04, '
      ''
      ''
      
        '  IFNULL((SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE  rmgdat' +
        'a BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,' +
        #39'-05-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogean' +
        'o) ,'#39'-05-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo' +
        '),0) AS ogerealizado05,'
      
        '  IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=5),0) ogeprevisto05,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=5)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-05-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-05-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo05,'
      '  '
      '  '
      
        '  IFNULL((SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE  rmgdat' +
        'a BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,' +
        #39'-06-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogean' +
        'o) ,'#39'-06-30'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo' +
        '),0) AS ogerealizado06,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=6),0) ogeprevisto06,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=6)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-06-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-06-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo06, '
      ' '
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE  rmgdat' +
        'a BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,' +
        #39'-07-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogean' +
        'o) ,'#39'-07-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo' +
        '),0) AS ogerealizado07,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=7),0) ogeprevisto07,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=7)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-07-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-07-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo07 ,'
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg WHERE  rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-08-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-08-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado08,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=8),0) ogeprevisto08,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=8)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-08-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-08-31'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo08,'
      ''
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-09-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-09-30'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado09,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=9),0) ogeprevisto09,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=9)-(SELECT SUM(rmgvalor) rmgt' +
        'otal FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM o' +
        'ge WHERE ogeano=:ogeano) ,'#39'-09-01'#39') AND CONCAT((SELECT ogeano FR' +
        'OM oge WHERE ogeano=:ogeano) ,'#39'-09-30'#39') and rmg.pcgcodigo=pcg.pc' +
        'gcodigo GROUP BY pcgcodigo) AS ogesaldo09,'
      ''
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-10-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-10-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado10,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=10),0) ogeprevisto10,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=10)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-10-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-10-31'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo10,'
      ''
      
        '  IFNULL((SELECT SUM(rmgvalor) rmgtotal FROM  rmg WHERE  rmgdata' +
        ' BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,'#39 +
        '-11-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano' +
        ') ,'#39'-11-30'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo)' +
        ',0) AS ogerealizado11,'
      
        ' IFNULL( (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pc' +
        'gcodigo and dog.dogano=:ogeano and dogmes=11),0) ogeprevisto11,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=11)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-11-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-11-30'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo11,'
      ''
      
        ' IFNULL( (SELECT SUM(rmgvalor) rmgtotal FROM  rmg  WHERE  rmgdat' +
        'a BETWEEN CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogeano) ,' +
        #39'-12-01'#39') AND CONCAT((SELECT ogeano FROM oge WHERE ogeano=:ogean' +
        'o) ,'#39'-12-31'#39') and rmg.pcgcodigo=pcg.pcgcodigo GROUP BY pcgcodigo' +
        '),0) AS ogerealizado12,'
      
        ' IFNULL(  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.p' +
        'cgcodigo and dog.dogano=:ogeano and dogmes=12),0) ogeprevisto12,'
      
        '  (select dogprevisao FROM dog WHERE dog.pcgcodigo=pcg.pcgcodigo' +
        ' and dog.dogano=:ogeano and dogmes=12)-(SELECT SUM(rmgvalor) rmg' +
        'total FROM rmg WHERE rmgdata BETWEEN CONCAT((SELECT ogeano FROM ' +
        'oge WHERE ogeano=:ogeano) ,'#39'-12-01'#39') AND CONCAT((SELECT ogeano F' +
        'ROM oge WHERE ogeano=:ogeano) ,'#39'-12-31'#39') and rmg.pcgcodigo=pcg.p' +
        'cgcodigo GROUP BY pcgcodigo) AS ogesaldo12,'
      ' pcg.cedcodigo '
      ''
      'FROM pcg'
      'order by concat(pcgestrutural,'#39' - '#39', pcgidentificacao)    */')
    Left = 920
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogeano'
        Value = nil
      end>
    object ogepcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
      Required = True
    end
    object ogepcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      ReadOnly = True
      Required = True
      Size = 133
    end
    object ogeogerealizado01: TFloatField
      FieldName = 'ogerealizado01'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto01: TFloatField
      FieldName = 'ogeprevisto01'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo01: TFloatField
      FieldName = 'ogesaldo01'
      ReadOnly = True
    end
    object ogeogerealizado02: TFloatField
      FieldName = 'ogerealizado02'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto02: TFloatField
      FieldName = 'ogeprevisto02'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo02: TFloatField
      FieldName = 'ogesaldo02'
      ReadOnly = True
    end
    object ogeogerealizado03: TFloatField
      FieldName = 'ogerealizado03'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto03: TFloatField
      FieldName = 'ogeprevisto03'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo03: TFloatField
      FieldName = 'ogesaldo03'
      ReadOnly = True
    end
    object ogeogerealizado04: TFloatField
      FieldName = 'ogerealizado04'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto04: TFloatField
      FieldName = 'ogeprevisto04'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo04: TFloatField
      FieldName = 'ogesaldo04'
      ReadOnly = True
    end
    object ogeogerealizado05: TFloatField
      FieldName = 'ogerealizado05'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto05: TFloatField
      FieldName = 'ogeprevisto05'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo05: TFloatField
      FieldName = 'ogesaldo05'
      ReadOnly = True
    end
    object ogeogerealizado06: TFloatField
      FieldName = 'ogerealizado06'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto06: TFloatField
      FieldName = 'ogeprevisto06'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo06: TFloatField
      FieldName = 'ogesaldo06'
      ReadOnly = True
    end
    object ogeogerealizado07: TFloatField
      FieldName = 'ogerealizado07'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto07: TFloatField
      FieldName = 'ogeprevisto07'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo07: TFloatField
      FieldName = 'ogesaldo07'
      ReadOnly = True
    end
    object ogeogerealizado08: TFloatField
      FieldName = 'ogerealizado08'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto08: TFloatField
      FieldName = 'ogeprevisto08'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo08: TFloatField
      FieldName = 'ogesaldo08'
      ReadOnly = True
    end
    object ogeogerealizado09: TFloatField
      FieldName = 'ogerealizado09'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto09: TFloatField
      FieldName = 'ogeprevisto09'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo09: TFloatField
      FieldName = 'ogesaldo09'
      ReadOnly = True
    end
    object ogeogerealizado10: TFloatField
      FieldName = 'ogerealizado10'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto10: TFloatField
      FieldName = 'ogeprevisto10'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo10: TFloatField
      FieldName = 'ogesaldo10'
      ReadOnly = True
    end
    object ogeogerealizado11: TFloatField
      FieldName = 'ogerealizado11'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto11: TFloatField
      FieldName = 'ogeprevisto11'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo11: TFloatField
      FieldName = 'ogesaldo11'
      ReadOnly = True
    end
    object ogeogerealizado12: TFloatField
      FieldName = 'ogerealizado12'
      ReadOnly = True
      Required = True
    end
    object ogeogeprevisto12: TFloatField
      FieldName = 'ogeprevisto12'
      ReadOnly = True
      Required = True
    end
    object ogeogesaldo12: TFloatField
      FieldName = 'ogesaldo12'
      ReadOnly = True
    end
    object ogecedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object ogeseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
  end
  object Doge: TDataSource
    DataSet = oge
    Left = 960
    Top = 197
  end
  object aog: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  aogchave,'
      '  ogechave,'
      '  pcgcodigo,'
      
        '  (select pcgestrutural from pcg where pcg.pcgcodigo=aog.pcgcodi' +
        'go) pcgestrutural,'
      '  pcgidentificacao,'
      '  pcgtitulo,'
      '  aogprevisto01,'
      '  aogrealizado01,'
      '  aogsaldo01,'
      '  aogpercentual01,'
      '  aogprevisto02,'
      '  aogrealizado02,'
      '  aogsaldo02,'
      '  aogpercentual02,'
      '  aogprevisto03,'
      '  aogrealizado03,'
      '  aogsaldo03,'
      '  aogpercentual03,'
      '  aogprevisto04,'
      '  aogrealizado04,'
      '  aogsaldo04,'
      '  aogpercentual04,'
      '  aogprevisto05,'
      '  aogrealizado05,'
      '  aogsaldo05,'
      '  aogpercentual05,'
      '  aogprevisto06,'
      '  aogrealizado06,'
      '  aogsaldo06,'
      '  aogpercentual06,'
      '  aogprevisto07,'
      '  aogrealizado07,'
      '  aogsaldo07,'
      '  aogpercentual07,'
      '  aogprevisto08,'
      '  aogrealizado08,'
      '  aogsaldo08,'
      '  aogpercentual08,'
      '  aogprevisto09,'
      '  aogrealizado09,'
      '  aogsaldo09,'
      '  aogpercentual09,'
      '  aogprevisto10,'
      '  aogrealizado10,'
      '  aogsaldo10,'
      '  aogpercentual10,'
      '  aogprevisto11,'
      '  aogrealizado11,'
      '  aogsaldo11,'
      '  aogpercentual11,'
      '  aogprevisto12,'
      '  aogrealizado12,'
      '  aogsaldo12,'
      '  aogpercentual12,'
      '  aogprevistogeral,'
      '  aogrealizadogeral,'
      '  aogsaldogeral,'
      '  aogpercentualgeral,'
      '  seacodigo,'
      
        ' (select cedcodigo from pcg where pcg.pcgcodigo=aog.pcgcodigo)ce' +
        'dcodigo '
      'FROM aog'
      'where ogechave=:ogechave '
      '--   and (pcgidentificacao NOT LIKE '#39'1.2%'#39')'
      ' -- and (pcgidentificacao NOT like '#39'1.3%'#39')'
      '  and (pcgidentificacao NOT like '#39'1.4%'#39')'
      '  and (pcgidentificacao NOT like '#39'1.5%'#39')'
      '  and (pcgidentificacao NOT like '#39'1.6%'#39')'
      'order by pcgidentificacao')
    Left = 1076
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogechave'
        Value = nil
      end>
    object aogaogchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'aogchave'
    end
    object aogogechave: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ogechave'
    end
    object aogpcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object aogpcgidentificacao: TStringField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 255
    end
    object aogpcgtitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'pcgtitulo'
      Size = 255
    end
    object aogaogprevisto01: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto01'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado01: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado01'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo01: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo01'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual01: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual01'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto02: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto02'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado02: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado02'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo02: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo02'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual02: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual02'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto03: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto03'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado03: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado03'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo03: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo03'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual03: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual03'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto04: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto04'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado04: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado04'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo04: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo04'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual04: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual04'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto05: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogprevisto05'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado05: TFloatField
      DisplayLabel = 'Realizado Geral'
      FieldName = 'aogrealizado05'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo05: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo05'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual05: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual05'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto06: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto06'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado06: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado06'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo06: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo06'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual06: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual06'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto07: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto07'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado07: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado07'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo07: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo07'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual07: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual07'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto08: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto08'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado08: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado08'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo08: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo08'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual08: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual08'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto09: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto09'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado09: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado09'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo09: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo09'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual09: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual09'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto10: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto10'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado10: TFloatField
      DisplayLabel = 'Realizado Geral'
      FieldName = 'aogrealizado10'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo10: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo10'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual10: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogpercentual10'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto11: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto11'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado11: TFloatField
      DisplayLabel = 'Realizado Geral'
      FieldName = 'aogrealizado11'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo11: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo11'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual11: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual11'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevisto12: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'aogprevisto12'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizado12: TFloatField
      DisplayLabel = 'Realizado'
      FieldName = 'aogrealizado12'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldo12: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'aogsaldo12'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentual12: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentual12'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogaogprevistogeral: TFloatField
      DisplayLabel = 'Previs'#227'o Geral'
      FieldName = 'aogprevistogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogrealizadogeral: TFloatField
      DisplayLabel = 'Realizado Geral'
      FieldName = 'aogrealizadogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogsaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral'
      FieldName = 'aogsaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object aogaogpercentualgeral: TFloatField
      DisplayLabel = '% Var.'
      FieldName = 'aogpercentualgeral'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object aogpcgestrutural: TStringField
      DisplayLabel = 'Estrutural'
      FieldName = 'pcgestrutural'
      Size = 50
    end
    object aogseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
    object aogcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  object Daog: TDataSource
    DataSet = aog
    OnDataChange = DaogDataChange
    Left = 1028
    Top = 205
  end
  object sea: TUniQuery
    SQL.Strings = (
      'select  pcgcodigo, seacodigo,cedcodigo from pcg')
    Left = 844
    Top = 309
    object seapcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object seaseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
    object seacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  rmg.mlgchave,'
      '  mlg.flacodigo,'
      '  fla.flaidentificacao,'
      '  rmg.pcgcodigo,'
      '  rmg.cedcodigo,'
      '  ced.cedidentificacao,'
      '  rmgvalor,'
      '  rmgdata,'
      '  rmgcomplemento,'
      '  rmg.phgcodigo,'
      
        ' concat( phgidentificacao, '#39' '#39',rmgcomplemento) phgidentificacao,' +
        ' '
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  lte.ctacodigo'
      'FROM rmg'
      '  JOIN mlg ON rmg.mlgchave = mlg.mlgchave'
      '  JOIN fla ON mlg.flacodigo= fla.flacodigo'
      '  LEFT JOIN lte ON mlg.ltechave = lte.ltechave'
      ''
      '  JOIN pcg on rmg.pcgcodigo= pcg.pcgcodigo'
      '  JOIN phg ON rmg.phgcodigo=phg.phgcodigo'
      '  left JOIN ced ON rmg.cedcodigo = ced.cedcodigo'
      
        '  where rmg.pcgcodigo=:pcgcodigo and rmgdata BETWEEN :datainicia' +
        'l and :datafinal'
      
        '  order by rmgdata,concat( phgidentificacao, '#39' '#39',rmgcomplemento)' +
        ' ')
    Left = 544
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
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
    object rmgrmgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object rmgmlgchave: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'mlgchave'
    end
    object rmgflacodigo: TIntegerField
      DisplayLabel = 'Fla'
      FieldName = 'flacodigo'
    end
    object rmgflaidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Filial'
      FieldName = 'flaidentificacao'
      Size = 50
    end
    object rmgpcgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'pcgcodigo'
    end
    object rmgcedcodigo: TIntegerField
      DisplayLabel = 'Cedcodigo'
      FieldName = 'cedcodigo'
    end
    object rmgcedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 35
    end
    object rmgrmgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rmgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rmgrmgdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rmgdata'
      EditMask = '!99/99/9999;1;_'
    end
    object rmgrmgcomplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'rmgcomplemento'
      Size = 300
    end
    object rmgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rmgphgidentificacao: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgidentificacao'
      Size = 80
    end
    object rmgrmgcompetencia: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'rmgcompetencia'
    end
    object rmgrmginclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'rmginclusao'
    end
    object rmgctacodigo: TIntegerField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'ctacodigo'
    end
  end
  object Drmg: TDataSource
    DataSet = rmg
    Left = 584
    Top = 508
  end
  object pcr: TUniQuery
    SQL.Strings = (
      
        'SELECT rfi.rfichave, etdidentificacao ,rfivencimento, rfihistori' +
        'co, (pcrvalor/rfirepetir)  pcrvalor FROM pcr,rfi,etd WHERE rfi.e' +
        'tdcodigo=etd.etdcodigo and pcr.titcodigo=rfi.titcodigo AND srfco' +
        'digo<>9 and rfivencimento BETWEEN :datainicial and :datafinal an' +
        'd pcgcodigo=:pcgcodigo ;')
    Left = 734
    Top = 516
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
        Name = 'pcgcodigo'
        Value = nil
      end>
    object pcrrfichave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rfichave'
    end
    object pcretdidentificacao: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object pcrrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object pcrrfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 100
    end
    object pcrpcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'pcrvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dpcr: TDataSource
    DataSet = pcr
    Left = 934
    Top = 508
  end
  object pcrr: TUniQuery
    SQL.Strings = (
      ''
      'SELECT'
      ' v_rfi.rfichave,'
      '  etdidentificacao,'
      '  rfivencimento,'
      '  rfihistorico,'
      '  if(rfirepetir>1,mfivalor, pcrvalor) pcrvalor'
      'FROM pcr'
      '  INNER JOIN pcg'
      '    ON pcr.pcgcodigo = pcg.pcgcodigo'
      '  INNER JOIN phg'
      '    ON pcr.phgcodigo = phg.phgcodigo'
      ''
      
        '  INNER JOIN v_rfi ON  pcr.titcodigo = v_rfi.titcodigo and srfco' +
        'digo <> 9'
      
        '  INNER JOIN mfi ON  mfi.rfichave = v_rfi.rfichave and mfi.tmfco' +
        'digo = 11'
      '    where '
      ' mfidata BETWEEN :datainicial AND :datafinal'
      '  AND pcr.pcgcodigo = :pcgcodigo;'
      ''
      
        '/*SELECT v_rfi.rfichave, etdidentificacao ,rfivencimento, rfihis' +
        'torico, mfivalor pcrvalor FROM pcr,v_rfi,mfi WHERE mfi.rfichave=' +
        'v_rfi.rfichave and mfi.tmfcodigo=11 and srfcodigo<>9 and pcr.tit' +
        'codigo=v_rfi.titcodigo AND mfidata BETWEEN :datainicial AND :dat' +
        'afinal and pcgcodigo=:pcgcodigo */')
    Left = 1088
    Top = 508
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
        Name = 'pcgcodigo'
        Value = nil
      end>
    object pcrrrfichave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rfichave'
    end
    object pcrretdidentificacao: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object pcrrrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object pcrrrfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 100
    end
    object pcrrpcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'pcrvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dpcrr: TDataSource
    DataSet = pcrr
    Left = 1128
    Top = 512
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.titcodigo,'
      '  tit.etdcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titvalorparcela,'
      '  tit.titparcelas,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.clbcodigo,'
      '  tit.tithistorico,'
      '  tit.flacodigo,'
      '  tit.bcocodigo,'
      '  tit.carcodigo,'
      '  tit.titprevisao,'
      '  tit.moecodigo,'
      '  tit.titmoradia,'
      '  tit.titdiasmulta,'
      '  tit.titvalomulta,'
      '  tit.titpercmesmora,'
      '  tit.titvalodesc,'
      '  tit.titdiasdesc,'
      '  tit.titpercmulta,'
      '  tit.titpercmesmulta'
      'FROM tit'
      'where titcodigo=:titcodigo')
    Left = 740
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object tittitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object tittitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object tittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object titsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object tittficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object tittithora: TTimeField
      FieldName = 'tithora'
    end
    object tittithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object titclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object tittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object tittitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object titmoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object tittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object titflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object titbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object titcarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object tittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object tittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
  end
  object analisevertical: TUniQuery
    Left = 932
    Top = 333
  end
  object aogcred: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  aogchave,'
      '  ogechave,'
      '  pcgcodigo,'
      '  (SELECT'
      '      pcgestrutural'
      '    FROM pcg'
      '    WHERE pcg.pcgcodigo = aog.pcgcodigo) pcgestrutural,'
      '  pcgidentificacao,'
      '  pcgtitulo,'
      '  SUM(aogprevisto01) aogprevisto01,'
      '  SUM(aogrealizado01) aogrealizado01,'
      '  SUM(aogsaldo01) aogsaldo01,'
      '  aogpercentual01,'
      ''
      '  SUM(aogprevisto02) aogprevisto02,'
      '  SUM(aogrealizado02) aogrealizado02,'
      '  SUM(aogsaldo02) aogsaldo02,'
      '  aogpercentual02,'
      ''
      '  SUM(aogprevisto03) aogprevisto03,'
      '  SUM(aogrealizado03) aogrealizado03,'
      '  SUM(aogsaldo03) aogsaldo03,'
      '  aogpercentual03,'
      ''
      ''
      '  SUM(aogprevisto04) aogprevisto04,'
      '  SUM(aogrealizado04) aogrealizado04,'
      '  SUM(aogsaldo04) aogsaldo04,'
      '  aogpercentual04,'
      ''
      '  SUM(aogprevisto05) aogprevisto05,'
      '  SUM(aogrealizado05) aogrealizado05,'
      '  SUM(aogsaldo05) aogsaldo05,'
      '  aogpercentual05,'
      ''
      '  SUM(aogprevisto06) aogprevisto06,'
      '  SUM(aogrealizado06) aogrealizado06,'
      '  SUM(aogsaldo06) aogsaldo06,'
      '  aogpercentual06,'
      ''
      '  SUM(aogprevisto07) aogprevisto07,'
      '  SUM(aogrealizado07) aogrealizado07,'
      '  SUM(aogsaldo07) aogsaldo07,'
      '  aogpercentual07,'
      ''
      '  SUM(aogprevisto08) aogprevisto08,'
      '  SUM(aogrealizado08) aogrealizado08,'
      '  SUM(aogsaldo08) aogsaldo08,'
      '  aogpercentual08,'
      ''
      '  SUM(aogprevisto09) aogprevisto09,'
      '  SUM(aogrealizado09) aogrealizado09,'
      '  SUM(aogsaldo09) aogsaldo09,'
      '  aogpercentual09,'
      ''
      '  SUM(aogprevisto10) aogprevisto10,'
      '  SUM(aogrealizado10) aogrealizado10,'
      '  SUM(aogsaldo10) aogsaldo10,'
      '  aogpercentual10,'
      ''
      '  SUM(aogprevisto11) aogprevisto11,'
      '  SUM(aogrealizado11) aogrealizado11,'
      '  SUM(aogsaldo11) aogsaldo11,'
      '  aogpercentual11,'
      ''
      '  SUM(aogprevisto12) aogprevisto12,'
      '  SUM(aogrealizado12) aogrealizado12,'
      '  SUM(aogsaldo12) aogsaldo12,'
      '  aogpercentual12,'
      ''
      '  aogprevistogeral,'
      '  aogrealizadogeral,'
      '  aogsaldogeral,'
      '  aogpercentualgeral,'
      '  seacodigo,'
      '  (SELECT'
      '      cedcodigo'
      '    FROM pcg'
      '    WHERE pcg.pcgcodigo = aog.pcgcodigo) cedcodigo'
      'FROM aog'
      'WHERE ogechave = :ogechave'
      ''
      ''
      ' AND (SELECT'
      '    cedcodigo'
      '  FROM pcg'
      '  WHERE pcg.pcgcodigo = aog.pcgcodigo) = 1'
      'AND (pcgidentificacao like '#39'1'#39
      'or pcgidentificacao like '#39'1.1%'#39
      'OR pcgidentificacao like '#39'1.2%'#39
      '  OR pcgidentificacao like '#39'1.3%'#39') '
      ''
      'group BY pcgidentificacao'
      'ORDER BY pcgidentificacao')
    Left = 1156
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogechave'
        Value = nil
      end>
    object aogcredaogchave: TIntegerField
      FieldName = 'aogchave'
    end
    object aogcredogechave: TIntegerField
      FieldName = 'ogechave'
    end
    object aogcredpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object aogcredpcgestrutural: TStringField
      FieldName = 'pcgestrutural'
      ReadOnly = True
      Size = 50
    end
    object aogcredpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 255
    end
    object aogcredpcgtitulo: TStringField
      FieldName = 'pcgtitulo'
      Size = 255
    end
    object aogcredaogprevisto01: TFloatField
      FieldName = 'aogprevisto01'
      ReadOnly = True
    end
    object aogcredaogrealizado01: TFloatField
      FieldName = 'aogrealizado01'
      ReadOnly = True
    end
    object aogcredaogsaldo01: TFloatField
      FieldName = 'aogsaldo01'
      ReadOnly = True
    end
    object aogcredaogpercentual01: TFloatField
      FieldName = 'aogpercentual01'
    end
    object aogcredaogprevisto02: TFloatField
      FieldName = 'aogprevisto02'
      ReadOnly = True
    end
    object aogcredaogrealizado02: TFloatField
      FieldName = 'aogrealizado02'
      ReadOnly = True
    end
    object aogcredaogsaldo02: TFloatField
      FieldName = 'aogsaldo02'
      ReadOnly = True
    end
    object aogcredaogpercentual02: TFloatField
      FieldName = 'aogpercentual02'
    end
    object aogcredaogprevisto03: TFloatField
      FieldName = 'aogprevisto03'
      ReadOnly = True
    end
    object aogcredaogrealizado03: TFloatField
      FieldName = 'aogrealizado03'
      ReadOnly = True
    end
    object aogcredaogsaldo03: TFloatField
      FieldName = 'aogsaldo03'
      ReadOnly = True
    end
    object aogcredaogpercentual03: TFloatField
      FieldName = 'aogpercentual03'
    end
    object aogcredaogprevisto04: TFloatField
      FieldName = 'aogprevisto04'
      ReadOnly = True
    end
    object aogcredaogrealizado04: TFloatField
      FieldName = 'aogrealizado04'
      ReadOnly = True
    end
    object aogcredaogsaldo04: TFloatField
      FieldName = 'aogsaldo04'
      ReadOnly = True
    end
    object aogcredaogpercentual04: TFloatField
      FieldName = 'aogpercentual04'
    end
    object aogcredaogprevisto05: TFloatField
      FieldName = 'aogprevisto05'
      ReadOnly = True
    end
    object aogcredaogrealizado05: TFloatField
      FieldName = 'aogrealizado05'
      ReadOnly = True
    end
    object aogcredaogsaldo05: TFloatField
      FieldName = 'aogsaldo05'
      ReadOnly = True
    end
    object aogcredaogpercentual05: TFloatField
      FieldName = 'aogpercentual05'
    end
    object aogcredaogprevisto06: TFloatField
      FieldName = 'aogprevisto06'
      ReadOnly = True
    end
    object aogcredaogrealizado06: TFloatField
      FieldName = 'aogrealizado06'
      ReadOnly = True
    end
    object aogcredaogsaldo06: TFloatField
      FieldName = 'aogsaldo06'
      ReadOnly = True
    end
    object aogcredaogpercentual06: TFloatField
      FieldName = 'aogpercentual06'
    end
    object aogcredaogprevisto07: TFloatField
      FieldName = 'aogprevisto07'
      ReadOnly = True
    end
    object aogcredaogrealizado07: TFloatField
      FieldName = 'aogrealizado07'
      ReadOnly = True
    end
    object aogcredaogsaldo07: TFloatField
      FieldName = 'aogsaldo07'
      ReadOnly = True
    end
    object aogcredaogpercentual07: TFloatField
      FieldName = 'aogpercentual07'
    end
    object aogcredaogprevisto08: TFloatField
      FieldName = 'aogprevisto08'
      ReadOnly = True
    end
    object aogcredaogrealizado08: TFloatField
      FieldName = 'aogrealizado08'
      ReadOnly = True
    end
    object aogcredaogsaldo08: TFloatField
      FieldName = 'aogsaldo08'
      ReadOnly = True
    end
    object aogcredaogpercentual08: TFloatField
      FieldName = 'aogpercentual08'
    end
    object aogcredaogprevisto09: TFloatField
      FieldName = 'aogprevisto09'
      ReadOnly = True
    end
    object aogcredaogrealizado09: TFloatField
      FieldName = 'aogrealizado09'
      ReadOnly = True
    end
    object aogcredaogsaldo09: TFloatField
      FieldName = 'aogsaldo09'
      ReadOnly = True
    end
    object aogcredaogpercentual09: TFloatField
      FieldName = 'aogpercentual09'
    end
    object aogcredaogprevisto10: TFloatField
      FieldName = 'aogprevisto10'
      ReadOnly = True
    end
    object aogcredaogrealizado10: TFloatField
      FieldName = 'aogrealizado10'
      ReadOnly = True
    end
    object aogcredaogsaldo10: TFloatField
      FieldName = 'aogsaldo10'
      ReadOnly = True
    end
    object aogcredaogpercentual10: TFloatField
      FieldName = 'aogpercentual10'
    end
    object aogcredaogprevisto11: TFloatField
      FieldName = 'aogprevisto11'
      ReadOnly = True
    end
    object aogcredaogrealizado11: TFloatField
      FieldName = 'aogrealizado11'
      ReadOnly = True
    end
    object aogcredaogsaldo11: TFloatField
      FieldName = 'aogsaldo11'
      ReadOnly = True
    end
    object aogcredaogpercentual11: TFloatField
      FieldName = 'aogpercentual11'
    end
    object aogcredaogprevisto12: TFloatField
      FieldName = 'aogprevisto12'
      ReadOnly = True
    end
    object aogcredaogrealizado12: TFloatField
      FieldName = 'aogrealizado12'
      ReadOnly = True
    end
    object aogcredaogsaldo12: TFloatField
      FieldName = 'aogsaldo12'
      ReadOnly = True
    end
    object aogcredaogpercentual12: TFloatField
      FieldName = 'aogpercentual12'
    end
    object aogcredaogprevistogeral: TFloatField
      FieldName = 'aogprevistogeral'
      ReadOnly = True
    end
    object aogcredaogrealizadogeral: TFloatField
      FieldName = 'aogrealizadogeral'
      ReadOnly = True
    end
    object aogcredaogsaldogeral: TFloatField
      FieldName = 'aogsaldogeral'
      ReadOnly = True
    end
    object aogcredaogpercentualgeral: TFloatField
      FieldName = 'aogpercentualgeral'
    end
    object aogcredseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
    object aogcredcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      ReadOnly = True
    end
  end
  object hrf: TUniQuery
    SQL.Strings = (
      'select hrfchave, pcgcodigo from hrf')
    Left = 752
    Top = 400
    object hrfhrfchave: TIntegerField
      FieldName = 'hrfchave'
    end
    object hrfpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
end
