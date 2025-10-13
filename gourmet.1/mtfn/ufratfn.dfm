inherited fratfn: Tfratfn
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tfncodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfnidentificacao'
              Visible = True
            end>
        end
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
      'select  tfncodigo, tfnidentificacao from tfn')
    object uqtabelatfncodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tfncodigo'
    end
    object uqtabelatfnidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tfnidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
