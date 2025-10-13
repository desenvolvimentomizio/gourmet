inherited frapcc: Tfrapcc
  Width = 808
  ExplicitWidth = 808
  inherited PlGeral: TPanel
    Width = 808
    ExplicitWidth = 808
    inherited PlLista: TPanel
      Width = 664
      ExplicitWidth = 664
      inherited SplLista: TSplitter
        Top = 467
        Width = 664
        ExplicitTop = 416
        ExplicitWidth = 654
      end
      inherited SpFilter: TSplitter
        Width = 664
        ExplicitWidth = 654
      end
      inherited PlRodaPe: TPanel
        Top = 472
        Width = 664
        Height = 102
        Visible = True
        ExplicitTop = 472
        ExplicitWidth = 664
        ExplicitHeight = 102
        object pccdescricao: TDBMemo
          Left = 0
          Top = 0
          Width = 664
          Height = 102
          Align = alClient
          DataField = 'pccdescricao'
          DataSource = DSTabela
          ReadOnly = True
          TabOrder = 0
        end
      end
      inherited PlFiltros: TPanel
        Width = 664
        ExplicitWidth = 664
      end
      inherited PlSelecao: TPanel
        Width = 664
        ExplicitWidth = 664
        inherited GBPlSelecao: TGroupBox
          Width = 660
          ExplicitWidth = 660
          inherited DBLista: TDBGrid
            Width = 553
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 664
        Height = 338
        ExplicitWidth = 664
        ExplicitHeight = 338
        inherited DBGLista: TDBGrid
          Width = 664
          Height = 313
          Columns = <
            item
              Expanded = False
              FieldName = 'pcccodigo'
              Width = 157
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pccidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 313
          Width = 664
          ExplicitTop = 313
          ExplicitWidth = 664
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 808
      ExplicitWidth = 808
      inherited plid: TPanel
        Left = 587
        Caption = '04-13-000'
        ExplicitLeft = 587
      end
      inherited PlSair: TPanel
        Left = 428
        ExplicitLeft = 428
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select pcccodigo, pccidentificacao, npccodigo, tpccodigo, pccdes' +
        'cricao from pcc')
    object uqtabelapcccodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcccodigo'
      Size = 60
    end
    object uqtabelapccidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pccidentificacao'
      Size = 60
    end
    object uqtabelanpccodigo: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'npccodigo'
      Size = 2
    end
    object uqtabelatpccodigo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpccodigo'
      Size = 2
    end
    object uqtabelapccdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pccdescricao'
      Size = 1000
    end
  end
  inherited cpg: TUniQuery
    Top = 360
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
