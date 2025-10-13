inherited fracgr: Tfracgr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cgrcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cgridentificacao'
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
      '  cgrcodigo,'
      '  cgridentificacao'
      'FROM cgr')
    object uqtabelacgrcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cgrcodigo'
    end
    object uqtabelacgridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cgridentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
