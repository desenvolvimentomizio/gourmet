inherited fraeta: Tfraeta
  Width = 944
  inherited PlGeral: TPanel
    Width = 944
    inherited PlLista: TPanel
      Width = 792
      inherited SplLista: TSplitter
        Width = 790
      end
      inherited SpFilter: TSplitter
        Width = 790
      end
      inherited PlRodaPe: TPanel
        Width = 790
      end
      inherited PlFiltros: TPanel
        Width = 790
      end
      inherited PlSelecao: TPanel
        Width = 790
        inherited GBPlSelecao: TGroupBox
          Width = 784
          inherited DBLista: TDBGrid
            Width = 677
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 790
        inherited DBGLista: TDBGrid
          Width = 790
          Columns = <
            item
              Expanded = False
              FieldName = 'etacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etaidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 790
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 936
      inherited plid: TPanel
        Left = 534
      end
      inherited PlSair: TPanel
        Left = 754
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
      'select etacodigo, etaidentificacao from eta')
    object uqtabelaetacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etacodigo'
    end
    object uqtabelaetaidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'etaidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
