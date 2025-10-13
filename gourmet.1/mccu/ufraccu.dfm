inherited fraccu: Tfraccu
  Width = 784
  inherited PlGeral: TPanel
    Width = 784
    inherited PlLista: TPanel
      Width = 632
      inherited SplLista: TSplitter
        Width = 630
      end
      inherited SpFilter: TSplitter
        Width = 630
      end
      inherited PlRodaPe: TPanel
        Width = 630
      end
      inherited PlFiltros: TPanel
        Width = 630
      end
      inherited PlSelecao: TPanel
        Width = 630
        inherited GBPlSelecao: TGroupBox
          Width = 624
          inherited DBLista: TDBGrid
            Width = 517
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 630
        inherited DBGLista: TDBGrid
          Width = 630
          Columns = <
            item
              Expanded = False
              FieldName = 'ccucodigo'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccuidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccudtinicio'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 630
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 776
      inherited plid: TPanel
        Left = 554
        Caption = '02.02.16.002'
      end
      inherited PlSair: TPanel
        Left = 374
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
      'select ccucodigo,ccuidentificacao,ccudtinicio from ccu')
    object uqtabelaccucodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccucodigo'
      Size = 60
    end
    object uqtabelaccuidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ccuidentificacao'
      Size = 60
    end
    object uqtabelaccudtinicio: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'ccudtinicio'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
