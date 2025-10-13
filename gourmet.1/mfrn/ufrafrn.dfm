inherited frafrn: Tfrafrn
  Width = 1019
  Height = 660
  ExplicitWidth = 1019
  ExplicitHeight = 660
  inherited PlGeral: TPanel
    Width = 1019
    Height = 660
    ExplicitWidth = 1019
    ExplicitHeight = 660
    inherited SplBotoes: TSplitter
      Height = 640
      ExplicitHeight = 535
    end
    inherited PlBotoes: TPanel
      Height = 640
      ExplicitHeight = 640
      inherited ImageLogoBase: TImage
        Top = 561
        ExplicitTop = 456
      end
      inherited PlInfo: TPanel
        Top = 622
        ExplicitTop = 622
      end
      inherited SBBotoes: TScrollBox
        Height = 561
        ExplicitHeight = 561
      end
    end
    inherited PlLista: TPanel
      Width = 875
      Height = 640
      ExplicitWidth = 875
      ExplicitHeight = 640
      inherited SplLista: TSplitter
        Top = 469
        Width = 875
        Visible = True
        ExplicitTop = 364
        ExplicitWidth = 875
      end
      inherited SpFilter: TSplitter
        Width = 875
        ExplicitWidth = 875
      end
      inherited PlRodaPe: TPanel
        Top = 474
        Width = 875
        Height = 166
        Visible = True
        ExplicitTop = 474
        ExplicitWidth = 875
        ExplicitHeight = 166
        object GBEdr: TGroupBox
          Left = 0
          Top = 0
          Width = 300
          Height = 166
          Align = alLeft
          Caption = ' Endere'#231'os '
          TabOrder = 0
          object DBEdr: TDBGrid
            Left = 2
            Top = 15
            Width = 296
            Height = 149
            Align = alClient
            BorderStyle = bsNone
            DataSource = Dedr
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'tedidentificacao'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'edrrua'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'edrbairro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cddnome'
                Visible = True
              end>
          end
        end
        object GBEmail: TGroupBox
          Left = 300
          Top = 0
          Width = 420
          Height = 166
          Align = alLeft
          Caption = ' Emails '
          TabOrder = 1
          object DBete: TDBGrid
            Left = 2
            Top = 15
            Width = 416
            Height = 149
            Align = alClient
            BorderStyle = bsNone
            DataSource = Dete
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'eteemail'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etecontato'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'eteenvianfe'
                Width = 34
                Visible = True
              end>
          end
        end
        object GBTlefone: TGroupBox
          Left = 720
          Top = 0
          Width = 329
          Height = 166
          Align = alLeft
          Caption = ' Telefones '
          TabOrder = 2
          object DBetf: TDBGrid
            Left = 2
            Top = 15
            Width = 325
            Height = 149
            Align = alClient
            BorderStyle = bsNone
            DataSource = Detf
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ttfidentificacao'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etftelefone'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etfcontato'
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 875
        ExplicitWidth = 875
        inherited PlBotaoFiltroEsp: TScrollBox
          Width = 115
          ExplicitWidth = 115
        end
      end
      inherited PlSelecao: TPanel
        Width = 875
        ExplicitWidth = 875
        inherited GBPlSelecao: TGroupBox
          Width = 871
          ExplicitWidth = 871
          inherited DBLista: TDBGrid
            Width = 764
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 875
        Height = 340
        ExplicitWidth = 875
        ExplicitHeight = 340
        inherited DBGLista: TDBGrid
          Width = 875
          Height = 280
          Columns = <
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etddoc1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdapelido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrinscest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrinscest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tseidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 280
          Width = 875
          Height = 60
          Visible = True
          ExplicitTop = 280
          ExplicitWidth = 875
          ExplicitHeight = 60
          object GBetddescsituacao: TGroupBox
            Left = 1
            Top = 1
            Width = 728
            Height = 58
            Align = alLeft
            Caption = ' Motivo do Bloqueio '
            TabOrder = 0
            object listaets: TDBGrid
              Left = 2
              Top = 15
              Width = 724
              Height = 41
              Align = alClient
              BorderStyle = bsNone
              Color = clCream
              DataSource = Dets
              Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'etsdata'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tseidentificacao'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'etshistorico'
                  Width = 450
                  Visible = True
                end>
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1019
      ExplicitWidth = 1019
      inherited plid: TPanel
        Left = 569
        Caption = '01.01.03.001'
        ExplicitLeft = 569
      end
      inherited PlSair: TPanel
        Left = 813
        ExplicitLeft = 813
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Category = 'Fornecedor'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Category = 'Fornecedor'
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Category = 'Fornecedor'
    end
    inherited ActAtualizar: TAction
      Category = 'Fornecedor'
    end
    inherited ActPesquisar: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActRelatorios: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActVerFiltros: TAction
      Category = 'Fornecedor'
    end
    inherited ActFiltrar: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActConfig: TAction
      Category = 'Fornecedor'
    end
    inherited ActConfiguracoes: TAction
      Category = 'Utilit'#225'rios'
    end
    inherited ActSair: TAction
      Category = 'Utilit'#225'rios'
    end
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActAtivar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActAtivarExecute
    end
  end
  inherited MenuManutencao: TPopupMenu
    Left = 436
    object mUtilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
      object mDesvincularFornecedor: TMenuItem
        Caption = 'Desvincular Fornecedor'
        OnClick = mDesvincularFornecedorClick
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.etdapelido,'
      '  tpe.tpeidentificacao,'
      '  tse.tseidentificacao,'
      '  tvi.tvicodigo,'
      '  etd.tpecodigo,'
      '  etd.etddoc1,'
      '  edr.edrinscest,'
      '  etd.etddatacad,'
      '  etd.etddataalt,'
      '  etd.etdativo,'
      '  etd.tsecodigo,'
      '  etd.etddescsituacao,'
      '  etd.etdsped,'
      '  etd.etdobs'
      'FROM etd'
      '  LEFT JOIN tpe'
      '    ON etd.tpecodigo = tpe.tpecodigo'
      '  LEFT JOIN etv'
      '    ON etd.etdcodigo = etv.etdcodigo'
      '  LEFT JOIN tvi'
      '    ON etv.tvicodigo = tvi.tvicodigo'
      ''
      '  LEFT JOIN tse'
      '    ON etd.tsecodigo = tse.tsecodigo'
      '  LEFT JOIN edr'
      '    ON etd.etdcodigo = edr.etdcodigo'
      'WHERE edr.tedcodigo = 1 ')
    object uqtabelaetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelaetdapelido: TStringField
      DisplayLabel = 'Nome fantasia /  Apelido'
      FieldName = 'etdapelido'
      Size = 40
    end
    object uqtabelatsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object uqtabelaetddoc1: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'etddoc1'
      Size = 25
    end
    object uqtabelaedrinscest: TStringField
      DisplayLabel = 'Inscr. Estadual'
      FieldName = 'edrinscest'
    end
    object uqtabelatpeidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Tipo'
      FieldName = 'tpeidentificacao'
      ReadOnly = True
      Required = True
    end
    object uqtabelatpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
    object uqtabelaetdobs: TStringField
      FieldName = 'etdobs'
      Size = 250
    end
    object uqtabelatseidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'tseidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
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
  object tvi: TUniQuery
    SQL.Strings = (
      
        'select tvicodigo, tviidentificacao from tvi where (tvicodigo=1 o' +
        'r tvicodigo=2 or tvicodigo=3) '
      '')
    Left = 680
    Top = 256
    object tvitvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
    object tvitviidentificacao: TStringField
      FieldName = 'tviidentificacao'
      Size = 35
    end
  end
  object Dedr: TUniDataSource
    DataSet = edr
    Left = 256
    Top = 484
  end
  object edr: TUniQuery
    SQL.Strings = (
      
        'select concat(edrrua,'#39', '#39', edrnumero) as edrrua ,edrbairro,conca' +
        't(cddnome,'#39' '#39', ufssigla) as cddnome,  tedidentificacao from edr,' +
        ' ted,cdd, ufs where edr.tedcodigo=ted.tedcodigo and edr.cddcodig' +
        'o=cdd.cddcodigo and cdd.ufscodigo=ufs.ufscodigo and etdcodigo=:e' +
        'tdcodigo order by edrrua')
    Left = 296
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object edredrrua: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'edrrua'
      Size = 50
    end
    object edredrbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'edrbairro'
      Size = 35
    end
    object edrcddnome: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cddnome'
      Size = 50
    end
    object edrtedidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tedidentificacao'
      Size = 30
    end
  end
  object Detf: TUniDataSource
    DataSet = etf
    Left = 576
    Top = 492
  end
  object etf: TUniQuery
    SQL.Strings = (
      
        'select etftelefone,etfcontato, ttfidentificacao from etf, ttf wh' +
        'ere etf.ttfcodigo=ttf.ttfcodigo and etdcodigo=:etdcodigo')
    Left = 616
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etfetftelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'etftelefone'
    end
    object etfetfcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etfcontato'
      Size = 25
    end
    object etfttfidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ttfidentificacao'
    end
  end
  object ete: TUniQuery
    SQL.Strings = (
      
        'select eteemail, etecontato, eteenvianfe from ete where etdcodig' +
        'o=:etdcodigo')
    Left = 892
    Top = 468
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object eteeteemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'eteemail'
      Size = 50
    end
    object eteetecontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etecontato'
      Size = 25
    end
    object eteeteenvianfe: TIntegerField
      DisplayLabel = 'NFE'
      FieldName = 'eteenvianfe'
    end
  end
  object Dete: TUniDataSource
    DataSet = ete
    Left = 936
    Top = 468
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 296
    Top = 416
  end
  object ets: TUniQuery
    SQL.Strings = (
      
        'select etscodigo, tsecodigo, etdcodigo, etsdata, etshistorico fr' +
        'om ets where etdcodigo=:etdcodigo order by etscodigo desc')
    Left = 796
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etsetscodigo: TIntegerField
      FieldName = 'etscodigo'
    end
    object etstsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object etsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etsetsdata: TDateField
      FieldName = 'etsdata'
    end
    object etsetshistorico: TStringField
      FieldName = 'etshistorico'
      Size = 250
    end
    object etstseidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tseidentificacao'
      LookupDataSet = tse
      LookupKeyFields = 'tsecodigo'
      LookupResultField = 'tseidentificacao'
      KeyFields = 'tsecodigo'
      Size = 25
      Lookup = True
    end
  end
  object tse: TUniQuery
    SQL.Strings = (
      'select tsecodigo, tseidentificacao from tse')
    Left = 823
    Top = 320
    object tsetsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object tsetseidentificacao: TStringField
      FieldName = 'tseidentificacao'
      Size = 25
    end
  end
  object Dets: TUniDataSource
    DataSet = ets
    Left = 828
    Top = 320
  end
end
