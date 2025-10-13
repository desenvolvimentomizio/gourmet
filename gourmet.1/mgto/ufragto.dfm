inherited fragto: Tfragto
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gtocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gtoidentificacao'
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
      'select gtocodigo, gtoidentificacao from gto')
    object uqtabelagtocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gtocodigo'
    end
    object uqtabelagtoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'gtoidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
