inherited frapcg: Tfrapcg
  Width = 1062
  Height = 692
  ExplicitWidth = 1062
  ExplicitHeight = 692
  inherited PlGeral: TPanel
    Width = 1062
    Height = 692
    ExplicitWidth = 1062
    ExplicitHeight = 692
    inherited SplBotoes: TSplitter
      Height = 672
      ExplicitHeight = 666
    end
    inherited PlBotoes: TPanel
      Height = 672
      ExplicitHeight = 672
      inherited ImageLogoBase: TImage
        Top = 593
        ExplicitTop = 587
      end
      inherited PlInfo: TPanel
        Top = 654
        ExplicitTop = 654
      end
      inherited SBBotoes: TScrollBox
        Height = 593
        ExplicitHeight = 593
      end
    end
    inherited PlLista: TPanel
      Width = 918
      Height = 672
      ExplicitWidth = 918
      ExplicitHeight = 672
      inherited SplLista: TSplitter
        Top = 427
        Width = 918
        Height = 9
        Visible = True
        ExplicitTop = 421
        ExplicitWidth = 918
        ExplicitHeight = 9
      end
      inherited SpFilter: TSplitter
        Width = 918
        ExplicitWidth = 918
      end
      inherited PlRodaPe: TPanel
        Top = 436
        Width = 918
        Height = 236
        Visible = True
        ExplicitTop = 436
        ExplicitWidth = 918
        ExplicitHeight = 236
        object DBGPrc: TDBGrid
          Left = 0
          Top = 26
          Width = 673
          Height = 210
          Align = alLeft
          DataSource = Dprc
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGPrcDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'prcchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccgidentificacao'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prcpercentual'
              Visible = True
            end>
        end
        object plTituloRateiso: TPanel
          Left = 0
          Top = 0
          Width = 918
          Height = 26
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 2
          Caption = 'Percentuais para Rateio por Centros de Custo'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      inherited PlFiltros: TPanel
        Width = 918
        ExplicitWidth = 918
        inherited PlBotaoFiltroEsp: TScrollBox
          Width = 158
          ExplicitWidth = 158
        end
      end
      inherited PlSelecao: TPanel
        Width = 918
        ExplicitWidth = 918
        inherited GBPlSelecao: TGroupBox
          Width = 914
          ExplicitWidth = 914
          inherited DBLista: TDBGrid
            Width = 807
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 918
        Height = 298
        Caption = ''
        ExplicitWidth = 918
        ExplicitHeight = 298
        inherited DBGLista: TDBGrid
          Width = 918
          Height = 273
          Columns = <
            item
              Expanded = False
              FieldName = 'pcgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Width = 15
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'seaidentificacao'
              Width = 15
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfpidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgestrutural'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'regcaixa'
              Width = 85
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 273
          Width = 918
          Visible = True
          ExplicitTop = 273
          ExplicitWidth = 918
          object lbEstrutural: TLabel
            Left = 512
            Top = 6
            Width = 55
            Height = 13
            Caption = 'lbEstrutural'
            Visible = False
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1062
      ExplicitWidth = 1062
      inherited plid: TPanel
        Left = 637
        Caption = '04-18-001'
        ExplicitLeft = 637
      end
      inherited PlSair: TPanel
        Left = 856
        ExplicitLeft = 856
      end
    end
  end
  inherited acoes: TActionList
    object ActGrupos: TAction [0]
      Category = 'Manuten'#231#227'o'
      Caption = 'Grupo Estrutural'
      Enabled = False
      OnExecute = ActGruposExecute
    end
    object ActAlterarGrupos: TAction [1]
      Category = 'Manuten'#231#227'o'
      Caption = 'Alterar Grupo Estrutural'
      Enabled = False
    end
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
    object ActRateios: TAction [5]
      Category = 'Manuten'#231#227'o'
      Caption = 'Rateios por CC'
      OnExecute = ActRateiosExecute
    end
  end
  inherited DSTabela: TUniDataSource
    OnStateChange = DSTabelaStateChange
    Left = 488
    Top = 60
  end
  inherited MenuManutencao: TPopupMenu
    Left = 728
    Top = 64
  end
  inherited mdl: TUniQuery
    Left = 864
    Top = 76
  end
  inherited dau: TUniQuery
    Left = 900
    Top = 76
  end
  inherited act: TUniQuery
    Left = 824
    Top = 76
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcg.pcgcodigo,'
      '  pcg.pcgestrutural,'
      '  pcg.pcgidentificacao,'
      '   pcg.cedcodigo,'
      '  pcg.seacodigo,'
      '  pcg.pcgativa,'
      '  cggcodigo,'
      '  pcg.cfpcodigo,'
      '  cedidentificacao,'
      '  seaidentificacao,'
      
        '  if (pcgrecdes=0,'#39'Pagamento'#39',if(pcgrecdes=1,'#39'Recebimento'#39','#39#39')) ' +
        'as regcaixa,'
      '  pcgrecdes,'
      '  cfpidentificacao'
      'FROM pcg,'
      '     cfp,'
      '     ced,'
      '     sea'
      'WHERE pcg.cfpcodigo = cfp.cfpcodigo'
      '  AND pcg.cedcodigo=ced.cedcodigo'
      '  and pcg.seacodigo=sea.seacodigo')
    Left = 404
    Top = 60
    object uqtabelapcgcodigo: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object uqtabelapcgestrutural: TStringField
      DisplayLabel = 'Estrutural'
      FieldName = 'pcgestrutural'
      Size = 30
    end
    object uqtabelaseacodigo: TIntegerField
      DisplayLabel = 'T'
      FieldName = 'seacodigo'
    end
    object uqtabelapcgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pcgidentificacao'
      Size = 80
    end
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
    end
    object uqtabelapcgativa: TIntegerField
      FieldName = 'pcgativa'
    end
    object uqtabelacggcodigo: TIntegerField
      FieldName = 'cggcodigo'
    end
    object uqtabelacfpcodigo: TIntegerField
      FieldName = 'cfpcodigo'
    end
    object uqtabelaseaidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'seaidentificacao'
      Size = 15
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object uqtabelaregcaixa: TStringField
      DisplayLabel = 'Reg.Caixa'
      FieldName = 'regcaixa'
    end
    object uqtabelapcgrecdes: TIntegerField
      FieldName = 'pcgrecdes'
    end
    object uqtabelacfpidentificacao: TStringField
      DisplayLabel = 'Classe da Conta Cont'#225'bil'
      FieldName = 'cfpidentificacao'
      Size = 50
    end
  end
  inherited cau: TUniQuery
    Left = 824
    Top = 128
  end
  inherited cca: TUniQuery
    Left = 860
    Top = 128
  end
  inherited cpg: TUniQuery
    Left = 1012
    Top = 136
  end
  inherited vcls: TVirtualTable
    Left = 920
    Top = 32
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 1037
    Top = 145
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C0101030008006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object cfp: TUniQuery
    SQL.Strings = (
      'select cfpcodigo, cfpidentificacao from cfp')
    Left = 330
    Top = 244
    object cfpcfpcodigo: TIntegerField
      FieldName = 'cfpcodigo'
    end
    object cfpcfpidentificacao: TStringField
      FieldName = 'cfpidentificacao'
      Size = 50
    end
  end
  object prc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prc.prcchave,'
      '  prc.prcpercentual,'
      
        '  concat(prc.pcgcodigo,'#39' '#39', pcg.pcgestrutural,'#39' '#39', pcg.pcgidenti' +
        'ficacao) AS pcgidentificacao,'
      
        '  concat(prc.ccgcodigo,'#39' '#39', ccg.ccgestrutural,'#39' '#39', ccg.ccgidenti' +
        'ficacao) AS ccgidentificacao'
      'FROM prc'
      '  INNER JOIN pcg'
      '    ON prc.pcgcodigo = pcg.pcgcodigo'
      '  INNER JOIN ccg'
      '    ON prc.ccgcodigo = ccg.ccgcodigo'
      '  where prc.pcgcodigo=:pcgcodigo')
    Left = 648
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
        Value = nil
      end>
    object prcprcchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'prcchave'
    end
    object prcprcpercentual: TFloatField
      DisplayLabel = 'Percentual de Rateio'
      FieldName = 'prcpercentual'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object prcpcgidentificacao: TStringField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 200
    end
    object prcccgidentificacao: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgidentificacao'
      Size = 200
    end
  end
  object Dprc: TDataSource
    DataSet = prc
    Left = 691
    Top = 500
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'select cfgctbmodo, cfgctbusaccg from cfgmctb')
    Left = 508
    Top = 220
    object cfgcfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
end
