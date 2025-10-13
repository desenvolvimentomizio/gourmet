inherited frarmg: Tfrarmg
  Width = 1042
  Height = 596
  ExplicitWidth = 1042
  ExplicitHeight = 596
  inherited PlGeral: TPanel
    Width = 1042
    Height = 596
    ExplicitWidth = 1042
    ExplicitHeight = 596
    inherited SplBotoes: TSplitter
      Height = 576
      ExplicitHeight = 570
    end
    inherited PlBotoes: TPanel
      Height = 576
      ExplicitHeight = 576
      inherited ImageLogoBase: TImage
        Top = 497
        ExplicitTop = 491
      end
      inherited PlInfo: TPanel
        Top = 558
        ExplicitTop = 558
      end
      inherited SBBotoes: TScrollBox
        Height = 497
        ExplicitHeight = 497
      end
    end
    inherited PlLista: TPanel
      Width = 898
      Height = 576
      ExplicitWidth = 898
      ExplicitHeight = 576
      inherited SplLista: TSplitter
        Top = 482
        Width = 898
        Visible = True
        ExplicitTop = 476
        ExplicitWidth = 898
      end
      inherited SpFilter: TSplitter
        Width = 898
        ExplicitWidth = 898
      end
      inherited PlRodaPe: TPanel
        Top = 487
        Width = 898
        Height = 89
        Visible = True
        ExplicitTop = 487
        ExplicitWidth = 898
        ExplicitHeight = 89
        object Listadrg: TDBGrid
          Left = 0
          Top = 0
          Width = 721
          Height = 89
          Align = alLeft
          DataSource = Ddrg
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = ListadrgDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'drgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccgcodigo'
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
              FieldName = 'drgvalor'
              Width = 85
              Visible = True
            end>
        end
      end
      inherited PlFiltros: TPanel
        Width = 898
        ExplicitWidth = 898
      end
      inherited PlSelecao: TPanel
        Width = 898
        ExplicitWidth = 898
        inherited GBPlSelecao: TGroupBox
          Width = 894
          ExplicitWidth = 894
          inherited DBLista: TDBGrid
            Width = 787
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 898
        Height = 353
        ExplicitWidth = 898
        ExplicitHeight = 353
        inherited DBGLista: TDBGrid
          Width = 898
          Height = 331
          Columns = <
            item
              Expanded = False
              FieldName = 'rmgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mlgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Title.Alignment = taCenter
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgcodigo'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmgvalor'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmgdata'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phgcodigo'
              Title.Caption = 'Cod.Hist.'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phgidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmgcomplemento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmginclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmgcompetencia'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 331
          Width = 898
          Height = 22
          ExplicitTop = 331
          ExplicitWidth = 898
          ExplicitHeight = 22
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1042
      ExplicitWidth = 1042
      inherited plid: TPanel
        Left = 617
        Caption = '04-13-001'
        ExplicitLeft = 617
      end
      inherited PlSair: TPanel
        Left = 836
        ExplicitLeft = 836
      end
    end
  end
  inherited acoes: TActionList
    Left = 596
    Top = 100
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
    object ActLivroRazao: TAction [6]
      Category = 'Manuten'#231#227'o'
      Caption = 'Livro Raz'#227'o'
      OnExecute = ActLivroRazaoExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 272
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  rmg.mlgchave,'
      '  mlg.flacodigo,'
      '  fla.flaidentificacao,'
      '  rmg.pcgcodigo,'
      
        '  CONCAT(pcg.pcgestrutural,'#39' - '#39', pcgidentificacao) AS pcgidenti' +
        'ficacao,'
      '  rmg.cedcodigo,'
      '  ced.cedidentificacao,'
      '  rmgvalor,'
      '  rmgdata,'
      '  rmgcomplemento,'
      '  rmg.phgcodigo,'
      '  phgidentificacao,'
      '  rmgcompetencia,'
      '  rmginclusao'
      'FROM rmg'
      '  JOIN mlg ON rmg.mlgchave = mlg.mlgchave'
      '  JOIN fla ON mlg.flacodigo= fla.flacodigo'
      '  JOIN pcg on rmg.pcgcodigo= pcg.pcgcodigo'
      '  JOIN phg ON rmg.phgcodigo=phg.phgcodigo'
      '  left JOIN ced ON rmg.cedcodigo = ced.cedcodigo')
    Left = 192
    Top = 184
    object uqtabelarmgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object uqtabelamlgchave: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'mlgchave'
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Fla'
      FieldName = 'flacodigo'
    end
    object uqtabelaflaidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Filial'
      FieldName = 'flaidentificacao'
      Size = 50
    end
    object uqtabelapcgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'pcgcodigo'
    end
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'Cedcodigo'
      FieldName = 'cedcodigo'
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 35
    end
    object uqtabelarmgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rmgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarmgdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rmgdata'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelarmgcomplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'rmgcomplemento'
      Size = 300
    end
    object uqtabelaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object uqtabelaphgidentificacao: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgidentificacao'
      Size = 80
    end
    object uqtabelarmgcompetencia: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'rmgcompetencia'
    end
    object uqtabelarmginclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'rmginclusao'
    end
    object uqtabelapcgidentificacao: TStringField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 672
    Top = 332
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object drg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drgchave,'
      '  mlgchave,'
      '  drg.ccgcodigo,'
      '  drgvalor,'
      
        '  concat(ccgestrutural, '#39' '#39', ccgidentificacao) as ccgidentificac' +
        'ao'
      'FROM drg,'
      '     ccg'
      'WHERE drg.ccgcodigo = ccg.ccgcodigo'
      'AND mlgchave=:mlgchave'
      '  and drg.pcgcodigo=:pcgcodigo'
      'ORDER BY drgchave')
    Left = 784
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
        Value = nil
      end>
    object drgdrgchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'drgchave'
    end
    object drgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object drgdrgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'drgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object drgccgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
    end
    object drgccgidentificacao: TStringField
      DisplayLabel = 'Centro de Custos'
      FieldName = 'ccgidentificacao'
      Size = 150
    end
  end
  object Ddrg: TUniDataSource
    DataSet = drg
    Left = 844
    Top = 348
  end
  object fcb: TUniQuery
    SQL.Strings = (
      'select flacodigo,clbcodigo from fcb')
    Left = 548
    Top = 360
    object fcbflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object fcbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'select cfgdtinictb, cfgdtfinctb from cfg')
    Left = 792
    Top = 432
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdtfinctb: TDateField
      FieldName = 'cfgdtfinctb'
    end
  end
end
