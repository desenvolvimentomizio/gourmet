inherited framit: Tframit
  Width = 952
  inherited PlGeral: TPanel
    Width = 952
    inherited PlLista: TPanel
      Width = 800
      inherited SplLista: TSplitter
        Width = 798
      end
      inherited SpFilter: TSplitter
        Width = 798
      end
      inherited PlRodaPe: TPanel
        Width = 798
      end
      inherited PlFiltros: TPanel
        Width = 798
      end
      inherited PlSelecao: TPanel
        Width = 798
        inherited GBPlSelecao: TGroupBox
          Width = 792
          inherited DBLista: TDBGrid
            Width = 685
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 798
        inherited DBGLista: TDBGrid
          Width = 798
          Columns = <
            item
              Expanded = False
              FieldName = 'mitcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mitidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecfcodigo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 798
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 944
      inherited plid: TPanel
        Left = 542
      end
      inherited PlSair: TPanel
        Left = 762
      end
    end
  end
  inherited acoes: TActionList
    Top = 72
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select mitcodigo, mitidentificacao, ecfcodigo from mit')
    Left = 304
    Top = 160
    object uqtabelamitcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mitcodigo'
    end
    object uqtabelamitidentificacao: TStringField
      DisplayLabel = 'Impressora'
      FieldName = 'mitidentificacao'
      Size = 50
    end
    object uqtabelaecfcodigo: TIntegerField
      DisplayLabel = 'ECF'
      FieldName = 'ecfcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
