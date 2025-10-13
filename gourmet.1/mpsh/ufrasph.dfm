inherited frapsh: Tfrapsh
  Width = 862
  inherited PlGeral: TPanel
    Width = 862
    inherited PlLista: TPanel
      Width = 714
      inherited SplLista: TSplitter
        Width = 712
      end
      inherited SpFilter: TSplitter
        Width = 712
      end
      inherited PlRodaPe: TPanel
        Width = 712
      end
      inherited PlFiltros: TPanel
        Width = 712
      end
      inherited PlSelecao: TPanel
        Width = 712
        inherited GBPlSelecao: TGroupBox
          Width = 706
          inherited DBLista: TDBGrid
            Width = 575
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 712
        inherited DBGLista: TDBGrid
          Width = 712
          Columns = <
            item
              Expanded = False
              FieldName = 'pshchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sprcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdchave'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 712
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 858
      inherited plid: TPanel
        Left = 496
      end
      inherited PlSair: TPanel
        Left = 714
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
  inherited DSTabela: TUniDataSource
    Left = 392
    Top = 76
  end
  inherited MenuManutencao: TPopupMenu
    Left = 536
    Top = 72
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select  sphchave, sprcodigo, hmdchave from sph')
    Left = 340
    Top = 76
    object uqtabelapshchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'pshchave'
    end
    object uqtabelasprcodigo: TIntegerField
      DisplayLabel = 'Tarefa'
      FieldName = 'sprcodigo'
    end
    object uqtabelahmdchave: TIntegerField
      DisplayLabel = 'Hist'#243'ria'
      FieldName = 'hmdchave'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
