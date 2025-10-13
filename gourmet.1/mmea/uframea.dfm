inherited framea: Tframea
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'meacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meamotivo'
              Width = 650
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
      'select meacodigo, meamotivo from mea')
    object uqtabelameacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'meacodigo'
    end
    object uqtabelameamotivo: TStringField
      DisplayLabel = 'Motivo do Estorno'
      FieldName = 'meamotivo'
      Size = 250
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
