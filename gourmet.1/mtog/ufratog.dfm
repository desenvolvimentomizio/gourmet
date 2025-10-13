inherited fratog: Tfratog
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'togcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'togidentificacao'
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
      'select togcodigo, togidentificacao from tog')
    object uqtabelatogcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'togcodigo'
    end
    object uqtabelatogidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'togidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
