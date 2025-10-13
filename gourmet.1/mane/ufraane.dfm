inherited fraane: Tfraane
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'anecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aneidentificacao'
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
      'SELECT'
      '  ane.anecodigo,'
      '  ane.aneidentificacao'
      'FROM ane')
    object uqtabelaanecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'anecodigo'
    end
    object uqtabelaaneidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'aneidentificacao'
      Size = 4
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
